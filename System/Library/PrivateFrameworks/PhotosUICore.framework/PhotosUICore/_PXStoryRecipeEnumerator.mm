@interface _PXStoryRecipeEnumerator
- (BOOL)didEnumerateRecipeDisplayAsset:(id)asset error:(id *)error;
- (_PXStoryRecipeEnumerator)initWithBatchSize:(unint64_t)size photoLibrary:(id)library scheme:(id)scheme block:(id)block;
- (void)_flush;
@end

@implementation _PXStoryRecipeEnumerator

- (void)_flush
{
  [(NSMutableDictionary *)self->_identifierMap allKeys];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

- (BOOL)didEnumerateRecipeDisplayAsset:(id)asset error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!error)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PFStoryRecipe+PXStory+PhotoKit.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  scheme = [assetCopy scheme];
  v9 = [scheme isEqualToString:self->_scheme];

  if (v9)
  {
    identifierMap = self->_identifierMap;
    cloudIdentifier = [assetCopy cloudIdentifier];
    [(NSMutableDictionary *)identifierMap setObject:assetCopy forKeyedSubscript:cloudIdentifier];

    if ([(NSMutableDictionary *)self->_identifierMap count]>= self->_batchSize)
    {
      [(_PXStoryRecipeEnumerator *)self _flush];
    }
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"Recipe asset doesn't refer to a PhotoKit Asset";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = [v12 errorWithDomain:@"PXStoryErrorDomain" code:1 userInfo:v13];
  }

  return v9;
}

- (_PXStoryRecipeEnumerator)initWithBatchSize:(unint64_t)size photoLibrary:(id)library scheme:(id)scheme block:(id)block
{
  libraryCopy = library;
  schemeCopy = scheme;
  blockCopy = block;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PFStoryRecipe+PXStory+PhotoKit.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary != nil"}];

    if (schemeCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PFStoryRecipe+PXStory+PhotoKit.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];

    goto LABEL_3;
  }

  if (!schemeCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v26.receiver = self;
  v26.super_class = _PXStoryRecipeEnumerator;
  v14 = [(_PXStoryRecipeEnumerator *)&v26 init];
  photoLibrary = v14->_photoLibrary;
  v14->_batchSize = size;
  v14->_photoLibrary = libraryCopy;
  v16 = libraryCopy;

  v17 = [schemeCopy copy];
  scheme = v14->_scheme;
  v14->_scheme = v17;

  v19 = _Block_copy(blockCopy);
  block = v14->_block;
  v14->_block = v19;

  v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:size];
  identifierMap = v14->_identifierMap;
  v14->_identifierMap = v21;

  return v14;
}

@end