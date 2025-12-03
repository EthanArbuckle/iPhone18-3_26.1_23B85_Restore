@interface UICollectionViewDropPlaceholder
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UICollectionViewDropPlaceholder

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UICollectionViewDropPlaceholder alloc];
  insertionIndexPath = [(UICollectionViewPlaceholder *)self insertionIndexPath];
  cellReuseIdentifier = [(UICollectionViewPlaceholder *)self cellReuseIdentifier];
  v7 = [(UICollectionViewPlaceholder *)v4 initWithInsertionIndexPath:insertionIndexPath reuseIdentifier:cellReuseIdentifier];

  cellUpdateHandler = [(UICollectionViewPlaceholder *)self cellUpdateHandler];
  [(UICollectionViewPlaceholder *)v7 setCellUpdateHandler:cellUpdateHandler];

  previewParametersProvider = [(UICollectionViewDropPlaceholder *)self previewParametersProvider];
  [(UICollectionViewDropPlaceholder *)v7 setPreviewParametersProvider:previewParametersProvider];

  return v7;
}

@end