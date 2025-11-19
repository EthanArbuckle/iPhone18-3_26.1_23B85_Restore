@interface PUOneUpSelectionIndicatorTileViewController
- (id)_reviewActionManager;
- (id)_selectionManager;
- (void)_handleButton:(id)a3;
- (void)_setButtonVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateButtonIfNeeded;
- (void)_updateIfNeeded;
- (void)becomeReusable;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setActionManager:(id)a3;
- (void)setAssetReference:(id)a3;
- (void)setAssetViewModel:(id)a3;
- (void)setBrowsingViewModel:(id)a3;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUOneUpSelectionIndicatorTileViewController

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUOneUpSelectionIndicatorTileViewController *)self assetViewModel];

  if (v8 == v7 && [v6 importStateChanged])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__PUOneUpSelectionIndicatorTileViewController_viewModel_didChange___block_invoke;
    v9[3] = &unk_1E7B80DD0;
    v9[4] = self;
    [(PUOneUpSelectionIndicatorTileViewController *)self performChanges:v9];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (AssetExplorerSelectionManagerObservationContext == a5)
  {
    v12 = [(PUOneUpSelectionIndicatorTileViewController *)self _selectionManager];

    if (v12 != v9)
    {
      v11 = 334;
LABEL_10:
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PUOneUpSelectionIndicatorTileViewController.m" lineNumber:v11 description:@"Expecting observable to match the current selection manager"];

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    if (PhotosUICoreSelectionManagerObservationContext_45227 != a5)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PUOneUpSelectionIndicatorTileViewController.m" lineNumber:342 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v10 = [(PUOneUpSelectionIndicatorTileViewController *)self _selectionManager];

    if (v10 != v9)
    {
      v11 = 338;
      goto LABEL_10;
    }
  }

  if (v6)
  {
LABEL_7:
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__PUOneUpSelectionIndicatorTileViewController_observable_didChange_context___block_invoke;
    v15[3] = &unk_1E7B80DD0;
    v15[4] = self;
    [(PUOneUpSelectionIndicatorTileViewController *)self performChanges:v15];
  }

LABEL_8:
}

- (void)_setButtonVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->__buttonVisible != a3)
  {
    v17 = v7;
    v18 = v6;
    v19 = v4;
    v20 = v5;
    v9 = a3;
    self->__buttonVisible = a3;
    v10 = [(PUOneUpSelectionIndicatorTileViewController *)self _button];
    v11 = v10;
    if (v9)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }

    if (a4)
    {
      v13 = MEMORY[0x1E69DD250];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __74__PUOneUpSelectionIndicatorTileViewController__setButtonVisible_animated___block_invoke;
      v14[3] = &unk_1E7B7FF70;
      v15 = v10;
      v16 = v12;
      [v13 animateWithDuration:4 delay:v14 options:0 animations:0.15 completion:0.0];
    }

    else
    {
      [v10 setAlpha:v12];
    }
  }
}

- (void)_updateButtonIfNeeded
{
  if (![(PUOneUpSelectionIndicatorTileViewController *)self _needsUpdateButton])
  {
    return;
  }

  [(PUOneUpSelectionIndicatorTileViewController *)self _setNeedsUpdateButton:0];
  v25 = [(PUOneUpSelectionIndicatorTileViewController *)self assetReference];
  v3 = [(PUOneUpSelectionIndicatorTileViewController *)self _selectionManager];
  v4 = [(PUOneUpSelectionIndicatorTileViewController *)self assetViewModel];
  if (v25 && v3 && -[PUTileViewController isViewLoaded](self, "isViewLoaded") && ![v4 importState])
  {
    v9 = [(PUOneUpSelectionIndicatorTileViewController *)self actionManager];
    v10 = [v25 asset];
    v11 = [v25 assetCollection];
    v12 = [v9 canPerformActionType:45 onAsset:v10 inAssetCollection:v11];

    v13 = [(PUOneUpSelectionIndicatorTileViewController *)self _button];
    v5 = v13;
    if (v12)
    {
      if (!v13)
      {
        v24 = [(PUTileViewController *)self view];
        v14 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
        v15 = [MEMORY[0x1E69DC888] systemWhiteColor];
        v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle"];
        v17 = [v16 imageWithSymbolConfiguration:v14];
        v18 = [MEMORY[0x1E69DC888] systemWhiteColor];
        v19 = [MEMORY[0x1E69DC888] systemBlueColor];
        v20 = [v17 px_tintedCircularImageWithColor:v18 backgroundColor:v19];

        v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
        v22 = [v21 imageWithSymbolConfiguration:v14];
        v23 = [v22 px_tintedCircularImageWithColor:v15 backgroundColor:0];

        v5 = [MEMORY[0x1E69DC738] buttonWithType:0];
        [v5 setImage:v23 forState:0];
        [v5 setImage:v23 forState:1];
        [v5 setImage:v20 forState:4];
        [v5 setImage:v20 forState:5];
        [v5 addTarget:self action:sel__handleButton_ forControlEvents:64];
        [v5 setAutoresizingMask:18];
        [v24 bounds];
        [v5 setFrame:?];
        [v24 addSubview:v5];
        [v5 setAlpha:0.0];
        [(PUOneUpSelectionIndicatorTileViewController *)self _setButton:v5];
      }

      [v5 setSelected:{objc_msgSend(v3, "pu_isAssetReferenceSelected:", v25)}];
      v6 = self;
      v7 = 1;
      v8 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = [(PUOneUpSelectionIndicatorTileViewController *)self _button];
  }

  v6 = self;
  v7 = 0;
  v8 = 0;
LABEL_8:
  [(PUOneUpSelectionIndicatorTileViewController *)v6 _setButtonVisible:v7 animated:v8];
}

- (void)_updateIfNeeded
{
  if ([(PUOneUpSelectionIndicatorTileViewController *)self _needsUpdate])
  {
    [(PUOneUpSelectionIndicatorTileViewController *)self _updateButtonIfNeeded];
    if ([(PUOneUpSelectionIndicatorTileViewController *)self _needsUpdate])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PUOneUpSelectionIndicatorTileViewController.m" lineNumber:202 description:@"update still needed after update pass"];
    }
  }
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpSelectionIndicatorTileViewController *)self _isPerformingChanges];
  [(PUOneUpSelectionIndicatorTileViewController *)self _setPerformingChanges:1];
  v4[2](v4);

  [(PUOneUpSelectionIndicatorTileViewController *)self _setPerformingChanges:v5];
  if (!v5)
  {

    [(PUOneUpSelectionIndicatorTileViewController *)self _updateIfNeeded];
  }
}

