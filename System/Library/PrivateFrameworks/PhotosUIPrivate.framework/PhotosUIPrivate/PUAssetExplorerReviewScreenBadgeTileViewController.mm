@interface PUAssetExplorerReviewScreenBadgeTileViewController
+ (CGSize)badgeTileSize;
+ (void)_configureBadgeView:(id)view isOverContent:(BOOL)content isLivePhotoDisabled:(BOOL)disabled;
- (id)_disableLivePhotosSelectionManager;
- (id)_reviewActionManager;
- (id)loadView;
- (void)_invalidateBadgeView;
- (void)_setOverContent:(BOOL)content;
- (void)_updateBadgeViewIfNeeded;
- (void)_updateIfNeeded;
- (void)applyLayoutInfo:(id)info;
- (void)assetBadgeView:(id)view userDidSelectBadges:(unint64_t)badges;
- (void)becomeReusable;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)prepareForReuse;
- (void)setActionManager:(id)manager;
- (void)setAssetReference:(id)reference;
- (void)setBrowsingViewModel:(id)model;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUAssetExplorerReviewScreenBadgeTileViewController

- (void)viewModel:(id)model didChange:(id)change
{
  v23 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  changeCopy = change;
  browsingViewModel = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self browsingViewModel];

  if (browsingViewModel == modelCopy)
  {
    assetReference = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self assetReference];
    assetViewModelChangesByAssetReference = [changeCopy assetViewModelChangesByAssetReference];
    if (assetReference)
    {
      assetsDataSource = [modelCopy assetsDataSource];
      v12 = [assetsDataSource assetReferenceForAssetReference:assetReference];

      [assetViewModelChangesByAssetReference objectForKeyedSubscript:v12];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = v21 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        while (2)
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            if ([*(*(&v18 + 1) + 8 * v17) assetChanged])
            {

              [(PUAssetExplorerReviewScreenBadgeTileViewController *)self setAssetReference:v12];
              goto LABEL_13;
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PUAssetExplorerReviewScreenBadgeTileViewControllerSelectionManagerObserverContext == context)
  {
    _disableLivePhotosSelectionManager = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _disableLivePhotosSelectionManager];

    if (_disableLivePhotosSelectionManager == observableCopy)
    {
      if ((changeCopy & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenBadgeTileViewController.m" lineNumber:259 description:@"Expecting observable to match the current selection manager"];

      if ((changeCopy & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__PUAssetExplorerReviewScreenBadgeTileViewController_observable_didChange_context___block_invoke;
    v13[3] = &unk_1E7B80DD0;
    v13[4] = self;
    [(PUAssetExplorerReviewScreenBadgeTileViewController *)self performChanges:v13];
    goto LABEL_6;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenBadgeTileViewController.m" lineNumber:267 description:@"Not expecting any other observables"];

LABEL_6:
}

- (void)assetBadgeView:(id)view userDidSelectBadges:(unint64_t)badges
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self assetReference:view];
  asset = [v5 asset];
  uuid = [asset uuid];
  _disableLivePhotosSelectionManager = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _disableLivePhotosSelectionManager];
  v9 = [_disableLivePhotosSelectionManager isSelectedUUID:uuid];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __89__PUAssetExplorerReviewScreenBadgeTileViewController_assetBadgeView_userDidSelectBadges___block_invoke;
  v19 = &unk_1E7B75728;
  v21 = v9 ^ 1;
  v20 = uuid;
  v10 = uuid;
  [_disableLivePhotosSelectionManager performChanges:&v16];
  assetCollection = [v5 assetCollection];
  v22 = asset;
  v23 = assetCollection;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v24[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  _reviewActionManager = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _reviewActionManager];
  v15 = [_reviewActionManager actionPerformerForSimpleActionType:49 onAssetsByAssetCollection:v13];
  [v15 performWithCompletionHandler:0];
}

uint64_t __89__PUAssetExplorerReviewScreenBadgeTileViewController_assetBadgeView_userDidSelectBadges___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return [a2 addSelectedUUID:v2];
  }

  else
  {
    return [a2 removeSelectedUUID:v2];
  }
}

