@interface PUWallpaperPosterShuffleGridViewController
- (BOOL)_canAddMorePhotos;
- (BOOL)photosContentController:(id)a3 pushViewController:(id)a4;
- (BOOL)photosViewController:(id)a3 didPickAssetReference:(id)a4;
- (CGRect)preferredCropForAsset:(id)a3 withAspectRatio:(double)a4;
- (PUWallpaperPosterShuffleGridViewController)initWithCoder:(id)a3;
- (PUWallpaperPosterShuffleGridViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PUWallpaperPosterShuffleGridViewController)initWithResourceManager:(id)a3 posterMedia:(id)a4;
- (PUWallpaperPosterShuffleGridViewControllerDelegate)delegate;
- (UIEdgeInsets)maskPaddingForContentController:(id)a3;
- (id)_fetchResultWithAssetsFetchedFromPosterMedia:(id)a3;
- (void)_createBarButtonItemsIfNeeded;
- (void)_exitSelectMode;
- (void)_finishWithSelectedPosterMedia:(id)a3;
- (void)_handleAddPhotos:(id)a3;
- (void)_handleDeselectAll:(id)a3;
- (void)_handleEnterSelectMode:(id)a3;
- (void)_handleRemovePhotos:(id)a3;
- (void)_handleSelectAll:(id)a3;
- (void)_setNeedsUpdate;
- (void)_updateBarItems;
- (void)_updateDataSource;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)setGridContentController:(id)a3;
- (void)setGridViewModel:(id)a3;
- (void)setPosterMedia:(id)a3;
- (void)setTungstenLayout:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PUWallpaperPosterShuffleGridViewController

- (PUWallpaperPosterShuffleGridViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v5 = a4;
  [(PUWallpaperPosterShuffleGridViewController *)self dismissViewControllerAnimated:1 completion:0];
  if ([v5 count])
  {
    v6 = objc_alloc(MEMORY[0x1E695DFB8]);
    v7 = PXMap();
    v8 = [v6 initWithArray:v7];

    v9 = objc_alloc(MEMORY[0x1E695DFB8]);
    v10 = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
    v11 = PXMap();
    v12 = [v9 initWithArray:v11];

    v13 = [v12 mutableCopy];
    [v13 minusOrderedSet:v8];
    if ([v13 count])
    {
      v14 = [(PUWallpaperPosterShuffleGridViewController *)self photoLibrary];
      v15 = [v14 librarySpecificFetchOptions];

      v16 = MEMORY[0x1E6978630];
      v17 = [v13 array];
      v18 = [v16 fetchAssetsWithLocalIdentifiers:v17 options:v15];
      v19 = PXMap();

      v20 = [v8 mutableCopy];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__PUWallpaperPosterShuffleGridViewController_picker_didFinishPicking___block_invoke_4;
      v27[3] = &unk_1E7B759A0;
      v28 = v19;
      v21 = v20;
      v29 = v21;
      v22 = v19;
      [v13 enumerateObjectsUsingBlock:v27];
      v23 = v21;

      v8 = v23;
    }

    v24 = objc_alloc(MEMORY[0x1E695DFB8]);
    v25 = PXMap();
    v26 = [v24 initWithArray:v25];
    [(PUWallpaperPosterShuffleGridViewController *)self setPosterMedia:v26];
  }
}

void __70__PUWallpaperPosterShuffleGridViewController_picker_didFinishPicking___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

id __70__PUWallpaperPosterShuffleGridViewController_picker_didFinishPicking___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C0808];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [MEMORY[0x1E6978630] uuidFromLocalIdentifier:v3];

  v6 = [v4 initWithAssetUUID:v5];

  return v6;
}

id __70__PUWallpaperPosterShuffleGridViewController_picker_didFinishPicking___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6978630];
  v3 = [a2 assetUUID];
  v4 = [v2 localIdentifierWithUUID:v3];

  return v4;
}

