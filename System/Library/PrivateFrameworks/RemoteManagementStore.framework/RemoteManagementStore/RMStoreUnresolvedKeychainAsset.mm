@interface RMStoreUnresolvedKeychainAsset
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUnresolvedKeychainAsset:(id)asset;
- (RMStoreUnresolvedKeychainAsset)initWithAsset:(id)asset assetKey:(id)key configurationKey:(id)configurationKey group:(id)group defaultAccessibility:(id)accessibility;
- (RMStoreUnresolvedKeychainAsset)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMStoreUnresolvedKeychainAsset

- (RMStoreUnresolvedKeychainAsset)initWithAsset:(id)asset assetKey:(id)key configurationKey:(id)configurationKey group:(id)group defaultAccessibility:(id)accessibility
{
  keyCopy = key;
  configurationKeyCopy = configurationKey;
  groupCopy = group;
  accessibilityCopy = accessibility;
  v20.receiver = self;
  v20.super_class = RMStoreUnresolvedKeychainAsset;
  v17 = [(RMStoreUnresolvedAsset *)&v20 initWithAsset:asset queryParameters:0 useCache:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_assetKey, key);
    objc_storeStrong(&v18->_configurationKey, configurationKey);
    objc_storeStrong(&v18->_keychainGroup, group);
    objc_storeStrong(&v18->_keychainDefaultAccessibility, accessibility);
  }

  return v18;
}

- (RMStoreUnresolvedKeychainAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = RMStoreUnresolvedKeychainAsset;
  v5 = [(RMStoreUnresolvedAsset *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asset-key"];
    assetKey = v5->_assetKey;
    v5->_assetKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration-key"];
    configurationKey = v5->_configurationKey;
    v5->_configurationKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keychain-group"];
    keychainGroup = v5->_keychainGroup;
    v5->_keychainGroup = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keychain-default-accessibility"];
    keychainDefaultAccessibility = v5->_keychainDefaultAccessibility;
    v5->_keychainDefaultAccessibility = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = RMStoreUnresolvedKeychainAsset;
  coderCopy = coder;
  [(RMStoreUnresolvedAsset *)&v9 encodeWithCoder:coderCopy];
  v5 = [(RMStoreUnresolvedKeychainAsset *)self assetKey:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"asset-key"];

  configurationKey = [(RMStoreUnresolvedKeychainAsset *)self configurationKey];
  [coderCopy encodeObject:configurationKey forKey:@"configuration-key"];

  keychainGroup = [(RMStoreUnresolvedKeychainAsset *)self keychainGroup];
  [coderCopy encodeObject:keychainGroup forKey:@"keychain-group"];

  keychainDefaultAccessibility = [(RMStoreUnresolvedKeychainAsset *)self keychainDefaultAccessibility];
  [coderCopy encodeObject:keychainDefaultAccessibility forKey:@"keychain-default-accessibility"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RMStoreUnresolvedKeychainAsset;
  v5 = [(RMStoreUnresolvedAsset *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RMStoreUnresolvedKeychainAsset *)self isEqualToUnresolvedKeychainAsset:equalCopy];

  return v5;
}

- (BOOL)isEqualToUnresolvedKeychainAsset:(id)asset
{
  assetCopy = asset;
  assetKey = [(RMStoreUnresolvedKeychainAsset *)self assetKey];
  assetKey2 = [assetCopy assetKey];
  v7 = assetKey;
  v8 = assetKey2;
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
    configurationKey = [(RMStoreUnresolvedKeychainAsset *)self configurationKey];
    configurationKey2 = [assetCopy configurationKey];
    v12 = configurationKey;
    v16 = configurationKey2;
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

    keychainGroup = [(RMStoreUnresolvedKeychainAsset *)self keychainGroup];
    keychainGroup2 = [assetCopy keychainGroup];
    v18 = keychainGroup;
    v22 = keychainGroup2;
    v17 = v22;
    v30 = assetCopy;
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

        assetCopy = v30;
        goto LABEL_26;
      }

      v25 = [v18 isEqual:v22];

      assetCopy = v30;
      if (!v25)
      {
        v10 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    keychainDefaultAccessibility = [(RMStoreUnresolvedKeychainAsset *)self keychainDefaultAccessibility];
    keychainDefaultAccessibility2 = [assetCopy keychainDefaultAccessibility];
    v24 = keychainDefaultAccessibility;
    v28 = keychainDefaultAccessibility2;
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