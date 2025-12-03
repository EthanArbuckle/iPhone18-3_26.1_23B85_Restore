@interface PUOneUpSelectionIndicatorTileViewController
- (id)_reviewActionManager;
- (id)_selectionManager;
- (void)_handleButton:(id)button;
- (void)_setButtonVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_updateButtonIfNeeded;
- (void)_updateIfNeeded;
- (void)becomeReusable;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)setActionManager:(id)manager;
- (void)setAssetReference:(id)reference;
- (void)setAssetViewModel:(id)model;
- (void)setBrowsingViewModel:(id)model;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUOneUpSelectionIndicatorTileViewController

- (void)viewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  modelCopy = model;
  assetViewModel = [(PUOneUpSelectionIndicatorTileViewController *)self assetViewModel];

  if (assetViewModel == modelCopy && [changeCopy importStateChanged])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__PUOneUpSelectionIndicatorTileViewController_viewModel_didChange___block_invoke;
    v9[3] = &unk_1E7B80DD0;
    v9[4] = self;
    [(PUOneUpSelectionIndicatorTileViewController *)self performChanges:v9];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (AssetExplorerSelectionManagerObservationContext == context)
  {
    _selectionManager = [(PUOneUpSelectionIndicatorTileViewController *)self _selectionManager];

    if (_selectionManager != observableCopy)
    {
      v11 = 334;
LABEL_10:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpSelectionIndicatorTileViewController.m" lineNumber:v11 description:@"Expecting observable to match the current selection manager"];

      if ((changeCopy & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    if (PhotosUICoreSelectionManagerObservationContext_45227 != context)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUOneUpSelectionIndicatorTileViewController.m" lineNumber:342 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    _selectionManager2 = [(PUOneUpSelectionIndicatorTileViewController *)self _selectionManager];

    if (_selectionManager2 != observableCopy)
    {
      v11 = 338;
      goto LABEL_10;
    }
  }

  if (changeCopy)
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

- (void)_setButtonVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->__buttonVisible != visible)
  {
    v17 = v7;
    v18 = v6;
    v19 = v4;
    v20 = v5;
    visibleCopy = visible;
    self->__buttonVisible = visible;
    _button = [(PUOneUpSelectionIndicatorTileViewController *)self _button];
    v11 = _button;
    if (visibleCopy)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }

    if (animated)
    {
      v13 = MEMORY[0x1E69DD250];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __74__PUOneUpSelectionIndicatorTileViewController__setButtonVisible_animated___block_invoke;
      v14[3] = &unk_1E7B7FF70;
      v15 = _button;
      v16 = v12;
      [v13 animateWithDuration:4 delay:v14 options:0 animations:0.15 completion:0.0];
    }

    else
    {
      [_button setAlpha:v12];
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
  assetReference = [(PUOneUpSelectionIndicatorTileViewController *)self assetReference];
  _selectionManager = [(PUOneUpSelectionIndicatorTileViewController *)self _selectionManager];
  assetViewModel = [(PUOneUpSelectionIndicatorTileViewController *)self assetViewModel];
  if (assetReference && _selectionManager && -[PUTileViewController isViewLoaded](self, "isViewLoaded") && ![assetViewModel importState])
  {
    actionManager = [(PUOneUpSelectionIndicatorTileViewController *)self actionManager];
    asset = [assetReference asset];
    assetCollection = [assetReference assetCollection];
    v12 = [actionManager canPerformActionType:45 onAsset:asset inAssetCollection:assetCollection];

    _button = [(PUOneUpSelectionIndicatorTileViewController *)self _button];
    _button2 = _button;
    if (v12)
    {
      if (!_button)
      {
        view = [(PUTileViewController *)self view];
        v14 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
        systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
        v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle"];
        v17 = [v16 imageWithSymbolConfiguration:v14];
        systemWhiteColor2 = [MEMORY[0x1E69DC888] systemWhiteColor];
        systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
        v20 = [v17 px_tintedCircularImageWithColor:systemWhiteColor2 backgroundColor:systemBlueColor];

        v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
        v22 = [v21 imageWithSymbolConfiguration:v14];
        v23 = [v22 px_tintedCircularImageWithColor:systemWhiteColor backgroundColor:0];

        _button2 = [MEMORY[0x1E69DC738] buttonWithType:0];
        [_button2 setImage:v23 forState:0];
        [_button2 setImage:v23 forState:1];
        [_button2 setImage:v20 forState:4];
        [_button2 setImage:v20 forState:5];
        [_button2 addTarget:self action:sel__handleButton_ forControlEvents:64];
        [_button2 setAutoresizingMask:18];
        [view bounds];
        [_button2 setFrame:?];
        [view addSubview:_button2];
        [_button2 setAlpha:0.0];
        [(PUOneUpSelectionIndicatorTileViewController *)self _setButton:_button2];
      }

      [_button2 setSelected:{objc_msgSend(_selectionManager, "pu_isAssetReferenceSelected:", assetReference)}];
      selfCopy2 = self;
      v7 = 1;
      v8 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    _button2 = [(PUOneUpSelectionIndicatorTileViewController *)self _button];
  }

  selfCopy2 = self;
  v7 = 0;
  v8 = 0;
LABEL_8:
  [(PUOneUpSelectionIndicatorTileViewController *)selfCopy2 _setButtonVisible:v7 animated:v8];
}

- (void)_updateIfNeeded
{
  if ([(PUOneUpSelectionIndicatorTileViewController *)self _needsUpdate])
  {
    [(PUOneUpSelectionIndicatorTileViewController *)self _updateButtonIfNeeded];
    if ([(PUOneUpSelectionIndicatorTileViewController *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpSelectionIndicatorTileViewController.m" lineNumber:202 description:@"update still needed after update pass"];
    }
  }
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  _isPerformingChanges = [(PUOneUpSelectionIndicatorTileViewController *)self _isPerformingChanges];
  [(PUOneUpSelectionIndicatorTileViewController *)self _setPerformingChanges:1];
  changesCopy[2](changesCopy);

  [(PUOneUpSelectionIndicatorTileViewController *)self _setPerformingChanges:_isPerformingChanges];
  if (!_isPerformingChanges)
  {

    [(PUOneUpSelectionIndicatorTileViewController *)self _updateIfNeeded];
  }
}

- (void)_handleButton:(id)button
{
  v12[1] = *MEMORY[0x1E69E9840];
  assetReference = [(PUOneUpSelectionIndicatorTileViewController *)self assetReference];
  asset = [assetReference asset];
  assetCollection = [assetReference assetCollection];
  v7 = assetCollection;
  if (asset && assetCollection)
  {
    actionManager = [(PUOneUpSelectionIndicatorTileViewController *)self actionManager];
    v12[0] = assetReference;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10 = [actionManager actionPerformerForSimpleActionType:45 onAssetReferences:v9];

    [v10 performWithCompletionHandler:&__block_literal_global_45255];
  }

  else
  {
    actionManager = PLOneUpGetLog();
    if (os_log_type_enabled(actionManager, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B36F3000, actionManager, OS_LOG_TYPE_ERROR, "Attempted to toggle selection but could not find one of asset or assetCollection", v11, 2u);
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
  _reviewActionManager = [(PUOneUpSelectionIndicatorTileViewController *)self _reviewActionManager];
  v4 = _reviewActionManager;
  if (_reviewActionManager)
  {
    selectionManager = [_reviewActionManager selectionManager];
  }

  else
  {
    actionManager = [(PUOneUpSelectionIndicatorTileViewController *)self actionManager];
    selectionManager = [actionManager px_selectionManager];
  }

  return selectionManager;
}

- (id)_reviewActionManager
{
  actionManager = [(PUOneUpSelectionIndicatorTileViewController *)self actionManager];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = actionManager;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setActionManager:(id)manager
{
  managerCopy = manager;
  v5 = managerCopy;
  if (self->_actionManager != managerCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__PUOneUpSelectionIndicatorTileViewController_setActionManager___block_invoke;
    v6[3] = &unk_1E7B80C38;
    v6[4] = self;
    v7 = managerCopy;
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

- (void)setAssetReference:(id)reference
{
  referenceCopy = reference;
  v6 = referenceCopy;
  if (self->_assetReference != referenceCopy && ![(PUAssetReference *)referenceCopy isEqual:?])
  {
    objc_storeStrong(&self->_assetReference, reference);
    if (v6)
    {
      browsingViewModel = [(PUOneUpSelectionIndicatorTileViewController *)self browsingViewModel];
      v8 = [browsingViewModel assetViewModelForAssetReference:v6];
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

- (void)setBrowsingViewModel:(id)model
{
  modelCopy = model;
  if (self->_browsingViewModel != modelCopy)
  {
    objc_storeStrong(&self->_browsingViewModel, model);
    assetReference = [(PUOneUpSelectionIndicatorTileViewController *)self assetReference];

    if (assetReference)
    {
      assetReference2 = [(PUOneUpSelectionIndicatorTileViewController *)self assetReference];
      v8 = [(PUBrowsingViewModel *)modelCopy assetViewModelForAssetReference:assetReference2];

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

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != modelCopy)
  {
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, model);
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