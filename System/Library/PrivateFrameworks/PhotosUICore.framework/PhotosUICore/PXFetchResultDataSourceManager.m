@interface PXFetchResultDataSourceManager
- (PXFetchResultDataSourceManager)initWithInitialFetchResult:(id)a3;
- (id)createInitialDataSource;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)setFetchResult:(id)a3 changeDetails:(id)a4;
- (void)setPhotoLibrary:(id)a3;
@end

@implementation PXFetchResultDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 changeDetailsForFetchResult:self->_currentFetchResult];
  v5 = [v4 fetchResultAfterChanges];
  if (v5)
  {
    v14 = [(PXSectionedDataSourceManager *)self dataSource];
    v6 = [[PXFetchResultDataSource alloc] initWithFetchResult:v5];
    v13 = [off_1E7721450 changeDetailsWithNoChanges];
    v7 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v4];
    v8 = [off_1E77218B0 alloc];
    v9 = [v14 identifier];
    v10 = [(PXFetchResultDataSource *)v6 identifier];
    v15 = &unk_1F190DDC8;
    v16[0] = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v8 initWithFromDataSourceIdentifier:v9 toDataSourceIdentifier:v10 sectionChanges:v13 itemChangeDetailsBySection:v11 subitemChangeDetailsByItemBySection:0];

    objc_storeStrong(&self->_currentFetchResult, v5);
    [(PXSectionedDataSourceManager *)self setDataSource:v6 changeDetails:v12];
  }
}

- (void)setFetchResult:(id)a3 changeDetails:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 fetchResultBeforeChanges];
    v4 = v10;
    if (v10 != self->_currentFetchResult)
    {

      goto LABEL_5;
    }

    v11 = [v9 fetchResultAfterChanges];

    if (v11 != v7)
    {
LABEL_5:
      PXAssertGetLog();
    }
  }

  v12 = v7;
  if (!v7)
  {
    v13 = MEMORY[0x1E69788E0];
    v4 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v12 = [v13 emptyFetchResultWithPhotoLibrary:v4];
  }

  objc_storeStrong(&self->_currentFetchResult, v12);
  if (!v7)
  {
  }

  v14 = [(PHFetchResult *)self->_currentFetchResult photoLibrary];
  [(PXFetchResultDataSourceManager *)self setPhotoLibrary:v14];

  v15 = [[PXFetchResultDataSource alloc] initWithFetchResult:self->_currentFetchResult];
  if (v9)
  {
    v16 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v9];
    v25 = [off_1E77218B0 alloc];
    v17 = [(PXSectionedDataSourceManager *)self dataSource];
    v18 = v7;
    v19 = [v17 identifier];
    v20 = [(PXFetchResultDataSource *)v15 identifier];
    v21 = [off_1E7721450 changeDetailsWithNoChanges];
    v26 = &unk_1F190DDC8;
    v27 = v16;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v23 = v19;
    v7 = v18;
    v24 = [v25 initWithFromDataSourceIdentifier:v23 toDataSourceIdentifier:v20 sectionChanges:v21 itemChangeDetailsBySection:v22 subitemChangeDetailsByItemBySection:0];
  }

  else
  {
    v16 = [(PXSectionedDataSourceManager *)self dataSource];
    v24 = [off_1E77218B0 changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:objc_msgSend(v16 toDataSourceIdentifier:{"identifier"), -[PXFetchResultDataSource identifier](v15, "identifier")}];
  }

  [(PXSectionedDataSourceManager *)self setDataSource:v15 changeDetails:v24];
}

- (void)setPhotoLibrary:(id)a3
{
  v5 = a3;
  photoLibrary = self->_photoLibrary;
  if (photoLibrary != v5)
  {
    v7 = v5;
    [(PHPhotoLibrary *)photoLibrary px_unregisterChangeObserver:self];
    objc_storeStrong(&self->_photoLibrary, a3);
    [(PHPhotoLibrary *)self->_photoLibrary px_registerChangeObserver:self];
    v5 = v7;
  }
}

- (id)createInitialDataSource
{
  v2 = [[PXFetchResultDataSource alloc] initWithFetchResult:self->_currentFetchResult];

  return v2;
}

- (PXFetchResultDataSourceManager)initWithInitialFetchResult:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXFetchResultDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v11 init];
  if (v6)
  {
    v7 = v5;
    if (!v5)
    {
      v8 = MEMORY[0x1E69788E0];
      v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      v7 = [v8 emptyFetchResultWithPhotoLibrary:v3];
    }

    objc_storeStrong(&v6->_currentFetchResult, v7);
    if (!v5)
    {
    }

    v9 = [v5 photoLibrary];
    [(PXFetchResultDataSourceManager *)v6 setPhotoLibrary:v9];
  }

  return v6;
}

@end