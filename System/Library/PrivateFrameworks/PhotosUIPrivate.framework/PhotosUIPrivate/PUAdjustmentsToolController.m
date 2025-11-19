@interface PUAdjustmentsToolController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canResetToDefaultValue;
- (PUAdjustmentsToolController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)_sliderLength;
- (id)_indexPathForAdjustmentCategory:(int64_t)a3;
- (id)adjustmentsRenderer:(id)a3;
- (id)adjustmentsViewControllerMainContainerView;
- (id)centerToolbarView;
- (id)viewsActivatingMainToolbarShadow;
- (id)viewsActivatingToolControlShadow;
- (void)_performInitialAction;
- (void)_ppt_scrollAfterDelay:(id)a3;
- (void)_updateBadgeTextWithInfo:(id)a3;
- (void)_updateToolLabelAppearanceIfNeeded;
- (void)adjustmentsViewControllerDidUpdateSelectedControl:(id)a3;
- (void)adjustmentsViewControllerSliderDidEndScrubbing:(id)a3;
- (void)adjustmentsViewControllerSliderWillBeginScrubbing:(id)a3;
- (void)autoEnhanceActionStateChanged;
- (void)compositionControllerDidChangeForAdjustments:(id)a3;
- (void)configureForAdjustmentCategory:(int64_t)a3;
- (void)didBecomeActiveTool;
- (void)mediaViewDidEndZooming:(id)a3;
- (void)ppt_selectSliderNamed:(id)a3 completion:(id)a4;
- (void)reactivate;
- (void)resetToDefaultValueAnimated:(BOOL)a3;
- (void)setBackdropViewGroupName:(id)a3;
- (void)setUseGradientBackground:(BOOL)a3 animated:(BOOL)a4;
- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6;
- (void)specDidChange;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willBecomeActiveTool;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PUAdjustmentsToolController

- (void)_ppt_scrollAfterDelay:(id)a3
{
  v3 = a3;
  v4 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PUAdjustmentsToolController__ppt_scrollAfterDelay___block_invoke;
  block[3] = &unk_1E7B80C88;
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

- (void)ppt_selectSliderNamed:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUAdjustmentsToolController *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(PUAdjustmentsToolController *)self dataSource];
    v11 = [v10 numberOfItemsInAllSections];

    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v11 + 1;
      goto LABEL_5;
    }
  }

  else
  {
    v12 = 21;
LABEL_5:
    while (1)
    {
      v13 = [(PUAdjustmentsViewController *)self->_adjustmentsViewController selectedAdjustmentInfo];
      v14 = [v13 localizedName];
      v15 = [v14 caseInsensitiveCompare:v6];

      if (!v15)
      {
        break;
      }

      [(PUAdjustmentsViewController *)self->_adjustmentsViewController ppt_selectNextAdjustment];
      if (!--v12)
      {
        goto LABEL_10;
      }
    }

    if (v7)
    {
      v16 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__PUAdjustmentsToolController_ppt_selectSliderNamed_completion___block_invoke;
      block[3] = &unk_1E7B80C88;
      v18 = v7;
      dispatch_after(v16, MEMORY[0x1E69E96A0], block);
    }
  }

LABEL_10:
}

- (void)validateCommand:(id)a3
{
  v7 = a3;
  if ([v7 action] == sel_autoEnhanceAssets_)
  {
    v4 = MEMORY[0x1E69C4260];
    v5 = [(PUPhotoEditToolController *)self compositionController];
    [v4 isAutoEnhanceEnabledForCompositionController:v5];

    v6 = PXLocalizedString();
    [v7 setTitle:v6];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_autoEnhanceAssets_ == a3)
  {
    v5 = [(PUAdjustmentsToolController *)self autoAdjustmentController];
    v4 = [v5 isBusy] ^ 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PUAdjustmentsToolController;
    LOBYTE(v4) = [PUAdjustmentsToolController canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }

  return v4;
}

- (double)_sliderLength
{
  v2 = [(PUPhotoEditToolController *)self toolControllerSpec];
  [v2 sliderLength];
  v4 = v3;

  return v4;
}

- (void)autoEnhanceActionStateChanged
{
  v2 = [(PUPhotoEditToolController *)self delegate];
  [v2 updateProgressIndicatorAnimated:1];
}

- (id)adjustmentsRenderer:(id)a3
{
  v4 = [(PUPhotoEditToolController *)self delegate];
  v5 = [v4 toolControllerMainRenderer:self];

  return v5;
}

- (void)adjustmentsViewControllerSliderDidEndScrubbing:(id)a3
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];

  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
}

