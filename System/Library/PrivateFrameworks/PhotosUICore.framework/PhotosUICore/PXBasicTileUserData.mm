@interface PXBasicTileUserData
+ (PXBasicTileUserData)userDataWithViewSpec:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithViewSpec:(id)a3;
- (unint64_t)hash;
@end

@implementation PXBasicTileUserData

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXBasicTileUserData *)self viewSpec];
    v7 = [v5 viewSpec];
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

  return v8;
}

- (unint64_t)hash
{
  v2 = [(PXBasicTileUserData *)self viewSpec];
  v3 = [v2 hash];

  return v3;
}

- (id)_initWithViewSpec:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXBasicTileUserData;
  v6 = [(PXBasicTileUserData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewSpec, a3);
  }

  return v7;
}

+ (PXBasicTileUserData)userDataWithViewSpec:(id)a3
{
  v3 = a3;
  v4 = [[PXBasicTileUserData alloc] _initWithViewSpec:v3];

  return v4;
}

@end