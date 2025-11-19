@interface PUBadgeTileViewController
+ (CGSize)badgeTileSizeForAssetViewModel:(id)a3 contentWidth:(double)a4;
+ (CGSize)leadingBadgesSizeForAssetViewModel:(id)a3 contentWidth:(double)a4;
+ (id)_adjustmentDataLoadingQueue;
+ (void)_configureBadgeView:(id)a3 withBadgeInfo:(PXAssetBadgeInfo *)a4 isOverContent:(BOOL)a5 contentWidth:(double)a6 animated:(BOOL)a7;
+ (void)_logEffectNameApplied:(id)a3 toAsset:(id)a4;
+ (void)logAppliedLivePhotoEffect:(int64_t)a3 toAsset:(id)a4;
+ (void)logToggledDepthEffect:(BOOL)a3 onAsset:(id)a4;
- (BOOL)_needsUpdate;
- (BOOL)isBadgeVisible;
- (PUBadgeTileViewControllerDelegate)delegate;
- (PXAssetBadgeInfo)_badgeInfo;
- (UIView)livePhotoBadgeContainerView;
- (id)_depthMenuElementsForDepthEnabled:(BOOL)a3 depthControllerExists:(BOOL)a4;
- (id)_depthToggleActionForEnable:(BOOL)a3 handler:(id)a4;
- (id)_depthToggleMenuForBadges:(unint64_t)a3;
- (id)_disabledDepthMenuElementsDepthEnabled:(BOOL)a3;
- (id)_liveVariationsMenuForBadges:(unint64_t)a3;
- (id)_menuForBadges:(unint64_t)a3;
- (id)loadView;
- (id)undoManagerForActionPerformer:(id)a3;
- (void)_invalidateBadgeInfo;
- (void)_invalidateBadgeProvider;
- (void)_invalidateBadgeView;
- (void)_performEditsIfAllowedOnAsset:(id)a3 edits:(id)a4;
- (void)_setBadgeInfo:(PXAssetBadgeInfo *)a3;
- (void)_setContentWidth:(double)a3;
- (void)_setOverContent:(BOOL)a3;
- (void)_toggleDepthForAsset:(id)a3 enable:(BOOL)a4 undoManager:(id)a5;
- (void)_updateBadgeInfoIfNeeded;
- (void)_updateBadgeProviderIfNeeded;
- (void)_updateBadgeViewIfNeeded;
- (void)_updateIfNeeded;
- (void)applyLayoutInfo:(id)a3;
- (void)applyLivePhotoEffect:(int64_t)a3 toAsset:(id)a4 undoManager:(id)a5;
- (void)assetBadgeView:(id)a3 dismissAnyPresentedViewControllerWithCompletion:(id)a4;
- (void)becomeReusable;
- (void)didChangeActive;
- (void)disableLivePhotoForAsset:(id)a3 undoManager:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)prepareForReuse;
- (void)setAssetViewModel:(id)a3;
- (void)setDelegate:(id)a3;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUBadgeTileViewController

- (PXAssetBadgeInfo)_badgeInfo
{
  v3 = *&self[7].duration;
  *&retstr->badges = *&self[6].fileSize;
  *&retstr->count = v3;
  return self;
}

- (PUBadgeTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (a4 == 1 && PUBadgeInfoProviderObservationContext == a5)
  {
    [(PUBadgeTileViewController *)self _invalidateBadgeView];
  }

  [(PUBadgeTileViewController *)self _updateIfNeeded];
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  if ([a4 badgeInfoChanged])
  {
    [(PUBadgeTileViewController *)self _invalidateBadgeInfo];
  }

  [(PUBadgeTileViewController *)self _updateIfNeeded];
}

- (id)undoManagerForActionPerformer:(id)a3
{
  v3 = [(PUBadgeTileViewController *)self _badgeView];
  v4 = [v3 undoManager];

  return v4;
}

- (void)assetBadgeView:(id)a3 dismissAnyPresentedViewControllerWithCompletion:(id)a4
{
  if (self->_delegateRespondsTo.userDidTapBadgeView)
  {
    v6 = a4;
    v7 = [(PUBadgeTileViewController *)self delegate];
    [v7 dismissPresentedViewController:self presentMenuWithCompletion:v6];
  }
}

- (id)_depthToggleActionForEnable:(BOOL)a3 handler:(id)a4
{
  v5 = a4;
  v6 = PLServicesLivePortraitLocalizedFrameworkString();
  if (a3)
  {
    [MEMORY[0x1E69DCAB8] systemImageNamed:@"f.cursive.circle"];
  }

  else
  {
    [MEMORY[0x1E69DCAB8] _systemImageNamed:@"f.cursive.circle.slash"];
  }
  v7 = ;
  v8 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PUBadgeTileViewController__depthToggleActionForEnable_handler___block_invoke;
  v12[3] = &unk_1E7B7CC30;
  v13 = v5;
  v9 = v5;
  v10 = [v8 actionWithTitle:v6 image:v7 identifier:0 handler:v12];

  return v10;
}

