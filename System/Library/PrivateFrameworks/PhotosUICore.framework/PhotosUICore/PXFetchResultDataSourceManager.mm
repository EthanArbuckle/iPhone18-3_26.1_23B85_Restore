@interface PXFetchResultDataSourceManager
- (PXFetchResultDataSourceManager)initWithInitialFetchResult:(id)result;
- (id)createInitialDataSource;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)setFetchResult:(id)result changeDetails:(id)details;
- (void)setPhotoLibrary:(id)library;
@end

@implementation PXFetchResultDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = [queue changeDetailsForFetchResult:self->_currentFetchResult];
  fetchResultAfterChanges = [v4 fetchResultAfterChanges];
  if (fetchResultAfterChanges)
  {
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    v6 = [[PXFetchResultDataSource alloc] initWithFetchResult:fetchResultAfterChanges];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v7 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v4];
    v8 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    identifier2 = [(PXFetchResultDataSource *)v6 identifier];
    v15 = &unk_1F190DDC8;
    v16[0] = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v8 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v11 subitemChangeDetailsByItemBySection:0];

    objc_storeStrong(&self->_currentFetchResult, fetchResultAfterChanges);
    [(PXSectionedDataSourceManager *)self setDataSource:v6 changeDetails:v12];
  }
}

- (void)setFetchResult:(id)result changeDetails:(id)details
{
  v28 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  detailsCopy = details;
  v9 = detailsCopy;
  if (detailsCopy)
  {
    fetchResultBeforeChanges = [detailsCopy fetchResultBeforeChanges];
    px_deprecated_appPhotoLibrary = fetchResultBeforeChanges;
    if (fetchResultBeforeChanges != self->_currentFetchResult)
    {

      goto LABEL_5;
    }

    fetchResultAfterChanges = [v9 fetchResultAfterChanges];

    if (fetchResultAfterChanges != resultCopy)
    {
LABEL_5:
      PXAssertGetLog();
    }
  }

  v12 = resultCopy;
  if (!resultCopy)
  {
    v13 = MEMORY[0x1E69788E0];
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v12 = [v13 emptyFetchResultWithPhotoLibrary:px_deprecated_appPhotoLibrary];
  }

  objc_storeStrong(&self->_currentFetchResult, v12);
  if (!resultCopy)
  {
  }

  photoLibrary = [(PHFetchResult *)self->_currentFetchResult photoLibrary];
  [(PXFetchResultDataSourceManager *)self setPhotoLibrary:photoLibrary];

  v15 = [[PXFetchResultDataSource alloc] initWithFetchResult:self->_currentFetchResult];
  if (v9)
  {
    dataSource2 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v9];
    v25 = [off_1E77218B0 alloc];
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    v18 = resultCopy;
    identifier = [dataSource identifier];
    identifier2 = [(PXFetchResultDataSource *)v15 identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v26 = &unk_1F190DDC8;
    v27 = dataSource2;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v23 = identifier;
    resultCopy = v18;
    v24 = [v25 initWithFromDataSourceIdentifier:v23 toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v22 subitemChangeDetailsByItemBySection:0];
  }

  else
  {
    dataSource2 = [(PXSectionedDataSourceManager *)self dataSource];
    v24 = [off_1E77218B0 changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:objc_msgSend(dataSource2 toDataSourceIdentifier:{"identifier"), -[PXFetchResultDataSource identifier](v15, "identifier")}];
  }

  [(PXSectionedDataSourceManager *)self setDataSource:v15 changeDetails:v24];
}

- (void)setPhotoLibrary:(id)library
{
  libraryCopy = library;
  photoLibrary = self->_photoLibrary;
  if (photoLibrary != libraryCopy)
  {
    v7 = libraryCopy;
    [(PHPhotoLibrary *)photoLibrary px_unregisterChangeObserver:self];
    objc_storeStrong(&self->_photoLibrary, library);
    [(PHPhotoLibrary *)self->_photoLibrary px_registerChangeObserver:self];
    libraryCopy = v7;
  }
}

- (id)createInitialDataSource
{
  v2 = [[PXFetchResultDataSource alloc] initWithFetchResult:self->_currentFetchResult];

  return v2;
}

- (PXFetchResultDataSourceManager)initWithInitialFetchResult:(id)result
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = PXFetchResultDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v11 init];
  if (v6)
  {
    v7 = resultCopy;
    if (!resultCopy)
    {
      v8 = MEMORY[0x1E69788E0];
      px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      v7 = [v8 emptyFetchResultWithPhotoLibrary:px_deprecated_appPhotoLibrary];
    }

    objc_storeStrong(&v6->_currentFetchResult, v7);
    if (!resultCopy)
    {
    }

    photoLibrary = [resultCopy photoLibrary];
    [(PXFetchResultDataSourceManager *)v6 setPhotoLibrary:photoLibrary];
  }

  return v6;
}

@end