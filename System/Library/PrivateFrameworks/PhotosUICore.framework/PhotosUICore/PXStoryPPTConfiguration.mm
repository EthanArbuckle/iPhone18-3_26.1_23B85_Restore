@interface PXStoryPPTConfiguration
+ (id)configurationsForPreset:(unint64_t)preset subpreset:(unint64_t)subpreset testOptions:(id)options;
+ (void)_configureConfiguration:(id)configuration forSubpreset:(unint64_t)subpreset;
+ (void)_fetchLatestMemoriesWithMaximumCount:(int64_t)count resultHandler:(id)handler;
+ (void)_requestPhotoLibraryWithResultHandler:(id)handler;
- (NSString)name;
- (PXStoryPPTConfiguration)init;
- (PXStoryPPTConfiguration)initWithAssetCollection:(id)collection name:(id)name;
- (PXStoryPPTConfiguration)initWithAssetType:(unint64_t)type count:(unint64_t)count;
- (PXStoryPPTConfiguration)initWithDefaultMemory;
- (PXStoryPPTConfiguration)initWithLatestCollectionOfType:(int64_t)type;
- (PXStoryPPTConfiguration)initWithPreset:(unint64_t)preset;
- (id)_stringFromAssetCount:(unint64_t)count;
- (id)_stringFromAssetType:(unint64_t)type;
- (void)_completeConfigurationRequestWithAssetCollection:(id)collection resultHandler:(id)handler;
- (void)_completeConfigurationRequestWithFetchResult:(id)result resultHandler:(id)handler;
- (void)_completeConfigurationRequestWithStoryConfiguration:(id)configuration resultHandler:(id)handler;
- (void)_configureWithMemoryFetchResultProvider:(id)provider resultHandler:(id)handler;
- (void)_createSyntheticAssetsWithResultHandler:(id)handler;
- (void)_fetchAssetsWithResultHandler:(id)handler;
- (void)_fetchDefaultMemoryWithResultHandler:(id)handler;
- (void)_fetchLatestAssetCollectionOfType:(int64_t)type resultHandler:(id)handler;
- (void)_fetchMemoryByLocalIdentifier:(id)identifier resultHandler:(id)handler;
- (void)_fetchMemoryByName:(id)name resultHandler:(id)handler;
- (void)_performPhotoLibraryFetch:(id)fetch;
- (void)requestStoryConfigurationWithOptions:(id)options resultHandler:(id)handler;
@end

@implementation PXStoryPPTConfiguration

- (PXStoryPPTConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPPTConfiguration.m" lineNumber:406 description:{@"%s is not available as initializer", "-[PXStoryPPTConfiguration init]"}];

  abort();
}

- (id)_stringFromAssetType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7747608[type - 1];
  }
}

- (id)_stringFromAssetCount:(unint64_t)count
{
  if (count < 0x3E8)
  {
    0x3E8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", count];
  }

  else
  {
    0x3E8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%luk", count / 0x3E8];
  }

  return 0x3E8;
}

- (void)_performPhotoLibraryFetch:(id)fetch
{
  fetchCopy = fetch;
  v4 = objc_opt_class();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PXStoryPPTConfiguration__performPhotoLibraryFetch___block_invoke;
  v6[3] = &unk_1E77475E8;
  v7 = fetchCopy;
  v5 = fetchCopy;
  [v4 _requestPhotoLibraryWithResultHandler:v6];
}

void __53__PXStoryPPTConfiguration__performPhotoLibraryFetch___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 librarySpecificFetchOptions];
  (*(*(a1 + 32) + 16))();
}