- (void)adjustmentsViewControllerSliderWillBeginScrubbing:(id)a3
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:1];

  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:1];
}

- (id)adjustmentsViewControllerMainContainerView
{
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 toolControllerMainContainerView:self];

  return v4;
}

- (void)adjustmentsViewControllerDidUpdateSelectedControl:(id)a3
{
  v4 = [a3 selectedAdjustmentInfo];
  [(PUAdjustmentsToolController *)self _updateBadgeTextWithInfo:v4];
}

- (void)compositionControllerDidChangeForAdjustments:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v4 compositionControllerDidChangeForAdjustments:a3];
  [(PUAdjustmentsDataSource *)self->_dataSource compositionControllerDidChange];
}

- (void)specDidChange
{
  v2.receiver = self;
  v2.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v2 specDidChange];
}

- (id)viewsActivatingToolControlShadow
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle];

  v5 = [(PUPhotoEditToolController *)self layoutOrientation];
  if (v5 == 3)
  {
    if (v4 == 4)
    {
      v6 = [(PUAdjustmentsViewController *)self->_adjustmentsViewController slider];
      v10 = v6;
      v7 = &v10;
      goto LABEL_6;
    }
  }

  else if (v5 == 2)
  {
    v6 = [(PUAdjustmentsViewController *)self->_adjustmentsViewController slider];
    v11[0] = v6;
    v7 = v11;
LABEL_6:
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

    goto LABEL_8;
  }

  v8 = MEMORY[0x1E695E0F0];
LABEL_8:

  return v8;
}

- (id)viewsActivatingMainToolbarShadow
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle];

  v5 = [(PUPhotoEditToolController *)self layoutOrientation];
  if (v5 == 3)
  {
    if (v4 != 4)
    {
      v6 = [(PUAdjustmentsViewController *)self->_adjustmentsViewController slider];
      v10 = v6;
      v7 = &v10;
      goto LABEL_7;
    }

LABEL_5:
    v8 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    goto LABEL_5;
  }

  v6 = [(PUAdjustmentsViewController *)self->_adjustmentsViewController slider];
  v11[0] = v6;
  v7 = v11;
LABEL_7:
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

LABEL_8:

  return v8;
}

- (id)_indexPathForAdjustmentCategory:(int64_t)a3
{
  v5 = [(PUAdjustmentsToolController *)self dataSource];
  v6 = [v5 numberOfSections];

  if (!v6)
  {
LABEL_18:
    v11 = 0;
    goto LABEL_20;
  }

  v7 = 0;
  v25 = *MEMORY[0x1E69BDF98];
  while (1)
  {
    v8 = [(PUAdjustmentsToolController *)self dataSource];
    v9 = [v8 numberOfItemsInSection:v7];

    if (v9)
    {
      break;
    }

LABEL_17:
    ++v7;
    v22 = [(PUAdjustmentsToolController *)self dataSource];
    v23 = [v22 numberOfSections];

    if (v7 >= v23)
    {
      goto LABEL_18;
    }
  }

  v10 = 0;
  while (1)
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:v7];
    v12 = [(PUAdjustmentsToolController *)self dataSource];
    v13 = [v12 infoForItemAtIndexPath:v11];

    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v14 = [v13 settingKey];
          v15 = [MEMORY[0x1E69BDF70] offsetExposureKey];
          goto LABEL_15;
        }
      }

      else
      {
        v16 = [v13 identifier];
        v17 = [v16 isEqualToString:v25];

        if (v17)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_16;
    }

    if (a3 == 2)
    {
      break;
    }

    if (a3 == 3)
    {
      v14 = [v13 settingKey];
      v15 = [MEMORY[0x1E69BDF90] warmTempKey];
      goto LABEL_15;
    }

