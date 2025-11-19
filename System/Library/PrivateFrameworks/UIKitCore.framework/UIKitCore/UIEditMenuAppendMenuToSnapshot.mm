@interface UIEditMenuAppendMenuToSnapshot
@end

@implementation UIEditMenuAppendMenuToSnapshot

void ___UIEditMenuAppendMenuToSnapshot_block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 _isVisible])
  {
    if ([v3 _isInlineGroup])
    {
      _UIEditMenuAppendMenuToSnapshot(v3, *(a1 + 32), *(a1 + 48), *(a1 + 40));
    }

    else
    {
      v4 = [_UIEditMenuListItem itemWithMenuElement:v3 preferredDisplayMode:*(a1 + 40)];
      [v4 setWantsPasteSlotView:*(a1 + 48)];
      v5 = *(a1 + 32);
      v7[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
      [v5 appendItemsWithIdentifiers:v6];
    }
  }
}

@end