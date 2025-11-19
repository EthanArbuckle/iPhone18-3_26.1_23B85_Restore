@interface RMStoreUnresolvedAsset
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUnresolvedAsset:(id)a3;
- (RMStoreUnresolvedAsset)initWithAsset:(id)a3 queryParameters:(id)a4;
- (RMStoreUnresolvedAsset)initWithAsset:(id)a3 queryParameters:(id)a4 downloadURL:(id)a5;
- (RMStoreUnresolvedAsset)initWithAssetIdentifier:(id)a3 resolveAs:(int64_t)a4 queryParameters:(id)a5 downloadURL:(id)a6 extensionToken:(id)a7 useCache:(BOOL)a8;
- (RMStoreUnresolvedAsset)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMStoreUnresolvedAsset

- (RMStoreUnresolvedAsset)initWithAsset:(id)a3 queryParameters:(id)a4
{
  v6 = a4;
  v7 = [a3 declarationIdentifier];
  v8 = [(RMStoreUnresolvedAsset *)self initWithAssetIdentifier:v7 resolveAs:0 queryParameters:v6 downloadURL:0 extensionToken:0 useCache:1];

  return v8;
}

- (RMStoreUnresolvedAsset)initWithAsset:(id)a3 queryParameters:(id)a4 downloadURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 declarationIdentifier];
  v11 = [(RMStoreUnresolvedAsset *)self initWithAssetIdentifier:v10 resolveAs:1 queryParameters:v9 downloadURL:v8 extensionToken:0 useCache:1];

  return v11;
}

- (RMStoreUnresolvedAsset)initWithAssetIdentifier:(id)a3 resolveAs:(int64_t)a4 queryParameters:(id)a5 downloadURL:(id)a6 extensionToken:(id)a7 useCache:(BOOL)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = RMStoreUnresolvedAsset;
  v18 = [(RMStoreUnresolvedAsset *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_assetIdentifier, a3);
    v19->_resolveAs = a4;
    objc_storeStrong(&v19->_queryParameters, a5);
    objc_storeStrong(&v19->_downloadURL, a6);
    objc_storeStrong(&v19->_extensionToken, a7);
    v19->_useCache = a8;
  }

  return v19;
}

- (RMStoreUnresolvedAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asset-identifier"];
  v6 = [v4 decodeIntegerForKey:@"resolve-as"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"query-parameters"];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"download-url"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extension-token"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"use-cache"];

  v14 = [v13 BOOLValue];
  v15 = [(RMStoreUnresolvedAsset *)self initWithAssetIdentifier:v5 resolveAs:v6 queryParameters:v10 downloadURL:v11 extensionToken:v12 useCache:v14];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMStoreUnresolvedAsset *)self assetIdentifier];
  [v4 encodeObject:v5 forKey:@"asset-identifier"];

  [v4 encodeInteger:-[RMStoreUnresolvedAsset resolveAs](self forKey:{"resolveAs"), @"resolve-as"}];
  v6 = [(RMStoreUnresolvedAsset *)self queryParameters];
  [v4 encodeObject:v6 forKey:@"query-parameters"];

  v7 = [(RMStoreUnresolvedAsset *)self downloadURL];
  [v4 encodeObject:v7 forKey:@"download-url"];

  v8 = [(RMStoreUnresolvedAsset *)self extensionToken];
  [v4 encodeObject:v8 forKey:@"extension-token"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[RMStoreUnresolvedAsset useCache](self, "useCache")}];
  [v4 encodeObject:v9 forKey:@"use-cache"];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMStoreUnresolvedAsset *)self isEqualToUnresolvedAsset:v4];
  }

  return v5;
}

- (BOOL)isEqualToUnresolvedAsset:(id)a3
{
  v4 = a3;
  v5 = [(RMStoreUnresolvedAsset *)self assetIdentifier];
  v6 = [v4 assetIdentifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(RMStoreUnresolvedAsset *)self resolveAs];
    if (v7 == [v4 resolveAs])
    {
      v8 = [(RMStoreUnresolvedAsset *)self queryParameters];
      v9 = [v4 queryParameters];
      v10 = v8;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        LOBYTE(v13) = 0;
        v14 = v11;
        v15 = v10;
        if (!v10 || !v11)
        {
          goto LABEL_26;
        }

        v16 = [v10 isEqual:v11];

        if (!v16)
        {
          LOBYTE(v13) = 0;
LABEL_27:

          goto LABEL_28;
        }
      }

      v17 = [(RMStoreUnresolvedAsset *)self downloadURL];
      v18 = [v4 downloadURL];
      v15 = v17;
      v19 = v18;
      v14 = v19;
      if (v15 == v19)
      {
      }

      else
      {
        LOBYTE(v13) = 0;
        v20 = v19;
        v21 = v15;
        if (!v15 || !v19)
        {
          goto LABEL_25;
        }

        v22 = [v15 isEqual:v19];

        if (!v22)
        {
          LOBYTE(v13) = 0;
LABEL_26:

          goto LABEL_27;
        }
      }

      v23 = [(RMStoreUnresolvedAsset *)self extensionToken];
      v24 = [v4 extensionToken];
      v21 = v23;
      v25 = v24;
      v26 = v21;
      v27 = v25;
      if (v21 == v25)
      {
        v34 = v25;

        v35 = v21;
      }

      else
      {
        if (!v21 || !v25)
        {
          v31 = v25;

          v20 = v31;
          LOBYTE(v13) = 0;
          goto LABEL_25;
        }

        v28 = v21;
        v29 = v27;
        v33 = [v28 isEqual:v27];
        v34 = v29;

        v35 = v26;
        if (!v33)
        {
          LOBYTE(v13) = 0;
LABEL_23:
          v20 = v34;
          v21 = v35;
LABEL_25:

          goto LABEL_26;
        }
      }

      v30 = [(RMStoreUnresolvedAsset *)self useCache];
      v13 = v30 ^ [v4 useCache] ^ 1;
      goto LABEL_23;
    }
  }

  LOBYTE(v13) = 0;
LABEL_28:

  return v13;
}

@end