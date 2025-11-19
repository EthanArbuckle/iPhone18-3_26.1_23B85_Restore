@interface PXPhotosDetailsContext
+ (NSCache)preheatedAssets;
+ (id)_assetFetchResultForAssets:(id)a3;
+ (id)_fetchPropertySets;
+ (id)_preheatedFetchResultForAsset:(id)a3;
+ (id)photosDetailsContextForAsset:(id)a3 parentContext:(id)a4;
+ (id)photosDetailsContextForAssetCollection:(id)a3 assets:(id)a4 keyAssets:(id)a5 enableCuration:(BOOL)a6 enableKeyAssets:(BOOL)a7 useVerboseSmartDescription:(BOOL)a8 viewSourceOrigin:(int64_t)a9 ignoreSharedLibraryFilters:(BOOL)a10;
+ (id)photosDetailsContextForMemory:(id)a3 enableCuration:(BOOL)a4 enableKeyAssets:(BOOL)a5;
+ (void)photosDetailsContextPreheatForAssets:(id)a3;
- (PHAsset)firstAsset;
- (PXPhotosDetailsContext)init;
- (PXPhotosDetailsContext)initWithPhotosDataSource:(id)a3 displayTitleInfo:(id)a4 parentContext:(id)a5 keyAssetsFetchResult:(id)a6;
- (PXPhotosDetailsContext)parentContext;
- (void)_updatePropertiesDerivedFromDisplayTitleInfo;
- (void)_updatePropertiesDerivedFromPhotosDataSource;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setAssetCollections:(id)a3;
- (void)setAssetsByCollection:(id)a3;
- (void)setContainingAlbum:(id)a3;
- (void)setHasLocation:(BOOL)a3;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3;
- (void)setKeyAssetsFetchResult:(id)a3;
- (void)setLocalizedSubtitle:(id)a3;
- (void)setLocalizedTitle:(id)a3;
- (void)setPeople:(id)a3;
- (void)setPhotosDataSource:(id)a3;
- (void)setPhototypeAccessoryViewSupport:(id)a3;
- (void)setPhototypeInfoButtonSupport:(id)a3;
- (void)setPresentViewController:(id)a3;
- (void)setShazamEventInfo:(id)a3;
- (void)setShouldShowMovieHeader:(BOOL)a3;
- (void)setTitleFontName:(id)a3;
- (void)setViewModel:(id)a3;
- (void)setVisualLookupData:(id)a3;
- (void)toggleIncludeOthersInSocialGroupAssets;
@end

@implementation PXPhotosDetailsContext

- (PXPhotosDetailsContext)parentContext
{
  WeakRetained = objc_loadWeakRetained(&self->_parentContext);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (PXDisplayTitleInfoObservationContext != a5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsContext.m" lineNumber:420 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PXPhotosDetailsContext *)self _updatePropertiesDerivedFromDisplayTitleInfo];
}

- (void)setPhotosDataSource:(id)a3
{
  v5 = a3;
  photosDataSource = self->_photosDataSource;
  if (photosDataSource != v5)
  {
    v7 = v5;
    [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    objc_storeStrong(&self->_photosDataSource, a3);
    [(PXPhotosDataSource *)self->_photosDataSource registerChangeObserver:self];
    [(PXPhotosDetailsContext *)self _updatePropertiesDerivedFromPhotosDataSource];
    [(PXPhotosDetailsContext *)self signalChange:1024];
    v5 = v7;
  }
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(PXPhotosDetailsContext *)self signalChange:256];
    v5 = v6;
  }
}

- (void)setContainingAlbum:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_containingAlbum != v5)
  {
    v8 = v5;
    v7 = [(PHAssetCollection *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_containingAlbum, a3);
      [(PXPhotosDetailsContext *)self signalChange:4096];
      v6 = v8;
    }
  }
}

- (void)setPresentViewController:(id)a3
{
  v4 = [a3 copy];
  presentViewController = self->_presentViewController;
  self->_presentViewController = v4;
}

