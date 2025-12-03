@interface PUBadgeTileViewController
+ (CGSize)badgeTileSizeForAssetViewModel:(id)model contentWidth:(double)width;
+ (CGSize)leadingBadgesSizeForAssetViewModel:(id)model contentWidth:(double)width;
+ (id)_adjustmentDataLoadingQueue;
+ (void)_configureBadgeView:(id)view withBadgeInfo:(PXAssetBadgeInfo *)info isOverContent:(BOOL)content contentWidth:(double)width animated:(BOOL)animated;
+ (void)_logEffectNameApplied:(id)applied toAsset:(id)asset;
+ (void)logAppliedLivePhotoEffect:(int64_t)effect toAsset:(id)asset;
+ (void)logToggledDepthEffect:(BOOL)effect onAsset:(id)asset;
- (BOOL)_needsUpdate;
- (BOOL)isBadgeVisible;
- (PUBadgeTileViewControllerDelegate)delegate;
- (PXAssetBadgeInfo)_badgeInfo;
- (UIView)livePhotoBadgeContainerView;
- (id)_depthMenuElementsForDepthEnabled:(BOOL)enabled depthControllerExists:(BOOL)exists;
- (id)_depthToggleActionForEnable:(BOOL)enable handler:(id)handler;
- (id)_depthToggleMenuForBadges:(unint64_t)badges;
- (id)_disabledDepthMenuElementsDepthEnabled:(BOOL)enabled;
- (id)_liveVariationsMenuForBadges:(unint64_t)badges;
- (id)_menuForBadges:(unint64_t)badges;
- (id)loadView;
- (id)undoManagerForActionPerformer:(id)performer;
- (void)_invalidateBadgeInfo;
- (void)_invalidateBadgeProvider;
- (void)_invalidateBadgeView;
- (void)_performEditsIfAllowedOnAsset:(id)asset edits:(id)edits;
- (void)_setBadgeInfo:(PXAssetBadgeInfo *)info;
- (void)_setContentWidth:(double)width;
- (void)_setOverContent:(BOOL)content;
- (void)_toggleDepthForAsset:(id)asset enable:(BOOL)enable undoManager:(id)manager;
- (void)_updateBadgeInfoIfNeeded;
- (void)_updateBadgeProviderIfNeeded;
- (void)_updateBadgeViewIfNeeded;
- (void)_updateIfNeeded;
- (void)applyLayoutInfo:(id)info;
- (void)applyLivePhotoEffect:(int64_t)effect toAsset:(id)asset undoManager:(id)manager;
- (void)assetBadgeView:(id)view dismissAnyPresentedViewControllerWithCompletion:(id)completion;
- (void)becomeReusable;
- (void)didChangeActive;
- (void)disableLivePhotoForAsset:(id)asset undoManager:(id)manager;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareForReuse;
- (void)setAssetViewModel:(id)model;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (change == 1 && PUBadgeInfoProviderObservationContext == context)
  {
    [(PUBadgeTileViewController *)self _invalidateBadgeView];
  }

  [(PUBadgeTileViewController *)self _updateIfNeeded];
}

- (void)viewModel:(id)model didChange:(id)change
{
  if ([change badgeInfoChanged])
  {
    [(PUBadgeTileViewController *)self _invalidateBadgeInfo];
  }

  [(PUBadgeTileViewController *)self _updateIfNeeded];
}

- (id)undoManagerForActionPerformer:(id)performer
{
  _badgeView = [(PUBadgeTileViewController *)self _badgeView];
  undoManager = [_badgeView undoManager];

  return undoManager;
}

- (void)assetBadgeView:(id)view dismissAnyPresentedViewControllerWithCompletion:(id)completion
{
  if (self->_delegateRespondsTo.userDidTapBadgeView)
  {
    completionCopy = completion;
    delegate = [(PUBadgeTileViewController *)self delegate];
    [delegate dismissPresentedViewController:self presentMenuWithCompletion:completionCopy];
  }
}

