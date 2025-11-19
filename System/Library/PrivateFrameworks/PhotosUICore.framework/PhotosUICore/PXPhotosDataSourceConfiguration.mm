@interface PXPhotosDataSourceConfiguration
- (PXPhotosDataSourceConfiguration)init;
- (PXPhotosDataSourceConfiguration)initWithAssetCollection:(id)a3 options:(unint64_t)a4;
- (PXPhotosDataSourceConfiguration)initWithAssetFetchResult:(id)a3 options:(unint64_t)a4;
- (PXPhotosDataSourceConfiguration)initWithCollectionListFetchResult:(id)a3 containerCollection:(id)a4 options:(unint64_t)a5;
@end

@implementation PXPhotosDataSourceConfiguration

- (PXPhotosDataSourceConfiguration)initWithAssetCollection:(id)a3 options:(unint64_t)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 isTransient])
  {
    v7 = MEMORY[0x1E6978760];
    v19[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v9 = [v7 transientCollectionListWithCollections:v8 title:0];

    v10 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v9 options:0];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E69788E0]);
    v9 = [v6 objectID];
    v18 = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v13 = [v6 photoLibrary];
    v14 = objc_opt_class();

    v15 = [v14 fetchType];
    v10 = [v11 initWithOids:v12 photoLibrary:v13 fetchType:v15 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

    v6 = v12;
  }

  v16 = [(PXPhotosDataSourceConfiguration *)self initWithCollectionListFetchResult:v10 options:a4];
  return v16;
}

- (PXPhotosDataSourceConfiguration)initWithAssetFetchResult:(id)a3 options:(unint64_t)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:a3 title:0];
  v7 = MEMORY[0x1E6978760];
  v13[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [v7 transientCollectionListWithCollections:v8 title:0];

  v10 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v9 options:0];
  v11 = [(PXPhotosDataSourceConfiguration *)self initWithCollectionListFetchResult:v10 options:a4];

  return v11;
}

- (PXPhotosDataSourceConfiguration)initWithCollectionListFetchResult:(id)a3 containerCollection:(id)a4 options:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v21.receiver = self;
  v21.super_class = PXPhotosDataSourceConfiguration;
  v11 = [(PXPhotosDataSourceConfiguration *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_collectionListFetchResult, a3);
    objc_storeStrong(&v12->_containerCollection, a4);
    v12->_options = a5;
    v13 = [v9 photoLibrary];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v10 photoLibrary];
    }

    photoLibrary = v12->_photoLibrary;
    v12->_photoLibrary = v15;

    v12->_ignoreSharedLibraryFilters = 0;
    v17 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v12->_photoLibrary];
    v18 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v17];
    libraryFilterState = v12->_libraryFilterState;
    v12->_libraryFilterState = v18;

    v12->_libraryFilter = 0;
    v12->_curationKind = 1;
  }

  return v12;
}

- (PXPhotosDataSourceConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:4200 description:@"Use the designated initializer -initWithCollectionListFetchResult:options:"];

  abort();
}

@end