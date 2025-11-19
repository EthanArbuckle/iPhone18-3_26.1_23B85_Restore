@interface PXPeopleDetailSettingsSuggestionViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PXPeopleDetailSettingsSuggestionViewController)initWithPerson:(id)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_defaultOptionsForPhotoLibrary:(id)a3 sortKey:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadDataSource;
- (void)viewDidLoad;
@end

@implementation PXPeopleDetailSettingsSuggestionViewController

- (id)_defaultOptionsForPhotoLibrary:(id)a3 sortKey:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 librarySpecificFetchOptions];
  if (v5)
  {
    v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v5 ascending:0];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v6 setInternalSortDescriptors:v8];
  }

  v9 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v6 setIncludedDetectionTypes:v9];

  return v6;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PXPeopleDetailSettingsSuggestionViewController *)self detailSettingsDataSources];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  if ([v7 action] == 1)
  {
    v8 = [v7 modelObjectForIndex:{objc_msgSend(v5, "item")}];
    v9 = [[PXPeopleDetailSettingsSuggestionViewController alloc] initWithPerson:v8];
    v10 = [(PXPeopleDetailSettingsSuggestionViewController *)self navigationController];
    [v10 pushViewController:v9 animated:1];

LABEL_15:
    goto LABEL_16;
  }

  if ([v7 action] == 2)
  {
    v8 = [v7 modelObjectForIndex:{objc_msgSend(v5, "item")}];
    v11 = [v8 person];
    if (v11)
    {
      v12 = MEMORY[0x1E6978630];
      v13 = [v8 person];
      v30[0] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v15 = [v12 fetchAssetsForPersons:v14 options:0];
    }

    else
    {
      v15 = 0;
    }

    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v16 addObject:{*(*(&v25 + 1) + 8 * i), v25}];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    v22 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v16];
    v23 = [[PXPeopleDetailSettingsAssetsViewController alloc] initWithAssets:v22];
    v24 = [(PXPeopleDetailSettingsSuggestionViewController *)self navigationController];
    [v24 pushViewController:v23 animated:1];

    goto LABEL_15;
  }

LABEL_16:
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = 10.0;
  v6 = 0.0;
  v7 = 10.0;
  v8 = 2.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = 110.0;
  v6 = 110.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"faceCellIdentifier" forIndexPath:v6];
  v9 = [v8 tag] + 1;
  [v8 setTag:v9];
  v10 = [(PXPeopleDetailSettingsSuggestionViewController *)self detailSettingsDataSources];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v12 = [v6 item];
  v13 = [v7 traitCollection];

  [v13 displayScale];
  v15 = v14;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __88__PXPeopleDetailSettingsSuggestionViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v27 = &unk_1E7743D28;
  v16 = v8;
  v28 = v16;
  v29 = v9;
  [v11 imageAtIndex:v12 targetSize:&v24 displayScale:110.0 resultHandler:{110.0, v15}];

  if ([v11 hasMoreDetails])
  {
    v17 = [v11 personNameAtIndex:v12];
    v18 = [v11 faceCount:v12];
    v19 = [v11 verifyTypeAtIndex:v12];
    if ((v19 + 2) > 4)
    {
      v20 = @"Unknown";
    }

    else
    {
      v20 = off_1E7743D70[v19 + 2];
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld (%@)", v18, v20, v24, v25, v26, v27];
    [v16 setName:v17];
    v22 = [v16 quantityLabel];
    [v22 setText:v21];

    [v16 setTextAlpha:1.0];
  }

  else
  {
    v17 = [v16 quantityLabel];
    [v17 setHidden:1];
  }

  return v16;
}

void __88__PXPeopleDetailSettingsSuggestionViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  px_dispatch_on_main_queue();
}

