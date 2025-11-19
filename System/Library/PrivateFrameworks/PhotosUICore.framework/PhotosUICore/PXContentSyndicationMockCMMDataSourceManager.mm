@interface PXContentSyndicationMockCMMDataSourceManager
+ (id)createCountsController;
- (id)allAssetsFetchResult;
- (id)assetFetchResultProvider;
- (id)createAssetsDataSourceManager;
- (id)createInitialDataSource;
- (id)imageProvider;
- (id)socialLayerHighlightProvider;
- (void)_handleDataSourceChange;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXContentSyndicationMockCMMDataSourceManager

+ (id)createCountsController
{
  v2 = objc_alloc_init(PXContentSyndicationPhotoKitCountsController);

  return v2;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 1) != 0 && PXContentSyndicationMockCMMDataSourceManagerContext == a5)
  {
    [(PXContentSyndicationMockCMMDataSourceManager *)self _handleDataSourceChange];
  }
}

- (void)_handleDataSourceChange
{
  v3 = [(PXContentSyndicationMockCMMDataSourceManager *)self cmmDataSourceManager];
  v12 = [v3 dataSource];

  v4 = [[PXContentSyndicationMockCMMDataSource alloc] initWithCMMDataSource:v12];
  v5 = [(PXContentSyndicationMockCMMDataSourceManager *)self cmmDataSourceManager];
  v6 = [(PXSectionedDataSourceManager *)self dataSource];
  v7 = [v6 cmmDataSource];
  v8 = [v5 changeDetailsFromDataSource:v7 toDataSource:v12];

  v9 = [off_1E77218B0 alloc];
  v10 = [(PXSectionedDataSourceManager *)self dataSource];
  v11 = [v9 initWithSectionedDataSourceChangeDetails:v8 withFromDataSourceIdentifier:objc_msgSend(v10 toDataSourceIdentifier:{"identifier"), -[PXContentSyndicationMockCMMDataSource identifier](v4, "identifier")}];

  [(PXSectionedDataSourceManager *)self setDataSource:v4 changeDetails:v11];
}

- (id)createInitialDataSource
{
  v3 = +[PXCMMInvitationsDataSourceManager currentDataSourceManager];
  cmmDataSourceManager = self->_cmmDataSourceManager;
  self->_cmmDataSourceManager = v3;

  [(PXSectionedDataSourceManager *)self->_cmmDataSourceManager registerChangeObserver:self context:PXContentSyndicationMockCMMDataSourceManagerContext];
  v5 = [(PXContentSyndicationMockCMMDataSourceManager *)self cmmDataSourceManager];
  v6 = [v5 dataSource];

  v7 = [[PXContentSyndicationMockCMMDataSource alloc] initWithCMMDataSource:v6];

  return v7;
}

- (id)createAssetsDataSourceManager
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v3 setSortDescriptors:v5];

  v6 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:7 subtype:0x7FFFFFFFFFFFFFFFLL options:v3];
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
    v4 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
    v5 = PXContentSyndicationImageProviderForPhotoLibrary(v4);
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
    v4 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
    v5 = PXContentSyndicationAssetFetchResultProviderForPhotoLibrary(v4);
    v6 = self->_assetFetchResultProvider;
    self->_assetFetchResultProvider = v5;

    assetFetchResultProvider = self->_assetFetchResultProvider;
  }

  return assetFetchResultProvider;
}

- (id)allAssetsFetchResult
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  if (!v2)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PHFetchResult<PHAsset *> *_AllPhotosFetchResultForPhotoLibrary(PHPhotoLibrary *__strong)"];
    [v8 handleFailureInFunction:v9 file:@"PXContentSyndicationMockCMMDataSource.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v3 = [v2 librarySpecificFetchOptions];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  [v3 setInternalSortDescriptors:v5];
  v6 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v3];

  return v6;
}

@end