uint64_t __65__PUBadgeTileViewController__depthToggleActionForEnable_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_disabledDepthMenuElementsDepthEnabled:(BOOL)a3
{
  v3 = a3;
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = [(PUBadgeTileViewController *)self _depthToggleActionForEnable:1 handler:0];
  v6 = [(PUBadgeTileViewController *)self _depthToggleActionForEnable:0 handler:0];
  [v5 setAttributes:1];
  [v6 setAttributes:1];
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  [v7 setState:1];
  v10[0] = v5;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  return v8;
}

- (id)_depthMenuElementsForDepthEnabled:(BOOL)a3 depthControllerExists:(BOOL)a4
{
  v5 = a3;
  v32[2] = *MEMORY[0x1E69E9840];
  if (self->_delegateRespondsTo.undoManager)
  {
    v7 = [(PUBadgeTileViewController *)self delegate];
    v8 = [v7 undoManagerForAssetActionPerformer:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PUBadgeTileViewController *)self assetViewModel];
  v10 = [v9 asset];

  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __85__PUBadgeTileViewController__depthMenuElementsForDepthEnabled_depthControllerExists___block_invoke;
  v25[3] = &unk_1E7B75B18;
  v29 = v5;
  v30 = a4;
  objc_copyWeak(&v28, &location);
  v11 = v10;
  v26 = v11;
  v12 = v8;
  v27 = v12;
  v13 = [(PUBadgeTileViewController *)self _depthToggleActionForEnable:1 handler:v25];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __85__PUBadgeTileViewController__depthMenuElementsForDepthEnabled_depthControllerExists___block_invoke_2;
  v19[3] = &unk_1E7B75B18;
  v23 = v5;
  v24 = a4;
  objc_copyWeak(&v22, &location);
  v14 = v11;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  v16 = [(PUBadgeTileViewController *)self _depthToggleActionForEnable:0 handler:v19];
  [v13 setState:v5];
  [v16 setState:!v5];
  v32[0] = v13;
  v32[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v17;
}

void __85__PUBadgeTileViewController__depthMenuElementsForDepthEnabled_depthControllerExists___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) != 1 || (*(a1 + 57) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _toggleDepthForAsset:*(a1 + 32) enable:1 undoManager:*(a1 + 40)];
  }
}

void __85__PUBadgeTileViewController__depthMenuElementsForDepthEnabled_depthControllerExists___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 56) & 1) != 0 || (*(a1 + 57) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _toggleDepthForAsset:*(a1 + 32) enable:0 undoManager:*(a1 + 40)];
  }
}

- (id)_depthToggleMenuForBadges:(unint64_t)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (PECanRenderPortrait())
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E69DC928];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__PUBadgeTileViewController__depthToggleMenuForBadges___block_invoke;
    v11[3] = &unk_1E7B75AF0;
    objc_copyWeak(v12, &location);
    v12[1] = a3;
    v6 = [v5 elementWithUncachedProvider:v11];
    v7 = MEMORY[0x1E69DCC60];
    v14[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v9 = [v7 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v8];

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __55__PUBadgeTileViewController__depthToggleMenuForBadges___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    if ((*(a1 + 40) & 0x380) != 0)
    {
      v5 = objc_loadWeakRetained((a1 + 32));
      v6 = [v5 _disabledDepthMenuElementsDepthEnabled:0];
      v3[2](v3, v6);
    }

    else
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v8 = [v7 assetViewModel];
      v9 = [v8 asset];

      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v5 = v9;

        if (v5)
        {
          v10 = dispatch_group_create();
          dispatch_group_enter(v10);
          v36 = 0;
          v37 = &v36;
          v38 = 0x2020000000;
          v39 = 0;
          v32 = 0;
          v33 = &v32;
          v34 = 0x2020000000;
          v35 = 0;
          v28 = 0;
          v29 = &v28;
          v30 = 0x2020000000;
          v31 = 0;
          v11 = MEMORY[0x1E69C4320];
          v12 = objc_loadWeakRetained((a1 + 32));
          v13 = [objc_opt_class() _adjustmentDataLoadingQueue];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __55__PUBadgeTileViewController__depthToggleMenuForBadges___block_invoke_2;
          v21[3] = &unk_1E7B75AC8;
          objc_copyWeak(&v27, (a1 + 32));
          v14 = v10;
          v22 = v14;
          v24 = &v28;
          v15 = v3;
          v23 = v15;
          v25 = &v36;
          v26 = &v32;
          [v11 assetHasDepthEnabled:v5 queue:v13 handler:v21];

          v16 = dispatch_time(0, 100000000);
          v17 = dispatch_group_wait(v14, v16);
          *(v29 + 24) = v17 != 0;
          if (v17)
          {
            v18 = PLOneUpGetLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v20[0] = 0;
              _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "Badge tile menu synchronous depth enabled check timed out, continuing asynchronously with loading indicator", v20, 2u);
            }
          }

          else
          {
            v19 = objc_loadWeakRetained((a1 + 32));
            v18 = [v19 _depthMenuElementsForDepthEnabled:*(v37 + 24) depthControllerExists:*(v33 + 24)];

            v15[2](v15, v18);
          }

          objc_destroyWeak(&v27);
          _Block_object_dispose(&v28, 8);
          _Block_object_dispose(&v32, 8);
          _Block_object_dispose(&v36, 8);

          goto LABEL_13;
        }
      }

      else
      {
      }

      v3[2](v3, MEMORY[0x1E695E0F0]);
      v5 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  v3[2](v3, MEMORY[0x1E695E0F0]);
