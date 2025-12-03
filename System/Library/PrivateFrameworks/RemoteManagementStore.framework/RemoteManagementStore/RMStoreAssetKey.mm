@interface RMStoreAssetKey
+ (id)newAssetKey:(id)key;
+ (id)newAssetKeyWithAsset:(id)asset;
+ (id)newAssetKeyWithAssetIdentifier:(id)identifier assetServerToken:(id)token;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (RMStoreAssetKey)initWithAsset:(id)asset;
- (RMStoreAssetKey)initWithAssetIdentifier:(id)identifier assetServerToken:(id)token;
- (RMStoreAssetKey)initWithAssetKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation RMStoreAssetKey

+ (id)newAssetKey:(id)key
{
  keyCopy = key;
  v4 = [[RMStoreAssetKey alloc] initWithAssetKey:keyCopy];

  return v4;
}

+ (id)newAssetKeyWithAsset:(id)asset
{
  assetCopy = asset;
  v4 = [[RMStoreAssetKey alloc] initWithAsset:assetCopy];

  return v4;
}

+ (id)newAssetKeyWithAssetIdentifier:(id)identifier assetServerToken:(id)token
{
  tokenCopy = token;
  identifierCopy = identifier;
  v7 = [[RMStoreAssetKey alloc] initWithAssetIdentifier:identifierCopy assetServerToken:tokenCopy];

  return v7;
}

- (RMStoreAssetKey)initWithAssetKey:(id)key
{
  keyCopy = key;
  v17.receiver = self;
  v17.super_class = RMStoreAssetKey;
  v6 = [(RMStoreAssetKey *)&v17 init];
  if (v6)
  {
    v7 = [keyCopy componentsSeparatedByString:@"."];
    if ([v7 count] == 2)
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];

      assetIdentifier = v6->_assetIdentifier;
      v6->_assetIdentifier = v10;

      v12 = [v7 objectAtIndexedSubscript:1];
      v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v12 options:0];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];

      assetServerToken = v6->_assetServerToken;
      v6->_assetServerToken = v14;

      objc_storeStrong(&v6->_key, key);
    }
  }

  return v6;
}

- (RMStoreAssetKey)initWithAsset:(id)asset
{
  assetCopy = asset;
  declarationIdentifier = [assetCopy declarationIdentifier];
  declarationServerToken = [assetCopy declarationServerToken];

  v7 = [(RMStoreAssetKey *)self initWithAssetIdentifier:declarationIdentifier assetServerToken:declarationServerToken];
  return v7;
}

- (RMStoreAssetKey)initWithAssetIdentifier:(id)identifier assetServerToken:(id)token
{
  identifierCopy = identifier;
  tokenCopy = token;
  v19.receiver = self;
  v19.super_class = RMStoreAssetKey;
  v9 = [(RMStoreAssetKey *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetIdentifier, identifier);
    objc_storeStrong(&v10->_assetServerToken, token);
    v11 = MEMORY[0x277CCACA8];
    v12 = [(NSString *)v10->_assetIdentifier dataUsingEncoding:4];
    v13 = [v12 base64EncodedStringWithOptions:0];

    v14 = [(NSString *)v10->_assetServerToken dataUsingEncoding:4];
    v15 = [v14 base64EncodedStringWithOptions:0];

    v16 = [v11 stringWithFormat:@"%@.%@", v13, v15];
    key = v10->_key;
    v10->_key = v16;
  }

  return v10;
}

- (BOOL)isValid
{
  v2 = [(RMStoreAssetKey *)self key];
  v3 = v2 != 0;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  assetIdentifier = [(RMStoreAssetKey *)self assetIdentifier];
  assetServerToken = [(RMStoreAssetKey *)self assetServerToken];
  v8 = [v3 stringWithFormat:@"<%@: %p { identifier = %@, serverToken = %@ }>", v5, self, assetIdentifier, assetServerToken];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RMStoreAssetKey *)self key];
      v6 = [(RMStoreAssetKey *)equalCopy key];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(RMStoreAssetKey *)self key];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [(RMStoreAssetKey *)self key];
  v4 = [RMStoreAssetKey newAssetKey:v3];

  return v4;
}

@end