LABEL_16:

    ++v10;
    v20 = [(PUAdjustmentsToolController *)self dataSource];
    v21 = [v20 numberOfItemsInSection:v7];

    if (v10 >= v21)
    {
      goto LABEL_17;
    }
  }

  v14 = [v13 settingKey];
  v15 = [MEMORY[0x1E69BDF68] offsetSaturationKey];
LABEL_15:
  v18 = v15;
  v19 = [v14 isEqualToString:v15];

  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:

LABEL_20:

  return v11;
}

- (void)configureForAdjustmentCategory:(int64_t)a3
{
  v4 = [(PUAdjustmentsToolController *)self _indexPathForAdjustmentCategory:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(PUAdjustmentsViewController *)self->_adjustmentsViewController selectAdjustmentInfoAtIndexPath:v4];
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)didBecomeActiveTool
{
  v3 = [(PUAdjustmentsToolController *)self view];
  v4 = [v3 layer];
  [v4 setAllowsGroupOpacity:1];

  v5.receiver = self;
  v5.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v5 didBecomeActiveTool];
}

- (void)_performInitialAction
{
  if ([(PUAdjustmentsToolController *)self initialAction]== 1)
  {
    [(PUAdjustmentsViewController *)self->_adjustmentsViewController toggleAutoEnhance];
  }

  [(PUAdjustmentsToolController *)self setInitialAction:0];
}

- (void)willBecomeActiveTool
{
  v5.receiver = self;
  v5.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v5 willBecomeActiveTool];
  v3 = [(PUAdjustmentsToolController *)self view];
  v4 = [v3 layer];
  [v4 setAllowsGroupOpacity:0];
}

- (void)resetToDefaultValueAnimated:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v3 resetToDefaultValueAnimated:a3];
}

- (BOOL)canResetToDefaultValue
{
  v4 = [(PUPhotoEditToolController *)self delegate];
  v5 = [v4 toolControllerUneditedCompositionController:self];

  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUAdjustmentsToolController.m" lineNumber:353 description:@"Cannot continue without a base composition."];
  }

  return 0;
}

- (id)centerToolbarView
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_TOP_LABEL");
  v4 = [v3 localizedUppercaseString];

  v5 = [v2 photoEditingTopToolbarToolLabelButtonColor];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setText:v4];
  [v6 setTextColor:v5];
  v7 = [v2 topToolbarToolLabelFont];
  [v6 setFont:v7];

  return v6;
}

- (void)_updateBadgeTextWithInfo:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1B8C6D660]();
  v8 = [(PUAdjustmentsToolController *)self badgeView];
  v6 = [v4 localizedName];

  v7 = [v6 localizedUppercaseString];
  if (v5)
  {
    [v8 setText:v7];
  }

  else
  {
    [v8 _setText:v7];

    v8 = [(PUAdjustmentsToolController *)self badgeView];
    [v8 sizeToFit];
  }
}

- (void)setBackdropViewGroupName:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->super._backdropViewGroupName isEqualToString:?])
  {
    v4 = [v6 copy];
    backdropViewGroupName = self->super._backdropViewGroupName;
    self->super._backdropViewGroupName = v4;

    [(_UIBackdropView *)self->_backdropBackgroundView setGroupName:self->super._backdropViewGroupName];
  }
}

- (void)setUseGradientBackground:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_useTranslucentBackground != a3)
  {
    self->_useTranslucentBackground = a3;
  }
}

- (void)reactivate
{
  v3 = [(PUPhotoEditToolController *)self ppt_didBecomeActiveToolBlock];

  if (v3)
  {
    v4 = [(PUPhotoEditToolController *)self ppt_didBecomeActiveToolBlock];
    v4[2]();
  }
}

