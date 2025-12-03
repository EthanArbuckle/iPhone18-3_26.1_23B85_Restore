@interface _UICollectionViewListCellVisualProvider
- (_UICollectionViewListCellVisualProvider)initWithListCell:(id)cell;
@end

@implementation _UICollectionViewListCellVisualProvider

- (_UICollectionViewListCellVisualProvider)initWithListCell:(id)cell
{
  cellCopy = cell;
  if (!cellCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellVisualProvider.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"cell"}];
  }

  v10.receiver = self;
  v10.super_class = _UICollectionViewListCellVisualProvider;
  v6 = [(_UICollectionViewListCellVisualProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_cell = cellCopy;
  }

  return v7;
}

@end