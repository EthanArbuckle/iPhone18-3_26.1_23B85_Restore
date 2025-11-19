@interface SBAppSwitcherReusableSnapshotView
- (BOOL)_doNonUniformScalingForApplication:(id)a3;
- (BOOL)_isAnimatingTransitionForRole:(int64_t)a3;
- (BOOL)_isSnapshotSuspendSnapshot:(id)a3;
- (BOOL)contentRequiresGroupOpacity;
- (CGRect)_frameForBackstopLayer;
- (CGRect)_frameInLayoutSpaceForRole:(int64_t)a3 inAppLayout:(id)a4 inOrientation:(int64_t)a5;
- (CGRect)_snapshotImageFrameForCacheEntry:(id)a3;
- (NSString)description;
- (SBAppSwitcherReusableSnapshotView)initWithDelegate:(id)a3 snapshotCache:(id)a4 lockoutVCProvider:(id)a5 appClipOverlayCoordinator:(id)a6 containerViewController:(id)a7;
- (id)_applicationForRole:(int64_t)a3;
- (id)_cacheEntryForRole:(int64_t)a3;
- (id)_imageViewForRole:(int64_t)a3;
- (id)_orientationWrapperForRole:(int64_t)a3;
- (id)_sceneHandleForRole:(int64_t)a3;
- (id)_separatorViewBezierPathWithWidth:(double)a3 height:(double)a4;
- (int64_t)_contentModeForApplication:(id)a3;
- (int64_t)_contentOrientationForSnapshotCacheEntry:(id)a3;
- (void)_addAppClipOverlayForRole:(int64_t)a3 bundleIdentifier:(id)a4 sceneIdentifier:(id)a5;
- (void)_addAppLockoutOverlayIfNecessaryForRole:(int64_t)a3;
- (void)_addAppProtectionShieldIfNeededForRole:(int64_t)a3;
- (void)_addOrRemoveAppProtectionShieldForApplication:(id)a3 role:(int64_t)a4;
- (void)_addOverlayViewController:(id)a3 toOrientationWrapperForRole:(int64_t)a4;
- (void)_configureSnapshotImageView:(id)a3 cacheEntry:(id)a4;
- (void)_handleInstalledAppsChanged:(id)a3;
- (void)_performDeferredSnapshotUpdatesIfNecessaryForRole:(int64_t)a3;
- (void)_removeAppClipOverlayForRole:(int64_t)a3;
- (void)_removeAppLockoutOverlayForRole:(int64_t)a3;
- (void)_removeAppProtectionShieldForRole:(int64_t)a3;
- (void)_requestFreshImages;
- (void)_setAnimatingTransition:(BOOL)a3 forRole:(int64_t)a4;
- (void)_setCacheEntry:(id)a3 forRole:(int64_t)a4;
- (void)_setSceneHandle:(id)a3 forRole:(int64_t)a4;
- (void)_setupOrientationWrapperAndImageViewForRole:(id)a3;
- (void)_updateContentOrientationForRole:(int64_t)a3;
- (void)_updateCornerRadius;
- (void)_updateCornerRadiusIfNecessaryForOverlayView:(id)a3 matchingSnapshotImage:(id)a4;
- (void)_updateCornerRadiusIfNecessaryForSnapshotImageView:(id)a3 cacheEntry:(id)a4;
- (void)_updateDivider;
- (void)_updateSceneHandleForRole:(int64_t)a3;
- (void)_updateToNewSnapshotImageUsingCacheEntry:(id)a3;
- (void)_updateTranslucency;
- (void)_windowManagementStyleDidChange:(id)a3;
- (void)appProtectionAssistantShouldShieldDidChange:(id)a3;
- (void)dealloc;
- (void)didUpdateCacheEntry:(id)a3;
- (void)invalidate;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setActive:(BOOL)a3;
- (void)setAppLayout:(id)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setShouldStretchToBounds:(BOOL)a3;
- (void)setShouldUseBrightMaterial:(BOOL)a3;
- (void)setShowingIconOverlayView:(BOOL)a3;
- (void)setUsesNonuniformScaling:(BOOL)a3;
- (void)setVisible:(BOOL)a3;
- (void)setWallpaperStyle:(int64_t)a3;
@end

@implementation SBAppSwitcherReusableSnapshotView

- (void)_updateTranslucency
{
  v3 = [(SBAppSwitcherReusableSnapshotView *)self _imageViewForRole:1];
  v4 = [v3 image];

  v5 = [(SBAppSwitcherReusableSnapshotView *)self _cacheEntryForRole:2];
  if (v5)
  {
    v6 = [(SBAppSwitcherReusableSnapshotView *)self _imageViewForRole:2];
    v7 = [v6 image];
    v31 = v7 == 0;
  }

  else
  {
    v31 = 0;
  }

  v8 = [(SBAppSwitcherReusableSnapshotView *)self _cacheEntryForRole:4];
  if (v8)
  {
    v9 = [(SBAppSwitcherReusableSnapshotView *)self _imageViewForRole:4];
    v10 = [v9 image];
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SBAppSwitcherSettings *)self->_settings shouldSimplifyForOptions:128];
  v13 = [(SBAppSwitcherReusableSnapshotView *)self _cacheEntryForRole:1];
  if (!v13 || (v14 = v13, -[SBAppSwitcherReusableSnapshotView _cacheEntryForRole:](self, "_cacheEntryForRole:", 1), v15 = objc_claimAutoreleasedReturnValue(), [v15 snapshot], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "backgroundStyle"), v16, v15, v14, !v17))
  {
    v17 = [(SBAppSwitcherReusableSnapshotView *)self _cacheEntryForRole:2];

    if (v17)
    {
      v18 = [(SBAppSwitcherReusableSnapshotView *)self _cacheEntryForRole:2];
      v19 = [v18 snapshot];
      v17 = [v19 backgroundStyle];
    }
  }

  v20 = [(SBAppSwitcherReusableSnapshotView *)self _applicationForRole:1];
  v21 = [v20 isClassic];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  imageViewByRole = self->_imageViewByRole;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __56__SBAppSwitcherReusableSnapshotView__updateTranslucency__block_invoke;
  v34[3] = &unk_2783C3010;
  v34[4] = &v35;
  [(NSMutableDictionary *)imageViewByRole enumerateKeysAndObjectsUsingBlock:v34];
  v23 = (v4 == 0 || v31 || v11 || v17 == 0) | v12;
  if ((v4 == 0) | v12 & 1)
  {
    if ([v20 classicAppPhoneAppRunningOnPad])
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBackgroundColor];
    }
    v24 = ;
    goto LABEL_33;
  }

  if (!((v4 == 0 || v31 || v11 || v17 == 0) | v12 & 1 | v21 & 1) && *(v36 + 24) != 1 || (v21 & 1) == 0 && ((*(v36 + 24) | (v31 || v11)) & 1) == 0)
  {
LABEL_36:
    [(UIView *)self->_solidColorBackstopView setHidden:1];
    v24 = 0;
    if (v23)
    {
      goto LABEL_35;
    }

LABEL_37:
    v28 = _WallpaperStyleForBackgroundStyle();
    goto LABEL_38;
  }

  v24 = [MEMORY[0x277D75348] blackColor];
  v25 = __sb__runningInSpringBoard();
  v26 = v25;
  if (v25)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v12 = [MEMORY[0x277D75418] currentDevice];
    if ([v12 userInterfaceIdiom])
    {
LABEL_32:

      goto LABEL_33;
    }
  }

  v27 = SBFEffectiveHomeButtonType();
  if ((v26 & 1) == 0)
  {
  }

  if (v27 == 2)
  {
    if (self->_shouldUseBrightMaterial)
    {
      [MEMORY[0x277D75348] systemMidGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }

    v24 = v12 = v24;
    goto LABEL_32;
  }

LABEL_33:
  if (!v24)
  {
    goto LABEL_36;
  }

  [(UIView *)self->_solidColorBackstopView setHidden:0];
  [(UIView *)self->_solidColorBackstopView setBackgroundColor:v24];
  if ((v23 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_35:
  v28 = 1;
LABEL_38:
  [(SBAppSwitcherReusableSnapshotView *)self setWallpaperStyle:v28];
  v29 = [(SBAppSwitcherReusableSnapshotView *)self contentRequiresGroupOpacity];
  v30 = self->_imageViewByRole;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __56__SBAppSwitcherReusableSnapshotView__updateTranslucency__block_invoke_2;
  v32[3] = &__block_descriptor_33_e54_v32__0__NSNumber_8__SBSwitcherSnapshotImageView_16_B24l;
  v33 = v29;
  [(NSMutableDictionary *)v30 enumerateKeysAndObjectsUsingBlock:v32];

  _Block_object_dispose(&v35, 8);
}

- (BOOL)contentRequiresGroupOpacity
{
  if ([(SBSwitcherWallpaperPageContentView *)self wallpaperStyle]== 1)
  {
    return ![(UIView *)self->_solidColorBackstopView isHidden];
  }

  else
  {
    return 1;
  }
}

uint64_t __56__SBAppSwitcherReusableSnapshotView__updateTranslucency__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 contentMode];
  *(*(*(a1 + 32) + 8) + 24) |= result == 1;
  return result;
}