- (void)setPhototypeInfoButtonSupport:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_phototypeInfoButtonSupport != v5)
  {
    v8 = v5;
    v7 = [(PXPhototypeSupport *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_phototypeInfoButtonSupport, a3);
      [(PXPhotosDetailsContext *)self signalChange:0x10000];
      v6 = v8;
    }
  }
}

- (void)setPhototypeAccessoryViewSupport:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_phototypeAccessoryViewSupport != v5)
  {
    v8 = v5;
    v7 = [(PXPhototypeSupport *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_phototypeAccessoryViewSupport, a3);
      [(PXPhotosDetailsContext *)self signalChange:0x8000];
      v6 = v8;
    }
  }
}

- (void)setShazamEventInfo:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_shazamEventInfo != v5)
  {
    v8 = v5;
    v7 = [(PXShazamEventInfo *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_shazamEventInfo, a3);
      [(PXPhotosDetailsContext *)self signalChange:0x4000];
      v6 = v8;
    }
  }
}

- (void)setVisualLookupData:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_visualLookupData != v5)
  {
    v8 = v5;
    v7 = [(PXPhotosDetailsVisualLookupData *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_visualLookupData, a3);
      [(PXPhotosDetailsContext *)self signalChange:2048];
      v6 = v8;
    }
  }
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3
{
  if (self->_includeOthersInSocialGroupAssets != a3)
  {
    self->_includeOthersInSocialGroupAssets = a3;
    [(PXPhotosDetailsContext *)self signalChange:0x2000];
  }
}

- (void)setHasLocation:(BOOL)a3
{
  if (self->_hasLocation != a3)
  {
    self->_hasLocation = a3;
    [(PXPhotosDetailsContext *)self signalChange:512];
  }
}

- (void)setShouldShowMovieHeader:(BOOL)a3
{
  if (self->_shouldShowMovieHeader != a3)
  {
    self->_shouldShowMovieHeader = a3;
    [(PXPhotosDetailsContext *)self signalChange:128];
  }
}

- (void)setTitleFontName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_titleFontName != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      titleFontName = self->_titleFontName;
      self->_titleFontName = v7;

      [(PXPhotosDetailsContext *)self signalChange:64];
      v5 = v9;
    }
  }
}

- (void)setLocalizedSubtitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_localizedSubtitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      localizedSubtitle = self->_localizedSubtitle;
      self->_localizedSubtitle = v7;

      [(PXPhotosDetailsContext *)self signalChange:32];
      v5 = v9;
    }
  }
}

- (void)setLocalizedTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_localizedTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      localizedTitle = self->_localizedTitle;
      self->_localizedTitle = v7;

      [(PXPhotosDetailsContext *)self signalChange:16];
      v5 = v9;
    }
  }
}

- (void)setPeople:(id)a3
{
  v5 = a3;
  if (self->_people != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_people, a3);
    [(PXPhotosDetailsContext *)self signalChange:8];
    v5 = v6;
  }
}

- (void)setKeyAssetsFetchResult:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_keyAssetsFetchResult != v4)
  {
    v9 = v4;
    v6 = [(PHFetchResult *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(PHFetchResult *)v9 copy];
      keyAssetsFetchResult = self->_keyAssetsFetchResult;
      self->_keyAssetsFetchResult = v7;

      [(PXPhotosDetailsContext *)self signalChange:4];
      v5 = v9;
    }
  }
}

- (void)setAssetsByCollection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_assetsByCollection != v4)
  {
    v9 = v4;
    v6 = [(NSDictionary *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      assetsByCollection = self->_assetsByCollection;
      self->_assetsByCollection = v7;

      [(PXPhotosDetailsContext *)self signalChange:2];
      v5 = v9;
    }
  }
}

