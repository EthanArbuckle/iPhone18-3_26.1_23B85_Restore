@interface PXMacSyncedAssetsStatusProvider
- (BOOL)hasAnyAssets;
- (PXMacSyncedAssetsStatusProvider)init;
- (PXMacSyncedAssetsStatusProvider)initWithPhotoLibrary:(id)library;
- (void)_startFetchingMacSyncedAssets;
- (void)_updateShouldShowBanner;
- (void)markAsRead;
- (void)markAsReadIfNeeded;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
- (void)photoLibraryLocalDefaults:(id)defaults didChangeValueForKey:(id)key;
- (void)setAssetsFetchResult:(id)result;
- (void)setBannerDismissalDate:(id)date;
- (void)setShouldShowBanner:(BOOL)banner;
@end

@implementation PXMacSyncedAssetsStatusProvider

- (void)_startFetchingMacSyncedAssets
{
  photoLibrary = [(PXMacSyncedAssetsStatusProvider *)self photoLibrary];
  px_localDefaults = [photoLibrary px_localDefaults];

  v5 = [px_localDefaults dateForKey:@"MacSyncedAssetsBannerDismissalDate"];
  [(PXMacSyncedAssetsStatusProvider *)self setBannerDismissalDate:v5];

  [px_localDefaults registerChangeObserver:self context:PXPhotoLibraryLocalDefaultsObservationContext_259314];
  queue = [(PXMacSyncedAssetsStatusProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PXMacSyncedAssetsStatusProvider__startFetchingMacSyncedAssets__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(queue, block);
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
  assetsFetchResult = [(PXMacSyncedAssetsStatusProvider *)self assetsFetchResult];
  v3 = [assetsFetchResult count] != 0;

  return v3;
}

- (void)_updateShouldShowBanner
{
  if ([(PXMacSyncedAssetsStatusProvider *)self hasAnyAssets])
  {
    bannerDismissalDate = [(PXMacSyncedAssetsStatusProvider *)self bannerDismissalDate];
    v4 = bannerDismissalDate == 0;
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

- (void)photoLibraryLocalDefaults:(id)defaults didChangeValueForKey:(id)key
{
  defaultsCopy = defaults;
  if ([key isEqualToString:@"MacSyncedAssetsBannerDismissalDate"])
  {
    defaultsCopy;
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

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  queueCopy = queue;
  infoCopy = info;
  if (self->_assetsFetchResult)
  {
    v7 = [queueCopy changeDetailsForFetchResult:?];
    if (v7)
    {
      v8 = v7;
      fetchResultAfterChanges = [v7 fetchResultAfterChanges];
      [(PXMacSyncedAssetsStatusProvider *)self setAssetsFetchResult:fetchResultAfterChanges];
    }
  }
}

- (void)markAsReadIfNeeded
{
  bannerDismissalDate = [(PXMacSyncedAssetsStatusProvider *)self bannerDismissalDate];

  if (!bannerDismissalDate)
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

- (void)setShouldShowBanner:(BOOL)banner
{
  if (self->_shouldShowBanner != banner)
  {
    self->_shouldShowBanner = banner;
    [(PXMacSyncedAssetsStatusProvider *)self signalChange:2];
  }
}

- (void)setBannerDismissalDate:(id)date
{
  dateCopy = date;
  v6 = dateCopy;
  if (self->_bannerDismissalDate != dateCopy && ([(NSDate *)dateCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_bannerDismissalDate, date);
    queue = [(PXMacSyncedAssetsStatusProvider *)self queue];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __58__PXMacSyncedAssetsStatusProvider_setBannerDismissalDate___block_invoke;
    v11 = &unk_1E774C620;
    selfCopy = self;
    v13 = v6;
    dispatch_async(queue, &v8);

    [(PXMacSyncedAssetsStatusProvider *)self _updateShouldShowBanner:v8];
  }
}

void __58__PXMacSyncedAssetsStatusProvider_setBannerDismissalDate___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) photoLibrary];
  v2 = [v3 px_localDefaults];
  [v2 setDate:*(a1 + 40) forKey:@"MacSyncedAssetsBannerDismissalDate"];
}

- (void)setAssetsFetchResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_assetsFetchResult != resultCopy && ([(PHFetchResult *)resultCopy isEqual:?]& 1) == 0)
  {
    hasAnyAssets = [(PXMacSyncedAssetsStatusProvider *)self hasAnyAssets];
    objc_storeStrong(&self->_assetsFetchResult, result);
    if (hasAnyAssets != [(PXMacSyncedAssetsStatusProvider *)self hasAnyAssets])
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMacSyncedAssetsStatusProvider.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXMacSyncedAssetsStatusProvider init]"}];

  abort();
}

- (PXMacSyncedAssetsStatusProvider)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = PXMacSyncedAssetsStatusProvider;
  v6 = [(PXMacSyncedAssetsStatusProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    [libraryCopy px_registerChangeObserver:v7];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.photos.macSyncedAssets-fetch", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    [(PXMacSyncedAssetsStatusProvider *)v7 _startFetchingMacSyncedAssets];
  }

  return v7;
}

@end