- (void)_completeConfigurationRequestWithStoryConfiguration:(id)configuration resultHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([(PXStoryPPTConfiguration *)self assetType]== 1)
  {
    v8 = objc_alloc_init(off_1E7721900);
    [configurationCopy setMediaProvider:v8];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__PXStoryPPTConfiguration__completeConfigurationRequestWithStoryConfiguration_resultHandler___block_invoke;
  v11[3] = &unk_1E774C2F0;
  v12 = configurationCopy;
  v13 = handlerCopy;
  v9 = configurationCopy;
  v10 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

- (void)_completeConfigurationRequestWithFetchResult:(id)result resultHandler:(id)handler
{
  handlerCopy = handler;
  resultCopy = result;
  v8 = [[PXStoryConfiguration alloc] initWithAssets:resultCopy];

  [(PXStoryPPTConfiguration *)self _completeConfigurationRequestWithStoryConfiguration:v8 resultHandler:handlerCopy];
}

- (void)_completeConfigurationRequestWithAssetCollection:(id)collection resultHandler:(id)handler
{
  collectionCopy = collection;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (collectionCopy)
  {
    v9 = [[PXStoryConfiguration alloc] initWithAssetCollection:collectionCopy];
    [(PXStoryPPTConfiguration *)self _completeConfigurationRequestWithStoryConfiguration:v9 resultHandler:v8];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__PXStoryPPTConfiguration__completeConfigurationRequestWithAssetCollection_resultHandler___block_invoke;
    block[3] = &unk_1E774C250;
    v11 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_createSyntheticAssetsWithResultHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PXStoryPPTConfiguration *)self assetCount])
  {
    v6 = 0;
    do
    {
      v7 = [off_1E77218F8 alloc];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __67__PXStoryPPTConfiguration__createSyntheticAssetsWithResultHandler___block_invoke;
      v9[3] = &__block_descriptor_40_e35_v16__0___PXMutableSyntheticAsset__8l;
      v9[4] = v6;
      v8 = [v7 initWithConfiguration:v9];
      [v5 addObject:v8];

      ++v6;
    }

    while (v6 < [(PXStoryPPTConfiguration *)self assetCount]);
  }

  PXDisplayAssetFetchResultFromArray();
}

void __67__PXStoryPPTConfiguration__createSyntheticAssetsWithResultHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    [MEMORY[0x1E69DC888] orangeColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] purpleColor];
  }
  v3 = ;
  [v5 setTintColor:v3];

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"A%li", *(a1 + 32)];
  [v5 setLabel:v4];
}

- (void)_fetchAssetsWithResultHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__222689;
  v9[4] = __Block_byref_object_dispose__222690;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PXStoryPPTConfiguration__fetchAssetsWithResultHandler___block_invoke;
  v6[3] = &unk_1E7747578;
  v6[4] = self;
  v8 = v9;
  v5 = handlerCopy;
  v7 = v5;
  [(PXStoryPPTConfiguration *)self _performPhotoLibraryFetch:v6];

  _Block_object_dispose(v9, 8);
}

uint64_t __57__PXStoryPPTConfiguration__fetchAssetsWithResultHandler___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setFetchLimit:{objc_msgSend(v3, "assetCount")}];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v17[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v4 setSortDescriptors:v6];

  if ([*(a1 + 32) assetType] == 2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  v8 = MEMORY[0x1E696AE18];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v16 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v11 = [v8 predicateWithFormat:@"playbackStyle IN %@", v10];
  [v4 setPredicate:v11];

  v12 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v4];

  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  return [*(a1 + 32) _completeConfigurationRequestWithFetchResult:*(*(*(a1 + 48) + 8) + 40) resultHandler:*(a1 + 40)];
}

- (void)_fetchLatestAssetCollectionOfType:(int64_t)type resultHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (type == 4)
  {
    v8 = objc_opt_class();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__PXStoryPPTConfiguration__fetchLatestAssetCollectionOfType_resultHandler___block_invoke;
    v12[3] = &unk_1E7747500;
    v12[4] = self;
    v9 = &v13;
    v13 = v7;
    [v8 _fetchLatestMemoriesWithMaximumCount:1 resultHandler:v12];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__PXStoryPPTConfiguration__fetchLatestAssetCollectionOfType_resultHandler___block_invoke_2;
    v10[3] = &unk_1E7747528;
    v11[1] = type;
    v10[4] = self;
    v9 = v11;
    v11[0] = handlerCopy;
    [(PXStoryPPTConfiguration *)self _performPhotoLibraryFetch:v10];
  }
}

void __75__PXStoryPPTConfiguration__fetchLatestAssetCollectionOfType_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  [*(a1 + 32) _completeConfigurationRequestWithAssetCollection:v3 resultHandler:*(a1 + 40)];
}

void __75__PXStoryPPTConfiguration__fetchLatestAssetCollectionOfType_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:0];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v3 setSortDescriptors:v5];
  }

  [v3 setFetchLimit:1];
  v6 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:*(a1 + 48) subtype:0x7FFFFFFFFFFFFFFFLL options:v3];
  v7 = [v6 firstObject];
  [*(a1 + 32) _completeConfigurationRequestWithAssetCollection:v7 resultHandler:*(a1 + 40)];
}

