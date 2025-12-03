@interface RMStoreResolvedAsset
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResolvedAsset:(id)asset;
- (RMStoreResolvedAsset)initWithCoder:(id)coder;
- (RMStoreResolvedAsset)initWithData:(id)data;
- (RMStoreResolvedAsset)initWithFile:(id)file;
- (RMStoreResolvedAsset)initWithKeychainReference:(id)reference;
- (RMStoreResolvedAsset)initWithKeychainReference:(id)reference userName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMStoreResolvedAsset

- (RMStoreResolvedAsset)initWithData:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = RMStoreResolvedAsset;
  v6 = [(RMStoreResolvedAsset *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetData, data);
    assetFile = v7->_assetFile;
    v7->_assetFile = 0;

    assetKeychainReference = v7->_assetKeychainReference;
    v7->_assetKeychainReference = 0;

    assetKeychainUserName = v7->_assetKeychainUserName;
    v7->_assetKeychainUserName = 0;
  }

  return v7;
}

- (RMStoreResolvedAsset)initWithFile:(id)file
{
  fileCopy = file;
  v12.receiver = self;
  v12.super_class = RMStoreResolvedAsset;
  v6 = [(RMStoreResolvedAsset *)&v12 init];
  v7 = v6;
  if (v6)
  {
    assetData = v6->_assetData;
    v6->_assetData = 0;

    objc_storeStrong(&v7->_assetFile, file);
    assetKeychainReference = v7->_assetKeychainReference;
    v7->_assetKeychainReference = 0;

    assetKeychainUserName = v7->_assetKeychainUserName;
    v7->_assetKeychainUserName = 0;
  }

  return v7;
}

- (RMStoreResolvedAsset)initWithKeychainReference:(id)reference
{
  referenceCopy = reference;
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

    objc_storeStrong(&v7->_assetKeychainReference, reference);
    assetKeychainUserName = v7->_assetKeychainUserName;
    v7->_assetKeychainUserName = 0;
  }

  return v7;
}

- (RMStoreResolvedAsset)initWithKeychainReference:(id)reference userName:(id)name
{
  referenceCopy = reference;
  nameCopy = name;
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

    objc_storeStrong(&v10->_assetKeychainReference, reference);
    objc_storeStrong(&v10->_assetKeychainUserName, name);
  }

  return v10;
}

- (RMStoreResolvedAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asset-data"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asset-file"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asset-keychain-reference"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asset-keychain-username"];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetData = [(RMStoreResolvedAsset *)self assetData];
  [coderCopy encodeObject:assetData forKey:@"asset-data"];

  assetFile = [(RMStoreResolvedAsset *)self assetFile];
  [coderCopy encodeObject:assetFile forKey:@"asset-file"];

  assetKeychainReference = [(RMStoreResolvedAsset *)self assetKeychainReference];
  [coderCopy encodeObject:assetKeychainReference forKey:@"asset-keychain-reference"];

  assetKeychainUserName = [(RMStoreResolvedAsset *)self assetKeychainUserName];
  [coderCopy encodeObject:assetKeychainUserName forKey:@"asset-keychain-username"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMStoreResolvedAsset *)self isEqualToResolvedAsset:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToResolvedAsset:(id)asset
{
  assetCopy = asset;
  assetData = [(RMStoreResolvedAsset *)self assetData];
  assetData2 = [assetCopy assetData];
  v7 = assetData;
  v8 = assetData2;
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
    assetFile = [(RMStoreResolvedAsset *)self assetFile];
    assetFile2 = [assetCopy assetFile];
    v12 = assetFile;
    v16 = assetFile2;
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

    assetKeychainReference = [(RMStoreResolvedAsset *)self assetKeychainReference];
    assetKeychainReference2 = [assetCopy assetKeychainReference];
    v18 = assetKeychainReference;
    v22 = assetKeychainReference2;
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

    assetKeychainUserName = [(RMStoreResolvedAsset *)self assetKeychainUserName];
    assetKeychainUserName2 = [assetCopy assetKeychainUserName];
    v24 = assetKeychainUserName;
    v28 = assetKeychainUserName2;
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