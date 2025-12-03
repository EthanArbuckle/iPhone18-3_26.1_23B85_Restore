@interface PXTimelineDataItem
- (PXTimelineDataItem)initWithAssetCollection:(id)collection suggestedCrop:(id)crop;
@end

@implementation PXTimelineDataItem

- (PXTimelineDataItem)initWithAssetCollection:(id)collection suggestedCrop:(id)crop
{
  collectionCopy = collection;
  cropCopy = crop;
  v12.receiver = self;
  v12.super_class = PXTimelineDataItem;
  v9 = [(PXTimelineDataItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetCollection, collection);
    objc_storeStrong(&v10->_suggestedCrop, crop);
  }

  return v10;
}

@end