- (void)setAssetCollections:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_assetCollections != v5)
  {
    v8 = v5;
    v7 = [(PHFetchResult *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_assetCollections, a3);
      [(PXPhotosDetailsContext *)self signalChange:1];
      v6 = v8;
    }
  }
}

- (void)toggleIncludeOthersInSocialGroupAssets
{
  v2 = [(PXPhotosDetailsContext *)self photosDataSource];
  [v2 setIncludeOthersInSocialGroupAssets:{objc_msgSend(v2, "includeOthersInSocialGroupAssets") ^ 1}];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsContext;
  [(PXPhotosDetailsContext *)&v3 performChanges:a3];
}

- (PHAsset)firstAsset
{
  v2 = [(PXPhotosDetailsContext *)self photosDataSource];
  v3 = [v2 indexPathForFirstAsset];
  if (v3)
  {
    v4 = [v2 assetAtIndexPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updatePropertiesDerivedFromDisplayTitleInfo
{
  v3 = [(PXPhotosDetailsContext *)self displayTitleInfo];
  v4 = [v3 title];
  v5 = [v3 subtitle];
  v6 = [v3 fontName];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PXPhotosDetailsContext__updatePropertiesDerivedFromDisplayTitleInfo__block_invoke;
  v10[3] = &unk_1E773AA90;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = v4;
  [(PXPhotosDetailsContext *)self performChanges:v10];
}

void __70__PXPhotosDetailsContext__updatePropertiesDerivedFromDisplayTitleInfo__block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setLocalizedTitle:v3];
  [v4 setLocalizedSubtitle:a1[5]];
  [v4 setTitleFontName:a1[6]];
}

- (void)_updatePropertiesDerivedFromPhotosDataSource
{
  v3 = [(PXPhotosDetailsContext *)self photosDataSource];
  v4 = [v3 collectionListFetchResult];
  v5 = [v3 fetchResultsByAssetCollection];
  v6 = [v3 includeOthersInSocialGroupAssets];
  if ([v3 numberOfSections] <= 0)
  {
    [(PXPhotosDetailsContext *)self keyAssetsFetchResult];
  }

  else
  {
    [v3 keyAssetsInSection:0];
  }
  v7 = ;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PXPhotosDetailsContext__updatePropertiesDerivedFromPhotosDataSource__block_invoke;
  v11[3] = &unk_1E773AA68;
  v12 = v4;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v8 = v7;
  v9 = v5;
  v10 = v4;
  [(PXPhotosDetailsContext *)self performChanges:v11];
}

void __70__PXPhotosDetailsContext__updatePropertiesDerivedFromPhotosDataSource__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAssetCollections:v3];
  [v4 setAssetsByCollection:*(a1 + 40)];
  [v4 setKeyAssetsFetchResult:*(a1 + 48)];
  [v4 setIncludeOthersInSocialGroupAssets:*(a1 + 56)];
}

- (PXPhotosDetailsContext)initWithPhotosDataSource:(id)a3 displayTitleInfo:(id)a4 parentContext:(id)a5 keyAssetsFetchResult:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = PXPhotosDetailsContext;
  v15 = [(PXPhotosDetailsContext *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_photosDataSource, a3);
    [(PXPhotosDataSource *)v16->_photosDataSource registerChangeObserver:v16];
    if (v12)
    {
      v17 = v12;
      displayTitleInfo = v16->_displayTitleInfo;
      v16->_displayTitleInfo = v17;
    }

    else
    {
      displayTitleInfo = [v11 firstAssetCollection];
      v19 = [[PXDisplayTitleInfo alloc] initWithAssetCollection:displayTitleInfo useVerboseSmartDescription:0];
      v20 = v16->_displayTitleInfo;
      v16->_displayTitleInfo = v19;
    }

    [(PXDisplayTitleInfo *)v16->_displayTitleInfo registerChangeObserver:v16 context:PXDisplayTitleInfoObservationContext];
    objc_storeWeak(&v16->_parentContext, v13);
    objc_storeStrong(&v16->_keyAssetsFetchResult, a6);
    v16->_viewSourceOrigin = 0;
    v16->_contextHierarchyDepth = [v13 contextHierarchyDepth] + 1;
    [(PXPhotosDetailsContext *)v16 _updatePropertiesDerivedFromPhotosDataSource];
    [(PXPhotosDetailsContext *)v16 _updatePropertiesDerivedFromDisplayTitleInfo];
  }

  return v16;
}

