@interface PXPersonsSectionedDataSourceManager
- (PXPersonsSectionedDataSourceManager)initWithPhotoLibrary:(id)library;
- (id)createInitialDataSource;
- (int64_t)_personTypeForSection:(int64_t)section;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)reloadData;
@end

@implementation PXPersonsSectionedDataSourceManager

- (void)reloadData
{
  localDefaults = self->_localDefaults;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PXPersonsSectionedDataSourceManager peopleHomeSortingType](self, "peopleHomeSortingType")}];
  [(PXPhotoLibraryLocalDefaults *)localDefaults setNumber:v4 forKey:@"PXPeopleHomeSortingType"];

  photoLibrary = [(PXPersonsSectionedDataSourceManager *)self photoLibrary];
  v5 = peopleHomeFetchResults(photoLibrary);
  v6 = [PXPersonsSectionedDataSource alloc];
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  faceTiles = [dataSource faceTiles];
  v9 = [(PXPersonsSectionedDataSource *)v6 initWithPhotoLibrary:photoLibrary personsSections:v5 faceTiles:faceTiles peopleHomeSortingType:[(PXPersonsSectionedDataSourceManager *)self peopleHomeSortingType]];

  [(PXSectionedDataSourceManager *)self setDataSource:v9 changeDetails:0];
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  v64 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  selfCopy = self;
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  numberOfSections = [dataSource numberOfSections];
  v45 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:numberOfSections];
  v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:numberOfSections];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = numberOfSections;
  if (numberOfSections < 1)
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
      *buf = [dataSource identifier];
      v62 = v8;
      v63 = v46;
      v11 = [dataSource objectsInIndexPath:buf];
      v12 = [(PXPersonsSectionedDataSourceManager *)selfCopy _personTypeForSection:v8];
      if (v12 >= 2)
      {
        PXAssertGetLog();
      }

      photoLibrary = [v11 photoLibrary];
      v14 = peopleHomeFetchResultForType(v12, photoLibrary);

      v15 = [queueCopy changeDetailsForFetchResult:v11];
      changedObjects = [v15 changedObjects];

      v17 = [MEMORY[0x1E6978848] changeDetailsFromFetchResult:v11 toFetchResult:v14 changedObjects:changedObjects];
      v18 = v17;
      if (v17)
      {
        v51 = v17;
        v52 = changedObjects;
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
              objectID = [v24 objectID];
              if ([queueCopy keyFaceChangedForPersonOID:objectID])
              {
                v26 = +[PXPeopleFaceCropManager sharedManager];
                [v26 invalidateCacheForPerson:v24];

                localIdentifier = [v24 localIdentifier];
                [v6 addObject:localIdentifier];
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

        fetchResultAfterChanges = [v51 fetchResultAfterChanges];
        [v49 addObject:fetchResultAfterChanges];

        v7 = 1;
        v14 = v53;
        v11 = v54;
        changedObjects = v52;
      }

      else
      {
        [v49 addObject:v11];
      }

      ++v8;
    }

    while (v8 != v47);
  }

  faceTiles = [dataSource faceTiles];
  if ([v6 count])
  {
    v32 = [faceTiles mutableCopy];
    [v32 removeObjectsForKeys:v6];
    v33 = [v32 copy];

    faceTiles = v33;
  }

  if (v7)
  {
    localDefaults = selfCopy->_localDefaults;
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PXPersonsSectionedDataSourceManager peopleHomeSortingType](selfCopy, "peopleHomeSortingType")}];
    [(PXPhotoLibraryLocalDefaults *)localDefaults setNumber:v35 forKey:@"PXPeopleHomeSortingType"];

    v36 = [PXPersonsSectionedDataSource alloc];
    photoLibrary2 = [(PXPersonsSectionedDataSourceManager *)selfCopy photoLibrary];
    v38 = [(PXPersonsSectionedDataSource *)v36 initWithPhotoLibrary:photoLibrary2 personsSections:v49 faceTiles:faceTiles peopleHomeSortingType:[(PXPersonsSectionedDataSourceManager *)selfCopy peopleHomeSortingType]];

    v39 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    identifier2 = [(PXPersonsSectionedDataSource *)v38 identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v43 = [v39 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v45 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)selfCopy setDataSource:v38 changeDetails:v43];
  }
}

- (int64_t)_personTypeForSection:(int64_t)section
{
  v4 = *MEMORY[0x1E69E9840];
  if (!section)
  {
    return 1;
  }

  if (section != 1)
  {
    PXAssertGetLog();
  }

  return 0;
}

- (id)createInitialDataSource
{
  photoLibrary = [(PXPersonsSectionedDataSourceManager *)self photoLibrary];
  [photoLibrary px_registerChangeObserver:self];
  peopleHomeFetchResults(photoLibrary);
  objc_claimAutoreleasedReturnValue();
  PXFlatMap();
}

- (PXPersonsSectionedDataSourceManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = PXPersonsSectionedDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    photoLibrary = [(PXPersonsSectionedDataSourceManager *)v7 photoLibrary];
    px_localDefaults = [photoLibrary px_localDefaults];
    localDefaults = v7->_localDefaults;
    v7->_localDefaults = px_localDefaults;
  }

  return v7;
}

@end