- (void)_configureWithMemoryFetchResultProvider:(id)provider resultHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__PXStoryPPTConfiguration__configureWithMemoryFetchResultProvider_resultHandler___block_invoke;
  v11[3] = &unk_1E77474D8;
  v11[4] = self;
  v12 = providerCopy;
  v13 = handlerCopy;
  v14 = a2;
  v9 = handlerCopy;
  v10 = providerCopy;
  [(PXStoryPPTConfiguration *)self _performPhotoLibraryFetch:v11];
}

void __81__PXStoryPPTConfiguration__configureWithMemoryFetchResultProvider_resultHandler___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  [v3 setIncludePendingMemories:1];
  [v3 setIncludeRejectedMemories:1];
  [v3 setIncludeLocalMemories:1];
  [v3 setIncludeStoryMemories:1];
  v11 = (*(a1[5] + 16))();

  v4 = [v11 firstObject];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = a1[7];
      v7 = a1[4];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v4 px_descriptionForAssertionMessage];
      [v5 handleFailureInMethod:v6 object:v7 file:@"PXStoryPPTConfiguration.m" lineNumber:261 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"fetchResult.firstObject", v9, v10}];
    }
  }

  [a1[4] _completeConfigurationRequestWithAssetCollection:v4 resultHandler:a1[6]];
}

- (void)_fetchMemoryByName:(id)name resultHandler:(id)handler
{
  nameCopy = name;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__PXStoryPPTConfiguration__fetchMemoryByName_resultHandler___block_invoke;
  v8[3] = &unk_1E77474B0;
  v9 = nameCopy;
  v7 = nameCopy;
  [(PXStoryPPTConfiguration *)self _configureWithMemoryFetchResultProvider:v8 resultHandler:handler];
}

id __60__PXStoryPPTConfiguration__fetchMemoryByName_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"title == %@", *(a1 + 32)];
  v5 = [v3 predicate];

  if (v5)
  {
    v6 = MEMORY[0x1E696AB28];
    v7 = [v3 predicate];
    v12[0] = v7;
    v12[1] = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v6 andPredicateWithSubpredicates:v8];
    [v3 setPredicate:v9];
  }

  else
  {
    [v3 setPredicate:v4];
  }

  v10 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v3];

  return v10;
}

- (void)_fetchMemoryByLocalIdentifier:(id)identifier resultHandler:(id)handler
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__PXStoryPPTConfiguration__fetchMemoryByLocalIdentifier_resultHandler___block_invoke;
  v8[3] = &unk_1E77474B0;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [(PXStoryPPTConfiguration *)self _configureWithMemoryFetchResultProvider:v8 resultHandler:handler];
}

id __71__PXStoryPPTConfiguration__fetchMemoryByLocalIdentifier_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6978650];
  v8 = *(a1 + 32);
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [v2 fetchAssetCollectionsWithType:4 localIdentifiers:v5 options:{v4, v8, v9}];

  return v6;
}

- (void)_fetchDefaultMemoryWithResultHandler:(id)handler
{
  handlerCopy = handler;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"PXStoryPPTDefaultMemoryLocalIdentifier"];
  v7 = [standardUserDefaults objectForKey:@"PXStoryPPTDefaultMemoryName"];
  v8 = v7;
  if (v6)
  {
    [(PXStoryPPTConfiguration *)self _fetchMemoryByLocalIdentifier:v6 resultHandler:handlerCopy];
  }

  else
  {
    if (!v7)
    {
      PXAssertGetLog();
    }

    [(PXStoryPPTConfiguration *)self _fetchMemoryByName:v7 resultHandler:handlerCopy];
  }
}