- (CGRect)preferredCropForAsset:(id)a3 withAspectRatio:(double)a4
{
  v5 = a3;
  v6 = *MEMORY[0x1E69C48E0];
  v7 = *(MEMORY[0x1E69C48E0] + 8);
  v8 = *(MEMORY[0x1E69C48E0] + 16);
  v9 = *(MEMORY[0x1E69C48E0] + 24);
  v10 = v5;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    v18 = v10;
LABEL_9:

    goto LABEL_10;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [(PUWallpaperPosterShuffleGridViewController *)self px_screen];
    [v12 bounds];
    v14 = v13;
    v16 = v15;

    if (v14 <= v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    v18 = [MEMORY[0x1E69C0790] deviceConfigurationForOrientation:v17];
    [MEMORY[0x1E69C15B0] bestWallpaperCropForAsset:v11 classification:0 outputCropScore:0 outputLayoutAcceptable:0 layoutConfiguration:v18];
    v6 = v19;
    v7 = v20;
    v8 = v21;
    v9 = v22;
    goto LABEL_9;
  }

LABEL_10:

  v23 = v6;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (BOOL)photosViewController:(id)a3 didPickAssetReference:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
    v14 = v9;
    v11 = PXFind();
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:472 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v11 = [v9 posterMedia];
  }

  [(PUWallpaperPosterShuffleGridViewController *)self _finishWithSelectedPosterMedia:v11];

  return 1;
}

uint64_t __89__PUWallpaperPosterShuffleGridViewController_photosViewController_didPickAssetReference___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assetUUID];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (UIEdgeInsets)maskPaddingForContentController:(id)a3
{
  v3 = *MEMORY[0x1E69C48A0];
  v4 = *(MEMORY[0x1E69C48A0] + 8);
  v5 = *(MEMORY[0x1E69C48A0] + 16);
  v6 = *(MEMORY[0x1E69C48A0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (BOOL)photosContentController:(id)a3 pushViewController:(id)a4
{
  v5 = a4;
  v6 = [(PUWallpaperPosterShuffleGridViewController *)self navigationController];

  if (v6)
  {
    v7 = [(PUWallpaperPosterShuffleGridViewController *)self navigationController];
    [v7 pushViewController:v5 animated:1];
  }

  return v6 != 0;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (GridViewModelObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:424 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 6) != 0)
  {
    v11 = v9;
    [(PUWallpaperPosterShuffleGridViewController *)self _invalidateBarItems];
    v9 = v11;
  }
}

- (id)_fetchResultWithAssetsFetchedFromPosterMedia:(id)a3
{
  v4 = a3;
  v5 = PXMap();
  v6 = [(PUWallpaperPosterShuffleGridViewController *)self photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  v8 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v5 options:v7];
  v9 = [v8 fetchedObjects];

  v10 = objc_alloc(MEMORY[0x1E695DF20]);
  v11 = PXMap();
  v12 = [v10 initWithObjects:v9 forKeys:v11];

  v17 = v12;
  v13 = v12;
  v14 = PXMap();

  v15 = PXDisplayAssetFetchResultFromArray();

  return v15;
}

PUPosterMediaDisplayAsset *__91__PUWallpaperPosterShuffleGridViewController__fetchResultWithAssetsFetchedFromPosterMedia___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 assetUUID];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [[PUPosterMediaDisplayAsset alloc] initWithPosterMedia:v3];
  }

  v9 = v8;

  return v9;
}

id __91__PUWallpaperPosterShuffleGridViewController__fetchResultWithAssetsFetchedFromPosterMedia___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6978630];
  v3 = [a2 assetUUID];
  v4 = [v2 localIdentifierWithUUID:v3];

  return v4;
}

