@interface UIActivityGroupViewFlowLayout
@end

@implementation UIActivityGroupViewFlowLayout

void __68___UIActivityGroupViewFlowLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 frame];
  if (CGRectIntersectsRect(v6, *(a1 + 48)))
  {
    v3 = [*(a1 + 32) adjustLayoutAttributesForDraggingIfNeeded:v4];
    [*(a1 + 40) addObject:v4];
  }
}

uint64_t __81___UIActivityGroupViewFlowLayout__evaluatePreferredItemSizeForItemsAtIndexPaths___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) collectionView:*(a1 + 40) layout:*(a1 + 48) preferredSizeForItemAtIndexPath:a2];
  v6 = *(*(a1 + 56) + 8);
  if (*(v6 + 40) >= v5)
  {
    v5 = *(v6 + 40);
  }

  *(v6 + 40) = v5;
  v7 = *(*(a1 + 56) + 8);
  if (*(v7 + 32) >= v4)
  {
    v4 = *(v7 + 32);
  }

  *(v7 + 32) = v4;
  return result;
}

uint64_t __55___UIActivityGroupViewFlowLayout_handleEditingGesture___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 moveItemAtIndexPath:*(a1 + 40) toIndexPath:*(a1 + 48)];

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 setIndexPathForDraggedItem:v3];
}

uint64_t __58___UIActivityGroupViewFlowLayout_beginDraggingForGesture___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.25, 1.25);
  v2 = *(a1 + 32);
  v4 = v5;
  [v2 setTransform:&v4];
  [*(a1 + 32) setAlpha:0.75];
  return [*(a1 + 32) setHighlighted:0];
}

void __59___UIActivityGroupViewFlowLayout_cancelDraggingForGesture___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v9[0] = *MEMORY[0x1E695EFD0];
  v9[1] = v3;
  v9[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v9];
  v4 = *(a1 + 40);
  v5 = [v4 indexPathForDraggedItem];
  v6 = [v4 layoutAttributesForItemAtIndexPath:v5];

  v7 = [*(a1 + 32) superview];
  v8 = [*(a1 + 40) collectionView];
  [v6 center];
  [v8 convertPoint:v7 toView:?];
  [*(a1 + 32) setCenter:?];

  [*(a1 + 32) setAlpha:1.0];
}

uint64_t __59___UIActivityGroupViewFlowLayout_cancelDraggingForGesture___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIndexPathForDraggedItem:0];
  [*(a1 + 32) invalidateGroupViewLayoutAnimated:1];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

@end