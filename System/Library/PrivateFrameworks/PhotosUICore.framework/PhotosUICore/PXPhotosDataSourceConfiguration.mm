@interface PXPhotosDataSourceConfiguration
- (PXPhotosDataSourceConfiguration)init;
- (PXPhotosDataSourceConfiguration)initWithAssetCollection:(id)collection options:(unint64_t)options;
- (PXPhotosDataSourceConfiguration)initWithAssetFetchResult:(id)result options:(unint64_t)options;
- (PXPhotosDataSourceConfiguration)initWithCollectionListFetchResult:(id)result containerCollection:(id)collection options:(unint64_t)options;
@end

@implementation PXPhotosDataSourceConfiguration

- (PXPhotosDataSourceConfiguration)initWithAssetCollection:(id)collection options:(unint64_t)options
{
  v19[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if ([collectionCopy isTransient])
  {
    v7 = MEMORY[0x1E6978760];
    v19[0] = collectionCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    objectID = [v7 transientCollectionListWithCollections:v8 title:0];

    v10 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:objectID options:0];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E69788E0]);
    objectID = [collectionCopy objectID];
    v18 = objectID;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    photoLibrary = [collectionCopy photoLibrary];
    v14 = objc_opt_class();

    fetchType = [v14 fetchType];
    v10 = [v11 initWithOids:v12 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:1];

    collectionCopy = v12;
  }

  v16 = [(PXPhotosDataSourceConfiguration *)self initWithCollectionListFetchResult:v10 options:options];
  return v16;
}

- (PXPhotosDataSourceConfiguration)initWithAssetFetchResult:(id)result options:(unint64_t)options
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:result title:0];
  v7 = MEMORY[0x1E6978760];
  v13[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [v7 transientCollectionListWithCollections:v8 title:0];

  v10 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v9 options:0];
  v11 = [(PXPhotosDataSourceConfiguration *)self initWithCollectionListFetchResult:v10 options:options];

  return v11;
}

- (PXPhotosDataSourceConfiguration)initWithCollectionListFetchResult:(id)result containerCollection:(id)collection options:(unint64_t)options
{
  resultCopy = result;
  collectionCopy = collection;
  v21.receiver = self;
  v21.super_class = PXPhotosDataSourceConfiguration;
  v11 = [(PXPhotosDataSourceConfiguration *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_collectionListFetchResult, result);
    objc_storeStrong(&v12->_containerCollection, collection);
    v12->_options = options;
    photoLibrary = [resultCopy photoLibrary];
    v14 = photoLibrary;
    if (photoLibrary)
    {
      photoLibrary2 = photoLibrary;
    }

    else
    {
      photoLibrary2 = [collectionCopy photoLibrary];
    }

    photoLibrary = v12->_photoLibrary;
    v12->_photoLibrary = photoLibrary2;

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:4200 description:@"Use the designated initializer -initWithCollectionListFetchResult:options:"];

  abort();
}

@end