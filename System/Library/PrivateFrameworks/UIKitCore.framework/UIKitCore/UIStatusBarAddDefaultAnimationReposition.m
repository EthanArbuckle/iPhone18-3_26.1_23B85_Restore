@interface UIStatusBarAddDefaultAnimationReposition
@end

@implementation UIStatusBarAddDefaultAnimationReposition

void ___UIStatusBarAddDefaultAnimationReposition_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqual:*(a1 + 32)] & 1) == 0 && (objc_msgSend(*(a1 + 40), "containsObject:", v3) & 1) == 0)
  {
    [*(a1 + 48) addSubAnimation:*(a1 + 56) forDisplayItemWithIdentifier:v3];
    [*(a1 + 40) addObject:v3];
  }
}

@end