uint64_t __88__PXPeopleDetailSettingsSuggestionViewController_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) tag];
  if (result == *(a1 + 48))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);

    return [v3 setImage:v4 normalizedFaceRect:{v5, v6, v7, v8}];
  }

  return result;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (*MEMORY[0x1E69DDC08] != v10)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXPeopleDetailSettingsViewController.m" lineNumber:651 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v12 = v11;
  v13 = [v9 dequeueReusableSupplementaryViewOfKind:? withReuseIdentifier:? forIndexPath:?];
  v14 = [(PXPeopleDetailSettingsSuggestionViewController *)self detailSettingsDataSources];
  v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v12, "section")}];
  v16 = [v15 title];
  [v13 setTitle:v16];

  return v13;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v5 = [(PXPeopleDetailSettingsSuggestionViewController *)self collectionView:a3];
  [v5 contentSize];
  v7 = v6;

  v8 = 30.0;
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(PXPeopleDetailSettingsSuggestionViewController *)self detailSettingsDataSources];
  v4 = [v3 count];

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(PXPeopleDetailSettingsSuggestionViewController *)self detailSettingsDataSources];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 numberOfItems];

  return v7;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = PXPeopleDetailSettingsSuggestionViewController;
  [(PXPeopleDetailSettingsSuggestionViewController *)&v16 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v3 setMinimumLineSpacing:15.0];
  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v5 = [(PXPeopleDetailSettingsSuggestionViewController *)self view];
  [v5 frame];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];
  [(PXPeopleDetailSettingsSuggestionViewController *)self setCollectionView:v6];

  v7 = [(PXPeopleDetailSettingsSuggestionViewController *)self collectionView];
  [v7 setAutoresizingMask:18];

  v8 = [(PXPeopleDetailSettingsSuggestionViewController *)self collectionView];
  [v8 setDataSource:self];

  v9 = [(PXPeopleDetailSettingsSuggestionViewController *)self collectionView];
  [v9 setDelegate:self];

  v10 = [(PXPeopleDetailSettingsSuggestionViewController *)self collectionView];
  [v10 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"faceCellIdentifier"];

  v11 = [(PXPeopleDetailSettingsSuggestionViewController *)self collectionView];
  [v11 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"headerTitle"];

  v12 = [(PXPeopleDetailSettingsSuggestionViewController *)self collectionView];
  v13 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v12 setBackgroundColor:v13];

  v14 = [(PXPeopleDetailSettingsSuggestionViewController *)self view];
  v15 = [(PXPeopleDetailSettingsSuggestionViewController *)self collectionView];
  [v14 addSubview:v15];

  [(PXPeopleDetailSettingsSuggestionViewController *)self loadDataSource];
}

- (void)loadDataSource
{
  v3 = [(PXPeopleDetailSettingsSuggestionViewController *)self person];
  v4 = [(PXPeopleDetailSettingsSuggestionViewController *)self collectionView];
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PXPeopleDetailSettingsSuggestionViewController_loadDataSource__block_invoke;
  block[3] = &unk_1E774A1B8;
  v9 = v3;
  v10 = self;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, block);
}

