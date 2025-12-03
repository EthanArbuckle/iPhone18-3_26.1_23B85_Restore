@interface PXContentSyndicationItem
- (BOOL)isEqual:(id)equal;
- (PXAssetCollectionActionManager)assetCollectionActionManager;
- (PXContentSyndicationItem)initWithAssetCollection:(id)collection;
@end

@implementation PXContentSyndicationItem

- (PXAssetCollectionActionManager)assetCollectionActionManager
{
  v2 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:self->_assetCollection displayTitleInfo:0];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      assetCollection = [(PXContentSyndicationItem *)self assetCollection];
      assetCollection2 = [(PXContentSyndicationItem *)v5 assetCollection];

      v8 = assetCollection == assetCollection2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (PXContentSyndicationItem)initWithAssetCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = PXContentSyndicationItem;
  v6 = [(PXContentSyndicationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetCollection, collection);
  }

  return v7;
}

@end