LABEL_14:
}

void __55__PUBadgeTileViewController__depthToggleMenuForBadges___block_invoke_2(uint64_t a1, char a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));

  if (WeakRetained)
  {
    *(*(*(a1 + 56) + 8) + 24) = a2;
    *(*(*(a1 + 64) + 8) + 24) = a3;
    dispatch_group_leave(*(a1 + 32));
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      objc_copyWeak(&v8, (a1 + 72));
      v9 = a2;
      v10 = a3;
      v7 = *(a1 + 40);
      px_dispatch_on_main_queue();

      objc_destroyWeak(&v8);
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __55__PUBadgeTileViewController__depthToggleMenuForBadges___block_invoke_3;
      v14 = &unk_1E7B80C88;
      v15 = *(a1 + 40);
      px_dispatch_on_main_queue();
    }
  }
}

void __55__PUBadgeTileViewController__depthToggleMenuForBadges___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _depthMenuElementsForDepthEnabled:*(a1 + 48) depthControllerExists:*(a1 + 49)];

  (*(*(a1 + 32) + 16))();
}

- (id)_liveVariationsMenuForBadges:(unint64_t)a3
{
  v68[5] = *MEMORY[0x1E69E9840];
  if (self->_delegateRespondsTo.undoManager)
  {
    v5 = [(PUBadgeTileViewController *)self delegate];
    v6 = [v5 undoManagerForAssetActionPerformer:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PUBadgeTileViewController *)self assetViewModel];
  v8 = [v7 asset];

  v46 = PULocalizedString(@"LIVE_PHOTO_BADGE_MENU_ACTION_LIVE");
  v45 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"livephoto"];
  v42 = [v8 mediaSubtypes];
  if ((v42 & 0x10) != 0)
  {
    v9 = PLServicesLivePortraitLocalizedFrameworkString();

    v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"livephoto.portrait"];

    v45 = v10;
    v46 = v9;
  }

  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69DC628];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __58__PUBadgeTileViewController__liveVariationsMenuForBadges___block_invoke;
  v63[3] = &unk_1E7B7F518;
  objc_copyWeak(&v66, &location);
  v12 = v8;
  v64 = v12;
  v13 = v6;
  v65 = v13;
  v44 = [v11 actionWithTitle:v46 image:v45 identifier:0 handler:v63];
  v14 = MEMORY[0x1E69DC628];
  v15 = PULocalizedString(@"LIVE_PHOTO_BADGE_MENU_ACTION_LOOP");
  v16 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"livephoto.loop"];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __58__PUBadgeTileViewController__liveVariationsMenuForBadges___block_invoke_2;
  v59[3] = &unk_1E7B7F518;
  objc_copyWeak(&v62, &location);
  v17 = v12;
  v60 = v17;
  v18 = v13;
  v61 = v18;
  v43 = [v14 actionWithTitle:v15 image:v16 identifier:0 handler:v59];

  v19 = MEMORY[0x1E69DC628];
  v20 = PULocalizedString(@"LIVE_PHOTO_BADGE_MENU_ACTION_BOUNCE");
  v21 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"livephoto.bounce"];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __58__PUBadgeTileViewController__liveVariationsMenuForBadges___block_invoke_3;
  v55[3] = &unk_1E7B7F518;
  objc_copyWeak(&v58, &location);
  v22 = v17;
  v56 = v22;
  v23 = v18;
  v57 = v23;
  v24 = [v19 actionWithTitle:v20 image:v21 identifier:0 handler:v55];

  v25 = MEMORY[0x1E69DC628];
  v26 = PULocalizedString(@"LIVE_PHOTO_BADGE_MENU_ACTION_LONG_EXPOSURE");
  v27 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"livephoto.long.exposure"];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __58__PUBadgeTileViewController__liveVariationsMenuForBadges___block_invoke_4;
  v51[3] = &unk_1E7B7F518;
  objc_copyWeak(&v54, &location);
  v28 = v22;
  v52 = v28;
  v29 = v23;
  v53 = v29;
  v30 = [v25 actionWithTitle:v26 image:v27 identifier:0 handler:v51];

  v31 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"livephoto.slash"];
  if ((v42 & 0x10) != 0)
  {
    v32 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"livephoto.slash.portrait"];

    v31 = v32;
  }

  v33 = MEMORY[0x1E69DC628];
  v34 = PULocalizedString(@"LIVE_PHOTO_BADGE_MENU_ACTION_DISABLE_LIVE_PHOTO");
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __58__PUBadgeTileViewController__liveVariationsMenuForBadges___block_invoke_5;
  v47[3] = &unk_1E7B7F518;
  objc_copyWeak(&v50, &location);
  v35 = v28;
  v48 = v35;
  v36 = v29;
  v49 = v36;
  v37 = [v33 actionWithTitle:v34 image:v31 identifier:0 handler:v47];

  [v44 setState:!(a3 & 0x1000000) & (a3 >> 6)];
  [v43 setState:(a3 >> 7) & 1];
  [v24 setState:(a3 >> 8) & 1];
  [v30 setState:(a3 >> 9) & 1];
  [v37 setState:(a3 >> 24) & 1];
  v38 = MEMORY[0x1E69DCC60];
  v68[0] = v44;
  v68[1] = v43;
  v68[2] = v24;
  v68[3] = v30;
  v68[4] = v37;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:5];
  v40 = [v38 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v39];

  objc_destroyWeak(&v50);
  objc_destroyWeak(&v54);

  objc_destroyWeak(&v58);
  objc_destroyWeak(&v62);

  objc_destroyWeak(&v66);
  objc_destroyWeak(&location);

  return v40;
}

