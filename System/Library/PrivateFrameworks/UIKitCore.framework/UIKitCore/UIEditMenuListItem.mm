@interface UIEditMenuListItem
@end

@implementation UIEditMenuListItem

void __64___UIEditMenuListItem_itemWithMenuElement_preferredDisplayMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E69DEC00] variantForSelector:{objc_msgSend(a2, "action")}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __64___UIEditMenuListItem_itemWithMenuElement_preferredDisplayMode___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DEC00];
  v7 = [a2 identifier];
  v4 = [v3 variantForActionIdentifier:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end