- (void)_handleButton:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [(PUOneUpSelectionIndicatorTileViewController *)self assetReference];
  v5 = [v4 asset];
  v6 = [v4 assetCollection];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [(PUOneUpSelectionIndicatorTileViewController *)self actionManager];
    v12[0] = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10 = [v8 actionPerformerForSimpleActionType:45 onAssetReferences:v9];

    [v10 performWithCompletionHandler:&__block_literal_global_45255];
  }

  else
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Attempted to toggle selection but could not find one of asset or assetCollection", v11, 2u);
    }
  }
}

void __61__PUOneUpSelectionIndicatorTileViewController__handleButton___block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Failed to perform selection action with error %@", &v6, 0xCu);
    }
  }
}

- (id)_selectionManager
{
  v3 = [(PUOneUpSelectionIndicatorTileViewController *)self _reviewActionManager];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 selectionManager];
  }

  else
  {
    v6 = [(PUOneUpSelectionIndicatorTileViewController *)self actionManager];
    v5 = [v6 px_selectionManager];
  }

  return v5;
}

- (id)_reviewActionManager
{
  v2 = [(PUOneUpSelectionIndicatorTileViewController *)self actionManager];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setActionManager:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_actionManager != v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__PUOneUpSelectionIndicatorTileViewController_setActionManager___block_invoke;
    v6[3] = &unk_1E7B80C38;
    v6[4] = self;
    v7 = v4;
    [(PUOneUpSelectionIndicatorTileViewController *)self performChanges:v6];
  }
}

void __64__PUOneUpSelectionIndicatorTileViewController_setActionManager___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _selectionManager];
  [v3 pu_unregisterSelectionIndicatorObserver:*(a1 + 32)];
  objc_storeStrong((*(a1 + 32) + 192), *(a1 + 40));
  v2 = [*(a1 + 32) _selectionManager];
  [v2 pu_registerSelectionIndicatorObserver:*(a1 + 32)];
  [*(a1 + 32) _invalidateButton];
}

- (void)setAssetReference:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_assetReference != v5 && ![(PUAssetReference *)v5 isEqual:?])
  {
    objc_storeStrong(&self->_assetReference, a3);
    if (v6)
    {
      v7 = [(PUOneUpSelectionIndicatorTileViewController *)self browsingViewModel];
      v8 = [v7 assetViewModelForAssetReference:v6];
    }

    else
    {
      v8 = 0;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PUOneUpSelectionIndicatorTileViewController_setAssetReference___block_invoke;
    v10[3] = &unk_1E7B80C38;
    v10[4] = self;
    v11 = v8;
    v9 = v8;
    [(PUOneUpSelectionIndicatorTileViewController *)self performChanges:v10];
  }
}

uint64_t __65__PUOneUpSelectionIndicatorTileViewController_setAssetReference___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAssetViewModel:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _invalidateButton];
}

- (void)setBrowsingViewModel:(id)a3
{
  v5 = a3;
  if (self->_browsingViewModel != v5)
  {
    objc_storeStrong(&self->_browsingViewModel, a3);
    v6 = [(PUOneUpSelectionIndicatorTileViewController *)self assetReference];

    if (v6)
    {
      v7 = [(PUOneUpSelectionIndicatorTileViewController *)self assetReference];
      v8 = [(PUBrowsingViewModel *)v5 assetViewModelForAssetReference:v7];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __68__PUOneUpSelectionIndicatorTileViewController_setBrowsingViewModel___block_invoke;
      v10[3] = &unk_1E7B80C38;
      v10[4] = self;
      v11 = v8;
      v9 = v8;
      [(PUOneUpSelectionIndicatorTileViewController *)self performChanges:v10];
    }
  }
}

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != v5)
  {
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, a3);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__PUOneUpSelectionIndicatorTileViewController_setAssetViewModel___block_invoke;
    v7[3] = &unk_1E7B80DD0;
    v7[4] = self;
    [(PUOneUpSelectionIndicatorTileViewController *)self performChanges:v7];
  }
}

- (void)becomeReusable
{
  v4.receiver = self;
  v4.super_class = PUOneUpSelectionIndicatorTileViewController;
  [(PUTileViewController *)&v4 becomeReusable];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__PUOneUpSelectionIndicatorTileViewController_becomeReusable__block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [(PUOneUpSelectionIndicatorTileViewController *)self performChanges:v3];
}

uint64_t __61__PUOneUpSelectionIndicatorTileViewController_becomeReusable__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAssetViewModel:0];
  [*(a1 + 32) setBrowsingViewModel:0];
  [*(a1 + 32) setAssetReference:0];
  v2 = *(a1 + 32);

  return [v2 setActionManager:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUOneUpSelectionIndicatorTileViewController;
  [(PUTileViewController *)&v3 viewDidLoad];
  [(PUOneUpSelectionIndicatorTileViewController *)self _updateIfNeeded];
}

@end