- (void)requestStoryConfigurationWithOptions:(id)options resultHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v9 = [optionsCopy objectForKeyedSubscript:@"storyDuration"];
  [v9 doubleValue];
  v11 = v10;

  if (v11 > 0.0)
  {
    self->_assetCount = vcvtmd_u64_f64(v11);
    [(PXStoryPPTConfiguration *)self setPreferredStoryDuration:v11];
  }

  subpreset = [(PXStoryPPTConfiguration *)self subpreset];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __78__PXStoryPPTConfiguration_requestStoryConfigurationWithOptions_resultHandler___block_invoke;
  v21 = &unk_1E7747488;
  v23 = subpreset;
  v13 = handlerCopy;
  v22 = v13;
  v14 = _Block_copy(&v18);
  v15 = [(PXStoryPPTConfiguration *)self assetCollection:v18];
  if (v15)
  {
    [(PXStoryPPTConfiguration *)self _completeConfigurationRequestWithAssetCollection:v15 resultHandler:v14];
  }

  else if ([(PXStoryPPTConfiguration *)self collectionType]== 1 || [(PXStoryPPTConfiguration *)self collectionType]== 4)
  {
    [(PXStoryPPTConfiguration *)self _fetchLatestAssetCollectionOfType:[(PXStoryPPTConfiguration *)self collectionType] resultHandler:v14];
  }

  else if ([(PXStoryPPTConfiguration *)self useDefaultMemory])
  {
    [(PXStoryPPTConfiguration *)self _fetchDefaultMemoryWithResultHandler:v14];
  }

  else
  {
    assetType = [(PXStoryPPTConfiguration *)self assetType];
    if (assetType - 2 < 2)
    {
      [(PXStoryPPTConfiguration *)self _fetchAssetsWithResultHandler:v14];
    }

    else if (assetType == 1)
    {
      [(PXStoryPPTConfiguration *)self _createSyntheticAssetsWithResultHandler:v14];
    }

    else if (!assetType)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPPTConfiguration.m" lineNumber:199 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }
}

void __78__PXStoryPPTConfiguration_requestStoryConfigurationWithOptions_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [PXStoryPPTConfiguration _configureConfiguration:v4 forSubpreset:v3];
  (*(*(a1 + 32) + 16))();
}

- (NSString)name
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  contentDescription = [(PXStoryPPTConfiguration *)self contentDescription];
  [v3 addObject:contentDescription];

  subpreset = [(PXStoryPPTConfiguration *)self subpreset];
  if (subpreset)
  {
    if (subpreset > 3)
    {
      v6 = @"??";
    }

    else
    {
      v6 = off_1E7733B98[subpreset];
    }

    v7 = v6;
    v8 = [(__CFString *)v7 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    [v3 addObject:v8];
  }

  v9 = [v3 componentsJoinedByString:@"-"];

  return v9;
}

- (PXStoryPPTConfiguration)initWithAssetType:(unint64_t)type count:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = PXStoryPPTConfiguration;
  v6 = [(PXStoryPPTConfiguration *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_assetType = type;
    v6->_assetCount = count;
    v8 = [(PXStoryPPTConfiguration *)v6 _stringFromAssetCount:count];
    v9 = [(PXStoryPPTConfiguration *)v7 _stringFromAssetType:type];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@", v8, v9];
    contentDescription = v7->_contentDescription;
    v7->_contentDescription = v10;
  }

  return v7;
}

- (PXStoryPPTConfiguration)initWithAssetCollection:(id)collection name:(id)name
{
  collectionCopy = collection;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = PXStoryPPTConfiguration;
  v9 = [(PXStoryPPTConfiguration *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetCollection, collection);
    v11 = [nameCopy copy];
    contentDescription = v10->_contentDescription;
    v10->_contentDescription = v11;
  }

  return v10;
}