void __58__PUBadgeTileViewController__liveVariationsMenuForBadges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained applyLivePhotoEffect:0 toAsset:*(a1 + 32) undoManager:*(a1 + 40)];
}

void __58__PUBadgeTileViewController__liveVariationsMenuForBadges___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained applyLivePhotoEffect:1 toAsset:*(a1 + 32) undoManager:*(a1 + 40)];
}

void __58__PUBadgeTileViewController__liveVariationsMenuForBadges___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained applyLivePhotoEffect:2 toAsset:*(a1 + 32) undoManager:*(a1 + 40)];
}

void __58__PUBadgeTileViewController__liveVariationsMenuForBadges___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained applyLivePhotoEffect:3 toAsset:*(a1 + 32) undoManager:*(a1 + 40)];
}

void __58__PUBadgeTileViewController__liveVariationsMenuForBadges___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained disableLivePhotoForAsset:*(a1 + 32) undoManager:*(a1 + 40)];
}

- (id)_menuForBadges:(unint64_t)a3
{
  v42[1] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x40000002000) != 0)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ((a3 & 0x2000) != 0)
    {
      v6 = [(PUBadgeTileViewController *)self _liveVariationsMenuForBadges:a3];
      [v5 addObject:v6];
    }

    if ((a3 & 0x40000000000) != 0)
    {
      v7 = [(PUBadgeTileViewController *)self _depthToggleMenuForBadges:a3];
      if (v7)
      {
        [v5 addObject:v7];
      }
    }

    if ([v5 count])
    {
      v8 = [MEMORY[0x1E69DCC60] menuWithChildren:v5];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_23;
  }

  if ((a3 & 0x2000000000) == 0)
  {
    v8 = 0;
    goto LABEL_24;
  }

  v10 = [(PUBadgeTileViewController *)self assetViewModel];
  v5 = [v10 asset];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_15;
    }

    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = objc_opt_class();
    v30 = NSStringFromClass(v31);
    v32 = [v5 px_descriptionForAssertionMessage];
    [v28 handleFailureInMethod:a2 object:self file:@"PUBadgeTileViewController.m" lineNumber:423 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetViewModel.asset", v30, v32}];
  }

  else
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    [v28 handleFailureInMethod:a2 object:self file:@"PUBadgeTileViewController.m" lineNumber:423 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetViewModel.asset", v30}];
  }

LABEL_15:
  v11 = [MEMORY[0x1E69C37D8] dataSourceManagerWithAsset:v5];
  v12 = MEMORY[0x1E69C4528];
  v13 = [v11 dataSource];
  v41[0] = [v13 identifier];
  v41[1] = 0;
  v41[2] = 0;
  v41[3] = 0x7FFFFFFFFFFFFFFFLL;
  v14 = [v12 indexPathSetWithIndexPath:v41];

  v15 = [objc_alloc(MEMORY[0x1E69C45C8]) initWithDataSourceManager:v11];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __44__PUBadgeTileViewController__menuForBadges___block_invoke;
  v39[3] = &unk_1E7B75A78;
  v16 = v14;
  v40 = v16;
  [v15 performChanges:v39];
  v17 = [objc_alloc(MEMORY[0x1E69C3798]) initWithSelectionManager:v15];
  [v17 setDataSourceManager:v11];
  [v17 setPerformerDelegate:self];
  if ((a3 & 0x8000000000) != 0)
  {
    v18 = MEMORY[0x1E69DC628];
    v19 = PXLocalizedSharedLibraryString();
    v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.fill"];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __44__PUBadgeTileViewController__menuForBadges___block_invoke_2;
    v36[3] = &unk_1E7B7C4C8;
    v21 = &v37;
    v37 = v17;
    v22 = &v38;
    v38 = v5;
    v23 = v36;
  }

  else
  {
    if ((a3 & 0x4000000000) == 0)
    {
LABEL_21:
      v8 = 0;
      goto LABEL_22;
    }

    v18 = MEMORY[0x1E69DC628];
    v19 = PXLocalizedSharedLibraryString();
    v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2.fill"];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __44__PUBadgeTileViewController__menuForBadges___block_invoke_301;
    v33[3] = &unk_1E7B7C4C8;
    v21 = &v34;
    v34 = v17;
    v22 = &v35;
    v35 = v5;
    v23 = v33;
  }

  v24 = [v18 actionWithTitle:v19 image:v20 identifier:0 handler:v23];

  if (!v24)
  {
    goto LABEL_21;
  }

  v25 = MEMORY[0x1E69DCC60];
  v42[0] = v24;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  v8 = [v25 menuWithChildren:v26];

