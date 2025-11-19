@interface PXStoryPPTConfiguration
+ (id)configurationsForPreset:(unint64_t)a3 subpreset:(unint64_t)a4 testOptions:(id)a5;
+ (void)_configureConfiguration:(id)a3 forSubpreset:(unint64_t)a4;
+ (void)_fetchLatestMemoriesWithMaximumCount:(int64_t)a3 resultHandler:(id)a4;
+ (void)_requestPhotoLibraryWithResultHandler:(id)a3;
- (NSString)name;
- (PXStoryPPTConfiguration)init;
- (PXStoryPPTConfiguration)initWithAssetCollection:(id)a3 name:(id)a4;
- (PXStoryPPTConfiguration)initWithAssetType:(unint64_t)a3 count:(unint64_t)a4;
- (PXStoryPPTConfiguration)initWithDefaultMemory;
- (PXStoryPPTConfiguration)initWithLatestCollectionOfType:(int64_t)a3;
- (PXStoryPPTConfiguration)initWithPreset:(unint64_t)a3;
- (id)_stringFromAssetCount:(unint64_t)a3;
- (id)_stringFromAssetType:(unint64_t)a3;
- (void)_completeConfigurationRequestWithAssetCollection:(id)a3 resultHandler:(id)a4;
- (void)_completeConfigurationRequestWithFetchResult:(id)a3 resultHandler:(id)a4;
- (void)_completeConfigurationRequestWithStoryConfiguration:(id)a3 resultHandler:(id)a4;
- (void)_configureWithMemoryFetchResultProvider:(id)a3 resultHandler:(id)a4;
- (void)_createSyntheticAssetsWithResultHandler:(id)a3;
- (void)_fetchAssetsWithResultHandler:(id)a3;
- (void)_fetchDefaultMemoryWithResultHandler:(id)a3;
- (void)_fetchLatestAssetCollectionOfType:(int64_t)a3 resultHandler:(id)a4;
- (void)_fetchMemoryByLocalIdentifier:(id)a3 resultHandler:(id)a4;
- (void)_fetchMemoryByName:(id)a3 resultHandler:(id)a4;
- (void)_performPhotoLibraryFetch:(id)a3;
- (void)requestStoryConfigurationWithOptions:(id)a3 resultHandler:(id)a4;
@end

@implementation PXStoryPPTConfiguration

- (PXStoryPPTConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryPPTConfiguration.m" lineNumber:406 description:{@"%s is not available as initializer", "-[PXStoryPPTConfiguration init]"}];

  abort();
}

- (id)_stringFromAssetType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7747608[a3 - 1];
  }
}

- (id)_stringFromAssetCount:(unint64_t)a3
{
  if (a3 < 0x3E8)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", a3];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%luk", a3 / 0x3E8];
  }

  return v3;
}

- (void)_performPhotoLibraryFetch:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PXStoryPPTConfiguration__performPhotoLibraryFetch___block_invoke;
  v6[3] = &unk_1E77475E8;
  v7 = v3;
  v5 = v3;
  [v4 _requestPhotoLibraryWithResultHandler:v6];
}

void __53__PXStoryPPTConfiguration__performPhotoLibraryFetch___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 librarySpecificFetchOptions];
  (*(*(a1 + 32) + 16))();
}

- (void)_completeConfigurationRequestWithStoryConfiguration:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PXStoryPPTConfiguration *)self assetType]== 1)
  {
    v8 = objc_alloc_init(off_1E7721900);
    [v6 setMediaProvider:v8];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__PXStoryPPTConfiguration__completeConfigurationRequestWithStoryConfiguration_resultHandler___block_invoke;
  v11[3] = &unk_1E774C2F0;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

- (void)_completeConfigurationRequestWithFetchResult:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PXStoryConfiguration alloc] initWithAssets:v7];

  [(PXStoryPPTConfiguration *)self _completeConfigurationRequestWithStoryConfiguration:v8 resultHandler:v6];
}

