@interface _PXPhotosViewPlacesMomentsDataSourceProvider
- (_PXPhotosViewPlacesMomentsDataSourceProvider)initWithAllowedAssets:(id)a3 photoLibrary:(id)a4;
- (id)createInitialPhotosDataSourceForDataSourceManager:(id)a3;
- (id)loadInitialPhotosDataSourceForDataSourceManager:(id)a3;
@end

@implementation _PXPhotosViewPlacesMomentsDataSourceProvider

- (id)loadInitialPhotosDataSourceForDataSourceManager:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        v11 = [*(*(&v31 + 1) + 8 * i) objectID];
        [v5 addObject:v11];
      }

      v8 = [(NSFastEnumeration *)v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v13 = [v4 photoLibrary];
  v14 = [v13 librarySpecificFetchOptions];

  [v14 setIncludePlacesSmartAlbum:1];
  v15 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000203 options:v14];
  v16 = [v15 firstObject];

  v28 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"representativeDate" ascending:1];
  v36 = v28;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [v14 setInternalSortDescriptors:v17];

  v18 = [MEMORY[0x1E6978758] fetchMomentsForAssetsWithOIDs:v5 options:v14];
  v19 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v18 containerCollection:v16 options:4097];
  v29 = v12;
  [(PXPhotosDataSourceConfiguration *)v19 setAllowedOIDs:v12];
  v30 = v4;
  v20 = [v4 filterPredicate];
  [(PXPhotosDataSourceConfiguration *)v19 setFilterPredicate:v20];

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
    if ([v16 keyAssetsAtEnd])
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

- (id)createInitialPhotosDataSourceForDataSourceManager:(id)a3
{
  v4 = a3;
  v5 = [PXPhotosDataSourceConfiguration alloc];
  v6 = [MEMORY[0x1E69788E0] emptyFetchResultWithPhotoLibrary:self->_photoLibrary];
  v7 = [(PXPhotosDataSourceConfiguration *)v5 initWithAssetFetchResult:v6 options:0];

  v8 = [v4 filterPredicate];

  [(PXPhotosDataSourceConfiguration *)v7 setFilterPredicate:v8];
  v9 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v7];

  return v9;
}

- (_PXPhotosViewPlacesMomentsDataSourceProvider)initWithAllowedAssets:(id)a3 photoLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PXPhotosViewPlacesMomentsDataSourceProvider;
  v9 = [(_PXPhotosViewPlacesMomentsDataSourceProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assets, a3);
    objc_storeStrong(&v10->_photoLibrary, a4);
  }

  return v10;
}

@end