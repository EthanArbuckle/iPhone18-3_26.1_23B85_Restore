@interface PXPlacesAlbumCoverProvider
+ (id)_cachedSnapshotPathDark;
+ (id)_cachedSnapshotPathForFilename:(id)filename;
+ (id)_cachedSnapshotPathLight;
- (BOOL)_fetchCachedSnapshotImage:(id *)image andIdentifier:(id *)identifier forUserInterfaceStyle:(int64_t)style;
- (BOOL)_imageExistsWithLocalIdentifier:(id)identifier;
- (PXPlacesAlbumCoverProvider)initWithDelegate:(id)delegate andPlacesCollection:(id)collection;
- (PXPlacesSnapshotFactory)factory;
- (id)_placeHolderImageForExtendedTraitCollection:(id)collection;
- (id)placesAlbumCoverProviderLog;
- (int64_t)cachedCount;
- (void)requestAssetCountWithForcedRefresh:(BOOL)refresh completion:(id)completion;
- (void)requestPlacesAlbumCover:(id)cover snapshotTraitCollection:(id)collection completion:(id)completion;
- (void)setCachedCount:(int64_t)count;
@end

@implementation PXPlacesAlbumCoverProvider

- (id)placesAlbumCoverProviderLog
{
  if (placesAlbumCoverProviderLog_onceToken != -1)
  {
    dispatch_once(&placesAlbumCoverProviderLog_onceToken, &__block_literal_global_220_31455);
  }

  v3 = placesAlbumCoverProviderLog_placesAlbumCoverProviderLog;

  return v3;
}

void __57__PXPlacesAlbumCoverProvider_placesAlbumCoverProviderLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "PlacesAlbumCoverProvider");
  v1 = placesAlbumCoverProviderLog_placesAlbumCoverProviderLog;
  placesAlbumCoverProviderLog_placesAlbumCoverProviderLog = v0;
}

- (BOOL)_imageExistsWithLocalIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6978630];
  identifierCopy = identifier;
  v5 = MEMORY[0x1E695DEC8];
  identifierCopy2 = identifier;
  v7 = [v5 arrayWithObjects:&identifierCopy count:1];
  v8 = [(PHAssetCollection *)self->_placesCollection photoLibrary:identifierCopy];
  librarySpecificFetchOptions = [v8 librarySpecificFetchOptions];
  v10 = [v4 fetchAssetsWithLocalIdentifiers:v7 options:librarySpecificFetchOptions];

  if (v10)
  {
    v11 = [v10 count] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_fetchCachedSnapshotImage:(id *)image andIdentifier:(id *)identifier forUserInterfaceStyle:(int64_t)style
{
  switch(style)
  {
    case 2:
      v7 = +[PXPlacesAlbumCoverProvider _cachedSnapshotPathDark];
      goto LABEL_7;
    case 1:
      v7 = +[PXPlacesAlbumCoverProvider _cachedSnapshotPathLight];
LABEL_7:
      v8 = v7;
      goto LABEL_9;
    case 0:
      PXAssertGetLog();
  }

  v8 = 0;
LABEL_9:
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
  v10 = CGImageSourceCreateWithURL(v9, 0);
  if (v10)
  {
    v11 = v10;
    v12 = CGImageSourceCopyPropertiesAtIndex(v10, 0, 0);
    v13 = v12;
    if (v12)
    {
      v14 = [(__CFDictionary *)v12 objectForKey:*MEMORY[0x1E696D9B0]];
      v15 = [v14 objectForKey:*MEMORY[0x1E696DB40]];
    }

    else
    {
      v15 = 0;
    }

    CFRelease(v11);
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_alloc(MEMORY[0x1E69BE438]) initWithImagePath:v8 format:10000 imageType:1 optimalSourcePixelSize:0 options:{0.0, 0.0}];
  v17 = [v16 cachedImage:0];
  v18 = v17;
  if (image)
  {
    v19 = v17;
    *image = v18;
  }

  if (identifier)
  {
    v20 = v15;
    *identifier = v15;
  }

  if (v18)
  {
    v21 = v15 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;

  return v22;
}

- (id)_placeHolderImageForExtendedTraitCollection:(id)collection
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v4 = MEMORY[0x1E69DCAD8];
  systemGray4Color = [MEMORY[0x1E69DC888] systemGray4Color];
  v13[0] = systemGray4Color;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v7 = [v4 configurationWithPaletteColors:v6];
  v8 = [v3 configurationByApplyingConfiguration:v7];

  v9 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8] scale:3];
  v10 = [v8 configurationByApplyingConfiguration:v9];

  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"map" withConfiguration:v10];

  return v11;
}