- (void)_updateBarItems
{
  v23[3] = *MEMORY[0x1E69E9840];
  [(PUWallpaperPosterShuffleGridViewController *)self _createBarButtonItemsIfNeeded];
  v3 = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  v4 = [v3 selectionSnapshot];
  v5 = [v3 isInSelectMode];
  v6 = [v4 isAnyItemSelected];
  v7 = [v4 areAllItemsSelected];
  v8 = [v4 selectedIndexPaths];
  v9 = [v8 count];

  v10 = [v3 dataSourceManager];
  v11 = [v10 dataSource];
  v12 = [v11 totalNumberOfItems];

  if (v5)
  {
    if (v6)
    {
      v13 = PULocalizedString(@"REVIEW_COUNT_SELECTED_TITLE_TEXT");
      v21 = v9;
      v14 = PULocalizedStringWithValidatedFormat(v13, @"%lu");

      v15 = &OBJC_IVAR___PUWallpaperPosterShuffleGridViewController__removePhotosBarButtonItem;
    }

    else
    {
      v14 = PXLocalizedString();
      v15 = &OBJC_IVAR___PUWallpaperPosterShuffleGridViewController__exitSelectModeBarButtonItem;
    }

    p_selectAllBarButtonItem = &self->_selectAllBarButtonItem;
    [(UIBarButtonItem *)self->_selectAllBarButtonItem setEnabled:v12 > 0, v21];
    v23[0] = *(&self->super.super.super.isa + *v15);
    v17 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    v23[1] = v17;
    if (v7)
    {
      p_selectAllBarButtonItem = &self->_deselectAllBarButtonItem;
    }

    v18 = v23;
  }

  else
  {
    v14 = PLLocalizedCountDescription();
    [(UIBarButtonItem *)self->_addPhotosBarButtonItem setEnabled:[(PUWallpaperPosterShuffleGridViewController *)self _canAddMorePhotos]];
    p_selectAllBarButtonItem = &self->_enterSelectModeBarButtonItem;
    [(UIBarButtonItem *)self->_enterSelectModeBarButtonItem setEnabled:v12 > 0];
    [(UIBarButtonItem *)self->_doneBarButtonItem setEnabled:v12 > 0];
    v22[0] = self->_addPhotosBarButtonItem;
    v17 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    v22[1] = v17;
    v18 = v22;
  }

  v18[2] = *p_selectAllBarButtonItem;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  v20 = [(PUWallpaperPosterShuffleGridViewController *)self navigationItem];
  [v20 setRightBarButtonItem:self->_doneBarButtonItem];

  [(PUWallpaperPosterShuffleGridViewController *)self setToolbarItems:v19 animated:1];
  [(PUWallpaperPosterShuffleGridViewController *)self setTitle:v14];
}

