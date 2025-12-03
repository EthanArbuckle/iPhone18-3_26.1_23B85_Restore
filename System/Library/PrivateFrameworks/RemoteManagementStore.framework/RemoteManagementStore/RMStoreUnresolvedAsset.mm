@interface RMStoreUnresolvedAsset
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUnresolvedAsset:(id)asset;
- (RMStoreUnresolvedAsset)initWithAsset:(id)asset queryParameters:(id)parameters;
- (RMStoreUnresolvedAsset)initWithAsset:(id)asset queryParameters:(id)parameters downloadURL:(id)l;
- (RMStoreUnresolvedAsset)initWithAssetIdentifier:(id)identifier resolveAs:(int64_t)as queryParameters:(id)parameters downloadURL:(id)l extensionToken:(id)token useCache:(BOOL)cache;
- (RMStoreUnresolvedAsset)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMStoreUnresolvedAsset

- (RMStoreUnresolvedAsset)initWithAsset:(id)asset queryParameters:(id)parameters
{
  parametersCopy = parameters;
  declarationIdentifier = [asset declarationIdentifier];
  v8 = [(RMStoreUnresolvedAsset *)self initWithAssetIdentifier:declarationIdentifier resolveAs:0 queryParameters:parametersCopy downloadURL:0 extensionToken:0 useCache:1];

  return v8;
}

- (RMStoreUnresolvedAsset)initWithAsset:(id)asset queryParameters:(id)parameters downloadURL:(id)l
{
  lCopy = l;
  parametersCopy = parameters;
  declarationIdentifier = [asset declarationIdentifier];
  v11 = [(RMStoreUnresolvedAsset *)self initWithAssetIdentifier:declarationIdentifier resolveAs:1 queryParameters:parametersCopy downloadURL:lCopy extensionToken:0 useCache:1];

  return v11;
}

- (RMStoreUnresolvedAsset)initWithAssetIdentifier:(id)identifier resolveAs:(int64_t)as queryParameters:(id)parameters downloadURL:(id)l extensionToken:(id)token useCache:(BOOL)cache
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  lCopy = l;
  tokenCopy = token;
  v22.receiver = self;
  v22.super_class = RMStoreUnresolvedAsset;
  v18 = [(RMStoreUnresolvedAsset *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_assetIdentifier, identifier);
    v19->_resolveAs = as;
    objc_storeStrong(&v19->_queryParameters, parameters);
    objc_storeStrong(&v19->_downloadURL, l);
    objc_storeStrong(&v19->_extensionToken, token);
    v19->_useCache = cache;
  }

  return v19;
}

- (RMStoreUnresolvedAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asset-identifier"];
  v6 = [coderCopy decodeIntegerForKey:@"resolve-as"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"query-parameters"];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"download-url"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extension-token"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"use-cache"];

  bOOLValue = [v13 BOOLValue];
  v15 = [(RMStoreUnresolvedAsset *)self initWithAssetIdentifier:v5 resolveAs:v6 queryParameters:v10 downloadURL:v11 extensionToken:v12 useCache:bOOLValue];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetIdentifier = [(RMStoreUnresolvedAsset *)self assetIdentifier];
  [coderCopy encodeObject:assetIdentifier forKey:@"asset-identifier"];

  [coderCopy encodeInteger:-[RMStoreUnresolvedAsset resolveAs](self forKey:{"resolveAs"), @"resolve-as"}];
  queryParameters = [(RMStoreUnresolvedAsset *)self queryParameters];
  [coderCopy encodeObject:queryParameters forKey:@"query-parameters"];

  downloadURL = [(RMStoreUnresolvedAsset *)self downloadURL];
  [coderCopy encodeObject:downloadURL forKey:@"download-url"];

  extensionToken = [(RMStoreUnresolvedAsset *)self extensionToken];
  [coderCopy encodeObject:extensionToken forKey:@"extension-token"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[RMStoreUnresolvedAsset useCache](self, "useCache")}];
  [coderCopy encodeObject:v9 forKey:@"use-cache"];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMStoreUnresolvedAsset *)self isEqualToUnresolvedAsset:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToUnresolvedAsset:(id)asset
{
  assetCopy = asset;
  assetIdentifier = [(RMStoreUnresolvedAsset *)self assetIdentifier];
  assetIdentifier2 = [assetCopy assetIdentifier];
  if ([assetIdentifier isEqualToString:assetIdentifier2])
  {
    resolveAs = [(RMStoreUnresolvedAsset *)self resolveAs];
    if (resolveAs == [assetCopy resolveAs])
    {
      queryParameters = [(RMStoreUnresolvedAsset *)self queryParameters];
      queryParameters2 = [assetCopy queryParameters];
      v10 = queryParameters;
      v11 = queryParameters2;
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

      downloadURL = [(RMStoreUnresolvedAsset *)self downloadURL];
      downloadURL2 = [assetCopy downloadURL];
      v15 = downloadURL;
      v19 = downloadURL2;
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

      extensionToken = [(RMStoreUnresolvedAsset *)self extensionToken];
      extensionToken2 = [assetCopy extensionToken];
      v21 = extensionToken;
      v25 = extensionToken2;
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

      useCache = [(RMStoreUnresolvedAsset *)self useCache];
      v13 = useCache ^ [assetCopy useCache] ^ 1;
      goto LABEL_23;
    }
  }

  LOBYTE(v13) = 0;
LABEL_28:

  return v13;
}

@end