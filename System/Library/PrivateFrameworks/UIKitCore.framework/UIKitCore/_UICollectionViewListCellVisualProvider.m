@interface _UICollectionViewListCellVisualProvider
- (_UICollectionViewListCellVisualProvider)initWithListCell:(id)a3;
@end

@implementation _UICollectionViewListCellVisualProvider

- (_UICollectionViewListCellVisualProvider)initWithListCell:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellVisualProvider.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"cell"}];
  }

  v10.receiver = self;
  v10.super_class = _UICollectionViewListCellVisualProvider;
  v6 = [(_UICollectionViewListCellVisualProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_cell = v5;
  }

  return v7;
}

@end