- (void)_updateDataSource
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
  v5 = MEMORY[0x1E6978650];
  v6 = [(PUWallpaperPosterShuffleGridViewController *)self photoLibrary];
  v7 = [v5 transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:0 identifier:0 photoLibrary:v6];

  v8 = [(PUWallpaperPosterShuffleGridViewController *)self _fetchResultWithAssetsFetchedFromPosterMedia:v4];
  v9 = objc_alloc(MEMORY[0x1E69C3A78]);
  v29[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v28 = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v12 = [v9 initWithAssetCollectionBySection:v10 assetsBySection:v11 curatedAssetsBySection:0 keyAssetsBySection:0 sectionContent:0];

  v13 = [(PUWallpaperPosterShuffleGridViewController *)self gridContentController];
  if (!v13)
  {
    v15 = [objc_alloc(MEMORY[0x1E69C3768]) initWithDataSource:v12];
    v16 = objc_alloc(MEMORY[0x1E69A2908]);
    v17 = [(PUWallpaperPosterShuffleGridViewController *)self mediaProvider];
    v18 = [v16 initWithDataSourceManager:v15 mediaProvider:v17 selectionManager:0 assetActionManager:0 assetCollectionActionManager:0];

    [v18 setDelegate:self];
    [v18 setIsEmbedded:1];
    [v18 setIgnoreFilterStateWhenNotFiltering:1];
    [v18 setSectionBodyStyle:1];
    [v18 setGridStyle:0];
    [v18 setNavBarStyle:5];
    [v18 setAllowsUserDefaults:0];
    [v18 setAllowsDragOut:0];
    [v18 setAllowsDragIn:0];
    [v18 setForbiddenBadges:0];
    [v18 setItemAspectRatio:*MEMORY[0x1E69A2948]];
    [v18 setPreferredAssetCropDelegate:self];
    [v18 setAllowedActions:*MEMORY[0x1E69A2940] & 0xFFFFFFFFFFFFFFFELL ^ 0x81];
    [v18 setAllowedBehaviors:0];
    v19 = objc_alloc(MEMORY[0x1E69A28F8]);
    v20 = [(PUWallpaperPosterShuffleGridViewController *)self px_extendedTraitCollection];
    v21 = [v19 initWithConfiguration:v18 traitCollection:v20];
    [(PUWallpaperPosterShuffleGridViewController *)self setGridContentController:v21];

    goto LABEL_6;
  }

  v14 = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  v15 = [v14 dataSourceManager];

  if (!v15)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [v22 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:343 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.gridViewModel.dataSourceManager", v24}];
LABEL_9:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v24 = NSStringFromClass(v25);
    v26 = [v15 px_descriptionForAssertionMessage];
    v22 = v27;
    [v27 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:343 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.gridViewModel.dataSourceManager", v24, v26}];

    goto LABEL_9;
  }

LABEL_4:
  [v15 setDataSource:v12 changeDetails:0];
LABEL_6:
}

- (void)_setNeedsUpdate
{
  v2 = [(PUWallpaperPosterShuffleGridViewController *)self view];
  [v2 setNeedsLayout];
}

- (void)_handleDeselectAll:(id)a3
{
  v3 = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  [v3 performChanges:&__block_literal_global_331];
}

- (void)_handleSelectAll:(id)a3
{
  v3 = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  [v3 performChanges:&__block_literal_global_329];
}

- (void)_handleEnterSelectMode:(id)a3
{
  v3 = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  [v3 performChanges:&__block_literal_global_327];
}

- (void)_handleRemovePhotos:(id)a3
{
  v5 = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
  v6 = [v5 mutableCopy];

  v7 = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  v8 = [v7 selectionSnapshot];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PUWallpaperPosterShuffleGridViewController__handleRemovePhotos___block_invoke;
  v11[3] = &unk_1E7B75908;
  v12 = v6;
  v13 = a2;
  v11[4] = self;
  v9 = v6;
  [v8 enumerateSelectedObjectsUsingBlock:v11];
  v10 = [v9 copy];
  [(PUWallpaperPosterShuffleGridViewController *)self setPosterMedia:v10];

  [(PUWallpaperPosterShuffleGridViewController *)self _exitSelectMode];
}

void __66__PUWallpaperPosterShuffleGridViewController__handleRemovePhotos___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v5 = [v4 posterMedia];
        v6 = [v5 assetUUID];

        goto LABEL_9;
      }

      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = *(a1 + 48);
      v17 = *(a1 + 32);
      v18 = objc_opt_class();
      v15 = NSStringFromClass(v18);
      v19 = [v4 px_descriptionForAssertionMessage];
      [v11 handleFailureInMethod:v16 object:v17 file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:253 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"object", v15, v19}];
    }

    else
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = *(a1 + 48);
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      [v11 handleFailureInMethod:v12 object:v13 file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:253 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"object", v15}];
    }

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = v3;
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = *(a1 + 48);
    v22 = *(a1 + 32);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [v20 handleFailureInMethod:v21 object:v22 file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:255 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"object", v24}];
LABEL_17:

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = *(a1 + 48);
    v26 = *(a1 + 32);
    v27 = objc_opt_class();
    v24 = NSStringFromClass(v27);
    v28 = [v7 px_descriptionForAssertionMessage];
    [v20 handleFailureInMethod:v25 object:v26 file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:255 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"object", v24, v28}];

    goto LABEL_17;
  }