- (void)_requestFreshImages
{
  objc_initWeak(&location, self);
  v3 = self->_appLayout;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SBAppSwitcherReusableSnapshotView__requestFreshImages__block_invoke;
  v5[3] = &unk_2783C2F98;
  objc_copyWeak(&v7, &location);
  v5[4] = self;
  v4 = v3;
  v6 = v4;
  [(SBAppLayout *)v4 enumerate:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __56__SBAppSwitcherReusableSnapshotView__requestFreshImages__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ((SBLayoutRoleIsValidForSplitView(a2) & 1) != 0 || a2 == 4)
  {
    v6 = objc_loadWeakRetained((*(a1 + 32) + 544));
    [v6 addSnapshotUpdateObserver:WeakRetained forDisplayItem:v7 inAppLayout:*(a1 + 40)];
  }
}

- (void)_updateCornerRadius
{
  v8.receiver = self;
  v8.super_class = SBAppSwitcherReusableSnapshotView;
  [(SBSwitcherWallpaperPageContentView *)&v8 _updateCornerRadius];
  [(SBSwitcherWallpaperPageContentView *)self cornerRadius];
  [(SBAppSwitcherReusableSnapshotView *)self _setContinuousCornerRadius:?];
  v3 = [(SBAppSwitcherReusableSnapshotView *)self layer];
  [v3 setMaskedCorners:{-[SBSwitcherWallpaperPageContentView maskedCorners](self, "maskedCorners")}];

  v4 = [(UIView *)self->_solidColorBackstopView layer];
  [(SBSwitcherWallpaperPageContentView *)self cornerRadius];
  [v4 setCornerRadius:?];

  v5 = [(UIView *)self->_solidColorBackstopView layer];
  [v5 setMaskedCorners:{-[SBSwitcherWallpaperPageContentView maskedCorners](self, "maskedCorners")}];

  imageViewByRole = self->_imageViewByRole;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SBAppSwitcherReusableSnapshotView__updateCornerRadius__block_invoke;
  v7[3] = &unk_2783C2F28;
  v7[4] = self;
  [(NSMutableDictionary *)imageViewByRole enumerateKeysAndObjectsUsingBlock:v7];
}

void __56__SBAppSwitcherReusableSnapshotView__updateCornerRadius__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = *(*(a1 + 32) + 512);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v9 = [v7 objectForKeyedSubscript:v8];
  v20 = [v9 view];

  v10 = *(a1 + 32);
  v11 = [v10 _cacheEntryForRole:v6];
  [v10 _updateCornerRadiusIfNecessaryForSnapshotImageView:v5 cacheEntry:v11];

  [*(a1 + 32) _updateCornerRadiusIfNecessaryForOverlayView:v20 matchingSnapshotImage:v5];
  v12 = *(*(a1 + 32) + 568);
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = [v14 view];

  [*(a1 + 32) _updateCornerRadiusIfNecessaryForOverlayView:v15 matchingSnapshotImage:v5];
  v16 = *(*(a1 + 32) + 520);
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v18 = [v16 objectForKeyedSubscript:v17];
  v19 = [v18 view];

  [*(a1 + 32) _updateCornerRadiusIfNecessaryForOverlayView:v19 matchingSnapshotImage:v5];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SBAppSwitcherReusableSnapshotView;
  [(SBSwitcherWallpaperPageContentView *)&v6 layoutSubviews];
  solidColorBackstopView = self->_solidColorBackstopView;
  [(SBAppSwitcherReusableSnapshotView *)self _frameForBackstopLayer];
  [(UIView *)solidColorBackstopView setFrame:?];
  snapshotViewStateByRole = self->_snapshotViewStateByRole;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SBAppSwitcherReusableSnapshotView_layoutSubviews__block_invoke;
  v5[3] = &unk_2783C2E00;
  v5[4] = self;
  [(NSMutableDictionary *)snapshotViewStateByRole enumerateKeysAndObjectsUsingBlock:v5];
  [(SBAppSwitcherReusableSnapshotView *)self _updateDivider];
}

- (CGRect)_frameForBackstopLayer
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];

  [(SBAppSwitcherReusableSnapshotView *)self bounds];

  UIRectInset();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

void __51__SBAppSwitcherReusableSnapshotView_layoutSubviews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5[3];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v35 integerValue];
  [*(a1 + 32) _snapshotImageFrameForCacheEntry:v8];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [OUTLINED_FUNCTION_1_37(*(a1 + 32)) objectForKey:?];
  [v18 setFrame:{v11, v13, v15, v17}];
  if (v6)
  {
    v19 = v6[2];
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  if ([v20 _supportsMixedOrientation])
  {
    v21 = [v8 snapshot];
    v22 = [v21 interfaceOrientation];
    v23 = [*(a1 + 32) orientation];

    if (v22 != v23)
    {
      [*(a1 + 32) center];
      [v18 setCenter:?];
    }
  }

  v24 = [OUTLINED_FUNCTION_1_37(*(a1 + 32)) objectForKey:?];
  v25 = v24;
  if (v9 != 1)
  {
    [v24 setHidden:v8 == 0];
  }

  v26 = [v20 application];
  if ([*(a1 + 32) _doNonUniformScalingForApplication:v26])
  {
    [v25 setStretchToFillBounds:1];
    [v25 setUsesNonuniformScaling:1];
  }

  [*(a1 + 32) _updateCornerRadiusIfNecessaryForSnapshotImageView:v25 cacheEntry:{v8, v20}];
  v27 = [OUTLINED_FUNCTION_1_37(*(a1 + 32)) objectForKeyedSubscript:?];
  v28 = [v27 view];

  [*(a1 + 32) _updateCornerRadiusIfNecessaryForOverlayView:v28 matchingSnapshotImage:v25];
  v29 = [OUTLINED_FUNCTION_1_37(*(a1 + 32)) objectForKeyedSubscript:?];
  v30 = [v29 view];

  if (v30)
  {
    [v18 bringContentSubviewToFront:v30];
    [*(a1 + 32) _updateCornerRadiusIfNecessaryForOverlayView:v30 matchingSnapshotImage:v25];
  }

  v31 = [OUTLINED_FUNCTION_1_37(*(a1 + 32)) objectForKeyedSubscript:?];
  [v31 view];
  v33 = v32 = v18;

  [*(a1 + 32) _updateCornerRadiusIfNecessaryForOverlayView:v33 matchingSnapshotImage:v25];
}

- (void)_updateDivider
{
  v36 = [(SBAppSwitcherReusableSnapshotView *)self appLayout];
  v3 = [v36 itemForLayoutRole:2];

  [(CAShapeLayer *)self->_medusaDividerLayer setHidden:v3 == 0];
  if (v3)
  {
    [(SBAppSwitcherReusableSnapshotView *)self _frameInLayoutSpaceForRole:1 inAppLayout:v36 inOrientation:[(SBSwitcherWallpaperPageContentView *)self orientation]];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(SBAppSwitcherReusableSnapshotView *)self _frameInLayoutSpaceForRole:2 inAppLayout:v36 inOrientation:[(SBSwitcherWallpaperPageContentView *)self orientation]];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = MEMORY[0x277D76620];
    v21 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    if (v21 == 1)
    {
      v22 = v13;
    }

    else
    {
      v22 = v5;
    }

    if (v21 == 1)
    {
      v23 = v15;
    }

    else
    {
      v23 = v7;
    }

    if (v21 == 1)
    {
      v24 = v17;
    }

    else
    {
      v24 = v9;
    }

    if (v21 == 1)
    {
      v25 = v19;
    }

    else
    {
      v25 = v11;
    }

    MaxX = CGRectGetMaxX(*&v22);
    if ([*v20 userInterfaceLayoutDirection] == 1)
    {
      v26 = v5;
      v27 = v7;
      v28 = v9;
      v29 = v11;
    }

    else
    {
      v26 = v13;
      v27 = v15;
      v28 = v17;
      v29 = v19;
    }

    MinX = CGRectGetMinX(*&v26);
    v38.origin.x = v5;
    v38.origin.y = v7;
    v38.size.width = v9;
    v38.size.height = v11;
    Height = CGRectGetHeight(v38);
    v39.origin.x = v5;
    v39.origin.y = v7;
    v39.size.width = v9;
    v39.size.height = v11;
    MinY = CGRectGetMinY(v39);
    v33 = [(SBAppSwitcherReusableSnapshotView *)self _separatorViewBezierPathWithWidth:MinX - MaxX height:Height];
    -[CAShapeLayer setPath:](self->_medusaDividerLayer, "setPath:", [v33 CGPath]);
    medusaDividerLayer = self->_medusaDividerLayer;
    [v33 bounds];
    [(CAShapeLayer *)medusaDividerLayer setBounds:?];
    [(CAShapeLayer *)self->_medusaDividerLayer setPosition:(MaxX + MinX) * 0.5, MinY + Height * 0.5];
  }
}