- (void)_completeConfigurationRequestWithAssetCollection:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [[PXStoryConfiguration alloc] initWithAssetCollection:v6];
    [(PXStoryPPTConfiguration *)self _completeConfigurationRequestWithStoryConfiguration:v9 resultHandler:v8];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__PXStoryPPTConfiguration__completeConfigurationRequestWithAssetCollection_resultHandler___block_invoke;
    block[3] = &unk_1E774C250;
    v11 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_createSyntheticAssetsWithResultHandler:(id)a3
{
  v4 = a3;
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

- (void)_fetchAssetsWithResultHandler:(id)a3
{
  v4 = a3;
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
  v5 = v4;
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

- (void)_fetchLatestAssetCollectionOfType:(int64_t)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 4)
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
    v11[1] = a3;
    v10[4] = self;
    v9 = v11;
    v11[0] = v6;
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

- (void)_configureWithMemoryFetchResultProvider:(id)a3 resultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__PXStoryPPTConfiguration__configureWithMemoryFetchResultProvider_resultHandler___block_invoke;
  v11[3] = &unk_1E77474D8;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v8;
  v10 = v7;
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

- (void)_fetchMemoryByName:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__PXStoryPPTConfiguration__fetchMemoryByName_resultHandler___block_invoke;
  v8[3] = &unk_1E77474B0;
  v9 = v6;
  v7 = v6;
  [(PXStoryPPTConfiguration *)self _configureWithMemoryFetchResultProvider:v8 resultHandler:a4];
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

- (void)_fetchMemoryByLocalIdentifier:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__PXStoryPPTConfiguration__fetchMemoryByLocalIdentifier_resultHandler___block_invoke;
  v8[3] = &unk_1E77474B0;
  v9 = v6;
  v7 = v6;
  [(PXStoryPPTConfiguration *)self _configureWithMemoryFetchResultProvider:v8 resultHandler:a4];
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

- (void)_fetchDefaultMemoryWithResultHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:@"PXStoryPPTDefaultMemoryLocalIdentifier"];
  v7 = [v5 objectForKey:@"PXStoryPPTDefaultMemoryName"];
  v8 = v7;
  if (v6)
  {
    [(PXStoryPPTConfiguration *)self _fetchMemoryByLocalIdentifier:v6 resultHandler:v4];
  }

  else
  {
    if (!v7)
    {
      PXAssertGetLog();
    }

    [(PXStoryPPTConfiguration *)self _fetchMemoryByName:v7 resultHandler:v4];
  }
}

- (void)requestStoryConfigurationWithOptions:(id)a3 resultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKeyedSubscript:@"storyDuration"];
  [v9 doubleValue];
  v11 = v10;

  if (v11 > 0.0)
  {
    self->_assetCount = vcvtmd_u64_f64(v11);
    [(PXStoryPPTConfiguration *)self setPreferredStoryDuration:v11];
  }

  v12 = [(PXStoryPPTConfiguration *)self subpreset];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __78__PXStoryPPTConfiguration_requestStoryConfigurationWithOptions_resultHandler___block_invoke;
  v21 = &unk_1E7747488;
  v23 = v12;
  v13 = v8;
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
    v16 = [(PXStoryPPTConfiguration *)self assetType];
    if (v16 - 2 < 2)
    {
      [(PXStoryPPTConfiguration *)self _fetchAssetsWithResultHandler:v14];
    }

    else if (v16 == 1)
    {
      [(PXStoryPPTConfiguration *)self _createSyntheticAssetsWithResultHandler:v14];
    }

    else if (!v16)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"PXStoryPPTConfiguration.m" lineNumber:199 description:@"Code which should be unreachable has been reached"];

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
  v4 = [(PXStoryPPTConfiguration *)self contentDescription];
  [v3 addObject:v4];

  v5 = [(PXStoryPPTConfiguration *)self subpreset];
  if (v5)
  {
    if (v5 > 3)
    {
      v6 = @"??";
    }

    else
    {
      v6 = off_1E7733B98[v5];
    }

    v7 = v6;
    v8 = [(__CFString *)v7 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    [v3 addObject:v8];
  }

  v9 = [v3 componentsJoinedByString:@"-"];

  return v9;
}

- (PXStoryPPTConfiguration)initWithAssetType:(unint64_t)a3 count:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = PXStoryPPTConfiguration;
  v6 = [(PXStoryPPTConfiguration *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_assetType = a3;
    v6->_assetCount = a4;
    v8 = [(PXStoryPPTConfiguration *)v6 _stringFromAssetCount:a4];
    v9 = [(PXStoryPPTConfiguration *)v7 _stringFromAssetType:a3];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@", v8, v9];
    contentDescription = v7->_contentDescription;
    v7->_contentDescription = v10;
  }

  return v7;
}

