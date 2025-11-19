@interface UIFocusEnvironmentPreferredNodeToFocusedItem
@end

@implementation UIFocusEnvironmentPreferredNodeToFocusedItem

void ___UIFocusEnvironmentPreferredNodeToFocusedItem_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(a1 + 32) == v5)
  {
    v7 = *(*(*(a1 + 56) + 8) + 40);
    goto LABEL_5;
  }

  v6 = [*(a1 + 40) containsObject:v5];
  v7 = v5;
  if (v6)
  {
LABEL_5:
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
    *a3 = 1;
  }

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

@end