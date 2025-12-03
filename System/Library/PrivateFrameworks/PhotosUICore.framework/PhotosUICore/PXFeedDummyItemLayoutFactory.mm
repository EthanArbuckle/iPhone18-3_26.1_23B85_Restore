@interface PXFeedDummyItemLayoutFactory
- (id)createLayoutForFeedItemAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source viewModel:(id)model initialReferenceSize:(CGSize)size thumbnailAsset:(id *)asset;
@end

@implementation PXFeedDummyItemLayoutFactory

- (id)createLayoutForFeedItemAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source viewModel:(id)model initialReferenceSize:(CGSize)size thumbnailAsset:(id *)asset
{
  sourceCopy = source;
  v9 = objc_alloc_init(PXFeedDummyItemLayout);
  v10 = *&path->item;
  v13[0] = *&path->dataSourceIdentifier;
  v13[1] = v10;
  v11 = [sourceCopy objectAtIndexPath:v13];

  [(PXFeedDummyItemLayout *)v9 setRepresentedObject:v11];

  return v9;
}

@end