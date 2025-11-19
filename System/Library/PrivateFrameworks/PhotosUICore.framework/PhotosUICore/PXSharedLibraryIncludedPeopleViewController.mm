@interface PXSharedLibraryIncludedPeopleViewController
+ (double)heightForWidth:(double)a3 numberOfItems:(unint64_t)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PXSharedLibraryIncludedPeopleViewController)initWithDataSourceManager:(id)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_infoAtIndexPath:(id)a3;
- (id)_personAtIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_removeCell:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryIncludedPeopleViewController

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v8 count] >= 2)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleViewController.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"results.count <= 1"}];
  }

  [(PXSharedLibraryIncludedPeopleViewController *)self dismissViewControllerAnimated:1 completion:0];
  v9 = [v8 firstObject];

  v10 = [v9 itemIdentifier];
  if ([v10 length])
  {
    v11 = [(PXSharedLibraryIncludedPeopleViewController *)self dataSourceManager];
    v12 = [v11 dataSource];
    v13 = [MEMORY[0x1E6978980] uuidFromLocalIdentifier:v10];
    v14 = [v12 infoForPersonUUID:v13];

    if (v14)
    {
      v15 = [v14 participant];

      if (!v15)
      {
        v16 = [(PXSharedLibraryIncludedPeopleViewController *)self currentSelectedIndexPath];
        v17 = [(PXSharedLibraryIncludedPeopleViewController *)self _infoAtIndexPath:v16];

        v18 = [v17 participant];
        v19 = [PXSharedLibraryIncludedPeopleInfo alloc];
        [v14 person];
        v21 = v20 = v7;
        v22 = [(PXSharedLibraryIncludedPeopleInfo *)v19 initWithParticipant:v18 person:v21];

        v7 = v20;
        [v11 removeInfo:v14];
        [v11 replaceInfo:v17 withInfo:v22];
      }
    }

    else
    {
      v38 = v7;
      v23 = [v7 configuration];
      v24 = [v23 photoLibrary];
      v25 = [v24 librarySpecificFetchOptions];

      [v25 setFetchLimit:1];
      v26 = MEMORY[0x1E6978980];
      v39[0] = v10;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
      v28 = [v26 fetchPersonsWithLocalIdentifiers:v27 options:v25];

      v37 = v28;
      v29 = [v28 firstObject];
      if (!v29)
      {
        v36 = [MEMORY[0x1E696AAA8] currentHandler];
        [v36 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleViewController.m" lineNumber:282 description:{@"Invalid parameter not satisfying: %@", @"person"}];
      }

      v30 = [(PXSharedLibraryIncludedPeopleViewController *)self currentSelectedIndexPath];
      v31 = [(PXSharedLibraryIncludedPeopleViewController *)self _infoAtIndexPath:v30];

      v32 = [PXSharedLibraryIncludedPeopleInfo alloc];
      v33 = [v31 participant];
      v34 = [(PXSharedLibraryIncludedPeopleInfo *)v32 initWithParticipant:v33 person:v29];

      [v11 replaceInfo:v31 withInfo:v34];
      v7 = v38;
    }

    [(PXSharedLibraryIncludedPeopleViewController *)self setCurrentSelectedIndexPath:0];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 1) != 0 && PXSharedLibraryIncludedPeopleRulesObservationContext == a5)
  {
    v6 = [(PXSharedLibraryIncludedPeopleViewController *)self collectionView];
    [v6 reloadData];
  }
}

- (void)_removeCell:(id)a3
{
  v19 = a3;
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    v18 = [v19 px_descriptionForAssertionMessage];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleViewController.m" lineNumber:239 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sender", v16, v18}];
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleViewController.m" lineNumber:239 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sender", v16}];
  }

LABEL_3:
  v5 = [(PXSharedLibraryIncludedPeopleViewController *)self collectionView];
  [v19 center];
  v7 = v6;
  v9 = v8;
  v10 = [v19 superview];
  [v5 convertPoint:v10 fromView:{v7, v9}];
  v11 = [v5 indexPathForItemAtPoint:?];

  v12 = [(PXSharedLibraryIncludedPeopleViewController *)self _infoAtIndexPath:v11];
  v13 = [(PXSharedLibraryIncludedPeopleViewController *)self dataSourceManager];
  [v13 removeInfo:v12];
}

