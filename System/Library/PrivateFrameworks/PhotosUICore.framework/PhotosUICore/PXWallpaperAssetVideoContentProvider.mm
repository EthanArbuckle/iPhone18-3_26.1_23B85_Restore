@interface PXWallpaperAssetVideoContentProvider
+ (id)_loadingQueue;
- (PXWallpaperAssetVideoContentProvider)init;
- (PXWallpaperAssetVideoContentProvider)initWithWallpaperAsset:(id)asset;
- (void)_handleLoadedPlayerItem:(id)item priority:(int64_t)priority error:(id)error;
- (void)_loadWallpaperAssetWithPriority:(int64_t)priority;
- (void)beginLoadingWithPriority:(int64_t)priority;
- (void)cancelLoading;
- (void)makeUniqueContentIdentifier;
@end

@implementation PXWallpaperAssetVideoContentProvider

- (void)_handleLoadedPlayerItem:(id)item priority:(int64_t)priority error:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  errorCopy = error;
  _loadingQueue = [objc_opt_class() _loadingQueue];
  dispatch_assert_queue_V2(_loadingQueue);

  v11 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v19 = itemCopy;
    v20 = 2113;
    v21 = errorCopy;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Handling loaded player item: %{private}@, error: %{private}@", buf, 0x16u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PXWallpaperAssetVideoContentProvider__handleLoadedPlayerItem_priority_error___block_invoke;
  v14[3] = &unk_1E774A768;
  v14[4] = self;
  v15 = itemCopy;
  v16 = errorCopy;
  priorityCopy = priority;
  v12 = errorCopy;
  v13 = itemCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __79__PXWallpaperAssetVideoContentProvider__handleLoadedPlayerItem_priority_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__PXWallpaperAssetVideoContentProvider__handleLoadedPlayerItem_priority_error___block_invoke_2;
  v5[3] = &unk_1E7733F98;
  v5[4] = v2;
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  [v2 performChanges:v5];
}

void __79__PXWallpaperAssetVideoContentProvider__handleLoadedPlayerItem_priority_error___block_invoke_2(uint64_t a1)
{
  v2 = [PXVideoContentProviderLoadingResult alloc];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(MEMORY[0x1E6960C98] + 16);
  v8[0] = *MEMORY[0x1E6960C98];
  v8[1] = v6;
  v8[2] = *(MEMORY[0x1E6960C98] + 32);
  v7 = [(PXVideoContentProviderLoadingResult *)v2 initWithPlayerItem:v3 url:0 timeRange:v8 timeRangeMapper:0 error:v4 priority:v5 description:@"Loaded"];
  [*(a1 + 32) setLoadingResult:v7];
}

- (void)_loadWallpaperAssetWithPriority:(int64_t)priority
{
  v5 = objc_alloc(MEMORY[0x1E6978B20]);
  asset = [(PXWallpaperAssetVideoContentProvider *)self asset];
  v7 = [v5 initWithPhotoAsset:asset];

  segmentationResourceURL = [v7 segmentationResourceURL];
  if (segmentationResourceURL)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__PXWallpaperAssetVideoContentProvider__loadWallpaperAssetWithPriority___block_invoke;
    v10[3] = &unk_1E7733F70;
    v10[4] = self;
    v10[5] = priority;
    [MEMORY[0x1E69BDED0] loadSettlingEffectVideoDataFromURL:segmentationResourceURL completion:v10];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXVideoContentProviderErrorDomain" code:1 userInfo:0];
    [(PXWallpaperAssetVideoContentProvider *)self _handleLoadedPlayerItem:0 priority:priority error:v9];
  }
}

void __72__PXWallpaperAssetVideoContentProvider__loadWallpaperAssetWithPriority___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x1E6987E28] assetWithData:v5 contentType:*MEMORY[0x1E69874C0] options:MEMORY[0x1E695E0F8]];
    v9 = [MEMORY[0x1E69880B0] playerItemWithAsset:v8];
    [*(a1 + 32) _handleLoadedPlayerItem:v9 priority:*(a1 + 40) error:0];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    if (v6)
    {
      v12 = *MEMORY[0x1E696AA08];
      v13[0] = v6;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v8 = [v10 errorWithDomain:@"PXVideoContentProviderErrorDomain" code:1 userInfo:v11];
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXVideoContentProviderErrorDomain" code:1 userInfo:0];
    }

    [*(a1 + 32) _handleLoadedPlayerItem:0 priority:*(a1 + 40) error:v8];
  }
}

- (void)cancelLoading
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXWallpaperAssetVideoContentProvider.m" lineNumber:59 description:{@"Method %s is a responsibility of subclass %@", "-[PXWallpaperAssetVideoContentProvider cancelLoading]", v6}];

  abort();
}

- (void)beginLoadingWithPriority:(int64_t)priority
{
  _loadingQueue = [objc_opt_class() _loadingQueue];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PXWallpaperAssetVideoContentProvider_beginLoadingWithPriority___block_invoke;
  block[3] = &unk_1E7749808;
  objc_copyWeak(v7, &location);
  v7[1] = priority;
  dispatch_async(_loadingQueue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __65__PXWallpaperAssetVideoContentProvider_beginLoadingWithPriority___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadWallpaperAssetWithPriority:*(a1 + 40)];
}

- (void)makeUniqueContentIdentifier
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  contentIdentifier = self->_contentIdentifier;
  self->_contentIdentifier = uUIDString;
}

- (PXWallpaperAssetVideoContentProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXWallpaperAssetVideoContentProvider.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXWallpaperAssetVideoContentProvider init]"}];

  abort();
}

- (PXWallpaperAssetVideoContentProvider)initWithWallpaperAsset:(id)asset
{
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = PXWallpaperAssetVideoContentProvider;
  v6 = [(PXWallpaperAssetVideoContentProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
    uuid = [assetCopy uuid];
    v9 = [uuid stringByAppendingString:@"-wallpaper"];
    contentIdentifier = v7->_contentIdentifier;
    v7->_contentIdentifier = v9;
  }

  return v7;
}

+ (id)_loadingQueue
{
  if (_loadingQueue_onceToken != -1)
  {
    dispatch_once(&_loadingQueue_onceToken, &__block_literal_global_63081);
  }

  v3 = _loadingQueue_loadingQueue;

  return v3;
}

@end