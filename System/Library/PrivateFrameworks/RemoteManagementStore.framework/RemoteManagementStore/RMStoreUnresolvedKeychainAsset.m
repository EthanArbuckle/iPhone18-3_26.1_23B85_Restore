@interface RMStoreUnresolvedKeychainAsset
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUnresolvedKeychainAsset:(id)a3;
- (RMStoreUnresolvedKeychainAsset)initWithAsset:(id)a3 assetKey:(id)a4 configurationKey:(id)a5 group:(id)a6 defaultAccessibility:(id)a7;
- (RMStoreUnresolvedKeychainAsset)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMStoreUnresolvedKeychainAsset

- (RMStoreUnresolvedKeychainAsset)initWithAsset:(id)a3 assetKey:(id)a4 configurationKey:(id)a5 group:(id)a6 defaultAccessibility:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = RMStoreUnresolvedKeychainAsset;
  v17 = [(RMStoreUnresolvedAsset *)&v20 initWithAsset:a3 queryParameters:0 useCache:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_assetKey, a4);
    objc_storeStrong(&v18->_configurationKey, a5);
    objc_storeStrong(&v18->_keychainGroup, a6);
    objc_storeStrong(&v18->_keychainDefaultAccessibility, a7);
  }

  return v18;
}

- (RMStoreUnresolvedKeychainAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = RMStoreUnresolvedKeychainAsset;
  v5 = [(RMStoreUnresolvedAsset *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asset-key"];
    assetKey = v5->_assetKey;
    v5->_assetKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration-key"];
    configurationKey = v5->_configurationKey;
    v5->_configurationKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keychain-group"];
    keychainGroup = v5->_keychainGroup;
    v5->_keychainGroup = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keychain-default-accessibility"];
    keychainDefaultAccessibility = v5->_keychainDefaultAccessibility;
    v5->_keychainDefaultAccessibility = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = RMStoreUnresolvedKeychainAsset;
  v4 = a3;
  [(RMStoreUnresolvedAsset *)&v9 encodeWithCoder:v4];
  v5 = [(RMStoreUnresolvedKeychainAsset *)self assetKey:v9.receiver];
  [v4 encodeObject:v5 forKey:@"asset-key"];

  v6 = [(RMStoreUnresolvedKeychainAsset *)self configurationKey];
  [v4 encodeObject:v6 forKey:@"configuration-key"];

  v7 = [(RMStoreUnresolvedKeychainAsset *)self keychainGroup];
  [v4 encodeObject:v7 forKey:@"keychain-group"];

  v8 = [(RMStoreUnresolvedKeychainAsset *)self keychainDefaultAccessibility];
  [v4 encodeObject:v8 forKey:@"keychain-default-accessibility"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RMStoreUnresolvedKeychainAsset;
  v5 = [(RMStoreUnresolvedAsset *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RMStoreUnresolvedKeychainAsset *)self isEqualToUnresolvedKeychainAsset:v4];

  return v5;
}

- (BOOL)isEqualToUnresolvedKeychainAsset:(id)a3
{
  v4 = a3;
  v5 = [(RMStoreUnresolvedKeychainAsset *)self assetKey];
  v6 = [v4 assetKey];
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
    v14 = [(RMStoreUnresolvedKeychainAsset *)self configurationKey];
    v15 = [v4 configurationKey];
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

    v20 = [(RMStoreUnresolvedKeychainAsset *)self keychainGroup];
    v21 = [v4 keychainGroup];
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

    v26 = [(RMStoreUnresolvedKeychainAsset *)self keychainDefaultAccessibility];
    v27 = [v4 keychainDefaultAccessibility];
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