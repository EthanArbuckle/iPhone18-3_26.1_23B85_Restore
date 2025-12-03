@interface _PXStoryPublicErrorSimulatedRecoveryAttempter
- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index;
@end

@implementation _PXStoryPublicErrorSimulatedRecoveryAttempter

- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86___PXStoryPublicErrorSimulatedRecoveryAttempter_attemptRecoveryFromError_optionIndex___block_invoke;
  v6[3] = &__block_descriptor_40_e30_v16__0__PXAlertConfiguration_8l;
  v6[4] = index;
  v4 = [off_1E7721438 show:v6];
  return 1;
}

@end