LABEL_22:
LABEL_23:

LABEL_24:

  return v8;
}

void __44__PUBadgeTileViewController__menuForBadges___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) actionPerformerForActionType:*MEMORY[0x1E69C4750]];
  v3 = MEMORY[0x1E69C4608];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 px_firstKeyWindow];
  v6 = [v5 rootViewController];
  v7 = [v3 defaultPresenterWithViewController:v6];
  [v2 setPresentationEnvironment:v7];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PUBadgeTileViewController__menuForBadges___block_invoke_3;
  v8[3] = &unk_1E7B80280;
  v9 = *(a1 + 40);
  [v2 performActionWithCompletionHandler:v8];
}

void __44__PUBadgeTileViewController__menuForBadges___block_invoke_301(uint64_t a1)
{
  v2 = [*(a1 + 32) actionPerformerForActionType:*MEMORY[0x1E69C4758]];
  v3 = MEMORY[0x1E69C4608];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 px_firstKeyWindow];
  v6 = [v5 rootViewController];
  v7 = [v3 defaultPresenterWithViewController:v6];
  [v2 setPresentationEnvironment:v7];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PUBadgeTileViewController__menuForBadges___block_invoke_2_302;
  v8[3] = &unk_1E7B80280;
  v9 = *(a1 + 40);
  [v2 performActionWithCompletionHandler:v8];
}

void __44__PUBadgeTileViewController__menuForBadges___block_invoke_2_302(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) uuid];
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Error moving asset %{public}@ to shared library:%@", &v8, 0x16u);
    }
  }
}

void __44__PUBadgeTileViewController__menuForBadges___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) uuid];
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Error moving asset %{public}@ to personal library:%@", &v8, 0x16u);
    }
  }
}

- (void)_updateBadgeViewIfNeeded
{
  if ([(PUBadgeTileViewController *)self _needsUpdateBadgeView])
  {
    [(PUBadgeTileViewController *)self _setNeedsUpdateBadgeView:0];
    v3 = [(PUBadgeTileViewController *)self _badgeInfoProvider];
    v12 = 0u;
    v13 = 0u;
    [(PUBadgeTileViewController *)self _badgeInfo];
    v10 = 0u;
    v11 = 0u;
    if (v3)
    {
      [v3 outputBadgeInfo];
    }

    v4 = [v3 outputShouldAnimate];
    v5 = [(PUBadgeTileViewController *)self _badgeView];
    v8 = v12;
    v9 = v13;
    if ((PXAssetBadgeInfoIsNull() & 1) == 0)
    {
      if (v5)
      {
        v6 = objc_opt_class();
        v7 = [(PUBadgeTileViewController *)self _isOverContent:v8];
        [(PUBadgeTileViewController *)self _contentWidth];
        v8 = v10;
        v9 = v11;
        [v6 _configureBadgeView:v5 withBadgeInfo:&v8 isOverContent:v7 contentWidth:v4 animated:?];
      }
    }
  }
}

- (void)_invalidateBadgeView
{
  [(PUBadgeTileViewController *)self _setNeedsUpdateBadgeView:1];

  [(PUBadgeTileViewController *)self _setNeedsUpdate];
}

- (void)_updateBadgeProviderIfNeeded
{
  if ([(PUBadgeTileViewController *)self _needsUpdateBadgeProvider])
  {
    [(PUBadgeTileViewController *)self _setNeedsUpdateBadgeProvider:0];
    v3 = [(PUBadgeTileViewController *)self _badgeInfoProvider];
    if (!v3)
    {
      v3 = objc_alloc_init(PUBadgeInfoProvider);
      [(PUBadgeInfoProvider *)v3 registerChangeObserver:self context:PUBadgeInfoProviderObservationContext];
      [(PUBadgeTileViewController *)self set_badgeInfoProvider:v3];
    }

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__PUBadgeTileViewController__updateBadgeProviderIfNeeded__block_invoke;
    v4[3] = &unk_1E7B7D880;
    v4[4] = self;
    [(PUBadgeInfoProvider *)v3 performChanges:v4];
  }
}

void __57__PUBadgeTileViewController__updateBadgeProviderIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) assetViewModel];
  [v3 setAssetViewModel:v4];

  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 _badgeInfo];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v6[0] = v7;
  v6[1] = v8;
  [v3 setBadgeInfo:v6];
}

- (void)_invalidateBadgeProvider
{
  [(PUBadgeTileViewController *)self _setNeedsUpdateBadgeProvider:1];

  [(PUBadgeTileViewController *)self _setNeedsUpdate];
}

