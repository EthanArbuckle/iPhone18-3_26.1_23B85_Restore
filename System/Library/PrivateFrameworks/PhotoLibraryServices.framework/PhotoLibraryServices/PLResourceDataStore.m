@interface PLResourceDataStore
+ (BOOL)keyDataIsValid:(id)a3;
+ (id)supportedRecipes;
+ (unsigned)keyLengthWithDataPreview:(unsigned __int8)a3;
+ (unsigned)storeClassID;
- (BOOL)canStoreExternalResource:(id)a3;
- (BOOL)storeExternalResource:(id)a3 forAsset:(id)a4 options:(id)a5 error:(id *)a6 resultingResource:(id *)a7;
- (BOOL)videoResource:(id)a3 matchesOrExceedsQualityLevel:(unsigned int)a4;
- (PLResourceDataStore)initWithPathManager:(id)a3;
- (id)expectedFileURLForResource:(id)a3 asset:(id)a4;
- (id)guessUTIForExternalResource:(id)a3 forAssetKind:(signed __int16)a4;
- (id)keyFromKeyStruct:(const void *)a3;
- (id)name;
- (id)requestLocalAvailabilityChange:(signed __int16)a3 forResource:(id)a4 options:(id)a5 completion:(id)a6;
- (id)resourceDataForKey:(id)a3 assetID:(id)a4;
- (id)resourceURLForKey:(id)a3 assetID:(id)a4;
- (id)updateDerivativeResourcesForAsset:(id)a3 forLifecycleEvent:(unsigned int)a4;
- (id)virtualResourcesForAsset:(id)a3 options:(unsigned __int16)a4;
- (void)requestStreamingURLForResource:(id)a3 asset:(id)a4 intent:(unint64_t)a5 timeRange:(id *)a6 streamingHints:(id)a7 inContext:(id)a8 clientBundleID:(id)a9 completion:(id)a10;
@end

@implementation PLResourceDataStore

- (id)guessUTIForExternalResource:(id)a3 forAssetKind:(signed __int16)a4
{
  v4 = a3;
  [v4 resourceType];
  v5 = [v4 fileURL];

  v6 = [v5 path];
  v7 = PLGuessResourceUTIForResourceType();

  v8 = [PLUniformTypeIdentifier utiWithIdentifier:v7];

  return v8;
}

- (void)requestStreamingURLForResource:(id)a3 asset:(id)a4 intent:(unint64_t)a5 timeRange:(id *)a6 streamingHints:(id)a7 inContext:(id)a8 clientBundleID:(id)a9 completion:(id)a10
{
  if (a10)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E69BFF70];
    v12 = a10;
    v13 = [v10 errorWithDomain:v11 code:8 userInfo:0];
    (*(a10 + 2))(v12, 0, 0, 0, 0, v13);
  }
}

- (BOOL)videoResource:(id)a3 matchesOrExceedsQualityLevel:(unsigned int)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:153 description:@"Subclass to implement"];

  return 0;
}

- (id)requestLocalAvailabilityChange:(signed __int16)a3 forResource:(id)a4 options:(id)a5 completion:(id)a6
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:144 description:@"Subclass to implement"];

  return 0;
}

- (BOOL)storeExternalResource:(id)a3 forAsset:(id)a4 options:(id)a5 error:(id *)a6 resultingResource:(id *)a7
{
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:139 description:@"Subclass to implement"];

  return 0;
}

- (BOOL)canStoreExternalResource:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:134 description:@"Subclass to implement"];

  return 0;
}

- (id)updateDerivativeResourcesForAsset:(id)a3 forLifecycleEvent:(unsigned int)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:129 description:@"Subclass to implement"];

  return 0;
}

- (id)virtualResourcesForAsset:(id)a3 options:(unsigned __int16)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:124 description:@"Subclass to implement"];

  return 0;
}

- (id)expectedFileURLForResource:(id)a3 asset:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:114 description:@"Subclass to implement"];

  return 0;
}

- (id)resourceURLForKey:(id)a3 assetID:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:109 description:@"Subclass to implement"];

  return 0;
}

- (id)resourceDataForKey:(id)a3 assetID:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:104 description:@"Subclass to implement"];

  return 0;
}

- (id)keyFromKeyStruct:(const void *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:99 description:@"Subclass to implement"];

  return 0;
}

- (id)name
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:72 description:@"Subclass to implement"];

  return 0;
}

- (PLResourceDataStore)initWithPathManager:(id)a3
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PLResourceDataStore;
  v7 = [(PLResourceDataStore *)&v10 init];
  if (v7)
  {
    if (!v6)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:v7 file:@"PLResourceDataStore.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
    }

    objc_storeStrong(&v7->_pathManager, a3);
  }

  return v7;
}

+ (id)supportedRecipes
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PLResourceDataStore.m" lineNumber:119 description:@"Subclass to implement"];

  return 0;
}

+ (BOOL)keyDataIsValid:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5 == [a1 keyLengthWithDataPreview:{*objc_msgSend(v4, "bytes")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unsigned)keyLengthWithDataPreview:(unsigned __int8)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:a1 file:@"PLResourceDataStore.m" lineNumber:81 description:@"Subclass to implement"];

  return 0;
}

+ (unsigned)storeClassID
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PLResourceDataStore.m" lineNumber:58 description:@"Subclass to implement"];

  return 0;
}

@end