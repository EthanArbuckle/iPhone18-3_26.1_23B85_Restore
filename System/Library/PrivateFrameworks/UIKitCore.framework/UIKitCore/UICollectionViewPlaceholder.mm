@interface UICollectionViewPlaceholder
- (UICollectionViewPlaceholder)initWithInsertionIndexPath:(NSIndexPath *)insertionIndexPath reuseIdentifier:(NSString *)reuseIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UICollectionViewPlaceholder

- (UICollectionViewPlaceholder)initWithInsertionIndexPath:(NSIndexPath *)insertionIndexPath reuseIdentifier:(NSString *)reuseIdentifier
{
  v7 = insertionIndexPath;
  v8 = reuseIdentifier;
  v14.receiver = self;
  v14.super_class = UICollectionViewPlaceholder;
  v9 = [(UICollectionViewPlaceholder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_insertionIndexPath, insertionIndexPath);
    v11 = [(NSString *)v8 copy];
    cellReuseIdentifier = v10->_cellReuseIdentifier;
    v10->_cellReuseIdentifier = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UICollectionViewPlaceholder alloc];
  insertionIndexPath = [(UICollectionViewPlaceholder *)self insertionIndexPath];
  cellReuseIdentifier = [(UICollectionViewPlaceholder *)self cellReuseIdentifier];
  v7 = [(UICollectionViewPlaceholder *)v4 initWithInsertionIndexPath:insertionIndexPath reuseIdentifier:cellReuseIdentifier];

  cellUpdateHandler = [(UICollectionViewPlaceholder *)self cellUpdateHandler];
  [(UICollectionViewPlaceholder *)v7 setCellUpdateHandler:cellUpdateHandler];

  return v7;
}

@end