- (void)_updateBadgeInfoIfNeeded
{
  if ([(PUBadgeTileViewController *)self _needsUpdateBadgeInfo])
  {
    [(PUBadgeTileViewController *)self _setNeedsUpdateBadgeInfo:0];
    v7 = 0u;
    v8 = 0u;
    v3 = [(PUBadgeTileViewController *)self assetViewModel];
    v4 = [v3 badgeInfoPromise];
    v5 = v4;
    if (v4)
    {
      [v4 badgeInfo];
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v6[0] = v7;
    v6[1] = v8;
    [(PUBadgeTileViewController *)self _setBadgeInfo:v6];
  }
}

- (void)_invalidateBadgeInfo
{
  [(PUBadgeTileViewController *)self _setNeedsUpdateBadgeInfo:1];

  [(PUBadgeTileViewController *)self _setNeedsUpdate];
}

- (BOOL)_needsUpdate
{
  if ([(PUBadgeTileViewController *)self _needsUpdateBadgeInfo]|| [(PUBadgeTileViewController *)self _needsUpdateBadgeProvider])
  {
    return 1;
  }

  return [(PUBadgeTileViewController *)self _needsUpdateBadgeView];
}

- (void)_updateIfNeeded
{
  if ([(PUBadgeTileViewController *)self _needsUpdate])
  {
    if ([(PUTileViewController *)self isViewLoaded])
    {
      [(PUBadgeTileViewController *)self _updateBadgeInfoIfNeeded];
      [(PUBadgeTileViewController *)self _updateBadgeProviderIfNeeded];
      [(PUBadgeTileViewController *)self _updateBadgeViewIfNeeded];
      if ([(PUBadgeTileViewController *)self _needsUpdate])
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        [v4 handleFailureInMethod:a2 object:self file:@"PUBadgeTileViewController.m" lineNumber:319 description:@"updates still needed after an update cycle"];
      }
    }
  }
}

- (void)_setContentWidth:(double)a3
{
  if (self->__contentWidth != a3)
  {
    self->__contentWidth = a3;
    [(PUBadgeTileViewController *)self _invalidateBadgeView];
  }
}

- (void)_setOverContent:(BOOL)a3
{
  if (self->__isOverContent != a3)
  {
    self->__isOverContent = a3;
    [(PUBadgeTileViewController *)self _invalidateBadgeView];
  }
}

- (void)_setBadgeInfo:(PXAssetBadgeInfo *)a3
{
  p_badgeInfo = &self->__badgeInfo;
  v8 = *a3;
  badgeInfo = self->__badgeInfo;
  if ((PXAssetBadgeInfoEqualToBadgeInfo() & 1) == 0)
  {
    v6 = *&a3->count;
    *&p_badgeInfo->badges = *&a3->badges;
    *&p_badgeInfo->count = v6;
    [(PUBadgeTileViewController *)self _invalidateBadgeProvider:*&badgeInfo.badges];
    [(PUBadgeTileViewController *)self _invalidateBadgeView];
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PUBadgeTileViewController;
  [(PUTileViewController *)&v5 prepareForReuse];
  [(PUBadgeTileViewController *)self setAssetViewModel:0];
  v3 = [(PUBadgeTileViewController *)self _badgeView];
  [v3 prepareForReuse];

  v4 = [(PUBadgeTileViewController *)self _badgeInfoProvider];
  [v4 performChanges:&__block_literal_global_263];
}

- (void)applyLayoutInfo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PUBadgeTileViewController;
  [(PUTileViewController *)&v8 applyLayoutInfo:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    -[PUBadgeTileViewController _setOverContent:](self, "_setOverContent:", [v5 isOverContent]);
    [v5 contentWidth];
    v7 = v6;

    [(PUBadgeTileViewController *)self _setContentWidth:v7];
  }

  [(PUBadgeTileViewController *)self _updateIfNeeded];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->userDidTapBadgeView = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->badgeVisibilityDidChange = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->undoManager = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->presentViewController = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != v5)
  {
    v7 = v5;
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, a3);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    [(PUBadgeTileViewController *)self _invalidateBadgeInfo];
    [(PUBadgeTileViewController *)self _invalidateBadgeProvider];
    [(PUBadgeTileViewController *)self _invalidateBadgeView];
    assetViewModel = [(PUBadgeTileViewController *)self _updateIfNeeded];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](assetViewModel, v5);
}

- (UIView)livePhotoBadgeContainerView
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(PUTileViewController *)self view];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(PUTileViewController *)self view];
  v5 = [v4 subviews];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v15 = v3;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v10;
          v17 = 0u;
          v18 = 0u;
          [(PUBadgeTileViewController *)self _badgeInfo];
          v11 = [v3 text];
          v16[0] = v17;
          v16[1] = v18;
          v12 = [MEMORY[0x1E69C44B8] textForBadgeInfo:v16 style:3];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {

            goto LABEL_13;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v3 = v15;
  }

LABEL_13:

  return v3;
}

- (BOOL)isBadgeVisible
{
  v3.receiver = self;
  v3.super_class = PUBadgeTileViewController;
  return [(PUTileController *)&v3 isActive];
}

- (void)didChangeActive
{
  if (self->_delegateRespondsTo.badgeVisibilityDidChange)
  {
    v4 = [(PUBadgeTileViewController *)self delegate];
    [v4 badgeVisibilityDidChange:self];
  }
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUBadgeTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUBadgeTileViewController *)self setAssetViewModel:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUBadgeTileViewController;
  [(PUTileViewController *)&v3 viewDidLoad];
  [(PUBadgeTileViewController *)self _invalidateBadgeView];
  [(PUBadgeTileViewController *)self _updateIfNeeded];
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

