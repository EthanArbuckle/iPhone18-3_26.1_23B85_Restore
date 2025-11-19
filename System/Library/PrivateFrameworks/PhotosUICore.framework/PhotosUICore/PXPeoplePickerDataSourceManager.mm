@interface PXPeoplePickerDataSourceManager
+ (id)currentDataSourceManager;
- (PXPeoplePickerDataSourceManager)init;
- (id)createInitialDataSource;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (void)deselectAllLocalIdentifiers;
- (void)performChanges:(id)a3;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
- (void)setDisabledLocalIdentifiers:(id)a3;
- (void)setLocalIdentifiers:(id)a3 selected:(BOOL)a4;
- (void)setPeople:(id)a3;
- (void)setSuggestedLocalIdentifiers:(id)a3 withPhotoLibrary:(id)a4;
@end

@implementation PXPeoplePickerDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXSectionedDataSourceManager *)self dataSource];
  v9 = [v7 objectForKeyedSubscript:@"currentDataSource"];

  if (v9 == v8)
  {
    v10 = [v7 objectForKeyedSubscript:@"preparedDataSource"];
    v11 = [v7 objectForKeyedSubscript:@"preparedChangeDetails"];
  }

  else
  {
    v21 = 0;
    v10 = [v8 dataSourceUpdatedWithChange:v6 changeDetails:&v21];
    v11 = v21;
  }

  v12 = v11;
  if (v10 != v8)
  {
    v20 = [off_1E77218B0 alloc];
    v13 = [v8 identifier];
    v14 = [v10 identifier];
    v15 = [off_1E7721450 changeDetailsWithNoChanges];
    v22 = &unk_1F1909CE8;
    v23[0] = v12;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v16 = self;
    v18 = v17 = v6;
    v19 = [v20 initWithFromDataSourceIdentifier:v13 toDataSourceIdentifier:v14 sectionChanges:v15 itemChangeDetailsBySection:v18 subitemChangeDetailsByItemBySection:0];

    v6 = v17;
    [(PXSectionedDataSourceManager *)v16 setDataSource:v10 changeDetails:v19];
  }
}

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__16543;
  v17 = __Block_byref_object_dispose__16544;
  v18 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PXPeoplePickerDataSourceManager_prepareForPhotoLibraryChange___block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v5 = v14[5];
  v11 = 0;
  v6 = [v5 dataSourceUpdatedWithChange:v4 changeDetails:&v11];
  v7 = v11;
  v8 = v14[5];
  v19[0] = @"currentDataSource";
  v19[1] = @"preparedDataSource";
  v20[0] = v8;
  v20[1] = v6;
  v19[2] = @"preparedChangeDetails";
  v20[2] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  _Block_object_dispose(&v13, 8);

  return v9;
}

void __64__PXPeoplePickerDataSourceManager_prepareForPhotoLibraryChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)deselectAllLocalIdentifiers
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:278 description:{@"%s must be called on the main thread", "-[PXPeoplePickerDataSourceManager deselectAllLocalIdentifiers]"}];
  }

  selectedLocalIdentifiers = self->_selectedLocalIdentifiers;

  [(PXPeoplePickerDataSourceManager *)self setLocalIdentifiers:selectedLocalIdentifiers selected:0];
}