- (PXStoryPPTConfiguration)initWithDefaultMemory
{
  v6.receiver = self;
  v6.super_class = PXStoryPPTConfiguration;
  v2 = [(PXStoryPPTConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    contentDescription = v2->_contentDescription;
    v2->_contentDescription = @"DefaultMemory";

    v3->_useDefaultMemory = 1;
  }

  return v3;
}

- (PXStoryPPTConfiguration)initWithLatestCollectionOfType:(int64_t)type
{
  v11.receiver = self;
  v11.super_class = PXStoryPPTConfiguration;
  v5 = [(PXStoryPPTConfiguration *)&v11 init];
  v6 = v5;
  if (v5)
  {
    if (type == 4)
    {
      v7 = @"LatestMemory";
    }

    else
    {
      if (type != 1)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v6 file:@"PXStoryPPTConfiguration.m" lineNumber:114 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v7 = @"LatestAlbum";
    }

    contentDescription = v5->_contentDescription;
    v5->_contentDescription = &v7->isa;

    v6->_collectionType = type;
  }

  return v6;
}

- (PXStoryPPTConfiguration)initWithPreset:(unint64_t)preset
{
  if (preset <= 4)
  {
    if (preset > 2)
    {
      if (preset != 3)
      {
        v3 = 3;
LABEL_13:
        initWithDefaultMemory = [(PXStoryPPTConfiguration *)self initWithAssetType:v3 count:1000];
        goto LABEL_16;
      }

      v5 = 1;
LABEL_15:
      initWithDefaultMemory = [(PXStoryPPTConfiguration *)self initWithLatestCollectionOfType:v5];
      goto LABEL_16;
    }

    if (preset == 2)
    {
      v5 = 4;
      goto LABEL_15;
    }

    if (preset < 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = currentHandler;
      v12 = a2;
      selfCopy2 = self;
      v14 = 86;
      goto LABEL_20;
    }

LABEL_19:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = currentHandler;
    v12 = a2;
    selfCopy2 = self;
    v14 = 100;
LABEL_20:
    [currentHandler handleFailureInMethod:v12 object:selfCopy2 file:@"PXStoryPPTConfiguration.m" lineNumber:v14 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (preset == 5)
  {
    v3 = 2;
    goto LABEL_13;
  }

  if (preset == 6)
  {
    v3 = 1;
    goto LABEL_13;
  }

  if (preset != 7)
  {
    goto LABEL_19;
  }

  initWithDefaultMemory = [(PXStoryPPTConfiguration *)self initWithDefaultMemory];
LABEL_16:
  v6 = initWithDefaultMemory;

  return v6;
}

+ (void)_requestPhotoLibraryWithResultHandler:(id)handler
{
  handlerCopy = handler;
  v6 = MEMORY[0x1E69789A8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PXStoryPPTConfiguration__requestPhotoLibraryWithResultHandler___block_invoke;
  v8[3] = &unk_1E77475C0;
  v10 = a2;
  selfCopy = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v6 requestAuthorizationForAccessLevel:2 handler:v8];
}

void __65__PXStoryPPTConfiguration__requestPhotoLibraryWithResultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != 3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"PXStoryPPTConfiguration.m" lineNumber:367 description:@"No photo library access"];
  }

  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  *(a1 + 32);
  v4 = v3;
  px_dispatch_on_main_queue();
}

+ (void)_fetchLatestMemoriesWithMaximumCount:(int64_t)count resultHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PXStoryPPTConfiguration__fetchLatestMemoriesWithMaximumCount_resultHandler___block_invoke;
  v9[3] = &unk_1E7747550;
  v12 = a2;
  selfCopy = self;
  v10 = handlerCopy;
  countCopy = count;
  v8 = handlerCopy;
  [self _requestPhotoLibraryWithResultHandler:v9];
}

void __78__PXStoryPPTConfiguration__fetchLatestMemoriesWithMaximumCount_resultHandler___block_invoke(void *a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v32 = a2;
  v3 = [[PXMemoriesFeedDataSourceManager alloc] initWithPhotoLibrary:v32];
  [(PXMemoriesFeedDataSourceManager *)v3 startGeneratingMemories];
  v31 = v3;
  v4 = [(PXSectionedDataSourceManager *)v3 dataSource];
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  if (a1[5] <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a1[5];
  }

  v7 = [v5 initWithCapacity:v6];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v30 = v4;
  obj = [v4 entries];
  v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v35)
  {
    v34 = *v42;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v8;
        v9 = *(*(&v41 + 1) + 8 * v8);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v10 = [v9 memories];
        v11 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v38;
          do
          {
            v14 = 0;
            do
            {
              if (*v38 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v37 + 1) + 8 * v14) assetCollection];
              if (v15)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  goto LABEL_16;
                }

                v18 = [MEMORY[0x1E696AAA8] currentHandler];
                v27 = a1[7];
                v29 = a1[6];
                v21 = objc_opt_class();
                v20 = NSStringFromClass(v21);
                v25 = [v15 px_descriptionForAssertionMessage];
                [v18 handleFailureInMethod:v29 object:v27 file:@"PXStoryPPTConfiguration.m" lineNumber:297 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"memoryInfo.assetCollection", v20, v25}];
              }

              else
              {
                v18 = [MEMORY[0x1E696AAA8] currentHandler];
                v26 = a1[7];
                v28 = a1[6];
                v19 = objc_opt_class();
                v20 = NSStringFromClass(v19);
                [v18 handleFailureInMethod:v28 object:v26 file:@"PXStoryPPTConfiguration.m" lineNumber:297 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"memoryInfo.assetCollection", v20}];
              }

