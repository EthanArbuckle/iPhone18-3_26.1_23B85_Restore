@interface PXSectionedSelectionManager(PUOneUpSelectionIndicatorCompatibility)
- (uint64_t)pu_isAssetReferenceSelected:()PUOneUpSelectionIndicatorCompatibility;
@end

@implementation PXSectionedSelectionManager(PUOneUpSelectionIndicatorCompatibility)

- (uint64_t)pu_isAssetReferenceSelected:()PUOneUpSelectionIndicatorCompatibility
{
  indexPath = [a3 indexPath];
  selectionSnapshot = [self selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];
  [dataSource identifier];

  PXSimpleIndexPathFromIndexPath();
  memset(v9, 0, sizeof(v9));
  v7 = [selectionSnapshot isIndexPathSelected:v9];

  return v7;
}

@end