- (void)_updateToolLabelAppearanceIfNeeded
{
  if (MEMORY[0x1B8C6D660](self, a2))
  {
    v3 = [(PUPhotoEditToolController *)self delegate];
    v14 = [v3 mediaView];

    v4 = self->_badgeView;
    [(UIView *)v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v14 imageFrame];
    v17.origin.x = v6;
    v17.origin.y = v8;
    v17.size.width = v10;
    v17.size.height = v12;
    v13 = CGRectIntersectsRect(v16, v17);
    if (self->_mediaViewIsReady && (!self->_hasSetMediaViewIntersection || self->_mediaViewIntersectsToolLabel != v13))
    {
      self->_mediaViewIntersectsToolLabel = v13;
      self->_hasSetMediaViewIntersection = 1;
      [(UIView *)v4 setStyle:v13];
    }
  }
}

- (void)mediaViewDidEndZooming:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v4 mediaViewDidEndZooming:a3];
  [(PUAdjustmentsToolController *)self _updateToolLabelAppearanceIfNeeded];
}

- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6
{
  v13.receiver = self;
  v13.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v13 setupWithAsset:a3 compositionController:a4 editSource:a5 valuesCalculator:a6];
  v7 = [(PUPhotoEditToolController *)self delegate];
  v8 = [v7 toolControllerSourceAssetType:self];

  v9 = [(PUAdjustmentsToolController *)self dataSource];
  v10 = [(PUPhotoEditToolController *)self compositionController];
  v11 = [(PUPhotoEditToolController *)self valuesCalculator];
  v12 = [(PUAdjustmentsToolController *)self autoAdjustmentController];
  [v9 setupWithCompositionController:v10 valuesCalculator:v11 autoAdjustmentController:v12 assetType:v8];
}

