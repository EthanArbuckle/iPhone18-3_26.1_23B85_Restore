@interface PUAdjustmentsToolController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canResetToDefaultValue;
- (PUAdjustmentsToolController)initWithNibName:(id)name bundle:(id)bundle;
- (double)_sliderLength;
- (id)_indexPathForAdjustmentCategory:(int64_t)category;
- (id)adjustmentsRenderer:(id)renderer;
- (id)adjustmentsViewControllerMainContainerView;
- (id)centerToolbarView;
- (id)viewsActivatingMainToolbarShadow;
- (id)viewsActivatingToolControlShadow;
- (void)_performInitialAction;
- (void)_ppt_scrollAfterDelay:(id)delay;
- (void)_updateBadgeTextWithInfo:(id)info;
- (void)_updateToolLabelAppearanceIfNeeded;
- (void)adjustmentsViewControllerDidUpdateSelectedControl:(id)control;
- (void)adjustmentsViewControllerSliderDidEndScrubbing:(id)scrubbing;
- (void)adjustmentsViewControllerSliderWillBeginScrubbing:(id)scrubbing;
- (void)autoEnhanceActionStateChanged;
- (void)compositionControllerDidChangeForAdjustments:(id)adjustments;
- (void)configureForAdjustmentCategory:(int64_t)category;
- (void)didBecomeActiveTool;
- (void)mediaViewDidEndZooming:(id)zooming;
- (void)ppt_selectSliderNamed:(id)named completion:(id)completion;
- (void)reactivate;
- (void)resetToDefaultValueAnimated:(BOOL)animated;
- (void)setBackdropViewGroupName:(id)name;
- (void)setUseGradientBackground:(BOOL)background animated:(BOOL)animated;
- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator;
- (void)specDidChange;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willBecomeActiveTool;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation PUAdjustmentsToolController

- (void)_ppt_scrollAfterDelay:(id)delay
{
  delayCopy = delay;
  v4 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PUAdjustmentsToolController__ppt_scrollAfterDelay___block_invoke;
  block[3] = &unk_1E7B80C88;
  v7 = delayCopy;
  v5 = delayCopy;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

- (void)ppt_selectSliderNamed:(id)named completion:(id)completion
{
  namedCopy = named;
  completionCopy = completion;
  dataSource = [(PUAdjustmentsToolController *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    dataSource2 = [(PUAdjustmentsToolController *)self dataSource];
    numberOfItemsInAllSections = [dataSource2 numberOfItemsInAllSections];

    if ((numberOfItemsInAllSections & 0x8000000000000000) == 0)
    {
      v12 = numberOfItemsInAllSections + 1;
      goto LABEL_5;
    }
  }

  else
  {
    v12 = 21;
LABEL_5:
    while (1)
    {
      selectedAdjustmentInfo = [(PUAdjustmentsViewController *)self->_adjustmentsViewController selectedAdjustmentInfo];
      localizedName = [selectedAdjustmentInfo localizedName];
      v15 = [localizedName caseInsensitiveCompare:namedCopy];

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

    if (completionCopy)
    {
      v16 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__PUAdjustmentsToolController_ppt_selectSliderNamed_completion___block_invoke;
      block[3] = &unk_1E7B80C88;
      v18 = completionCopy;
      dispatch_after(v16, MEMORY[0x1E69E96A0], block);
    }
  }

LABEL_10:
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == sel_autoEnhanceAssets_)
  {
    v4 = MEMORY[0x1E69C4260];
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    [v4 isAutoEnhanceEnabledForCompositionController:compositionController];

    v6 = PXLocalizedString();
    [commandCopy setTitle:v6];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_autoEnhanceAssets_ == action)
  {
    autoAdjustmentController = [(PUAdjustmentsToolController *)self autoAdjustmentController];
    v4 = [autoAdjustmentController isBusy] ^ 1;
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
  toolControllerSpec = [(PUPhotoEditToolController *)self toolControllerSpec];
  [toolControllerSpec sliderLength];
  v4 = v3;

  return v4;
}

- (void)autoEnhanceActionStateChanged
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate updateProgressIndicatorAnimated:1];
}

- (id)adjustmentsRenderer:(id)renderer
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  v5 = [delegate toolControllerMainRenderer:self];

  return v5;
}