- (SBAppSwitcherReusableSnapshotView)initWithDelegate:(id)a3 snapshotCache:(id)a4 lockoutVCProvider:(id)a5 appClipOverlayCoordinator:(id)a6 containerViewController:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v14)
  {
    [SBAppSwitcherReusableSnapshotView initWithDelegate:a2 snapshotCache:self lockoutVCProvider:? appClipOverlayCoordinator:? containerViewController:?];
  }

  v52.receiver = self;
  v52.super_class = SBAppSwitcherReusableSnapshotView;
  v18 = [(SBAppSwitcherReusableSnapshotView *)&v52 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, v13);
    objc_storeWeak(&v19->_snapshotCache, v14);
    objc_storeStrong(&v19->_lockoutVCProvider, a5);
    objc_storeStrong(&v19->_appClipOverlayCoordinator, a6);
    objc_storeWeak(&v19->_containerViewController, v17);
    v20 = [v17 _sbWindowScene];
    v21 = [v20 switcherController];
    v22 = [v21 windowManagementContext];

    v23 = +[SBAppSwitcherDomain rootSettings];
    settings = v19->_settings;
    v19->_settings = v23;

    v25 = +[SBMedusaDomain rootSettings];
    medusaSettings = v19->_medusaSettings;
    v19->_medusaSettings = v25;

    v27 = [MEMORY[0x277CBEB18] array];
    deferredSnapshotCrossfadeQueue = v19->_deferredSnapshotCrossfadeQueue;
    v19->_deferredSnapshotCrossfadeQueue = v27;

    v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    snapshotViewStateByRole = v19->_snapshotViewStateByRole;
    v19->_snapshotViewStateByRole = v29;

    v31 = objc_alloc_init(MEMORY[0x277D75D18]);
    solidColorBackstopView = v19->_solidColorBackstopView;
    v19->_solidColorBackstopView = v31;

    v33 = [(UIView *)v19->_solidColorBackstopView layer];
    [v33 setCornerCurve:*MEMORY[0x277CDA138]];

    [(SBAppSwitcherReusableSnapshotView *)v19 insertSubview:v19->_solidColorBackstopView atIndex:0];
    v34 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    imageViewByRole = v19->_imageViewByRole;
    v19->_imageViewByRole = v34;

    v36 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    orientationWrapperByRole = v19->_orientationWrapperByRole;
    v19->_orientationWrapperByRole = v36;

    v38 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [(SBAppSwitcherReusableSnapshotView *)v19 _setupOrientationWrapperAndImageViewForRole:v38];

    if ([(SBSwitcherWindowManagementContext *)v22 baseStyle])
    {
      v39 = [MEMORY[0x277CCABB0] numberWithInteger:2];
      [(SBAppSwitcherReusableSnapshotView *)v19 _setupOrientationWrapperAndImageViewForRole:v39];

      v40 = [MEMORY[0x277CD9F90] layer];
      medusaDividerLayer = v19->_medusaDividerLayer;
      v19->_medusaDividerLayer = v40;

      v42 = v19->_medusaDividerLayer;
      v43 = [MEMORY[0x277D75348] blackColor];
      -[CAShapeLayer setFillColor:](v42, "setFillColor:", [v43 CGColor]);

      [(CAShapeLayer *)v19->_medusaDividerLayer setHidden:1];
      v44 = [(SBAppSwitcherReusableSnapshotView *)v19 layer];
      [v44 addSublayer:v19->_medusaDividerLayer];

      v45 = [MEMORY[0x277CCABB0] numberWithInteger:4];
      [(SBAppSwitcherReusableSnapshotView *)v19 _setupOrientationWrapperAndImageViewForRole:v45];
    }

    v46 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    blockingViewControllerByRole = v19->_blockingViewControllerByRole;
    v19->_blockingViewControllerByRole = v46;

    [(SBAppSwitcherReusableSnapshotView *)v19 setClipsToBounds:0];
    windowManagementContext = v19->_windowManagementContext;
    v19->_windowManagementContext = v22;
    v49 = v22;

    v50 = [MEMORY[0x277CCAB98] defaultCenter];
    [v50 addObserver:v19 selector:sel__windowManagementStyleDidChange_ name:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:0];
  }

  return v19;
}

- (void)_setupOrientationWrapperAndImageViewForRole:(id)a3
{
  v4 = MEMORY[0x277CF0D78];
  v5 = a3;
  v6 = [v4 alloc];
  [(SBAppSwitcherReusableSnapshotView *)self bounds];
  v10 = [v6 initWithFrame:?];
  v7 = [[SBSwitcherSnapshotImageView alloc] initWithImage:0];
  [(SBAppSwitcherReusableSnapshotView *)self addSubview:v10];
  [v10 addContentView:v7];
  [(NSMutableDictionary *)self->_imageViewByRole setObject:v7 forKey:v5];
  [(NSMutableDictionary *)self->_orientationWrapperByRole setObject:v10 forKey:v5];
  snapshotViewStateByRole = self->_snapshotViewStateByRole;
  v9 = objc_alloc_init(SBAppSwitcherSnapshotViewState);
  [(NSMutableDictionary *)snapshotViewStateByRole setObject:v9 forKey:v5];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBAppSwitcherReusableSnapshotView;
  [(SBAppSwitcherReusableSnapshotView *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v5 = [v3 appendObject:v4 withName:@"App Layout"];

  snapshotViewStateByRole = self->_snapshotViewStateByRole;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__SBAppSwitcherReusableSnapshotView_description__block_invoke;
  v11[3] = &unk_2783C2E00;
  v12 = v3;
  v7 = v3;
  [(NSMutableDictionary *)snapshotViewStateByRole enumerateKeysAndObjectsUsingBlock:v11];
  v8 = [v7 appendSuper];
  v9 = [v7 build];

  return v9;
}

- (void)setOrientation:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = SBAppSwitcherReusableSnapshotView;
  v5 = [(SBSwitcherWallpaperPageContentView *)&v8 orientation];
  v7.receiver = self;
  v7.super_class = SBAppSwitcherReusableSnapshotView;
  [(SBSwitcherWallpaperPageContentView *)&v7 setOrientation:a3];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SBAppSwitcherReusableSnapshotView_setOrientation___block_invoke;
  v6[3] = &unk_2783A8C40;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = v5;
  [MEMORY[0x277D75D18] performWithoutAnimation:v6];
}

uint64_t __52__SBAppSwitcherReusableSnapshotView_setOrientation___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 472);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SBAppSwitcherReusableSnapshotView_setOrientation___block_invoke_2;
  v7[3] = &__block_descriptor_40_e62_v32__0__NSNumber_8__BSUIOrientationTransformWrapperView_16_B24l;
  v7[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v3 = *(a1 + 32);
  v4 = *(v3 + 504);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SBAppSwitcherReusableSnapshotView_setOrientation___block_invoke_3;
  v6[3] = &unk_2783C2E00;
  v6[4] = v3;
  result = [v4 enumerateKeysAndObjectsUsingBlock:v6];
  if (*(a1 + 48) != *(a1 + 40))
  {
    [*(a1 + 32) setNeedsLayout];
    return [*(a1 + 32) layoutIfNeeded];
  }

  return result;
}

uint64_t __52__SBAppSwitcherReusableSnapshotView_setOrientation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);

  return [v4 _updateContentOrientationForRole:v3];
}

- (void)setAppLayout:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_appLayout] & 1) == 0)
  {
    if (v6)
    {
      if (self->_appLayout)
      {
        v7 = [v6 allItems];
        v8 = [(SBAppLayout *)self->_appLayout allItems];
        v9 = [v7 isEqualToArray:v8];

        if ((v9 & 1) == 0)
        {
          v10 = [MEMORY[0x277CCA890] currentHandler];
          [v10 handleFailureInMethod:a2 object:self file:@"SBAppSwitcherReusableSnapshotView.m" lineNumber:208 description:@"Does not support setting new appLayout without recycling first (unless both app layouts have the same items)."];
        }
      }
    }

    objc_storeStrong(&self->_appLayout, a3);
    snapshotViewStateByRole = self->_snapshotViewStateByRole;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__SBAppSwitcherReusableSnapshotView_setAppLayout___block_invoke;
    v12[3] = &unk_2783C2E00;
    v12[4] = self;
    [(NSMutableDictionary *)snapshotViewStateByRole enumerateKeysAndObjectsUsingBlock:v12];
    [(SBAppSwitcherReusableSnapshotView *)self _requestFreshImages];
  }
}

void __50__SBAppSwitcherReusableSnapshotView_setAppLayout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = a2;
  v6 = [v5 integerValue];
  [*(a1 + 32) _updateSceneHandleForRole:v6];
  v7 = [*(*(a1 + 32) + 480) objectForKey:v5];

  v8 = *(a1 + 32);
  if (v14)
  {
    [v8 _configureSnapshotImageView:v7 cacheEntry:v14[3]];
    v9 = v14[2];
  }

  else
  {
    [v8 _configureSnapshotImageView:v7 cacheEntry:0];
    v9 = 0;
  }

  v10 = [v9 application];
  v11 = [v10 info];
  v12 = [v11 isBlockedForScreenTimeExpiration];

  v13 = *(a1 + 32);
  if (v12)
  {
    [v13 _addAppLockoutOverlayIfNecessaryForRole:v6];
  }

  else
  {
    [v13 _removeAppLockoutOverlayForRole:v6];
  }

  [*(a1 + 32) _addOrRemoveAppProtectionShieldForApplication:v10 role:v6];
}

- (void)_updateSceneHandleForRole:(int64_t)a3
{
  v5 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:?];
  v18 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  if (![v5 type])
  {
    v6 = +[SBApplicationController sharedInstance];
    v8 = [v18 bundleIdentifier];
    v7 = [v6 applicationWithBundleIdentifier:v8];

    goto LABEL_7;
  }

  if ([v18 type] != 5)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = +[SBApplicationController sharedInstance];
  v7 = [v6 webApplication];
LABEL_7:

LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained sceneHandleProviderForSnapshotView:self];
  v11 = [WeakRetained displayIdentityForSnapshotView:self];
  if (v7)
  {
    v12 = [v18 uniqueIdentifier];
    v13 = [v10 sceneIdentityForApplication:v7 uniqueIdentifier:v12];

    if (v13)
    {
      v14 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v7 sceneIdentity:v13 displayIdentity:v11];
      v15 = objc_opt_class();
      v16 = [v10 fetchOrCreateApplicationSceneHandleForRequest:v14];
      v17 = SBSafeCast(v15, v16);

      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = 0;
LABEL_13:
  [(SBAppSwitcherReusableSnapshotView *)self _setSceneHandle:v17 forRole:a3];
}