LABEL_8:
  v6 = [v7 uuid];
LABEL_9:

  if (v6)
  {
    v8 = *(a1 + 40);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __66__PUWallpaperPosterShuffleGridViewController__handleRemovePhotos___block_invoke_2;
    v29[3] = &unk_1E7B78618;
    v30 = v6;
    v9 = v6;
    v10 = [v8 indexesOfObjectsPassingTest:v29];
    [*(a1 + 40) removeObjectsAtIndexes:v10];
  }

LABEL_11:
}

uint64_t __66__PUWallpaperPosterShuffleGridViewController__handleRemovePhotos___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 assetUUID];
  v4 = v3;
  if (v3 == *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqualToString:?];
  }

  return v5;
}

- (void)_handleAddPhotos:(id)a3
{
  v4 = objc_alloc(MEMORY[0x1E69790E0]);
  v5 = [(PUWallpaperPosterShuffleGridViewController *)self photoLibrary];
  v11 = [v4 initWithPhotoLibraryAndOnlyReturnsIdentifiers:v5];

  v6 = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
  v7 = PXMap();
  [v11 setPreselectedAssetIdentifiers:v7];

  [v11 setSelectionLimit:50];
  v8 = [MEMORY[0x1E69790E8] imagesFilter];
  [v11 setFilter:v8];

  [v11 setDisabledCapabilities:18];
  [v11 _setDisabledPrivateCapabilities:268];
  v9 = [MEMORY[0x1E6979178] shuffleWallpaperSuggestionGroup];
  [v11 set_suggestionGroup:v9];

  v10 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v11];
  [v10 setDelegate:self];
  [(PUWallpaperPosterShuffleGridViewController *)self presentViewController:v10 animated:1 completion:0];
}

id __63__PUWallpaperPosterShuffleGridViewController__handleAddPhotos___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6978630];
  v3 = [a2 assetUUID];
  v4 = [v2 localIdentifierWithUUID:v3];

  return v4;
}

- (void)_finishWithSelectedPosterMedia:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
  v6 = [(PUWallpaperPosterShuffleGridViewController *)self initialPosterMedia];
  v8 = [v5 differenceFromOrderedSet:v6 withOptions:0 usingEquivalenceTest:&__block_literal_global_307];

  v7 = [(PUWallpaperPosterShuffleGridViewController *)self delegate];
  [v7 wallpaperPosterShuffleGridViewController:self didFinishWithChange:v8 selectedPosterMedia:v4];
}

uint64_t __77__PUWallpaperPosterShuffleGridViewController__finishWithSelectedPosterMedia___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 assetUUID];
  v6 = [v4 assetUUID];

  v7 = [v5 isEqual:v6];
  return v7;
}

- (void)_exitSelectMode
{
  v2 = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  [v2 performChanges:&__block_literal_global_12808];
}

- (BOOL)_canAddMorePhotos
{
  v2 = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
  v3 = [v2 count] < 0x32;

  return v3;
}

