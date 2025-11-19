@interface PNTimelineDataItem
- (PNTimelineDataItem)initWithAssetCollection:(id)a3 suggestedCrop:(id)a4;
@end

@implementation PNTimelineDataItem

- (PNTimelineDataItem)initWithAssetCollection:(id)a3 suggestedCrop:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PNTimelineDataItem;
  v9 = [(PNTimelineDataItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetCollection, a3);
    objc_storeStrong(&v10->_suggestedCrop, a4);
  }

  return v10;
}

@end