@interface RMStoreAssetKey
+ (id)newAssetKey:(id)a3;
+ (id)newAssetKeyWithAsset:(id)a3;
+ (id)newAssetKeyWithAssetIdentifier:(id)a3 assetServerToken:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (RMStoreAssetKey)initWithAsset:(id)a3;
- (RMStoreAssetKey)initWithAssetIdentifier:(id)a3 assetServerToken:(id)a4;
- (RMStoreAssetKey)initWithAssetKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation RMStoreAssetKey

+ (id)newAssetKey:(id)a3
{
  v3 = a3;
  v4 = [[RMStoreAssetKey alloc] initWithAssetKey:v3];

  return v4;
}

+ (id)newAssetKeyWithAsset:(id)a3
{
  v3 = a3;
  v4 = [[RMStoreAssetKey alloc] initWithAsset:v3];

  return v4;
}

+ (id)newAssetKeyWithAssetIdentifier:(id)a3 assetServerToken:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RMStoreAssetKey alloc] initWithAssetIdentifier:v6 assetServerToken:v5];

  return v7;
}

- (RMStoreAssetKey)initWithAssetKey:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = RMStoreAssetKey;
  v6 = [(RMStoreAssetKey *)&v17 init];
  if (v6)
  {
    v7 = [v5 componentsSeparatedByString:@"."];
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

      objc_storeStrong(&v6->_key, a3);
    }
  }

  return v6;
}

- (RMStoreAssetKey)initWithAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 declarationIdentifier];
  v6 = [v4 declarationServerToken];

  v7 = [(RMStoreAssetKey *)self initWithAssetIdentifier:v5 assetServerToken:v6];
  return v7;
}

- (RMStoreAssetKey)initWithAssetIdentifier:(id)a3 assetServerToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = RMStoreAssetKey;
  v9 = [(RMStoreAssetKey *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetIdentifier, a3);
    objc_storeStrong(&v10->_assetServerToken, a4);
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
  v6 = [(RMStoreAssetKey *)self assetIdentifier];
  v7 = [(RMStoreAssetKey *)self assetServerToken];
  v8 = [v3 stringWithFormat:@"<%@: %p { identifier = %@, serverToken = %@ }>", v5, self, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RMStoreAssetKey *)self key];
      v6 = [(RMStoreAssetKey *)v4 key];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(RMStoreAssetKey *)self key];
  v4 = [RMStoreAssetKey newAssetKey:v3];

  return v4;
}

@end