- (void)prepareForReuse
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppSwitcherReusableSnapshotView.m" lineNumber:313 description:@"Can't recycle active view"];
}

void __52__SBAppSwitcherReusableSnapshotView_prepareForReuse__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 contentViews];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [*(a1 + 32) _imageViewForRole:{objc_msgSend(v5, "integerValue")}];

        if (v11 != v12)
        {
          [v11 removeFromSuperview];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void __52__SBAppSwitcherReusableSnapshotView_prepareForReuse__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(*(a1 + 32) + 512) objectForKeyedSubscript:v5];

    if (v7)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __52__SBAppSwitcherReusableSnapshotView_prepareForReuse__block_invoke_5;
      v10[3] = &unk_2783A8ED8;
      v8 = v6;
      v9 = *(a1 + 32);
      v11 = v8;
      v12 = v9;
      v13 = v5;
      [v8 hideWithAnimation:0 completionHandler:v10];
    }
  }
}

uint64_t __52__SBAppSwitcherReusableSnapshotView_prepareForReuse__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) beginAppearanceTransition:0 animated:0];
  [*(a1 + 32) willMoveToParentViewController:0];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  [*(a1 + 32) endAppearanceTransition];
  [*(*(a1 + 40) + 512) removeObjectForKey:*(a1 + 48)];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 552);

  return [v4 recycleBlockingViewController:v3];
}

void __52__SBAppSwitcherReusableSnapshotView_prepareForReuse__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 view];
  [*(a1 + 32) _updateCornerRadiusIfNecessaryForOverlayView:v5 matchingSnapshotImage:0];
  [v4 beginAppearanceTransition:0 animated:0];
  [v4 willMoveToParentViewController:0];
  [v5 removeFromSuperview];
  [v4 removeFromParentViewController];
  [v4 endAppearanceTransition];
}

void __52__SBAppSwitcherReusableSnapshotView_prepareForReuse__block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 view];
  [v3 beginAppearanceTransition:0 animated:0];
  [v3 willMoveToParentViewController:0];
  [v4 removeFromSuperview];
  [v3 removeFromParentViewController];
  [v3 endAppearanceTransition];
}

void __52__SBAppSwitcherReusableSnapshotView_prepareForReuse__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = [a2 appProtectionAssistant];
  [v3 removeObserver:*(a1 + 32)];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SBAppSwitcherReusableSnapshotView;
  [(SBSwitcherWallpaperPageContentView *)&v2 invalidate];
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      [(SBAppSwitcherReusableSnapshotView *)self _updateTranslucency];
    }
  }
}

- (void)setVisible:(BOOL)a3
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->_visible != a3)
  {
    v3 = a3;
    v4 = self;
    self->_visible = a3;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = v5;
    if (v3)
    {
      [(SBAppSwitcherReusableSnapshotView *)v4 _updateTranslucency];
      v29 = v6;
      [v6 addObserver:v4 selector:sel__handleInstalledAppsChanged_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v7 = [(SBAppSwitcherReusableSnapshotView *)v4 appLayout];
      v8 = [v7 allItems];

      v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v34;
        v12 = &OBJC_IVAR___SBDashBoardSetupView__legibilitySettings;
        do
        {
          v13 = 0;
          v30 = v10;
          do
          {
            if (*v34 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v33 + 1) + 8 * v13);
            if (![v14 type])
            {
              WeakRetained = objc_loadWeakRetained((&v4->super.super.super.super.isa + v12[474]));
              v16 = [(SBAppSwitcherReusableSnapshotView *)v4 appLayout];
              v17 = [WeakRetained snapshotView:v4 shouldShowAppClipOverlayForLayout:v16];

              if (v17)
              {
                v18 = [v14 bundleIdentifier];
                v19 = [v14 uniqueIdentifier];
                v20 = [MEMORY[0x277D0AC98] storeForApplication:v18];
                v21 = [v20 sceneStoreForIdentifier:v19 creatingIfNecessary:0];
                v22 = [v21 objectForKey:@"appClipIdentifier"];
                if ([v22 length])
                {
                  [(SBAppSwitcherReusableSnapshotView *)v4 appLayout];
                  v31 = v18;
                  v23 = v11;
                  v24 = v8;
                  v26 = v25 = v4;
                  v27 = [v26 layoutRoleForItem:v14];

                  v4 = v25;
                  v8 = v24;
                  v11 = v23;
                  v18 = v31;
                  [(SBAppSwitcherReusableSnapshotView *)v4 _addAppClipOverlayForRole:v27 bundleIdentifier:v31 sceneIdentifier:v19];
                }

                v10 = v30;
                v12 = &OBJC_IVAR___SBDashBoardSetupView__legibilitySettings;
              }
            }

            ++v13;
          }

          while (v10 != v13);
          v10 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v10);
      }

      v6 = v29;
    }

    else
    {
      [v5 removeObserver:v4 name:@"SBInstalledApplicationsDidChangeNotification" object:0];
      appClipOverlayByRole = v4->_appClipOverlayByRole;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __48__SBAppSwitcherReusableSnapshotView_setVisible___block_invoke;
      v32[3] = &unk_2783C2EB8;
      v32[4] = v4;
      [(NSMutableDictionary *)appClipOverlayByRole enumerateKeysAndObjectsUsingBlock:v32];
    }
  }
}

uint64_t __48__SBAppSwitcherReusableSnapshotView_setVisible___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);

  return [v4 _removeAppClipOverlayForRole:v3];
}

- (void)setShouldUseBrightMaterial:(BOOL)a3
{
  if (self->_shouldUseBrightMaterial != a3)
  {
    self->_shouldUseBrightMaterial = a3;
    [(SBAppSwitcherReusableSnapshotView *)self _updateTranslucency];
  }
}

- (void)setShowingIconOverlayView:(BOOL)a3
{
  if (self->_showingIconOverlayView != a3)
  {
    self->_showingIconOverlayView = a3;
    [(SBAppSwitcherReusableSnapshotView *)self setClipsToBounds:?];
  }
}

- (void)setShouldStretchToBounds:(BOOL)a3
{
  if (self->_shouldStretchToBounds != a3)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_shouldStretchToBounds = a3;
    imageViewByRole = self->_imageViewByRole;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__SBAppSwitcherReusableSnapshotView_setShouldStretchToBounds___block_invoke;
    v6[3] = &unk_2783C2F28;
    v6[4] = self;
    [(NSMutableDictionary *)imageViewByRole enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (void)setUsesNonuniformScaling:(BOOL)a3
{
  if (self->_usesNonuniformScaling != a3)
  {
    v8 = v3;
    v9 = v4;
    self->_usesNonuniformScaling = a3;
    imageViewByRole = self->_imageViewByRole;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__SBAppSwitcherReusableSnapshotView_setUsesNonuniformScaling___block_invoke;
    v6[3] = &__block_descriptor_33_e54_v32__0__NSNumber_8__SBSwitcherSnapshotImageView_16_B24l;
    v7 = a3;
    [(NSMutableDictionary *)imageViewByRole enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (void)didUpdateCacheEntry:(id)a3
{
  if (a3)
  {

    [(SBAppSwitcherReusableSnapshotView *)self _updateToNewSnapshotImageUsingCacheEntry:?];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "[switcher snapshot view] Got called back with nil cacheEntry", v6, 2u);
    }
  }
}

- (void)appProtectionAssistantShouldShieldDidChange:(id)a3
{
  snapshotViewStateByRole = self->_snapshotViewStateByRole;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__SBAppSwitcherReusableSnapshotView_appProtectionAssistantShouldShieldDidChange___block_invoke;
  v4[3] = &unk_2783C2E00;
  v4[4] = self;
  [(NSMutableDictionary *)snapshotViewStateByRole enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)_addOrRemoveAppProtectionShieldForApplication:(id)a3 role:(int64_t)a4
{
  v11 = a3;
  v6 = [v11 appProtectionAssistant];
  v7 = [v6 shouldShield];

  if (v7)
  {
    [(SBAppSwitcherReusableSnapshotView *)self _addAppProtectionShieldIfNeededForRole:a4];
  }

  else
  {
    [(SBAppSwitcherReusableSnapshotView *)self _removeAppProtectionShieldForRole:a4];
  }

  v8 = [(SBAppSwitcherReusableSnapshotView *)self _applicationForRole:a4];

  v9 = v11;
  if (v8 == v11)
  {
    v10 = [v11 appProtectionAssistant];
    [v10 addObserver:self];

    v9 = v11;
  }
}

- (void)_handleInstalledAppsChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"SBInstalledApplicationsAddedBundleIDs"];

  if ([v6 count])
  {
    snapshotViewStateByRole = self->_snapshotViewStateByRole;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__SBAppSwitcherReusableSnapshotView__handleInstalledAppsChanged___block_invoke;
    v13[3] = &unk_2783C2E00;
    v13[4] = self;
    [(NSMutableDictionary *)snapshotViewStateByRole enumerateKeysAndObjectsUsingBlock:v13];
  }

  v8 = [v4 userInfo];
  v9 = [v8 objectForKey:@"SBInstalledApplicationsUpdatedBundleIDs"];

  if ([v9 count])
  {
    v10 = self->_snapshotViewStateByRole;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__SBAppSwitcherReusableSnapshotView__handleInstalledAppsChanged___block_invoke_2;
    v11[3] = &unk_2783C2F70;
    v11[4] = self;
    v12 = v9;
    [(NSMutableDictionary *)v10 enumerateKeysAndObjectsUsingBlock:v11];
  }
}

- (id)_applicationForRole:(int64_t)a3
{
  v3 = [(SBAppSwitcherReusableSnapshotView *)self _sceneHandleForRole:a3];
  v4 = [v3 application];

  return v4;
}

- (id)_imageViewForRole:(int64_t)a3
{
  imageViewByRole = self->_imageViewByRole;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)imageViewByRole objectForKey:v4];

  return v5;
}