- (void)_performEditsIfAllowedOnAsset:(id)a3 edits:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 isSpatialMedia];
  if (v10)
  {
    v11 = MEMORY[0x1E69DC650];
    v12 = PELocalizedString();
    v13 = PELocalizedString();
    v14 = [v11 alertControllerWithTitle:v12 message:v13 preferredStyle:1];

    v15 = MEMORY[0x1E69DC648];
    v16 = PELocalizedString();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65__PUBadgeTileViewController__performEditsIfAllowedOnAsset_edits___block_invoke;
    v23[3] = &unk_1E7B80980;
    v17 = v7;
    v24 = v17;
    v18 = [v15 actionWithTitle:v16 style:0 handler:v23];
    [v14 addAction:v18];

    v19 = MEMORY[0x1E69DC648];
    v20 = PELocalizedString();
    v21 = [v19 actionWithTitle:v20 style:1 handler:&__block_literal_global_13238];
    [v14 addAction:v21];

    if (self->_delegateRespondsTo.presentViewController)
    {
      v22 = [(PUBadgeTileViewController *)self delegate];
      [v22 badgeTileViewController:self presentViewController:v14];
    }

    else
    {
      v17[2](v17);
    }
  }

  else
  {
    v7[2](v7);
  }
}

uint64_t __65__PUBadgeTileViewController__performEditsIfAllowedOnAsset_edits___block_invoke(uint64_t a1)
{
  v2 = PLOneUpGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "User approved 1up edit of spatial asset", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __65__PUBadgeTileViewController__performEditsIfAllowedOnAsset_edits___block_invoke_240()
{
  v0 = PLOneUpGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B36F3000, v0, OS_LOG_TYPE_DEFAULT, "User cancelled 1up edit of spatial asset", v1, 2u);
  }
}

- (void)_toggleDepthForAsset:(id)a3 enable:(BOOL)a4 undoManager:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUBadgeTileViewController.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PUBadgeTileViewController__toggleDepthForAsset_enable_undoManager___block_invoke;
  v14[3] = &unk_1E7B805E8;
  v17 = a4;
  v15 = v9;
  v16 = v10;
  v11 = v10;
  v12 = v9;
  [(PUBadgeTileViewController *)self _performEditsIfAllowedOnAsset:v12 edits:v14];
}

void __69__PUBadgeTileViewController__toggleDepthForAsset_enable_undoManager___block_invoke(uint64_t a1)
{
  v2 = PXAssetEditOperationTypeForDepthToggle();
  v3 = [MEMORY[0x1E69C3360] sharedManager];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PUBadgeTileViewController__toggleDepthForAsset_enable_undoManager___block_invoke_2;
  v7[3] = &unk_1E7B7BAF0;
  v9 = *(a1 + 48);
  v8 = v4;
  v6 = [v3 performEditOperationWithType:v2 asset:v8 undoManager:v5 completionHandler:v7];
}

void __69__PUBadgeTileViewController__toggleDepthForAsset_enable_undoManager___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [PUBadgeTileViewController logToggledDepthEffect:*(a1 + 40) onAsset:*(a1 + 32)];
  }

  else
  {
    v6 = PLOneUpGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      if (*(a1 + 40))
      {
        v8 = @"enable";
      }

      else
      {
        v8 = @"disable";
      }

      v9 = 138412802;
      v10 = v8;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to %@ depth for asset %@ with error: %@", &v9, 0x20u);
    }
  }
}

- (void)disableLivePhotoForAsset:(id)a3 undoManager:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 canPlayPhotoIris])
  {
    v7 = *MEMORY[0x1E69C3FD0];
    v8 = [MEMORY[0x1E69C3360] sharedManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__PUBadgeTileViewController_disableLivePhotoForAsset_undoManager___block_invoke;
    v11[3] = &unk_1E7B80280;
    v12 = v5;
    v9 = [v8 performEditOperationWithType:v7 asset:v12 undoManager:v6 completionHandler:v11];

    v10 = v12;
  }

  else
  {
    v10 = PLOneUpGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "User selected Live Photo Off for asset %@, but it is already off. No-op.", buf, 0xCu);
    }
  }
}

void __66__PUBadgeTileViewController_disableLivePhotoForAsset_undoManager___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x1E6991F28];
    v7 = *(a1 + 32);
    v14 = *MEMORY[0x1E6991E18];
    v15[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v6 sendEvent:@"com.apple.photos.CPAnalytics.oneUpLivePhotoDisabled" withPayload:v8];
  }

  else
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Failed to disable Live photo for asset %@ with error: %@", &v10, 0x16u);
    }
  }
}

- (void)applyLivePhotoEffect:(int64_t)a3 toAsset:(id)a4 undoManager:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUBadgeTileViewController.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if ([v9 canPlayPhotoIris] && (v11 = PFMetadataPlaybackVariationFromPXAssetVariation(), v11 == objc_msgSend(v9, "playbackVariation")))
  {
    v12 = PLOneUpGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PXAssetVariationTypeDescription();
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "User selected variation %@ for asset %@, but it is already applied. No-op.", buf, 0x16u);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__PUBadgeTileViewController_applyLivePhotoEffect_toAsset_undoManager___block_invoke;
    aBlock[3] = &unk_1E7B7F350;
    v21 = a3;
    v14 = v9;
    v19 = v14;
    v20 = v10;
    v15 = _Block_copy(aBlock);
    v16 = v15;
    if (a3)
    {
      [(PUBadgeTileViewController *)self _performEditsIfAllowedOnAsset:v14 edits:v15];
    }

    else
    {
      (*(v15 + 2))(v15);
    }

    v12 = v19;
  }
}

