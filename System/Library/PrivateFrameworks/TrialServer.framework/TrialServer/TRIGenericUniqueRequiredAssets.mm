@interface TRIGenericUniqueRequiredAssets
+ (id)assetsWithCloudKit:(id)a3 mobileAsset:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAssets:(id)a3;
- (TRIGenericUniqueRequiredAssets)initWithCloudKit:(id)a3 mobileAsset:(id)a4;
- (id)copyWithReplacementCloudKit:(id)a3;
- (id)copyWithReplacementMobileAsset:(id)a3;
- (id)description;
@end

@implementation TRIGenericUniqueRequiredAssets

- (TRIGenericUniqueRequiredAssets)initWithCloudKit:(id)a3 mobileAsset:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3224 description:{@"Invalid parameter not satisfying: %@", @"cloudKit != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3225 description:{@"Invalid parameter not satisfying: %@", @"mobileAsset != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIGenericUniqueRequiredAssets;
  v11 = [(TRIGenericUniqueRequiredAssets *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cloudKit, a3);
    objc_storeStrong(&v12->_mobileAsset, a4);
  }

  return v12;
}

+ (id)assetsWithCloudKit:(id)a3 mobileAsset:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithCloudKit:v7 mobileAsset:v6];

  return v8;
}

- (id)copyWithReplacementCloudKit:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithCloudKit:v4 mobileAsset:self->_mobileAsset];

  return v5;
}

- (id)copyWithReplacementMobileAsset:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithCloudKit:self->_cloudKit mobileAsset:v4];

  return v5;
}

- (BOOL)isEqualToAssets:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_cloudKit == 0;
  v7 = [v4 cloudKit];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  cloudKit = self->_cloudKit;
  if (cloudKit)
  {
    v10 = [v5 cloudKit];
    v11 = [(NSDictionary *)cloudKit isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_mobileAsset == 0;
  v13 = [v5 mobileAsset];
  v14 = v13 != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    mobileAsset = self->_mobileAsset;
    if (mobileAsset)
    {
      v16 = [v5 mobileAsset];
      v17 = [(NSDictionary *)mobileAsset isEqual:v16];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIGenericUniqueRequiredAssets *)self isEqualToAssets:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIGenericUniqueRequiredAssets | cloudKit:%@ mobileAsset:%@>", self->_cloudKit, self->_mobileAsset];

  return v2;
}

@end