- (void)setLocalIdentifiers:(id)a3 selected:(BOOL)a4
{
  v4 = a4;
  v45[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:231 description:{@"%s must be called on the main thread", "-[PXPeoplePickerDataSourceManager setLocalIdentifiers:selected:]"}];
  }

  if (![v7 count])
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"localIdentifiers.count > 0"}];
  }

  v8 = [(PXSectionedDataSourceManager *)self dataSource];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PXPeoplePickerDataSourceManager_setLocalIdentifiers_selected___block_invoke;
  aBlock[3] = &unk_1E772ECC0;
  v9 = v8;
  v42 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (v4)
  {
    [(NSMutableArray *)self->_selectedLocalIdentifiers addObjectsFromArray:v7];
    v12 = v11[2](v11, v7);
    v13 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  }

  else
  {
    v13 = v10[2](v10, v7);
    [(NSMutableArray *)self->_selectedLocalIdentifiers removeObjectsInArray:v7];
    v12 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  }

  v14 = [PXPeoplePickerDataSource alloc];
  v15 = [v9 _fetchResult];
  v16 = [v9 disabledLocalIdentifiers];
  v35 = v12;
  v17 = [(PXPeoplePickerDataSource *)v14 initWithFetchResult:v15 disabledLocalIdentifiers:v16 allSelectedLocalIdentifiers:self->_selectedLocalIdentifiers newlySelectedObjectIDs:v12 newlyDeselectedObjectIDs:v13];

  v18 = [v9 _fetchResult];
  v19 = [v18 fetchedObjects];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __64__PXPeoplePickerDataSourceManager_setLocalIdentifiers_selected___block_invoke_3;
  v39[3] = &unk_1E772ECE8;
  v34 = v7;
  v40 = v34;
  v20 = [v19 indexOfObjectPassingTest:v39];
  v37 = v11;
  v38 = self;
  v36 = v13;
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
  }

  else
  {
    v22 = [v19 objectAtIndexedSubscript:v20];
    v45[0] = v22;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  }

  v23 = [(PXPeoplePickerDataSource *)v17 _fetchResult];
  v24 = [v23 fetchedObjects];
  v25 = [off_1E7721450 changeDetailsFromArray:v19 toArray:v24 changedObjects:v21];

  v26 = [off_1E77218B0 alloc];
  v27 = [v9 identifier];
  v28 = [(PXPeoplePickerDataSource *)v17 identifier];
  v29 = [off_1E7721450 changeDetailsWithNoChanges];
  v43 = &unk_1F1909CE8;
  v44 = v25;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v31 = [v26 initWithFromDataSourceIdentifier:v27 toDataSourceIdentifier:v28 sectionChanges:v29 itemChangeDetailsBySection:v30 subitemChangeDetailsByItemBySection:0];

  [(PXSectionedDataSourceManager *)v38 setDataSource:v17 changeDetails:v31];
}

void __64__PXPeoplePickerDataSourceManager_setLocalIdentifiers_selected___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E695DFB8]);
  [*(a1 + 32) _fetchResult];
  objc_claimAutoreleasedReturnValue();
  v5 = v3;
  PXMap();
}

uint64_t __64__PXPeoplePickerDataSourceManager_setLocalIdentifiers_selected___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 localIdentifier];
  v4 = [*(a1 + 32) firstObject];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __64__PXPeoplePickerDataSourceManager_setLocalIdentifiers_selected___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 localIdentifier];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v3 objectID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDisabledLocalIdentifiers:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:212 description:{@"%s must be called on the main thread", "-[PXPeoplePickerDataSourceManager setDisabledLocalIdentifiers:]"}];
  }

  if (![v5 count])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"disabledLocalIdentifiers.count > 0"}];
  }

  [(PXSectionedDataSourceManager *)self dataSource];
  v6 = [objc_claimAutoreleasedReturnValue() _fetchResult];
  v7 = [PXPeoplePickerDataSource alloc];
  selectedLocalIdentifiers = self->_selectedLocalIdentifiers;
  v9 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  v10 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  [(PXPeoplePickerDataSource *)v7 initWithFetchResult:v6 disabledLocalIdentifiers:v5 allSelectedLocalIdentifiers:selectedLocalIdentifiers newlySelectedObjectIDs:v9 newlyDeselectedObjectIDs:v10];

  v5;
  PXMap();
}

