@interface UICollectionViewPlaceholder
- (UICollectionViewPlaceholder)initWithInsertionIndexPath:(NSIndexPath *)insertionIndexPath reuseIdentifier:(NSString *)reuseIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UICollectionViewPlaceholder alloc];
  v5 = [(UICollectionViewPlaceholder *)self insertionIndexPath];
  v6 = [(UICollectionViewPlaceholder *)self cellReuseIdentifier];
  v7 = [(UICollectionViewPlaceholder *)v4 initWithInsertionIndexPath:v5 reuseIdentifier:v6];

  v8 = [(UICollectionViewPlaceholder *)self cellUpdateHandler];
  [(UICollectionViewPlaceholder *)v7 setCellUpdateHandler:v8];

  return v7;
}

@end