@interface PUImportFakePhotosDataSource
- (PUImportFakePhotosDataSource)initWithImportDataSource:(id)a3 photoLibrary:(id)a4;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)prefetchApproximateAssetsAtIndexPaths:(id)a3 reverseOrder:(BOOL)a4;
@end

@implementation PUImportFakePhotosDataSource

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _importDataLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[PUImportFakePhotosDataSource photoLibraryDidChangeOnMainQueue:]";
    _os_log_debug_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEBUG, "%s: [DATASOURCE] super suppress", &v4, 0xCu);
  }
}

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _importDataLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[PUImportFakePhotosDataSource prepareForPhotoLibraryChange:]";
    _os_log_debug_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEBUG, "%s: [DATASOURCE] super suppress", &v5, 0xCu);
  }

  return 0;
}

- (void)prefetchApproximateAssetsAtIndexPaths:(id)a3 reverseOrder:(BOOL)a4
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _importDataLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[PUImportFakePhotosDataSource prefetchApproximateAssetsAtIndexPaths:reverseOrder:]";
    _os_log_debug_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEBUG, "%s: [DATASOURCE] super suppress", &v5, 0xCu);
  }
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v4 = [(PUImportFakePhotosDataSource *)self importDataSource];
  v5 = [v4 numberOfItemsInSection:a3];

  return v5;
}

- (int64_t)numberOfSections
{
  v2 = [(PUImportFakePhotosDataSource *)self importDataSource];
  v3 = [v2 numberOfSections];

  return v3;
}

- (PUImportFakePhotosDataSource)initWithImportDataSource:(id)a3 photoLibrary:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUImportFakePhotosDataSource.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v7 = [MEMORY[0x1E69788E0] emptyFetchResultWithPhotoLibrary:v6];
  v8 = [objc_alloc(MEMORY[0x1E69C3878]) initWithCollectionListFetchResult:v7 options:0];
  v12.receiver = self;
  v12.super_class = PUImportFakePhotosDataSource;
  v9 = [(PXPhotosDataSource *)&v12 initWithPhotosDataSourceConfiguration:v8];

  return v9;
}

@end