@interface PXAppleMusicPreviewAsset
- (BOOL)isEqual:(id)a3;
- (PXAppleMusicPreviewAsset)initWithOriginalAsset:(id)a3;
- (unint64_t)flags;
@end

@implementation PXAppleMusicPreviewAsset

- (unint64_t)flags
{
  v2 = [(PXAppleMusicPreviewAsset *)self originalAsset];
  v3 = [v2 flags];

  return v3 & 0xFFFFFFFFFFFFFFFDLL;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PXAppleMusicPreviewAsset *)v4 identifier];
      v6 = [(PXAppleMusicPreviewAsset *)self identifier];
      if (v5 == v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = [v5 isEqual:v6];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (PXAppleMusicPreviewAsset)initWithOriginalAsset:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXAppleMusicPreviewAsset;
  v6 = [(PXAppleMusicPreviewAsset *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalAsset, a3);
  }

  return v7;
}

@end