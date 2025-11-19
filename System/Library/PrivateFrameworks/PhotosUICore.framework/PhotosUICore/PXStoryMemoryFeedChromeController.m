@interface PXStoryMemoryFeedChromeController
- (PXStoryMemoryFeedChromeController)init;
- (PXStoryMemoryFeedChromeController)initWithViewController:(id)a3 dataSourceManager:(id)a4;
- (void)_handleFavoritesToggleButton:(id)a3;
- (void)_updateChrome;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setIsActive:(BOOL)a3;
@end

@implementation PXStoryMemoryFeedChromeController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (DataSourceManagerObservationContext_133082 == a5)
  {
    if ((v6 & 0xC) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (PXLibraryFilterStateObservationContext_133083 == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v11 = v9;
    [(PXStoryMemoryFeedChromeController *)self _invalidateChrome];
    v9 = v11;
    goto LABEL_6;
  }

  if (PXSharedLibraryStatusProviderObservationContext_133084 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedChromeController.m" lineNumber:149 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 3) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_updateChrome
{
  if ([(PXStoryMemoryFeedChromeController *)self isActive])
  {
    v3 = [(PXStoryMemoryFeedChromeController *)self navigationItem];
    v4 = [(PXStoryMemoryFeedChromeController *)self sharedLibraryStatusProvider];
    if ([v4 hasSharedLibraryOrPreview])
    {
      v5 = [(PXStoryMemoryFeedChromeController *)self dataSourceManager];
      v6 = [v5 wantsFavoritesOnly];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __50__PXStoryMemoryFeedChromeController__updateChrome__block_invoke;
      aBlock[3] = &unk_1E774B308;
      v7 = v5;
      aBlock[4] = v7;
      v8 = _Block_copy(aBlock);
      if (v6)
      {
        v9 = @"PXMemoriesFeedFavoritesTitle";
      }

      else
      {
        v9 = @"PXMemoriesFeedTitle";
      }

      v10 = PXLocalizedStringFromTable(v9, @"PhotosUICore");
      [v3 setTitle:v10];

      v11 = [(PXStoryMemoryFeedChromeController *)self libraryFilterState];
      v12 = [v4 hasPreview];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __50__PXStoryMemoryFeedChromeController__updateChrome__block_invoke_3;
      v21[3] = &unk_1E773BDE0;
      v22 = v6;
      v21[4] = v7;
      v21[5] = v8;
      v13 = v8;
      v14 = v7;
      PXSharedLibraryCreateSwitchLibraryButtonItem(v11, v12, v21);
    }

    v15 = PXLocalizedStringFromTable(@"PXMemoriesFeedTitle", @"PhotosUICore");
    [v3 setTitle:v15];

    v16 = [(PXStoryMemoryFeedChromeController *)self dataSourceManager];
    if ([v16 hasAnyFavorites] && (!objc_msgSend(v16, "wantsFavoritesOnly") ? (v17 = @"PXMemoriesFeedButtonFavoritesTitle") : (v17 = @"PXMemoriesFeedSeeAllButtonTitle"), PXLocalizedStringFromTable(v17, @"PhotosUICore"), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = v18;
      v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v18 style:0 target:self action:sel__handleFavoritesToggleButton_];
      [v3 setRightBarButtonItem:v20];
    }

    else
    {
      [v3 setRightBarButtonItem:0];
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

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    self->_isActive = a3;
    [(PXStoryMemoryFeedChromeController *)self _invalidateChrome];
  }
}

- (void)_handleFavoritesToggleButton:(id)a3
{
  v3 = [(PXStoryMemoryFeedChromeController *)self dataSourceManager];
  [v3 performChanges:&__block_literal_global_133123];
}

void __66__PXStoryMemoryFeedChromeController__handleFavoritesToggleButton___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setWantsFavoritesOnly:{objc_msgSend(v2, "wantsFavoritesOnly") ^ 1}];
}

- (PXStoryMemoryFeedChromeController)initWithViewController:(id)a3 dataSourceManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PXStoryMemoryFeedChromeController;
  v8 = [(PXStoryMemoryFeedChromeController *)&v17 init];
  if (v8)
  {
    v9 = [v6 navigationItem];
    navigationItem = v8->_navigationItem;
    v8->_navigationItem = v9;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v8->_dataSourceManager, a4);
      [(PXSectionedDataSourceManager *)v8->_dataSourceManager registerChangeObserver:v8 context:DataSourceManagerObservationContext_133082];
    }

    v11 = [(PXStoryMemoryFeedDataSourceManager *)v8->_dataSourceManager photoLibrary];
    v12 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v11];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedChromeController.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXStoryMemoryFeedChromeController init]"}];

  abort();
}

@end