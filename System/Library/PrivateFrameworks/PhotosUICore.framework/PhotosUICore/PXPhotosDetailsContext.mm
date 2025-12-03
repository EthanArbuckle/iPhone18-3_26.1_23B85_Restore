@interface PXPhotosDetailsContext
+ (NSCache)preheatedAssets;
+ (id)_assetFetchResultForAssets:(id)assets;
+ (id)_fetchPropertySets;
+ (id)_preheatedFetchResultForAsset:(id)asset;
+ (id)photosDetailsContextForAsset:(id)asset parentContext:(id)context;
+ (id)photosDetailsContextForAssetCollection:(id)collection assets:(id)assets keyAssets:(id)keyAssets enableCuration:(BOOL)curation enableKeyAssets:(BOOL)enableKeyAssets useVerboseSmartDescription:(BOOL)description viewSourceOrigin:(int64_t)origin ignoreSharedLibraryFilters:(BOOL)self0;
+ (id)photosDetailsContextForMemory:(id)memory enableCuration:(BOOL)curation enableKeyAssets:(BOOL)assets;
+ (void)photosDetailsContextPreheatForAssets:(id)assets;
- (PHAsset)firstAsset;
- (PXPhotosDetailsContext)init;
- (PXPhotosDetailsContext)initWithPhotosDataSource:(id)source displayTitleInfo:(id)info parentContext:(id)context keyAssetsFetchResult:(id)result;
- (PXPhotosDetailsContext)parentContext;
- (void)_updatePropertiesDerivedFromDisplayTitleInfo;
- (void)_updatePropertiesDerivedFromPhotosDataSource;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)setAssetCollections:(id)collections;
- (void)setAssetsByCollection:(id)collection;
- (void)setContainingAlbum:(id)album;
- (void)setHasLocation:(BOOL)location;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets;
- (void)setKeyAssetsFetchResult:(id)result;
- (void)setLocalizedSubtitle:(id)subtitle;
- (void)setLocalizedTitle:(id)title;
- (void)setPeople:(id)people;
- (void)setPhotosDataSource:(id)source;
- (void)setPhototypeAccessoryViewSupport:(id)support;
- (void)setPhototypeInfoButtonSupport:(id)support;
- (void)setPresentViewController:(id)controller;
- (void)setShazamEventInfo:(id)info;
- (void)setShouldShowMovieHeader:(BOOL)header;
- (void)setTitleFontName:(id)name;
- (void)setViewModel:(id)model;
- (void)setVisualLookupData:(id)data;
- (void)toggleIncludeOthersInSocialGroupAssets;
@end

@implementation PXPhotosDetailsContext

- (PXPhotosDetailsContext)parentContext
{
  WeakRetained = objc_loadWeakRetained(&self->_parentContext);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXDisplayTitleInfoObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsContext.m" lineNumber:420 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PXPhotosDetailsContext *)self _updatePropertiesDerivedFromDisplayTitleInfo];
}

- (void)setPhotosDataSource:(id)source
{
  sourceCopy = source;
  photosDataSource = self->_photosDataSource;
  if (photosDataSource != sourceCopy)
  {
    v7 = sourceCopy;
    [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    objc_storeStrong(&self->_photosDataSource, source);
    [(PXPhotosDataSource *)self->_photosDataSource registerChangeObserver:self];
    [(PXPhotosDetailsContext *)self _updatePropertiesDerivedFromPhotosDataSource];
    [(PXPhotosDetailsContext *)self signalChange:1024];
    sourceCopy = v7;
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(PXPhotosDetailsContext *)self signalChange:256];
    modelCopy = v6;
  }
}

- (void)setContainingAlbum:(id)album
{
  albumCopy = album;
  v6 = albumCopy;
  if (self->_containingAlbum != albumCopy)
  {
    v8 = albumCopy;
    v7 = [(PHAssetCollection *)albumCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_containingAlbum, album);
      [(PXPhotosDetailsContext *)self signalChange:4096];
      v6 = v8;
    }
  }
}

