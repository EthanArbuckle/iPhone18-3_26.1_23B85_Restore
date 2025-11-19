@interface UIAXStringForAllChildren
@end

@implementation UIAXStringForAllChildren

uint64_t ___UIAXStringForAllChildren_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3 && (([v3 isAccessibilityElement] & 1) != 0 || *(a1 + 48) == 1))
  {
    [*(a1 + 40) addObject:v4];
  }

  return 0;
}

@end