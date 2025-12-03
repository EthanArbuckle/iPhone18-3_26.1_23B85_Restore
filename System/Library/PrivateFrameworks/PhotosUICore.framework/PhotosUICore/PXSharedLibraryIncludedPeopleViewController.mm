@interface PXSharedLibraryIncludedPeopleViewController
+ (double)heightForWidth:(double)width numberOfItems:(unint64_t)items;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (PXSharedLibraryIncludedPeopleViewController)initWithDataSourceManager:(id)manager;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_infoAtIndexPath:(id)path;
- (id)_personAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_removeCell:(id)cell;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryIncludedPeopleViewController

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v39[1] = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  pickingCopy = picking;
  if ([pickingCopy count] >= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleViewController.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"results.count <= 1"}];
  }

  [(PXSharedLibraryIncludedPeopleViewController *)self dismissViewControllerAnimated:1 completion:0];
  firstObject = [pickingCopy firstObject];

  itemIdentifier = [firstObject itemIdentifier];
  if ([itemIdentifier length])
  {
    dataSourceManager = [(PXSharedLibraryIncludedPeopleViewController *)self dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    v13 = [MEMORY[0x1E6978980] uuidFromLocalIdentifier:itemIdentifier];
    v14 = [dataSource infoForPersonUUID:v13];

    if (v14)
    {
      participant = [v14 participant];

      if (!participant)
      {
        currentSelectedIndexPath = [(PXSharedLibraryIncludedPeopleViewController *)self currentSelectedIndexPath];
        v17 = [(PXSharedLibraryIncludedPeopleViewController *)self _infoAtIndexPath:currentSelectedIndexPath];

        participant2 = [v17 participant];
        v19 = [PXSharedLibraryIncludedPeopleInfo alloc];
        [v14 person];
        v21 = v20 = pickerCopy;
        v22 = [(PXSharedLibraryIncludedPeopleInfo *)v19 initWithParticipant:participant2 person:v21];

        pickerCopy = v20;
        [dataSourceManager removeInfo:v14];
        [dataSourceManager replaceInfo:v17 withInfo:v22];
      }
    }

    else
    {
      v38 = pickerCopy;
      configuration = [pickerCopy configuration];
      photoLibrary = [configuration photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      [librarySpecificFetchOptions setFetchLimit:1];
      v26 = MEMORY[0x1E6978980];
      v39[0] = itemIdentifier;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
      v28 = [v26 fetchPersonsWithLocalIdentifiers:v27 options:librarySpecificFetchOptions];

      v37 = v28;
      firstObject2 = [v28 firstObject];
      if (!firstObject2)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleViewController.m" lineNumber:282 description:{@"Invalid parameter not satisfying: %@", @"person"}];
      }

      currentSelectedIndexPath2 = [(PXSharedLibraryIncludedPeopleViewController *)self currentSelectedIndexPath];
      v31 = [(PXSharedLibraryIncludedPeopleViewController *)self _infoAtIndexPath:currentSelectedIndexPath2];

      v32 = [PXSharedLibraryIncludedPeopleInfo alloc];
      participant3 = [v31 participant];
      v34 = [(PXSharedLibraryIncludedPeopleInfo *)v32 initWithParticipant:participant3 person:firstObject2];

      [dataSourceManager replaceInfo:v31 withInfo:v34];
      pickerCopy = v38;
    }

    [(PXSharedLibraryIncludedPeopleViewController *)self setCurrentSelectedIndexPath:0];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && PXSharedLibraryIncludedPeopleRulesObservationContext == context)
  {
    collectionView = [(PXSharedLibraryIncludedPeopleViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)_removeCell:(id)cell
{
  cellCopy = cell;
  if (cellCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage = [cellCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleViewController.m" lineNumber:239 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sender", v16, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleViewController.m" lineNumber:239 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sender", v16}];
  }

LABEL_3:
  collectionView = [(PXSharedLibraryIncludedPeopleViewController *)self collectionView];
  [cellCopy center];
  v7 = v6;
  v9 = v8;
  superview = [cellCopy superview];
  [collectionView convertPoint:superview fromView:{v7, v9}];
  v11 = [collectionView indexPathForItemAtPoint:?];

  v12 = [(PXSharedLibraryIncludedPeopleViewController *)self _infoAtIndexPath:v11];
  dataSourceManager = [(PXSharedLibraryIncludedPeopleViewController *)self dataSourceManager];
  [dataSourceManager removeInfo:v12];
}

- (id)_infoAtIndexPath:(id)path
{
  pathCopy = path;
  dataSourceManager = [(PXSharedLibraryIncludedPeopleViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  identifier = [dataSource identifier];
  section = [pathCopy section];
  item = [pathCopy item];

  v12[0] = identifier;
  v12[1] = section;
  v12[2] = item;
  v12[3] = 0x7FFFFFFFFFFFFFFFLL;
  v10 = [dataSource infoAtItemIndexPath:v12];

  return v10;
}

- (id)_personAtIndexPath:(id)path
{
  v3 = [(PXSharedLibraryIncludedPeopleViewController *)self _infoAtIndexPath:path];
  person = [v3 person];

  return person;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [view frame];

  [PXPeopleGridSizer cellSizeForGridClass:0 width:v5];
  result.height = v7;
  result.width = v6;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [view frame];
  [PXPeopleGridSizer marginForGridClass:0 width:v5];
  v7 = v6;
  v8 = v6 * 0.85;
  v9 = v8;
  v10 = v7;
  result.right = v10;
  result.bottom = v9;
  result.left = v7;
  result.top = v8;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = [(PXSharedLibraryIncludedPeopleViewController *)self _personAtIndexPath:pathCopy];
  if (!v6)
  {
    viewModel = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self->_dataSourceManager viewModel];
    sourceLibraryInfo = [viewModel sourceLibraryInfo];

    v9 = sourceLibraryInfo;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    photoLibrary = [v10 photoLibrary];

    if (photoLibrary)
    {
      v12 = [(PXSharedLibraryIncludedPeopleViewController *)self _infoAtIndexPath:pathCopy];
      name = [v12 name];

      if ([name length])
      {
        PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Rules_IdentifyPerson_Named");
        objc_claimAutoreleasedReturnValue();
        PXStringWithValidatedFormat();
      }

      v15 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Rules_IdentifyPerson_Unnamed");
      [(PXSharedLibraryIncludedPeopleViewController *)self setCurrentSelectedIndexPath:pathCopy];
      v16 = [objc_alloc(MEMORY[0x1E69790E0]) initWithPhotoLibrary:photoLibrary];
      [v16 setSelectionLimit:1];
      [v16 setPrompt:v15];
      [v16 _setSourceType:1];
      v17 = objc_alloc_init(MEMORY[0x1E6979160]);
      [v16 _setPeopleConfiguration:v17];
      v18 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v16];
      [v18 setDelegate:self];
      [(PXSharedLibraryIncludedPeopleViewController *)self presentViewController:v18 animated:1 completion:0];
    }

    else
    {
      v14 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v9;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "Unable to present PHPickerViewController since %@ does not provide a PHPhotoLibrary.", buf, 0xCu);
      }
    }
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v67[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PXSharedLibraryIncludedPeopleCellReuseIdentifier" forIndexPath:pathCopy];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v50 = objc_opt_class();
    v49 = NSStringFromClass(v50);
    px_descriptionForAssertionMessage = [v9 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleViewController.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[collectionView dequeueReusableCellWithReuseIdentifier:PXSharedLibraryIncludedPeopleCellReuseIdentifier forIndexPath:indexPath]", v49, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleViewController.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[collectionView dequeueReusableCellWithReuseIdentifier:PXSharedLibraryIncludedPeopleCellReuseIdentifier forIndexPath:indexPath]", v49}];
  }

LABEL_3:
  [v9 setRemoveTarget:self];
  [v9 setRemoveAction:sel__removeCell_];
  v10 = [(PXSharedLibraryIncludedPeopleViewController *)self _infoAtIndexPath:pathCopy];

  person = [v10 person];
  [viewCopy frame];
  [PXPeopleGridSizer cellSizeForGridClass:0 width:v12];
  v14 = v13;
  v16 = v15;
  [viewCopy px_screenScale];
  v18 = v17;
  name = [v10 name];
  v20 = [v9 tag] + 1;
  [v9 setTag:v20];
  v56 = v9;
  if (person)
  {
    nameLabel = [v9 nameLabel];
    [nameLabel setText:name];

    subtitleLabel = [v9 subtitleLabel];
    [subtitleLabel setText:&stru_1F1741150];

    v52 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:person targetSize:v14 displayScale:v16, v18];
    v23 = +[PXPeopleFaceCropManager sharedManager];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __85__PXSharedLibraryIncludedPeopleViewController_collectionView_cellForItemAtIndexPath___block_invoke;
    v64[3] = &unk_1E774A840;
    v24 = v9;
    v65 = v24;
    v66 = v20;
    [v23 requestFaceCropForOptions:v52 resultHandler:v64];

    dataSourceManager = [(PXSharedLibraryIncludedPeopleViewController *)self dataSourceManager];
    viewModel = [dataSourceManager viewModel];

    [viewModel sourceLibraryInfo];
    v27 = v54 = viewCopy;
    startDate = [viewModel startDate];
    [person uuid];
    v30 = v29 = v20;
    v67[0] = v30;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
    v31 = name;
    v32 = person;
    v34 = v33 = v10;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __85__PXSharedLibraryIncludedPeopleViewController_collectionView_cellForItemAtIndexPath___block_invoke_220;
    v61[3] = &unk_1E774A868;
    v62 = v24;
    v63 = v29;
    [v27 fetchEstimatedAssetsCountsForStartDate:startDate personUUIDs:v34 completion:v61];

    v10 = v33;
    person = v32;
    name = v31;
    nameComponents = v52;

    viewCopy = v54;
    subtitleLabel2 = v65;
  }

  else
  {
    v55 = v20;
    nameComponents = [v10 nameComponents];
    traitCollection = [viewCopy traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    if (nameComponents)
    {
      v53 = layoutDirection == 1;
      givenName = [nameComponents givenName];
      [nameComponents familyName];
      v40 = nameComponents;
      v42 = v41 = v10;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __85__PXSharedLibraryIncludedPeopleViewController_collectionView_cellForItemAtIndexPath___block_invoke_2_223;
      v59[3] = &unk_1E774A890;
      v43 = v60;
      v60[0] = v9;
      v60[1] = v55;
      [PXActivityUtilities requestMonogramForGivenName:givenName familyName:v42 targetSize:v53 displayScale:v59 isRTL:v14 completion:v16, v18];

      v10 = v41;
      nameComponents = v40;
    }

    else
    {
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __85__PXSharedLibraryIncludedPeopleViewController_collectionView_cellForItemAtIndexPath___block_invoke_3;
      v57[3] = &unk_1E774A890;
      v43 = v58;
      v58[0] = v9;
      v58[1] = v55;
      [PXActivityUtilities requestMonogramForEmailAddress:name targetSize:layoutDirection == 1 displayScale:v57 isRTL:v14 completion:v16, v18];
    }

    minusImageView = [v9 minusImageView];
    [minusImageView setHidden:1];

    nameLabel2 = [v9 nameLabel];
    [nameLabel2 setText:name];

    subtitleLabel2 = [v9 subtitleLabel];
    [subtitleLabel2 setText:&stru_1F1741150];
  }

  return v56;
}

