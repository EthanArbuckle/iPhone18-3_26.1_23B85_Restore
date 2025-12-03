@interface PXAppleMusicPreviewAsset
- (BOOL)isEqual:(id)equal;
- (PXAppleMusicPreviewAsset)initWithOriginalAsset:(id)asset;
- (unint64_t)flags;
@end

@implementation PXAppleMusicPreviewAsset

- (unint64_t)flags
{
  originalAsset = [(PXAppleMusicPreviewAsset *)self originalAsset];
  flags = [originalAsset flags];

  return flags & 0xFFFFFFFFFFFFFFFDLL;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(PXAppleMusicPreviewAsset *)equalCopy identifier];
      identifier2 = [(PXAppleMusicPreviewAsset *)self identifier];
      if (identifier == identifier2)
      {
        v7 = 1;
      }

      else
      {
        v7 = [identifier isEqual:identifier2];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (PXAppleMusicPreviewAsset)initWithOriginalAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = PXAppleMusicPreviewAsset;
  v6 = [(PXAppleMusicPreviewAsset *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalAsset, asset);
  }

  return v7;
}

@end