- (void)viewDidLayoutSubviews
{
  v81.receiver = self;
  v81.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v81 viewDidLayoutSubviews];
  v3 = [(PUPhotoEditToolController *)self layoutOrientation];
  v4 = [(PUPhotoEditToolController *)self photoEditSpec];
  v5 = [v4 currentLayoutStyle];

  v6 = [(PUAdjustmentsToolController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (v5 == 4)
  {
    v15 = [(PUPhotoEditToolController *)self toolContainerView];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    if (MEMORY[0x1B8C6D660]())
    {
      v24 = v21 + -9.0;
    }

    else
    {
      v24 = v21;
    }

    [(UIView *)self->_adjustmentPickerView setFrame:v17, v19, v24, v23];
    [(PUAdjustmentsViewController *)self->_adjustmentsViewController setLayoutDirection:1];
    v25 = [(PUPhotoEditToolController *)self toolContainerView];
    [v25 frame];
    MinX = CGRectGetMinX(v82);

    v27 = [(PUPhotoEditToolController *)self toolContainerView];
    v28 = [(PUAdjustmentsToolController *)self view];
    v29 = [v28 window];
    [v29 center];
    v31 = v30;
    v33 = v32;
    v34 = [(PUAdjustmentsToolController *)self view];
    v35 = [v34 window];
    [v27 convertPoint:v35 fromView:{v31, v33}];
    v37 = v36;

    v38 = [(PUPhotoEditToolController *)self toolContainerView];
    [v38 center];

    if (MEMORY[0x1B8C6D660]())
    {
      v39 = 4.0;
    }

    else
    {
      v39 = 6.0;
    }

    v40 = [(PUAdjustmentsToolController *)self badgeView];
    [v40 bounds];
    v42 = MinX + v41 * -0.5 - v39;
  }

  else
  {
    if (v3 != 1)
    {
      v52 = [(PUPhotoEditToolController *)self toolContainerView];
      [v52 bounds];
      [(UIView *)self->_adjustmentPickerView setFrame:?];

      [(PUAdjustmentsViewController *)self->_adjustmentsViewController setLayoutDirection:1];
      v53 = [(PUPhotoEditToolController *)self delegate];
      v51 = [v53 mediaView];

      [v51 center];
      v55 = v54;
      v57 = v56;
      v58 = [v51 superview];
      v59 = [(PUAdjustmentsToolController *)self view];
      [v58 convertPoint:v59 toView:{v55, v57}];
      v61 = v60;

      v62 = [(PUAdjustmentsToolController *)self view];
      [v62 safeAreaInsets];
      v64 = v8 + v63;
      v66 = v10 + v65;
      v68 = v12 - (v63 + v67);
      v70 = v14 - (v65 + v69);

      v84.origin.x = v64;
      v84.origin.y = v66;
      v84.size.width = v68;
      v84.size.height = v70;
      MaxY = CGRectGetMaxY(v84);
      v72 = [(PUAdjustmentsToolController *)self badgeView];
      [v72 bounds];
      v74 = MaxY + v73 * -0.5;

      v75 = [(PUAdjustmentsToolController *)self badgeView];
      [v75 setCenter:{v61, v74}];

      goto LABEL_13;
    }

    [(PUAdjustmentsViewController *)self->_adjustmentsViewController setLayoutDirection:0];
    adjustmentPickerView = self->_adjustmentPickerView;
    v44 = *(MEMORY[0x1E695EFD0] + 16);
    v80[0] = *MEMORY[0x1E695EFD0];
    v80[1] = v44;
    v80[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(UIView *)adjustmentPickerView setTransform:v80];
    v45 = [(PUPhotoEditToolController *)self toolContainerView];
    [v45 frame];
    [(UIView *)self->_adjustmentPickerView setFrame:?];

    v46 = [(PUPhotoEditToolController *)self toolContainerView];
    [v46 bounds];
    UIRectGetCenter();
    [(UIView *)self->_adjustmentPickerView setCenter:?];

    v47 = [(PUPhotoEditToolController *)self toolContainerView];
    [v47 frame];
    MinY = CGRectGetMinY(v83);

    UIRectGetCenter();
    v42 = v49;
    v40 = [(PUAdjustmentsToolController *)self badgeView];
    [v40 bounds];
    v37 = MinY + v50 * -0.5 + 2.0;
  }

  v51 = [(PUAdjustmentsToolController *)self badgeView];
  [v51 setCenter:{v42, v37}];
LABEL_13:

  v76 = [(PUPhotoEditToolController *)self toolContainerView];
  [v76 frame];
  v78 = v77;
  v79 = [(PUPhotoEditToolController *)self toolContainerView];
  [v79 frame];
  [(_UIBackdropView *)self->_backdropBackgroundView setFrame:0.0, 0.0, v78];

  [(PUAdjustmentsToolController *)self _updateToolLabelAppearanceIfNeeded];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4.receiver = self;
  v4.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v4 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v4.receiver = self;
  v4.super_class = PUAdjustmentsToolController;
  [(PUAdjustmentsToolController *)&v4 willTransitionToTraitCollection:a3 withTransitionCoordinator:a4];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v6.receiver = self;
  v6.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v6 traitEnvironment:a3 didChangeTraitCollection:a4];
  v5 = [(PUAdjustmentsViewController *)self->_adjustmentsViewController selectedAdjustmentInfo];
  [(PUAdjustmentsToolController *)self _updateBadgeTextWithInfo:v5];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v6 viewDidAppear:a3];
  if (self->_viewLoadingStartTime >= 1)
  {
    v4 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (mach_absolute_time() - self->_viewLoadingStartTime) / 1000000.0;
      *buf = 134217984;
      v8 = v5;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "PUAdjustmentsToolController loading took: %.3fms", buf, 0xCu);
    }

    self->_viewLoadingStartTime = 0;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v4 viewWillAppear:a3];
  self->_viewLoadingStartTime = mach_absolute_time();
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = PUAdjustmentsToolController;
  [(PUAdjustmentsToolController *)&v26 viewDidLoad];
  v3 = objc_alloc_init(PUAdjustmentsToolControllerSpec);
  [(PUPhotoEditToolController *)self setToolControllerSpec:v3];
  v4 = [(PUPhotoEditToolController *)self toolContainerView];
  v5 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:2030];
  backdropBackgroundView = self->_backdropBackgroundView;
  self->_backdropBackgroundView = v5;

  [(_UIBackdropView *)self->_backdropBackgroundView setHidden:1];
  v7 = [(_UIBackdropView *)self->_backdropBackgroundView layer];
  [v7 setAllowsGroupOpacity:0];

  v8 = [(_UIBackdropView *)self->_backdropBackgroundView groupName];
  backdropViewGroupName = self->super._backdropViewGroupName;
  self->super._backdropViewGroupName = v8;

  [v4 addSubview:self->_backdropBackgroundView];
  [(PUAdjustmentsToolController *)self addChildViewController:self->_adjustmentsViewController];
  v10 = [(PUAdjustmentsViewController *)self->_adjustmentsViewController view];
  adjustmentPickerView = self->_adjustmentPickerView;
  self->_adjustmentPickerView = v10;

  [v4 addSubview:self->_adjustmentPickerView];
  if (MEMORY[0x1B8C6D660]([(PUAdjustmentsViewController *)self->_adjustmentsViewController didMoveToParentViewController:self]))
  {
    v12 = [PUEditBadgeLabel alloc];
    v13 = +[PUInterfaceManager currentTheme];
    v14 = [(PUEditBadgeLabel *)v12 initWithText:0 style:1 interfaceTheme:v13];
  }

  else
  {
    v13 = +[PUInterfaceManager currentTheme];
    v15 = objc_alloc(MEMORY[0x1E6993830]);
    v14 = [v15 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v16 = [v13 photoEditingBadgeViewFillColor];
    [(PUEditBadgeLabel *)v14 _setFillColor:v16];

    v17 = [v13 photoEditingBadgeViewContentColor];
    [(PUEditBadgeLabel *)v14 _setContentColor:v17];

    [(PUEditBadgeLabel *)v14 _setFillCornerRadius:4.0];
    [MEMORY[0x1E6993830] _defaultTextInsets];
    [(PUEditBadgeLabel *)v14 _setTextInsets:v21 + 1.0, v18 + 3.0, v20 + 1.0, v19 + 3.0];
  }

  [(PUAdjustmentsToolController *)self setBadgeView:v14];

  v22 = [(PUAdjustmentsToolController *)self badgeView];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(PUAdjustmentsToolController *)self badgeView];
  [v23 setUserInteractionEnabled:0];

  v24 = [(PUAdjustmentsToolController *)self view];
  v25 = [(PUAdjustmentsToolController *)self badgeView];
  [v24 addSubview:v25];
}

