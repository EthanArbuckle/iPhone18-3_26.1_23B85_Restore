@interface PXPeopleDetailSettingsViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PXPeopleDetailSettingsViewController)init;
- (PXPeopleDetailSettingsViewController)initWithDataSourceReloadBlock:(id)a3;
- (PXPeopleDetailSettingsViewController)initWithPersonDetectionType:(signed __int16)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)infoForPerson:(id)a3;
- (id)stringFromFaceCropType:(signed __int16)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)commonInit;
- (void)commonInitWithDataSourceReloadBlock:(id)a3;
- (void)fileVURadar:(id)a3;
- (void)loadSuggestionsForPerson:(id)a3;
- (void)toggle_selectDuplicatesMode:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXPeopleDetailSettingsViewController

- (void)loadSuggestionsForPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [(PXPeopleDetailSettingsViewController *)self dataSource];
  v7 = [v6 personAtIndex:v5];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__203133;
  v22[4] = __Block_byref_object_dispose__203134;
  v23 = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = [(PXPeopleDetailSettingsViewController *)self collectionView];
  v10 = [v9 traitCollection];
  [v10 displayScale];
  v12 = v11;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__PXPeopleDetailSettingsViewController_loadSuggestionsForPerson___block_invoke;
  v19[3] = &unk_1E7743CC0;
  v21 = v22;
  v13 = v8;
  v20 = v13;
  [v6 imageAtIndex:v5 targetSize:v19 displayScale:110.0 resultHandler:{110.0, v12}];

  v14 = dispatch_time(0, 20000000000);
  dispatch_semaphore_wait(v13, v14);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__PXPeopleDetailSettingsViewController_loadSuggestionsForPerson___block_invoke_2;
  v16[3] = &unk_1E774C620;
  v17 = v7;
  v18 = self;
  v15 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v16);

  _Block_object_dispose(v22, 8);
}

void __65__PXPeopleDetailSettingsViewController_loadSuggestionsForPerson___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __65__PXPeopleDetailSettingsViewController_loadSuggestionsForPerson___block_invoke_2(uint64_t a1)
{
  v3 = [[PXPeopleDetailSettingsSuggestionViewController alloc] initWithPerson:*(a1 + 32)];
  v2 = [*(a1 + 40) navigationController];
  [v2 pushViewController:v3 animated:1];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_selectDuplicatesMode)
  {
    v8 = [(NSMutableSet *)self->_selectedIndexPaths containsObject:v7];
    selectedIndexPaths = self->_selectedIndexPaths;
    if (v8)
    {
      [(NSMutableSet *)selectedIndexPaths removeObject:v7];
    }

    else
    {
      [(NSMutableSet *)selectedIndexPaths addObject:v7];
    }

    v14[0] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v6 reloadItemsAtIndexPaths:v11];
  }

  else
  {
    v10 = dispatch_get_global_queue(25, 0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__PXPeopleDetailSettingsViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    v12[3] = &unk_1E774C620;
    v12[4] = self;
    v13 = v7;
    dispatch_async(v10, v12);
  }
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  [a3 bounds];
  v6 = v5;
  v7 = 10.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  [a3 bounds];
  v6 = v5;
  v7 = 10.0;
  result.height = v7;
  result.width = v6;
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
  v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:v6];
  v9 = [v8 tag] + 1;
  [v8 setTag:v9];
  v10 = [(PXPeopleDetailSettingsViewController *)self dataSource];
  v11 = [v6 item];
  v12 = [v7 traitCollection];

  [v12 displayScale];
  v14 = v13;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __78__PXPeopleDetailSettingsViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v35[3] = &unk_1E7747840;
  v15 = v8;
  v36 = v15;
  v37 = v9;
  [v10 imageAtIndex:v11 targetSize:v35 displayScale:110.0 resultHandler:{110.0, v14}];

  v16 = [(PXPeopleDetailSettingsViewController *)self dataSource];
  v17 = [v16 personAtIndex:v11];

  v18 = [v10 titleAtIndex:v11];
  if (![v18 length])
  {
    v19 = [v17 uuid];

    v18 = v19;
  }

  v20 = [v10 photoQuantityAtIndex:v11];
  v21 = [v17 verifiedType];
  if ((v21 + 2) > 4)
  {
    v22 = @"Unknown";
  }

  else
  {
    v22 = off_1E7743D70[v21 + 2];
  }

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld (%@)", v20, v22];
  v24 = [v15 quantityLabel];
  [v24 setText:v23];

  v25 = 1.0;
  if (self->_selectDuplicatesMode)
  {
    if ([(NSMutableSet *)self->_selectedIndexPaths containsObject:v6])
    {
      v25 = 1.0;
    }

    else
    {
      v25 = 0.4;
    }
  }

  v26 = [v15 avatarView];
  [v26 setAlpha:v25];
  [v26 setHighlighted:0];
  v30 = *(MEMORY[0x1E695EFD0] + 16);
  v32 = *MEMORY[0x1E695EFD0];
  v31 = v32;
  v33 = v30;
  v34 = *(MEMORY[0x1E695EFD0] + 32);
  v29 = v34;
  [v26 setTransform:&v32];
  v32 = v31;
  v33 = v30;
  v34 = v29;
  [v15 setTransform:&v32];
  [v15 setName:v18];
  [v15 setTextAlpha:v25];
  v27 = v15;

  return v15;
}

void __78__PXPeopleDetailSettingsViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  px_dispatch_on_main_queue();
}

uint64_t __78__PXPeopleDetailSettingsViewController_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) tag];
  if (result == *(a1 + 48))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setImage:v4];
  }

  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(PXPeopleDetailSettingsViewController *)self dataSource:a3];
  v5 = [v4 numberOfMembers];

  return v5;
}

- (id)infoForPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 mdID];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"No mdID";
  }

  v7 = [v4 photoLibrary];
  v8 = [v7 librarySpecificFetchOptions];

  [v8 setIncludedDetectionTypes:self->_personDetectionTypes];
  v9 = [MEMORY[0x1E69787C8] fetchFacesForPerson:v4 options:v8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__203133;
  v28 = __Block_byref_object_dispose__203134;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [v4 uuid];
  v29 = [v10 stringWithFormat:@"-- Person uuid %@ (%lu faces) --\nVU entity ID: %@\n", v11, objc_msgSend(v9, "count"), v6];

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __54__PXPeopleDetailSettingsViewController_infoForPerson___block_invoke;
  v22[3] = &unk_1E7743C70;
  v13 = v12;
  v23 = v13;
  [v9 enumerateObjectsUsingBlock:v22];
  v14 = [MEMORY[0x1E69787F0] fetchFaceCropByFaceLocalIdentifierForFaces:v9 fetchOptions:v8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__PXPeopleDetailSettingsViewController_infoForPerson___block_invoke_2;
  v18[3] = &unk_1E7743C98;
  v15 = v13;
  v20 = self;
  v21 = &v24;
  v19 = v15;
  [v14 enumerateKeysAndObjectsUsingBlock:v18];
  v16 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v16;
}

void __54__PXPeopleDetailSettingsViewController_infoForPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 localIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __54__PXPeopleDetailSettingsViewController_infoForPerson___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v16 = [v5 objectForKeyedSubscript:a2];
  v7 = *(*(a1[6] + 8) + 40);
  v8 = [v6 uuid];
  v9 = a1[5];
  v10 = [v6 type];

  v11 = [v9 stringFromFaceCropType:v10];
  v12 = [v16 uuid];
  v13 = [v7 stringByAppendingFormat:@"\tFace crop %@ of type %@ linked to detected face %@ with vuObservationID %ld\n", v8, v11, v12, objc_msgSend(v16, "vuObservationID")];
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

- (id)stringFromFaceCropType:(signed __int16)a3
{
  if ((a3 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7743D48[(a3 - 1)];
  }
}

- (void)fileVURadar:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v4 initWithArray:MEMORY[0x1E695E0F0]];
  selectedIndexPaths = self->_selectedIndexPaths;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __52__PXPeopleDetailSettingsViewController_fileVURadar___block_invoke;
  v16 = &unk_1E7743C48;
  v17 = self;
  v18 = v5;
  v7 = v5;
  [(NSMutableSet *)selectedIndexPaths enumerateObjectsUsingBlock:&v13];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 componentsJoinedByString:@"\n"];
  v10 = [v8 stringWithFormat:@"This Radar contains a Photo library that has duplicate persons:\n%@", v9];

  v19[0] = @"com.apple.PhotoLibraryServices.PhotosDiagnostics";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  LOWORD(v12) = 257;
  [PXFeedbackTapToRadarUtilities fileRadarWithTitle:@"[People][VU] Annotated duplicate persons in library" description:v10 classification:@"Other Bug" componentID:@"1540673" componentName:@"VisualUnderstanding" componentVersion:@"all" keyword:0 screenshotURLs:0 attachmentURLs:0 includeSysDiagnose:v12 includeInternalRelease:v11 additionalExtensionIdentifiers:0 completionHandler:v13, v14, v15, v16, v17];
}

