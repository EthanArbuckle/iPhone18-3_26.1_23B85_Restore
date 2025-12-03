@interface PXAssetsRecoveryCountsManager
- (NSString)bannerSubtitle;
- (NSString)bannerTitle;
- (PHAsset)lastRecoveredAsset;
- (PHAssetCollection)recoveredAssetsSmartAlbum;
- (PXAssetsRecoveryCountsManager)init;
- (PXAssetsRecoveryCountsManager)initWithPhotoLibrary:(id)library;
- (void)_startFetchingRecoveredAssets;
- (void)_updateShouldShowBanner;
- (void)markAsRead;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
- (void)photoLibraryLocalDefaults:(id)defaults didChangeValueForKey:(id)key;
- (void)setBannerDismissalDate:(id)date;
- (void)setRecoveredAssetsFetchResult:(id)result;
- (void)setShouldShowBanner:(BOOL)banner;
@end

@implementation PXAssetsRecoveryCountsManager

- (void)photoLibraryLocalDefaults:(id)defaults didChangeValueForKey:(id)key
{
  defaultsCopy = defaults;
  if ([key isEqualToString:@"AssetsRecoveryBannerDismissalDate"])
  {
    defaultsCopy;
    px_dispatch_on_main_queue();
  }
}

uint64_t __80__PXAssetsRecoveryCountsManager_photoLibraryLocalDefaults_didChangeValueForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) dateForKey:@"AssetsRecoveryBannerDismissalDate"];
  [*(a1 + 32) setBannerDismissalDate:v2];

  v3 = *(a1 + 32);

  return [v3 _updateShouldShowBanner];
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  queueCopy = queue;
  infoCopy = info;
  if (self->_recoveredAssetsFetchResult)
  {
    v7 = [queueCopy changeDetailsForFetchResult:?];
    if (v7)
    {
      v8 = v7;
      fetchResultAfterChanges = [v7 fetchResultAfterChanges];
      [(PXAssetsRecoveryCountsManager *)self setRecoveredAssetsFetchResult:fetchResultAfterChanges];
    }
  }
}

- (void)_updateShouldShowBanner
{
  recoveredAssetsFetchResult = [(PXAssetsRecoveryCountsManager *)self recoveredAssetsFetchResult];
  firstObject = [recoveredAssetsFetchResult firstObject];

  curationProperties = [firstObject curationProperties];
  addedDate = [curationProperties addedDate];

  bannerDismissalDate = [(PXAssetsRecoveryCountsManager *)self bannerDismissalDate];
  v8 = bannerDismissalDate;
  if (addedDate)
  {
    if (bannerDismissalDate)
    {
      v9 = [bannerDismissalDate compare:addedDate] == -1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PXAssetsRecoveryCountsManager__updateShouldShowBanner__block_invoke;
  v10[3] = &unk_1E774C670;
  v10[4] = self;
  v11 = v9;
  [(PXAssetsRecoveryCountsManager *)self performChanges:v10];
}

- (void)_startFetchingRecoveredAssets
{
  photoLibrary = [(PXAssetsRecoveryCountsManager *)self photoLibrary];
  px_localDefaults = [photoLibrary px_localDefaults];

  v5 = [px_localDefaults dateForKey:@"AssetsRecoveryBannerDismissalDate"];
  [(PXAssetsRecoveryCountsManager *)self setBannerDismissalDate:v5];

  [px_localDefaults registerChangeObserver:self context:PXPhotoLibraryLocalDefaultsObservationContext];
  queue = [(PXAssetsRecoveryCountsManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PXAssetsRecoveryCountsManager__startFetchingRecoveredAssets__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(queue, block);
}

void __62__PXAssetsRecoveryCountsManager__startFetchingRecoveredAssets__block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v14[0] = *MEMORY[0x1E6978C20];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v3 setFetchPropertySets:v4];

  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:0];
  v13 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v3 setInternalSortDescriptors:v6];

  v7 = MEMORY[0x1E6978630];
  v8 = [*(a1 + 32) recoveredAssetsSmartAlbum];
  v9 = [v7 fetchAssetsInAssetCollection:v8 options:v3];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PXAssetsRecoveryCountsManager__startFetchingRecoveredAssets__block_invoke_2;
  block[3] = &unk_1E774C620;
  block[4] = *(a1 + 32);
  v12 = v9;
  v10 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)markAsRead
{
  v3 = [MEMORY[0x1E695DF00] now];
  [(PXAssetsRecoveryCountsManager *)self setBannerDismissalDate:v3];
}

