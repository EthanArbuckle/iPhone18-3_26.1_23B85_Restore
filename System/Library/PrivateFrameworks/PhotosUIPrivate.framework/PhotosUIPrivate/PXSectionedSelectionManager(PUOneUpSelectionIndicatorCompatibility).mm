@interface PXSectionedSelectionManager(PUOneUpSelectionIndicatorCompatibility)
- (uint64_t)pu_isAssetReferenceSelected:()PUOneUpSelectionIndicatorCompatibility;
@end

@implementation PXSectionedSelectionManager(PUOneUpSelectionIndicatorCompatibility)

- (uint64_t)pu_isAssetReferenceSelected:()PUOneUpSelectionIndicatorCompatibility
{
  v4 = [a3 indexPath];
  v5 = [a1 selectionSnapshot];
  v6 = [v5 dataSource];
  [v6 identifier];

  PXSimpleIndexPathFromIndexPath();
  memset(v9, 0, sizeof(v9));
  v7 = [v5 isIndexPathSelected:v9];

  return v7;
}

@end