void __52__PXPeopleDetailSettingsViewController_fileVURadar___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 item];
  v4 = [*(a1 + 32) dataSource];
  v7 = [v4 personAtIndex:v3];

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) infoForPerson:v7];
  [v5 addObject:v6];
}

- (void)toggle_selectDuplicatesMode:(id)a3
{
  selectDuplicatesMode = self->_selectDuplicatesMode;
  self->_selectDuplicatesMode = !selectDuplicatesMode;
  v5 = [(PXPeopleDetailSettingsViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  v7 = v6;
  if (selectDuplicatesMode)
  {
    [v6 setStyle:0];

    previousLeftBarButtonItem = self->_previousLeftBarButtonItem;
    v9 = [(PXPeopleDetailSettingsViewController *)self navigationItem];
    [v9 setLeftBarButtonItem:previousLeftBarButtonItem];

    v10 = self->_previousLeftBarButtonItem;
    self->_previousLeftBarButtonItem = 0;

    [(NSMutableSet *)self->_selectedIndexPaths removeAllObjects];
  }

  else
  {
    [v6 setStyle:2];

    v11 = [(PXPeopleDetailSettingsViewController *)self navigationItem];
    v12 = [v11 leftBarButtonItem];
    v13 = self->_previousLeftBarButtonItem;
    self->_previousLeftBarButtonItem = v12;

    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"File People Radar" style:0 target:self action:sel_fileVURadar_];
    v15 = [(PXPeopleDetailSettingsViewController *)self navigationItem];
    [v15 setLeftBarButtonItem:v14];
  }

  v16 = [(PXPeopleDetailSettingsViewController *)self collectionView];
  [v16 reloadData];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PXPeopleDetailSettingsViewController;
  [(PXPeopleDetailSettingsViewController *)&v14 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v3 setMinimumInteritemSpacing:15.0];
  [v3 setMinimumLineSpacing:15.0];
  v4 = [(PXPeopleDetailSettingsViewController *)self view];
  v5 = objc_alloc(MEMORY[0x1E69DC7F0]);
  [v4 frame];
  v6 = [v5 initWithFrame:v3 collectionViewLayout:?];
  [(PXPeopleDetailSettingsViewController *)self setCollectionView:v6];
  [v6 setAutoresizingMask:18];
  [v6 setDataSource:self];
  [v6 setDelegate:self];
  [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"cellIdentifier"];
  v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  [v4 addSubview:v6];
  v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Select Dupes" style:0 target:self action:sel_toggle_selectDuplicatesMode_];
  v9 = [(PXPeopleDetailSettingsViewController *)self navigationItem];
  [v9 setRightBarButtonItem:v8];

  objc_initWeak(&location, self);
  v10 = [(PXPeopleDetailSettingsViewController *)self dataSource];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__PXPeopleDetailSettingsViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_1E774C318;
  objc_copyWeak(&v12, &location);
  [v10 loadObjectsAndUpdateMembersWithCompletion:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __51__PXPeopleDetailSettingsViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PXPeopleDetailSettingsViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __51__PXPeopleDetailSettingsViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained collectionView];
  [v1 reloadData];
}

- (PXPeopleDetailSettingsViewController)initWithPersonDetectionType:(signed __int16)a3
{
  v3 = a3;
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PXPeopleDetailSettingsViewController;
  v4 = [(PXPeopleDetailSettingsViewController *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithShort:v3];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [(PXPeopleDetailSettingsViewController *)v4 setPersonDetectionTypes:v6];

    [(PXPeopleDetailSettingsViewController *)v4 commonInit];
  }

  return v4;
}

- (PXPeopleDetailSettingsViewController)initWithDataSourceReloadBlock:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXPeopleDetailSettingsViewController;
  v5 = [(PXPeopleDetailSettingsViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PXPeopleDetailSettingsViewController *)v5 commonInitWithDataSourceReloadBlock:v4];
  }

  return v6;
}

