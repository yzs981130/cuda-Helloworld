#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <stdio.h>

__global__ void hello()
{
	printf("Hello from block %d\n", blockIdx.x);
}
int main()
{
	hello <<<16, 1>>> ();
	cudaDeviceSynchronize();
	printf("Bye!\n");
	return 0;
}