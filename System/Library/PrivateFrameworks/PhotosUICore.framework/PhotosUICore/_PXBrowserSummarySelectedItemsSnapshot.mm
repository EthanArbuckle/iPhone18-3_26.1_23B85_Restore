@interface _PXBrowserSummarySelectedItemsSnapshot
- (_PXBrowserSummarySelectedItemsSnapshot)initWithBrowserSelectionSnapshot:(id)snapshot;
- (id)containsItemReference:(id)reference;
- (id)itemForItemReference:(id)reference;
- (id)itemReferenceAtIndex:(int64_t)index;
- (int64_t)count;
@end

@implementation _PXBrowserSummarySelectedItemsSnapshot

- (id)itemForItemReference:(id)reference
{
  referenceCopy = reference;
  browserSelectionSnapshot = [(_PXBrowserSummarySelectedItemsSnapshot *)self browserSelectionSnapshot];
  v6 = [browserSelectionSnapshot indexOfAssetReference:referenceCopy];

  null = [browserSelectionSnapshot displayAssetAtIndex:v6];
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  return null;
}

- (id)containsItemReference:(id)reference
{
  referenceCopy = reference;
  browserSelectionSnapshot = [(_PXBrowserSummarySelectedItemsSnapshot *)self browserSelectionSnapshot];
  v6 = [browserSelectionSnapshot indexOfAssetReference:referenceCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [browserSelectionSnapshot assetReferenceAtIndex:v6];
  }

  return v7;
}

- (id)itemReferenceAtIndex:(int64_t)index
{
  browserSelectionSnapshot = [(_PXBrowserSummarySelectedItemsSnapshot *)self browserSelectionSnapshot];
  v5 = [browserSelectionSnapshot assetReferenceAtIndex:index];

  return v5;
}

- (int64_t)count
{
  browserSelectionSnapshot = [(_PXBrowserSummarySelectedItemsSnapshot *)self browserSelectionSnapshot];
  assetCount = [browserSelectionSnapshot assetCount];

  return assetCount;
}

- (_PXBrowserSummarySelectedItemsSnapshot)initWithBrowserSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v9.receiver = self;
  v9.super_class = _PXBrowserSummarySelectedItemsSnapshot;
  v6 = [(_PXBrowserSummarySelectedItemsSnapshot *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_browserSelectionSnapshot, snapshot);
  }

  return v7;
}

@end