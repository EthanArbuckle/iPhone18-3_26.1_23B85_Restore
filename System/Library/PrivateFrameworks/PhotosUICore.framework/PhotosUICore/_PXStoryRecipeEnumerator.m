@interface _PXStoryRecipeEnumerator
- (BOOL)didEnumerateRecipeDisplayAsset:(id)a3 error:(id *)a4;
- (_PXStoryRecipeEnumerator)initWithBatchSize:(unint64_t)a3 photoLibrary:(id)a4 scheme:(id)a5 block:(id)a6;
- (void)_flush;
@end

@implementation _PXStoryRecipeEnumerator

- (void)_flush
{
  [(NSMutableDictionary *)self->_identifierMap allKeys];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

- (BOOL)didEnumerateRecipeDisplayAsset:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!a4)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PFStoryRecipe+PXStory+PhotoKit.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  v8 = [v7 scheme];
  v9 = [v8 isEqualToString:self->_scheme];

  if (v9)
  {
    identifierMap = self->_identifierMap;
    v11 = [v7 cloudIdentifier];
    [(NSMutableDictionary *)identifierMap setObject:v7 forKeyedSubscript:v11];

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
    *a4 = [v12 errorWithDomain:@"PXStoryErrorDomain" code:1 userInfo:v13];
  }

  return v9;
}

- (_PXStoryRecipeEnumerator)initWithBatchSize:(unint64_t)a3 photoLibrary:(id)a4 scheme:(id)a5 block:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PFStoryRecipe+PXStory+PhotoKit.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PFStoryRecipe+PXStory+PhotoKit.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];

    goto LABEL_3;
  }

  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v26.receiver = self;
  v26.super_class = _PXStoryRecipeEnumerator;
  v14 = [(_PXStoryRecipeEnumerator *)&v26 init];
  photoLibrary = v14->_photoLibrary;
  v14->_batchSize = a3;
  v14->_photoLibrary = v11;
  v16 = v11;

  v17 = [v12 copy];
  scheme = v14->_scheme;
  v14->_scheme = v17;

  v19 = _Block_copy(v13);
  block = v14->_block;
  v14->_block = v19;

  v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3];
  identifierMap = v14->_identifierMap;
  v14->_identifierMap = v21;

  return v14;
}

@end