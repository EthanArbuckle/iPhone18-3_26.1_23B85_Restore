@interface PFStoryConcreteRecipeDisplayAsset
+ (BOOL)decomposeURL:(id)l usingBlock:(id)block;
+ (id)URLWithScheme:(id)scheme cloudIdentifier:(id)identifier;
- (BOOL)isEqualToAsset:(id)asset;
- (PFStoryConcreteRecipeDisplayAsset)initWithIdentifier:(id)identifier category:(int64_t)category scheme:(id)scheme cloudIdentifier:(id)cloudIdentifier;
- (PFStoryConcreteRecipeDisplayAsset)initWithIdentifier:(id)identifier kind:(int64_t)kind url:(id)url;
@end

@implementation PFStoryConcreteRecipeDisplayAsset

- (BOOL)isEqualToAsset:(id)asset
{
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = PFStoryConcreteRecipeDisplayAsset;
  if (-[PFStoryConcreteRecipeAsset isEqualToAsset:](&v12, sel_isEqualToAsset_, assetCopy) && (v5 = -[PFStoryConcreteRecipeDisplayAsset category](self, "category"), v5 == [assetCopy category]))
  {
    scheme = [(PFStoryConcreteRecipeDisplayAsset *)self scheme];
    scheme2 = [assetCopy scheme];
    if (scheme == scheme2 || [scheme isEqual:scheme2])
    {
      cloudIdentifier = [(PFStoryConcreteRecipeDisplayAsset *)self cloudIdentifier];
      cloudIdentifier2 = [assetCopy cloudIdentifier];
      if (cloudIdentifier == cloudIdentifier2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [cloudIdentifier isEqual:cloudIdentifier2];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PFStoryConcreteRecipeDisplayAsset)initWithIdentifier:(id)identifier kind:(int64_t)kind url:(id)url
{
  identifierCopy = identifier;
  urlCopy = url;
  v8 = _PFAssertFailHandler();
  return [(PFStoryConcreteRecipeDisplayAsset *)v8 initWithIdentifier:v9 category:v10 scheme:v11 cloudIdentifier:v12, v13];
}

- (PFStoryConcreteRecipeDisplayAsset)initWithIdentifier:(id)identifier category:(int64_t)category scheme:(id)scheme cloudIdentifier:(id)cloudIdentifier
{
  schemeCopy = scheme;
  cloudIdentifierCopy = cloudIdentifier;
  identifierCopy = identifier;
  v13 = [PFStoryConcreteRecipeDisplayAsset URLWithScheme:schemeCopy cloudIdentifier:cloudIdentifierCopy];
  v20.receiver = self;
  v20.super_class = PFStoryConcreteRecipeDisplayAsset;
  v14 = [(PFStoryConcreteRecipeAsset *)&v20 initWithIdentifier:identifierCopy kind:1 url:v13];

  if (v14)
  {
    v14->_category = category;
    v15 = [schemeCopy copy];
    scheme = v14->_scheme;
    v14->_scheme = v15;

    v17 = [cloudIdentifierCopy copy];
    cloudIdentifier = v14->_cloudIdentifier;
    v14->_cloudIdentifier = v17;
  }

  return v14;
}

+ (BOOL)decomposeURL:(id)l usingBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:1];
  scheme = [v7 scheme];
  if (!scheme)
  {
    goto LABEL_16;
  }

  host = [v7 host];
  if (([host isEqualToString:@"asset"] & 1) == 0)
  {

    goto LABEL_16;
  }

  queryItems = [v7 queryItems];
  v11 = [queryItems count];

  if (v11 != 1)
  {
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  queryItems2 = [v7 queryItems];
  v13 = [queryItems2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  v14 = v13 != 0;
  if (v13)
  {
    v15 = v13;
    v24 = v13 != 0;
    v25 = scheme;
    v26 = blockCopy;
    v27 = lCopy;
    v16 = 0;
    v17 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(queryItems2);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        name = [v19 name];
        v21 = [name isEqualToString:@"cloudIdentifier"];

        if (v21)
        {
          value = [v19 value];

          v16 = value;
        }
      }

      v15 = [queryItems2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);

    if (!v16)
    {
      v14 = 0;
      blockCopy = v26;
      lCopy = v27;
      scheme = v25;
      goto LABEL_17;
    }

    scheme = v25;
    blockCopy = v26;
    (*(v26 + 2))(v26, v25, v16);
    lCopy = v27;
    v14 = v24;
  }

  else
  {
    v16 = queryItems2;
  }

LABEL_17:
  return v14;
}

+ (id)URLWithScheme:(id)scheme cloudIdentifier:(id)identifier
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AF20];
  identifierCopy = identifier;
  schemeCopy = scheme;
  v8 = objc_alloc_init(v5);
  [v8 setScheme:schemeCopy];

  [v8 setHost:@"asset"];
  v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"cloudIdentifier" value:identifierCopy];

  v13[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v8 setQueryItems:v10];

  v11 = [v8 URL];

  return v11;
}

@end