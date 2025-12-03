@interface PXBasicTileUserData
+ (PXBasicTileUserData)userDataWithViewSpec:(id)spec;
- (BOOL)isEqual:(id)equal;
- (id)_initWithViewSpec:(id)spec;
- (unint64_t)hash;
@end

@implementation PXBasicTileUserData

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    viewSpec = [(PXBasicTileUserData *)self viewSpec];
    viewSpec2 = [v5 viewSpec];
    if (viewSpec == viewSpec2)
    {
      v8 = 1;
    }

    else
    {
      v8 = [viewSpec isEqual:viewSpec2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  viewSpec = [(PXBasicTileUserData *)self viewSpec];
  v3 = [viewSpec hash];

  return v3;
}

- (id)_initWithViewSpec:(id)spec
{
  specCopy = spec;
  v9.receiver = self;
  v9.super_class = PXBasicTileUserData;
  v6 = [(PXBasicTileUserData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewSpec, spec);
  }

  return v7;
}

+ (PXBasicTileUserData)userDataWithViewSpec:(id)spec
{
  specCopy = spec;
  v4 = [[PXBasicTileUserData alloc] _initWithViewSpec:specCopy];

  return v4;
}

@end