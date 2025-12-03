@interface PUImportFakePhotosDataSource
- (PUImportFakePhotosDataSource)initWithImportDataSource:(id)source photoLibrary:(id)library;
- (id)prepareForPhotoLibraryChange:(id)change;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)prefetchApproximateAssetsAtIndexPaths:(id)paths reverseOrder:(BOOL)order;
@end

@implementation PUImportFakePhotosDataSource

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
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

- (id)prepareForPhotoLibraryChange:(id)change
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

- (void)prefetchApproximateAssetsAtIndexPaths:(id)paths reverseOrder:(BOOL)order
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

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  importDataSource = [(PUImportFakePhotosDataSource *)self importDataSource];
  v5 = [importDataSource numberOfItemsInSection:section];

  return v5;
}

- (int64_t)numberOfSections
{
  importDataSource = [(PUImportFakePhotosDataSource *)self importDataSource];
  numberOfSections = [importDataSource numberOfSections];

  return numberOfSections;
}

- (PUImportFakePhotosDataSource)initWithImportDataSource:(id)source photoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImportFakePhotosDataSource.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v7 = [MEMORY[0x1E69788E0] emptyFetchResultWithPhotoLibrary:libraryCopy];
  v8 = [objc_alloc(MEMORY[0x1E69C3878]) initWithCollectionListFetchResult:v7 options:0];
  v12.receiver = self;
  v12.super_class = PUImportFakePhotosDataSource;
  v9 = [(PXPhotosDataSource *)&v12 initWithPhotosDataSourceConfiguration:v8];

  return v9;
}

@end