@interface PXGAssetDecorationViewConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXGAssetDecorationViewConfiguration

- (unint64_t)hash
{
  v2 = [(PXGAssetDecorationViewConfiguration *)self loadStatus];
  v3 = [v2 hash];

  return v3;
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
      v6 = [(PXGAssetDecorationViewConfiguration *)self loadStatus];
      v7 = [(PXGAssetDecorationViewConfiguration *)v5 loadStatus];
      if (v6 == v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqual:v7];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PXGAssetDecorationViewConfiguration *)self loadStatus];
  [v4 setLoadStatus:v5];

  return v4;
}

@end