void __85__PXSharedLibraryIncludedPeopleViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
  [objc_claimAutoreleasedReturnValue() CGRectValue];
  v6 = *(a1 + 32);
  v7 = v5;
  px_dispatch_on_main_queue();
}

void __85__PXSharedLibraryIncludedPeopleViewController_collectionView_cellForItemAtIndexPath___block_invoke_220(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) tag] == *(a1 + 40))
  {
    v6 = *a2;
    v7 = *(a2 + 16);
    v5 = PXSharedLibraryTitleForCounts(&v6);
    v4 = [*(a1 + 32) subtitleLabel];
    [v4 setText:v5];
  }
}

void __85__PXSharedLibraryIncludedPeopleViewController_collectionView_cellForItemAtIndexPath___block_invoke_2_223(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) tag] == *(a1 + 40))
  {
    v3 = [*(a1 + 32) faceImageView];
    v4 = *off_1E77221F8;
    v5 = *(off_1E77221F8 + 1);
    v6 = *(off_1E77221F8 + 2);
    v7 = *(off_1E77221F8 + 3);
    v8 = [v3 layer];
    [v8 setContentsRect:{v4, v5, v6, v7}];

    [v3 setImage:v9];
  }
}

void __85__PXSharedLibraryIncludedPeopleViewController_collectionView_cellForItemAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) tag] == *(a1 + 40))
  {
    v3 = [*(a1 + 32) faceImageView];
    v4 = *off_1E77221F8;
    v5 = *(off_1E77221F8 + 1);
    v6 = *(off_1E77221F8 + 2);
    v7 = *(off_1E77221F8 + 3);
    v8 = [v3 layer];
    [v8 setContentsRect:{v4, v5, v6, v7}];

    [v3 setImage:v9];
  }
}

