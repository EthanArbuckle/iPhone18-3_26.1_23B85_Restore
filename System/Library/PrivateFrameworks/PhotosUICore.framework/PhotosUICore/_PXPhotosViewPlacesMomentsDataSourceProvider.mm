@interface _PXPhotosViewPlacesMomentsDataSourceProvider
- (_PXPhotosViewPlacesMomentsDataSourceProvider)initWithAllowedAssets:(id)assets photoLibrary:(id)library;
- (id)createInitialPhotosDataSourceForDataSourceManager:(id)manager;
- (id)loadInitialPhotosDataSourceForDataSourceManager:(id)manager;
@end

@implementation _PXPhotosViewPlacesMomentsDataSourceProvider

- (id)loadInitialPhotosDataSourceForDataSourceManager:(id)manager
{
  v38 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_assets;
  v7 = [(NSFastEnumeration *)v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        objectID = [*(*(&v31 + 1) + 8 * i) objectID];
        [v5 addObject:objectID];
      }

      v8 = [(NSFastEnumeration *)v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  photoLibrary = [managerCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludePlacesSmartAlbum:1];
  v15 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000203 options:librarySpecificFetchOptions];
  firstObject = [v15 firstObject];

  v28 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"representativeDate" ascending:1];
  v36 = v28;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [librarySpecificFetchOptions setInternalSortDescriptors:v17];

  v18 = [MEMORY[0x1E6978758] fetchMomentsForAssetsWithOIDs:v5 options:librarySpecificFetchOptions];
  v19 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v18 containerCollection:firstObject options:4097];
  v29 = v12;
  [(PXPhotosDataSourceConfiguration *)v19 setAllowedOIDs:v12];
  v30 = managerCopy;
  filterPredicate = [managerCopy filterPredicate];
  [(PXPhotosDataSourceConfiguration *)v19 setFilterPredicate:filterPredicate];

  v21 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v19];
  v22 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v35[0] = v22;
  v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v35[1] = v23;
  v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v35[2] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  [(PXPhotosDataSource *)v21 setSortDescriptors:v25];

  if ([(PXPhotosDataSource *)v21 numberOfSections]>= 1)
  {
    if ([firstObject keyAssetsAtEnd])
    {
      v26 = [(PXPhotosDataSource *)v21 numberOfSections]- 1;
    }

    else
    {
      v26 = 0;
    }

    [(PXPhotosDataSource *)v21 forceAccurateSection:v26 andSectionsBeforeAndAfter:10];
  }

  return v21;
}

- (id)createInitialPhotosDataSourceForDataSourceManager:(id)manager
{
  managerCopy = manager;
  v5 = [PXPhotosDataSourceConfiguration alloc];
  v6 = [MEMORY[0x1E69788E0] emptyFetchResultWithPhotoLibrary:self->_photoLibrary];
  v7 = [(PXPhotosDataSourceConfiguration *)v5 initWithAssetFetchResult:v6 options:0];

  filterPredicate = [managerCopy filterPredicate];

  [(PXPhotosDataSourceConfiguration *)v7 setFilterPredicate:filterPredicate];
  v9 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v7];

  return v9;
}

- (_PXPhotosViewPlacesMomentsDataSourceProvider)initWithAllowedAssets:(id)assets photoLibrary:(id)library
{
  assetsCopy = assets;
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = _PXPhotosViewPlacesMomentsDataSourceProvider;
  v9 = [(_PXPhotosViewPlacesMomentsDataSourceProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assets, assets);
    objc_storeStrong(&v10->_photoLibrary, library);
  }

  return v10;
}

@end