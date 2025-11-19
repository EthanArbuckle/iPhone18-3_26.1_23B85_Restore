@interface RMStoreResolvedAsset
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResolvedAsset:(id)a3;
- (RMStoreResolvedAsset)initWithCoder:(id)a3;
- (RMStoreResolvedAsset)initWithData:(id)a3;
- (RMStoreResolvedAsset)initWithFile:(id)a3;
- (RMStoreResolvedAsset)initWithKeychainReference:(id)a3;
- (RMStoreResolvedAsset)initWithKeychainReference:(id)a3 userName:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMStoreResolvedAsset

- (RMStoreResolvedAsset)initWithData:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RMStoreResolvedAsset;
  v6 = [(RMStoreResolvedAsset *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetData, a3);
    assetFile = v7->_assetFile;
    v7->_assetFile = 0;

    assetKeychainReference = v7->_assetKeychainReference;
    v7->_assetKeychainReference = 0;

    assetKeychainUserName = v7->_assetKeychainUserName;
    v7->_assetKeychainUserName = 0;
  }

  return v7;
}

- (RMStoreResolvedAsset)initWithFile:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RMStoreResolvedAsset;
  v6 = [(RMStoreResolvedAsset *)&v12 init];
  v7 = v6;
  if (v6)
  {
    assetData = v6->_assetData;
    v6->_assetData = 0;

    objc_storeStrong(&v7->_assetFile, a3);
    assetKeychainReference = v7->_assetKeychainReference;
    v7->_assetKeychainReference = 0;

    assetKeychainUserName = v7->_assetKeychainUserName;
    v7->_assetKeychainUserName = 0;
  }

  return v7;
}

- (RMStoreResolvedAsset)initWithKeychainReference:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RMStoreResolvedAsset;
  v6 = [(RMStoreResolvedAsset *)&v12 init];
  v7 = v6;
  if (v6)
  {
    assetData = v6->_assetData;
    v6->_assetData = 0;

    assetFile = v7->_assetFile;
    v7->_assetFile = 0;

    objc_storeStrong(&v7->_assetKeychainReference, a3);
    assetKeychainUserName = v7->_assetKeychainUserName;
    v7->_assetKeychainUserName = 0;
  }

  return v7;
}

- (RMStoreResolvedAsset)initWithKeychainReference:(id)a3 userName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = RMStoreResolvedAsset;
  v9 = [(RMStoreResolvedAsset *)&v14 init];
  v10 = v9;
  if (v9)
  {
    assetData = v9->_assetData;
    v9->_assetData = 0;

    assetFile = v10->_assetFile;
    v10->_assetFile = 0;

    objc_storeStrong(&v10->_assetKeychainReference, a3);
    objc_storeStrong(&v10->_assetKeychainUserName, a4);
  }

  return v10;
}

- (RMStoreResolvedAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asset-data"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asset-file"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asset-keychain-reference"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asset-keychain-username"];

  if (v5)
  {
    v9 = [(RMStoreResolvedAsset *)self initWithData:v5];
  }

  else if (v6)
  {
    v9 = [(RMStoreResolvedAsset *)self initWithFile:v6];
  }

  else
  {
    v9 = [(RMStoreResolvedAsset *)self initWithKeychainReference:v7 userName:v8];
  }

  v10 = v9;

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMStoreResolvedAsset *)self assetData];
  [v4 encodeObject:v5 forKey:@"asset-data"];

  v6 = [(RMStoreResolvedAsset *)self assetFile];
  [v4 encodeObject:v6 forKey:@"asset-file"];

  v7 = [(RMStoreResolvedAsset *)self assetKeychainReference];
  [v4 encodeObject:v7 forKey:@"asset-keychain-reference"];

  v8 = [(RMStoreResolvedAsset *)self assetKeychainUserName];
  [v4 encodeObject:v8 forKey:@"asset-keychain-username"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMStoreResolvedAsset *)self isEqualToResolvedAsset:v4];
  }

  return v5;
}

- (BOOL)isEqualToResolvedAsset:(id)a3
{
  v4 = a3;
  v5 = [(RMStoreResolvedAsset *)self assetData];
  v6 = [v4 assetData];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_7;
  }

  v10 = 0;
  v11 = v8;
  v12 = v7;
  if (!v7 || !v8)
  {
    goto LABEL_27;
  }

  v13 = [v7 isEqual:v8];

  if (v13)
  {
LABEL_7:
    v14 = [(RMStoreResolvedAsset *)self assetFile];
    v15 = [v4 assetFile];
    v12 = v14;
    v16 = v15;
    v11 = v16;
    if (v12 == v16)
    {
    }

    else
    {
      v10 = 0;
      v17 = v16;
      v18 = v12;
      if (!v12 || !v16)
      {
        goto LABEL_26;
      }

      v19 = [v12 isEqual:v16];

      if (!v19)
      {
        v10 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v20 = [(RMStoreResolvedAsset *)self assetKeychainReference];
    v21 = [v4 assetKeychainReference];
    v18 = v20;
    v22 = v21;
    v17 = v22;
    v30 = v4;
    if (v18 == v22)
    {
    }

    else
    {
      v10 = 0;
      v23 = v22;
      v24 = v18;
      if (!v18 || !v22)
      {
LABEL_25:

        v4 = v30;
        goto LABEL_26;
      }

      v25 = [v18 isEqual:v22];

      v4 = v30;
      if (!v25)
      {
        v10 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v26 = [(RMStoreResolvedAsset *)self assetKeychainUserName];
    v27 = [v4 assetKeychainUserName];
    v24 = v26;
    v28 = v27;
    v23 = v28;
    if (v24 == v28)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v24 && v28)
      {
        v10 = [v24 isEqual:v28];
      }
    }

    goto LABEL_25;
  }

  v10 = 0;
LABEL_28:

  return v10;
}

@end