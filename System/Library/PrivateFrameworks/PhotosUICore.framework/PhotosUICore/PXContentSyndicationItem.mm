@interface PXContentSyndicationItem
- (BOOL)isEqual:(id)a3;
- (PXAssetCollectionActionManager)assetCollectionActionManager;
- (PXContentSyndicationItem)initWithAssetCollection:(id)a3;
@end

@implementation PXContentSyndicationItem

- (PXAssetCollectionActionManager)assetCollectionActionManager
{
  v2 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:self->_assetCollection displayTitleInfo:0];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXContentSyndicationItem *)self assetCollection];
      v7 = [(PXContentSyndicationItem *)v5 assetCollection];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (PXContentSyndicationItem)initWithAssetCollection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXContentSyndicationItem;
  v6 = [(PXContentSyndicationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetCollection, a3);
  }

  return v7;
}

@end