- (void)setPresentViewController:(id)controller
{
  v4 = [controller copy];
  presentViewController = self->_presentViewController;
  self->_presentViewController = v4;
}

- (void)setPhototypeInfoButtonSupport:(id)support
{
  supportCopy = support;
  v6 = supportCopy;
  if (self->_phototypeInfoButtonSupport != supportCopy)
  {
    v8 = supportCopy;
    v7 = [(PXPhototypeSupport *)supportCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_phototypeInfoButtonSupport, support);
      [(PXPhotosDetailsContext *)self signalChange:0x10000];
      v6 = v8;
    }
  }
}

- (void)setPhototypeAccessoryViewSupport:(id)support
{
  supportCopy = support;
  v6 = supportCopy;
  if (self->_phototypeAccessoryViewSupport != supportCopy)
  {
    v8 = supportCopy;
    v7 = [(PXPhototypeSupport *)supportCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_phototypeAccessoryViewSupport, support);
      [(PXPhotosDetailsContext *)self signalChange:0x8000];
      v6 = v8;
    }
  }
}

- (void)setShazamEventInfo:(id)info
{
  infoCopy = info;
  v6 = infoCopy;
  if (self->_shazamEventInfo != infoCopy)
  {
    v8 = infoCopy;
    v7 = [(PXShazamEventInfo *)infoCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_shazamEventInfo, info);
      [(PXPhotosDetailsContext *)self signalChange:0x4000];
      v6 = v8;
    }
  }
}

- (void)setVisualLookupData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (self->_visualLookupData != dataCopy)
  {
    v8 = dataCopy;
    v7 = [(PXPhotosDetailsVisualLookupData *)dataCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_visualLookupData, data);
      [(PXPhotosDetailsContext *)self signalChange:2048];
      v6 = v8;
    }
  }
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets
{
  if (self->_includeOthersInSocialGroupAssets != assets)
  {
    self->_includeOthersInSocialGroupAssets = assets;
    [(PXPhotosDetailsContext *)self signalChange:0x2000];
  }
}

- (void)setHasLocation:(BOOL)location
{
  if (self->_hasLocation != location)
  {
    self->_hasLocation = location;
    [(PXPhotosDetailsContext *)self signalChange:512];
  }
}

- (void)setShouldShowMovieHeader:(BOOL)header
{
  if (self->_shouldShowMovieHeader != header)
  {
    self->_shouldShowMovieHeader = header;
    [(PXPhotosDetailsContext *)self signalChange:128];
  }
}

