@interface UICompoundEffect
@end

@implementation UICompoundEffect

uint64_t __35___UICompoundEffect__expectedUsage__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 _expectedUsage];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = result;
    *a3 = 1;
  }

  return result;
}

uint64_t __96___UICompoundEffect__needsUpdateForTransitionFromEnvironment_toEnvironment_changedTraits_usage___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  result = [a2 _needsUpdateForTransitionFromEnvironment:a1[4] toEnvironment:a1[5] changedTraits:a1[6] usage:a1[8]];
  if (result)
  {
    *(*(a1[7] + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end