LABEL_16:
              [v7 addObject:v15];
              v16 = [v7 count];
              v17 = a1[5];

              if (v16 >= v17)
              {
                goto LABEL_23;
              }

              ++v14;
            }

            while (v12 != v14);
            v22 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
            v12 = v22;
          }

          while (v22);
        }

LABEL_23:

        if ([v7 count] >= a1[5])
        {
          goto LABEL_26;
        }

        v8 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v35);
  }

LABEL_26:

  v23 = [MEMORY[0x1E6978760] transientCollectionListWithCollections:v7 title:0 identifier:0 photoLibrary:v32];
  v24 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v23 options:0];
  (*(a1[4] + 16))();
}

+ (void)_configureConfiguration:(id)configuration forSubpreset:(unint64_t)subpreset
{
  configurationCopy = configuration;
  if (subpreset - 1 <= 2)
  {
    v7 = configurationCopy;
    v6 = [[PXStoryPrecomposedTimelineProducer alloc] initWithTimelineKind:subpreset];
    [v7 setTimelineProducer:v6];

    configurationCopy = v7;
  }
}

+ (id)configurationsForPreset:(unint64_t)preset subpreset:(unint64_t)subpreset testOptions:(id)options
{
  optionsCopy = options;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PXStoryPPTConfiguration_configurationsForPreset_subpreset_testOptions___block_invoke;
  aBlock[3] = &unk_1E77473E8;
  subpresetCopy = subpreset;
  v11 = v10;
  v31 = v11;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (preset == 1)
  {
    v14 = [optionsCopy objectForKeyedSubscript:@"dataSet"];
    v15 = [optionsCopy objectForKeyedSubscript:@"dataSetLimit"];
    if (v14 && ![v14 isEqualToString:@"Default"])
    {
      if (![v14 isEqualToString:@"Memories"])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPPTConfiguration.m" lineNumber:73 description:{@"invalid dataSet option: %@", v14}];

        abort();
      }

      v18 = dispatch_semaphore_create(0);
      integerValue = [v15 integerValue];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __73__PXStoryPPTConfiguration_configurationsForPreset_subpreset_testOptions___block_invoke_3;
      v23[3] = &unk_1E7747460;
      v24 = v11;
      v25 = v18;
      v17 = v18;
      [self _fetchLatestMemoriesWithMaximumCount:integerValue resultHandler:v23];
      dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v27 = __73__PXStoryPPTConfiguration_configurationsForPreset_subpreset_testOptions___block_invoke_2;
      v28 = &unk_1E7747410;
      v29 = v13;
      for (i = 1; i != 8; ++i)
      {
        v27(v26, i);
      }

      v17 = v29;
    }
  }

  else
  {
    (*(v12 + 2))(v12, preset);
  }

  v20 = v11;

  return v11;
}

void __73__PXStoryPPTConfiguration_configurationsForPreset_subpreset_testOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[PXStoryPPTConfiguration alloc] initWithPreset:a2];
  [(PXStoryPPTConfiguration *)v3 setSubpreset:*(a1 + 40)];
  [*(a1 + 32) addObject:v3];
}

uint64_t __73__PXStoryPPTConfiguration_configurationsForPreset_subpreset_testOptions___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2 != 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __73__PXStoryPPTConfiguration_configurationsForPreset_subpreset_testOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__PXStoryPPTConfiguration_configurationsForPreset_subpreset_testOptions___block_invoke_4;
  v4[3] = &unk_1E7747438;
  v5 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v4];
  dispatch_semaphore_signal(*(a1 + 40));
}

void __73__PXStoryPPTConfiguration_configurationsForPreset_subpreset_testOptions___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [PXStoryPPTConfiguration alloc];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"LatestMemory%li", a3];
  v8 = [(PXStoryPPTConfiguration *)v6 initWithAssetCollection:v5 name:v7];

  [*(a1 + 32) addObject:v8];
}

@end