- (void)adjustmentsViewControllerSliderDidEndScrubbing:(id)scrubbing
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];

  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
}

- (void)adjustmentsViewControllerSliderWillBeginScrubbing:(id)scrubbing
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:1];

  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:1];
}

- (id)adjustmentsViewControllerMainContainerView
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  v4 = [delegate toolControllerMainContainerView:self];

  return v4;
}

- (void)adjustmentsViewControllerDidUpdateSelectedControl:(id)control
{
  selectedAdjustmentInfo = [control selectedAdjustmentInfo];
  [(PUAdjustmentsToolController *)self _updateBadgeTextWithInfo:selectedAdjustmentInfo];
}

- (void)compositionControllerDidChangeForAdjustments:(id)adjustments
{
  v4.receiver = self;
  v4.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v4 compositionControllerDidChangeForAdjustments:adjustments];
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
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
  if (layoutOrientation == 3)
  {
    if (currentLayoutStyle == 4)
    {
      slider = [(PUAdjustmentsViewController *)self->_adjustmentsViewController slider];
      v10 = slider;
      v7 = &v10;
      goto LABEL_6;
    }
  }

  else if (layoutOrientation == 2)
  {
    slider = [(PUAdjustmentsViewController *)self->_adjustmentsViewController slider];
    v11[0] = slider;
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
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
  if (layoutOrientation == 3)
  {
    if (currentLayoutStyle != 4)
    {
      slider = [(PUAdjustmentsViewController *)self->_adjustmentsViewController slider];
      v10 = slider;
      v7 = &v10;
      goto LABEL_7;
    }

LABEL_5:
    v8 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  if (layoutOrientation != 1)
  {
    goto LABEL_5;
  }

  slider = [(PUAdjustmentsViewController *)self->_adjustmentsViewController slider];
  v11[0] = slider;
  v7 = v11;
LABEL_7:
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

LABEL_8:

  return v8;
}

- (id)_indexPathForAdjustmentCategory:(int64_t)category
{
  dataSource = [(PUAdjustmentsToolController *)self dataSource];
  numberOfSections = [dataSource numberOfSections];

  if (!numberOfSections)
  {
LABEL_18:
    v11 = 0;
    goto LABEL_20;
  }

  v7 = 0;
  v25 = *MEMORY[0x1E69BDF98];
  while (1)
  {
    dataSource2 = [(PUAdjustmentsToolController *)self dataSource];
    v9 = [dataSource2 numberOfItemsInSection:v7];

    if (v9)
    {
      break;
    }

LABEL_17:
    ++v7;
    dataSource3 = [(PUAdjustmentsToolController *)self dataSource];
    numberOfSections2 = [dataSource3 numberOfSections];

    if (v7 >= numberOfSections2)
    {
      goto LABEL_18;
    }
  }

  v10 = 0;
  while (1)
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:v7];
    dataSource4 = [(PUAdjustmentsToolController *)self dataSource];
    v13 = [dataSource4 infoForItemAtIndexPath:v11];

    if (category <= 1)
    {
      if (category)
      {
        if (category == 1)
        {
          settingKey = [v13 settingKey];
          offsetExposureKey = [MEMORY[0x1E69BDF70] offsetExposureKey];
          goto LABEL_15;
        }
      }

      else
      {
        identifier = [v13 identifier];
        v17 = [identifier isEqualToString:v25];

        if (v17)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_16;
    }

    if (category == 2)
    {
      break;
    }

    if (category == 3)
    {
      settingKey = [v13 settingKey];
      offsetExposureKey = [MEMORY[0x1E69BDF90] warmTempKey];
      goto LABEL_15;
    }

LABEL_16:

    ++v10;
    dataSource5 = [(PUAdjustmentsToolController *)self dataSource];
    v21 = [dataSource5 numberOfItemsInSection:v7];

    if (v10 >= v21)
    {
      goto LABEL_17;
    }
  }

  settingKey = [v13 settingKey];
  offsetExposureKey = [MEMORY[0x1E69BDF68] offsetSaturationKey];
LABEL_15:
  v18 = offsetExposureKey;
  v19 = [settingKey isEqualToString:offsetExposureKey];

  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:

LABEL_20:

  return v11;
}