void __70__PUBadgeTileViewController_applyLivePhotoEffect_toAsset_undoManager___block_invoke(void *a1)
{
  v2 = PXAssetEditOperationTypeForVariationType();
  v3 = [MEMORY[0x1E69C3360] sharedManager];
  v4 = a1[4];
  v5 = a1[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PUBadgeTileViewController_applyLivePhotoEffect_toAsset_undoManager___block_invoke_2;
  v7[3] = &unk_1E7B809C8;
  v9 = a1[6];
  v8 = v4;
  v6 = [v3 performEditOperationWithType:v2 asset:v8 undoManager:v5 completionHandler:v7];
}

void __70__PUBadgeTileViewController_applyLivePhotoEffect_toAsset_undoManager___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [PUBadgeTileViewController logAppliedLivePhotoEffect:*(a1 + 40) toAsset:*(a1 + 32)];
  }

  else
  {
    v6 = PLOneUpGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to apply suggested variation with error: %@", &v7, 0xCu);
    }
  }
}

+ (id)_adjustmentDataLoadingQueue
{
  if (_adjustmentDataLoadingQueue_onceToken != -1)
  {
    dispatch_once(&_adjustmentDataLoadingQueue_onceToken, &__block_literal_global_366_13288);
  }

  v3 = _adjustmentDataLoadingQueue_loadingQueue;

  return v3;
}

uint64_t __56__PUBadgeTileViewController__adjustmentDataLoadingQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.photos.DepthEnabledLoadingQueue", 0);
  v1 = _adjustmentDataLoadingQueue_loadingQueue;
  _adjustmentDataLoadingQueue_loadingQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)_configureBadgeView:(id)a3 withBadgeInfo:(PXAssetBadgeInfo *)a4 isOverContent:(BOOL)a5 contentWidth:(double)a6 animated:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v12 = *&a4->count;
  v16 = *&a4->badges;
  v17 = v12;
  v14[2] = __99__PUBadgeTileViewController__configureBadgeView_withBadgeInfo_isOverContent_contentWidth_animated___block_invoke;
  v14[3] = &unk_1E7B75A30;
  v15 = v11;
  v19 = a5;
  v18 = a6;
  v13 = v11;
  [v13 performChanges:v14 animated:v7];
}

uint64_t __99__PUBadgeTileViewController__configureBadgeView_withBadgeInfo_isOverContent_contentWidth_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  [v2 setBadgeInfo:v5];
  [*(a1 + 32) setStyle:3];
  [*(a1 + 32) setOverContent:*(a1 + 80)];
  return [*(a1 + 32) setContentWidth:*(a1 + 72)];
}

+ (CGSize)leadingBadgesSizeForAssetViewModel:(id)a3 contentWidth:(double)a4
{
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 badgeInfoPromise];
  v6 = v5;
  if (v5)
  {
    [v5 badgeInfo];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = v13;
  v10 = v14;
  [MEMORY[0x1E69C44B8] topLeftPrimaryBadgeInfoForBadgeInfo:&v9];
  v9 = v11;
  v10 = v12;
  [MEMORY[0x1E69C3BE0] sizeForBadgeInfo:&v9 contentWidth:a4];
  result.height = v8;
  result.width = v7;
  return result;
}

+ (CGSize)badgeTileSizeForAssetViewModel:(id)a3 contentWidth:(double)a4
{
  v10 = 0u;
  v11 = 0u;
  v5 = [a3 badgeInfoPromise];
  v6 = v5;
  if (v5)
  {
    [v5 badgeInfo];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v9[0] = v10;
  v9[1] = v11;
  [MEMORY[0x1E69C3BE0] sizeForBadgeInfo:v9 contentWidth:a4];
  result.height = v8;
  result.width = v7;
  return result;
}

+ (void)_logEffectNameApplied:(id)a3 toAsset:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PUBadgeTileViewController.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.CPAnalytics.oneUpLivePhoto%@EffectSuggestionApplied", v7];
  v10 = MEMORY[0x1E6991F28];
  v13 = *MEMORY[0x1E6991E18];
  v14[0] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v10 sendEvent:v9 withPayload:v11];
}

+ (void)logToggledDepthEffect:(BOOL)a3 onAsset:(id)a4
{
  v4 = a3;
  v7 = a4;
  v5 = objc_opt_class();
  if (v4)
  {
    v6 = @"DepthOn";
  }

  else
  {
    v6 = @"DepthOff";
  }

  [v5 _logEffectNameApplied:v6 toAsset:v7];
}

+ (void)logAppliedLivePhotoEffect:(int64_t)a3 toAsset:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = PXAssetVariationTypeDescription();
  [v5 _logEffectNameApplied:v6 toAsset:v4];
}

@end