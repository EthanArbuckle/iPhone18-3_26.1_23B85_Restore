@interface UIFocusEnvironmentIsAncestorOfEnvironment
@end

@implementation UIFocusEnvironmentIsAncestorOfEnvironment

uint64_t ___UIFocusEnvironmentIsAncestorOfEnvironment_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end