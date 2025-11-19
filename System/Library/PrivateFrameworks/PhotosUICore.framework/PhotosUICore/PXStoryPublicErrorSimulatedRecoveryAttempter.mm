@interface PXStoryPublicErrorSimulatedRecoveryAttempter
@end

@implementation PXStoryPublicErrorSimulatedRecoveryAttempter

void __86___PXStoryPublicErrorSimulatedRecoveryAttempter_attemptRecoveryFromError_optionIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:@"Simulated Recovery"];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The simulated recovery option #%li was selected.", *(a1 + 32) + 1];
  [v3 setMessage:v4];
}

@end