- (id)_orientationWrapperForRole:(int64_t)a3
{
  orientationWrapperByRole = self->_orientationWrapperByRole;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)orientationWrapperByRole objectForKey:v4];

  return v5;
}

- (void)_configureSnapshotImageView:(id)a3 cacheEntry:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v13 = v6;
    v7 = a4;
    v8 = -[SBAppSwitcherReusableSnapshotView _sceneHandleForRole:](self, "_sceneHandleForRole:", [v7 role]);
    v9 = [v8 application];
    [(SBAppSwitcherReusableSnapshotView *)self _updateCornerRadiusIfNecessaryForSnapshotImageView:v13 cacheEntry:v7];

    v10 = [(SBSwitcherWallpaperPageContentView *)self wallpaperStyle];
    v11 = [(SBAppSwitcherReusableSnapshotView *)self _contentModeForApplication:v9];
    [v13 setContentMode:v11];
    v12 = 0;
    if (v10 == 1 && v11 != 1)
    {
      v12 = [v8 isTranslucent] ^ 1;
    }

    [v13 setHasOpaqueContents:v12];

    v6 = v13;
  }
}

- (void)_updateCornerRadiusIfNecessaryForSnapshotImageView:(id)a3 cacheEntry:(id)a4
{
  v26 = a3;
  v7 = a4;
  if (v26 && v7)
  {
    v8 = -[SBAppSwitcherReusableSnapshotView _applicationForRole:](self, "_applicationForRole:", [v7 role]);
    v9 = [v7 snapshot];
    v10 = [(SBAppSwitcherReusableSnapshotView *)self _isSnapshotSuspendSnapshot:v9];

    if (![v8 isClassic] || (objc_msgSend(v8, "classicAppFullScreen") & 1) != 0 || -[SBSwitcherWindowManagementContext isChamoisOrFlexibleWindowing](self->_windowManagementContext, "isChamoisOrFlexibleWindowing"))
    {
      [(SBSwitcherWallpaperPageContentView *)self cornerRadius];
LABEL_7:
      v11 = 0;
      goto LABEL_8;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      if ([v8 classicAppNonFullScreenWithHomeAffordance] && objc_msgSend(v8, "classicAppWithRoundedCorners"))
      {
        SBScreenDisplayCornerRadius();
        goto LABEL_7;
      }

      if ([v8 classicAppNonFullScreenWithHomeAffordance] && (objc_msgSend(v8, "classicAppPhoneAppRunningOnPad") & 1) == 0)
      {
        v23 = [v7 snapshot];
        v11 = [v23 interfaceOrientation];
      }

      else
      {
        v11 = 0;
        [v8 classicAppPhoneAppRunningOnPad];
      }
    }

LABEL_8:
    [v26 setCornerRadius:?];
    v12 = [v7 appLayout];
    v13 = 2;
    v14 = [v12 itemForLayoutRole:2];

    if (!v14)
    {
      v18 = 15;
LABEL_25:
      [v26 setMaskedCorners:v18];
      [v26 setAllowStatusBarToOverlap:{objc_msgSend(v8, "includesStatusBarInClassicJailForInterfaceOrientation:", v11)}];
      [v26 setOrientationForClassicLayout:v11];

      goto LABEL_26;
    }

    v15 = MEMORY[0x277D76620];
    v16 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    if (v16 == 1)
    {
      v17 = [v7 displayItem];
      v4 = [v7 appLayout];
      v13 = [v4 itemForLayoutRole:2];
      if ([(SBDisplayItem *)v17 isEqualToItem:v13])
      {

LABEL_23:
        v18 = 5;
        goto LABEL_25;
      }

      if ([*v15 userInterfaceLayoutDirection] == 1)
      {

        goto LABEL_24;
      }

      v24 = v17;
    }

    else if ([*v15 userInterfaceLayoutDirection] == 1)
    {
      goto LABEL_24;
    }

    v19 = [v7 displayItem];
    v20 = [v7 appLayout];
    v21 = [v20 itemForLayoutRole:1];
    v22 = [v19 isEqual:v21];

    if (v16 == 1)
    {
    }

    if (v22)
    {
      goto LABEL_23;
    }

LABEL_24:
    v18 = 10;
    goto LABEL_25;
  }

LABEL_26:
}

- (void)_updateCornerRadiusIfNecessaryForOverlayView:(id)a3 matchingSnapshotImage:(id)a4
{
  v9 = a3;
  v5 = a4;
  if (v9)
  {
    [v5 cornerRadius];
    [v9 _setContinuousCornerRadius:?];
    v6 = [v9 layer];
    v7 = [v5 maskedCorners];
    v8 = v6;
  }

  else
  {
    [0 _setContinuousCornerRadius:0.0];
    v8 = [0 layer];
    v6 = v8;
    v7 = 0;
  }

  [v8 setMaskedCorners:v7];
}

- (BOOL)_doNonUniformScalingForApplication:(id)a3
{
  v4 = a3;
  if (SBSIsSystemApertureAvailable() && [v4 classicAppScaled])
  {
    LOBYTE(v5) = [v4 classicAppFullScreen];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  if (SBFIsFullScreenLetterboxingAvailable() && [v4 classicAppFullScreen] && (objc_msgSend(v4, "classicAppPhoneAppRunningOnPad") & 1) == 0)
  {
    if ([v4 onlySupportsOneOrientation])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v6 = [(UIView *)self _sbWindowScene];
      v5 = [v6 isExtendedDisplayWindowScene] ^ 1;
    }
  }

  return v5;
}

- (int64_t)_contentModeForApplication:(id)a3
{
  v4 = a3;
  v5 = 0;
  if (SBFIsFullScreenLetterboxingAvailable())
  {
    if ([v4 classicAppFullScreen])
    {
      if (([v4 classicAppPhoneAppRunningOnPad] & 1) == 0)
      {
        if (([v4 onlySupportsOneOrientation] & 1) != 0 || (-[UIView _sbWindowScene](self, "_sbWindowScene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isExtendedDisplayWindowScene"), v7, v8))
        {
          v5 = 1;
        }
      }
    }
  }

  return v5;
}

- (CGRect)_snapshotImageFrameForCacheEntry:(id)a3
{
  v4 = MEMORY[0x277D759A0];
  v5 = a3;
  v6 = [v4 mainScreen];
  [v6 _referenceBounds];
  v8 = v7;
  v10 = v9;
  v70 = v12;
  v71 = v11;

  v13 = [v5 snapshot];
  [v13 contentFrame];
  v15 = v14;
  v17 = v16;
  v18 = [(SBSwitcherWallpaperPageContentView *)self orientation];
  v19 = [v13 interfaceOrientation];
  v20 = -[SBAppSwitcherReusableSnapshotView _applicationForRole:](self, "_applicationForRole:", [v5 role]);
  v21 = [(SBAppSwitcherReusableSnapshotView *)self _isSnapshotSuspendSnapshot:v13];
  v22 = [v20 classicAppPhoneAppRunningOnPad];
  v23 = [v5 appLayout];
  v24 = [v5 displayItem];

  -[SBAppSwitcherReusableSnapshotView _frameInLayoutSpaceForRole:inAppLayout:inOrientation:](self, "_frameInLayoutSpaceForRole:inAppLayout:inOrientation:", [v23 layoutRoleForItem:v24], v23, -[SBSwitcherWallpaperPageContentView orientation](self, "orientation"));
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [(SBSwitcherWindowManagementContext *)self->_windowManagementContext isChamoisOrFlexibleWindowing];
  v34 = [(SBAppSwitcherReusableSnapshotView *)self _doNonUniformScalingForApplication:v20];
  if (v21 || v33 || v34 || ![v20 isClassic])
  {
    goto LABEL_23;
  }

  v66 = v26;
  v67 = v28;
  v68 = v30;
  v69 = v32;
  v72 = SBUICUnitScaleFactor;
  [v20 snapshotFrameForClassicInsideBounds:v18 forOrientation:&v72 scaleFactor:1 inReferenceSpace:{v8, v10, v71, v70}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  if (v22 && [v20 classicAppZoomedInOrRequiresHiDPI])
  {
    *&v72 = SBClassicUtilitiesScaleFactorForPhoneAppZoomedIn(v19, v15, v17);
    *(&v72 + 1) = v72;
  }

  SBUICScaledRectWithOffset();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v73.origin.x = v36;
  v73.origin.y = v38;
  v73.size.width = v40;
  v73.size.height = v42;
  v51 = CGRectGetMinX(v73) + v44;
  v74.origin.x = v36;
  v74.origin.y = v38;
  v74.size.width = v40;
  v74.size.height = v42;
  v52 = v46 + CGRectGetMinY(v74);
  if (v18 != 1)
  {
    v55 = v68;
    v54 = v69;
    v57 = v66;
    v56 = v67;
    if (v22 && (v19 - 3) > 1)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v19 - 3) < 2)
  {
    v53 = v22;
  }

  else
  {
    v53 = 0;
  }

  v55 = v68;
  v54 = v69;
  v57 = v66;
  v56 = v67;
  if (v53)
  {
LABEL_16:
    _UIWindowConvertRectFromOrientationToOrientation();
    v51 = v58;
    v52 = v59;
    v48 = v60;
    v50 = v61;
  }

LABEL_17:
  if (!CGFloatIsValid() || !CGFloatIsValid() || !CGFloatIsValid() || (CGFloatIsValid() & 1) == 0)
  {
    v50 = v54;
    v48 = v55;
    v52 = v56;
    v51 = v57;
  }

  v32 = v50;
  v30 = v48;
  v28 = v52;
  v26 = v51;
LABEL_23:

  v62 = v26;
  v63 = v28;
  v64 = v30;
  v65 = v32;
  result.size.height = v65;
  result.size.width = v64;
  result.origin.y = v63;
  result.origin.x = v62;
  return result;
}