- (void)_updateBadgeViewIfNeeded
{
  if ([(PUAssetExplorerReviewScreenBadgeTileViewController *)self _needsUpdateBadgeView])
  {
    [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _setNeedsUpdateBadgeView:0];
    _badgeView = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _badgeView];
    if (_badgeView)
    {
      v11 = _badgeView;
      _reviewActionManager = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _reviewActionManager];
      assetReference = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self assetReference];
      asset = [assetReference asset];
      assetCollection = [assetReference assetCollection];
      v8 = [_reviewActionManager canPerformActionType:49 onAsset:asset inAssetCollection:assetCollection] ^ 1;
      [v11 setHidden:v8];
      if ((v8 & 1) == 0)
      {
        _disableLivePhotosSelectionManager = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _disableLivePhotosSelectionManager];
        uuid = [asset uuid];
        [objc_opt_class() _configureBadgeView:v11 isOverContent:-[PUAssetExplorerReviewScreenBadgeTileViewController _isOverContent](self isLivePhotoDisabled:{"_isOverContent"), objc_msgSend(_disableLivePhotosSelectionManager, "isSelectedUUID:", uuid)}];
      }

      _badgeView = v11;
    }
  }
}

- (void)_invalidateBadgeView
{
  if (![(PUAssetExplorerReviewScreenBadgeTileViewController *)self _isPerformingChanges])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenBadgeTileViewController.m" lineNumber:189 description:@"must be inside change block"];
  }

  [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _setNeedsUpdateBadgeView:1];
}

- (void)_updateIfNeeded
{
  if ([(PUAssetExplorerReviewScreenBadgeTileViewController *)self _needsUpdate])
  {
    if ([(PUTileViewController *)self isViewLoaded])
    {
      [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _updateBadgeViewIfNeeded];
      if ([(PUAssetExplorerReviewScreenBadgeTileViewController *)self _needsUpdate])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenBadgeTileViewController.m" lineNumber:180 description:@"updates still needed after an update cycle"];
      }
    }
  }
}

- (void)_setOverContent:(BOOL)content
{
  if (self->__isOverContent != content)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__PUAssetExplorerReviewScreenBadgeTileViewController__setOverContent___block_invoke;
    v5[3] = &unk_1E7B7FF98;
    v5[4] = self;
    contentCopy = content;
    [(PUAssetExplorerReviewScreenBadgeTileViewController *)self performChanges:v5];
  }
}

- (void)applyLayoutInfo:(id)info
{
  infoCopy = info;
  v5.receiver = self;
  v5.super_class = PUAssetExplorerReviewScreenBadgeTileViewController;
  [(PUTileViewController *)&v5 applyLayoutInfo:infoCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[PUAssetExplorerReviewScreenBadgeTileViewController _setOverContent:](self, "_setOverContent:", [infoCopy isOverContent]);
  }
}

- (id)_disableLivePhotosSelectionManager
{
  _reviewActionManager = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _reviewActionManager];
  disableLivePhotosSelectionManager = [_reviewActionManager disableLivePhotosSelectionManager];

  return disableLivePhotosSelectionManager;
}

- (id)_reviewActionManager
{
  actionManager = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self actionManager];
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
    v6[2] = __71__PUAssetExplorerReviewScreenBadgeTileViewController_setActionManager___block_invoke;
    v6[3] = &unk_1E7B80C38;
    v6[4] = self;
    v7 = managerCopy;
    [(PUAssetExplorerReviewScreenBadgeTileViewController *)self performChanges:v6];
  }
}

void __71__PUAssetExplorerReviewScreenBadgeTileViewController_setActionManager___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _disableLivePhotosSelectionManager];
  [v3 unregisterChangeObserver:*(a1 + 32) context:PUAssetExplorerReviewScreenBadgeTileViewControllerSelectionManagerObserverContext];
  objc_storeStrong((*(a1 + 32) + 192), *(a1 + 40));
  v2 = [*(a1 + 32) _disableLivePhotosSelectionManager];
  [v2 registerChangeObserver:*(a1 + 32) context:PUAssetExplorerReviewScreenBadgeTileViewControllerSelectionManagerObserverContext];
  [*(a1 + 32) _invalidateBadgeView];
}

