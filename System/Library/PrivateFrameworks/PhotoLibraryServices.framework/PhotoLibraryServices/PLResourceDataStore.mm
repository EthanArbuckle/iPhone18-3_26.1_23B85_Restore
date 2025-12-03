@interface PLResourceDataStore
+ (BOOL)keyDataIsValid:(id)valid;
+ (id)supportedRecipes;
+ (unsigned)keyLengthWithDataPreview:(unsigned __int8)preview;
+ (unsigned)storeClassID;
- (BOOL)canStoreExternalResource:(id)resource;
- (BOOL)storeExternalResource:(id)resource forAsset:(id)asset options:(id)options error:(id *)error resultingResource:(id *)resultingResource;
- (BOOL)videoResource:(id)resource matchesOrExceedsQualityLevel:(unsigned int)level;
- (PLResourceDataStore)initWithPathManager:(id)manager;
- (id)expectedFileURLForResource:(id)resource asset:(id)asset;
- (id)guessUTIForExternalResource:(id)resource forAssetKind:(signed __int16)kind;
- (id)keyFromKeyStruct:(const void *)struct;
- (id)name;
- (id)requestLocalAvailabilityChange:(signed __int16)change forResource:(id)resource options:(id)options completion:(id)completion;
- (id)resourceDataForKey:(id)key assetID:(id)d;
- (id)resourceURLForKey:(id)key assetID:(id)d;
- (id)updateDerivativeResourcesForAsset:(id)asset forLifecycleEvent:(unsigned int)event;
- (id)virtualResourcesForAsset:(id)asset options:(unsigned __int16)options;
- (void)requestStreamingURLForResource:(id)resource asset:(id)asset intent:(unint64_t)intent timeRange:(id *)range streamingHints:(id)hints inContext:(id)context clientBundleID:(id)d completion:(id)self0;
@end

@implementation PLResourceDataStore

- (id)guessUTIForExternalResource:(id)resource forAssetKind:(signed __int16)kind
{
  resourceCopy = resource;
  [resourceCopy resourceType];
  fileURL = [resourceCopy fileURL];

  path = [fileURL path];
  v7 = PLGuessResourceUTIForResourceType();

  v8 = [PLUniformTypeIdentifier utiWithIdentifier:v7];

  return v8;
}

- (void)requestStreamingURLForResource:(id)resource asset:(id)asset intent:(unint64_t)intent timeRange:(id *)range streamingHints:(id)hints inContext:(id)context clientBundleID:(id)d completion:(id)self0
{
  if (completion)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E69BFF70];
    completionCopy = completion;
    v13 = [v10 errorWithDomain:v11 code:8 userInfo:0];
    (*(completion + 2))(completionCopy, 0, 0, 0, 0, v13);
  }
}

- (BOOL)videoResource:(id)resource matchesOrExceedsQualityLevel:(unsigned int)level
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:153 description:@"Subclass to implement"];

  return 0;
}

- (id)requestLocalAvailabilityChange:(signed __int16)change forResource:(id)resource options:(id)options completion:(id)completion
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:144 description:@"Subclass to implement"];

  return 0;
}

- (BOOL)storeExternalResource:(id)resource forAsset:(id)asset options:(id)options error:(id *)error resultingResource:(id *)resultingResource
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:139 description:@"Subclass to implement"];

  return 0;
}

- (BOOL)canStoreExternalResource:(id)resource
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:134 description:@"Subclass to implement"];

  return 0;
}

- (id)updateDerivativeResourcesForAsset:(id)asset forLifecycleEvent:(unsigned int)event
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:129 description:@"Subclass to implement"];

  return 0;
}

- (id)virtualResourcesForAsset:(id)asset options:(unsigned __int16)options
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:124 description:@"Subclass to implement"];

  return 0;
}

- (id)expectedFileURLForResource:(id)resource asset:(id)asset
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:114 description:@"Subclass to implement"];

  return 0;
}

- (id)resourceURLForKey:(id)key assetID:(id)d
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:109 description:@"Subclass to implement"];

  return 0;
}

- (id)resourceDataForKey:(id)key assetID:(id)d
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:104 description:@"Subclass to implement"];

  return 0;
}

- (id)keyFromKeyStruct:(const void *)struct
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:99 description:@"Subclass to implement"];

  return 0;
}

- (id)name
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:72 description:@"Subclass to implement"];

  return 0;
}

- (PLResourceDataStore)initWithPathManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = PLResourceDataStore;
  v7 = [(PLResourceDataStore *)&v10 init];
  if (v7)
  {
    if (!managerCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PLResourceDataStore.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
    }

    objc_storeStrong(&v7->_pathManager, manager);
  }

  return v7;
}

+ (id)supportedRecipes
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:119 description:@"Subclass to implement"];

  return 0;
}

+ (BOOL)keyDataIsValid:(id)valid
{
  validCopy = valid;
  v5 = [validCopy length];
  if (v5)
  {
    v6 = v5 == [self keyLengthWithDataPreview:{*objc_msgSend(validCopy, "bytes")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unsigned)keyLengthWithDataPreview:(unsigned __int8)preview
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:81 description:@"Subclass to implement"];

  return 0;
}

+ (unsigned)storeClassID
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStore.m" lineNumber:58 description:@"Subclass to implement"];

  return 0;
}

@end