- (CGRect)_frameInLayoutSpaceForRole:(int64_t)a3 inAppLayout:(id)a4 inOrientation:(int64_t)a5
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained layoutFrameForItemWithRole:a3 inAppLayout:v8 interfaceOrientation:a5 forSnapshotView:self];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_updateToNewSnapshotImageUsingCacheEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 role];
  v38 = [(SBAppSwitcherReusableSnapshotView *)self _imageViewForRole:v5];
  v6 = [(SBAppSwitcherReusableSnapshotView *)self _cacheEntryForRole:v5];
  if (v6)
  {
    v7 = [v4 snapshot];
    if ([(SBAppSwitcherReusableSnapshotView *)self _isSnapshotSuspendSnapshot:v7]|| [(SBAppSwitcherSettings *)self->_settings shouldSimplifyForOptions:2])
    {
      v8 = 1;
    }

    else
    {
      blockingViewControllerByRole = self->_blockingViewControllerByRole;
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
      v11 = [(NSMutableDictionary *)blockingViewControllerByRole objectForKeyedSubscript:v10];
      if (v11)
      {
        v8 = 1;
      }

      else
      {
        appProtectionShieldViewControllerByRole = self->_appProtectionShieldViewControllerByRole;
        v13 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
        v14 = [(NSMutableDictionary *)appProtectionShieldViewControllerByRole objectForKeyedSubscript:v13];
        v8 = v14 != 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  v15 = [v6 snapshotImage];
  v16 = [v4 snapshotImage];
  if (!v8 && (([v15 size], v17 == 0.0) || (objc_msgSend(v16, "size"), v18 == 0.0) || (objc_msgSend(v15, "size"), objc_msgSend(v15, "size"), objc_msgSend(v16, "size"), objc_msgSend(v16, "size"), BSFloatApproximatelyEqualToFloat())) && !self->_shouldStretchToBounds)
  {
    v20 = [(SBAppSwitcherReusableSnapshotView *)self _contentOrientationForSnapshotCacheEntry:v6];
    v19 = v20 != [(SBAppSwitcherReusableSnapshotView *)self _contentOrientationForSnapshotCacheEntry:v4];
  }

  else
  {
    v19 = 1;
  }

  deferredSnapshotCrossfadeQueue = self->_deferredSnapshotCrossfadeQueue;
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke;
  v75[3] = &unk_2783C2FC0;
  v22 = v4;
  v76 = v22;
  v23 = [(NSMutableArray *)deferredSnapshotCrossfadeQueue bs_filter:v75];
  [(NSMutableArray *)deferredSnapshotCrossfadeQueue removeObjectsInArray:v23];

  v24 = v38;
  if (self->_active)
  {
    if (v19 || !self->_visible)
    {
      [(SBAppSwitcherReusableSnapshotView *)self _setCacheEntry:v22 forRole:v5];
      v25 = [v38 layer];
      [v25 removeAllAnimations];

      [v38 setImage:v16];
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_2;
      v74[3] = &unk_2783A8C18;
      v74[4] = self;
      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v74];
      v26 = MEMORY[0x277D75D18];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_3;
      v70[3] = &unk_2783AB2A8;
      v71 = v38;
      v72 = self;
      v73 = v5;
      [v26 performWithoutAnimation:v70];
      v27 = v71;
    }

    else
    {
      if ([(SBAppSwitcherReusableSnapshotView *)self _isAnimatingTransitionForRole:v5])
      {
        [(NSMutableArray *)self->_deferredSnapshotCrossfadeQueue _sb_enqueue:v22];
        goto LABEL_26;
      }

      [(SBAppSwitcherReusableSnapshotView *)self _setCacheEntry:v22 forRole:v5];
      [(SBAppSwitcherReusableSnapshotView *)self setNeedsLayout];
      v28 = [v38 image];

      if (v28)
      {
        v61[0] = 0;
        v61[1] = v61;
        v61[2] = 0x3032000000;
        v61[3] = __Block_byref_object_copy__135;
        v61[4] = __Block_byref_object_dispose__135;
        v62 = 0;
        v59[0] = 0;
        v59[1] = v59;
        v59[2] = 0x3032000000;
        v59[3] = __Block_byref_object_copy__135;
        v59[4] = __Block_byref_object_dispose__135;
        v60 = 0;
        v53 = 0;
        v54 = &v53;
        v55 = 0x3032000000;
        v56 = __Block_byref_object_copy__135;
        v57 = __Block_byref_object_dispose__135;
        v58 = 0;
        v29 = MEMORY[0x277D75D18];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_99;
        v43[3] = &unk_2783C2FE8;
        v52 = v5;
        v43[4] = self;
        v49 = v61;
        v44 = v15;
        v45 = v6;
        v50 = v59;
        v46 = v16;
        v47 = v22;
        v30 = v38;
        v48 = v30;
        v51 = &v53;
        [v29 _performWithoutRetargetingAnimations:v43];
        v31 = v54[5];
        v32 = [MEMORY[0x277CF0D38] factoryWithDuration:0.35];
        [v31 setAnimationFactory:v32];

        v33 = v54[5];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_2_102;
        v39[3] = &unk_2783AA668;
        v41 = &v53;
        v39[4] = self;
        v40 = v30;
        v42 = v5;
        [v33 crossfadeWithCompletion:v39];

        _Block_object_dispose(&v53, 8);
        _Block_object_dispose(v59, 8);

        _Block_object_dispose(v61, 8);
        v24 = v38;
        goto LABEL_26;
      }

      [(SBAppSwitcherReusableSnapshotView *)self _setAnimatingTransition:1 forRole:v5];
      v34 = MEMORY[0x277D75D18];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_4;
      v67[3] = &unk_2783AB2A8;
      v67[4] = self;
      v69 = v5;
      v35 = v38;
      v68 = v35;
      [v34 performWithoutAnimation:v67];
      [v35 setImage:v16];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_5;
      v66[3] = &unk_2783A8C18;
      v66[4] = self;
      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v66];
      v36 = MEMORY[0x277D75D18];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_6;
      v64[3] = &unk_2783A8C18;
      v37 = v35;
      v24 = v38;
      v65 = v37;
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_7;
      v63[3] = &unk_2783B3C38;
      v63[4] = self;
      v63[5] = v5;
      [v36 animateWithDuration:v64 animations:v63 completion:0.1];

      v27 = v68;
    }
  }

LABEL_26:
}

uint64_t __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayItem];
  v4 = [*(a1 + 32) displayItem];
  v5 = [(SBDisplayItem *)v3 isEqualToItem:v4];

  return v5;
}

uint64_t __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 40) _updateTranslucency];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _updateContentOrientationForRole:v3];
}

uint64_t __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _updateContentOrientationForRole:*(a1 + 48)];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) _updateTranslucency];
  [*(a1 + 32) _setAnimatingTransition:0 forRole:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _performDeferredSnapshotUpdatesIfNecessaryForRole:v3];
}

void __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_99(uint64_t a1)
{
  [*(a1 + 32) _setAnimatingTransition:1 forRole:*(a1 + 104)];
  v2 = [[SBSwitcherSnapshotImageView alloc] initWithImage:*(a1 + 40)];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) _configureSnapshotImageView:*(*(*(a1 + 80) + 8) + 40) cacheEntry:*(a1 + 48)];
  v5 = [[SBSwitcherSnapshotImageView alloc] initWithImage:*(a1 + 56)];
  v6 = *(*(a1 + 88) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 32) _configureSnapshotImageView:*(*(*(a1 + 88) + 8) + 40) cacheEntry:*(a1 + 64)];
  [*(*(*(a1 + 80) + 8) + 40) setUsesNonuniformScaling:{objc_msgSend(*(a1 + 72), "usesNonuniformScaling")}];
  [*(*(*(a1 + 80) + 8) + 40) setStretchToFillBounds:{objc_msgSend(*(a1 + 72), "stretchToFillBounds")}];
  [*(*(*(a1 + 88) + 8) + 40) setUsesNonuniformScaling:{objc_msgSend(*(a1 + 72), "usesNonuniformScaling")}];
  [*(*(*(a1 + 88) + 8) + 40) setStretchToFillBounds:{objc_msgSend(*(a1 + 72), "stretchToFillBounds")}];
  v8 = *(*(*(a1 + 80) + 8) + 40);
  [*(a1 + 72) frame];
  [v8 setFrame:?];
  v9 = *(*(*(a1 + 88) + 8) + 40);
  [*(a1 + 72) frame];
  [v9 setFrame:?];
  v10 = [*(a1 + 32) _sceneHandleForRole:*(a1 + 104)];
  v11 = [v10 isTranslucent];

  v12 = [MEMORY[0x277D67940] crossfadeViewWithStartView:*(*(*(a1 + 80) + 8) + 40) endView:*(*(*(a1 + 88) + 8) + 40) translucent:v11];
  v13 = *(*(a1 + 96) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  [*(a1 + 32) layoutIfNeeded];
  [*(*(*(a1 + 80) + 8) + 40) layoutIfNeeded];
  [*(*(*(a1 + 88) + 8) + 40) layoutIfNeeded];
  [*(a1 + 72) setHidden:1];
  [*(a1 + 72) _removeAllRetargetableAnimations:1];
  [*(a1 + 72) setImage:*(a1 + 56)];
  v15 = [*(a1 + 32) _orientationWrapperForRole:*(a1 + 104)];
  [v15 addContentView:*(*(*(a1 + 96) + 8) + 40)];
}

