@interface PXStoryMemoryFeedChromeController
- (PXStoryMemoryFeedChromeController)init;
- (PXStoryMemoryFeedChromeController)initWithViewController:(id)controller dataSourceManager:(id)manager;
- (void)_handleFavoritesToggleButton:(id)button;
- (void)_updateChrome;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setIsActive:(BOOL)active;
@end

@implementation PXStoryMemoryFeedChromeController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (DataSourceManagerObservationContext_133082 == context)
  {
    if ((changeCopy & 0xC) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (PXLibraryFilterStateObservationContext_133083 == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v11 = observableCopy;
    [(PXStoryMemoryFeedChromeController *)self _invalidateChrome];
    observableCopy = v11;
    goto LABEL_6;
  }

  if (PXSharedLibraryStatusProviderObservationContext_133084 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedChromeController.m" lineNumber:149 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 3) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_updateChrome
{
  if ([(PXStoryMemoryFeedChromeController *)self isActive])
  {
    navigationItem = [(PXStoryMemoryFeedChromeController *)self navigationItem];
    sharedLibraryStatusProvider = [(PXStoryMemoryFeedChromeController *)self sharedLibraryStatusProvider];
    if ([sharedLibraryStatusProvider hasSharedLibraryOrPreview])
    {
      dataSourceManager = [(PXStoryMemoryFeedChromeController *)self dataSourceManager];
      wantsFavoritesOnly = [dataSourceManager wantsFavoritesOnly];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __50__PXStoryMemoryFeedChromeController__updateChrome__block_invoke;
      aBlock[3] = &unk_1E774B308;
      v7 = dataSourceManager;
      aBlock[4] = v7;
      v8 = _Block_copy(aBlock);
      if (wantsFavoritesOnly)
      {
        v9 = @"PXMemoriesFeedFavoritesTitle";
      }

      else
      {
        v9 = @"PXMemoriesFeedTitle";
      }

      v10 = PXLocalizedStringFromTable(v9, @"PhotosUICore");
      [navigationItem setTitle:v10];

      libraryFilterState = [(PXStoryMemoryFeedChromeController *)self libraryFilterState];
      hasPreview = [sharedLibraryStatusProvider hasPreview];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __50__PXStoryMemoryFeedChromeController__updateChrome__block_invoke_3;
      v21[3] = &unk_1E773BDE0;
      v22 = wantsFavoritesOnly;
      v21[4] = v7;
      v21[5] = v8;
      v13 = v8;
      v14 = v7;
      PXSharedLibraryCreateSwitchLibraryButtonItem(libraryFilterState, hasPreview, v21);
    }

    v15 = PXLocalizedStringFromTable(@"PXMemoriesFeedTitle", @"PhotosUICore");
    [navigationItem setTitle:v15];

    dataSourceManager2 = [(PXStoryMemoryFeedChromeController *)self dataSourceManager];
    if ([dataSourceManager2 hasAnyFavorites] && (!objc_msgSend(dataSourceManager2, "wantsFavoritesOnly") ? (v17 = @"PXMemoriesFeedButtonFavoritesTitle") : (v17 = @"PXMemoriesFeedSeeAllButtonTitle"), PXLocalizedStringFromTable(v17, @"PhotosUICore"), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = v18;
      v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v18 style:0 target:self action:sel__handleFavoritesToggleButton_];
      [navigationItem setRightBarButtonItem:v20];
    }

    else
    {
      [navigationItem setRightBarButtonItem:0];
    }
  }
}

uint64_t __50__PXStoryMemoryFeedChromeController__updateChrome__block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PXStoryMemoryFeedChromeController__updateChrome__block_invoke_2;
  v4[3] = &__block_descriptor_33_e53_v16__0___PXStoryMutableMemoryFeedDataSourceManager__8l;
  v5 = a2;
  return [v2 performChanges:v4];
}

void __50__PXStoryMemoryFeedChromeController__updateChrome__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) hasAnyFavorites])
  {
    v4 = [v3 extraItemsMenuBuilder];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__PXStoryMemoryFeedChromeController__updateChrome__block_invoke_4;
    v5[3] = &unk_1E773BDB8;
    v7 = *(a1 + 48);
    v6 = *(a1 + 40);
    [v4 addSectionWithConfiguration:v5];
  }
}

void __50__PXStoryMemoryFeedChromeController__updateChrome__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PXLocalizedStringFromTable(@"PXMemoriesFeedAllMemoriesMenuItemTitle", @"PhotosUICore");
  v5 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__PXStoryMemoryFeedChromeController__updateChrome__block_invoke_5;
  v10[3] = &unk_1E773BD90;
  v11 = *(a1 + 32);
  [v3 addItemWithTitle:v4 systemImageName:@"memories" state:v5 ^ 1 options:0 handler:v10];

  v6 = PXLocalizedStringFromTable(@"PXMemoriesFeedFavoriteMemoriesMenuItemTitle", @"PhotosUICore");
  v7 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PXStoryMemoryFeedChromeController__updateChrome__block_invoke_6;
  v8[3] = &unk_1E773BD90;
  v9 = *(a1 + 32);
  [v3 addItemWithTitle:v6 systemImageName:@"heart" state:v7 options:0 handler:v8];
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    self->_isActive = active;
    [(PXStoryMemoryFeedChromeController *)self _invalidateChrome];
  }
}

- (void)_handleFavoritesToggleButton:(id)button
{
  dataSourceManager = [(PXStoryMemoryFeedChromeController *)self dataSourceManager];
  [dataSourceManager performChanges:&__block_literal_global_133123];
}

void __66__PXStoryMemoryFeedChromeController__handleFavoritesToggleButton___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setWantsFavoritesOnly:{objc_msgSend(v2, "wantsFavoritesOnly") ^ 1}];
}

- (PXStoryMemoryFeedChromeController)initWithViewController:(id)controller dataSourceManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = PXStoryMemoryFeedChromeController;
  v8 = [(PXStoryMemoryFeedChromeController *)&v17 init];
  if (v8)
  {
    navigationItem = [controllerCopy navigationItem];
    navigationItem = v8->_navigationItem;
    v8->_navigationItem = navigationItem;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v8->_dataSourceManager, manager);
      [(PXSectionedDataSourceManager *)v8->_dataSourceManager registerChangeObserver:v8 context:DataSourceManagerObservationContext_133082];
    }

    photoLibrary = [(PXStoryMemoryFeedDataSourceManager *)v8->_dataSourceManager photoLibrary];
    v12 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];
    sharedLibraryStatusProvider = v8->_sharedLibraryStatusProvider;
    v8->_sharedLibraryStatusProvider = v12;

    [(PXSharedLibraryStatusProvider *)v8->_sharedLibraryStatusProvider registerChangeObserver:v8 context:PXSharedLibraryStatusProviderObservationContext_133084];
    v14 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v8->_sharedLibraryStatusProvider];
    libraryFilterState = v8->_libraryFilterState;
    v8->_libraryFilterState = v14;

    [(PXLibraryFilterState *)v8->_libraryFilterState registerChangeObserver:v8 context:PXLibraryFilterStateObservationContext_133083];
    [(PXStoryMemoryFeedChromeController *)v8 _invalidateChrome];
  }

  return v8;
}

- (PXStoryMemoryFeedChromeController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedChromeController.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXStoryMemoryFeedChromeController init]"}];

  abort();
}

@end