- (PXStoryPPTConfiguration)initWithAssetCollection:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PXStoryPPTConfiguration;
  v9 = [(PXStoryPPTConfiguration *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetCollection, a3);
    v11 = [v8 copy];
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

- (PXStoryPPTConfiguration)initWithLatestCollectionOfType:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = PXStoryPPTConfiguration;
  v5 = [(PXStoryPPTConfiguration *)&v11 init];
  v6 = v5;
  if (v5)
  {
    if (a3 == 4)
    {
      v7 = @"LatestMemory";
    }

    else
    {
      if (a3 != 1)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:v6 file:@"PXStoryPPTConfiguration.m" lineNumber:114 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v7 = @"LatestAlbum";
    }

    contentDescription = v5->_contentDescription;
    v5->_contentDescription = &v7->isa;

    v6->_collectionType = a3;
  }

  return v6;
}

- (PXStoryPPTConfiguration)initWithPreset:(unint64_t)a3
{
  if (a3 <= 4)
  {
    if (a3 > 2)
    {
      if (a3 != 3)
      {
        v3 = 3;
LABEL_13:
        v4 = [(PXStoryPPTConfiguration *)self initWithAssetType:v3 count:1000];
        goto LABEL_16;
      }

      v5 = 1;
LABEL_15:
      v4 = [(PXStoryPPTConfiguration *)self initWithLatestCollectionOfType:v5];
      goto LABEL_16;
    }

    if (a3 == 2)
    {
      v5 = 4;
      goto LABEL_15;
    }

    if (a3 < 2)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = v10;
      v12 = a2;
      v13 = self;
      v14 = 86;
      goto LABEL_20;
    }

LABEL_19:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = v10;
    v12 = a2;
    v13 = self;
    v14 = 100;
LABEL_20:
    [v10 handleFailureInMethod:v12 object:v13 file:@"PXStoryPPTConfiguration.m" lineNumber:v14 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (a3 == 5)
  {
    v3 = 2;
    goto LABEL_13;
  }

  if (a3 == 6)
  {
    v3 = 1;
    goto LABEL_13;
  }

  if (a3 != 7)
  {
    goto LABEL_19;
  }

  v4 = [(PXStoryPPTConfiguration *)self initWithDefaultMemory];
LABEL_16:
  v6 = v4;

  return v6;
}

+ (void)_requestPhotoLibraryWithResultHandler:(id)a3
{
  v5 = a3;
  v6 = MEMORY[0x1E69789A8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PXStoryPPTConfiguration__requestPhotoLibraryWithResultHandler___block_invoke;
  v8[3] = &unk_1E77475C0;
  v10 = a2;
  v11 = a1;
  v9 = v5;
  v7 = v5;
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

+ (void)_fetchLatestMemoriesWithMaximumCount:(int64_t)a3 resultHandler:(id)a4
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PXStoryPPTConfiguration__fetchLatestMemoriesWithMaximumCount_resultHandler___block_invoke;
  v9[3] = &unk_1E7747550;
  v12 = a2;
  v13 = a1;
  v10 = v7;
  v11 = a3;
  v8 = v7;
  [a1 _requestPhotoLibraryWithResultHandler:v9];
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

+ (void)_configureConfiguration:(id)a3 forSubpreset:(unint64_t)a4
{
  v5 = a3;
  if (a4 - 1 <= 2)
  {
    v7 = v5;
    v6 = [[PXStoryPrecomposedTimelineProducer alloc] initWithTimelineKind:a4];
    [v7 setTimelineProducer:v6];

    v5 = v7;
  }
}

+ (id)configurationsForPreset:(unint64_t)a3 subpreset:(unint64_t)a4 testOptions:(id)a5
{
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PXStoryPPTConfiguration_configurationsForPreset_subpreset_testOptions___block_invoke;
  aBlock[3] = &unk_1E77473E8;
  v32 = a4;
  v11 = v10;
  v31 = v11;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (a3 == 1)
  {
    v14 = [v9 objectForKeyedSubscript:@"dataSet"];
    v15 = [v9 objectForKeyedSubscript:@"dataSetLimit"];
    if (v14 && ![v14 isEqualToString:@"Default"])
    {
      if (![v14 isEqualToString:@"Memories"])
      {
        v22 = [MEMORY[0x1E696AAA8] currentHandler];
        [v22 handleFailureInMethod:a2 object:a1 file:@"PXStoryPPTConfiguration.m" lineNumber:73 description:{@"invalid dataSet option: %@", v14}];

        abort();
      }

      v18 = dispatch_semaphore_create(0);
      v19 = [v15 integerValue];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __73__PXStoryPPTConfiguration_configurationsForPreset_subpreset_testOptions___block_invoke_3;
      v23[3] = &unk_1E7747460;
      v24 = v11;
      v25 = v18;
      v17 = v18;
      [a1 _fetchLatestMemoriesWithMaximumCount:v19 resultHandler:v23];
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
    (*(v12 + 2))(v12, a3);
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