- (PXPlacesSnapshotFactory)factory
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  factory = selfCopy->_factory;
  if (!factory)
  {
    photoLibrary = [(PHAssetCollection *)selfCopy->_placesCollection photoLibrary];
    v5 = [[PXPlacesSnapshotFactory alloc] initWithPhotoLibrary:photoLibrary];
    v6 = selfCopy->_factory;
    selfCopy->_factory = v5;

    v7 = selfCopy->_factory;
    factoryDelegate = [(PXPlacesAlbumCoverProvider *)selfCopy factoryDelegate];
    [(PXPlacesSnapshotFactory *)v7 setDelegate:factoryDelegate];

    v9 = selfCopy->_factory;
    placesCollection = [(PXPlacesAlbumCoverProvider *)selfCopy placesCollection];
    [(PXPlacesSnapshotFactory *)v9 setPlacesCollection:placesCollection];

    factory = selfCopy->_factory;
  }

  v11 = factory;
  objc_sync_exit(selfCopy);

  return v11;
}

- (void)requestAssetCountWithForcedRefresh:(BOOL)refresh completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  backgroundQueue = self->_backgroundQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PXPlacesAlbumCoverProvider_requestAssetCountWithForcedRefresh_completion___block_invoke;
  v9[3] = &unk_1E7730330;
  objc_copyWeak(&v11, &location);
  refreshCopy = refresh;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(backgroundQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __76__PXPlacesAlbumCoverProvider_requestAssetCountWithForcedRefresh_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained factory];
  [v2 requestAssetCountWithForcedRefresh:*(a1 + 48) completion:*(a1 + 32)];
}

- (void)requestPlacesAlbumCover:(id)cover snapshotTraitCollection:(id)collection completion:(id)completion
{
  coverCopy = cover;
  collectionCopy = collection;
  completionCopy = completion;
  placesAlbumCoverProviderLog = [(PXPlacesAlbumCoverProvider *)self placesAlbumCoverProviderLog];
  v12 = os_signpost_id_generate(placesAlbumCoverProviderLog);
  v13 = placesAlbumCoverProviderLog;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FetchCachedPlacesCover", "", buf, 2u);
  }

  cachedCount = [(PXPlacesAlbumCoverProvider *)self cachedCount];
  if (!self->_cachedSnapshotImage)
  {
    if (self->_cachedSnapshotImageIdentifier)
    {
      if ([(PXPlacesAlbumCoverProvider *)self _imageExistsWithLocalIdentifier:?])
      {
        if (!completionCopy)
        {
          goto LABEL_15;
        }

        goto LABEL_6;
      }

      cachedSnapshotImage = self->_cachedSnapshotImage;
      self->_cachedSnapshotImage = 0;

      cachedSnapshotImageIdentifier = self->_cachedSnapshotImageIdentifier;
      self->_cachedSnapshotImageIdentifier = 0;
    }

    else if (!completionCopy)
    {
      goto LABEL_15;
    }

    v18 = [(PXPlacesAlbumCoverProvider *)self _placeHolderImageForExtendedTraitCollection:coverCopy];
    completionCopy[2](completionCopy, v18, 1, cachedCount, 0);

    goto LABEL_15;
  }

  if (completionCopy)
  {
LABEL_6:
    (completionCopy[2])(completionCopy);
  }

LABEL_15:
  v19 = v14;
  v20 = v19;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v20, OS_SIGNPOST_INTERVAL_END, v12, "FetchCachedPlacesCover", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  backgroundQueue = self->_backgroundQueue;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __89__PXPlacesAlbumCoverProvider_requestPlacesAlbumCover_snapshotTraitCollection_completion___block_invoke;
  v25[3] = &unk_1E774B1F8;
  objc_copyWeak(&v29, buf);
  v26 = coverCopy;
  v27 = collectionCopy;
  v28 = completionCopy;
  v22 = completionCopy;
  v23 = collectionCopy;
  v24 = coverCopy;
  dispatch_async(backgroundQueue, v25);

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

void __89__PXPlacesAlbumCoverProvider_requestPlacesAlbumCover_snapshotTraitCollection_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(PXPlacesSnapshotOptions);
    [(PXPlacesSnapshotOptions *)v3 setExtendedTraitCollection:*(a1 + 32)];
    v4 = objc_alloc_init(PXPlacesGeotaggableMediaProvider);
    [(PXPlacesSnapshotOptions *)v3 setGeotaggableInformationDelegate:v4];

    v5 = +[PXPlacesAlbumCoverProvider _cachedSnapshotPathLight];
    v6 = [v5 stringByDeletingLastPathComponent];
    [(PXPlacesSnapshotOptions *)v3 setCacheDirectoryPath:v6];

    [(PXPlacesSnapshotOptions *)v3 setQueue:WeakRetained[4]];
    [(PXPlacesSnapshotOptions *)v3 setShouldSkipPlaceholder:1];
    v7 = [WeakRetained factory];
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __89__PXPlacesAlbumCoverProvider_requestPlacesAlbumCover_snapshotTraitCollection_completion___block_invoke_2;
    v9[3] = &unk_1E7730308;
    v9[4] = WeakRetained;
    v10 = v8;
    v11 = *(a1 + 48);
    [v7 requestPlacesLibraryAlbumSnapshotWithSnapshotOptions:v3 snapshotTraitCollection:v10 andCompletion:v9];
  }
}

