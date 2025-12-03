@interface PXContentSyndicationMockSingleAssetsDataSourceManager
+ (id)createCountsController;
- (PXContentSyndicationMockSingleAssetsDataSourceManager)init;
- (id)assetFetchResultProvider;
- (id)createAssetsDataSourceManager;
- (id)createInitialDataSource;
- (id)imageProvider;
- (id)prepareForPhotoLibraryChange:(id)change;
- (id)socialLayerHighlightProvider;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
@end

@implementation PXContentSyndicationMockSingleAssetsDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  v32[1] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  infoCopy = info;
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  if (dataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = objc_opt_class();
    v26 = NSStringFromClass(v27);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:265 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.dataSource", v26, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:265 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.dataSource", v26}];
  }

LABEL_3:
  v10 = [infoCopy objectForKeyedSubscript:@"currentDataSource"];

  if (v10 == dataSource)
  {
    v11 = [infoCopy objectForKeyedSubscript:@"preparedDataSource"];
    v12 = [infoCopy objectForKeyedSubscript:@"preparedChangeDetails"];
  }

  else
  {
    v30 = 0;
    v11 = [dataSource dataSourceUpdatedWithChange:queueCopy changeDetails:&v30];
    v12 = v30;
  }

  v13 = v12;
  if (v11 != dataSource)
  {
    v14 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    v29 = infoCopy;
    selfCopy = self;
    v17 = queueCopy;
    identifier2 = [v11 identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v31 = &unk_1F1909940;
    v32[0] = v13;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v21 = identifier2;
    queueCopy = v17;
    v22 = [v14 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:v21 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v20 subitemChangeDetailsByItemBySection:0];

    v23 = selfCopy;
    infoCopy = v29;
    [(PXSectionedDataSourceManager *)v23 setDataSource:v11 changeDetails:v22];
  }
}

- (id)prepareForPhotoLibraryChange:(id)change
{
  v21[3] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4223;
  v18 = __Block_byref_object_dispose__4224;
  v19 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PXContentSyndicationMockSingleAssetsDataSourceManager_prepareForPhotoLibraryChange___block_invoke;
  block[3] = &unk_1E77477B8;
  block[4] = self;
  block[5] = &v14;
  block[6] = a2;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v6 = v15[5];
  v12 = 0;
  v7 = [v6 dataSourceUpdatedWithChange:changeCopy changeDetails:&v12];
  v8 = v12;
  v9 = v15[5];
  v20[0] = @"currentDataSource";
  v20[1] = @"preparedDataSource";
  v21[0] = v9;
  v21[1] = v7;
  v20[2] = @"preparedChangeDetails";
  v21[2] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  _Block_object_dispose(&v14, 8);

  return v10;
}

void __86__PXContentSyndicationMockSingleAssetsDataSourceManager_prepareForPhotoLibraryChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v9 = NSStringFromClass(v12);
    v13 = [v2 px_descriptionForAssertionMessage];
    [v5 handleFailureInMethod:v10 object:v11 file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:251 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.dataSource", v9, v13}];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 handleFailureInMethod:v6 object:v7 file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:251 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.dataSource", v9}];
  }

LABEL_3:
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)createAssetsDataSourceManager
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  v5 = dataSource;
  if (dataSource)
  {
    [dataSource firstItemIndexPath];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __86__PXContentSyndicationMockSingleAssetsDataSourceManager_createAssetsDataSourceManager__block_invoke;
  v15 = &unk_1E7744508;
  v16 = v5;
  v17 = v3;
  v6 = v3;
  v7 = v5;
  [v7 enumerateItemIndexPathsStartingAtIndexPath:v18 reverseDirection:0 usingBlock:&v12];
  v8 = objc_alloc(MEMORY[0x1E69788E0]);
  v9 = [v8 initWithObjects:v6 photoLibrary:self->_photoLibrary fetchType:*MEMORY[0x1E6978DA0] fetchPropertySets:0 identifier:0 registerIfNeeded:{1, v12, v13, v14, v15}];
  v10 = PXContentSyndicationAssetsDataSourceManagerForAssetCollectionFetchResult(v9);

  return v10;
}

void __86__PXContentSyndicationMockSingleAssetsDataSourceManager_createAssetsDataSourceManager__block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = [v3 assetCollectionAtItemIndexPath:v6];
  [*(a1 + 40) addObject:v5];
}

- (id)socialLayerHighlightProvider
{
  highlightProvider = self->_highlightProvider;
  if (!highlightProvider)
  {
    v4 = [[PXContentSyndicationPhotoKitSocialLayerHighlightProvider alloc] initWithHighlightFetchBlock:&__block_literal_global_4226];
    v5 = self->_highlightProvider;
    self->_highlightProvider = v4;

    highlightProvider = self->_highlightProvider;
  }

  return highlightProvider;
}

- (id)imageProvider
{
  imageProvider = self->_imageProvider;
  if (!imageProvider)
  {
    v4 = PXContentSyndicationImageProviderForPhotoLibrary(self->_photoLibrary);
    v5 = self->_imageProvider;
    self->_imageProvider = v4;

    imageProvider = self->_imageProvider;
  }

  return imageProvider;
}

- (id)assetFetchResultProvider
{
  assetFetchResultProvider = self->_assetFetchResultProvider;
  if (!assetFetchResultProvider)
  {
    v4 = PXContentSyndicationAssetFetchResultProviderForPhotoLibrary(self->_photoLibrary);
    v5 = self->_assetFetchResultProvider;
    self->_assetFetchResultProvider = v4;

    assetFetchResultProvider = self->_assetFetchResultProvider;
  }

  return assetFetchResultProvider;
}

- (id)createInitialDataSource
{
  photoLibrary = [(PHFetchResult *)self->_allPhotosFetchResult photoLibrary];
  [photoLibrary px_registerChangeObserver:self];
  v4 = [[PXContentSyndicationMockSingleAssetsDataSource alloc] initWithFetchResult:self->_allPhotosFetchResult];

  return v4;
}

- (PXContentSyndicationMockSingleAssetsDataSourceManager)init
{
  v19 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PXContentSyndicationMockSingleAssetsDataSourceManager;
  v2 = [(PXSectionedDataSourceManager *)&v16 init];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = +[PXContentSyndicationSettings sharedInstance];
  if ([v3 useUserLibraryForSyndicatedAssets])
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v5 = 0;
    if (px_deprecated_appPhotoLibrary)
    {
LABEL_4:
      photoLibrary = v2->_photoLibrary;
      v2->_photoLibrary = px_deprecated_appPhotoLibrary;
      v7 = px_deprecated_appPhotoLibrary;

      v8 = +[PXContentSyndicationSettings sharedInstance];
      maxNumberOfBatches = [v8 maxNumberOfBatches];

      v10 = PXContentSyndicationMockSingleAssetsFetchResult(v2->_photoLibrary, 0, maxNumberOfBatches);
      allPhotosFetchResult = v2->_allPhotosFetchResult;
      v2->_allPhotosFetchResult = v10;

LABEL_5:
      v12 = v2;
      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:3 error:&v15];
    v5 = v15;
    if (px_deprecated_appPhotoLibrary)
    {
      goto LABEL_4;
    }
  }

  v13 = PLUIGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Error opening syndication library: %@", buf, 0xCu);
  }

  v12 = 0;
LABEL_10:

  return v12;
}

+ (id)createCountsController
{
  v2 = objc_alloc_init(PXContentSyndicationPhotoKitCountsController);

  return v2;
}

@end