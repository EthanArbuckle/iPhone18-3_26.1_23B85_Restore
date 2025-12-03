@interface PUWallpaperPosterShuffleGridViewController
- (BOOL)_canAddMorePhotos;
- (BOOL)photosContentController:(id)controller pushViewController:(id)viewController;
- (BOOL)photosViewController:(id)controller didPickAssetReference:(id)reference;
- (CGRect)preferredCropForAsset:(id)asset withAspectRatio:(double)ratio;
- (PUWallpaperPosterShuffleGridViewController)initWithCoder:(id)coder;
- (PUWallpaperPosterShuffleGridViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PUWallpaperPosterShuffleGridViewController)initWithResourceManager:(id)manager posterMedia:(id)media;
- (PUWallpaperPosterShuffleGridViewControllerDelegate)delegate;
- (UIEdgeInsets)maskPaddingForContentController:(id)controller;
- (id)_fetchResultWithAssetsFetchedFromPosterMedia:(id)media;
- (void)_createBarButtonItemsIfNeeded;
- (void)_exitSelectMode;
- (void)_finishWithSelectedPosterMedia:(id)media;
- (void)_handleAddPhotos:(id)photos;
- (void)_handleDeselectAll:(id)all;
- (void)_handleEnterSelectMode:(id)mode;
- (void)_handleRemovePhotos:(id)photos;
- (void)_handleSelectAll:(id)all;
- (void)_setNeedsUpdate;
- (void)_updateBarItems;
- (void)_updateDataSource;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)setGridContentController:(id)controller;
- (void)setGridViewModel:(id)model;
- (void)setPosterMedia:(id)media;
- (void)setTungstenLayout:(id)layout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PUWallpaperPosterShuffleGridViewController

- (PUWallpaperPosterShuffleGridViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  pickingCopy = picking;
  [(PUWallpaperPosterShuffleGridViewController *)self dismissViewControllerAnimated:1 completion:0];
  if ([pickingCopy count])
  {
    v6 = objc_alloc(MEMORY[0x1E695DFB8]);
    v7 = PXMap();
    v8 = [v6 initWithArray:v7];

    v9 = objc_alloc(MEMORY[0x1E695DFB8]);
    posterMedia = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
    v11 = PXMap();
    v12 = [v9 initWithArray:v11];

    v13 = [v12 mutableCopy];
    [v13 minusOrderedSet:v8];
    if ([v13 count])
    {
      photoLibrary = [(PUWallpaperPosterShuffleGridViewController *)self photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      v16 = MEMORY[0x1E6978630];
      array = [v13 array];
      v18 = [v16 fetchAssetsWithLocalIdentifiers:array options:librarySpecificFetchOptions];
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

- (CGRect)preferredCropForAsset:(id)asset withAspectRatio:(double)ratio
{
  assetCopy = asset;
  v6 = *MEMORY[0x1E69C48E0];
  v7 = *(MEMORY[0x1E69C48E0] + 8);
  v8 = *(MEMORY[0x1E69C48E0] + 16);
  v9 = *(MEMORY[0x1E69C48E0] + 24);
  v10 = assetCopy;
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
    px_screen = [(PUWallpaperPosterShuffleGridViewController *)self px_screen];
    [px_screen bounds];
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

- (BOOL)photosViewController:(id)controller didPickAssetReference:(id)reference
{
  controllerCopy = controller;
  referenceCopy = reference;
  asset = [referenceCopy asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    posterMedia = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
    v14 = asset;
    posterMedia2 = PXFind();
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:472 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    posterMedia2 = [asset posterMedia];
  }

  [(PUWallpaperPosterShuffleGridViewController *)self _finishWithSelectedPosterMedia:posterMedia2];

  return 1;
}

uint64_t __89__PUWallpaperPosterShuffleGridViewController_photosViewController_didPickAssetReference___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assetUUID];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (UIEdgeInsets)maskPaddingForContentController:(id)controller
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

- (BOOL)photosContentController:(id)controller pushViewController:(id)viewController
{
  viewControllerCopy = viewController;
  navigationController = [(PUWallpaperPosterShuffleGridViewController *)self navigationController];

  if (navigationController)
  {
    navigationController2 = [(PUWallpaperPosterShuffleGridViewController *)self navigationController];
    [navigationController2 pushViewController:viewControllerCopy animated:1];
  }

  return navigationController != 0;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (GridViewModelObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:424 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 6) != 0)
  {
    v11 = observableCopy;
    [(PUWallpaperPosterShuffleGridViewController *)self _invalidateBarItems];
    observableCopy = v11;
  }
}

- (id)_fetchResultWithAssetsFetchedFromPosterMedia:(id)media
{
  mediaCopy = media;
  v5 = PXMap();
  photoLibrary = [(PUWallpaperPosterShuffleGridViewController *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v8 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v5 options:librarySpecificFetchOptions];
  fetchedObjects = [v8 fetchedObjects];

  v10 = objc_alloc(MEMORY[0x1E695DF20]);
  v11 = PXMap();
  v12 = [v10 initWithObjects:fetchedObjects forKeys:v11];

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
  gridViewModel = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  selectionSnapshot = [gridViewModel selectionSnapshot];
  isInSelectMode = [gridViewModel isInSelectMode];
  isAnyItemSelected = [selectionSnapshot isAnyItemSelected];
  areAllItemsSelected = [selectionSnapshot areAllItemsSelected];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v9 = [selectedIndexPaths count];

  dataSourceManager = [gridViewModel dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  totalNumberOfItems = [dataSource totalNumberOfItems];

  if (isInSelectMode)
  {
    if (isAnyItemSelected)
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
    [(UIBarButtonItem *)self->_selectAllBarButtonItem setEnabled:totalNumberOfItems > 0, v21];
    v23[0] = *(&self->super.super.super.isa + *v15);
    flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    v23[1] = flexibleSpaceItem;
    if (areAllItemsSelected)
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
    [(UIBarButtonItem *)self->_enterSelectModeBarButtonItem setEnabled:totalNumberOfItems > 0];
    [(UIBarButtonItem *)self->_doneBarButtonItem setEnabled:totalNumberOfItems > 0];
    v22[0] = self->_addPhotosBarButtonItem;
    flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    v22[1] = flexibleSpaceItem;
    v18 = v22;
  }

  v18[2] = *p_selectAllBarButtonItem;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  navigationItem = [(PUWallpaperPosterShuffleGridViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:self->_doneBarButtonItem];

  [(PUWallpaperPosterShuffleGridViewController *)self setToolbarItems:v19 animated:1];
  [(PUWallpaperPosterShuffleGridViewController *)self setTitle:v14];
}

- (void)_updateDataSource
{
  v29[1] = *MEMORY[0x1E69E9840];
  posterMedia = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
  v5 = MEMORY[0x1E6978650];
  photoLibrary = [(PUWallpaperPosterShuffleGridViewController *)self photoLibrary];
  v7 = [v5 transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:0 identifier:0 photoLibrary:photoLibrary];

  v8 = [(PUWallpaperPosterShuffleGridViewController *)self _fetchResultWithAssetsFetchedFromPosterMedia:posterMedia];
  v9 = objc_alloc(MEMORY[0x1E69C3A78]);
  v29[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v28 = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v12 = [v9 initWithAssetCollectionBySection:v10 assetsBySection:v11 curatedAssetsBySection:0 keyAssetsBySection:0 sectionContent:0];

  gridContentController = [(PUWallpaperPosterShuffleGridViewController *)self gridContentController];
  if (!gridContentController)
  {
    dataSourceManager = [objc_alloc(MEMORY[0x1E69C3768]) initWithDataSource:v12];
    v16 = objc_alloc(MEMORY[0x1E69A2908]);
    mediaProvider = [(PUWallpaperPosterShuffleGridViewController *)self mediaProvider];
    v18 = [v16 initWithDataSourceManager:dataSourceManager mediaProvider:mediaProvider selectionManager:0 assetActionManager:0 assetCollectionActionManager:0];

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
    px_extendedTraitCollection = [(PUWallpaperPosterShuffleGridViewController *)self px_extendedTraitCollection];
    v21 = [v19 initWithConfiguration:v18 traitCollection:px_extendedTraitCollection];
    [(PUWallpaperPosterShuffleGridViewController *)self setGridContentController:v21];

    goto LABEL_6;
  }

  gridViewModel = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  dataSourceManager = [gridViewModel dataSourceManager];

  if (!dataSourceManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:343 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.gridViewModel.dataSourceManager", v24}];
LABEL_9:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v24 = NSStringFromClass(v25);
    px_descriptionForAssertionMessage = [dataSourceManager px_descriptionForAssertionMessage];
    currentHandler = currentHandler2;
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:343 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.gridViewModel.dataSourceManager", v24, px_descriptionForAssertionMessage}];

    goto LABEL_9;
  }

LABEL_4:
  [dataSourceManager setDataSource:v12 changeDetails:0];
LABEL_6:
}

- (void)_setNeedsUpdate
{
  view = [(PUWallpaperPosterShuffleGridViewController *)self view];
  [view setNeedsLayout];
}

- (void)_handleDeselectAll:(id)all
{
  gridViewModel = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  [gridViewModel performChanges:&__block_literal_global_331];
}

- (void)_handleSelectAll:(id)all
{
  gridViewModel = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  [gridViewModel performChanges:&__block_literal_global_329];
}

- (void)_handleEnterSelectMode:(id)mode
{
  gridViewModel = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  [gridViewModel performChanges:&__block_literal_global_327];
}

- (void)_handleRemovePhotos:(id)photos
{
  posterMedia = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
  v6 = [posterMedia mutableCopy];

  gridViewModel = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  selectionSnapshot = [gridViewModel selectionSnapshot];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PUWallpaperPosterShuffleGridViewController__handleRemovePhotos___block_invoke;
  v11[3] = &unk_1E7B75908;
  v12 = v6;
  v13 = a2;
  v11[4] = self;
  v9 = v6;
  [selectionSnapshot enumerateSelectedObjectsUsingBlock:v11];
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

- (void)_handleAddPhotos:(id)photos
{
  v4 = objc_alloc(MEMORY[0x1E69790E0]);
  photoLibrary = [(PUWallpaperPosterShuffleGridViewController *)self photoLibrary];
  v11 = [v4 initWithPhotoLibraryAndOnlyReturnsIdentifiers:photoLibrary];

  posterMedia = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
  v7 = PXMap();
  [v11 setPreselectedAssetIdentifiers:v7];

  [v11 setSelectionLimit:50];
  imagesFilter = [MEMORY[0x1E69790E8] imagesFilter];
  [v11 setFilter:imagesFilter];

  [v11 setDisabledCapabilities:18];
  [v11 _setDisabledPrivateCapabilities:268];
  shuffleWallpaperSuggestionGroup = [MEMORY[0x1E6979178] shuffleWallpaperSuggestionGroup];
  [v11 set_suggestionGroup:shuffleWallpaperSuggestionGroup];

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

- (void)_finishWithSelectedPosterMedia:(id)media
{
  mediaCopy = media;
  posterMedia = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
  initialPosterMedia = [(PUWallpaperPosterShuffleGridViewController *)self initialPosterMedia];
  v8 = [posterMedia differenceFromOrderedSet:initialPosterMedia withOptions:0 usingEquivalenceTest:&__block_literal_global_307];

  delegate = [(PUWallpaperPosterShuffleGridViewController *)self delegate];
  [delegate wallpaperPosterShuffleGridViewController:self didFinishWithChange:v8 selectedPosterMedia:mediaCopy];
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
  gridViewModel = [(PUWallpaperPosterShuffleGridViewController *)self gridViewModel];
  [gridViewModel performChanges:&__block_literal_global_12808];
}

- (BOOL)_canAddMorePhotos
{
  posterMedia = [(PUWallpaperPosterShuffleGridViewController *)self posterMedia];
  v3 = [posterMedia count] < 0x32;

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

    px_localizedSelectBarButtonItem = [MEMORY[0x1E69DC708] px_localizedSelectBarButtonItem];
    enterSelectModeBarButtonItem = self->_enterSelectModeBarButtonItem;
    self->_enterSelectModeBarButtonItem = px_localizedSelectBarButtonItem;

    [(UIBarButtonItem *)self->_enterSelectModeBarButtonItem setTarget:self];
    [(UIBarButtonItem *)self->_enterSelectModeBarButtonItem setAction:sel__handleEnterSelectMode_];
    v15 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleExitSelectMode_];
    exitSelectModeBarButtonItem = self->_exitSelectModeBarButtonItem;
    self->_exitSelectModeBarButtonItem = v15;

    px_localizedSelectAllBarButtonItem = [MEMORY[0x1E69DC708] px_localizedSelectAllBarButtonItem];
    selectAllBarButtonItem = self->_selectAllBarButtonItem;
    self->_selectAllBarButtonItem = px_localizedSelectAllBarButtonItem;

    [(UIBarButtonItem *)self->_selectAllBarButtonItem setTarget:self];
    [(UIBarButtonItem *)self->_selectAllBarButtonItem setAction:sel__handleSelectAll_];
    px_localizedDeselectAllBarButtonItem = [MEMORY[0x1E69DC708] px_localizedDeselectAllBarButtonItem];
    deselectAllBarButtonItem = self->_deselectAllBarButtonItem;
    self->_deselectAllBarButtonItem = px_localizedDeselectAllBarButtonItem;

    [(UIBarButtonItem *)self->_deselectAllBarButtonItem setTarget:self];
    v21 = self->_deselectAllBarButtonItem;

    [(UIBarButtonItem *)v21 setAction:sel__handleDeselectAll_];
  }
}

- (void)setGridViewModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_gridViewModel != modelCopy)
  {
    v7 = modelCopy;
    modelCopy = [modelCopy isEqual:?];
    v6 = v7;
    if ((modelCopy & 1) == 0)
    {
      [(PXPhotosViewModel *)self->_gridViewModel unregisterChangeObserver:self context:GridViewModelObservationContext];
      objc_storeStrong(&self->_gridViewModel, model);
      [(PXPhotosViewModel *)self->_gridViewModel registerChangeObserver:self context:GridViewModelObservationContext];
      modelCopy = [(PUWallpaperPosterShuffleGridViewController *)self _invalidateBarItems];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](modelCopy, v6);
}

- (void)setTungstenLayout:(id)layout
{
  layoutCopy = layout;
  tungstenView = self->_tungstenView;
  v16 = layoutCopy;
  if (!tungstenView)
  {
    v6 = objc_alloc(MEMORY[0x1E69DB590]);
    view = [(PUWallpaperPosterShuffleGridViewController *)self view];
    [view bounds];
    v8 = [v6 initWithFrame:?];
    v9 = self->_tungstenView;
    self->_tungstenView = v8;

    [(PXGView *)self->_tungstenView setAutoresizingMask:18];
    v10 = self->_tungstenView;
    mediaProvider = [(PUWallpaperPosterShuffleGridViewController *)self mediaProvider];
    [(PXGView *)v10 registerAllTextureProvidersWithMediaProvider:mediaProvider];

    scrollViewController = [(PXGView *)self->_tungstenView scrollViewController];
    scrollView = [scrollViewController scrollView];

    [(PUWallpaperPosterShuffleGridViewController *)self setContentScrollView:scrollView forEdge:5];
    layoutCopy = v16;
    tungstenView = self->_tungstenView;
  }

  [(PXGView *)tungstenView setRootLayout:layoutCopy];
  superview = [(PXGView *)self->_tungstenView superview];

  if (!superview)
  {
    view2 = [(PUWallpaperPosterShuffleGridViewController *)self view];
    [view2 addSubview:self->_tungstenView];
  }
}

- (void)setGridContentController:(id)controller
{
  controllerCopy = controller;
  v6 = controllerCopy;
  if (self->_gridContentController != controllerCopy)
  {
    v9 = controllerCopy;
    controllerCopy = [controllerCopy isEqual:?];
    v6 = v9;
    if ((controllerCopy & 1) == 0)
    {
      [(PXPhotosContentController *)self->_gridContentController setDelegate:0];
      objc_storeStrong(&self->_gridContentController, controller);
      [(PXPhotosContentController *)self->_gridContentController setDelegate:self];
      layout = [(PXPhotosContentController *)self->_gridContentController layout];
      [(PUWallpaperPosterShuffleGridViewController *)self setTungstenLayout:layout];

      viewModel = [(PXPhotosContentController *)self->_gridContentController viewModel];
      [(PUWallpaperPosterShuffleGridViewController *)self setGridViewModel:viewModel];

      v6 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](controllerCopy, v6);
}

- (void)setPosterMedia:(id)media
{
  mediaCopy = media;
  v5 = mediaCopy;
  if (self->_posterMedia != mediaCopy)
  {
    v8 = mediaCopy;
    mediaCopy = [mediaCopy isEqual:?];
    v5 = v8;
    if ((mediaCopy & 1) == 0)
    {
      v6 = [v8 copy];
      posterMedia = self->_posterMedia;
      self->_posterMedia = v6;

      mediaCopy = [(PUWallpaperPosterShuffleGridViewController *)self _invalidateDataSource];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](mediaCopy, v5);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = PUWallpaperPosterShuffleGridViewController;
  [(PUWallpaperPosterShuffleGridViewController *)&v6 viewDidDisappear:?];
  gridContentController = [(PUWallpaperPosterShuffleGridViewController *)self gridContentController];
  [gridContentController contentViewDidDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = PUWallpaperPosterShuffleGridViewController;
  [(PUWallpaperPosterShuffleGridViewController *)&v6 viewDidAppear:?];
  gridContentController = [(PUWallpaperPosterShuffleGridViewController *)self gridContentController];
  [gridContentController contentViewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = PUWallpaperPosterShuffleGridViewController;
  [(PUWallpaperPosterShuffleGridViewController *)&v6 viewWillAppear:?];
  gridContentController = [(PUWallpaperPosterShuffleGridViewController *)self gridContentController];
  [gridContentController contentViewWillAppear:appearCopy];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUWallpaperPosterShuffleGridViewController;
  [(PUWallpaperPosterShuffleGridViewController *)&v3 viewWillLayoutSubviews];
  [(PXUpdater *)self->_updater updateIfNeeded];
}

- (PUWallpaperPosterShuffleGridViewController)initWithResourceManager:(id)manager posterMedia:(id)media
{
  v33[2] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  mediaCopy = media;
  v31.receiver = self;
  v31.super_class = PUWallpaperPosterShuffleGridViewController;
  v8 = [(PUWallpaperPosterShuffleGridViewController *)&v31 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(PUWallpaperPosterShuffleGridViewController *)v8 setModalInPresentation:1];
    assetDirectory = [managerCopy assetDirectory];
    posterMediaDirectory = v9->_posterMediaDirectory;
    v9->_posterMediaDirectory = assetDirectory;

    v12 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:mediaCopy];
    initialPosterMedia = v9->_initialPosterMedia;
    v9->_initialPosterMedia = v12;

    objc_storeStrong(&v9->_posterMedia, v9->_initialPosterMedia);
    photoLibrary = [managerCopy photoLibrary];
    photoLibrary = v9->_photoLibrary;
    v9->_photoLibrary = photoLibrary;

    v16 = [[PUWallpaperShuffleMediaProvider alloc] initWithResourceManager:managerCopy];
    v17 = objc_alloc(MEMORY[0x1E69C3638]);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v32[0] = v19;
    v33[0] = v16;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v32[1] = v21;
    v22 = MEMORY[0x1E69C3858];
    photoLibrary2 = [(PUWallpaperPosterShuffleGridViewController *)v9 photoLibrary];
    v24 = [v22 mediaProviderWithLibrary:photoLibrary2];
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

- (PUWallpaperPosterShuffleGridViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:82 description:{@"%s is not available as initializer", "-[PUWallpaperPosterShuffleGridViewController initWithCoder:]"}];

  abort();
}

- (PUWallpaperPosterShuffleGridViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterShuffleGridViewController.m" lineNumber:78 description:{@"%s is not available as initializer", "-[PUWallpaperPosterShuffleGridViewController initWithNibName:bundle:]"}];

  abort();
}

@end