- (void)configureForAdjustmentCategory:(int64_t)category
{
  v4 = [(PUAdjustmentsToolController *)self _indexPathForAdjustmentCategory:category];
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
  view = [(PUAdjustmentsToolController *)self view];
  layer = [view layer];
  [layer setAllowsGroupOpacity:1];

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
  view = [(PUAdjustmentsToolController *)self view];
  layer = [view layer];
  [layer setAllowsGroupOpacity:0];
}

- (void)resetToDefaultValueAnimated:(BOOL)animated
{
  v3.receiver = self;
  v3.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v3 resetToDefaultValueAnimated:animated];
}

- (BOOL)canResetToDefaultValue
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  v5 = [delegate toolControllerUneditedCompositionController:self];

  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAdjustmentsToolController.m" lineNumber:353 description:@"Cannot continue without a base composition."];
  }

  return 0;
}

- (id)centerToolbarView
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_TOP_LABEL");
  localizedUppercaseString = [v3 localizedUppercaseString];

  photoEditingTopToolbarToolLabelButtonColor = [v2 photoEditingTopToolbarToolLabelButtonColor];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setText:localizedUppercaseString];
  [v6 setTextColor:photoEditingTopToolbarToolLabelButtonColor];
  topToolbarToolLabelFont = [v2 topToolbarToolLabelFont];
  [v6 setFont:topToolbarToolLabelFont];

  return v6;
}

- (void)_updateBadgeTextWithInfo:(id)info
{
  infoCopy = info;
  v5 = MEMORY[0x1B8C6D660]();
  badgeView = [(PUAdjustmentsToolController *)self badgeView];
  localizedName = [infoCopy localizedName];

  localizedUppercaseString = [localizedName localizedUppercaseString];
  if (v5)
  {
    [badgeView setText:localizedUppercaseString];
  }

  else
  {
    [badgeView _setText:localizedUppercaseString];

    badgeView = [(PUAdjustmentsToolController *)self badgeView];
    [badgeView sizeToFit];
  }
}

- (void)setBackdropViewGroupName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->super._backdropViewGroupName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    backdropViewGroupName = self->super._backdropViewGroupName;
    self->super._backdropViewGroupName = v4;

    [(_UIBackdropView *)self->_backdropBackgroundView setGroupName:self->super._backdropViewGroupName];
  }
}

- (void)setUseGradientBackground:(BOOL)background animated:(BOOL)animated
{
  if (self->_useTranslucentBackground != background)
  {
    self->_useTranslucentBackground = background;
  }
}

- (void)reactivate
{
  ppt_didBecomeActiveToolBlock = [(PUPhotoEditToolController *)self ppt_didBecomeActiveToolBlock];

  if (ppt_didBecomeActiveToolBlock)
  {
    ppt_didBecomeActiveToolBlock2 = [(PUPhotoEditToolController *)self ppt_didBecomeActiveToolBlock];
    ppt_didBecomeActiveToolBlock2[2]();
  }
}

- (void)_updateToolLabelAppearanceIfNeeded
{
  if (MEMORY[0x1B8C6D660](self, a2))
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    mediaView = [delegate mediaView];

    v4 = self->_badgeView;
    [(UIView *)v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [mediaView imageFrame];
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

- (void)mediaViewDidEndZooming:(id)zooming
{
  v4.receiver = self;
  v4.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v4 mediaViewDidEndZooming:zooming];
  [(PUAdjustmentsToolController *)self _updateToolLabelAppearanceIfNeeded];
}

- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator
{
  v13.receiver = self;
  v13.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v13 setupWithAsset:asset compositionController:controller editSource:source valuesCalculator:calculator];
  delegate = [(PUPhotoEditToolController *)self delegate];
  v8 = [delegate toolControllerSourceAssetType:self];

  dataSource = [(PUAdjustmentsToolController *)self dataSource];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  valuesCalculator = [(PUPhotoEditToolController *)self valuesCalculator];
  autoAdjustmentController = [(PUAdjustmentsToolController *)self autoAdjustmentController];
  [dataSource setupWithCompositionController:compositionController valuesCalculator:valuesCalculator autoAdjustmentController:autoAdjustmentController assetType:v8];
}