void __78__SBAppSwitcherReusableSnapshotView__updateToNewSnapshotImageUsingCacheEntry___block_invoke_2_102(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) superview];

  if (v2)
  {
    [*(a1 + 32) _updateTranslucency];
    [*(*(*(a1 + 48) + 8) + 40) removeFromSuperview];
    [*(a1 + 40) setHidden:0];
    [*(a1 + 32) _setAnimatingTransition:0 forRole:*(a1 + 56)];
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);

    [v3 _performDeferredSnapshotUpdatesIfNecessaryForRole:v4];
  }
}

- (BOOL)_isSnapshotSuspendSnapshot:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"SBSuspendSnapshot"];

  return v4;
}

- (void)_performDeferredSnapshotUpdatesIfNecessaryForRole:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(SBAppSwitcherReusableSnapshotView *)self _isAnimatingTransitionForRole:?])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_deferredSnapshotCrossfadeQueue;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if ([v10 role] == a3)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }

      v11 = v10;

      if (!v11)
      {
        return;
      }

      [(SBAppSwitcherReusableSnapshotView *)self _updateToNewSnapshotImageUsingCacheEntry:v11];
      [(NSMutableArray *)self->_deferredSnapshotCrossfadeQueue removeObject:v11];
      v5 = v11;
    }

LABEL_13:
  }
}

- (int64_t)_contentOrientationForSnapshotCacheEntry:(id)a3
{
  v4 = a3;
  v5 = -[SBAppSwitcherReusableSnapshotView _sceneHandleForRole:](self, "_sceneHandleForRole:", [v4 role]);
  v6 = [v5 _supportsMixedOrientation];

  v7 = [v4 snapshot];
  v8 = [v7 interfaceOrientation];

  v9 = [(SBSwitcherWallpaperPageContentView *)self orientation];
  if (v9 == XBOppositeInterfaceOrientation())
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  if (v6)
  {
    v11 = v9;
    if ([(SBSwitcherWindowManagementContext *)self->_windowManagementContext isChamoisOrFlexibleWindowing])
    {
      v12 = [v4 appLayout];
      v13 = [v12 itemForLayoutRole:{objc_msgSend(v4, "role")}];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15 = [WeakRetained layoutAttributesProviderForSnapshotView:self];

      v16 = [v12 preferredDisplayOrdinal];
      if ((v9 - 1) < 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2 * ((v9 - 3) < 2);
      }

      v18 = [v15 layoutAttributesForDisplayItem:v13 inAppLayout:v12 displayOrdinal:v16 orientation:v17];
      v19 = [(SBHomeScreenConfigurationServer *)v18 authenticator];
      if (v19 != v9 && v19 == v8)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }
    }
  }

  return v11;
}

void __56__SBAppSwitcherReusableSnapshotView__updateTranslucency__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  [v8 setHasOpaqueContents:(*(a1 + 32) & 1) == 0];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      v4 = v8;
      v5 = 0;
    }

    else
    {
      v5 = *(a1 + 32);
      v4 = v8;
    }

    [v4 setAllowsEdgeAntialiasing:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    if ([v6 userInterfaceIdiom] == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 32);
    }

    [v8 setAllowsEdgeAntialiasing:v7 & 1];
  }
}

- (void)setWallpaperStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = SBAppSwitcherReusableSnapshotView;
  [(SBSwitcherWallpaperPageContentView *)&v6 setWallpaperStyle:a3];
  imageViewByRole = self->_imageViewByRole;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SBAppSwitcherReusableSnapshotView_setWallpaperStyle___block_invoke;
  v5[3] = &unk_2783C2F28;
  v5[4] = self;
  [(NSMutableDictionary *)imageViewByRole enumerateKeysAndObjectsUsingBlock:v5];
}

void __55__SBAppSwitcherReusableSnapshotView_setWallpaperStyle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = *(a1 + 32);
  v8 = [v7 _cacheEntryForRole:v6];
  [v7 _configureSnapshotImageView:v5 cacheEntry:v8];
}

- (id)_separatorViewBezierPathWithWidth:(double)a3 height:(double)a4
{
  SBScreenDisplayCornerRadius();
  if (BSFloatIsZero())
  {
    v6 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, 0.0, a3, a4}];
  }

  else
  {
    v7 = +[SBMedusaDomain rootSettings];
    [v7 cornerRadiusForInnerCorners];
    v9 = v8;

    v6 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, 0.0, a3 + v9 * 4.0 * 2.0, a4}];
    v10 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:10 byRoundingCorners:0.0 cornerRadii:{0.0, v9 * 4.0, a4, v9, v9}];
    v11 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:5 byRoundingCorners:v9 * 4.0 + a3 cornerRadii:{0.0, v9 * 4.0, a4, v9, v9}];
    v12 = [v10 bezierPathByReversingPath];
    [v6 appendPath:v12];

    v13 = [v11 bezierPathByReversingPath];
    [v6 appendPath:v13];
  }

  return v6;
}

- (void)_updateContentOrientationForRole:(int64_t)a3
{
  v12 = [(SBAppSwitcherReusableSnapshotView *)self _cacheEntryForRole:?];
  v5 = [v12 snapshot];
  if (v5 && (v6 = v5, v7 = [(SBSwitcherWallpaperPageContentView *)self orientation], v6, v7))
  {
    v8 = [(SBAppSwitcherReusableSnapshotView *)self _contentOrientationForSnapshotCacheEntry:v12];
    v9 = [(SBAppSwitcherReusableSnapshotView *)self _orientationWrapperForRole:a3];
    if ([v9 contentOrientation] != v8)
    {
      [(SBAppSwitcherReusableSnapshotView *)self setNeedsLayout];
    }

    v10 = v9;
    v11 = v8;
  }

  else
  {
    v9 = [(SBAppSwitcherReusableSnapshotView *)self _orientationWrapperForRole:a3];
    v11 = [(SBSwitcherWallpaperPageContentView *)self orientation];
    v10 = v9;
  }

  [v10 setContentOrientation:v11];
}

- (void)_addOverlayViewController:(id)a3 toOrientationWrapperForRole:(int64_t)a4
{
  v6 = a3;
  v10 = [v6 view];
  [v10 setClipsToBounds:1];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [v6 beginAppearanceTransition:1 animated:0];
  [WeakRetained addChildViewController:v6];
  v8 = [(SBAppSwitcherReusableSnapshotView *)self _orientationWrapperForRole:a4];
  [v8 addContentView:v10];

  [v10 layoutIfNeeded];
  [v6 didMoveToParentViewController:WeakRetained];
  [v6 endAppearanceTransition];

  v9 = [(SBAppSwitcherReusableSnapshotView *)self _imageViewForRole:a4];
  [(SBAppSwitcherReusableSnapshotView *)self _updateCornerRadiusIfNecessaryForOverlayView:v10 matchingSnapshotImage:v9];
}

- (void)_addAppLockoutOverlayIfNecessaryForRole:(int64_t)a3
{
  blockingViewControllerByRole = self->_blockingViewControllerByRole;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)blockingViewControllerByRole objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [(SBAppSwitcherReusableSnapshotView *)self _applicationForRole:a3];
    v9 = [v8 info];
    v10 = [v9 screenTimePolicy];

    lockoutVCProvider = self->_lockoutVCProvider;
    v12 = [v8 bundleIdentifier];
    v13 = [(SBAppSwitcherSnapshotLockoutViewControllerProvider *)lockoutVCProvider blockingViewControllerForBundleIdentifier:v12 screenTimePolicy:v10];

    v14 = self->_blockingViewControllerByRole;
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

    v16 = [v13 view];
    [v16 setClipsToBounds:1];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [v13 beginAppearanceTransition:1 animated:0];
    [WeakRetained addChildViewController:v13];
    v18 = [(SBAppSwitcherReusableSnapshotView *)self _orientationWrapperForRole:a3];
    [v18 addContentView:v16];

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __77__SBAppSwitcherReusableSnapshotView__addAppLockoutOverlayIfNecessaryForRole___block_invoke;
    v25 = &unk_2783A92D8;
    v26 = v13;
    v27 = WeakRetained;
    v19 = WeakRetained;
    v20 = v13;
    [v20 showWithAnimation:0 completionHandler:&v22];
    v21 = [(SBAppSwitcherReusableSnapshotView *)self _imageViewForRole:a3, v22, v23, v24, v25];
    [(SBAppSwitcherReusableSnapshotView *)self _updateCornerRadiusIfNecessaryForOverlayView:v16 matchingSnapshotImage:v21];
  }
}

uint64_t __77__SBAppSwitcherReusableSnapshotView__addAppLockoutOverlayIfNecessaryForRole___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 endAppearanceTransition];
}

- (void)_removeAppLockoutOverlayForRole:(int64_t)a3
{
  blockingViewControllerByRole = self->_blockingViewControllerByRole;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)blockingViewControllerByRole objectForKeyedSubscript:v6];

  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__SBAppSwitcherReusableSnapshotView__removeAppLockoutOverlayForRole___block_invoke;
    v8[3] = &unk_2783AB2A8;
    v9 = v7;
    v10 = self;
    v11 = a3;
    [v9 hideWithAnimation:0 completionHandler:v8];
  }
}

