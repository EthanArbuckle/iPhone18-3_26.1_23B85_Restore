@interface PFStoryConcreteRecipeDisplayAsset
+ (BOOL)decomposeURL:(id)a3 usingBlock:(id)a4;
+ (id)URLWithScheme:(id)a3 cloudIdentifier:(id)a4;
- (BOOL)isEqualToAsset:(id)a3;
- (PFStoryConcreteRecipeDisplayAsset)initWithIdentifier:(id)a3 category:(int64_t)a4 scheme:(id)a5 cloudIdentifier:(id)a6;
- (PFStoryConcreteRecipeDisplayAsset)initWithIdentifier:(id)a3 kind:(int64_t)a4 url:(id)a5;
@end

@implementation PFStoryConcreteRecipeDisplayAsset

- (BOOL)isEqualToAsset:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PFStoryConcreteRecipeDisplayAsset;
  if (-[PFStoryConcreteRecipeAsset isEqualToAsset:](&v12, sel_isEqualToAsset_, v4) && (v5 = -[PFStoryConcreteRecipeDisplayAsset category](self, "category"), v5 == [v4 category]))
  {
    v6 = [(PFStoryConcreteRecipeDisplayAsset *)self scheme];
    v7 = [v4 scheme];
    if (v6 == v7 || [v6 isEqual:v7])
    {
      v8 = [(PFStoryConcreteRecipeDisplayAsset *)self cloudIdentifier];
      v9 = [v4 cloudIdentifier];
      if (v8 == v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = [v8 isEqual:v9];
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

- (PFStoryConcreteRecipeDisplayAsset)initWithIdentifier:(id)a3 kind:(int64_t)a4 url:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = _PFAssertFailHandler();
  return [(PFStoryConcreteRecipeDisplayAsset *)v8 initWithIdentifier:v9 category:v10 scheme:v11 cloudIdentifier:v12, v13];
}

- (PFStoryConcreteRecipeDisplayAsset)initWithIdentifier:(id)a3 category:(int64_t)a4 scheme:(id)a5 cloudIdentifier:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [PFStoryConcreteRecipeDisplayAsset URLWithScheme:v10 cloudIdentifier:v11];
  v20.receiver = self;
  v20.super_class = PFStoryConcreteRecipeDisplayAsset;
  v14 = [(PFStoryConcreteRecipeAsset *)&v20 initWithIdentifier:v12 kind:1 url:v13];

  if (v14)
  {
    v14->_category = a4;
    v15 = [v10 copy];
    scheme = v14->_scheme;
    v14->_scheme = v15;

    v17 = [v11 copy];
    cloudIdentifier = v14->_cloudIdentifier;
    v14->_cloudIdentifier = v17;
  }

  return v14;
}

+ (BOOL)decomposeURL:(id)a3 usingBlock:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v5 resolvingAgainstBaseURL:1];
  v8 = [v7 scheme];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = [v7 host];
  if (([v9 isEqualToString:@"asset"] & 1) == 0)
  {

    goto LABEL_16;
  }

  v10 = [v7 queryItems];
  v11 = [v10 count];

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
  v12 = [v7 queryItems];
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  v14 = v13 != 0;
  if (v13)
  {
    v15 = v13;
    v24 = v13 != 0;
    v25 = v8;
    v26 = v6;
    v27 = v5;
    v16 = 0;
    v17 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = [v19 name];
        v21 = [v20 isEqualToString:@"cloudIdentifier"];

        if (v21)
        {
          v22 = [v19 value];

          v16 = v22;
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);

    if (!v16)
    {
      v14 = 0;
      v6 = v26;
      v5 = v27;
      v8 = v25;
      goto LABEL_17;
    }

    v8 = v25;
    v6 = v26;
    (*(v26 + 2))(v26, v25, v16);
    v5 = v27;
    v14 = v24;
  }

  else
  {
    v16 = v12;
  }

LABEL_17:
  return v14;
}

+ (id)URLWithScheme:(id)a3 cloudIdentifier:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AF20];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setScheme:v7];

  [v8 setHost:@"asset"];
  v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"cloudIdentifier" value:v6];

  v13[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v8 setQueryItems:v10];

  v11 = [v8 URL];

  return v11;
}

@end