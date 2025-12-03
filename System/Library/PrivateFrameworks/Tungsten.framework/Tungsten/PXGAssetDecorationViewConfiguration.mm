@interface PXGAssetDecorationViewConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXGAssetDecorationViewConfiguration

- (unint64_t)hash
{
  loadStatus = [(PXGAssetDecorationViewConfiguration *)self loadStatus];
  v3 = [loadStatus hash];

  return v3;
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
      loadStatus = [(PXGAssetDecorationViewConfiguration *)self loadStatus];
      loadStatus2 = [(PXGAssetDecorationViewConfiguration *)v5 loadStatus];
      if (loadStatus == loadStatus2)
      {
        v8 = 1;
      }

      else
      {
        v8 = [loadStatus isEqual:loadStatus2];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  loadStatus = [(PXGAssetDecorationViewConfiguration *)self loadStatus];
  [v4 setLoadStatus:loadStatus];

  return v4;
}

@end