void __85__PXSharedLibraryIncludedPeopleViewController_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) tag] == *(a1 + 48))
  {
    v7 = [*(a1 + 32) faceImageView];
    v2 = *(a1 + 56);
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v6 = [v7 layer];
    [v6 setContentsRect:{v2, v3, v4, v5}];

    [v7 setImage:*(a1 + 40)];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  dataSourceManager = [(PXSharedLibraryIncludedPeopleViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  v7 = [dataSource numberOfItemsInSection:section];

  return v7;
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = PXSharedLibraryIncludedPeopleViewController;
  [(PXSharedLibraryIncludedPeopleViewController *)&v14 viewDidLayoutSubviews];
  collectionView = [(PXSharedLibraryIncludedPeopleViewController *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  p_collectionViewBounds = &self->_collectionViewBounds;
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  if (!CGRectEqualToRect(*p_collectionViewBounds, v15))
  {
    p_collectionViewBounds->origin.x = v5;
    p_collectionViewBounds->origin.y = v7;
    p_collectionViewBounds->size.width = v9;
    p_collectionViewBounds->size.height = v11;
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PXSharedLibraryIncludedPeopleViewController;
  [(PXSharedLibraryIncludedPeopleViewController *)&v10 viewDidLoad];
  collectionView = [(PXSharedLibraryIncludedPeopleViewController *)self collectionView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [collectionView setBackgroundColor:clearColor];

  [collectionView setDataSource:self];
  [collectionView setDelegate:self];
  [collectionView bounds];
  self->_collectionViewBounds.origin.x = v5;
  self->_collectionViewBounds.origin.y = v6;
  self->_collectionViewBounds.size.width = v7;
  self->_collectionViewBounds.size.height = v8;
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PXSharedLibraryIncludedPeopleCellReuseIdentifier"];
  [collectionView reloadData];
  dataSourceManager = [(PXSharedLibraryIncludedPeopleViewController *)self dataSourceManager];
  [dataSourceManager registerChangeObserver:self context:PXSharedLibraryIncludedPeopleRulesObservationContext];
}

- (PXSharedLibraryIncludedPeopleViewController)initWithDataSourceManager:(id)manager
{
  managerCopy = manager;
  v6 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v6 setMinimumLineSpacing:58.0];
  v10.receiver = self;
  v10.super_class = PXSharedLibraryIncludedPeopleViewController;
  v7 = [(PXSharedLibraryIncludedPeopleViewController *)&v10 initWithCollectionViewLayout:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataSourceManager, manager);
  }

  return v8;
}

+ (double)heightForWidth:(double)width numberOfItems:(unint64_t)items
{
  [PXPeopleGridSizer marginForGridClass:0 width:?];
  v7 = v6;
  [PXPeopleGridSizer cellSizeForGridClass:0 width:width];
  v9 = v8;
  v10 = items / [PXPeopleGridSizer numberOfColumnsForGridClass:0 width:width];
  v11 = (v9 + 58.0) * vcvtps_u32_f32(v10);
  v12 = v7 + v11;
  v13 = v11 <= 0.0;
  result = 0.0;
  if (!v13)
  {
    return v12;
  }

  return result;
}

@end