- (void)viewDidLayoutSubviews
{
  v81.receiver = self;
  v81.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v81 viewDidLayoutSubviews];
  layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  view = [(PUAdjustmentsToolController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (currentLayoutStyle == 4)
  {
    toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
    [toolContainerView bounds];
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
    toolContainerView2 = [(PUPhotoEditToolController *)self toolContainerView];
    [toolContainerView2 frame];
    MinX = CGRectGetMinX(v82);

    toolContainerView3 = [(PUPhotoEditToolController *)self toolContainerView];
    view2 = [(PUAdjustmentsToolController *)self view];
    window = [view2 window];
    [window center];
    v31 = v30;
    v33 = v32;
    view3 = [(PUAdjustmentsToolController *)self view];
    window2 = [view3 window];
    [toolContainerView3 convertPoint:window2 fromView:{v31, v33}];
    v37 = v36;

    toolContainerView4 = [(PUPhotoEditToolController *)self toolContainerView];
    [toolContainerView4 center];

    if (MEMORY[0x1B8C6D660]())
    {
      v39 = 4.0;
    }

    else
    {
      v39 = 6.0;
    }

    badgeView = [(PUAdjustmentsToolController *)self badgeView];
    [badgeView bounds];
    v42 = MinX + v41 * -0.5 - v39;
  }

  else
  {
    if (layoutOrientation != 1)
    {
      toolContainerView5 = [(PUPhotoEditToolController *)self toolContainerView];
      [toolContainerView5 bounds];
      [(UIView *)self->_adjustmentPickerView setFrame:?];

      [(PUAdjustmentsViewController *)self->_adjustmentsViewController setLayoutDirection:1];
      delegate = [(PUPhotoEditToolController *)self delegate];
      mediaView = [delegate mediaView];

      [mediaView center];
      v55 = v54;
      v57 = v56;
      superview = [mediaView superview];
      view4 = [(PUAdjustmentsToolController *)self view];
      [superview convertPoint:view4 toView:{v55, v57}];
      v61 = v60;

      view5 = [(PUAdjustmentsToolController *)self view];
      [view5 safeAreaInsets];
      v64 = v8 + v63;
      v66 = v10 + v65;
      v68 = v12 - (v63 + v67);
      v70 = v14 - (v65 + v69);

      v84.origin.x = v64;
      v84.origin.y = v66;
      v84.size.width = v68;
      v84.size.height = v70;
      MaxY = CGRectGetMaxY(v84);
      badgeView2 = [(PUAdjustmentsToolController *)self badgeView];
      [badgeView2 bounds];
      v74 = MaxY + v73 * -0.5;

      badgeView3 = [(PUAdjustmentsToolController *)self badgeView];
      [badgeView3 setCenter:{v61, v74}];

      goto LABEL_13;
    }

    [(PUAdjustmentsViewController *)self->_adjustmentsViewController setLayoutDirection:0];
    adjustmentPickerView = self->_adjustmentPickerView;
    v44 = *(MEMORY[0x1E695EFD0] + 16);
    v80[0] = *MEMORY[0x1E695EFD0];
    v80[1] = v44;
    v80[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(UIView *)adjustmentPickerView setTransform:v80];
    toolContainerView6 = [(PUPhotoEditToolController *)self toolContainerView];
    [toolContainerView6 frame];
    [(UIView *)self->_adjustmentPickerView setFrame:?];

    toolContainerView7 = [(PUPhotoEditToolController *)self toolContainerView];
    [toolContainerView7 bounds];
    UIRectGetCenter();
    [(UIView *)self->_adjustmentPickerView setCenter:?];

    toolContainerView8 = [(PUPhotoEditToolController *)self toolContainerView];
    [toolContainerView8 frame];
    MinY = CGRectGetMinY(v83);

    UIRectGetCenter();
    v42 = v49;
    badgeView = [(PUAdjustmentsToolController *)self badgeView];
    [badgeView bounds];
    v37 = MinY + v50 * -0.5 + 2.0;
  }

  mediaView = [(PUAdjustmentsToolController *)self badgeView];
  [mediaView setCenter:{v42, v37}];
LABEL_13:

  toolContainerView9 = [(PUPhotoEditToolController *)self toolContainerView];
  [toolContainerView9 frame];
  v78 = v77;
  toolContainerView10 = [(PUPhotoEditToolController *)self toolContainerView];
  [toolContainerView10 frame];
  [(_UIBackdropView *)self->_backdropBackgroundView setFrame:0.0, 0.0, v78];

  [(PUAdjustmentsToolController *)self _updateToolLabelAppearanceIfNeeded];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4.receiver = self;
  v4.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v4 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v4.receiver = self;
  v4.super_class = PUAdjustmentsToolController;
  [(PUAdjustmentsToolController *)&v4 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  v6.receiver = self;
  v6.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v6 traitEnvironment:environment didChangeTraitCollection:collection];
  selectedAdjustmentInfo = [(PUAdjustmentsViewController *)self->_adjustmentsViewController selectedAdjustmentInfo];
  [(PUAdjustmentsToolController *)self _updateBadgeTextWithInfo:selectedAdjustmentInfo];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v6 viewDidAppear:appear];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUAdjustmentsToolController;
  [(PUPhotoEditToolController *)&v4 viewWillAppear:appear];
  self->_viewLoadingStartTime = mach_absolute_time();
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = PUAdjustmentsToolController;
  [(PUAdjustmentsToolController *)&v26 viewDidLoad];
  v3 = objc_alloc_init(PUAdjustmentsToolControllerSpec);
  [(PUPhotoEditToolController *)self setToolControllerSpec:v3];
  toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
  v5 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:2030];
  backdropBackgroundView = self->_backdropBackgroundView;
  self->_backdropBackgroundView = v5;

  [(_UIBackdropView *)self->_backdropBackgroundView setHidden:1];
  layer = [(_UIBackdropView *)self->_backdropBackgroundView layer];
  [layer setAllowsGroupOpacity:0];

  groupName = [(_UIBackdropView *)self->_backdropBackgroundView groupName];
  backdropViewGroupName = self->super._backdropViewGroupName;
  self->super._backdropViewGroupName = groupName;

  [toolContainerView addSubview:self->_backdropBackgroundView];
  [(PUAdjustmentsToolController *)self addChildViewController:self->_adjustmentsViewController];
  view = [(PUAdjustmentsViewController *)self->_adjustmentsViewController view];
  adjustmentPickerView = self->_adjustmentPickerView;
  self->_adjustmentPickerView = view;

  [toolContainerView addSubview:self->_adjustmentPickerView];
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
    photoEditingBadgeViewFillColor = [v13 photoEditingBadgeViewFillColor];
    [(PUEditBadgeLabel *)v14 _setFillColor:photoEditingBadgeViewFillColor];

    photoEditingBadgeViewContentColor = [v13 photoEditingBadgeViewContentColor];
    [(PUEditBadgeLabel *)v14 _setContentColor:photoEditingBadgeViewContentColor];

    [(PUEditBadgeLabel *)v14 _setFillCornerRadius:4.0];
    [MEMORY[0x1E6993830] _defaultTextInsets];
    [(PUEditBadgeLabel *)v14 _setTextInsets:v21 + 1.0, v18 + 3.0, v20 + 1.0, v19 + 3.0];
  }

  [(PUAdjustmentsToolController *)self setBadgeView:v14];

  badgeView = [(PUAdjustmentsToolController *)self badgeView];
  [badgeView setTranslatesAutoresizingMaskIntoConstraints:0];

  badgeView2 = [(PUAdjustmentsToolController *)self badgeView];
  [badgeView2 setUserInteractionEnabled:0];

  view2 = [(PUAdjustmentsToolController *)self view];
  badgeView3 = [(PUAdjustmentsToolController *)self badgeView];
  [view2 addSubview:badgeView3];
}

- (PUAdjustmentsToolController)initWithNibName:(id)name bundle:(id)bundle
{
  v13.receiver = self;
  v13.super_class = PUAdjustmentsToolController;
  v4 = [(PUPhotoEditToolController *)&v13 initWithNibName:name bundle:bundle];
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