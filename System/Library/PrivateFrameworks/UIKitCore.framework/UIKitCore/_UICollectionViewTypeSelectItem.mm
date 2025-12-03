@interface _UICollectionViewTypeSelectItem
- (_UICollectionViewTypeSelectItem)initWithTypeSelectString:(id)string atIndexPath:(id)path;
@end

@implementation _UICollectionViewTypeSelectItem

- (_UICollectionViewTypeSelectItem)initWithTypeSelectString:(id)string atIndexPath:(id)path
{
  stringCopy = string;
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewTypeSelectItem.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
  }

  v13.receiver = self;
  v13.super_class = _UICollectionViewTypeSelectItem;
  v9 = [(_UITypeSelectItem *)&v13 initWithTypeSelectString:stringCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_indexPath, path);
  }

  return v10;
}

@end