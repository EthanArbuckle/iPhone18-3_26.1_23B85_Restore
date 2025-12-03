@interface PXContentSyndicationMockCMMDataSourceManager
+ (id)createCountsController;
- (id)allAssetsFetchResult;
- (id)assetFetchResultProvider;
- (id)createAssetsDataSourceManager;
- (id)createInitialDataSource;
- (id)imageProvider;
- (id)socialLayerHighlightProvider;
- (void)_handleDataSourceChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXContentSyndicationMockCMMDataSourceManager

+ (id)createCountsController
{
  v2 = objc_alloc_init(PXContentSyndicationPhotoKitCountsController);

  return v2;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && PXContentSyndicationMockCMMDataSourceManagerContext == context)
  {
    [(PXContentSyndicationMockCMMDataSourceManager *)self _handleDataSourceChange];
  }
}

- (void)_handleDataSourceChange
{
  cmmDataSourceManager = [(PXContentSyndicationMockCMMDataSourceManager *)self cmmDataSourceManager];
  dataSource = [cmmDataSourceManager dataSource];

  v4 = [[PXContentSyndicationMockCMMDataSource alloc] initWithCMMDataSource:dataSource];
  cmmDataSourceManager2 = [(PXContentSyndicationMockCMMDataSourceManager *)self cmmDataSourceManager];
  dataSource2 = [(PXSectionedDataSourceManager *)self dataSource];
  cmmDataSource = [dataSource2 cmmDataSource];
  v8 = [cmmDataSourceManager2 changeDetailsFromDataSource:cmmDataSource toDataSource:dataSource];

  v9 = [off_1E77218B0 alloc];
  dataSource3 = [(PXSectionedDataSourceManager *)self dataSource];
  v11 = [v9 initWithSectionedDataSourceChangeDetails:v8 withFromDataSourceIdentifier:objc_msgSend(dataSource3 toDataSourceIdentifier:{"identifier"), -[PXContentSyndicationMockCMMDataSource identifier](v4, "identifier")}];

  [(PXSectionedDataSourceManager *)self setDataSource:v4 changeDetails:v11];
}

- (id)createInitialDataSource
{
  v3 = +[PXCMMInvitationsDataSourceManager currentDataSourceManager];
  cmmDataSourceManager = self->_cmmDataSourceManager;
  self->_cmmDataSourceManager = v3;

  [(PXSectionedDataSourceManager *)self->_cmmDataSourceManager registerChangeObserver:self context:PXContentSyndicationMockCMMDataSourceManagerContext];
  cmmDataSourceManager = [(PXContentSyndicationMockCMMDataSourceManager *)self cmmDataSourceManager];
  dataSource = [cmmDataSourceManager dataSource];

  v7 = [[PXContentSyndicationMockCMMDataSource alloc] initWithCMMDataSource:dataSource];

  return v7;
}

- (id)createAssetsDataSourceManager
{
  v9[1] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  librarySpecificFetchOptions = [mEMORY[0x1E69789A8] librarySpecificFetchOptions];

  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v5];

  v6 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:7 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v7 = PXContentSyndicationAssetsDataSourceManagerForAssetCollectionFetchResult(v6);

  return v7;
}

- (id)socialLayerHighlightProvider
{
  highlightProvider = self->_highlightProvider;
  if (!highlightProvider)
  {
    v4 = [[PXContentSyndicationPhotoKitSocialLayerHighlightProvider alloc] initWithHighlightFetchBlock:&__block_literal_global_243825];
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
    mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
    v5 = PXContentSyndicationImageProviderForPhotoLibrary(mEMORY[0x1E69789A8]);
    v6 = self->_imageProvider;
    self->_imageProvider = v5;

    imageProvider = self->_imageProvider;
  }

  return imageProvider;
}

- (id)assetFetchResultProvider
{
  assetFetchResultProvider = self->_assetFetchResultProvider;
  if (!assetFetchResultProvider)
  {
    mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
    v5 = PXContentSyndicationAssetFetchResultProviderForPhotoLibrary(mEMORY[0x1E69789A8]);
    v6 = self->_assetFetchResultProvider;
    self->_assetFetchResultProvider = v5;

    assetFetchResultProvider = self->_assetFetchResultProvider;
  }

  return assetFetchResultProvider;
}

- (id)allAssetsFetchResult
{
  v10[1] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  if (!mEMORY[0x1E69789A8])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PHFetchResult<PHAsset *> *_AllPhotosFetchResultForPhotoLibrary(PHPhotoLibrary *__strong)"];
    [currentHandler handleFailureInFunction:v9 file:@"PXContentSyndicationMockCMMDataSource.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  librarySpecificFetchOptions = [mEMORY[0x1E69789A8] librarySpecificFetchOptions];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  [librarySpecificFetchOptions setInternalSortDescriptors:v5];
  v6 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];

  return v6;
}

@end