- (id)_depthToggleActionForEnable:(BOOL)enable handler:(id)handler
{
  handlerCopy = handler;
  v6 = PLServicesLivePortraitLocalizedFrameworkString();
  if (enable)
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
  v13 = handlerCopy;
  v9 = handlerCopy;
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

- (id)_disabledDepthMenuElementsDepthEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = [(PUBadgeTileViewController *)self _depthToggleActionForEnable:1 handler:0];
  v6 = [(PUBadgeTileViewController *)self _depthToggleActionForEnable:0 handler:0];
  [v5 setAttributes:1];
  [v6 setAttributes:1];
  if (enabledCopy)
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

- (id)_depthMenuElementsForDepthEnabled:(BOOL)enabled depthControllerExists:(BOOL)exists
{
  enabledCopy = enabled;
  v32[2] = *MEMORY[0x1E69E9840];
  if (self->_delegateRespondsTo.undoManager)
  {
    delegate = [(PUBadgeTileViewController *)self delegate];
    v8 = [delegate undoManagerForAssetActionPerformer:0];
  }

  else
  {
    v8 = 0;
  }

  assetViewModel = [(PUBadgeTileViewController *)self assetViewModel];
  asset = [assetViewModel asset];

  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __85__PUBadgeTileViewController__depthMenuElementsForDepthEnabled_depthControllerExists___block_invoke;
  v25[3] = &unk_1E7B75B18;
  v29 = enabledCopy;
  existsCopy = exists;
  objc_copyWeak(&v28, &location);
  v11 = asset;
  v26 = v11;
  v12 = v8;
  v27 = v12;
  v13 = [(PUBadgeTileViewController *)self _depthToggleActionForEnable:1 handler:v25];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __85__PUBadgeTileViewController__depthMenuElementsForDepthEnabled_depthControllerExists___block_invoke_2;
  v19[3] = &unk_1E7B75B18;
  v23 = enabledCopy;
  existsCopy2 = exists;
  objc_copyWeak(&v22, &location);
  v14 = v11;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  v16 = [(PUBadgeTileViewController *)self _depthToggleActionForEnable:0 handler:v19];
  [v13 setState:enabledCopy];
  [v16 setState:!enabledCopy];
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

- (id)_depthToggleMenuForBadges:(unint64_t)badges
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
    v12[1] = badges;
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

- (id)_liveVariationsMenuForBadges:(unint64_t)badges
{
  v68[5] = *MEMORY[0x1E69E9840];
  if (self->_delegateRespondsTo.undoManager)
  {
    delegate = [(PUBadgeTileViewController *)self delegate];
    v6 = [delegate undoManagerForAssetActionPerformer:0];
  }

  else
  {
    v6 = 0;
  }

  assetViewModel = [(PUBadgeTileViewController *)self assetViewModel];
  asset = [assetViewModel asset];

  v46 = PULocalizedString(@"LIVE_PHOTO_BADGE_MENU_ACTION_LIVE");
  v45 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"livephoto"];
  mediaSubtypes = [asset mediaSubtypes];
  if ((mediaSubtypes & 0x10) != 0)
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
  v12 = asset;
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
  if ((mediaSubtypes & 0x10) != 0)
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

  [v44 setState:!(badges & 0x1000000) & (badges >> 6)];
  [v43 setState:(badges >> 7) & 1];
  [v24 setState:(badges >> 8) & 1];
  [v30 setState:(badges >> 9) & 1];
  [v37 setState:(badges >> 24) & 1];
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

- (id)_menuForBadges:(unint64_t)badges
{
  v42[1] = *MEMORY[0x1E69E9840];
  if ((badges & 0x40000002000) != 0)
  {
    asset = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ((badges & 0x2000) != 0)
    {
      v6 = [(PUBadgeTileViewController *)self _liveVariationsMenuForBadges:badges];
      [asset addObject:v6];
    }

    if ((badges & 0x40000000000) != 0)
    {
      v7 = [(PUBadgeTileViewController *)self _depthToggleMenuForBadges:badges];
      if (v7)
      {
        [asset addObject:v7];
      }
    }

    if ([asset count])
    {
      v8 = [MEMORY[0x1E69DCC60] menuWithChildren:asset];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_23;
  }

  if ((badges & 0x2000000000) == 0)
  {
    v8 = 0;
    goto LABEL_24;
  }

  assetViewModel = [(PUBadgeTileViewController *)self assetViewModel];
  asset = [assetViewModel asset];

  if (asset)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_15;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = objc_opt_class();
    v30 = NSStringFromClass(v31);
    px_descriptionForAssertionMessage = [asset px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBadgeTileViewController.m" lineNumber:423 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetViewModel.asset", v30, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBadgeTileViewController.m" lineNumber:423 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetViewModel.asset", v30}];
  }

LABEL_15:
  v11 = [MEMORY[0x1E69C37D8] dataSourceManagerWithAsset:asset];
  v12 = MEMORY[0x1E69C4528];
  dataSource = [v11 dataSource];
  v41[0] = [dataSource identifier];
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
  if ((badges & 0x8000000000) != 0)
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
    v38 = asset;
    v23 = v36;
  }

  else
  {
    if ((badges & 0x4000000000) == 0)
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
    v35 = asset;
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
    _badgeInfoProvider = [(PUBadgeTileViewController *)self _badgeInfoProvider];
    v12 = 0u;
    v13 = 0u;
    [(PUBadgeTileViewController *)self _badgeInfo];
    v10 = 0u;
    v11 = 0u;
    if (_badgeInfoProvider)
    {
      [_badgeInfoProvider outputBadgeInfo];
    }

    outputShouldAnimate = [_badgeInfoProvider outputShouldAnimate];
    _badgeView = [(PUBadgeTileViewController *)self _badgeView];
    v8 = v12;
    v9 = v13;
    if ((PXAssetBadgeInfoIsNull() & 1) == 0)
    {
      if (_badgeView)
      {
        v6 = objc_opt_class();
        v7 = [(PUBadgeTileViewController *)self _isOverContent:v8];
        [(PUBadgeTileViewController *)self _contentWidth];
        v8 = v10;
        v9 = v11;
        [v6 _configureBadgeView:_badgeView withBadgeInfo:&v8 isOverContent:v7 contentWidth:outputShouldAnimate animated:?];
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
    _badgeInfoProvider = [(PUBadgeTileViewController *)self _badgeInfoProvider];
    if (!_badgeInfoProvider)
    {
      _badgeInfoProvider = objc_alloc_init(PUBadgeInfoProvider);
      [(PUBadgeInfoProvider *)_badgeInfoProvider registerChangeObserver:self context:PUBadgeInfoProviderObservationContext];
      [(PUBadgeTileViewController *)self set_badgeInfoProvider:_badgeInfoProvider];
    }

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__PUBadgeTileViewController__updateBadgeProviderIfNeeded__block_invoke;
    v4[3] = &unk_1E7B7D880;
    v4[4] = self;
    [(PUBadgeInfoProvider *)_badgeInfoProvider performChanges:v4];
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
    assetViewModel = [(PUBadgeTileViewController *)self assetViewModel];
    badgeInfoPromise = [assetViewModel badgeInfoPromise];
    v5 = badgeInfoPromise;
    if (badgeInfoPromise)
    {
      [badgeInfoPromise badgeInfo];
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUBadgeTileViewController.m" lineNumber:319 description:@"updates still needed after an update cycle"];
      }
    }
  }
}

- (void)_setContentWidth:(double)width
{
  if (self->__contentWidth != width)
  {
    self->__contentWidth = width;
    [(PUBadgeTileViewController *)self _invalidateBadgeView];
  }
}

- (void)_setOverContent:(BOOL)content
{
  if (self->__isOverContent != content)
  {
    self->__isOverContent = content;
    [(PUBadgeTileViewController *)self _invalidateBadgeView];
  }
}

- (void)_setBadgeInfo:(PXAssetBadgeInfo *)info
{
  p_badgeInfo = &self->__badgeInfo;
  v8 = *info;
  badgeInfo = self->__badgeInfo;
  if ((PXAssetBadgeInfoEqualToBadgeInfo() & 1) == 0)
  {
    v6 = *&info->count;
    *&p_badgeInfo->badges = *&info->badges;
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
  _badgeView = [(PUBadgeTileViewController *)self _badgeView];
  [_badgeView prepareForReuse];

  _badgeInfoProvider = [(PUBadgeTileViewController *)self _badgeInfoProvider];
  [_badgeInfoProvider performChanges:&__block_literal_global_263];
}

- (void)applyLayoutInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = PUBadgeTileViewController;
  [(PUTileViewController *)&v8 applyLayoutInfo:infoCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = infoCopy;
    -[PUBadgeTileViewController _setOverContent:](self, "_setOverContent:", [v5 isOverContent]);
    [v5 contentWidth];
    v7 = v6;

    [(PUBadgeTileViewController *)self _setContentWidth:v7];
  }

  [(PUBadgeTileViewController *)self _updateIfNeeded];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, model);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    [(PUBadgeTileViewController *)self _invalidateBadgeInfo];
    [(PUBadgeTileViewController *)self _invalidateBadgeProvider];
    [(PUBadgeTileViewController *)self _invalidateBadgeView];
    assetViewModel = [(PUBadgeTileViewController *)self _updateIfNeeded];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](assetViewModel, modelCopy);
}