- (PXPeopleDetailSettingsViewController)init
{
  v5.receiver = self;
  v5.super_class = PXPeopleDetailSettingsViewController;
  v2 = [(PXPeopleDetailSettingsViewController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6978830] defaultDetectionTypes];
    [(PXPeopleDetailSettingsViewController *)v2 setPersonDetectionTypes:v3];

    [(PXPeopleDetailSettingsViewController *)v2 commonInit];
  }

  return v2;
}

- (void)commonInitWithDataSourceReloadBlock:(id)a3
{
  v7 = a3;
  v4 = [(PXPeopleDetailSettingsViewController *)self dataSource];

  if (!v4)
  {
    v5 = [(PXPeopleDataSource *)[PXPeoplePersonDataSource alloc] initWithName:@"PeopleAdditionalDataSource" objectsReloadBlock:v7 asynchronousLoad:1 callbackDelegate:self];
    [(PXPeopleDataSource *)v5 setSortComparator:&__block_literal_global_203335];
    [(PXPeopleDetailSettingsViewController *)self setDataSource:v5];
    v6 = [[PXPeopleSuggestionDataSource alloc] initWithFlowType:0];
    [(PXPeopleDetailSettingsViewController *)self setSuggestionDataSource:v6];
  }
}

uint64_t __76__PXPeopleDetailSettingsViewController_commonInitWithDataSourceReloadBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 modelObject];
  v6 = [v4 modelObject];

  v7 = [v5 verifiedType];
  v8 = [v6 verifiedType];
  if (v7 != v8)
  {
    if (v7 == 1)
    {
      goto LABEL_6;
    }

    if (v8 == 1)
    {
      goto LABEL_8;
    }

    if (v7 == 2)
    {
      goto LABEL_6;
    }

    if (v8 == 2)
    {
      goto LABEL_8;
    }

    if (v7 > v8)
    {
LABEL_6:
      v13 = -1;
      goto LABEL_9;
    }

    if (v7 < v8)
    {
      goto LABEL_8;
    }
  }

  v9 = [v5 faceCount];
  v10 = [v6 faceCount];
  if (v9 > v10)
  {
    goto LABEL_6;
  }

  if (v9 < v10)
  {
LABEL_8:
    v13 = 1;
    goto LABEL_9;
  }

  v11 = [v5 localIdentifier];
  v12 = [v6 localIdentifier];
  v13 = [v11 compare:v12];

LABEL_9:
  return v13;
}

- (void)commonInit
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__PXPeopleDetailSettingsViewController_commonInit__block_invoke;
  v2[3] = &unk_1E7743C20;
  v2[4] = self;
  [(PXPeopleDetailSettingsViewController *)self commonInitWithDataSourceReloadBlock:v2];
}

id __50__PXPeopleDetailSettingsViewController_commonInit__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [*(a1 + 32) personDetectionTypes];
  [v3 setIncludedDetectionTypes:v4];

  v5 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v3];
  *(*(a1 + 32) + 992) = 0;
  v6 = objc_alloc(MEMORY[0x1E695DFA8]);
  v7 = [v6 initWithArray:MEMORY[0x1E695E0F0]];
  v8 = *(a1 + 32);
  v9 = *(v8 + 1000);
  *(v8 + 1000) = v7;

  return v5;
}

@end