uint64_t __69__SBAppSwitcherReusableSnapshotView__removeAppLockoutOverlayForRole___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginAppearanceTransition:0 animated:0];
  [*(a1 + 32) willMoveToParentViewController:0];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  [*(a1 + 32) endAppearanceTransition];
  v3 = *(*(a1 + 40) + 512);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  [v3 removeObjectForKey:v4];

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 552);

  return [v6 recycleBlockingViewController:v5];
}

- (void)_addAppClipOverlayForRole:(int64_t)a3 bundleIdentifier:(id)a4 sceneIdentifier:(id)a5
{
  v20 = a4;
  v8 = a5;
  appClipOverlayByRole = self->_appClipOverlayByRole;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v11 = [(NSMutableDictionary *)appClipOverlayByRole objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = [[SBAppClipOverlayViewController alloc] initWithCoordinator:self->_appClipOverlayCoordinator bundleIdentifier:v20 sceneIdentifier:v8];
    v13 = [(SBAppSwitcherReusableSnapshotView *)self _applicationForRole:a3];

    v14 = v13 == 0;
    if (v13)
    {
      v15 = 2;
    }

    else
    {
      v15 = -1;
    }

    [(SBAppClipOverlayViewController *)v12 setDisplayedOverPlaceholder:v14 animated:0];
    [(SBAppClipOverlayViewController *)v12 setSceneActivationState:v15 animated:0];
    v16 = self->_appClipOverlayByRole;
    if (!v16)
    {
      v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
      v18 = self->_appClipOverlayByRole;
      self->_appClipOverlayByRole = v17;

      v16 = self->_appClipOverlayByRole;
    }

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)v16 setObject:v12 forKeyedSubscript:v19];

    [(SBAppSwitcherReusableSnapshotView *)self _addOverlayViewController:v12 toOrientationWrapperForRole:a3];
  }
}

- (void)_removeAppClipOverlayForRole:(int64_t)a3
{
  appClipOverlayByRole = self->_appClipOverlayByRole;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v12 = [(NSMutableDictionary *)appClipOverlayByRole objectForKeyedSubscript:v6];

  v7 = v12;
  if (v12)
  {
    v8 = [v12 view];
    [(SBAppSwitcherReusableSnapshotView *)self _updateCornerRadiusIfNecessaryForOverlayView:v8 matchingSnapshotImage:0];
    [v12 beginAppearanceTransition:0 animated:0];
    [v12 willMoveToParentViewController:0];
    [v8 removeFromSuperview];
    [v12 removeFromParentViewController];
    [v12 endAppearanceTransition];
    v9 = self->_appClipOverlayByRole;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)v9 removeObjectForKey:v10];

    if (![(NSMutableDictionary *)self->_appClipOverlayByRole count])
    {
      v11 = self->_appClipOverlayByRole;
      self->_appClipOverlayByRole = 0;
    }

    v7 = v12;
  }
}

- (void)_addAppProtectionShieldIfNeededForRole:(int64_t)a3
{
  v5 = [(SBAppSwitcherReusableSnapshotView *)self _applicationForRole:?];
  if (v5)
  {
    appProtectionShieldViewControllerByRole = self->_appProtectionShieldViewControllerByRole;
    v15 = v5;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v8 = [(NSMutableDictionary *)appProtectionShieldViewControllerByRole objectForKeyedSubscript:v7];

    v5 = v15;
    if (!v8)
    {
      v9 = [v15 appProtectionAssistant];
      v10 = [v9 createShieldUIViewController];

      v11 = self->_appProtectionShieldViewControllerByRole;
      if (!v11)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
        v13 = self->_appProtectionShieldViewControllerByRole;
        self->_appProtectionShieldViewControllerByRole = v12;

        v11 = self->_appProtectionShieldViewControllerByRole;
      }

      v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v14];

      [(SBAppSwitcherReusableSnapshotView *)self _addOverlayViewController:v10 toOrientationWrapperForRole:a3];
      v5 = v15;
    }
  }
}

- (void)_removeAppProtectionShieldForRole:(int64_t)a3
{
  appProtectionShieldViewControllerByRole = self->_appProtectionShieldViewControllerByRole;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v12 = [(NSMutableDictionary *)appProtectionShieldViewControllerByRole objectForKeyedSubscript:v6];

  v7 = v12;
  if (v12)
  {
    v8 = [v12 view];
    [v12 beginAppearanceTransition:0 animated:0];
    [v12 willMoveToParentViewController:0];
    [v8 removeFromSuperview];
    [v12 removeFromParentViewController];
    [v12 endAppearanceTransition];
    v9 = self->_appProtectionShieldViewControllerByRole;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)v9 removeObjectForKey:v10];

    if (![(NSMutableDictionary *)self->_appProtectionShieldViewControllerByRole count])
    {
      v11 = self->_appProtectionShieldViewControllerByRole;
      self->_appProtectionShieldViewControllerByRole = 0;
    }

    v7 = v12;
  }
}

- (void)_windowManagementStyleDidChange:(id)a3
{
  v4 = [(UIView *)self _sbWindowScene];
  v5 = [v4 switcherController];
  obj = [v5 windowManagementContext];

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_windowManagementContext, obj);
    [(SBAppSwitcherReusableSnapshotView *)self setNeedsLayout];
  }
}

void __48__SBAppSwitcherReusableSnapshotView_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 integerValue];
  if (v10)
  {
    v6 = v10[3];
  }

  else
  {
    v6 = 0;
  }

  if (v5 == 4)
  {
    v7 = @"Cache Entry for Role Center";
  }

  else
  {
    v7 = @"Cache Entry for Role Side";
  }

  if (v5 == 1)
  {
    v8 = @"Cache Entry for Role Primary";
  }

  else
  {
    v8 = v7;
  }

  v9 = [*(a1 + 32) appendObject:v6 withName:v8];
}

void __52__SBAppSwitcherReusableSnapshotView_prepareForReuse__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [(SBCameraHardwareButton *)v6 setDispatchingRuleAssertion:?];
  [(SBKeyboardClientSettingObserverContext *)v6 setOldClientSettings:?];
  v4 = v6;
  if (v6)
  {
    *(v6 + 8) = 0;
    v4 = *(v6 + 2);
  }

  v5 = [v4 application];
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __81__SBAppSwitcherReusableSnapshotView_appProtectionAssistantShouldShieldDidChange___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  v8 = [v4 application];
  v6 = *(a1 + 32);
  v7 = [v5 integerValue];

  [v6 _addOrRemoveAppProtectionShieldForApplication:v8 role:v7];
}

void __65__SBAppSwitcherReusableSnapshotView__handleInstalledAppsChanged___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    v5 = *(a3 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 application];
  if (!v6)
  {
    [*(a1 + 32) _updateSceneHandleForRole:{objc_msgSend(v7, "integerValue")}];
  }
}

void __65__SBAppSwitcherReusableSnapshotView__handleInstalledAppsChanged___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = a2;
  v6 = [v5 integerValue];
  v7 = v13;
  if (v13)
  {
    v7 = v13[2];
  }

  v8 = [v7 application];
  v9 = [v8 bundleIdentifier];
  v10 = [v8 info];
  v11 = [v10 isBlockedForScreenTimeExpiration];

  v12 = [*(*(a1 + 32) + 512) objectForKeyedSubscript:v5];

  if ([*(a1 + 40) containsObject:v9])
  {
    if (((v12 == 0) & v11) == 1)
    {
      [*(a1 + 32) _addAppLockoutOverlayIfNecessaryForRole:v6];
    }

    else if (!((v12 == 0) | v11 & 1))
    {
      [*(a1 + 32) _removeAppLockoutOverlayForRole:v6];
    }
  }

  [*(a1 + 32) _addOrRemoveAppProtectionShieldForApplication:v8 role:v6];
}

- (id)_sceneHandleForRole:(int64_t)a3
{
  [MEMORY[0x277CCABB0] numberWithInteger:a3];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_0_54() objectForKey:?];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)_setSceneHandle:(id)a3 forRole:(int64_t)a4
{
  snapshotViewStateByRole = self->_snapshotViewStateByRole;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v9 = [v6 numberWithInteger:a4];
  v8 = [(NSMutableDictionary *)snapshotViewStateByRole objectForKey:v9];
  [(SBKeyboardClientSettingObserverContext *)v8 setOldClientSettings:v7];
}

- (id)_cacheEntryForRole:(int64_t)a3
{
  [MEMORY[0x277CCABB0] numberWithInteger:a3];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_0_54() objectForKey:?];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)_setCacheEntry:(id)a3 forRole:(int64_t)a4
{
  snapshotViewStateByRole = self->_snapshotViewStateByRole;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v9 = [v6 numberWithInteger:a4];
  v8 = [(NSMutableDictionary *)snapshotViewStateByRole objectForKey:v9];
  [(SBCameraHardwareButton *)v8 setDispatchingRuleAssertion:v7];
}

- (BOOL)_isAnimatingTransitionForRole:(int64_t)a3
{
  [MEMORY[0x277CCABB0] numberWithInteger:a3];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_0_54() objectForKey:?];
  if (v4)
  {
    v5 = v4[8];
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)_setAnimatingTransition:(BOOL)a3 forRole:(int64_t)a4
{
  snapshotViewStateByRole = self->_snapshotViewStateByRole;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v6 = [(NSMutableDictionary *)snapshotViewStateByRole objectForKey:?];
  if (v6)
  {
    v6[8] = a3;
  }
}

- (void)initWithDelegate:(uint64_t)a1 snapshotCache:(uint64_t)a2 lockoutVCProvider:appClipOverlayCoordinator:containerViewController:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppSwitcherReusableSnapshotView.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"snapshotCache != nil"}];
}

@end