- (UIView)livePhotoBadgeContainerView
{
  v24 = *MEMORY[0x1E69E9840];
  view = [(PUTileViewController *)self view];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  view2 = [(PUTileViewController *)self view];
  subviews = [view2 subviews];

  v6 = [subviews countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v15 = view;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          view = v10;
          v17 = 0u;
          v18 = 0u;
          [(PUBadgeTileViewController *)self _badgeInfo];
          text = [view text];
          v16[0] = v17;
          v16[1] = v18;
          v12 = [MEMORY[0x1E69C44B8] textForBadgeInfo:v16 style:3];
          v13 = [text isEqualToString:v12];

          if (v13)
          {

            goto LABEL_13;
          }
        }
      }

      v7 = [subviews countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    view = v15;
  }

LABEL_13:

  return view;
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
    delegate = [(PUBadgeTileViewController *)self delegate];
    [delegate badgeVisibilityDidChange:self];
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

- (void)_performEditsIfAllowedOnAsset:(id)asset edits:(id)edits
{
  assetCopy = asset;
  editsCopy = edits;
  v8 = assetCopy;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  isSpatialMedia = [v9 isSpatialMedia];
  if (isSpatialMedia)
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
    v17 = editsCopy;
    v24 = v17;
    v18 = [v15 actionWithTitle:v16 style:0 handler:v23];
    [v14 addAction:v18];

    v19 = MEMORY[0x1E69DC648];
    v20 = PELocalizedString();
    v21 = [v19 actionWithTitle:v20 style:1 handler:&__block_literal_global_13238];
    [v14 addAction:v21];

    if (self->_delegateRespondsTo.presentViewController)
    {
      delegate = [(PUBadgeTileViewController *)self delegate];
      [delegate badgeTileViewController:self presentViewController:v14];
    }

    else
    {
      v17[2](v17);
    }
  }

  else
  {
    editsCopy[2](editsCopy);
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

- (void)_toggleDepthForAsset:(id)asset enable:(BOOL)enable undoManager:(id)manager
{
  assetCopy = asset;
  managerCopy = manager;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBadgeTileViewController.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PUBadgeTileViewController__toggleDepthForAsset_enable_undoManager___block_invoke;
  v14[3] = &unk_1E7B805E8;
  enableCopy = enable;
  v15 = assetCopy;
  v16 = managerCopy;
  v11 = managerCopy;
  v12 = assetCopy;
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

- (void)disableLivePhotoForAsset:(id)asset undoManager:(id)manager
{
  v15 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  managerCopy = manager;
  if ([assetCopy canPlayPhotoIris])
  {
    v7 = *MEMORY[0x1E69C3FD0];
    mEMORY[0x1E69C3360] = [MEMORY[0x1E69C3360] sharedManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__PUBadgeTileViewController_disableLivePhotoForAsset_undoManager___block_invoke;
    v11[3] = &unk_1E7B80280;
    v12 = assetCopy;
    v9 = [mEMORY[0x1E69C3360] performEditOperationWithType:v7 asset:v12 undoManager:managerCopy completionHandler:v11];

    v10 = v12;
  }

  else
  {
    v10 = PLOneUpGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = assetCopy;
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

- (void)applyLivePhotoEffect:(int64_t)effect toAsset:(id)asset undoManager:(id)manager
{
  v26 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  managerCopy = manager;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBadgeTileViewController.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if ([assetCopy canPlayPhotoIris] && (v11 = PFMetadataPlaybackVariationFromPXAssetVariation(), v11 == objc_msgSend(assetCopy, "playbackVariation")))
  {
    v12 = PLOneUpGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PXAssetVariationTypeDescription();
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = assetCopy;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "User selected variation %@ for asset %@, but it is already applied. No-op.", buf, 0x16u);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__PUBadgeTileViewController_applyLivePhotoEffect_toAsset_undoManager___block_invoke;
    aBlock[3] = &unk_1E7B7F350;
    effectCopy = effect;
    v14 = assetCopy;
    v19 = v14;
    v20 = managerCopy;
    v15 = _Block_copy(aBlock);
    v16 = v15;
    if (effect)
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

+ (void)_configureBadgeView:(id)view withBadgeInfo:(PXAssetBadgeInfo *)info isOverContent:(BOOL)content contentWidth:(double)width animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v12 = *&info->count;
  v16 = *&info->badges;
  v17 = v12;
  v14[2] = __99__PUBadgeTileViewController__configureBadgeView_withBadgeInfo_isOverContent_contentWidth_animated___block_invoke;
  v14[3] = &unk_1E7B75A30;
  v15 = viewCopy;
  contentCopy = content;
  widthCopy = width;
  v13 = viewCopy;
  [v13 performChanges:v14 animated:animatedCopy];
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

+ (CGSize)leadingBadgesSizeForAssetViewModel:(id)model contentWidth:(double)width
{
  v13 = 0u;
  v14 = 0u;
  badgeInfoPromise = [model badgeInfoPromise];
  v6 = badgeInfoPromise;
  if (badgeInfoPromise)
  {
    [badgeInfoPromise badgeInfo];
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
  [MEMORY[0x1E69C3BE0] sizeForBadgeInfo:&v9 contentWidth:width];
  result.height = v8;
  result.width = v7;
  return result;
}

+ (CGSize)badgeTileSizeForAssetViewModel:(id)model contentWidth:(double)width
{
  v10 = 0u;
  v11 = 0u;
  badgeInfoPromise = [model badgeInfoPromise];
  v6 = badgeInfoPromise;
  if (badgeInfoPromise)
  {
    [badgeInfoPromise badgeInfo];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v9[0] = v10;
  v9[1] = v11;
  [MEMORY[0x1E69C3BE0] sizeForBadgeInfo:v9 contentWidth:width];
  result.height = v8;
  result.width = v7;
  return result;
}

+ (void)_logEffectNameApplied:(id)applied toAsset:(id)asset
{
  v14[1] = *MEMORY[0x1E69E9840];
  appliedCopy = applied;
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBadgeTileViewController.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  appliedCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.CPAnalytics.oneUpLivePhoto%@EffectSuggestionApplied", appliedCopy];
  v10 = MEMORY[0x1E6991F28];
  v13 = *MEMORY[0x1E6991E18];
  v14[0] = assetCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v10 sendEvent:appliedCopy withPayload:v11];
}

+ (void)logToggledDepthEffect:(BOOL)effect onAsset:(id)asset
{
  effectCopy = effect;
  assetCopy = asset;
  v5 = objc_opt_class();
  if (effectCopy)
  {
    v6 = @"DepthOn";
  }

  else
  {
    v6 = @"DepthOff";
  }

  [v5 _logEffectNameApplied:v6 toAsset:assetCopy];
}

+ (void)logAppliedLivePhotoEffect:(int64_t)effect toAsset:(id)asset
{
  assetCopy = asset;
  v5 = objc_opt_class();
  v6 = PXAssetVariationTypeDescription();
  [v5 _logEffectNameApplied:v6 toAsset:assetCopy];
}

@end