- (void)setTitleFontName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (self->_titleFontName != nameCopy)
  {
    v9 = nameCopy;
    v6 = [(NSString *)nameCopy isEqualToString:?];
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

- (void)setLocalizedSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = subtitleCopy;
  if (self->_localizedSubtitle != subtitleCopy)
  {
    v9 = subtitleCopy;
    v6 = [(NSString *)subtitleCopy isEqualToString:?];
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

- (void)setLocalizedTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_localizedTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
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

- (void)setPeople:(id)people
{
  peopleCopy = people;
  if (self->_people != peopleCopy)
  {
    v6 = peopleCopy;
    objc_storeStrong(&self->_people, people);
    [(PXPhotosDetailsContext *)self signalChange:8];
    peopleCopy = v6;
  }
}

- (void)setKeyAssetsFetchResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (self->_keyAssetsFetchResult != resultCopy)
  {
    v9 = resultCopy;
    v6 = [(PHFetchResult *)resultCopy isEqual:?];
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

- (void)setAssetsByCollection:(id)collection
{
  collectionCopy = collection;
  v5 = collectionCopy;
  if (self->_assetsByCollection != collectionCopy)
  {
    v9 = collectionCopy;
    v6 = [(NSDictionary *)collectionCopy isEqual:?];
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

- (void)setAssetCollections:(id)collections
{
  collectionsCopy = collections;
  v6 = collectionsCopy;
  if (self->_assetCollections != collectionsCopy)
  {
    v8 = collectionsCopy;
    v7 = [(PHFetchResult *)collectionsCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_assetCollections, collections);
      [(PXPhotosDetailsContext *)self signalChange:1];
      v6 = v8;
    }
  }
}

- (void)toggleIncludeOthersInSocialGroupAssets
{
  photosDataSource = [(PXPhotosDetailsContext *)self photosDataSource];
  [photosDataSource setIncludeOthersInSocialGroupAssets:{objc_msgSend(photosDataSource, "includeOthersInSocialGroupAssets") ^ 1}];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsContext;
  [(PXPhotosDetailsContext *)&v3 performChanges:changes];
}

- (PHAsset)firstAsset
{
  photosDataSource = [(PXPhotosDetailsContext *)self photosDataSource];
  indexPathForFirstAsset = [photosDataSource indexPathForFirstAsset];
  if (indexPathForFirstAsset)
  {
    v4 = [photosDataSource assetAtIndexPath:indexPathForFirstAsset];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updatePropertiesDerivedFromDisplayTitleInfo
{
  displayTitleInfo = [(PXPhotosDetailsContext *)self displayTitleInfo];
  title = [displayTitleInfo title];
  subtitle = [displayTitleInfo subtitle];
  fontName = [displayTitleInfo fontName];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PXPhotosDetailsContext__updatePropertiesDerivedFromDisplayTitleInfo__block_invoke;
  v10[3] = &unk_1E773AA90;
  v11 = title;
  v12 = subtitle;
  v13 = fontName;
  v7 = fontName;
  v8 = subtitle;
  v9 = title;
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
  photosDataSource = [(PXPhotosDetailsContext *)self photosDataSource];
  collectionListFetchResult = [photosDataSource collectionListFetchResult];
  fetchResultsByAssetCollection = [photosDataSource fetchResultsByAssetCollection];
  includeOthersInSocialGroupAssets = [photosDataSource includeOthersInSocialGroupAssets];
  if ([photosDataSource numberOfSections] <= 0)
  {
    [(PXPhotosDetailsContext *)self keyAssetsFetchResult];
  }

  else
  {
    [photosDataSource keyAssetsInSection:0];
  }
  v7 = ;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PXPhotosDetailsContext__updatePropertiesDerivedFromPhotosDataSource__block_invoke;
  v11[3] = &unk_1E773AA68;
  v12 = collectionListFetchResult;
  v13 = fetchResultsByAssetCollection;
  v14 = v7;
  v15 = includeOthersInSocialGroupAssets;
  v8 = v7;
  v9 = fetchResultsByAssetCollection;
  v10 = collectionListFetchResult;
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

- (PXPhotosDetailsContext)initWithPhotosDataSource:(id)source displayTitleInfo:(id)info parentContext:(id)context keyAssetsFetchResult:(id)result
{
  sourceCopy = source;
  infoCopy = info;
  contextCopy = context;
  resultCopy = result;
  v22.receiver = self;
  v22.super_class = PXPhotosDetailsContext;
  v15 = [(PXPhotosDetailsContext *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_photosDataSource, source);
    [(PXPhotosDataSource *)v16->_photosDataSource registerChangeObserver:v16];
    if (infoCopy)
    {
      v17 = infoCopy;
      displayTitleInfo = v16->_displayTitleInfo;
      v16->_displayTitleInfo = v17;
    }

    else
    {
      displayTitleInfo = [sourceCopy firstAssetCollection];
      v19 = [[PXDisplayTitleInfo alloc] initWithAssetCollection:displayTitleInfo useVerboseSmartDescription:0];
      v20 = v16->_displayTitleInfo;
      v16->_displayTitleInfo = v19;
    }

    [(PXDisplayTitleInfo *)v16->_displayTitleInfo registerChangeObserver:v16 context:PXDisplayTitleInfoObservationContext];
    objc_storeWeak(&v16->_parentContext, contextCopy);
    objc_storeStrong(&v16->_keyAssetsFetchResult, result);
    v16->_viewSourceOrigin = 0;
    v16->_contextHierarchyDepth = [contextCopy contextHierarchyDepth] + 1;
    [(PXPhotosDetailsContext *)v16 _updatePropertiesDerivedFromPhotosDataSource];
    [(PXPhotosDetailsContext *)v16 _updatePropertiesDerivedFromDisplayTitleInfo];
  }

  return v16;
}

- (PXPhotosDetailsContext)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsContext.m" lineNumber:166 description:{@"%s is not available as initializer", "-[PXPhotosDetailsContext init]"}];

  abort();
}

+ (id)photosDetailsContextForAsset:(id)asset parentContext:(id)context
{
  v20[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [self _preheatedFetchResultForAsset:asset];
  v8 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v7 title:0];
  v9 = MEMORY[0x1E6978760];
  v20[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v11 = [v9 transientCollectionListWithCollections:v10 title:0];

  v12 = MEMORY[0x1E6978760];
  fetchOptions = [v7 fetchOptions];
  v14 = [v12 fetchCollectionsInCollectionList:v11 options:fetchOptions];

  v15 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v14 options:0];
  _fetchPropertySets = [self _fetchPropertySets];
  [(PXPhotosDataSourceConfiguration *)v15 setFetchPropertySets:_fetchPropertySets];

  v17 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v15];
  v18 = [[PXPhotosDetailsContext alloc] initWithPhotosDataSource:v17 displayTitleInfo:0 parentContext:contextCopy keyAssetsFetchResult:0];

  return v18;
}

+ (id)_preheatedFetchResultForAsset:(id)asset
{
  v18[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = +[PXPhotosDetailsContext preheatedAssets];
  localIdentifier = [assetCopy localIdentifier];
  v7 = [v5 objectForKey:localIdentifier];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69788E0]);
    v18[0] = assetCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    photoLibrary = [v7 photoLibrary];
    fetchType = [MEMORY[0x1E6978630] fetchType];
    v12 = MEMORY[0x1E695DFD8];
    _fetchPropertySets = [self _fetchPropertySets];
    v14 = [v12 setWithArray:_fetchPropertySets];
    v15 = [v8 initWithObjects:v9 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:v14 identifier:0 registerIfNeeded:0];
  }

  else
  {
    v17 = assetCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v15 = [self _assetFetchResultForAssets:v9];
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

+ (void)photosDetailsContextPreheatForAssets:(id)assets
{
  v4 = [self _assetFetchResultForAssets:assets];
  fetchedObjects = [v4 fetchedObjects];
  [fetchedObjects enumerateObjectsUsingBlock:&__block_literal_global_121156];
}

void __63__PXPhotosDetailsContext_photosDetailsContextPreheatForAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = +[PXPhotosDetailsContext preheatedAssets];
  v3 = [v2 localIdentifier];
  [v4 setObject:v2 forKey:v3];
}

+ (id)photosDetailsContextForMemory:(id)memory enableCuration:(BOOL)curation enableKeyAssets:(BOOL)assets
{
  assetsCopy = assets;
  curationCopy = curation;
  v8 = MEMORY[0x1E6978630];
  memoryCopy = memory;
  v10 = [v8 fetchKeyCuratedAssetInAssetCollection:memoryCopy referenceAsset:0];
  v11 = [self photosDetailsContextForAssetCollection:memoryCopy assets:0 keyAssets:v10 enableCuration:curationCopy enableKeyAssets:assetsCopy useVerboseSmartDescription:0 viewSourceOrigin:5];

  return v11;
}

+ (id)_assetFetchResultForAssets:(id)assets
{
  v24 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    v5 = [assetsCopy objectAtIndexedSubscript:0];
    photoLibrary = [v5 photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    _fetchPropertySets = [self _fetchPropertySets];
    [librarySpecificFetchOptions setFetchPropertySets:_fetchPropertySets];

    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = assetsCopy;
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

          localIdentifier = [*(*(&v18 + 1) + 8 * i) localIdentifier];
          [array addObject:localIdentifier];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }

    v16 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:array options:librarySpecificFetchOptions];
  }

  else
  {
    librarySpecificFetchOptions = PLUIGetLog();
    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, librarySpecificFetchOptions, OS_LOG_TYPE_DEBUG, "Invalid operation. Cannot obtain a fetch result for 0 assets", buf, 2u);
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

+ (id)photosDetailsContextForAssetCollection:(id)collection assets:(id)assets keyAssets:(id)keyAssets enableCuration:(BOOL)curation enableKeyAssets:(BOOL)enableKeyAssets useVerboseSmartDescription:(BOOL)description viewSourceOrigin:(int64_t)origin ignoreSharedLibraryFilters:(BOOL)self0
{
  descriptionCopy = description;
  enableKeyAssetsCopy = enableKeyAssets;
  curationCopy = curation;
  v43[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  assetsCopy = assets;
  v16 = 16;
  if (!curationCopy)
  {
    v16 = 0;
  }

  if (enableKeyAssetsCopy)
  {
    v17 = v16 | 0x20;
  }

  else
  {
    v17 = v16;
  }

  v18 = MEMORY[0x1E6978830];
  keyAssetsCopy = keyAssets;
  v20 = [v18 fetchOptionsWithPhotoLibrary:0 orObject:collectionCopy];
  [v20 setIncludePendingMemories:1];
  v43[0] = *MEMORY[0x1E6978F08];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [v20 setFetchPropertySets:v21];

  v22 = MEMORY[0x1E6978650];
  localIdentifier = [collectionCopy localIdentifier];
  v42 = localIdentifier;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v25 = [v22 fetchAssetCollectionsWithLocalIdentifiers:v24 options:v20];

  v26 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v25 options:v17];
  v27 = v26;
  if (filters)
  {
    [(PXPhotosDataSourceConfiguration *)v26 setLibraryFilterState:0];
    [(PXPhotosDataSourceConfiguration *)v27 setLibraryFilter:0];
  }

  if (assetsCopy)
  {
    v40 = collectionCopy;
    v41 = assetsCopy;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [(PXPhotosDataSourceConfiguration *)v27 setExistingAssetCollectionFetchResults:v28];
  }

  [(PXPhotosDataSourceConfiguration *)v27 setHideHiddenAssets:1];
  v39 = *MEMORY[0x1E6978C08];
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  [(PXPhotosDataSourceConfiguration *)v27 setFetchPropertySets:v29];

  v30 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v27];
  v31 = [[PXDisplayTitleInfo alloc] initWithAssetCollection:collectionCopy useVerboseSmartDescription:descriptionCopy];
  v32 = [[PXPhotosDetailsContext alloc] initWithPhotosDataSource:v30 displayTitleInfo:v31 parentContext:0 keyAssetsFetchResult:keyAssetsCopy];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __184__PXPhotosDetailsContext_photosDetailsContextForAssetCollection_assets_keyAssets_enableCuration_enableKeyAssets_useVerboseSmartDescription_viewSourceOrigin_ignoreSharedLibraryFilters___block_invoke;
  v36[3] = &__block_descriptor_40_e41_v16__0___PXMutablePhotosDetailsContext__8l;
  v36[4] = origin;
  [(PXPhotosDetailsContext *)v32 performChanges:v36];
  if (![v25 count])
  {
    v33 = PLUIGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = collectionCopy;
      _os_log_impl(&dword_1A3C1C000, v33, OS_LOG_TYPE_ERROR, "Could not find any matching collections for the given asset collection: %@", buf, 0xCu);
    }
  }

  return v32;
}

@end