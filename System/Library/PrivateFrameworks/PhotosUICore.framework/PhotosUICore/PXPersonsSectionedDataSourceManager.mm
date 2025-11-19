@interface PXPersonsSectionedDataSourceManager
- (PXPersonsSectionedDataSourceManager)initWithPhotoLibrary:(id)a3;
- (id)createInitialDataSource;
- (int64_t)_personTypeForSection:(int64_t)a3;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)reloadData;
@end

@implementation PXPersonsSectionedDataSourceManager

- (void)reloadData
{
  localDefaults = self->_localDefaults;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PXPersonsSectionedDataSourceManager peopleHomeSortingType](self, "peopleHomeSortingType")}];
  [(PXPhotoLibraryLocalDefaults *)localDefaults setNumber:v4 forKey:@"PXPeopleHomeSortingType"];

  v10 = [(PXPersonsSectionedDataSourceManager *)self photoLibrary];
  v5 = peopleHomeFetchResults(v10);
  v6 = [PXPersonsSectionedDataSource alloc];
  v7 = [(PXSectionedDataSourceManager *)self dataSource];
  v8 = [v7 faceTiles];
  v9 = [(PXPersonsSectionedDataSource *)v6 initWithPhotoLibrary:v10 personsSections:v5 faceTiles:v8 peopleHomeSortingType:[(PXPersonsSectionedDataSourceManager *)self peopleHomeSortingType]];

  [(PXSectionedDataSourceManager *)self setDataSource:v9 changeDetails:0];
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v48 = self;
  v50 = [(PXSectionedDataSourceManager *)self dataSource];
  v5 = [v50 numberOfSections];
  v45 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v5];
  v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = v5;
  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v10 = vnegq_f64(v9);
    v46 = v10;
    *&v10.f64[0] = 134217984;
    v44 = v10;
    do
    {
      *buf = [v50 identifier];
      v62 = v8;
      v63 = v46;
      v11 = [v50 objectsInIndexPath:buf];
      v12 = [(PXPersonsSectionedDataSourceManager *)v48 _personTypeForSection:v8];
      if (v12 >= 2)
      {
        PXAssertGetLog();
      }

      v13 = [v11 photoLibrary];
      v14 = peopleHomeFetchResultForType(v12, v13);

      v15 = [v4 changeDetailsForFetchResult:v11];
      v16 = [v15 changedObjects];

      v17 = [MEMORY[0x1E6978848] changeDetailsFromFetchResult:v11 toFetchResult:v14 changedObjects:v16];
      v18 = v17;
      if (v17)
      {
        v51 = v17;
        v52 = v16;
        v53 = v14;
        v54 = v11;
        v55 = v8;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v19 = v11;
        v20 = [v19 countByEnumeratingWithState:&v56 objects:v60 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v57;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v57 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v56 + 1) + 8 * i);
              v25 = [v24 objectID];
              if ([v4 keyFaceChangedForPersonOID:v25])
              {
                v26 = +[PXPeopleFaceCropManager sharedManager];
                [v26 invalidateCacheForPerson:v24];

                v27 = [v24 localIdentifier];
                [v6 addObject:v27];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v56 objects:v60 count:16];
          }

          while (v21);
        }

        v18 = v51;
        v28 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v51];
        v8 = v55;
        v29 = [MEMORY[0x1E696AD98] numberWithInteger:v55];
        [v45 setObject:v28 forKeyedSubscript:v29];

        v30 = [v51 fetchResultAfterChanges];
        [v49 addObject:v30];

        v7 = 1;
        v14 = v53;
        v11 = v54;
        v16 = v52;
      }

      else
      {
        [v49 addObject:v11];
      }

      ++v8;
    }

    while (v8 != v47);
  }

  v31 = [v50 faceTiles];
  if ([v6 count])
  {
    v32 = [v31 mutableCopy];
    [v32 removeObjectsForKeys:v6];
    v33 = [v32 copy];

    v31 = v33;
  }

  if (v7)
  {
    localDefaults = v48->_localDefaults;
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PXPersonsSectionedDataSourceManager peopleHomeSortingType](v48, "peopleHomeSortingType")}];
    [(PXPhotoLibraryLocalDefaults *)localDefaults setNumber:v35 forKey:@"PXPeopleHomeSortingType"];

    v36 = [PXPersonsSectionedDataSource alloc];
    v37 = [(PXPersonsSectionedDataSourceManager *)v48 photoLibrary];
    v38 = [(PXPersonsSectionedDataSource *)v36 initWithPhotoLibrary:v37 personsSections:v49 faceTiles:v31 peopleHomeSortingType:[(PXPersonsSectionedDataSourceManager *)v48 peopleHomeSortingType]];

    v39 = [off_1E77218B0 alloc];
    v40 = [v50 identifier];
    v41 = [(PXPersonsSectionedDataSource *)v38 identifier];
    v42 = [off_1E7721450 changeDetailsWithNoChanges];
    v43 = [v39 initWithFromDataSourceIdentifier:v40 toDataSourceIdentifier:v41 sectionChanges:v42 itemChangeDetailsBySection:v45 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)v48 setDataSource:v38 changeDetails:v43];
  }
}

- (int64_t)_personTypeForSection:(int64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 1;
  }

  if (a3 != 1)
  {
    PXAssertGetLog();
  }

  return 0;
}

- (id)createInitialDataSource
{
  v3 = [(PXPersonsSectionedDataSourceManager *)self photoLibrary];
  [v3 px_registerChangeObserver:self];
  peopleHomeFetchResults(v3);
  objc_claimAutoreleasedReturnValue();
  PXFlatMap();
}

- (PXPersonsSectionedDataSourceManager)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PXPersonsSectionedDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = [(PXPersonsSectionedDataSourceManager *)v7 photoLibrary];
    v9 = [v8 px_localDefaults];
    localDefaults = v7->_localDefaults;
    v7->_localDefaults = v9;
  }

  return v7;
}

@end