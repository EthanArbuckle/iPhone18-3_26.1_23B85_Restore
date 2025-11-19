@interface UIFocusEnvironmentContainingResponder
@end

@implementation UIFocusEnvironmentContainingResponder

void ___UIFocusEnvironmentContainingResponder_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 __isKindOfUIResponder])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

@end