void __89__PXPlacesAlbumCoverProvider_requestPlacesAlbumCover_snapshotTraitCollection_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  [*(a1 + 32) setCachedCount:a3];
  v16 = 0;
  v15 = 0;
  [*(a1 + 32) _fetchCachedSnapshotImage:&v16 andIdentifier:&v15 forUserInterfaceStyle:{objc_msgSend(*(a1 + 40), "userInterfaceStyle")}];
  v7 = v16;
  v8 = v15;
  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, 0, a3, v6);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PXPlacesAlbumCoverProvider_requestPlacesAlbumCover_snapshotTraitCollection_completion___block_invoke_3;
  block[3] = &unk_1E774A1B8;
  block[4] = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
}

void __89__PXPlacesAlbumCoverProvider_requestPlacesAlbumCover_snapshotTraitCollection_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    objc_storeStrong((v1 + 8), *(a1 + 40));
    v3 = *(a1 + 48);
    v4 = (*(a1 + 32) + 16);

    objc_storeStrong(v4, v3);
  }
}

- (void)setCachedCount:(int64_t)count
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cachedCount = count;
  objc_sync_exit(obj);
}

- (int64_t)cachedCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedCount = selfCopy->_cachedCount;
  objc_sync_exit(selfCopy);

  return cachedCount;
}

- (PXPlacesAlbumCoverProvider)initWithDelegate:(id)delegate andPlacesCollection:(id)collection
{
  delegateCopy = delegate;
  collectionCopy = collection;
  v22.receiver = self;
  v22.super_class = PXPlacesAlbumCoverProvider;
  v9 = [(PXPlacesAlbumCoverProvider *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_factoryDelegate, delegate);
    objc_storeStrong(&v10->_placesCollection, collection);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);

    v13 = dispatch_queue_create("com.apple.photos.places.AlbumCoverProvider-Background", v12);
    backgroundQueue = v10->_backgroundQueue;
    v10->_backgroundQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_UTILITY, 0);

    v17 = dispatch_queue_create("com.apple.photos.places.AlbumCoverProvider-Requests", v16);
    requestsQueue = v10->_requestsQueue;
    v10->_requestsQueue = v17;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cachedPlaceholders = v10->_cachedPlaceholders;
    v10->_cachedPlaceholders = dictionary;
  }

  return v10;
}

+ (id)_cachedSnapshotPathForFilename:(id)filename
{
  v3 = _cachedSnapshotPathForFilename__onceToken;
  filenameCopy = filename;
  if (v3 != -1)
  {
    dispatch_once(&_cachedSnapshotPathForFilename__onceToken, &__block_literal_global_200);
  }

  v5 = [_cachedSnapshotPathForFilename__systemLibraryPathManager photoDirectoryWithType:29 additionalPathComponents:filenameCopy];

  return v5;
}

void __61__PXPlacesAlbumCoverProvider__cachedSnapshotPathForFilename___block_invoke()
{
  v0 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v1 = _cachedSnapshotPathForFilename__systemLibraryPathManager;
  _cachedSnapshotPathForFilename__systemLibraryPathManager = v0;
}

+ (id)_cachedSnapshotPathDark
{
  if (_cachedSnapshotPathDark_onceToken != -1)
  {
    dispatch_once(&_cachedSnapshotPathDark_onceToken, &__block_literal_global_198);
  }

  v3 = _cachedSnapshotPathDark_cachedSnapshotPathDark;

  return v3;
}

void __53__PXPlacesAlbumCoverProvider__cachedSnapshotPathDark__block_invoke()
{
  v0 = [PXPlacesAlbumCoverProvider _cachedSnapshotPathForFilename:@"PXPlacesAlbumImageCached_Dark.jpg"];
  v1 = _cachedSnapshotPathDark_cachedSnapshotPathDark;
  _cachedSnapshotPathDark_cachedSnapshotPathDark = v0;
}

+ (id)_cachedSnapshotPathLight
{
  if (_cachedSnapshotPathLight_onceToken != -1)
  {
    dispatch_once(&_cachedSnapshotPathLight_onceToken, &__block_literal_global_31497);
  }

  v3 = _cachedSnapshotPathLight_cachedSnapshotPathLight;

  return v3;
}

void __54__PXPlacesAlbumCoverProvider__cachedSnapshotPathLight__block_invoke()
{
  v0 = [PXPlacesAlbumCoverProvider _cachedSnapshotPathForFilename:@"PXPlacesAlbumImageCached.jpg"];
  v1 = _cachedSnapshotPathLight_cachedSnapshotPathLight;
  _cachedSnapshotPathLight_cachedSnapshotPathLight = v0;
}

@end