@interface PFStoryConcreteRecipeAsset
- (BOOL)isEqualToAsset:(id)asset;
- (NSString)diagnosticDescription;
- (PFStoryConcreteRecipeAsset)init;
- (PFStoryConcreteRecipeAsset)initWithIdentifier:(id)identifier kind:(int64_t)kind url:(id)url;
@end

@implementation PFStoryConcreteRecipeAsset

- (BOOL)isEqualToAsset:(id)asset
{
  assetCopy = asset;
  if (assetCopy == self)
  {
    v8 = 1;
  }

  else
  {
    kind = [(PFStoryConcreteRecipeAsset *)self kind];
    if (kind == [(PFStoryConcreteRecipeAsset *)assetCopy kind])
    {
      v6 = [(PFStoryConcreteRecipeAsset *)self url];
      v7 = [(PFStoryConcreteRecipeAsset *)assetCopy url];
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

- (PFStoryConcreteRecipeAsset)initWithIdentifier:(id)identifier kind:(int64_t)kind url:(id)url
{
  identifierCopy = identifier;
  urlCopy = url;
  v20.receiver = self;
  v20.super_class = PFStoryConcreteRecipeAsset;
  v10 = [(PFStoryConcreteRecipeAsset *)&v20 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
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
      uUIDString = [identifier UUIDString];
      v16 = v10->_identifier;
      v10->_identifier = uUIDString;
    }

    v10->_kind = kind;
    v17 = [urlCopy copy];
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