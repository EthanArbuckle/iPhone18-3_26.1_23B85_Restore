@interface UITabIsAncestorOfTabsInListItems
@end

@implementation UITabIsAncestorOfTabsInListItems

uint64_t ___UITabIsAncestorOfTabsInListItems_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 tabForSelection];
  v4 = [v2 _isAncestorOfTab:v3];

  return v4;
}

@end