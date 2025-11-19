@interface PUAssetExplorerReviewScreenBadgeTileViewController
+ (CGSize)badgeTileSize;
+ (void)_configureBadgeView:(id)a3 isOverContent:(BOOL)a4 isLivePhotoDisabled:(BOOL)a5;
- (id)_disableLivePhotosSelectionManager;
- (id)_reviewActionManager;
- (id)loadView;
- (void)_invalidateBadgeView;
- (void)_setOverContent:(BOOL)a3;
- (void)_updateBadgeViewIfNeeded;
- (void)_updateIfNeeded;
- (void)applyLayoutInfo:(id)a3;
- (void)assetBadgeView:(id)a3 userDidSelectBadges:(unint64_t)a4;
- (void)becomeReusable;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)prepareForReuse;
- (void)setActionManager:(id)a3;
- (void)setAssetReference:(id)a3;
- (void)setBrowsingViewModel:(id)a3;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUAssetExplorerReviewScreenBadgeTileViewController

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self browsingViewModel];

  if (v8 == v6)
  {
    v9 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self assetReference];
    v10 = [v7 assetViewModelChangesByAssetReference];
    if (v9)
    {
      v11 = [v6 assetsDataSource];
      v12 = [v11 assetReferenceForAssetReference:v9];

      [v10 objectForKeyedSubscript:v12];
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PUAssetExplorerReviewScreenBadgeTileViewControllerSelectionManagerObserverContext == a5)
  {
    v11 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _disableLivePhotosSelectionManager];

    if (v11 == v9)
    {
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenBadgeTileViewController.m" lineNumber:259 description:@"Expecting observable to match the current selection manager"];

      if ((v6 & 1) == 0)
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

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenBadgeTileViewController.m" lineNumber:267 description:@"Not expecting any other observables"];

LABEL_6:
}

- (void)assetBadgeView:(id)a3 userDidSelectBadges:(unint64_t)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self assetReference:a3];
  v6 = [v5 asset];
  v7 = [v6 uuid];
  v8 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _disableLivePhotosSelectionManager];
  v9 = [v8 isSelectedUUID:v7];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __89__PUAssetExplorerReviewScreenBadgeTileViewController_assetBadgeView_userDidSelectBadges___block_invoke;
  v19 = &unk_1E7B75728;
  v21 = v9 ^ 1;
  v20 = v7;
  v10 = v7;
  [v8 performChanges:&v16];
  v11 = [v5 assetCollection];
  v22 = v6;
  v23 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v24[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v14 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _reviewActionManager];
  v15 = [v14 actionPerformerForSimpleActionType:49 onAssetsByAssetCollection:v13];
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
    v3 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _badgeView];
    if (v3)
    {
      v11 = v3;
      v4 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _reviewActionManager];
      v5 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self assetReference];
      v6 = [v5 asset];
      v7 = [v5 assetCollection];
      v8 = [v4 canPerformActionType:49 onAsset:v6 inAssetCollection:v7] ^ 1;
      [v11 setHidden:v8];
      if ((v8 & 1) == 0)
      {
        v9 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _disableLivePhotosSelectionManager];
        v10 = [v6 uuid];
        [objc_opt_class() _configureBadgeView:v11 isOverContent:-[PUAssetExplorerReviewScreenBadgeTileViewController _isOverContent](self isLivePhotoDisabled:{"_isOverContent"), objc_msgSend(v9, "isSelectedUUID:", v10)}];
      }

      v3 = v11;
    }
  }
}

- (void)_invalidateBadgeView
{
  if (![(PUAssetExplorerReviewScreenBadgeTileViewController *)self _isPerformingChanges])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenBadgeTileViewController.m" lineNumber:189 description:@"must be inside change block"];
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
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        [v4 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenBadgeTileViewController.m" lineNumber:180 description:@"updates still needed after an update cycle"];
      }
    }
  }
}

- (void)_setOverContent:(BOOL)a3
{
  if (self->__isOverContent != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__PUAssetExplorerReviewScreenBadgeTileViewController__setOverContent___block_invoke;
    v5[3] = &unk_1E7B7FF98;
    v5[4] = self;
    v6 = a3;
    [(PUAssetExplorerReviewScreenBadgeTileViewController *)self performChanges:v5];
  }
}

- (void)applyLayoutInfo:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PUAssetExplorerReviewScreenBadgeTileViewController;
  [(PUTileViewController *)&v5 applyLayoutInfo:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[PUAssetExplorerReviewScreenBadgeTileViewController _setOverContent:](self, "_setOverContent:", [v4 isOverContent]);
  }
}

- (id)_disableLivePhotosSelectionManager
{
  v2 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _reviewActionManager];
  v3 = [v2 disableLivePhotosSelectionManager];

  return v3;
}

- (id)_reviewActionManager
{
  v2 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self actionManager];
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
    v6[2] = __71__PUAssetExplorerReviewScreenBadgeTileViewController_setActionManager___block_invoke;
    v6[3] = &unk_1E7B80C38;
    v6[4] = self;
    v7 = v4;
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

- (void)setAssetReference:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_assetReference != v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__PUAssetExplorerReviewScreenBadgeTileViewController_setAssetReference___block_invoke;
    v6[3] = &unk_1E7B80C38;
    v6[4] = self;
    v7 = v4;
    [(PUAssetExplorerReviewScreenBadgeTileViewController *)self performChanges:v6];
  }
}

uint64_t __72__PUAssetExplorerReviewScreenBadgeTileViewController_setAssetReference___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _invalidateBadgeView];
}

- (void)setBrowsingViewModel:(id)a3
{
  v4 = a3;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != v4)
  {
    [(PUBrowsingViewModel *)browsingViewModel unregisterChangeObserver:self];
    [(PUBrowsingViewModel *)v4 registerChangeObserver:self];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__PUAssetExplorerReviewScreenBadgeTileViewController_setBrowsingViewModel___block_invoke;
    v6[3] = &unk_1E7B80C38;
    v6[4] = self;
    v7 = v4;
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

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _isPerformingChanges];
  [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _setPerformingChanges:1];
  v4[2](v4);

  [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _setPerformingChanges:v5];
  if (!v5)
  {

    [(PUAssetExplorerReviewScreenBadgeTileViewController *)self _updateIfNeeded];
  }
}

+ (void)_configureBadgeView:(id)a3 isOverContent:(BOOL)a4 isLivePhotoDisabled:(BOOL)a5
{
  v5 = a4;
  v6 = a3;
  [v6 setStyle:4];
  PXAssetBadgeInfoCreateWithBadges();
  [v6 setBadgeInfo:&v7];
  [v6 setOverContent:v5];
}

+ (CGSize)badgeTileSize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PUAssetExplorerReviewScreenBadgeTileViewController_badgeTileSize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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