- (id)_infoAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibraryIncludedPeopleViewController *)self dataSourceManager];
  v6 = [v5 dataSource];

  v7 = [v6 identifier];
  v8 = [v4 section];
  v9 = [v4 item];

  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = 0x7FFFFFFFFFFFFFFFLL;
  v10 = [v6 infoAtItemIndexPath:v12];

  return v10;
}

- (id)_personAtIndexPath:(id)a3
{
  v3 = [(PXSharedLibraryIncludedPeopleViewController *)self _infoAtIndexPath:a3];
  v4 = [v3 person];

  return v4;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [a3 frame];

  [PXPeopleGridSizer cellSizeForGridClass:0 width:v5];
  result.height = v7;
  result.width = v6;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [a3 frame];
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PXSharedLibraryIncludedPeopleViewController *)self _personAtIndexPath:v5];
  if (!v6)
  {
    v7 = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self->_dataSourceManager viewModel];
    v8 = [v7 sourceLibraryInfo];

    v9 = v8;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 photoLibrary];

    if (v11)
    {
      v12 = [(PXSharedLibraryIncludedPeopleViewController *)self _infoAtIndexPath:v5];
      v13 = [v12 name];

      if ([v13 length])
      {
        PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Rules_IdentifyPerson_Named");
        objc_claimAutoreleasedReturnValue();
        PXStringWithValidatedFormat();
      }

      v15 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Rules_IdentifyPerson_Unnamed");
      [(PXSharedLibraryIncludedPeopleViewController *)self setCurrentSelectedIndexPath:v5];
      v16 = [objc_alloc(MEMORY[0x1E69790E0]) initWithPhotoLibrary:v11];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v67[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:@"PXSharedLibraryIncludedPeopleCellReuseIdentifier" forIndexPath:v8];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    v50 = objc_opt_class();
    v49 = NSStringFromClass(v50);
    v51 = [v9 px_descriptionForAssertionMessage];
    [v47 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleViewController.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[collectionView dequeueReusableCellWithReuseIdentifier:PXSharedLibraryIncludedPeopleCellReuseIdentifier forIndexPath:indexPath]", v49, v51}];
  }

  else
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    [v47 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleViewController.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[collectionView dequeueReusableCellWithReuseIdentifier:PXSharedLibraryIncludedPeopleCellReuseIdentifier forIndexPath:indexPath]", v49}];
  }

LABEL_3:
  [v9 setRemoveTarget:self];
  [v9 setRemoveAction:sel__removeCell_];
  v10 = [(PXSharedLibraryIncludedPeopleViewController *)self _infoAtIndexPath:v8];

  v11 = [v10 person];
  [v7 frame];
  [PXPeopleGridSizer cellSizeForGridClass:0 width:v12];
  v14 = v13;
  v16 = v15;
  [v7 px_screenScale];
  v18 = v17;
  v19 = [v10 name];
  v20 = [v9 tag] + 1;
  [v9 setTag:v20];
  v56 = v9;
  if (v11)
  {
    v21 = [v9 nameLabel];
    [v21 setText:v19];

    v22 = [v9 subtitleLabel];
    [v22 setText:&stru_1F1741150];

    v52 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:v11 targetSize:v14 displayScale:v16, v18];
    v23 = +[PXPeopleFaceCropManager sharedManager];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __85__PXSharedLibraryIncludedPeopleViewController_collectionView_cellForItemAtIndexPath___block_invoke;
    v64[3] = &unk_1E774A840;
    v24 = v9;
    v65 = v24;
    v66 = v20;
    [v23 requestFaceCropForOptions:v52 resultHandler:v64];

    v25 = [(PXSharedLibraryIncludedPeopleViewController *)self dataSourceManager];
    v26 = [v25 viewModel];

    [v26 sourceLibraryInfo];
    v27 = v54 = v7;
    v28 = [v26 startDate];
    [v11 uuid];
    v30 = v29 = v20;
    v67[0] = v30;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
    v31 = v19;
    v32 = v11;
    v34 = v33 = v10;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __85__PXSharedLibraryIncludedPeopleViewController_collectionView_cellForItemAtIndexPath___block_invoke_220;
    v61[3] = &unk_1E774A868;
    v62 = v24;
    v63 = v29;
    [v27 fetchEstimatedAssetsCountsForStartDate:v28 personUUIDs:v34 completion:v61];

    v10 = v33;
    v11 = v32;
    v19 = v31;
    v35 = v52;

    v7 = v54;
    v36 = v65;
  }

  else
  {
    v55 = v20;
    v35 = [v10 nameComponents];
    v37 = [v7 traitCollection];
    v38 = [v37 layoutDirection];

    if (v35)
    {
      v53 = v38 == 1;
      v39 = [v35 givenName];
      [v35 familyName];
      v40 = v35;
      v42 = v41 = v10;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __85__PXSharedLibraryIncludedPeopleViewController_collectionView_cellForItemAtIndexPath___block_invoke_2_223;
      v59[3] = &unk_1E774A890;
      v43 = v60;
      v60[0] = v9;
      v60[1] = v55;
      [PXActivityUtilities requestMonogramForGivenName:v39 familyName:v42 targetSize:v53 displayScale:v59 isRTL:v14 completion:v16, v18];

      v10 = v41;
      v35 = v40;
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
      [PXActivityUtilities requestMonogramForEmailAddress:v19 targetSize:v38 == 1 displayScale:v57 isRTL:v14 completion:v16, v18];
    }

    v44 = [v9 minusImageView];
    [v44 setHidden:1];

    v45 = [v9 nameLabel];
    [v45 setText:v19];

    v36 = [v9 subtitleLabel];
    [v36 setText:&stru_1F1741150];
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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(PXSharedLibraryIncludedPeopleViewController *)self dataSourceManager];
  v6 = [v5 dataSource];
  v7 = [v6 numberOfItemsInSection:a4];

  return v7;
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = PXSharedLibraryIncludedPeopleViewController;
  [(PXSharedLibraryIncludedPeopleViewController *)&v14 viewDidLayoutSubviews];
  v3 = [(PXSharedLibraryIncludedPeopleViewController *)self collectionView];
  [v3 bounds];
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
    v13 = [v3 collectionViewLayout];
    [v13 invalidateLayout];
  }
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PXSharedLibraryIncludedPeopleViewController;
  [(PXSharedLibraryIncludedPeopleViewController *)&v10 viewDidLoad];
  v3 = [(PXSharedLibraryIncludedPeopleViewController *)self collectionView];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setDataSource:self];
  [v3 setDelegate:self];
  [v3 bounds];
  self->_collectionViewBounds.origin.x = v5;
  self->_collectionViewBounds.origin.y = v6;
  self->_collectionViewBounds.size.width = v7;
  self->_collectionViewBounds.size.height = v8;
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PXSharedLibraryIncludedPeopleCellReuseIdentifier"];
  [v3 reloadData];
  v9 = [(PXSharedLibraryIncludedPeopleViewController *)self dataSourceManager];
  [v9 registerChangeObserver:self context:PXSharedLibraryIncludedPeopleRulesObservationContext];
}

- (PXSharedLibraryIncludedPeopleViewController)initWithDataSourceManager:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v6 setMinimumLineSpacing:58.0];
  v10.receiver = self;
  v10.super_class = PXSharedLibraryIncludedPeopleViewController;
  v7 = [(PXSharedLibraryIncludedPeopleViewController *)&v10 initWithCollectionViewLayout:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataSourceManager, a3);
  }

  return v8;
}

+ (double)heightForWidth:(double)a3 numberOfItems:(unint64_t)a4
{
  [PXPeopleGridSizer marginForGridClass:0 width:?];
  v7 = v6;
  [PXPeopleGridSizer cellSizeForGridClass:0 width:a3];
  v9 = v8;
  v10 = a4 / [PXPeopleGridSizer numberOfColumnsForGridClass:0 width:a3];
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