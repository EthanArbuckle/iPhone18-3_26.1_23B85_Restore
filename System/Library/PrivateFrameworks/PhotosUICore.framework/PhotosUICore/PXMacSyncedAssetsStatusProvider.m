@interface PXMacSyncedAssetsStatusProvider
- (BOOL)hasAnyAssets;
- (PXMacSyncedAssetsStatusProvider)init;
- (PXMacSyncedAssetsStatusProvider)initWithPhotoLibrary:(id)a3;
- (void)_startFetchingMacSyncedAssets;
- (void)_updateShouldShowBanner;
- (void)markAsRead;
- (void)markAsReadIfNeeded;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
- (void)photoLibraryLocalDefaults:(id)a3 didChangeValueForKey:(id)a4;
- (void)setAssetsFetchResult:(id)a3;
- (void)setBannerDismissalDate:(id)a3;
- (void)setShouldShowBanner:(BOOL)a3;
@end

@implementation PXMacSyncedAssetsStatusProvider

- (void)_startFetchingMacSyncedAssets
{
  v3 = [(PXMacSyncedAssetsStatusProvider *)self photoLibrary];
  v4 = [v3 px_localDefaults];

  v5 = [v4 dateForKey:@"MacSyncedAssetsBannerDismissalDate"];
  [(PXMacSyncedAssetsStatusProvider *)self setBannerDismissalDate:v5];

  [v4 registerChangeObserver:self context:PXPhotoLibraryLocalDefaultsObservationContext_259314];
  v6 = [(PXMacSyncedAssetsStatusProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PXMacSyncedAssetsStatusProvider__startFetchingMacSyncedAssets__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(v6, block);
}

void __64__PXMacSyncedAssetsStatusProvider__startFetchingMacSyncedAssets__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  [v3 setFetchLimit:1];
  v9[0] = *MEMORY[0x1E6978C18];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v3 setFetchPropertySets:v4];

  [v3 setIncludeAssetSourceTypes:4];
  v5 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PXMacSyncedAssetsStatusProvider__startFetchingMacSyncedAssets__block_invoke_2;
  v7[3] = &unk_1E774C620;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (BOOL)hasAnyAssets
{
  v2 = [(PXMacSyncedAssetsStatusProvider *)self assetsFetchResult];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_updateShouldShowBanner
{
  if ([(PXMacSyncedAssetsStatusProvider *)self hasAnyAssets])
  {
    v3 = [(PXMacSyncedAssetsStatusProvider *)self bannerDismissalDate];
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PXMacSyncedAssetsStatusProvider__updateShouldShowBanner__block_invoke;
  v5[3] = &unk_1E774C670;
  v5[4] = self;
  v6 = v4;
  [(PXMacSyncedAssetsStatusProvider *)self performChanges:v5];
}

- (void)photoLibraryLocalDefaults:(id)a3 didChangeValueForKey:(id)a4
{
  v5 = a3;
  if ([a4 isEqualToString:@"MacSyncedAssetsBannerDismissalDate"])
  {
    v5;
    px_dispatch_on_main_queue();
  }
}

uint64_t __82__PXMacSyncedAssetsStatusProvider_photoLibraryLocalDefaults_didChangeValueForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) dateForKey:@"MacSyncedAssetsBannerDismissalDate"];
  [*(a1 + 32) setBannerDismissalDate:v2];

  v3 = *(a1 + 32);

  return [v3 _updateShouldShowBanner];
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self->_assetsFetchResult)
  {
    v7 = [v10 changeDetailsForFetchResult:?];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 fetchResultAfterChanges];
      [(PXMacSyncedAssetsStatusProvider *)self setAssetsFetchResult:v9];
    }
  }
}

- (void)markAsReadIfNeeded
{
  v3 = [(PXMacSyncedAssetsStatusProvider *)self bannerDismissalDate];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF00] now];
    [(PXMacSyncedAssetsStatusProvider *)self setBannerDismissalDate:v4];
  }
}

- (void)markAsRead
{
  v3 = [MEMORY[0x1E695DF00] now];
  [(PXMacSyncedAssetsStatusProvider *)self setBannerDismissalDate:v3];
}

- (void)setShouldShowBanner:(BOOL)a3
{
  if (self->_shouldShowBanner != a3)
  {
    self->_shouldShowBanner = a3;
    [(PXMacSyncedAssetsStatusProvider *)self signalChange:2];
  }
}

- (void)setBannerDismissalDate:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_bannerDismissalDate != v5 && ([(NSDate *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_bannerDismissalDate, a3);
    v7 = [(PXMacSyncedAssetsStatusProvider *)self queue];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __58__PXMacSyncedAssetsStatusProvider_setBannerDismissalDate___block_invoke;
    v11 = &unk_1E774C620;
    v12 = self;
    v13 = v6;
    dispatch_async(v7, &v8);

    [(PXMacSyncedAssetsStatusProvider *)self _updateShouldShowBanner:v8];
  }
}

void __58__PXMacSyncedAssetsStatusProvider_setBannerDismissalDate___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) photoLibrary];
  v2 = [v3 px_localDefaults];
  [v2 setDate:*(a1 + 40) forKey:@"MacSyncedAssetsBannerDismissalDate"];
}

- (void)setAssetsFetchResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_assetsFetchResult != v5 && ([(PHFetchResult *)v5 isEqual:?]& 1) == 0)
  {
    v7 = [(PXMacSyncedAssetsStatusProvider *)self hasAnyAssets];
    objc_storeStrong(&self->_assetsFetchResult, a3);
    if (v7 != [(PXMacSyncedAssetsStatusProvider *)self hasAnyAssets])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __56__PXMacSyncedAssetsStatusProvider_setAssetsFetchResult___block_invoke;
      v8[3] = &unk_1E774C5F8;
      v8[4] = self;
      [(PXMacSyncedAssetsStatusProvider *)self performChanges:v8];
    }

    [(PXMacSyncedAssetsStatusProvider *)self _updateShouldShowBanner];
  }
}

- (PXMacSyncedAssetsStatusProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMacSyncedAssetsStatusProvider.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXMacSyncedAssetsStatusProvider init]"}];

  abort();
}

- (PXMacSyncedAssetsStatusProvider)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PXMacSyncedAssetsStatusProvider;
  v6 = [(PXMacSyncedAssetsStatusProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    [v5 px_registerChangeObserver:v7];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.photos.macSyncedAssets-fetch", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    [(PXMacSyncedAssetsStatusProvider *)v7 _startFetchingMacSyncedAssets];
  }

  return v7;
}

@end