- (void)setAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = referenceCopy;
  if (self->_assetReference != referenceCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__PUAssetExplorerReviewScreenBadgeTileViewController_setAssetReference___block_invoke;
    v6[3] = &unk_1E7B80C38;
    v6[4] = self;
    v7 = referenceCopy;
    [(PUAssetExplorerReviewScreenBadgeTileViewController *)self performChanges:v6];
  }
}

uint64_t __72__PUAssetExplorerReviewScreenBadgeTileViewController_setAssetReference___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _invalidateBadgeView];
}

- (void)setBrowsingViewModel:(id)model
{
  modelCopy = model;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != modelCopy)
  {
    [(PUBrowsingViewModel *)browsingViewModel unregisterChangeObserver:self];
    [(PUBrowsingViewModel *)modelCopy registerChangeObserver:self];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__PUAssetExplorerReviewScreenBadgeTileViewController_setBrowsingViewModel___block_invoke;
    v6[3] = &unk_1E7B80C38;
    v6[4] = self;
    v7 = modelCopy;
    [(PUAssetExplorerReviewScreenBadgeTileViewController *)self performChanges:v6];
  }
}

uint64_t __75__PUAssetExplorerReviewScreenBadgeTileViewController_setBrowsingViewModel___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 176), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _invalidateBadgeView];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PUAssetExplorerReviewScreenBadgeTileViewController;
  [(PUTileViewController *)&v3 prepareForReuse];
  [(PUAssetExplorerReviewScreenBadgeTileViewController *)self setAssetReference:0];
  [(PUAssetExplorerReviewScreenBadgeTileViewController *)self setActionManager:0];
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUAssetExplorerReviewScreenBadgeTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUAssetExplorerReviewScreenBadgeTileViewController *)self setAssetReference:0];
  [(PUAssetExplorerReviewScreenBadgeTileViewController *)self setActionManager:0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PUAssetExplorerReviewScreenBadgeTileViewController;
  [(PUTileViewController *)&v4 viewDidLoad];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PUAssetExplorerReviewScreenBadgeTileViewController_viewDidLoad__block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [(PUAssetExplorerReviewScreenBadgeTileViewController *)self performChanges:v3];
}

- (id)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69C3BE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  badgeView = self->__badgeView;
  self->__badgeView = v4;

  [(PXUIAssetBadgeView *)self->__badgeView setDelegate:self];
  v6 = self->__badgeView;

  return v6;
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  _isPerformingChanges = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _isPerformingChanges];
  [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _setPerformingChanges:1];
  changesCopy[2](changesCopy);

  [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _setPerformingChanges:_isPerformingChanges];
  if (!_isPerformingChanges)
  {

    [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _updateIfNeeded];
  }
}

+ (void)_configureBadgeView:(id)view isOverContent:(BOOL)content isLivePhotoDisabled:(BOOL)disabled
{
  contentCopy = content;
  viewCopy = view;
  [viewCopy setStyle:4];
  PXAssetBadgeInfoCreateWithBadges();
  [viewCopy setBadgeInfo:&v7];
  [viewCopy setOverContent:contentCopy];
}

+ (CGSize)badgeTileSize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PUAssetExplorerReviewScreenBadgeTileViewController_badgeTileSize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (badgeTileSize_onceToken != -1)
  {
    dispatch_once(&badgeTileSize_onceToken, block);
  }

  v2 = *&badgeTileSize_badgeTileSize_0;
  v3 = *&badgeTileSize_badgeTileSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

void __67__PUAssetExplorerReviewScreenBadgeTileViewController_badgeTileSize__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69C3BE0]);
  v11 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v3 = 0;
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  v6 = 1;
  do
  {
    v7 = v6;
    [*(a1 + 32) _configureBadgeView:v11 isOverContent:0 isLivePhotoDisabled:v3 & 1];
    [v11 sizeThatFits:{v4, v5}];
    v6 = 0;
    if (*&badgeTileSize_badgeTileSize_0 >= *&v8)
    {
      v8 = badgeTileSize_badgeTileSize_0;
    }

    badgeTileSize_badgeTileSize_0 = v8;
    v10 = badgeTileSize_badgeTileSize_1;
    if (*&badgeTileSize_badgeTileSize_1 < v9)
    {
      *&v10 = v9;
    }

    badgeTileSize_badgeTileSize_1 = v10;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
}

@end