void __64__PXPeopleDetailSettingsSuggestionViewController_loadDataSource__block_invoke(id *a1)
{
  v55[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1[4] photoLibrary];
  v4 = [a1[5] _defaultOptionsForPhotoLibrary:v3 sortKey:0];
  [v4 setFetchLimit:9];
  v5 = [MEMORY[0x1E69787C8] fetchSuggestedFacesForPerson:a1[4] options:v4];
  if ([v5 count])
  {
    v6 = [[PXPeopleDetailSettingsFaceDataSource alloc] initWithTitle:@"Suggested Faces" faces:v5];
    [v2 addObject:v6];
  }

  v51 = v5;
  v50 = [a1[5] _defaultOptionsForPhotoLibrary:v3 sortKey:@"faceCount"];
  v7 = [MEMORY[0x1E6978980] fetchMergeCandidatePersonsForPerson:a1[4] options:?];
  if ([v7 count])
  {
    v8 = [[PXPeopleDetailSettingsPersonDataSource alloc] initWithTitle:@"Merged Candidate (Pet)" persons:v7];
    [v2 addObject:v8];
  }

  v48 = [a1[5] _defaultOptionsForPhotoLibrary:v3 sortKey:@"faceCount"];
  v9 = [MEMORY[0x1E6978980] fetchInvalidMergeCandidatePersonsForPerson:a1[4] options:?];
  if ([v9 count])
  {
    v10 = [[PXPeopleDetailSettingsPersonDataSource alloc] initWithTitle:@"Invalidate Candidate (Pet)" persons:v9];
    [v2 addObject:v10];
  }

  v11 = [MEMORY[0x1E6978980] personSuggestionsForPerson:a1[4] confirmedPersonSuggestions:0 rejectedPersonSuggestions:0];
  if ([v11 count])
  {
    v12 = [[PXPeopleDetailSettingsPersonSuggestionDataSource alloc] initWithTitle:@"Person Suggestion" personSuggestions:v11];
    [v2 addObject:v12];
  }

  v46 = v11;
  v45 = [a1[5] _defaultOptionsForPhotoLibrary:v3 sortKey:0];
  v13 = [MEMORY[0x1E69787C8] fetchRejectedFacesForPerson:a1[4] options:?];
  if ([v13 count])
  {
    v14 = [[PXPeopleDetailSettingsFaceDataSource alloc] initWithTitle:@"Rejected Faces" faces:v13];
    [v2 addObject:v14];
  }

  v44 = v13;
  v47 = v9;
  v49 = v7;
  v15 = [a1[5] _defaultOptionsForPhotoLibrary:v3 sortKey:0];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"nameSource = %ld OR nameSource = %ld", 1, 3];
  [v15 setInternalPredicate:v16];

  v17 = [MEMORY[0x1E69787C8] fetchFacesForPerson:a1[4] options:v15];
  if ([v17 count])
  {
    v18 = [[PXPeopleDetailSettingsFaceDataSource alloc] initWithTitle:@"Confirmation Faces" faces:v17];
    [v2 addObject:v18];
  }

  v19 = [v3 photoAnalysisClient];
  v20 = [a1[4] uuid];
  v55[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
  v43 = v19;
  v22 = [v19 faceCandidatesForKeyFaceForPersonsWithLocalIdentifiers:v21 error:0];

  if ([v22 count])
  {
    v42 = v4;
    v23 = [v22 firstObject];
    v24 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"qualityMeasure" ascending:0];
    v41 = [MEMORY[0x1E695DEC8] arrayWithObject:v24];
    v40 = [v23 sortedArrayUsingDescriptors:?];
    v25 = [[PXPeopleDetailSettingsKeyFacesDataSource alloc] initWithTitle:@"Key Faces by Quality Measure" keyFaces:v40 qualityProperty:@"qualityMeasure" photoLibrary:v3];
    [v2 addObject:v25];

    if ([a1[4] detectionType] == 1)
    {
      v39 = v24;
      v26 = [v23 firstObject];
      v27 = [v26 objectForKeyedSubscript:@"quality"];

      if (v27)
      {
        v28 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"quality" ascending:0];
        v54 = v28;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
        v30 = [v23 sortedArrayUsingDescriptors:v29];
      }

      else
      {
        context = objc_autoreleasePoolPush();
        v37 = PFMap();
        v31 = [a1[5] _defaultOptionsForPhotoLibrary:v3 sortKey:@"quality"];
        v32 = [MEMORY[0x1E69787C8] fetchFacesWithLocalIdentifiers:v37 options:v31];
        v30 = PFMap();

        objc_autoreleasePoolPop(context);
      }

      v33 = [[PXPeopleDetailSettingsKeyFacesDataSource alloc] initWithTitle:@"Key Faces by Face Quality" keyFaces:v30 qualityProperty:@"quality" photoLibrary:v3];
      [v2 addObject:v33];

      v24 = v39;
    }

    v4 = v42;
  }

  v34 = a1[5];
  v35 = v34[126];
  v34[126] = v2;
  v36 = v2;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PXPeopleDetailSettingsSuggestionViewController_loadDataSource__block_invoke_4;
  block[3] = &unk_1E774C648;
  v53 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id __64__PXPeopleDetailSettingsSuggestionViewController_loadDataSource__block_invoke_3(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"localIdentifier";
  v2 = a2;
  v3 = [v2 localIdentifier];
  v10[1] = @"quality";
  v11[0] = v3;
  v4 = MEMORY[0x1E696AD98];
  [v2 quality];
  v6 = v5;

  v7 = [v4 numberWithDouble:v6];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (PXPeopleDetailSettingsSuggestionViewController)initWithPerson:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPeopleDetailSettingsSuggestionViewController;
  v6 = [(PXPeopleDetailSettingsSuggestionViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_person, a3);
  }

  return v7;
}

@end