- (void)_createBarButtonItemsIfNeeded
{
  if (!self->_doneBarButtonItem)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleDone_];
    doneBarButtonItem = self->_doneBarButtonItem;
    self->_doneBarButtonItem = v3;

    v5 = objc_alloc(MEMORY[0x1E69DC708]);
    v6 = PULocalizedString(@"PHOTOS_WALLPAPER_PICKER_ADD_PHOTOS_BUTTON_TITLE");
    v7 = [v5 initWithTitle:v6 style:0 target:self action:sel__handleAddPhotos_];
    addPhotosBarButtonItem = self->_addPhotosBarButtonItem;
    self->_addPhotosBarButtonItem = v7;

    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    v11 = [v9 initWithImage:v10 style:0 target:self action:sel__handleRemovePhotos_];
    removePhotosBarButtonItem = self->_removePhotosBarButtonItem;
    self->_removePhotosBarButtonItem = v11;

    v13 = [MEMORY[0x1E69DC708] px_localizedSelectBarButtonItem];
    enterSelectModeBarButtonItem = self->_enterSelectModeBarButtonItem;
    self->_enterSelectModeBarButtonItem = v13;

    [(UIBarButtonItem *)self->_enterSelectModeBarButtonItem setTarget:self];
    [(UIBarButtonItem *)self->_enterSelectModeBarButtonItem setAction:sel__handleEnterSelectMode_];
    v15 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleExitSelectMode_];
    exitSelectModeBarButtonItem = self->_exitSelectModeBarButtonItem;
    self->_exitSelectModeBarButtonItem = v15;

    v17 = [MEMORY[0x1E69DC708] px_localizedSelectAllBarButtonItem];
    selectAllBarButtonItem = self->_selectAllBarButtonItem;
    self->_selectAllBarButtonItem = v17;

    [(UIBarButtonItem *)self->_selectAllBarButtonItem setTarget:self];
    [(UIBarButtonItem *)self->_selectAllBarButtonItem setAction:sel__handleSelectAll_];
    v19 = [MEMORY[0x1E69DC708] px_localizedDeselectAllBarButtonItem];
    deselectAllBarButtonItem = self->_deselectAllBarButtonItem;
    self->_deselectAllBarButtonItem = v19;

    [(UIBarButtonItem *)self->_deselectAllBarButtonItem setTarget:self];
    v21 = self->_deselectAllBarButtonItem;

    [(UIBarButtonItem *)v21 setAction:sel__handleDeselectAll_];
  }
}

- (void)setGridViewModel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_gridViewModel != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      [(PXPhotosViewModel *)self->_gridViewModel unregisterChangeObserver:self context:GridViewModelObservationContext];
      objc_storeStrong(&self->_gridViewModel, a3);
      [(PXPhotosViewModel *)self->_gridViewModel registerChangeObserver:self context:GridViewModelObservationContext];
      v5 = [(PUWallpaperPosterShuffleGridViewController *)self _invalidateBarItems];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setTungstenLayout:(id)a3
{
  v4 = a3;
  tungstenView = self->_tungstenView;
  v16 = v4;
  if (!tungstenView)
  {
    v6 = objc_alloc(MEMORY[0x1E69DB590]);
    v7 = [(PUWallpaperPosterShuffleGridViewController *)self view];
    [v7 bounds];
    v8 = [v6 initWithFrame:?];
    v9 = self->_tungstenView;
    self->_tungstenView = v8;

    [(PXGView *)self->_tungstenView setAutoresizingMask:18];
    v10 = self->_tungstenView;
    v11 = [(PUWallpaperPosterShuffleGridViewController *)self mediaProvider];
    [(PXGView *)v10 registerAllTextureProvidersWithMediaProvider:v11];

    v12 = [(PXGView *)self->_tungstenView scrollViewController];
    v13 = [v12 scrollView];

    [(PUWallpaperPosterShuffleGridViewController *)self setContentScrollView:v13 forEdge:5];
    v4 = v16;
    tungstenView = self->_tungstenView;
  }

  [(PXGView *)tungstenView setRootLayout:v4];
  v14 = [(PXGView *)self->_tungstenView superview];

  if (!v14)
  {
    v15 = [(PUWallpaperPosterShuffleGridViewController *)self view];
    [v15 addSubview:self->_tungstenView];
  }
}