- (PXPhotosDetailsContext)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsContext.m" lineNumber:166 description:{@"%s is not available as initializer", "-[PXPhotosDetailsContext init]"}];

  abort();
}

+ (id)photosDetailsContextForAsset:(id)a3 parentContext:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 _preheatedFetchResultForAsset:a3];
  v8 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v7 title:0];
  v9 = MEMORY[0x1E6978760];
  v20[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v11 = [v9 transientCollectionListWithCollections:v10 title:0];

  v12 = MEMORY[0x1E6978760];
  v13 = [v7 fetchOptions];
  v14 = [v12 fetchCollectionsInCollectionList:v11 options:v13];

  v15 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v14 options:0];
  v16 = [a1 _fetchPropertySets];
  [(PXPhotosDataSourceConfiguration *)v15 setFetchPropertySets:v16];

  v17 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v15];
  v18 = [[PXPhotosDetailsContext alloc] initWithPhotosDataSource:v17 displayTitleInfo:0 parentContext:v6 keyAssetsFetchResult:0];

  return v18;
}

+ (id)_preheatedFetchResultForAsset:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[PXPhotosDetailsContext preheatedAssets];
  v6 = [v4 localIdentifier];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69788E0]);
    v18[0] = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v10 = [v7 photoLibrary];
    v11 = [MEMORY[0x1E6978630] fetchType];
    v12 = MEMORY[0x1E695DFD8];
    v13 = [a1 _fetchPropertySets];
    v14 = [v12 setWithArray:v13];
    v15 = [v8 initWithObjects:v9 photoLibrary:v10 fetchType:v11 fetchPropertySets:v14 identifier:0 registerIfNeeded:0];
  }

  else
  {
    v17 = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v15 = [a1 _assetFetchResultForAssets:v9];
  }

  return v15;
}

+ (NSCache)preheatedAssets
{
  if (preheatedAssets_onceToken != -1)
  {
    dispatch_once(&preheatedAssets_onceToken, &__block_literal_global_206_121153);
  }

  v3 = preheatedAssets_assetsCache;

  return v3;
}

uint64_t __41__PXPhotosDetailsContext_preheatedAssets__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = preheatedAssets_assetsCache;
  preheatedAssets_assetsCache = v0;

  v2 = preheatedAssets_assetsCache;

  return [v2 setCountLimit:20];
}

+ (void)photosDetailsContextPreheatForAssets:(id)a3
{
  v4 = [a1 _assetFetchResultForAssets:a3];
  v3 = [v4 fetchedObjects];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_121156];
}

void __63__PXPhotosDetailsContext_photosDetailsContextPreheatForAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = +[PXPhotosDetailsContext preheatedAssets];
  v3 = [v2 localIdentifier];
  [v4 setObject:v2 forKey:v3];
}

+ (id)photosDetailsContextForMemory:(id)a3 enableCuration:(BOOL)a4 enableKeyAssets:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = MEMORY[0x1E6978630];
  v9 = a3;
  v10 = [v8 fetchKeyCuratedAssetInAssetCollection:v9 referenceAsset:0];
  v11 = [a1 photosDetailsContextForAssetCollection:v9 assets:0 keyAssets:v10 enableCuration:v6 enableKeyAssets:v5 useVerboseSmartDescription:0 viewSourceOrigin:5];

  return v11;
}