- (void)setShouldShowBanner:(BOOL)banner
{
  if (self->_shouldShowBanner != banner)
  {
    self->_shouldShowBanner = banner;
    [(PXAssetsRecoveryCountsManager *)self signalChange:1];
  }
}

- (void)setBannerDismissalDate:(id)date
{
  dateCopy = date;
  v6 = dateCopy;
  if (self->_bannerDismissalDate != dateCopy && ([(NSDate *)dateCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_bannerDismissalDate, date);
    queue = [(PXAssetsRecoveryCountsManager *)self queue];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __56__PXAssetsRecoveryCountsManager_setBannerDismissalDate___block_invoke;
    v11 = &unk_1E774C620;
    selfCopy = self;
    v13 = v6;
    dispatch_async(queue, &v8);

    [(PXAssetsRecoveryCountsManager *)self _updateShouldShowBanner:v8];
  }
}

void __56__PXAssetsRecoveryCountsManager_setBannerDismissalDate___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) photoLibrary];
  v2 = [v3 px_localDefaults];
  [v2 setDate:*(a1 + 40) forKey:@"AssetsRecoveryBannerDismissalDate"];
}

- (void)setRecoveredAssetsFetchResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_recoveredAssetsFetchResult != resultCopy && ([(PHFetchResult *)resultCopy isEqual:?]& 1) == 0)
  {
    v7 = [(PHFetchResult *)self->_recoveredAssetsFetchResult count];
    objc_storeStrong(&self->_recoveredAssetsFetchResult, result);
    if (v7 != [(PHFetchResult *)self->_recoveredAssetsFetchResult count])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __63__PXAssetsRecoveryCountsManager_setRecoveredAssetsFetchResult___block_invoke;
      v8[3] = &unk_1E774C5F8;
      v8[4] = self;
      [(PXAssetsRecoveryCountsManager *)self performChanges:v8];
    }

    [(PXAssetsRecoveryCountsManager *)self _updateShouldShowBanner];
  }
}

- (PHAssetCollection)recoveredAssetsSmartAlbum
{
  recoveredAssetsSmartAlbum = self->_recoveredAssetsSmartAlbum;
  if (!recoveredAssetsSmartAlbum)
  {
    photoLibrary = [(PXAssetsRecoveryCountsManager *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v6 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:-[PXAssetsRecoveryCountsManager assetCollectionSubtype](self options:{"assetCollectionSubtype"), librarySpecificFetchOptions}];
    firstObject = [v6 firstObject];
    v8 = self->_recoveredAssetsSmartAlbum;
    self->_recoveredAssetsSmartAlbum = firstObject;

    recoveredAssetsSmartAlbum = self->_recoveredAssetsSmartAlbum;
  }

  return recoveredAssetsSmartAlbum;
}

- (PHAsset)lastRecoveredAsset
{
  recoveredAssetsFetchResult = [(PXAssetsRecoveryCountsManager *)self recoveredAssetsFetchResult];
  firstObject = [recoveredAssetsFetchResult firstObject];

  return firstObject;
}

- (NSString)bannerSubtitle
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PXLocalization currentDeviceCanonicalModel];
  v4 = [v2 stringWithFormat:@"PXAssetsRecoveryBannerSubtitle_%@", v3];

  v5 = PXLocalizedStringFromTable(v4, @"PhotosUICore");

  return v5;
}

- (NSString)bannerTitle
{
  [(PXAssetsRecoveryCountsManager *)self recoveredAssetsFetchResult];
  [objc_claimAutoreleasedReturnValue() count];
  PXLocalizedCountsDescription(@"PXAssetsRecoveryBannerTitle");
}

- (PXAssetsRecoveryCountsManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsRecoveryCountsManager.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXAssetsRecoveryCountsManager init]"}];

  abort();
}

- (PXAssetsRecoveryCountsManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = PXAssetsRecoveryCountsManager;
  v6 = [(PXAssetsRecoveryCountsManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    [libraryCopy px_registerChangeObserver:v7];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.photos.assetsRecoveryCounts-fetch", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    [(PXAssetsRecoveryCountsManager *)v7 _startFetchingRecoveredAssets];
  }

  return v7;
}

@end