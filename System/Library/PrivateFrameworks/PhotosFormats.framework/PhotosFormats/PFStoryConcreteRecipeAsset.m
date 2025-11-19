@interface PFStoryConcreteRecipeAsset
- (BOOL)isEqualToAsset:(id)a3;
- (NSString)diagnosticDescription;
- (PFStoryConcreteRecipeAsset)init;
- (PFStoryConcreteRecipeAsset)initWithIdentifier:(id)a3 kind:(int64_t)a4 url:(id)a5;
@end

@implementation PFStoryConcreteRecipeAsset

- (BOOL)isEqualToAsset:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = [(PFStoryConcreteRecipeAsset *)self kind];
    if (v5 == [(PFStoryConcreteRecipeAsset *)v4 kind])
    {
      v6 = [(PFStoryConcreteRecipeAsset *)self url];
      v7 = [(PFStoryConcreteRecipeAsset *)v4 url];
      if (v6 == v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqual:v7];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc_init(PFStoryRecipeArchiver);
  v4 = [(PFStoryRecipeArchiver *)v3 archivedJSONObjectWithAsset:self];
  v5 = [v4 description];

  return v5;
}

- (PFStoryConcreteRecipeAsset)initWithIdentifier:(id)a3 kind:(int64_t)a4 url:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = PFStoryConcreteRecipeAsset;
  v10 = [(PFStoryConcreteRecipeAsset *)&v20 init];
  if (v10)
  {
    v11 = [v8 copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
      identifier = v10->_identifier;
      v10->_identifier = v13;
    }

    else
    {
      identifier = [MEMORY[0x1E696AFB0] UUID];
      v15 = [identifier UUIDString];
      v16 = v10->_identifier;
      v10->_identifier = v15;
    }

    v10->_kind = a4;
    v17 = [v9 copy];
    url = v10->_url;
    v10->_url = v17;
  }

  return v10;
}

- (PFStoryConcreteRecipeAsset)init
{
  v2 = _PFAssertFailHandler();
  [(PFClientSideEncryptionManager *)v2 .cxx_destruct];
  return result;
}

@end