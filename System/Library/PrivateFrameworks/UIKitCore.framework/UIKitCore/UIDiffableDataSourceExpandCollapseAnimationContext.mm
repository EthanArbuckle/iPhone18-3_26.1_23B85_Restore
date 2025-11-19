@interface UIDiffableDataSourceExpandCollapseAnimationContext
@end

@implementation UIDiffableDataSourceExpandCollapseAnimationContext

void __96___UIDiffableDataSourceExpandCollapseAnimationContext_indexPathsForChildItemsInExpandingParent___block_invoke(uint64_t a1, unint64_t a2)
{
  v3 = [(_UIDiffableDataSourceExpandCollapseAnimationContext *)*(a1 + 32) _visibleIndexForIndex:a2 identifiers:*(*(a1 + 32) + 48) visibleIdentifiers:*(*(a1 + 32) + 64)];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:v3 inSection:*(*(a1 + 32) + 8)];
    [v4 addObject:v5];
  }
}

void __97___UIDiffableDataSourceExpandCollapseAnimationContext_indexPathsForChildItemsInCollapsingParent___block_invoke(uint64_t a1, unint64_t a2)
{
  v3 = [(_UIDiffableDataSourceExpandCollapseAnimationContext *)*(a1 + 32) _visibleIndexForIndex:a2 identifiers:*(*(a1 + 32) + 40) visibleIdentifiers:*(*(a1 + 32) + 56)];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:v3 inSection:*(*(a1 + 32) + 8)];
    [v4 addObject:v5];
  }
}

@end