- (PUAdjustmentsToolController)initWithNibName:(id)a3 bundle:(id)a4
{
  v13.receiver = self;
  v13.super_class = PUAdjustmentsToolController;
  v4 = [(PUPhotoEditToolController *)&v13 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(PUAdjustmentsDataSource);
    dataSource = v4->_dataSource;
    v4->_dataSource = v5;

    [(PUAdjustmentsDataSource *)v4->_dataSource setDelegate:v4];
    v7 = objc_alloc_init(PUAdjustmentsViewController);
    adjustmentsViewController = v4->_adjustmentsViewController;
    v4->_adjustmentsViewController = v7;

    [(PUAdjustmentsViewController *)v4->_adjustmentsViewController setDelegate:v4];
    [(PUAdjustmentsViewController *)v4->_adjustmentsViewController setDataSource:v4->_dataSource];
    v9 = objc_alloc_init(MEMORY[0x1E69C4260]);
    autoAdjustmentController = v4->_autoAdjustmentController;
    v4->_autoAdjustmentController = v9;

    v11 = objc_alloc_init(PUAdjustmentsToolControllerSpec);
    [(PUPhotoEditToolController *)v4 setToolControllerSpec:v11];
    v4->_mediaViewIsReady = 0;
    v4->_hasSetMediaViewIntersection = 0;
  }

  return v4;
}

@end