+ (id)_assetFetchResultForAssets:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 photoLibrary];
    v7 = [v6 librarySpecificFetchOptions];

    v8 = [a1 _fetchPropertySets];
    [v7 setFetchPropertySets:v8];

    [v7 setIncludeGuestAssets:1];
    v9 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v18 + 1) + 8 * i) localIdentifier];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }

    v16 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v9 options:v7];
  }

  else
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "Invalid operation. Cannot obtain a fetch result for 0 assets", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

+ (id)_fetchPropertySets
{
  v8[8] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6978C08];
  v8[0] = *MEMORY[0x1E6978C30];
  v8[1] = v2;
  v3 = *MEMORY[0x1E6978C00];
  v8[2] = *MEMORY[0x1E6978C20];
  v8[3] = v3;
  v4 = *MEMORY[0x1E6978CA8];
  v8[4] = *MEMORY[0x1E6978CC8];
  v8[5] = v4;
  v5 = *MEMORY[0x1E6978D08];
  v8[6] = *MEMORY[0x1E6978BE8];
  v8[7] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:8];

  return v6;
}

+ (id)photosDetailsContextForAssetCollection:(id)a3 assets:(id)a4 keyAssets:(id)a5 enableCuration:(BOOL)a6 enableKeyAssets:(BOOL)a7 useVerboseSmartDescription:(BOOL)a8 viewSourceOrigin:(int64_t)a9 ignoreSharedLibraryFilters:(BOOL)a10
{
  v35 = a8;
  v10 = a7;
  v11 = a6;
  v43[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = 16;
  if (!v11)
  {
    v16 = 0;
  }

  if (v10)
  {
    v17 = v16 | 0x20;
  }

  else
  {
    v17 = v16;
  }

  v18 = MEMORY[0x1E6978830];
  v19 = a5;
  v20 = [v18 fetchOptionsWithPhotoLibrary:0 orObject:v14];
  [v20 setIncludePendingMemories:1];
  v43[0] = *MEMORY[0x1E6978F08];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [v20 setFetchPropertySets:v21];

  v22 = MEMORY[0x1E6978650];
  v23 = [v14 localIdentifier];
  v42 = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v25 = [v22 fetchAssetCollectionsWithLocalIdentifiers:v24 options:v20];

  v26 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v25 options:v17];
  v27 = v26;
  if (a10)
  {
    [(PXPhotosDataSourceConfiguration *)v26 setLibraryFilterState:0];
    [(PXPhotosDataSourceConfiguration *)v27 setLibraryFilter:0];
  }

  if (v15)
  {
    v40 = v14;
    v41 = v15;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [(PXPhotosDataSourceConfiguration *)v27 setExistingAssetCollectionFetchResults:v28];
  }

  [(PXPhotosDataSourceConfiguration *)v27 setHideHiddenAssets:1];
  v39 = *MEMORY[0x1E6978C08];
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  [(PXPhotosDataSourceConfiguration *)v27 setFetchPropertySets:v29];

  v30 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v27];
  v31 = [[PXDisplayTitleInfo alloc] initWithAssetCollection:v14 useVerboseSmartDescription:v35];
  v32 = [[PXPhotosDetailsContext alloc] initWithPhotosDataSource:v30 displayTitleInfo:v31 parentContext:0 keyAssetsFetchResult:v19];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __184__PXPhotosDetailsContext_photosDetailsContextForAssetCollection_assets_keyAssets_enableCuration_enableKeyAssets_useVerboseSmartDescription_viewSourceOrigin_ignoreSharedLibraryFilters___block_invoke;
  v36[3] = &__block_descriptor_40_e41_v16__0___PXMutablePhotosDetailsContext__8l;
  v36[4] = a9;
  [(PXPhotosDetailsContext *)v32 performChanges:v36];
  if (![v25 count])
  {
    v33 = PLUIGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v14;
      _os_log_impl(&dword_1A3C1C000, v33, OS_LOG_TYPE_ERROR, "Could not find any matching collections for the given asset collection: %@", buf, 0xCu);
    }
  }

  return v32;
}

@end