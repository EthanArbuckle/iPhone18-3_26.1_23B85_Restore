@interface _UICollectionViewTypeSelectItem
- (_UICollectionViewTypeSelectItem)initWithTypeSelectString:(id)a3 atIndexPath:(id)a4;
@end

@implementation _UICollectionViewTypeSelectItem

- (_UICollectionViewTypeSelectItem)initWithTypeSelectString:(id)a3 atIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UICollectionViewTypeSelectItem.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
  }

  v13.receiver = self;
  v13.super_class = _UICollectionViewTypeSelectItem;
  v9 = [(_UITypeSelectItem *)&v13 initWithTypeSelectString:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_indexPath, a4);
  }

  return v10;
}

@end