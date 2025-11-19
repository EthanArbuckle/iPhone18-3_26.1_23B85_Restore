@interface UIAXStringForAllChildrenWithFilter
@end

@implementation UIAXStringForAllChildrenWithFilter

uint64_t ___UIAXStringForAllChildrenWithFilter_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3 && (([v3 isAccessibilityElement] & 1) != 0 || *(a1 + 56) == 1))
  {
    v5 = *(a1 + 48);
    if (!v5 || (*(v5 + 16))(v5, v4))
    {
      [*(a1 + 40) addObject:v4];
    }
  }

  return 0;
}

@end