void *__63__PXPeoplePickerDataSourceManager_setDisabledLocalIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 localIdentifier];
  if ([v2 containsObject:v4])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setSuggestedLocalIdentifiers:(id)a3 withPhotoLibrary:(id)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E696AF00];
  v9 = a4;
  if (([v8 isMainThread] & 1) == 0)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:187 description:{@"%s must be called on the main thread", "-[PXPeoplePickerDataSourceManager setSuggestedLocalIdentifiers:withPhotoLibrary:]"}];
  }

  if (self->_people)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"_people == nil"}];
  }

  if (self->_suggestedLocalIdentifiers)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"_suggestedLocalIdentifiers == nil"}];

    suggestedLocalIdentifiers = self->_suggestedLocalIdentifiers;
  }

  else
  {
    suggestedLocalIdentifiers = 0;
  }

  self->_suggestedLocalIdentifiers = v7;
  v11 = v7;

  v12 = [v9 librarySpecificFetchOptions];
  v13 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  v35 = v12;
  [v12 setIncludedDetectionTypes:v13];

  v34 = [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:v11 options:v12];
  v33 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v11];
  v32 = [v34 px_fetchedObjectIDsSortedByLocalIdentifiers:v33];
  v31 = [objc_alloc(MEMORY[0x1E69788E0]) initWithOids:v32 photoLibrary:v9 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v14 = [(PXSectionedDataSourceManager *)self dataSource];
  v15 = [PXPeoplePickerDataSource alloc];
  v16 = [v14 disabledLocalIdentifiers];
  selectedLocalIdentifiers = self->_selectedLocalIdentifiers;
  v18 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  v19 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  v20 = [(PXPeoplePickerDataSource *)v15 initWithFetchResult:v31 disabledLocalIdentifiers:v16 allSelectedLocalIdentifiers:selectedLocalIdentifiers newlySelectedObjectIDs:v18 newlyDeselectedObjectIDs:v19];

  v21 = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
  v22 = [off_1E77218B0 alloc];
  v23 = [v14 identifier];
  v24 = [(PXPeoplePickerDataSource *)v20 identifier];
  v25 = [off_1E7721450 changeDetailsWithNoChanges];
  v36 = &unk_1F1909CE8;
  v37[0] = v21;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];

  v27 = [v22 initWithFromDataSourceIdentifier:v23 toDataSourceIdentifier:v24 sectionChanges:v25 itemChangeDetailsBySection:v26 subitemChangeDetailsByItemBySection:0];
  [(PXSectionedDataSourceManager *)self setDataSource:v20 changeDetails:v27];
}

- (void)setPeople:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:168 description:{@"%s must be called on the main thread", "-[PXPeoplePickerDataSourceManager setPeople:]"}];
  }

  if (self->_people)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"_people == nil"}];
  }

  if (self->_suggestedLocalIdentifiers)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"_suggestedLocalIdentifiers == nil"}];
  }

  people = self->_people;
  self->_people = v5;
  v7 = v5;

  v8 = [(PHFetchResult *)v7 photoLibrary];
  [v8 px_registerChangeObserver:self];

  v9 = [(PXSectionedDataSourceManager *)self dataSource];
  v10 = [PXPeoplePickerDataSource alloc];
  v11 = [v9 disabledLocalIdentifiers];
  selectedLocalIdentifiers = self->_selectedLocalIdentifiers;
  v13 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  v14 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  v15 = [(PXPeoplePickerDataSource *)v10 initWithFetchResult:v7 disabledLocalIdentifiers:v11 allSelectedLocalIdentifiers:selectedLocalIdentifiers newlySelectedObjectIDs:v13 newlyDeselectedObjectIDs:v14];

  v16 = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
  v17 = [off_1E77218B0 alloc];
  v18 = [v9 identifier];
  v19 = [(PXPeoplePickerDataSource *)v15 identifier];
  v20 = [off_1E7721450 changeDetailsWithNoChanges];
  v26 = &unk_1F1909CE8;
  v27[0] = v16;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v22 = [v17 initWithFromDataSourceIdentifier:v18 toDataSourceIdentifier:v19 sectionChanges:v20 itemChangeDetailsBySection:v21 subitemChangeDetailsByItemBySection:0];
  [(PXSectionedDataSourceManager *)self setDataSource:v15 changeDetails:v22];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXPeoplePickerDataSourceManager;
  [(PXPeoplePickerDataSourceManager *)&v3 performChanges:a3];
}

- (id)createInitialDataSource
{
  v2 = [PXPeoplePickerDataSource alloc];
  v3 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  v4 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  v5 = [(PXPeoplePickerDataSource *)v2 initWithFetchResult:0 disabledLocalIdentifiers:MEMORY[0x1E695E0F0] allSelectedLocalIdentifiers:MEMORY[0x1E695E0F0] newlySelectedObjectIDs:v3 newlyDeselectedObjectIDs:v4];

  return v5;
}

- (PXPeoplePickerDataSourceManager)init
{
  v6.receiver = self;
  v6.super_class = PXPeoplePickerDataSourceManager;
  v2 = [(PXSectionedDataSourceManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    selectedLocalIdentifiers = v2->_selectedLocalIdentifiers;
    v2->_selectedLocalIdentifiers = v3;
  }

  return v2;
}

+ (id)currentDataSourceManager
{
  v2 = objc_alloc_init(PXPeoplePickerDataSourceManager);

  return v2;
}

@end