- (void)setGridContentController:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_gridContentController != v5)
  {
    v9 = v5;
    v5 = [v5 isEqual:?];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      [(PXPhotosContentController *)self->_gridContentController setDelegate:0];
      objc_storeStrong(&self->_gridContentController, a3);
      [(PXPhotosContentController *)self->_gridContentController setDelegate:self];
      v7 = [(PXPhotosContentController *)self->_gridContentController layout];
      [(PUWallpaperPosterShuffleGridViewController *)self setTungstenLayout:v7];

      v8 = [(PXPhotosContentController *)self->_gridContentController viewModel];
      [(PUWallpaperPosterShuffleGridViewController *)self setGridViewModel:v8];

      v6 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setPosterMedia:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_posterMedia != v4)
  {
    v8 = v4;
    v4 = [v4 isEqual:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      posterMedia = self->_posterMedia;
      self->_posterMedia = v6;

      v4 = [(PUWallpaperPosterShuffleGridViewController *)self _invalidateDataSource];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PUWallpaperPosterShuffleGridViewController;
  [(PUWallpaperPosterShuffleGridViewController *)&v6 viewDidDisappear:?];
  v5 = [(PUWallpaperPosterShuffleGridViewController *)self gridContentController];
  [v5 contentViewDidDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PUWallpaperPosterShuffleGridViewController;
  [(PUWallpaperPosterShuffleGridViewController *)&v6 viewDidAppear:?];
  v5 = [(PUWallpaperPosterShuffleGridViewController *)self gridContentController];
  [v5 contentViewDidAppear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PUWallpaperPosterShuffleGridViewController;
  [(PUWallpaperPosterShuffleGridViewController *)&v6 viewWillAppear:?];
  v5 = [(PUWallpaperPosterShuffleGridViewController *)self gridContentController];
  [v5 contentViewWillAppear:v3];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUWallpaperPosterShuffleGridViewController;
  [(PUWallpaperPosterShuffleGridViewController *)&v3 viewWillLayoutSubviews];
  [(PXUpdater *)self->_updater updateIfNeeded];
}

- (PUWallpaperPosterShuffleGridViewController)initWithResourceManager:(id)a3 posterMedia:(id)a4
{
  v33[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = PUWallpaperPosterShuffleGridViewController;
  v8 = [(PUWallpaperPosterShuffleGridViewController *)&v31 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(PUWallpaperPosterShuffleGridViewController *)v8 setModalInPresentation:1];
    v10 = [v6 assetDirectory];
    posterMediaDirectory = v9->_posterMediaDirectory;
    v9->_posterMediaDirectory = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v7];
    initialPosterMedia = v9->_initialPosterMedia;
    v9->_initialPosterMedia = v12;

    objc_storeStrong(&v9->_posterMedia, v9->_initialPosterMedia);
    v14 = [v6 photoLibrary];
    photoLibrary = v9->_photoLibrary;
    v9->_photoLibrary = v14;

    v16 = [[PUWallpaperShuffleMediaProvider alloc] initWithResourceManager:v6];
    v17 = objc_alloc(MEMORY[0x1E69C3638]);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v32[0] = v19;
    v33[0] = v16;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v32[1] = v21;
    v22 = MEMORY[0x1E69C3858];
    v23 = [(PUWallpaperPosterShuffleGridViewController *)v9 photoLibrary];
    v24 = [v22 mediaProviderWithLibrary:v23];
    v33[1] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v26 = [v17 initWithMediaProvidersByAssetClassName:v25];
    mediaProvider = v9->_mediaProvider;
    v9->_mediaProvider = v26;

    v28 = [objc_alloc(MEMORY[0x1E69C4600]) initWithTarget:v9 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v9->_updater;
    v9->_updater = v28;

    [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateDataSource needsUpdate:1];
    [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateBarItems needsUpdate:1];
    [(PUWallpaperPosterShuffleGridViewController *)v9 px_enableExtendedTraitCollection];
  }

  return v9;
}

- (PUWallpaperPosterShuffleGridViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:82 description:{@"%s is not available as initializer", "-[PUWallpaperPosterShuffleGridViewController initWithCoder:]"}];

  abort();
}

- (PUWallpaperPosterShuffleGridViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:78 description:{@"%s is not available as initializer", "-[PUWallpaperPosterShuffleGridViewController initWithNibName:bundle:]"}];

  abort();
}

@end