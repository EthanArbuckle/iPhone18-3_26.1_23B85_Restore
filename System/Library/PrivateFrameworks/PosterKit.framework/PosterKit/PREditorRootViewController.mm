@interface PREditorRootViewController
- (BOOL)_shouldShowQuickActionEditing;
- (BOOL)shouldFixTitleBetweenTransitionFromTitleStyleConfiguration:(id)configuration toTitleStyleConfiguration:(id)styleConfiguration extensionBundleURL:(id)l;
- (CGPoint)scrollContentOffsetForLook:(id)look;
- (CGPoint)scrollContentOffsetForLookAtIndex:(unint64_t)index;
- (CGRect)_titleViewFrame;
- (CGRect)frameForPageAtLookIndex:(unint64_t)index;
- (CGRect)frameForPageAtViewIndex:(unint64_t)index;
- (NSString)description;
- (PREditor)editor;
- (UIEdgeInsets)editingChromeDodgingInsets;
- (UIEdgeInsets)overlaySafeAreaInsets;
- (UIEdgeInsets)topButtonsEdgeInsets;
- (double)_maximumAdaptiveTimeTextHeight;
- (double)_minimumAdaptiveTimeTextHeight;
- (id)_makeOverlayHostingScene;
- (id)_viewsForMenuElements:(id)elements;
- (id)beginTransitionToLook:(id)look method:(int64_t)method;
- (id)configuredProperties;
- (id)currentLook;
- (id)defaultTitleStyleConfigurationForLook:(id)look;
- (id)effectiveTitleStyleConfigurationForLook:(id)look;
- (id)extensionBundleURL;
- (id)imageForDepthEffectActionTopLevelAction:(BOOL)action;
- (id)lookAtScrollContentOffset:(CGPoint)offset fractionOfDistanceThroughLook:(double *)look;
- (id)makeComplicationHostingSceneWithSpecification:(id)specification;
- (id)makeComplicationsHostingScene;
- (id)makeQuickActionsHostingScene;
- (id)makeQuickActionsHostingSceneWithSpecification:(id)specification;
- (id)viewForMenuElementIdentifier:(id)identifier;
- (unint64_t)backgroundTypeForLook:(id)look;
- (unint64_t)lookIndexForContentOffset:(CGPoint)offset;
- (unint64_t)lookIndexForViewIndex:(unint64_t)index;
- (unint64_t)viewIndexForLookIndex:(unint64_t)index;
- (void)_setNeedsEditingElementsVisibilityUpdate;
- (void)_setOverlayHostViewController:(id)controller insertingAboveSubview:(id)subview;
- (void)_setVibrancyConfiguration:(id)configuration;
- (void)_titleViewResizeGestureDidUpdate:(id)update;
- (void)_updateAdditionalControlsLayout;
- (void)_updateBottomControlsYConstraint;
- (void)_updateButtonLayout;
- (void)_updateComplicationRowReticleWithOffset:(double)offset animated:(BOOL)animated;
- (void)_updateComplicationSidebarEmptyViewVisibilityAnimated:(BOOL)animated;
- (void)_updateComplicationsVibrancyFromCurrentLook;
- (void)_updateDesiredTimeStretchInEditor;
- (void)_updateEditingElementsVisibilityIfNeeded;
- (void)_updateForDesiredTimeMaxHeight:(double)height orientation:(int64_t)orientation;
- (void)_updateMenuElements;
- (void)_updateOverlayHostViewControllerLuminanceFromCurrentLook;
- (void)_updateReticleViewFramesWithOffset:(double)offset;
- (void)_updateScrollViewContentSize;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)currentLookDidChange;
- (void)dateProvider:(id)provider didUpdateDate:(id)date;
- (void)depthEffectEnablementDidChange;
- (void)didFinishTransitionToLook:(id)look;
- (void)didTransitionToLook:(id)look method:(int64_t)method progress:(double)progress;
- (void)disconnect;
- (void)enumerateTimeViewControllersUsingBlock:(id)block;
- (void)forciblyFinishLookTransition;
- (void)invalidate;
- (void)layoutAdditionalControls;
- (void)layoutConfirmationButtons;
- (void)layoutLookMenuButton;
- (void)loadView;
- (void)lookBackgroundTypesDidChange;
- (void)lookPropertiesDidChange;
- (void)looksDidChange;
- (void)looksWillChange;
- (void)modalPresentationDismissGestureDidFire:(id)fire;
- (void)pageControlCurrentPageDidChange:(id)change;
- (void)reconnect;
- (void)requireGestureRecognizerToFailForLooksScroll:(id)scroll;
- (void)scrollToLook:(id)look animated:(BOOL)animated;
- (void)scrollToLookAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)scrollViewDidEndScrolling:(id)scrolling;
- (void)scrollViewDidScroll:(id)scroll withContext:(id *)context;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setAllUserInteractionDisabledExceptForCancelButton:(BOOL)button;
- (void)setComplicationRowAtBottom:(BOOL)bottom;
- (void)setComplicationSidebarConfigured:(BOOL)configured;
- (void)setComplicationsRowConfigured:(BOOL)configured;
- (void)setContentOverlayView:(id)view;
- (void)setControlsHidden:(BOOL)hidden;
- (void)setDepthEffectDisabled:(BOOL)disabled;
- (void)setFocusedComplicationElement:(int64_t)element;
- (void)setFocusedQuickActionPosition:(int64_t)position;
- (void)setHostedContentSettings:(id)settings;
- (void)setLooks:(id)looks forUpdatingProperties:(BOOL)properties;
- (void)setNeedsReticleVisibilityUpdate;
- (void)setOverlayHostViewController:(id)controller;
- (void)setOverrideUserInterfaceStyle:(int64_t)style;
- (void)setPresentingComplicationGallery:(BOOL)gallery;
- (void)setPresentingModalViewController:(BOOL)controller;
- (void)setSubtitleHidden:(BOOL)hidden;
- (void)setTimeResizeLookSwitchingDisableAssertion:(id)assertion;
- (void)setTitleReticleActive:(BOOL)active;
- (void)setTopButtonsEdgeInsets:(UIEdgeInsets)insets;
- (void)setTopButtonsHidden:(BOOL)hidden;
- (void)setUsesEditingLayout:(BOOL)layout;
- (void)setupAdditionalControls;
- (void)setupConfirmationButtons;
- (void)setupLookMenuButton;
- (void)titleViewTapped:(id)tapped;
- (void)traitCollectionDidChange:(id)change;
- (void)updateForChangedOverrideDate;
- (void)updateForChangedTitleString;
- (void)updateForDesiredTimeMaxY:(double)y orientation:(int64_t)orientation;
- (void)updateLookMenu;
- (void)updateOverlayHostViewControllerVisibility;
- (void)updateReticleViewFrames;
- (void)updateReticleVisibilityIfNeeded;
- (void)updateTimeControllersForLookMap;
- (void)updateTopButtonAlpha;
- (void)updateTopButtonsLayoutWithLeadingTopButtonFrame:(CGRect)frame trailingTopButtonFrame:(CGRect)buttonFrame;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PREditorRootViewController

- (void)setOverrideUserInterfaceStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = PREditorRootViewController;
  [(PREditorRootViewController *)&v5 setOverrideUserInterfaceStyle:?];
  [(PRComplicationSceneHostViewController *)self->_complicationHostViewController setOverrideUserInterfaceStyle:style];
  [(PRQuickActionsSceneHostViewController *)self->_quickActionsHostViewController setOverrideUserInterfaceStyle:style];
  [(PROverlaySceneHostViewController *)self->_overlayHostViewController setOverrideUserInterfaceStyle:style];
}

- (void)invalidate
{
  [(PRComplicationSceneHostViewController *)self->_complicationHostViewController invalidate];
  quickActionsHostViewController = self->_quickActionsHostViewController;

  [(PRQuickActionsSceneHostViewController *)quickActionsHostViewController invalidate];
}

- (void)setupAdditionalControls
{
  v20 = *MEMORY[0x1E69E9840];
  view = [(PREditorRootViewController *)self view];
  editor = [(PREditorRootViewController *)self editor];
  delegate = [editor delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate additionalControlsForEditor:editor];
    v7 = v6;
    if (v6 && [v6 count])
    {
      if ([v7 count] < 2)
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v10 = v7;
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [view addSubview:{*(*(&v15 + 1) + 8 * v14++), v15}];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v12);
        }

        v9 = v10;
        goto LABEL_11;
      }

      v8 = PRLogEditing();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PREditorRootViewController setupAdditionalControls];
      }
    }

    else
    {
      v8 = PRLogEditing();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PREditorRootViewController setupAdditionalControls];
      }
    }

    v9 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:
  [(PREditorRootViewController *)self setAdditionalControls:v9, v15];
}

- (void)layoutAdditionalControls
{
  v21[4] = *MEMORY[0x1E69E9840];
  additionalControls = [(PREditorRootViewController *)self additionalControls];
  v4 = additionalControls;
  if (additionalControls && [additionalControls count])
  {
    view = [(PREditorRootViewController *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    v6 = [v4 objectAtIndex:0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = MEMORY[0x1E696ACD8];
    topAnchor = [v6 topAnchor];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:22.0];
    v21[0] = v17;
    leadingAnchor = [v6 leadingAnchor];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:44.0];
    v21[1] = v7;
    widthAnchor = [v6 widthAnchor];
    widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
    v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.25];
    v21[2] = v10;
    heightAnchor = [v6 heightAnchor];
    v12 = [heightAnchor constraintEqualToConstant:50.0];
    v21[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
    [v15 activateConstraints:v13];
  }
}

- (void)setupConfirmationButtons
{
  editor = [(PREditorRootViewController *)self editor];
  if (([editor _cancelAndAcceptButtonsRequireNavigationBar] & 1) == 0)
  {
    delegate = [editor delegate];
    objc_initWeak(&location, self);
    if (PUIFeatureEnabled())
    {
      v5 = objc_alloc_init(MEMORY[0x1E69C5650]);
      confirmationButtonsContainerView = self->_confirmationButtonsContainerView;
      self->_confirmationButtonsContainerView = v5;

      view2 = v5;
      layer = [(PUITouchPassThroughView *)view2 layer];
      [layer setName:@"confirmationButtonsContainerView"];

      [(PUITouchPassThroughView *)view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PUITouchPassThroughView *)view2 pui_setGlassGroupBackground];
      view = [(PREditorRootViewController *)self view];
      [view addSubview:view2];

      v10 = 5;
      v11 = 5;
    }

    else
    {
      view2 = [(PREditorRootViewController *)self view];
      v10 = PREditingSupportsLiveBlurs() ^ 1;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate prefersSimpleButtonAppearanceForEditor:editor])
      {
        v10 = 1;
      }

      v11 = 2;
    }

    v12 = [PREditingCancelButton alloc];
    v13 = MEMORY[0x1E69DC628];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __54__PREditorRootViewController_setupConfirmationButtons__block_invoke;
    v29[3] = &unk_1E7843448;
    objc_copyWeak(&v30, &location);
    v14 = [v13 actionWithHandler:v29];
    v15 = *MEMORY[0x1E695F058];
    v16 = *(MEMORY[0x1E695F058] + 8);
    v17 = *(MEMORY[0x1E695F058] + 16);
    v18 = *(MEMORY[0x1E695F058] + 24);
    v19 = [(PREditingButton *)v12 initWithStyle:v10 frame:v14 primaryAction:*MEMORY[0x1E695F058], v16, v17, v18];

    [(PUITouchPassThroughView *)view2 addSubview:v19];
    v20 = objc_opt_class();
    editor2 = [(PREditorRootViewController *)self editor];
    acceptButtonType = [editor2 acceptButtonType];

    if (acceptButtonType == 1 || acceptButtonType == 2)
    {
      v20 = objc_opt_class();
    }

    v23 = [v20 alloc];
    v24 = MEMORY[0x1E69DC628];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __54__PREditorRootViewController_setupConfirmationButtons__block_invoke_2;
    v27[3] = &unk_1E7843448;
    objc_copyWeak(&v28, &location);
    v25 = [v24 actionWithHandler:v27];
    v26 = [v23 initWithStyle:v11 frame:v25 primaryAction:{v15, v16, v17, v18}];

    [(PUITouchPassThroughView *)view2 addSubview:v26];
    [(PREditingButton *)v19 setLegibilityShadowEnabled:1];
    [(PREditingCancelButton *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditingCancelButton *)v19 setAccessibilityIdentifier:@"editing-cancel"];
    [v26 setLegibilityShadowEnabled:1];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v26 setAccessibilityIdentifier:@"editing-done"];
    [(PREditorRootViewController *)self setCancelButton:v19];
    [(PREditorRootViewController *)self setAcceptButton:v26];
    [(PREditorRootViewController *)self updateTopButtonAlpha];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);

    objc_destroyWeak(&location);
  }
}

void __54__PREditorRootViewController_setupConfirmationButtons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained editor];

  [v2 requestDismissalWithAction:0];
}

void __54__PREditorRootViewController_setupConfirmationButtons__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained editor];

  [v2 requestDismissalWithAction:1];
}

- (void)layoutConfirmationButtons
{
  v73[4] = *MEMORY[0x1E69E9840];
  editor = [(PREditorRootViewController *)self editor];
  _cancelAndAcceptButtonsRequireNavigationBar = [editor _cancelAndAcceptButtonsRequireNavigationBar];

  if (_cancelAndAcceptButtonsRequireNavigationBar)
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc(MEMORY[0x1E69DC708]);
    v6 = MEMORY[0x1E69DC628];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __55__PREditorRootViewController_layoutConfirmationButtons__block_invoke;
    v69[3] = &unk_1E7843448;
    objc_copyWeak(&v70, &location);
    v7 = [v6 actionWithHandler:v69];
    v8 = [v5 initWithBarButtonSystemItem:1 primaryAction:v7];

    [v8 setAccessibilityIdentifier:@"editing-cancel"];
    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = MEMORY[0x1E69DC628];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __55__PREditorRootViewController_layoutConfirmationButtons__block_invoke_2;
    v67[3] = &unk_1E7843448;
    objc_copyWeak(&v68, &location);
    v11 = [v10 actionWithHandler:v67];
    v12 = [v9 initWithBarButtonSystemItem:0 primaryAction:v11];

    [v12 setAccessibilityIdentifier:@"editing-done"];
    navigationItem = [(PREditorRootViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v8];

    navigationItem2 = [(PREditorRootViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v12];

    objc_destroyWeak(&v68);
    objc_destroyWeak(&v70);
    objc_destroyWeak(&location);
  }

  else
  {
    view = [(PREditorRootViewController *)self view];
    cancelButton = [(PREditorRootViewController *)self cancelButton];
    acceptButton = [(PREditorRootViewController *)self acceptButton];
    pageControl = [(PREditorRootViewController *)self pageControl];
    editor2 = [(PREditorRootViewController *)self editor];
    editingIdiom = [editor2 editingIdiom];

    if (editingIdiom == 2)
    {
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      v59 = MEMORY[0x1E696ACD8];
      heightAnchor = [cancelButton heightAnchor];
      v60 = [heightAnchor constraintEqualToConstant:50.0];
      v73[0] = v60;
      widthAnchor = [cancelButton widthAnchor];
      widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
      v19 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.2];
      v73[1] = v19;
      heightAnchor2 = [acceptButton heightAnchor];
      v21 = [heightAnchor2 constraintEqualToConstant:50.0];
      v73[2] = v21;
      widthAnchor3 = [acceptButton widthAnchor];
      widthAnchor4 = [safeAreaLayoutGuide widthAnchor];
      v24 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.2];
      v73[3] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
      [v59 activateConstraints:v25];

      trailingAnchor = [cancelButton trailingAnchor];
      leadingAnchor = [acceptButton leadingAnchor];
      v28 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-22.0];

      centerYAnchor = [cancelButton centerYAnchor];
      centerYAnchor2 = [pageControl centerYAnchor];
      v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

      trailingAnchor2 = [acceptButton trailingAnchor];
      safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
      trailingAnchor3 = [safeAreaLayoutGuide2 trailingAnchor];
      v35 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-22.0];

      centerYAnchor3 = [acceptButton centerYAnchor];
      centerYAnchor4 = [pageControl centerYAnchor];
      v38 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    }

    else
    {
      if (PUIFeatureEnabled())
      {
        v39 = self->_confirmationButtonsContainerView;
        v40 = MEMORY[0x1E696ACD8];
        v41 = [view pui_constraintsPinningSubview:v39 toEdges:15];
        [v40 activateConstraints:v41];
      }

      else
      {
        v39 = view;
      }

      [(PREditorRootViewController *)self topButtonsEdgeInsets];
      v43 = v42;
      v45 = v44;
      leadingAnchor2 = [cancelButton leadingAnchor];
      leadingAnchor3 = [(PUITouchPassThroughView *)v39 leadingAnchor];
      v28 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:v45];

      topAnchor = [cancelButton topAnchor];
      topAnchor2 = [(PUITouchPassThroughView *)v39 topAnchor];
      v31 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v43];

      trailingAnchor4 = [acceptButton trailingAnchor];
      trailingAnchor5 = [(PUITouchPassThroughView *)v39 trailingAnchor];
      v35 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-v45];

      topAnchor3 = [acceptButton topAnchor];
      topAnchor4 = [(PUITouchPassThroughView *)v39 topAnchor];
      v38 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v43];
    }

    [(PREditorRootViewController *)self setLeadingTopButtonXConstraint:v28];
    [(PREditorRootViewController *)self setLeadingTopButtonYConstraint:v31];
    [(PREditorRootViewController *)self setTrailingTopButtonXConstraint:v35];
    [(PREditorRootViewController *)self setTrailingTopButtonYConstraint:v38];
    v54 = MEMORY[0x1E696ACD8];
    v72[0] = v28;
    v72[1] = v31;
    v72[2] = v35;
    v72[3] = v38;
    widthAnchor5 = [acceptButton widthAnchor];
    widthAnchor6 = [cancelButton widthAnchor];
    v57 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    v72[4] = v57;
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:5];
    [v54 activateConstraints:v58];
  }
}

void __55__PREditorRootViewController_layoutConfirmationButtons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained editor];

  [v2 requestDismissalWithAction:0];
}

void __55__PREditorRootViewController_layoutConfirmationButtons__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained editor];

  [v2 requestDismissalWithAction:1];
}

- (void)setupLookMenuButton
{
  objc_initWeak(&location, self);
  view = [(PREditorRootViewController *)self view];
  v4 = MEMORY[0x1E69DC628];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __49__PREditorRootViewController_setupLookMenuButton__block_invoke;
  v15 = &unk_1E7843448;
  objc_copyWeak(&v16, &location);
  v5 = [v4 actionWithHandler:&v12];
  grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
  [grayButtonConfiguration setBaseBackgroundColor:darkGrayColor];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [grayButtonConfiguration setBaseForegroundColor:whiteColor];

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.up.chevron.down"];
  [grayButtonConfiguration setImage:v9];

  [grayButtonConfiguration setImagePlacement:8];
  v10 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:-1 scale:12.0];
  [grayButtonConfiguration setPreferredSymbolConfigurationForImage:v10];

  [grayButtonConfiguration setContentInsets:{5.0, 20.0, 5.0, 20.0}];
  [grayButtonConfiguration setCornerStyle:4];
  [grayButtonConfiguration setTitleLineBreakMode:4];
  [grayButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_17];
  v11 = [PREditorMenuButton buttonWithType:1];
  [v11 setConfiguration:grayButtonConfiguration];
  [v11 addAction:v5 forControlEvents:0x2000];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setContentHorizontalAlignment:3];
  [v11 setShowsMenuAsPrimaryAction:1];
  [view addSubview:v11];
  [(PREditorRootViewController *)self setLookMenuButton:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __49__PREditorRootViewController_setupLookMenuButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateLookMenu];
}

id __49__PREditorRootViewController_setupLookMenuButton__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB978]];
  [v2 setObject:v3 forKey:*MEMORY[0x1E69DB648]];

  return v2;
}

- (void)layoutLookMenuButton
{
  v22[4] = *MEMORY[0x1E69E9840];
  view = [(PREditorRootViewController *)self view];
  pageControl = [(PREditorRootViewController *)self pageControl];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  lookMenuButton = [(PREditorRootViewController *)self lookMenuButton];
  v16 = MEMORY[0x1E696ACD8];
  centerYAnchor = [lookMenuButton centerYAnchor];
  centerYAnchor2 = [pageControl centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v22[0] = v17;
  heightAnchor = [lookMenuButton heightAnchor];
  v6 = [heightAnchor constraintEqualToConstant:50.0];
  v22[1] = v6;
  leadingAnchor = [lookMenuButton leadingAnchor];
  v8 = safeAreaLayoutGuide;
  v15 = safeAreaLayoutGuide;
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:22.0];
  v22[2] = v10;
  widthAnchor = [lookMenuButton widthAnchor];
  widthAnchor2 = [v8 widthAnchor];
  v13 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.333333333];
  v22[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v16 activateConstraints:v14];
}

- (void)loadView
{
  v193[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  editor = [(PREditorRootViewController *)self editor];
  [(PREditorRootViewController *)self setView:v3];
  v5 = objc_alloc_init(MEMORY[0x1E698E808]);
  [v5 setDelegate:self];
  [v5 setPagingEnabled:1];
  [v5 setShowsVerticalScrollIndicator:0];
  [v5 setShowsHorizontalScrollIndicator:0];
  [v5 setScrollsToTop:0];
  [v5 setBounces:0];
  [v5 _setHiddenPocketEdges:15];
  [v5 _setAutoScrollEnabled:0];
  layer = [v5 layer];
  [layer setHitTestsAsOpaque:1];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v5];
  [(PREditorRootViewController *)self setScrollView:v5];
  v7 = objc_alloc_init(PREditingLegibilityView);
  [(PREditingLegibilityView *)v7 setUserInteractionEnabled:0];
  [(PREditingLegibilityView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PREditingLegibilityView *)v7 setHeightFactor:0.25];
  [(PREditingLegibilityView *)v7 setDirection:1];
  [v3 addSubview:v7];
  v182 = v7;
  [(PREditorRootViewController *)self setTopLegibilityView:v7];
  v8 = objc_alloc_init(PREditingLegibilityView);
  [(PREditingLegibilityView *)v8 setUserInteractionEnabled:0];
  [(PREditingLegibilityView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  _shouldShowQuickActionEditing = [(PREditorRootViewController *)self _shouldShowQuickActionEditing];
  v10 = 0.35;
  if (!_shouldShowQuickActionEditing)
  {
    v10 = 0.25;
  }

  [(PREditingLegibilityView *)v8 setHeightFactor:v10];
  [(PREditingLegibilityView *)v8 setDirection:0];
  [v3 addSubview:v8];
  v181 = v8;
  [(PREditorRootViewController *)self setBottomLegibilityView:v8];
  v11 = objc_alloc_init(MEMORY[0x1E69DCD10]);
  [v11 setHidesForSinglePage:1];
  [v11 setBackgroundStyle:2];
  [v11 addTarget:self action:sel_pageControlCurrentPageDidChange_ forControlEvents:4096];
  LODWORD(v12) = 1132068864;
  [v11 setContentCompressionResistancePriority:0 forAxis:v12];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setAccessibilityIdentifier:@"editing-page-control"];
  [v11 _setPreferredNumberOfVisibleIndicators:6];
  [v3 addSubview:v11];
  v186 = v11;
  [(PREditorRootViewController *)self setPageControl:v11];
  editor2 = [(PREditorRootViewController *)self editor];
  editingIdiom = [editor2 editingIdiom];

  if (editingIdiom == 2)
  {
    [v5 setScrollEnabled:0];
    [v186 setAlpha:0.0];
    [(PREditorRootViewController *)self setupAdditionalControls];
    [(PREditorRootViewController *)self setupLookMenuButton];
    [(PREditorRootViewController *)self layoutAdditionalControls];
    [(PREditorRootViewController *)self layoutLookMenuButton];
  }

  [(PREditorRootViewController *)self setupConfirmationButtons];
  [(PREditorRootViewController *)self layoutConfirmationButtons];
  v180 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(PREditorRootViewController *)self setTimeContainerView:?];
  displaysHeaderElements = [editor displaysHeaderElements];
  displaysSubtitleElement = [editor displaysSubtitleElement];
  areComplicationsAllowed = [editor areComplicationsAllowed];
  v174 = displaysHeaderElements & areComplicationsAllowed;
  if ((displaysHeaderElements & areComplicationsAllowed) == 1 && displaysSubtitleElement)
  {
    isSubtitleHidden = [(PREditorRootViewController *)self isSubtitleHidden];
    v18 = objc_alloc_init(MEMORY[0x1E6999630]);
    v19 = v18;
    if (isSubtitleHidden)
    {
      v20 = 0;
    }

    else
    {
      v20 = 2;
    }

    [v18 setElements:v20];
    dateProvider = [(PREditorRootViewController *)self dateProvider];
    [dateProvider date];
    v23 = v22 = displaysHeaderElements;
    [v19 setDisplayDate:v23];

    [v19 setUsesEditingLayout:{-[PREditorRootViewController usesEditingLayout](self, "usesEditingLayout")}];
    view = [v19 view];
    [view setUserInteractionEnabled:0];
    layer2 = [view layer];
    [layer2 setAllowsHitTesting:0];

    displaysHeaderElements = v22;
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditorRootViewController *)self addChildViewController:v19];
    [v180 addSubview:view];
    [v19 didMoveToParentViewController:self];
    [(PREditorRootViewController *)self setSubtitleViewController:v19];
  }

  v26 = objc_alloc_init(PREditingStandaloneLabelView);
  [(PREditingStandaloneLabelView *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PREditingStandaloneLabelView *)v26 setUserInteractionEnabled:0];
  [v3 addSubview:v26];
  v183 = v26;
  [(PREditorRootViewController *)self setLookNameLabel:v26];
  v27 = 0x1E698E000uLL;
  if (displaysHeaderElements)
  {
    v28 = objc_alloc_init(MEMORY[0x1E698E818]);
    [v28 setUserInteractionEnabled:0];
    [v28 setBlurEnabled:PREditingSupportsLiveBlurs()];
    [(PREditorRootViewController *)self setReticleVibrancyView:v28];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v185 = v28;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && _os_feature_enabled_impl())
    {
      v31 = objc_alloc_init(MEMORY[0x1E698E818]);
      [v31 setUserInteractionEnabled:0];
      [v31 setBlurEnabled:PREditingSupportsLiveBlurs()];
      v179 = v31;
      [(PREditorRootViewController *)self setSidebarReticleVibrancyView:v31];
    }

    else
    {
      v179 = 0;
    }
  }

  else
  {
    v179 = 0;
    v185 = 0;
  }

  v177 = editor;
  v184 = v3;
  if ([editor areViewsSharedBetweenLooks])
  {
    v168 = displaysHeaderElements;
    v32 = objc_alloc_init(MEMORY[0x1E69DD250]);
    layer3 = [v32 layer];
    [layer3 setName:@"backgroundContainerView"];

    [v3 insertSubview:v32 atIndex:0];
    [(PREditorRootViewController *)self setBackgroundContainerView:v32];
    v34 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:v32];
    layer4 = [v34 layer];
    [layer4 setName:@"portaledBackgroundContainerView"];

    [v34 setMatchesPosition:1];
    [v34 setHidesSourceView:1];
    [(PREditorRootViewController *)self setPortaledBackgroundContainerView:v34];
    [v5 addSubview:v34];
    v36 = objc_alloc_init(MEMORY[0x1E69DD250]);
    layer5 = [v36 layer];
    [layer5 setName:@"foregroundContainerView"];

    [v3 insertSubview:v36 aboveSubview:v32];
    [(PREditorRootViewController *)self setForegroundContainerView:v36];
    v38 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:v36];
    layer6 = [v38 layer];
    [layer6 setName:@"portaledForegroundContainerView"];

    [v38 setMatchesPosition:1];
    [v38 setHidesSourceView:1];
    [(PREditorRootViewController *)self setPortaledForegroundContainerView:v38];
    [v5 addSubview:v38];
    v40 = objc_alloc_init(MEMORY[0x1E69DD250]);
    layer7 = [v40 layer];
    [layer7 setName:@"floatingContainerView"];

    [(PREditorRootViewController *)self setFloatingContainerView:v40];
    if (v185)
    {
      [v5 addSubview:?];
    }

    [v5 addSubview:v180];
    [v3 insertSubview:v40 aboveSubview:v36];
    v42 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:v40];
    layer8 = [v42 layer];
    [layer8 setName:@"portaledFloatingContainerView"];

    [v42 setMatchesPosition:1];
    [v42 setHidesSourceView:1];
    [(PREditorRootViewController *)self setPortaledFloatingContainerView:v42];
    [v5 insertSubview:v42 aboveSubview:v180];
    if (v179)
    {
      [v5 addSubview:?];
    }

    v3 = v184;
    v27 = 0x1E698E000;
    displaysHeaderElements = v168;
  }

  if (v174)
  {
    v44 = objc_alloc_init(PREditingReticleView);
    [(PREditingReticleView *)v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [v185 contentView];
    [contentView addSubview:v44];

    [(PREditorRootViewController *)self setInlineComplicationReticleView:v44];
  }

  if (displaysHeaderElements)
  {
    v46 = objc_alloc_init(PREditingReticleView);
    contentView2 = [v185 contentView];
    [contentView2 addSubview:v46];

    [(PREditorRootViewController *)self setTitleReticleView:v46];
    v48 = objc_alloc_init(MEMORY[0x1E69DD250]);
    layer9 = [v48 layer];
    [layer9 setHitTestsAsOpaque:1];

    v50 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_titleViewTapped_];
    [v48 addGestureRecognizer:v50];
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v48];
    [(PREditorRootViewController *)self setTitleGestureView:v48];
    if (PUIFeatureEnabled())
    {
      v51 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v52 = PUIFeatureEnabled();
      v53 = objc_alloc(MEMORY[0x1E69D40B0]);
      v187[0] = xmmword_1A8BF7DE0;
      v187[1] = xmmword_1A8BF7DF0;
      v188 = 0xBFF0000000000000;
      v189 = 0;
      if (v52)
      {
        __asm { FMOV            V0.2D, #-15.0 }

        v190 = _Q0;
        v191 = _Q0;
        v59 = [v53 initWithMetrics:v187 iconImageInfo:0 material:{100.0, 100.0, 3.0, 21.0}];
      }

      else
      {
        __asm { FMOV            V0.2D, #-15.0 }

        v190 = _Q0;
        v191 = _Q0;
        v59 = [v53 initWithMetrics:v187 iconImageInfo:v51 backgroundView:{100.0, 100.0, 3.0, 21.0}];
      }

      v61 = v59;
      v62 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__titleViewResizeGestureDidUpdate_];
      [v62 _setHysteresis:0.0];
      [v62 setDelaysTouchesBegan:0];
      [v61 setResizingGestureRecognizer:v62];
      [v61 setAccessibilityIdentifier:@"title-resize-handle"];
      [v61 addGestureRecognizer:v62];
      [(PREditorRootViewController *)self setTitleResizeHandle:v61];
      [v3 insertSubview:v61 aboveSubview:v48];

      v27 = 0x1E698E000uLL;
    }

    v63 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(PREditingReticleView *)v46 addLayoutGuide:v63];
    [(PREditorRootViewController *)self setTitlePopoverLayoutGuide:v63];

    if (areComplicationsAllowed)
    {
      v64 = objc_alloc_init(PREditingReticleView);
      contentView3 = [v185 contentView];
      [contentView3 addSubview:v64];

      [(PREditingReticleView *)v64 setHidden:1];
      [(PREditorRootViewController *)self setComplicationRowReticleView:v64];
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

      if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1 && _os_feature_enabled_impl())
      {
        v68 = objc_alloc_init(PREditingReticleView);
        contentView4 = [v179 contentView];
        [contentView4 addSubview:v68];

        [(PREditorRootViewController *)self setComplicationSidebarReticleView:v68];
        v70 = objc_alloc_init(PRComplicationEmptyStateView);
        [(PREditingReticleView *)v68 addSubview:v70];
        [(PREditorRootViewController *)self setComplicationSidebarEmptyStateView:v70];
      }

      v71 = [PRComplicationSceneHostViewController alloc];
      makeComplicationsHostingScene = [(PREditorRootViewController *)self makeComplicationsHostingScene];
      v73 = [(PRComplicationSceneHostViewController *)v71 initWithScene:makeComplicationsHostingScene];

      view2 = [(PRComplicationSceneHostViewController *)v73 view];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PREditorRootViewController *)self addChildViewController:v73];
      [v3 addSubview:view2];
      [(PRComplicationSceneHostViewController *)v73 didMoveToParentViewController:self];
      [(PREditorRootViewController *)self setComplicationHostViewController:v73];
      [(PREditorRootViewController *)self _updateComplicationsVibrancyFromCurrentLook];
    }
  }

  v178 = v5;
  if ([(PREditorRootViewController *)self _shouldShowQuickActionEditing])
  {
    v75 = [PRQuickActionsSceneHostViewController alloc];
    makeQuickActionsHostingScene = [(PREditorRootViewController *)self makeQuickActionsHostingScene];
    v77 = [(PRQuickActionsSceneHostViewController *)v75 initWithScene:makeQuickActionsHostingScene];

    [(PRQuickActionsSceneHostViewController *)v77 view];
    v175 = v172 = v77;
    [(PREditorRootViewController *)self addChildViewController:v77];
    [v3 addSubview:v175];
    [v175 setAutoresizingMask:18];
    [(PRQuickActionsSceneHostViewController *)v77 didMoveToParentViewController:self];
    [(PREditorRootViewController *)self setQuickActionsHostViewController:v77];
    v78 = objc_alloc_init(*(v27 + 2072));
    [v78 setUserInteractionEnabled:0];
    [v78 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v78 setBlurEnabled:PREditingSupportsLiveBlurs()];
    [(PREditorRootViewController *)self setControlsVibrancyView:v78];
    [v3 addSubview:v78];
    v164 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v78 leadingAnchor];
    leadingAnchor2 = [v3 leadingAnchor];
    v79 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:40.0];
    v193[0] = v79;
    trailingAnchor = [v78 trailingAnchor];
    trailingAnchor2 = [v3 trailingAnchor];
    v82 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-40.0];
    v193[1] = v82;
    heightAnchor = [v78 heightAnchor];
    v84 = [heightAnchor constraintEqualToConstant:1.0];
    v193[2] = v84;
    v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v193 count:3];
    [v164 activateConstraints:v85];

    v3 = v184;
    v5 = v178;
  }

  contentOverlayView = [(PREditorRootViewController *)self contentOverlayView];
  if (!contentOverlayView)
  {
    contentOverlayView = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(PREditorRootViewController *)self setContentOverlayView:contentOverlayView];
  }

  [contentOverlayView bounds];
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v87, v89, v91, v93}];
  [contentOverlayView setFrame:{v88, v90, v92, v94}];
  v176 = contentOverlayView;
  [v95 addSubview:contentOverlayView];
  [v5 addSubview:v95];
  v173 = v95;
  [(PREditorRootViewController *)self setContentOverlayContainerView:v95];
  [(PREditorRootViewController *)self _updateBottomControlsYConstraint];
  if ([(PREditorRootViewController *)self _shouldShowQuickActionEditing])
  {
    [PREditorElementLayoutController frameForElements:128 variant:2];
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    view3 = [(PREditorRootViewController *)self view];
    [v186 convertRect:view3 fromView:{v97, v99, v101, v103}];
    v106 = v105;
    v108 = v107;

    centerYAnchor = [(PREditingStandaloneLabelView *)v183 centerYAnchor];
    topAnchor = [v3 topAnchor];
    v111 = [centerYAnchor constraintEqualToAnchor:topAnchor constant:v106 + v108 * 0.5];
    [v111 setActive:1];
  }

  v144 = MEMORY[0x1E696ACD8];
  centerXAnchor = [v186 centerXAnchor];
  safeAreaLayoutGuide = [v3 safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
  v163 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v192[0] = v163;
  topAnchor2 = [v5 topAnchor];
  topAnchor3 = [v3 topAnchor];
  v160 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v192[1] = v160;
  bottomAnchor = [v5 bottomAnchor];
  bottomAnchor2 = [v3 bottomAnchor];
  v157 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v192[2] = v157;
  leadingAnchor3 = [v5 leadingAnchor];
  leadingAnchor4 = [v3 leadingAnchor];
  v154 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v192[3] = v154;
  trailingAnchor3 = [v5 trailingAnchor];
  trailingAnchor4 = [v3 trailingAnchor];
  v151 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v192[4] = v151;
  centerXAnchor3 = [(PREditingStandaloneLabelView *)v183 centerXAnchor];
  centerXAnchor4 = [v3 centerXAnchor];
  v148 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v192[5] = v148;
  bottomAnchor3 = [(PREditingStandaloneLabelView *)v183 bottomAnchor];
  topAnchor4 = [v186 topAnchor];
  v145 = [bottomAnchor3 constraintEqualToAnchor:topAnchor4 constant:-16.0];
  v192[6] = v145;
  leadingAnchor5 = [(PREditingStandaloneLabelView *)v183 leadingAnchor];
  leadingAnchor6 = [v3 leadingAnchor];
  v141 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6 constant:20.0];
  v192[7] = v141;
  trailingAnchor5 = [(PREditingStandaloneLabelView *)v183 trailingAnchor];
  trailingAnchor6 = [v3 trailingAnchor];
  v138 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6 constant:-20.0];
  v192[8] = v138;
  heightAnchor2 = [(PREditingLegibilityView *)v182 heightAnchor];
  heightAnchor3 = [v3 heightAnchor];
  v135 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v192[9] = v135;
  bottomAnchor4 = [(PREditingLegibilityView *)v182 bottomAnchor];
  bottomAnchor5 = [v3 bottomAnchor];
  v132 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v192[10] = v132;
  leadingAnchor7 = [(PREditingLegibilityView *)v182 leadingAnchor];
  leadingAnchor8 = [v3 leadingAnchor];
  v129 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v192[11] = v129;
  trailingAnchor7 = [(PREditingLegibilityView *)v182 trailingAnchor];
  trailingAnchor8 = [v3 trailingAnchor];
  v126 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v192[12] = v126;
  heightAnchor4 = [(PREditingLegibilityView *)v181 heightAnchor];
  heightAnchor5 = [v3 heightAnchor];
  v123 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  v192[13] = v123;
  [(PREditingLegibilityView *)v181 bottomAnchor];
  v113 = v112 = v3;
  bottomAnchor6 = [v112 bottomAnchor];
  v115 = [v113 constraintEqualToAnchor:bottomAnchor6];
  v192[14] = v115;
  leadingAnchor9 = [(PREditingLegibilityView *)v181 leadingAnchor];
  leadingAnchor10 = [v112 leadingAnchor];
  v118 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v192[15] = v118;
  trailingAnchor9 = [(PREditingLegibilityView *)v181 trailingAnchor];
  trailingAnchor10 = [v112 trailingAnchor];
  v121 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v192[16] = v121;
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:v192 count:17];
  [v144 activateConstraints:v122];
}

- (void)viewDidLoad
{
  v76[8] = *MEMORY[0x1E69E9840];
  v73.receiver = self;
  v73.super_class = PREditorRootViewController;
  [(PREditorRootViewController *)&v73 viewDidLoad];
  v3 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:self];
  [(PREditorRootViewController *)self setEditorElementLayoutController:v3];
  [(PREditorRootViewController *)self depthEffectEnablementDidChange];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  view = [(PREditorRootViewController *)self view];
  editor = [(PREditorRootViewController *)self editor];
  if ([editor displaysHeaderElements])
  {
    v71 = view;
    v69 = v3;
    titleGestureView = [(PREditorRootViewController *)self titleGestureView];
    titleReticleView = [(PREditorRootViewController *)self titleReticleView];
    titlePopoverLayoutGuide = [(PREditorRootViewController *)self titlePopoverLayoutGuide];
    centerXAnchor = [titleGestureView centerXAnchor];
    centerXAnchor2 = [titleReticleView centerXAnchor];
    v59 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v76[0] = v59;
    centerYAnchor = [titleGestureView centerYAnchor];
    centerYAnchor2 = [titleReticleView centerYAnchor];
    v50 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v76[1] = v50;
    widthAnchor = [titleGestureView widthAnchor];
    widthAnchor2 = [titleReticleView widthAnchor];
    v45 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v76[2] = v45;
    v68 = titleGestureView;
    heightAnchor = [titleGestureView heightAnchor];
    heightAnchor2 = [titleReticleView heightAnchor];
    v42 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v76[3] = v42;
    centerXAnchor3 = [titlePopoverLayoutGuide centerXAnchor];
    centerXAnchor4 = [titleReticleView centerXAnchor];
    v39 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v76[4] = v39;
    centerYAnchor3 = [titlePopoverLayoutGuide centerYAnchor];
    centerYAnchor4 = [titleReticleView centerYAnchor];
    v10 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v76[5] = v10;
    widthAnchor3 = [titlePopoverLayoutGuide widthAnchor];
    widthAnchor4 = [titleReticleView widthAnchor];
    v13 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 constant:10.0];
    v76[6] = v13;
    v66 = titlePopoverLayoutGuide;
    heightAnchor3 = [titlePopoverLayoutGuide heightAnchor];
    v67 = titleReticleView;
    [titleReticleView heightAnchor];
    v15 = v70 = editor;
    v16 = [heightAnchor3 constraintEqualToAnchor:v15 constant:10.0];
    v76[7] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:8];
    v72 = v4;
    [v4 addObjectsFromArray:v17];

    editor = v70;
    if ([v70 areComplicationsAllowed])
    {
      complicationHostViewController = [(PREditorRootViewController *)self complicationHostViewController];
      view2 = [complicationHostViewController view];
      leadingAnchor = [view2 leadingAnchor];
      leadingAnchor2 = [v71 leadingAnchor];
      v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v75[0] = v54;
      trailingAnchor = [view2 trailingAnchor];
      trailingAnchor2 = [v71 trailingAnchor];
      v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v75[1] = v19;
      v63 = view2;
      topAnchor = [view2 topAnchor];
      topAnchor2 = [v71 topAnchor];
      v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v75[2] = v22;
      bottomAnchor = [view2 bottomAnchor];
      bottomAnchor2 = [v71 bottomAnchor];
      v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v75[3] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:4];
      [v72 addObjectsFromArray:v26];

      subtitleViewController = [(PREditorRootViewController *)self subtitleViewController];
      view3 = [subtitleViewController view];
      leadingAnchor3 = [view3 leadingAnchor];
      leadingAnchor4 = [v71 leadingAnchor];
      v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v74[0] = v52;
      trailingAnchor3 = [view3 trailingAnchor];
      trailingAnchor4 = [v71 trailingAnchor];
      v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v74[1] = v29;
      topAnchor3 = [view3 topAnchor];
      topAnchor4 = [v71 topAnchor];
      v32 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v74[2] = v32;
      bottomAnchor3 = [view3 bottomAnchor];
      bottomAnchor4 = [v71 bottomAnchor];
      v35 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v74[3] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
      [v72 addObjectsFromArray:v36];

      editor = v70;
    }

    v3 = v69;
    view = v71;
    v4 = v72;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = PREditorRootViewController;
  [(PREditorRootViewController *)&v13 viewDidAppear:appear];
  currentLook = [(PREditorRootViewController *)self currentLook];
  v5 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:currentLook];

  editorElementLayoutController = self->_editorElementLayoutController;
  timeNumberingSystem = [v5 timeNumberingSystem];
  [(PREditorElementLayoutController *)editorElementLayoutController setNumberingSystem:timeNumberingSystem];

  currentLook2 = [(PREditorRootViewController *)self currentLook];
  v9 = [(PREditorRootViewController *)self timeViewControllerForLook:currentLook2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isFourDigitTime = [v9 isFourDigitTime];
    [(PREditorRootViewController *)self setFourDigitTime:isFourDigitTime];
    [(PREditorElementLayoutController *)self->_editorElementLayoutController setFourDigitTime:isFourDigitTime];
  }

  [(PREditorRootViewController *)self _updateMenuElements];
  if (![(PREditorRootViewController *)self initialLayoutFinished])
  {
    [(PREditorRootViewController *)self setInitialLayoutFinished:1];
    editor = [(PREditorRootViewController *)self editor];
    v12 = [editor delegateSafeForCallbackType:3];
    if (objc_opt_respondsToSelector())
    {
      [v12 editorDidFinishInitialLayout:editor];
    }
  }

  [(PREditorRootViewController *)self lookPropertiesDidChange];
}

- (void)viewDidLayoutSubviews
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(self);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"PREditorRootViewController.m";
  v16 = 1024;
  v17 = 1053;
  v18 = 2114;
  v19 = a3;
  _os_log_fault_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

void __51__PREditorRootViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 frameForPageAtLookIndex:a3];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = [*(a1 + 32) timeViewControllerForLook:v6];

  v15 = [v16 view];
  [v15 setFrame:{v8, v10, v12, v14}];
  [v16 pr_updateStyleBoundingRects];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = PREditorRootViewController;
  [(PREditorRootViewController *)&v8 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  [(PREditorRootViewController *)self _updateButtonLayout];
  dateProvider = [(PREditorRootViewController *)self dateProvider];
  v7 = dateProvider;
  if (window)
  {
    [dateProvider addMinuteUpdateObserver:self];
  }

  else
  {
    [dateProvider removeMinuteUpdateObserver:self];
  }

  [(PREditorRootViewController *)self _updateComplicationSidebarEmptyViewVisibilityAnimated:0];
  [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PREditorRootViewController;
  [(PREditorRootViewController *)&v4 traitCollectionDidChange:change];
  [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v35.receiver = self;
  v35.super_class = PREditorRootViewController;
  coordinatorCopy = coordinator;
  [(PREditorRootViewController *)&v35 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  scrollView = [(PREditorRootViewController *)self scrollView];
  lookTransition = [(PREditorRootViewController *)self lookTransition];
  v26 = lookTransition;
  if (lookTransition)
  {
    destinationLook = [lookTransition destinationLook];
    looks = [(PREditorRootViewController *)self looks];
    v12 = [looks indexOfObject:destinationLook];

    v13 = [(PREditorRootViewController *)self viewIndexForLookIndex:v12];
  }

  else
  {
    [scrollView contentOffset];
    v13 = [(PREditorRootViewController *)self lookIndexForContentOffset:?];
  }

  v14 = width * v13;
  topLegibilityView = [(PREditorRootViewController *)self topLegibilityView];
  bottomLegibilityView = [(PREditorRootViewController *)self bottomLegibilityView];
  [topLegibilityView setShouldOverscan:1];
  [bottomLegibilityView setShouldOverscan:1];
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v17 = 8;
  }

  else
  {
    v17 = 4;
  }

  view = [(PREditorRootViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  if ((interfaceOrientation - 1) < 2)
  {
    v22 = 1;
  }

  else
  {
    v22 = v17;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __81__PREditorRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v30[3] = &unk_1E78440E8;
  v30[4] = self;
  v31 = scrollView;
  v32 = v14;
  v33 = 0;
  v34 = v22;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __81__PREditorRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v27[3] = &unk_1E7844110;
  v28 = topLegibilityView;
  v29 = bottomLegibilityView;
  v23 = bottomLegibilityView;
  v24 = topLegibilityView;
  v25 = scrollView;
  [coordinatorCopy animateAlongsideTransition:v30 completion:v27];
}

void __81__PREditorRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsReticleVisibilityUpdate];
  [*(a1 + 40) setContentOffset:0 animated:{*(a1 + 48), *(a1 + 56)}];
  [*(a1 + 32) _updateScrollViewContentSize];
  v2 = [*(a1 + 32) editor];
  v3 = [v2 popoverPresentationController];
  v4 = [v3 permittedArrowDirections];
  v5 = *(a1 + 64);

  if (v4 != v5)
  {
    v6 = [*(a1 + 32) editor];
    v7 = [v6 popoverPresentationController];
    [v7 setPermittedArrowDirections:*(a1 + 64)];

    v9 = [*(a1 + 32) editor];
    v8 = [v9 fontAndColorPickerViewController];
    [v8 updatePopoverContentSize];
  }
}

uint64_t __81__PREditorRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setShouldOverscan:0];
  v2 = *(a1 + 40);

  return [v2 setShouldOverscan:0];
}

- (void)_updateScrollViewContentSize
{
  looks = [(PREditorRootViewController *)self looks];
  v3 = [looks count];
  view = [(PREditorRootViewController *)self view];
  [view bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v9 = CGRectGetWidth(v14) * v3;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = CGRectGetHeight(v15);
  scrollView = [(PREditorRootViewController *)self scrollView];
  [scrollView setContentSize:{v9, v10}];
}

- (void)looksWillChange
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  looks = [(PREditorRootViewController *)self looks];
  v4 = [looks countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(looks);
        }

        v8 = [(PREditorRootViewController *)self timeViewControllerForLook:*(*(&v10 + 1) + 8 * v7)];
        [v8 removeFromParentViewController];
        view = [v8 view];
        [view removeFromSuperview];

        [v8 didMoveToParentViewController:0];
        ++v7;
      }

      while (v5 != v7);
      v5 = [looks countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(PREditorTitleViewControllerCoordinator *)self->_titleViewControllerCoordinator reloadData];
}

- (void)looksDidChange
{
  v46 = *MEMORY[0x1E69E9840];
  [(PREditorRootViewController *)self _updateScrollViewContentSize];
  editor = [(PREditorRootViewController *)self editor];
  environment = [editor environment];
  role = [environment role];

  looks = [(PREditorRootViewController *)self looks];
  v7 = [looks count];
  currentLook = [(PREditorRootViewController *)self currentLook];
  v34 = role;
  v35 = looks;
  if ([editor displaysHeaderElements])
  {
    v33 = v7;
    dateProvider = [(PREditorRootViewController *)self dateProvider];
    date = [dateProvider date];

    extensionBundleURL = [(PREditorRootViewController *)self extensionBundleURL];
    v39 = editor;
    timeViewControllerDisplayedElements = [editor timeViewControllerDisplayedElements];
    titleViewControllerCoordinator = self->_titleViewControllerCoordinator;
    if (!titleViewControllerCoordinator || (-[PREditorTitleViewControllerCoordinator role](titleViewControllerCoordinator, "role"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqual:role], v11, (v12 & 1) == 0))
    {
      v13 = [[PREditorTitleViewControllerCoordinator alloc] initWithRole:role];
      v14 = self->_titleViewControllerCoordinator;
      self->_titleViewControllerCoordinator = v13;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v35;
    v15 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v41 + 1) + 8 * i);
          v20 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:v19];
          v21 = [(PREditorRootViewController *)self timeViewControllerForLook:v19];
          [v21 pr_setElements:timeViewControllerDisplayedElements];
          [v21 pr_setDisplayDate:date];
          [v21 pr_setUsesEditingLayout:{-[PREditorRootViewController usesEditingLayout](self, "usesEditingLayout")}];
          editor2 = [(PREditorRootViewController *)self editor];
          posterRole = [editor2 posterRole];

          [v21 pr_setStylingFromTitleStyleConfiguration:v20 withExtensionBundleURL:extensionBundleURL forRole:posterRole];
          titleString = [v39 titleString];
          [v21 pr_setDisplayString:titleString];

          [(PREditorRootViewController *)self addChildViewController:v21];
          view = [v21 view];
          [view setHidden:{objc_msgSend(v19, "isEqual:", currentLook) ^ 1}];
          [(UIView *)self->_timeContainerView addSubview:view];
          [(UIView *)self->_timeContainerView sendSubviewToBack:view];
          [v21 didMoveToParentViewController:self];
        }

        v16 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v16);
    }

    editor = v39;
    v7 = v33;
  }

  [(PREditorRootViewController *)self _updateComplicationsVibrancyFromCurrentLook];
  [(PREditorRootViewController *)self _updateOverlayHostViewControllerLuminanceFromCurrentLook];
  v26 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:currentLook];
  subtitleViewController = [(PREditorRootViewController *)self subtitleViewController];
  extensionBundleURL2 = [(PREditorRootViewController *)self extensionBundleURL];
  posterRole2 = [editor posterRole];
  [subtitleViewController pr_setStylingFromTitleStyleConfiguration:v26 withExtensionBundleURL:extensionBundleURL2 forRole:posterRole2];
  pageControl = [(PREditorRootViewController *)self pageControl];
  [pageControl setNumberOfPages:v7];
  [(PREditorRootViewController *)self currentLookDidChange];
  lookNameLabel = [(PREditorRootViewController *)self lookNameLabel];
  displayName = [currentLook displayName];
  [lookNameLabel setText:displayName];
  [lookNameLabel setHidden:v7 < 2];
}

- (void)updateForChangedTitleString
{
  v17 = *MEMORY[0x1E69E9840];
  looks = [(PREditorRootViewController *)self looks];
  editor = [(PREditorRootViewController *)self editor];
  titleString = [editor titleString];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = looks;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PREditorRootViewController *)self timeViewControllerForLook:*(*(&v12 + 1) + 8 * v10), v12];
        [v11 pr_setDisplayString:titleString];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)updateForChangedOverrideDate
{
  dateProvider = [(PREditorRootViewController *)self dateProvider];
  date = [dateProvider date];
  [(PREditorRootViewController *)self dateProvider:dateProvider didUpdateDate:date];
}

- (void)updateTimeControllersForLookMap
{
  v18 = *MEMORY[0x1E69E9840];
  editor = [(PREditorRootViewController *)self editor];
  displaysHeaderElements = [editor displaysHeaderElements];

  if (displaysHeaderElements)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    looks = [(PREditorRootViewController *)self looks];
    v6 = [looks countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(looks);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          titleViewControllerCoordinator = self->_titleViewControllerCoordinator;
          identifier = [v10 identifier];
          [(PREditorTitleViewControllerCoordinator *)titleViewControllerCoordinator updateLookWithIdentifier:identifier withLook:v10];
        }

        v7 = [looks countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)lookPropertiesDidChange
{
  v51 = *MEMORY[0x1E69E9840];
  editor = [(PREditorRootViewController *)self editor];
  displaysHeaderElements = [editor displaysHeaderElements];

  if (!displaysHeaderElements)
  {
    goto LABEL_22;
  }

  aSelector = a2;
  [(PREditorRootViewController *)self updateTimeControllersForLookMap];
  extensionBundleURL = [(PREditorRootViewController *)self extensionBundleURL];
  editor2 = [(PREditorRootViewController *)self editor];
  posterRole = [editor2 posterRole];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  looks = [(PREditorRootViewController *)self looks];
  v9 = [looks countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = *v35;
  do
  {
    v12 = 0;
    do
    {
      if (*v35 != v11)
      {
        objc_enumerationMutation(looks);
      }

      v13 = *(*(&v34 + 1) + 8 * v12);
      editor3 = [(PREditorRootViewController *)self editor];
      if ([editor3 isLookSwitchingDisabled])
      {
        currentLook = [(PREditorRootViewController *)self currentLook];
        v16 = [v13 isEqual:currentLook];

        if (!v16)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v17 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:v13];
      v18 = [(PREditorRootViewController *)self timeViewControllerForLook:v13];
      if (!v18)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't find titleViewController for look: %@", v13];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          v31 = NSStringFromSelector(aSelector);
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          *buf = 138544642;
          v39 = v31;
          v40 = 2114;
          v41 = v21;
          v22 = v21;
          v42 = 2048;
          selfCopy = self;
          v44 = 2114;
          v45 = @"PREditorRootViewController.m";
          v46 = 1024;
          v47 = 1273;
          v48 = 2114;
          v49 = v19;
          _os_log_fault_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }
      }

      [v18 pr_setStylingFromTitleStyleConfiguration:v17 withExtensionBundleURL:extensionBundleURL forRole:posterRole];

LABEL_13:
      ++v12;
    }

    while (v10 != v12);
    v23 = [looks countByEnumeratingWithState:&v34 objects:v50 count:16];
    v10 = v23;
  }

  while (v23);
LABEL_19:

  editor4 = [(PREditorRootViewController *)self editor];
  configuredProperties = [editor4 configuredProperties];
  titleStyleConfiguration = [configuredProperties titleStyleConfiguration];

  subtitleViewController = [(PREditorRootViewController *)self subtitleViewController];
  [subtitleViewController pr_setStylingFromTitleStyleConfiguration:titleStyleConfiguration withExtensionBundleURL:extensionBundleURL forRole:posterRole];

  if ([posterRole isEqual:@"PRPosterRoleIncomingCall"])
  {
    editor5 = [(PREditorRootViewController *)self editor];
    [editor5 setDepthEffectDisallowed:objc_msgSend(titleStyleConfiguration forReason:{"prefersVerticalTitleLayout"), @"role"}];
  }

  editorElementLayoutController = self->_editorElementLayoutController;
  timeNumberingSystem = [titleStyleConfiguration timeNumberingSystem];
  [(PREditorElementLayoutController *)editorElementLayoutController setNumberingSystem:timeNumberingSystem];

  [(PREditorRootViewController *)self _updateComplicationsVibrancyFromCurrentLook];
  [(PREditorRootViewController *)self updateReticleViewFrames];

LABEL_22:
  [(PREditorRootViewController *)self _updateOverlayHostViewControllerLuminanceFromCurrentLook];
}

- (void)lookBackgroundTypesDidChange
{
  v41 = *MEMORY[0x1E69E9840];
  editor = [(PREditorRootViewController *)self editor];
  displaysHeaderElements = [editor displaysHeaderElements];

  if (displaysHeaderElements)
  {
    aSelector = a2;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    looks = [(PREditorRootViewController *)self looks];
    v7 = [looks countByEnumeratingWithState:&v24 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(looks);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          v12 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:v11];
          extensionBundleURL = [(PREditorRootViewController *)self extensionBundleURL];
          v14 = [v12 vibrancyConfigurationWithExtensionBundleURL:extensionBundleURL];
          backgroundType = [v14 backgroundType];

          v16 = [(PREditorRootViewController *)self timeViewControllerForLook:v11];
          if (!v16)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't find titleViewController for look: %@", v11];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              v22 = NSStringFromSelector(aSelector);
              v18 = objc_opt_class();
              v19 = NSStringFromClass(v18);
              *buf = 138544642;
              v29 = v22;
              v30 = 2114;
              v31 = v19;
              v20 = v19;
              v32 = 2048;
              selfCopy = self;
              v34 = 2114;
              v35 = @"PREditorRootViewController.m";
              v36 = 1024;
              v37 = 1301;
              v38 = 2114;
              v39 = v17;
              _os_log_fault_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }
          }

          [v16 pr_setBackgroundType:backgroundType];

          ++v10;
        }

        while (v8 != v10);
        v21 = [looks countByEnumeratingWithState:&v24 objects:v40 count:16];
        v8 = v21;
      }

      while (v21);
    }

    [(PREditorRootViewController *)self _updateComplicationsVibrancyFromCurrentLook];
  }

  [(PREditorRootViewController *)self _updateOverlayHostViewControllerLuminanceFromCurrentLook];
}

- (void)_updateOverlayHostViewControllerLuminanceFromCurrentLook
{
  if (self->_overlayHostViewController)
  {
    currentLook = [(PREditorRootViewController *)self currentLook];
    v4 = currentLook;
    if (currentLook)
    {
      v8 = currentLook;
      v5 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:currentLook];
      v6 = v5;
      if (v5)
      {
        overlayHostViewController = self->_overlayHostViewController;
        [v5 contentsLuminance];
        [(PROverlaySceneHostViewController *)overlayHostViewController setContentsLuminance:?];
      }

      v4 = v8;
    }

    MEMORY[0x1EEE66BB8](currentLook, v4);
  }
}

- (void)setHostedContentSettings:(id)settings
{
  settingsCopy = settings;
  if (PUIFeatureEnabled())
  {
    if ((BSEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&self->_hostedContentSettings, settings);
      overlayHostViewController = self->_overlayHostViewController;
      if (overlayHostViewController)
      {
        [(PROverlaySceneHostViewController *)overlayHostViewController setContentSettings:settingsCopy];
      }

      else
      {
        _makeOverlayHostingScene = [(PREditorRootViewController *)self _makeOverlayHostingScene];
        currentLook = [(PREditorRootViewController *)self currentLook];
        v10 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:currentLook];
        [v10 contentsLuminance];
        v12 = v11;

        v13 = [[PROverlaySceneHostViewController alloc] initWithScene:_makeOverlayHostingScene contentSettings:settingsCopy contentsLuminance:self safeAreaProvider:v12];
        [(PREditorRootViewController *)self setOverlayHostViewController:v13];
      }
    }
  }

  else
  {
    v7 = PRLogEditing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_DEFAULT, "not updating overlay configuration because Messages/transcript_backgrounds=off", v14, 2u);
    }
  }
}

- (void)updateLookMenu
{
  lookMenuButton = [(PREditorRootViewController *)self lookMenuButton];
  if (lookMenuButton)
  {
    currentLook = [(PREditorRootViewController *)self currentLook];
    array = [MEMORY[0x1E695DF70] array];
    displayName = [currentLook displayName];
    [lookMenuButton setTitle:displayName forState:0];

    objc_initWeak(&location, self);
    looks = [(PREditorRootViewController *)self looks];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__PREditorRootViewController_updateLookMenu__block_invoke;
    v12[3] = &unk_1E7844160;
    objc_copyWeak(&v16, &location);
    v8 = lookMenuButton;
    v13 = v8;
    v9 = currentLook;
    v14 = v9;
    v10 = array;
    v15 = v10;
    [looks enumerateObjectsUsingBlock:v12];

    v11 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1C13D90 image:0 identifier:0 options:1 children:v10];
    [v8 setMenu:v11];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __44__PREditorRootViewController_updateLookMenu__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v5 = MEMORY[0x1E69DC628];
    v6 = [v3 displayName];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __44__PREditorRootViewController_updateLookMenu__block_invoke_2;
    v15 = &unk_1E7844138;
    v16 = a1[4];
    v7 = v3;
    v17 = v7;
    v18 = a1[5];
    v19 = WeakRetained;
    v8 = [v5 actionWithTitle:v6 image:0 identifier:0 handler:&v12];

    v9 = [v7 displayName];
    v10 = [a1[5] displayName];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      [v8 setState:1];
    }

    [a1[6] addObject:v8];
  }
}

uint64_t __44__PREditorRootViewController_updateLookMenu__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) displayName];
  [v2 setTitle:v3 forState:0];

  result = [*(a1 + 48) isEqual:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v5 = [*(a1 + 56) editor];
    [v5 setCurrentLook:*(a1 + 40)];

    v6 = *(a1 + 56);
    v7 = *(a1 + 40);

    return [v6 scrollToLook:v7 animated:0];
  }

  return result;
}

- (void)setOverlayHostViewController:(id)controller
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PREditorRootViewController.m" lineNumber:1393 description:@"setOverlayHostViewController needs to be overridden by subclasses"];
}

- (void)_setOverlayHostViewController:(id)controller insertingAboveSubview:(id)subview
{
  controllerCopy = controller;
  subviewCopy = subview;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(PREditorRootViewController *)self removeChildViewController:self->_overlayHostViewController];
    objc_storeStrong(&self->_overlayHostViewController, controller);
    view = [controllerCopy view];
    [view setAlpha:0.0];
    layer = [view layer];
    [layer setName:@"overlayHostView"];

    [(PREditorRootViewController *)self addChildViewController:controllerCopy];
    if (subviewCopy)
    {
      view2 = [(PREditorRootViewController *)self view];
      [view2 insertSubview:view aboveSubview:subviewCopy];

      [view setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = MEMORY[0x1E696ACD8];
      view3 = [(PREditorRootViewController *)self view];
      v13 = [view3 pui_constraintsPinningSubview:view toEdges:15];
      [v11 activateConstraints:v13];
    }

    [controllerCopy didMoveToParentViewController:self];
    [(PREditorRootViewController *)self updateOverlayHostViewControllerVisibility];
  }
}

- (void)updateOverlayHostViewControllerVisibility
{
  v3 = self->_overlayHostViewController;
  if (v3)
  {
    editor = [(PREditorRootViewController *)self editor];
    viewsHaveASubview = [editor viewsHaveASubview];

    v6 = MEMORY[0x1E69DD250];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__PREditorRootViewController_updateOverlayHostViewControllerVisibility__block_invoke;
    v9[3] = &unk_1E78437A0;
    v10 = v3;
    v11 = viewsHaveASubview;
    [v6 animateWithDuration:v9 animations:0.2];
    v7 = PRLogEditing();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (viewsHaveASubview)
    {
      if (v8)
      {
        [PREditorRootViewController updateOverlayHostViewControllerVisibility];
      }
    }

    else if (v8)
    {
      [PREditorRootViewController updateOverlayHostViewControllerVisibility];
    }
  }
}

void __71__PREditorRootViewController_updateOverlayHostViewControllerVisibility__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v4 = v2;
  v3 = 0.0;
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  [v2 setAlpha:v3];
}

- (void)updateReticleViewFrames
{
  v25 = *MEMORY[0x1E69E9840];
  editor = [(PREditorRootViewController *)self editor];
  v4 = 0.0;
  if ([editor areViewsSharedBetweenLooks])
  {
    scrollView = [(PREditorRootViewController *)self scrollView];
    [scrollView contentOffset];
    v4 = v6;
  }

  updateReticleRecursionDepth = self->_updateReticleRecursionDepth;
  if (updateReticleRecursionDepth > 2)
  {
    interfaceOrientation = [(PREditorRootViewController *)self interfaceOrientation];
    configuredProperties = [editor configuredProperties];
    titleStyleConfiguration = [configuredProperties titleStyleConfiguration];
    [titleStyleConfiguration preferredTimeMaxYForOrientation:interfaceOrientation];
    v12 = v11;

    preferences = [editor preferences];
    [preferences preferredSalientContentRectangle];
    v14 = NSStringFromCGRect(v26);

    v15 = PRLogEditing();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      isAdaptiveTimeHeightUserConfigured = [editor isAdaptiveTimeHeightUserConfigured];
      timeResizeGestureActive = self->_timeResizeGestureActive;
      v18[0] = 67109890;
      v18[1] = isAdaptiveTimeHeightUserConfigured;
      v19 = 2048;
      v20 = v12;
      v21 = 2114;
      v22 = v14;
      v23 = 1024;
      v24 = timeResizeGestureActive;
      _os_log_fault_impl(&dword_1A8AA7000, v15, OS_LOG_TYPE_FAULT, "Avoiding unexpected recursion. timeHeightUserConf: %{BOOL}d; confMaxY: %f; posterSalientRect: %{public}@; timeResizeGestureActive: %{BOOL}d", v18, 0x22u);
    }
  }

  else
  {
    self->_updateReticleRecursionDepth = updateReticleRecursionDepth + 1;
    [(PREditorRootViewController *)self _updateReticleViewFramesWithOffset:v4];
    --self->_updateReticleRecursionDepth;
  }
}

- (void)_updateReticleViewFramesWithOffset:(double)offset
{
  if ([(PREditorRootViewController *)self _appearState]!= 2)
  {
    return;
  }

  editor = [(PREditorRootViewController *)self editor];
  view = [(PREditorRootViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  editorElementLayoutController = [(PREditorRootViewController *)self editorElementLayoutController];
  configuredProperties = [(PREditorRootViewController *)self configuredProperties];
  titleStyleConfiguration = [configuredProperties titleStyleConfiguration];
  titleString = [editor titleString];
  v18 = [titleStyleConfiguration effectiveTitleLayoutForText:titleString];

  reticleVibrancyView = [(PREditorRootViewController *)self reticleVibrancyView];
  displaysHeaderElements = [editor displaysHeaderElements];
  if (reticleVibrancyView && displaysHeaderElements)
  {
    v250 = titleStyleConfiguration;
    displaysSubtitleElement = [editor displaysSubtitleElement];
    areComplicationsAllowed = [editor areComplicationsAllowed];
    isComplicationRowAtBottom = [editor isComplicationRowAtBottom];
    v24 = 3;
    if (!displaysSubtitleElement)
    {
      v24 = 1;
    }

    v25 = v24 | 0xC;
    if (isComplicationRowAtBottom)
    {
      v25 = v24 | 0x24;
    }

    if (areComplicationsAllowed)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    v27 = [editorElementLayoutController frameAttributesForElements:v26 variant:3 titleLayout:v18 withBoundingRect:{v8, v10, v12, v14}];
    [v27 rect];
    offsetCopy = offset;
    [reticleVibrancyView setFrame:v28 + offset];
    inlineComplicationReticleView = [(PREditorRootViewController *)self inlineComplicationReticleView];
    [editorElementLayoutController frameForElements:2 variant:3 withBoundingRect:{v8, v10, v12, v14}];
    v259 = v30;
    v260 = v29;
    v242 = v32;
    v243 = v31;
    titleReticleView = [(PREditorRootViewController *)self titleReticleView];
    v244 = [editorElementLayoutController frameAttributesForElements:1 variant:3 titleLayout:v18 withBoundingRect:{v8, v10, v12, v14}];
    [v244 rect];
    v33 = v12;
    rect_16 = v34;
    rect_24 = v35;
    v261 = v36;
    v256 = v37;
    v38 = [editorElementLayoutController frameAttributesForElements:1 variant:2 titleLayout:v18 withBoundingRect:{v8, v10, v12, v14}];
    [v38 rect];
    v39 = v10;
    v247 = v10;
    v248 = v8;
    rect = v40;
    v42 = v41;
    v44 = v43;
    v258 = v45;

    v241 = v33;
    rect_8 = v14;
    v46 = [editorElementLayoutController frameAttributesForElements:1 variant:1 titleLayout:v18 withBoundingRect:{v8, v39, v33, v14}];
    [v46 rect];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;

    v269.origin.x = rect;
    v269.origin.y = v42;
    v269.size.width = v44;
    v269.size.height = v258;
    MaxY = CGRectGetMaxY(v269);
    v234 = v50;
    v235 = v48;
    v270.origin.x = v48;
    v270.origin.y = v50;
    v232 = v54;
    v233 = v52;
    v270.size.width = v52;
    v270.size.height = v54;
    v238 = MaxY - CGRectGetMaxY(v270);
    v240 = v42;
    v237 = v44;
    if (!PUIFeatureEnabled())
    {
      v88 = rect_24;
      v87 = v256;
      v89 = 0;
      v90 = 0.0;
      v91 = rect_16;
      v92 = v261;
      goto LABEL_76;
    }

    v239 = v27;
    editor2 = [(PREditorRootViewController *)self editor];
    preferences = [editor2 preferences];
    [preferences preferredSalientContentRectangle];
    v230 = v59;
    v231 = v58;
    v61 = v60;
    v229 = v62;

    v271.origin.x = rect_16;
    v271.origin.y = v261;
    v271.size.width = rect_24;
    v271.size.height = v256;
    Height = CGRectGetHeight(v271);
    v272.origin.x = rect;
    v272.origin.y = v240;
    v272.size.width = v44;
    v272.size.height = v258;
    v226 = CGRectGetHeight(v272);
    [(PREditorRootViewController *)self _maximumAdaptiveTimeTextHeight];
    v64 = v63;
    v273.origin.x = rect_16;
    v273.origin.y = v261;
    v273.size.width = rect_24;
    v273.size.height = v256;
    MinY = CGRectGetMinY(v273);
    v66 = v64 + MinY;
    if (v61 >= v64 + MinY)
    {
      v67 = v64 + MinY;
    }

    else
    {
      v67 = v61;
    }

    v69 = v230;
    v68 = v231;
    v221 = v67;
    v70 = v229;
    IsNull = CGRectIsNull(*(&v67 - 1));
    editor3 = [(PREditorRootViewController *)self editor];
    preferences2 = [editor3 preferences];
    [preferences2 acceptableSalientContentRectangle];
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;

    v274.origin.x = v74;
    v274.origin.y = v76;
    v274.size.width = v78;
    v274.size.height = v80;
    v81 = CGRectIsNull(v274);
    currentLook = [(PREditorRootViewController *)self currentLook];
    v83 = [(PREditorRootViewController *)self timeViewControllerForLook:currentLook];

    v84 = objc_opt_class();
    v85 = v83;
    v236 = reticleVibrancyView;
    if (v84)
    {
      if (objc_opt_isKindOfClass())
      {
        v86 = v85;
      }

      else
      {
        v86 = 0;
      }
    }

    else
    {
      v86 = 0;
    }

    v93 = v86;

    supportsAdaptiveTimeTextHeight = [v93 supportsAdaptiveTimeTextHeight];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v95 = [currentDevice userInterfaceIdiom] == 1 && self->_complicationSidebarConfigured;
    [v93 setHasSidebarContents:v95];

    v96 = v14;
    if (!v81)
    {
      v275.origin.x = v74;
      v275.origin.y = v76;
      v275.size.width = v78;
      v275.size.height = v80;
      v97 = CGRectGetMinY(v275);
      if (v66 < v97)
      {
        v97 = v66;
      }

      v96 = fmax(v97, 0.0);
    }

    v225 = v66;
    editor4 = [(PREditorRootViewController *)self editor];
    preferences3 = [editor4 preferences];
    adaptiveTimeMode = [preferences3 adaptiveTimeMode];

    editor5 = [(PREditorRootViewController *)self editor];
    preferences4 = [editor5 preferences];
    complicationRowMode = [preferences4 complicationRowMode];

    editor6 = [(PREditorRootViewController *)self editor];
    preferences5 = [editor6 preferences];
    if ([preferences5 adaptiveTimeMode] == 2 && -[PREditorRootViewController isComplicationsRowConfigured](self, "isComplicationsRowConfigured"))
    {
      v223 = v85;
      isComplicationRowAtBottom2 = [(PREditorRootViewController *)self isComplicationRowAtBottom];

      v89 = 0;
      v90 = 0.0;
      v92 = v261;
      v88 = rect_24;
      v87 = v256;
      if (!isComplicationRowAtBottom2 || complicationRowMode == 1)
      {
        reticleVibrancyView = v236;
        v27 = v239;
        v85 = v223;
LABEL_75:
        [(SBHIconResizeHandle *)self->_titleResizeHandle setHidden:v89 ^ 1u];

        v91 = rect_16;
LABEL_76:
        v257 = v90;
        if (!PUIFeatureEnabled())
        {
          titleStyleConfiguration = v250;
          v147 = titleReticleView;
LABEL_97:
          if (BSFloatLessThanFloat())
          {
            v88 = v259;
            v160 = v260;
          }

          else
          {
            v160 = v91;
          }

          superview = [v147 superview];
          [superview convertRect:view fromView:{v160, v92, v88, v87}];
          v162 = v87;
          v164 = v163;
          v166 = v165;
          v168 = v167;
          v170 = v169;

          [view bounds];
          if (BSFloatLessThanFloat())
          {
            +[PRIncomingCallMetricsProvider horizontalTextEdgePadding];
            v172 = v171;
            [view frame];
            v174 = (v172 + vabdd_f64(v88, v173)) * 0.5;
            [view frame];
            v88 = v175 - v172;
            v160 = v160 + v174;
            superview2 = [v147 superview];
            v177 = v92;
            v178 = v162;
            [superview2 convertRect:view fromView:{v160, v177, v88, v162}];
            v164 = v179;
            v166 = v180;
            v168 = v181;
            v170 = v182;

            v183 = PRLogEditing();
            if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A8AA7000, v183, OS_LOG_TYPE_DEFAULT, "_updateReticleViewFramesWithOffset titleReticleViewFrame exceeded rootView width, using clamped width instead", buf, 2u);
            }
          }

          else
          {
            v178 = v162;
          }

          [v147 setFrame:{v164, v166, v168, v170}];
          editor7 = [(PREditorRootViewController *)self editor];
          [editor7 updateHostForTitleReticleFrameChanged:{v160, v261, v88, v178}];

          superview3 = [inlineComplicationReticleView superview];
          [superview3 convertRect:view fromView:{v260, v243, v259, v242}];
          v187 = v186;
          v189 = v188;
          v191 = v190;
          v193 = v192;

          [inlineComplicationReticleView setFrame:{v187, v189, v191, v193}];
          [(PREditorRootViewController *)self _updateComplicationRowReticleWithOffset:0 animated:v257];

          v8 = v248;
          offset = offsetCopy;
          v10 = v247;
          v12 = v241;
          v14 = rect_8;
          goto LABEL_106;
        }

        v138 = v27;
        currentLook2 = [(PREditorRootViewController *)self currentLook];
        v140 = [(PREditorRootViewController *)self timeViewControllerForLook:currentLook2];

        objc_opt_class();
        rect_24a = v140;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v146 = v250;
          v147 = titleReticleView;
LABEL_90:
          titleResizeHandle = self->_titleResizeHandle;
          if (titleResizeHandle)
          {
            [(SBHIconResizeHandle *)titleResizeHandle metrics];
            v153 = *&v264 + -1.0;
          }

          else
          {
            v267 = 0u;
            v268 = 0u;
            v265 = 0u;
            v266 = 0u;
            v264 = 0u;
            v153 = -1.0;
          }

          titleStyleConfiguration = v146;
          userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
          v155 = v91;
          v156 = v92;
          v157 = v88;
          v158 = v87;
          if (userInterfaceLayoutDirection == 1)
          {
            v159 = v153 + CGRectGetMinX(*&v155);
          }

          else
          {
            v159 = CGRectGetMaxX(*&v155) - v153;
          }

          v282.origin.x = v91;
          v282.origin.y = v92;
          v282.size.width = v88;
          v282.size.height = v87;
          [(SBHIconResizeHandle *)self->_titleResizeHandle setCenter:v159, CGRectGetMaxY(v282) - v153];

          goto LABEL_97;
        }

        v141 = v140;
        v142 = v141;
        if (v89)
        {
          [v141 setAdaptsTimeTextHeight:1];
          v281.origin.x = rect;
          v281.origin.y = v240;
          v281.size.width = v237;
          v281.size.height = v258;
          [v142 setAdaptiveTimeTextHeight:CGRectGetHeight(v281) - v238];
          currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
          userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

          if (userInterfaceIdiom == 1)
          {
            [v142 relativeAdaptiveTimeTextWidth];
            v146 = v250;
            v147 = titleReticleView;
            if (v145 > 1.0)
            {
              v148 = v88 * (v145 + -1.0);
              v88 = v88 + v148;
              v91 = v91 - v148 * 0.5;
              [reticleVibrancyView frame];
              if (v150 >= v88)
              {
                v151 = v150;
              }

              else
              {
                v151 = v88;
              }

              [reticleVibrancyView setFrame:v149 - (v151 - v150) * 0.5];
            }

            goto LABEL_89;
          }
        }

        else
        {
          [v141 setAdaptsTimeTextHeight:0];
        }

        v146 = v250;
        v147 = titleReticleView;
LABEL_89:

        v27 = v138;
        goto LABEL_90;
      }

      reticleVibrancyView = v236;
      v85 = v223;
      if ((supportsAdaptiveTimeTextHeight ^ 1))
      {
        goto LABEL_60;
      }
    }

    else
    {

      v89 = 0;
      v90 = 0.0;
      v92 = v261;
      v88 = rect_24;
      v87 = v256;
      if (complicationRowMode == 1)
      {
        reticleVibrancyView = v236;
        goto LABEL_60;
      }

      reticleVibrancyView = v236;
      if ((supportsAdaptiveTimeTextHeight ^ 1))
      {
LABEL_60:
        v27 = v239;
        goto LABEL_75;
      }
    }

    v27 = v239;
    if (adaptiveTimeMode != 3)
    {
      if ((PUIFeatureEnabled() & 1) != 0 || ![(PREditorRootViewController *)self isComplicationsRowConfigured])
      {
        v224 = v85;
        interfaceOrientation = [(PREditorRootViewController *)self interfaceOrientation];
        configuredProperties2 = [editor configuredProperties];
        titleStyleConfiguration2 = [configuredProperties2 titleStyleConfiguration];
        [titleStyleConfiguration2 preferredTimeMaxYForOrientation:interfaceOrientation];
        v111 = v110;

        v112 = v111;
        if (v111 <= 1.0)
        {
          view2 = [(PREditorRootViewController *)self view];
          [view2 frame];
          v112 = v111 * v114;
        }

        editor8 = [(PREditorRootViewController *)self editor];
        editingContext = [editor8 editingContext];

        editor9 = [(PREditorRootViewController *)self editor];
        isAdaptiveTimeHeightUserConfigured = [editor9 isAdaptiveTimeHeightUserConfigured];

        editor10 = [(PREditorRootViewController *)self editor];
        isIgnoringSalientContentForTimeHeight = [editor10 isIgnoringSalientContentForTimeHeight];

        v219 = v96;
        if (editingContext && !((v112 != 0.0) & isAdaptiveTimeHeightUserConfigured | isIgnoringSalientContentForTimeHeight & 1))
        {
          if (IsNull)
          {
            v276.origin.x = rect_16;
            v276.origin.y = v92;
            v276.size.width = v88;
            v276.size.height = v87;
            v121 = CGRectGetMinY(v276);
          }

          else
          {
            v277.size.width = v230;
            v277.origin.x = v231;
            v277.origin.y = v221;
            v277.size.height = v229;
            v121 = fmax(CGRectGetMinY(v277), 0.0);
          }

          v85 = v224;
          editor11 = [(PREditorRootViewController *)self editor];
          [editor11 setAdaptiveTimeHeightUserConfigured:0];

          [(PREditorRootViewController *)self updateForDesiredTimeMaxY:interfaceOrientation orientation:v121];
          reticleVibrancyView = v236;
          v27 = v239;
        }

        else if (v112 <= 0.0)
        {
          v27 = v239;
          v85 = v224;
          if (v112 == 0.0)
          {
            if (v225 >= v87)
            {
              v122 = v87;
            }

            else
            {
              v122 = v225;
            }

            if (v111 == 0.0)
            {
              v121 = v122;
            }

            else
            {
              v121 = v225;
            }

            reticleVibrancyView = v236;
          }

          else
          {
            reticleVibrancyView = v236;
            v121 = v225;
          }
        }

        else
        {
          v121 = v225;
          if (v225 >= v112)
          {
            v121 = v112;
          }

          reticleVibrancyView = v236;
          v27 = v239;
          v85 = v224;
        }

        v90 = 0.0;
        v124 = v121;
        if (v121 > 0.0)
        {
          v278.origin.y = v234;
          v278.origin.x = v235;
          v278.size.height = v232;
          v278.size.width = v233;
          v125 = CGRectGetMaxY(v278);
          v279.origin.x = rect;
          v279.origin.y = v240;
          v279.size.width = v237;
          v279.size.height = v258;
          v126 = v125 - CGRectGetMinY(v279);
          v280.origin.x = rect;
          v280.origin.y = v240;
          v280.size.width = v237;
          v280.size.height = v258;
          v127 = v121 - CGRectGetMinY(v280);
          if (v126 >= v127)
          {
            v127 = v126;
          }

          v90 = v127 - v126;
          v258 = v238 + v127;
        }

        isTimeResizeGestureActive = [(PREditorRootViewController *)self isTimeResizeGestureActive];
        v129 = v258;
        if (isTimeResizeGestureActive)
        {
          v130 = v90;
          [(PREditorRootViewController *)self timeResizeGestureHeight];
          v132 = v131;
          [(PREditorRootViewController *)self _maximumAdaptiveTimeTextHeight];
          if (v132 >= v256)
          {
            v135 = v133;
            if (v132 > v133)
            {
              BSUIConstrainValueWithRubberBand();
              v132 = v135 + v136;
            }
          }

          else
          {
            BSUIConstrainValueWithRubberBand();
            v132 = v256 - v134;
          }

          v129 = v238 + v132;
          v88 = rect_24;
          v90 = v130;
        }

        v87 = Height - v226 + v129;
        [reticleVibrancyView frame];
        [reticleVibrancyView setFrame:?];
        editor12 = [(PREditorRootViewController *)self editor];
        [editor12 setDepthEffectDisallowed:v124 > v220 forReason:@"adaptiveTime"];

        v89 = 1;
      }

      else
      {
        v89 = 0;
      }
    }

    goto LABEL_75;
  }

LABEL_106:
  sidebarReticleVibrancyView = [(PREditorRootViewController *)self sidebarReticleVibrancyView];
  if (sidebarReticleVibrancyView)
  {
    v195 = [editorElementLayoutController frameAttributesForElements:16 variant:3 titleLayout:0 withBoundingRect:{v8, v10, v12, v14}];
    [v195 rect];
    [sidebarReticleVibrancyView setFrame:v196 + offset];
    [(PREditorRootViewController *)self complicationSidebarReticleView];
    v197 = editor;
    v198 = titleStyleConfiguration;
    v200 = v199 = reticleVibrancyView;
    [editorElementLayoutController frameForElements:16 variant:3 withBoundingRect:{v8, v10, v12, v14}];
    v202 = v201;
    v204 = v203;
    v206 = v205;
    v208 = v207;
    superview4 = [v200 superview];
    [superview4 convertRect:view fromView:{v202, v204, v206, v208}];
    v211 = v210;
    v213 = v212;
    v215 = v214;
    v217 = v216;

    [v200 setFrame:{v211, v213, v215, v217}];
    complicationSidebarEmptyStateView = [(PREditorRootViewController *)self complicationSidebarEmptyStateView];
    [v200 bounds];
    [complicationSidebarEmptyStateView setFrame:?];

    reticleVibrancyView = v199;
    titleStyleConfiguration = v198;
    editor = v197;
  }
}

- (void)_updateBottomControlsYConstraint
{
  v36[1] = *MEMORY[0x1E69E9840];
  bottomControlsYConstraint = [(PREditorRootViewController *)self bottomControlsYConstraint];
  v4 = bottomControlsYConstraint;
  if (bottomControlsYConstraint)
  {
    v5 = MEMORY[0x1E696ACD8];
    v36[0] = bottomControlsYConstraint;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    [v5 deactivateConstraints:v6];
  }

  if ([(PREditorRootViewController *)self _shouldShowQuickActionEditing])
  {
    if (self->_complicationRowAtBottom)
    {
      bottomAnchor = [(BSUIVibrancyEffectView *)self->_controlsVibrancyView bottomAnchor];
      complicationRowReticleView = [(PREditorRootViewController *)self complicationRowReticleView];
      topAnchor = [complicationRowReticleView topAnchor];
      v10 = -38.0;
    }

    else
    {
      [PREditorElementLayoutController frameForElements:64 variant:2];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      lookNameLabel = [(PREditorRootViewController *)self lookNameLabel];
      [lookNameLabel frame];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v37.origin.x = v24;
      v37.origin.y = v26;
      v37.size.width = v28;
      v37.size.height = v30;
      MinY = CGRectGetMinY(v37);
      v38.origin.x = v15;
      v38.origin.y = v17;
      v38.size.width = v19;
      v38.size.height = v21;
      v32 = CGRectGetMinY(v38);
      bottomAnchor = [(BSUIVibrancyEffectView *)self->_controlsVibrancyView bottomAnchor];
      complicationRowReticleView = [(PREditorRootViewController *)self lookNameLabel];
      topAnchor = [complicationRowReticleView topAnchor];
      v10 = v32 - MinY + -38.0;
    }

    v13 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:v10];
  }

  else
  {
    bottomAnchor = [(PREditorRootViewController *)self pageControl];
    complicationRowReticleView = [bottomAnchor bottomAnchor];
    topAnchor = [(PREditorRootViewController *)self view];
    safeAreaLayoutGuide = [topAnchor safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
    v13 = [complicationRowReticleView constraintEqualToAnchor:bottomAnchor2 constant:-20.0];

    v4 = safeAreaLayoutGuide;
  }

  [(PREditorRootViewController *)self setBottomControlsYConstraint:v13];
  v33 = MEMORY[0x1E696ACD8];
  v35 = v13;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [v33 activateConstraints:v34];
}

- (void)_updateComplicationRowReticleWithOffset:(double)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PREditorRootViewController *)self _appearState]== 2)
  {
    complicationRowReticleView = [(PREditorRootViewController *)self complicationRowReticleView];
    if (self->_complicationRowAtBottom)
    {
      [PREditorElementLayoutController frameForElements:32 variant:3];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
    }

    else
    {
      [PREditorElementLayoutController frameForElements:8 variant:3];
      v9 = v16;
      v13 = v17;
      v15 = v18;
      v11 = v19 + offset;
    }

    superview = [complicationRowReticleView superview];
    view = [(PREditorRootViewController *)self view];
    [superview convertRect:view fromView:{v9, v11, v13, v15}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    if (animatedCopy)
    {
      v30 = MEMORY[0x1E69DD250];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __79__PREditorRootViewController__updateComplicationRowReticleWithOffset_animated___block_invoke;
      v31[3] = &unk_1E7843BB8;
      v34 = v23;
      v35 = v25;
      v36 = v27;
      v37 = v29;
      v32 = complicationRowReticleView;
      selfCopy = self;
      [v30 _animateUsingSpringWithDampingRatio:0 response:v31 tracking:&__block_literal_global_228 dampingRatioSmoothing:0.9 responseSmoothing:0.9 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    }

    else
    {
      [(PREditorRootViewController *)self _updateBottomControlsYConstraint];
      [complicationRowReticleView setFrame:{v23, v25, v27, v29}];
    }
  }
}

void __79__PREditorRootViewController__updateComplicationRowReticleWithOffset_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 40) _updateBottomControlsYConstraint];
  v2 = [*(a1 + 40) view];
  [v2 layoutIfNeeded];
}

- (void)_updateComplicationSidebarEmptyViewVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  view = [(PREditorRootViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {

    v10 = 0.0;
    if ((interfaceOrientation - 1) < 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = 0.0;
  if (![(PREditorRootViewController *)self isTitleReticleActive])
  {
    if ([(PREditorRootViewController *)self focusedComplicationElement])
    {
      if ([(PREditorRootViewController *)self focusedComplicationElement]!= 3)
      {
        goto LABEL_11;
      }
    }

    else if ([(PREditorRootViewController *)self areControlsHidden])
    {
      goto LABEL_11;
    }

    if (self->_complicationSidebarConfigured)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 1.0;
    }
  }

LABEL_11:
  if (!animatedCopy || self->_complicationSidebarConfigured)
  {
    complicationSidebarEmptyStateView = self->_complicationSidebarEmptyStateView;

    [(PRComplicationEmptyStateView *)complicationSidebarEmptyStateView setAlpha:v10];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__PREditorRootViewController__updateComplicationSidebarEmptyViewVisibilityAnimated___block_invoke;
    v12[3] = &unk_1E78441A8;
    v12[4] = self;
    *&v12[5] = v10;
    [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.3];
  }
}

- (void)_updateComplicationsVibrancyFromCurrentLook
{
  currentLook = [(PREditorRootViewController *)self currentLook];
  v4 = currentLook;
  if (currentLook)
  {
    v17 = currentLook;
    v5 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:currentLook];
    titleContentStyle = [v5 titleContentStyle];
    type = [titleContentStyle type];

    if (type == 1)
    {
      v8 = [objc_alloc(MEMORY[0x1E698E810]) initWithEffectType:2 backgroundType:0 color:0];
    }

    else
    {
      extensionBundleURL = [(PREditorRootViewController *)self extensionBundleURL];
      v8 = [v5 vibrancyConfigurationWithExtensionBundleURL:extensionBundleURL];
    }

    [(PREditorRootViewController *)self _setVibrancyConfiguration:v8];
    subtitleViewController = [(PREditorRootViewController *)self subtitleViewController];
    color = [v8 color];
    [subtitleViewController setTextColor:color];

    [subtitleViewController setEffectType:{objc_msgSend(v8, "effectType")}];
    [subtitleViewController setBackgroundType:{objc_msgSend(v8, "backgroundType")}];
    alternativeVibrancyEffectLUT = [v8 alternativeVibrancyEffectLUT];
    v13 = objc_opt_respondsToSelector();
    lutIdentifier = [alternativeVibrancyEffectLUT lutIdentifier];
    bundleURL = [alternativeVibrancyEffectLUT bundleURL];
    if (v13)
    {
      [subtitleViewController setAlternativeVibrancyEffectLUTIdentifier:lutIdentifier alternativeVibrancyEffectLUTBundleURL:bundleURL luminanceReduced:0];
    }

    else
    {
      [subtitleViewController setAlternativeVibrancyEffectLUTIdentifier:lutIdentifier alternativeVibrancyEffectLUTBundleURL:bundleURL];
    }

    groupName = [v8 groupName];
    [subtitleViewController setGroupName:groupName];

    v4 = v17;
  }

  MEMORY[0x1EEE66BB8](currentLook, v4);
}

- (void)_setVibrancyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  editor = [(PREditorRootViewController *)self editor];
  [editor setComplicationsVibrancyConfiguration:configurationCopy];

  v9 = [PREditingReticleView reticleVibrancyForVibrancyConfiguration:configurationCopy];

  reticleVibrancyView = [(PREditorRootViewController *)self reticleVibrancyView];
  [reticleVibrancyView setConfiguration:v9];

  sidebarReticleVibrancyView = [(PREditorRootViewController *)self sidebarReticleVibrancyView];
  [sidebarReticleVibrancyView setConfiguration:v9];

  controlsVibrancyView = [(PREditorRootViewController *)self controlsVibrancyView];
  [controlsVibrancyView setConfiguration:v9];
}

- (unint64_t)backgroundTypeForLook:(id)look
{
  v3 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:look];
  [v3 contentsLuminance];
  v5 = PRPosterContentsBackgroundTypeForLuminance(v4);

  return v5;
}

- (void)setLooks:(id)looks forUpdatingProperties:(BOOL)properties
{
  looksCopy = looks;
  if ((BSEqualArrays() & 1) == 0)
  {
    if (properties)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:looksCopy copyItems:1];
      looks = self->_looks;
      self->_looks = v6;

      [(PREditorRootViewController *)self lookPropertiesDidChange];
    }

    else
    {
      [(PREditorRootViewController *)self looksWillChange];
      v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:looksCopy copyItems:1];
      v9 = self->_looks;
      self->_looks = v8;

      [(PREditorRootViewController *)self looksDidChange];
    }
  }
}

- (id)viewForMenuElementIdentifier:(id)identifier
{
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  leadingMenuElements = [(PREditorRootViewController *)self leadingMenuElements];
  trailingMenuElements = [(PREditorRootViewController *)self trailingMenuElements];
  v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v8 = [v7 arrayByAddingObjectsFromArray:leadingMenuElements];

  v37 = trailingMenuElements;
  v9 = [v8 arrayByAddingObjectsFromArray:trailingMenuElements];

  leadingMenuElementViews = [(PREditorRootViewController *)self leadingMenuElementViews];
  trailingMenuElementViews = [(PREditorRootViewController *)self trailingMenuElementViews];
  v12 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v36 = leadingMenuElementViews;
  v13 = [v12 arrayByAddingObjectsFromArray:leadingMenuElementViews];

  v35 = trailingMenuElementViews;
  v39 = [v13 arrayByAddingObjectsFromArray:trailingMenuElementViews];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v9;
  v14 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v41;
    v34 = leadingMenuElements;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v40 + 1) + 8 * i);
        v20 = [v39 objectAtIndex:{v16, v34}];
        v21 = objc_opt_class();
        v22 = v19;
        if (v21)
        {
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        identifier = [v24 identifier];
        v26 = [identifier isEqualToString:identifierCopy];

        if (v26)
        {
          goto LABEL_23;
        }

        v27 = objc_opt_class();
        v28 = v22;
        if (v27)
        {
          if (objc_opt_isKindOfClass())
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;

        identifier2 = [v30 identifier];
        v32 = [identifier2 isEqualToString:identifierCopy];

        if (v32)
        {

LABEL_23:
          leadingMenuElements = v34;
          goto LABEL_24;
        }

        ++v16;
      }

      v15 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      v20 = 0;
      leadingMenuElements = v34;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_24:

  return v20;
}

- (void)_updateAdditionalControlsLayout
{
  v21[4] = *MEMORY[0x1E69E9840];
  if ([(PREditorRootViewController *)self _appearState]== 2)
  {
    additionalControls = [(PREditorRootViewController *)self additionalControls];
    v4 = additionalControls;
    if (additionalControls)
    {
      if ([additionalControls count])
      {
        view = [(PREditorRootViewController *)self view];
        safeAreaLayoutGuide = [view safeAreaLayoutGuide];
        v6 = [v4 objectAtIndex:0];
        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
        v15 = MEMORY[0x1E696ACD8];
        topAnchor = [v6 topAnchor];
        topAnchor2 = [safeAreaLayoutGuide topAnchor];
        v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:22.0];
        v21[0] = v17;
        leadingAnchor = [v6 leadingAnchor];
        leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
        v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:44.0];
        v21[1] = v7;
        widthAnchor = [v6 widthAnchor];
        widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
        v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.25];
        v21[2] = v10;
        heightAnchor = [v6 heightAnchor];
        v12 = [heightAnchor constraintEqualToConstant:50.0];
        v21[3] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
        [v15 activateConstraints:v13];
      }
    }
  }
}

- (void)_updateMenuElements
{
  v48 = *MEMORY[0x1E69E9840];
  if ([(PREditorRootViewController *)self _appearState]== 2)
  {
    leadingMenuElements = [(PREditorRootViewController *)self leadingMenuElements];
    trailingMenuElements = [(PREditorRootViewController *)self trailingMenuElements];
    if ([leadingMenuElements count] < 3)
    {
      if ([trailingMenuElements count] < 3)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        leadingMenuElementViews = [(PREditorRootViewController *)self leadingMenuElementViews];
        v7 = [leadingMenuElementViews countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v41;
          do
          {
            v10 = 0;
            do
            {
              if (*v41 != v9)
              {
                objc_enumerationMutation(leadingMenuElementViews);
              }

              [*(*(&v40 + 1) + 8 * v10++) removeFromSuperview];
            }

            while (v8 != v10);
            v8 = [leadingMenuElementViews countByEnumeratingWithState:&v40 objects:v47 count:16];
          }

          while (v8);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        trailingMenuElementViews = [(PREditorRootViewController *)self trailingMenuElementViews];
        v12 = [trailingMenuElementViews countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v37;
          do
          {
            v15 = 0;
            do
            {
              if (*v37 != v14)
              {
                objc_enumerationMutation(trailingMenuElementViews);
              }

              [*(*(&v36 + 1) + 8 * v15++) removeFromSuperview];
            }

            while (v13 != v15);
            v13 = [trailingMenuElementViews countByEnumeratingWithState:&v36 objects:v46 count:16];
          }

          while (v13);
        }

        v16 = [(PREditorRootViewController *)self _viewsForMenuElements:leadingMenuElements];
        [(PREditorRootViewController *)self setLeadingMenuElementViews:v16];
        v17 = [(PREditorRootViewController *)self _viewsForMenuElements:trailingMenuElements];
        [(PREditorRootViewController *)self setTrailingMenuElementViews:v17];
        view = [(PREditorRootViewController *)self view];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v5 = v16;
        v19 = [v5 countByEnumeratingWithState:&v32 objects:v45 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v33;
          do
          {
            v22 = 0;
            do
            {
              if (*v33 != v21)
              {
                objc_enumerationMutation(v5);
              }

              [view addSubview:*(*(&v32 + 1) + 8 * v22++)];
            }

            while (v20 != v22);
            v20 = [v5 countByEnumeratingWithState:&v32 objects:v45 count:16];
          }

          while (v20);
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v23 = v17;
        v24 = [v23 countByEnumeratingWithState:&v28 objects:v44 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v29;
          do
          {
            v27 = 0;
            do
            {
              if (*v29 != v26)
              {
                objc_enumerationMutation(v23);
              }

              [view addSubview:{*(*(&v28 + 1) + 8 * v27++), v28}];
            }

            while (v25 != v27);
            v25 = [v23 countByEnumeratingWithState:&v28 objects:v44 count:16];
          }

          while (v25);
        }

        [(PREditorRootViewController *)self _updateButtonLayout];
      }

      else
      {
        v5 = PRLogEditing();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          [PREditorRootViewController _updateMenuElements];
        }
      }
    }

    else
    {
      v5 = PRLogEditing();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [PREditorRootViewController _updateMenuElements];
      }
    }
  }
}

- (id)_viewsForMenuElements:(id)elements
{
  v48 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = elementsCopy;
  v37 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v37)
  {
    goto LABEL_31;
  }

  v35 = *v44;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  do
  {
    for (i = 0; i != v37; ++i)
    {
      if (*v44 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v43 + 1) + 8 * i);
      v10 = objc_opt_class();
      v11 = v9;
      if (v10)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      v14 = objc_opt_class();
      v15 = v11;
      if (v14)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      identifier = [v13 identifier];
      v19 = [identifier isEqualToString:PREditorPlaceholderActionIdentifier];

      if (v19)
      {
        v20 = [objc_alloc(MEMORY[0x1E69DC638]) initWithFrame:{v4, v5, v6, v7}];
        [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [v20 setColor:whiteColor];

        [v20 startAnimating];
        [v36 addObject:v20];
        goto LABEL_29;
      }

      v20 = [PREditorMenuButton buttonWithType:0];
      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
      v22 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:26.0];
      [v20 setPreferredSymbolConfiguration:v22 forImageInState:0];
      accessibilityLabel = [v15 accessibilityLabel];
      [v20 setAccessibilityLabel:accessibilityLabel];

      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      [v20 setTintColor:whiteColor2];

      [v20 setPointerInteractionEnabled:1];
      objc_initWeak(&location, self);
      objc_initWeak(&from, v20);
      v25 = MEMORY[0x1E69DC628];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __52__PREditorRootViewController__viewsForMenuElements___block_invoke;
      v38[3] = &unk_1E78441D0;
      objc_copyWeak(&v39, &location);
      objc_copyWeak(&v40, &from);
      v26 = [v25 actionWithHandler:v38];
      [v20 addAction:v26 forControlEvents:0x4000];

      identifier2 = [v13 identifier];
      if ([identifier2 isEqualToString:PREditorDepthEffectActionIdentifier])
      {

LABEL_21:
        image = [(PREditorRootViewController *)self imageForDepthEffectActionTopLevelAction:1];
        [v20 setImage:image forState:0];
        goto LABEL_23;
      }

      identifier3 = [v17 identifier];
      v29 = [identifier3 isEqualToString:PREditorDepthEffectActionIdentifier];

      if (v29)
      {
        goto LABEL_21;
      }

      image = [v15 image];
      [v20 setImage:image forState:0];
LABEL_23:

      if (v13)
      {
        [v20 addAction:v13 forControlEvents:0x2000];
LABEL_27:
        [v20 setShowsMenuAsPrimaryAction:v13 == 0];
        goto LABEL_28;
      }

      if (v17)
      {
        [v20 setMenu:v17];
        goto LABEL_27;
      }

LABEL_28:
      [v36 addObject:v20];
      objc_destroyWeak(&v40);
      objc_destroyWeak(&v39);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);

LABEL_29:
    }

    v37 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v37);
LABEL_31:

  if ([v36 count])
  {
    v31 = [v36 copy];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

void __52__PREditorRootViewController__viewsForMenuElements___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained editor];
  v5 = [v3 _acquireModalPresentationAssertionForReason:@"MenuPresentation"];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setMenuPresentationAssertion:v5];
}

- (void)_updateButtonLayout
{
  v128 = *MEMORY[0x1E69E9840];
  if ([(PREditorRootViewController *)self _appearState]== 2)
  {
    leadingMenuElementViews = [(PREditorRootViewController *)self leadingMenuElementViews];
    trailingMenuElementViews = [(PREditorRootViewController *)self trailingMenuElementViews];
    if (!(leadingMenuElementViews | trailingMenuElementViews))
    {
LABEL_54:

      return;
    }

    view = [(PREditorRootViewController *)self view];
    pageControl = [(PREditorRootViewController *)self pageControl];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    reverseObjectEnumerator = [trailingMenuElementViews reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    reverseObjectEnumerator2 = [leadingMenuElementViews reverseObjectEnumerator];
    allObjects2 = [reverseObjectEnumerator2 allObjects];

    v87 = allObjects;
    v11 = [v6 arrayByAddingObjectsFromArray:allObjects];

    v86 = allObjects2;
    v12 = [v11 arrayByAddingObjectsFromArray:allObjects2];

    editor = [(PREditorRootViewController *)self editor];
    editingIdiom = [editor editingIdiom];

    v89 = v12;
    if (editingIdiom == 2)
    {
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      centerYAnchor = v12;
      v16 = [centerYAnchor countByEnumeratingWithState:&v117 objects:v127 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v118;
        v19 = v87;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v118 != v18)
            {
              objc_enumerationMutation(centerYAnchor);
            }

            [*(*(&v117 + 1) + 8 * i) setAlpha:0.0];
          }

          v17 = [centerYAnchor countByEnumeratingWithState:&v117 objects:v127 count:16];
        }

        while (v17);
      }

      else
      {
        v19 = v87;
      }

      v24 = v89;
      goto LABEL_53;
    }

    if ([(PREditorRootViewController *)self _shouldShowQuickActionEditing])
    {
      topAnchor = [(BSUIVibrancyEffectView *)self->_controlsVibrancyView topAnchor];
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        lookNameLabel = [(PREditorRootViewController *)self lookNameLabel];
        centerYAnchor = [lookNameLabel centerYAnchor];

LABEL_20:
        editor2 = [(PREditorRootViewController *)self editor];
        editingIdiom2 = [editor2 editingIdiom];

        if (editingIdiom2 == 1)
        {
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v24 = v12;
          obj = v12;
          v98 = [obj countByEnumeratingWithState:&v113 objects:v126 count:16];
          if (v98)
          {
            v83 = view;
            v84 = trailingMenuElementViews;
            v85 = leadingMenuElementViews;
            v28 = 0;
            v92 = *v114;
            v95 = centerYAnchor;
            do
            {
              v29 = 0;
              v30 = v28;
              do
              {
                if (*v114 != v92)
                {
                  objc_enumerationMutation(obj);
                }

                v31 = *(*(&v113 + 1) + 8 * v29);
                if (v30)
                {
                  [v30 leadingAnchor];
                }

                else
                {
                  [safeAreaLayoutGuide trailingAnchor];
                }
                v101 = ;
                v104 = MEMORY[0x1E696ACD8];
                centerYAnchor2 = [v31 centerYAnchor];
                v107 = [centerYAnchor2 constraintEqualToAnchor:v95];
                v125[0] = v107;
                widthAnchor = [v31 widthAnchor];
                v33 = [widthAnchor constraintEqualToConstant:50.0];
                v125[1] = v33;
                heightAnchor = [v31 heightAnchor];
                v35 = [heightAnchor constraintEqualToConstant:50.0];
                v125[2] = v35;
                trailingAnchor = [v31 trailingAnchor];
                v37 = [trailingAnchor constraintEqualToAnchor:v101 constant:-22.0];
                v125[3] = v37;
                v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:4];
                [v104 activateConstraints:v38];

                v28 = v31;
                ++v29;
                v30 = v28;
              }

              while (v98 != v29);
              v98 = [obj countByEnumeratingWithState:&v113 objects:v126 count:16];
            }

            while (v98);
            v24 = v89;
            centerYAnchor = v95;
            goto LABEL_51;
          }

LABEL_52:
          v19 = v87;

LABEL_53:
          goto LABEL_54;
        }

        obj = [view window];
        [obj frame];
        Width = CGRectGetWidth(v129);
        if (Width >= 395.0)
        {
          v40 = 44.0;
        }

        else
        {
          v40 = 36.0;
        }

        if (Width >= 395.0)
        {
          v41 = 34.0;
        }

        else
        {
          v41 = 22.0;
        }

        v24 = v12;
        if (Width < 390.0)
        {
          v41 = 16.0;
          if ([v12 count] >= 3)
          {
            [pageControl _setPreferredNumberOfVisibleIndicators:4];
          }
        }

        v84 = trailingMenuElementViews;
        v85 = leadingMenuElementViews;
        v83 = view;
        if ([leadingMenuElementViews count] == 1)
        {
          v42 = [leadingMenuElementViews objectAtIndex:0];
          v43 = MEMORY[0x1E696ACD8];
          centerYAnchor3 = [v42 centerYAnchor];
          v45 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor];
          v124[0] = v45;
          widthAnchor2 = [v42 widthAnchor];
          v47 = [widthAnchor2 constraintEqualToConstant:50.0];
          v124[1] = v47;
          heightAnchor2 = [v42 heightAnchor];
          heightAnchor3 = [heightAnchor2 constraintEqualToConstant:50.0];
          v124[2] = heightAnchor3;
          leadingAnchor = [v42 leadingAnchor];
          leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
          v105 = leadingAnchor;
          leadingAnchor3 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v40];
          v124[3] = leadingAnchor3;
          v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:4];
          [v43 activateConstraints:v51];
        }

        else
        {
          if ([leadingMenuElementViews count] != 2)
          {
            goto LABEL_46;
          }

          v42 = [leadingMenuElementViews objectAtIndex:0];
          centerYAnchor3 = [leadingMenuElementViews objectAtIndex:1];
          v93 = MEMORY[0x1E696ACD8];
          centerYAnchor4 = [v42 centerYAnchor];
          v102 = [centerYAnchor4 constraintEqualToAnchor:centerYAnchor];
          v123[0] = v102;
          widthAnchor3 = [v42 widthAnchor];
          heightAnchor2 = [widthAnchor3 constraintEqualToConstant:50.0];
          v123[1] = heightAnchor2;
          heightAnchor3 = [v42 heightAnchor];
          v105 = [heightAnchor3 constraintEqualToConstant:50.0];
          v123[2] = v105;
          leadingAnchor2 = [v42 leadingAnchor];
          leadingAnchor3 = [safeAreaLayoutGuide leadingAnchor];
          v51 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:v41];
          v123[3] = v51;
          v44CenterYAnchor = [centerYAnchor3 centerYAnchor];
          v77 = [v44CenterYAnchor constraintEqualToAnchor:centerYAnchor];
          v123[4] = v77;
          widthAnchor4 = [centerYAnchor3 widthAnchor];
          v73 = [widthAnchor4 constraintEqualToConstant:50.0];
          v123[5] = v73;
          heightAnchor4 = [centerYAnchor3 heightAnchor];
          v52 = [heightAnchor4 constraintEqualToConstant:50.0];
          v123[6] = v52;
          [centerYAnchor3 leadingAnchor];
          v53 = v96 = centerYAnchor;
          leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
          v55 = [v53 constraintEqualToAnchor:leadingAnchor4 constant:v41 + 50.0];
          v123[7] = v55;
          v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:8];
          [v93 activateConstraints:v56];

          v45 = centerYAnchor4;
          v47 = widthAnchor3;

          centerYAnchor = v96;
          widthAnchor2 = v102;
        }

        trailingMenuElementViews = v84;
        leadingMenuElementViews = v85;
        view = v83;
        v24 = v89;
LABEL_46:
        if ([trailingMenuElementViews count] == 1)
        {
          v28 = [trailingMenuElementViews objectAtIndex:0];
          v57 = MEMORY[0x1E696ACD8];
          centerYAnchor5 = [v28 centerYAnchor];
          v59 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor];
          v122[0] = v59;
          widthAnchor5 = [v28 widthAnchor];
          v61 = [widthAnchor5 constraintEqualToConstant:50.0];
          v122[1] = v61;
          heightAnchor5 = [v28 heightAnchor];
          heightAnchor6 = [heightAnchor5 constraintEqualToConstant:50.0];
          v122[2] = heightAnchor6;
          trailingAnchor2 = [v28 trailingAnchor];
          trailingAnchor3 = [safeAreaLayoutGuide trailingAnchor];
          v106 = trailingAnchor2;
          trailingAnchor4 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-v40];
          v122[3] = trailingAnchor4;
          v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:4];
          [v57 activateConstraints:v65];
        }

        else
        {
          if ([trailingMenuElementViews count] != 2)
          {
            goto LABEL_52;
          }

          v28 = [trailingMenuElementViews objectAtIndex:1];
          centerYAnchor5 = [trailingMenuElementViews objectAtIndex:0];
          v94 = MEMORY[0x1E696ACD8];
          centerYAnchor6 = [v28 centerYAnchor];
          v103 = [centerYAnchor6 constraintEqualToAnchor:centerYAnchor];
          v121[0] = v103;
          widthAnchor6 = [v28 widthAnchor];
          heightAnchor5 = [widthAnchor6 constraintEqualToConstant:50.0];
          v121[1] = heightAnchor5;
          heightAnchor6 = [v28 heightAnchor];
          v106 = [heightAnchor6 constraintEqualToConstant:50.0];
          v121[2] = v106;
          trailingAnchor3 = [v28 trailingAnchor];
          trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
          v65 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v41];
          v121[3] = v65;
          v58CenterYAnchor = [centerYAnchor5 centerYAnchor];
          v78 = [v58CenterYAnchor constraintEqualToAnchor:centerYAnchor];
          v121[4] = v78;
          widthAnchor7 = [centerYAnchor5 widthAnchor];
          v74 = [widthAnchor7 constraintEqualToConstant:50.0];
          v121[5] = v74;
          heightAnchor7 = [centerYAnchor5 heightAnchor];
          v66 = [heightAnchor7 constraintEqualToConstant:50.0];
          v121[6] = v66;
          [centerYAnchor5 trailingAnchor];
          v67 = v97 = centerYAnchor;
          trailingAnchor5 = [safeAreaLayoutGuide trailingAnchor];
          v69 = [v67 constraintEqualToAnchor:trailingAnchor5 constant:-(v41 + 50.0)];
          v121[7] = v69;
          v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:8];
          [v94 activateConstraints:v70];

          v59 = centerYAnchor6;
          v61 = widthAnchor6;

          centerYAnchor = v97;
          widthAnchor5 = v103;
        }

        v24 = v89;
LABEL_51:

        trailingMenuElementViews = v84;
        leadingMenuElementViews = v85;
        view = v83;
        goto LABEL_52;
      }

      topAnchor = [pageControl centerYAnchor];
    }

    centerYAnchor = topAnchor;
    goto LABEL_20;
  }
}

- (void)updateTopButtonsLayoutWithLeadingTopButtonFrame:(CGRect)frame trailingTopButtonFrame:(CGRect)buttonFrame
{
  height = buttonFrame.size.height;
  width = buttonFrame.size.width;
  y = buttonFrame.origin.y;
  x = buttonFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  view = [(PREditorRootViewController *)self view];
  if (![view effectiveUserInterfaceLayoutDirection])
  {
    x = v11;
    y = v10;
    width = v9;
    height = v8;
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MinY = CGRectGetMinY(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MinX = CGRectGetMinX(v18);
  [(PREditorRootViewController *)self setTopButtonsEdgeInsets:MinY, MinX, 0.0, MinX];
}

- (void)setTopButtonsEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_topButtonsEdgeInsets.top), vceqq_f64(v4, *&self->_topButtonsEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_topButtonsEdgeInsets = insets;
    left = insets.left;
    top = insets.top;
    leadingTopButtonXConstraint = [(PREditorRootViewController *)self leadingTopButtonXConstraint];
    [leadingTopButtonXConstraint setConstant:left];
    leadingTopButtonYConstraint = [(PREditorRootViewController *)self leadingTopButtonYConstraint];
    [leadingTopButtonYConstraint setConstant:top];
    trailingTopButtonXConstraint = [(PREditorRootViewController *)self trailingTopButtonXConstraint];
    [trailingTopButtonXConstraint setConstant:-left];
    trailingTopButtonYConstraint = [(PREditorRootViewController *)self trailingTopButtonYConstraint];
    [trailingTopButtonYConstraint setConstant:top];
  }
}

- (void)setTopButtonsHidden:(BOOL)hidden
{
  if (self->_topButtonsHidden != hidden)
  {
    self->_topButtonsHidden = hidden;
    [(PREditorRootViewController *)self updateTopButtonAlpha];
  }
}

- (void)updateTopButtonAlpha
{
  v3 = 0.0;
  if (![(PREditorRootViewController *)self areTopButtonsHidden])
  {
    if ([(PREditorRootViewController *)self areControlsHidden])
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 1.0;
    }
  }

  cancelButton = [(PREditorRootViewController *)self cancelButton];
  [cancelButton setAlpha:v3];

  acceptButton = [(PREditorRootViewController *)self acceptButton];
  [acceptButton setAlpha:v3];
}

- (void)setAllUserInteractionDisabledExceptForCancelButton:(BOOL)button
{
  v27[4] = *MEMORY[0x1E69E9840];
  if (self->_allUserInteractionDisabledExceptForCancelButton != button)
  {
    buttonCopy = button;
    self->_allUserInteractionDisabledExceptForCancelButton = button;
    view = [(PREditorRootViewController *)self view];
    acceptButton = [(PREditorRootViewController *)self acceptButton];
    v7 = !buttonCopy;
    [acceptButton setEnabled:v7];
    if (v7)
    {
      touchBlockingView = [(PREditorRootViewController *)self touchBlockingView];
      [touchBlockingView removeFromSuperview];

      [(PREditorRootViewController *)self setTouchBlockingView:0];
    }

    else
    {
      cancelButton = [(PREditorRootViewController *)self cancelButton];
      [view bringSubviewToFront:cancelButton];
      v26 = acceptButton;
      v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
      layer = [v8 layer];
      [layer setHitTestsAsOpaque:1];

      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [view insertSubview:v8 belowSubview:cancelButton];
      v19 = MEMORY[0x1E696ACD8];
      leadingAnchor = [v8 leadingAnchor];
      leadingAnchor2 = [view leadingAnchor];
      v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v27[0] = v22;
      trailingAnchor = [v8 trailingAnchor];
      trailingAnchor2 = [view trailingAnchor];
      v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v27[1] = v18;
      topAnchor = [v8 topAnchor];
      topAnchor2 = [view topAnchor];
      v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v27[2] = v12;
      bottomAnchor = [v8 bottomAnchor];
      bottomAnchor2 = [view bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v27[3] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
      [v19 activateConstraints:v16];

      [(PREditorRootViewController *)self setTouchBlockingView:v8];
      acceptButton = v26;
    }
  }
}

- (void)setDepthEffectDisabled:(BOOL)disabled
{
  if (self->_depthEffectDisabled != disabled)
  {
    self->_depthEffectDisabled = disabled;
    [(PREditorRootViewController *)self depthEffectEnablementDidChange];
  }
}

- (void)depthEffectEnablementDidChange
{
  if (![(PREditorRootViewController *)self isViewLoaded])
  {
    return;
  }

  editor = [(PREditorRootViewController *)self editor];
  reticleVibrancyView = [(PREditorRootViewController *)self reticleVibrancyView];
  isDepthEffectDisabled = [(PREditorRootViewController *)self isDepthEffectDisabled];
  if ([editor areViewsSharedBetweenLooks])
  {
    scrollView = [(PREditorRootViewController *)self scrollView];
    portaledFloatingContainerView = [(PREditorRootViewController *)self portaledFloatingContainerView];
    if (!isDepthEffectDisabled)
    {
      sidebarReticleVibrancyView = [(PREditorRootViewController *)self sidebarReticleVibrancyView];
      if (sidebarReticleVibrancyView)
      {
        sidebarReticleVibrancyView2 = [(PREditorRootViewController *)self sidebarReticleVibrancyView];
        [scrollView insertSubview:portaledFloatingContainerView belowSubview:sidebarReticleVibrancyView2];
      }

      else
      {
        sidebarReticleVibrancyView2 = [(PREditorRootViewController *)self timeContainerView];
        [scrollView insertSubview:portaledFloatingContainerView aboveSubview:sidebarReticleVibrancyView2];
      }

      goto LABEL_12;
    }
  }

  else
  {
    scrollView = [(PREditorRootViewController *)self view];
    portaledFloatingContainerView = [(PREditorRootViewController *)self floatingContainerViewsZStackView];
    if (!isDepthEffectDisabled)
    {
      timeContainerScrollView = [(PREditorRootViewController *)self timeContainerScrollView];
      [scrollView insertSubview:portaledFloatingContainerView aboveSubview:timeContainerScrollView];

      goto LABEL_12;
    }
  }

  [scrollView insertSubview:portaledFloatingContainerView belowSubview:reticleVibrancyView];
LABEL_12:
}

- (id)imageForDepthEffectActionTopLevelAction:(BOOL)action
{
  if (action)
  {
    v3 = @"square.2.layers.3d.fill";
  }

  else
  {
    v3 = @"square.2.layers.3d";
  }

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];

  return v4;
}

- (void)setSubtitleHidden:(BOOL)hidden
{
  if (self->_subtitleHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_subtitleHidden = hidden;
    subtitleViewController = [(PREditorRootViewController *)self subtitleViewController];
    [subtitleViewController pr_setSubtitleHidden:hiddenCopy];
  }
}

- (void)setUsesEditingLayout:(BOOL)layout
{
  if (self->_usesEditingLayout != layout)
  {
    v10 = v3;
    v11 = v4;
    layoutCopy = layout;
    self->_usesEditingLayout = layout;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PREditorRootViewController_setUsesEditingLayout___block_invoke;
    v8[3] = &__block_descriptor_33_e55_v16__0__UIViewController_PREditorTitleViewController__8l;
    layoutCopy2 = layout;
    [(PREditorRootViewController *)self enumerateTimeViewControllersUsingBlock:v8];
    subtitleViewController = [(PREditorRootViewController *)self subtitleViewController];
    [subtitleViewController setUsesEditingLayout:layoutCopy];
  }
}

- (void)setControlsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v43 = *MEMORY[0x1E69E9840];
  editor = [(PREditorRootViewController *)self editor];
  editingIdiom = [editor editingIdiom];

  if ((editingIdiom != 2 || hiddenCopy) && self->_controlsHidden != hiddenCopy)
  {
    self->_controlsHidden = hiddenCopy;
    [(PREditorRootViewController *)self updateTopButtonAlpha];
    [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];
    if (hiddenCopy)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    lookMenuButton = [(PREditorRootViewController *)self lookMenuButton];
    [lookMenuButton setAlpha:v7];

    lookNameLabel = [(PREditorRootViewController *)self lookNameLabel];
    [lookNameLabel setAlpha:v7];

    pageControl = [(PREditorRootViewController *)self pageControl];
    [pageControl setAlpha:v7];

    contentOverlayView = [(PREditorRootViewController *)self contentOverlayView];
    [contentOverlayView setAlpha:v7];

    bottomLegibilityView = [(PREditorRootViewController *)self bottomLegibilityView];
    [bottomLegibilityView setAlpha:v7];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    leadingMenuElementViews = [(PREditorRootViewController *)self leadingMenuElementViews];
    v14 = [leadingMenuElementViews countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(leadingMenuElementViews);
          }

          [*(*(&v36 + 1) + 8 * i) setAlpha:v7];
        }

        v15 = [leadingMenuElementViews countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v15);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    trailingMenuElementViews = [(PREditorRootViewController *)self trailingMenuElementViews];
    v19 = [trailingMenuElementViews countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(trailingMenuElementViews);
          }

          [*(*(&v32 + 1) + 8 * j) setAlpha:v7];
        }

        v20 = [trailingMenuElementViews countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v20);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    additionalControls = [(PREditorRootViewController *)self additionalControls];
    v24 = [additionalControls countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v29;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(additionalControls);
          }

          [*(*(&v28 + 1) + 8 * k) setAlpha:v7];
        }

        v25 = [additionalControls countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v25);
    }
  }
}

- (void)setComplicationsRowConfigured:(BOOL)configured
{
  if (self->_complicationsRowConfigured != configured)
  {
    self->_complicationsRowConfigured = configured;
    [(PREditorRootViewController *)self updateReticleViewFrames];
  }
}

- (void)setComplicationSidebarConfigured:(BOOL)configured
{
  if (self->_complicationSidebarConfigured != configured)
  {
    self->_complicationSidebarConfigured = configured;
    [(PREditorRootViewController *)self _updateComplicationSidebarEmptyViewVisibility];

    [(PREditorRootViewController *)self updateReticleViewFrames];
  }
}

- (void)setComplicationRowAtBottom:(BOOL)bottom
{
  if (self->_complicationRowAtBottom != bottom)
  {
    self->_complicationRowAtBottom = bottom;
    [(PREditorRootViewController *)self _updateComplicationRowReticleWithOffset:1 animated:0.0];
  }
}

- (void)setFocusedComplicationElement:(int64_t)element
{
  if (self->_focusedComplicationElement != element)
  {
    self->_focusedComplicationElement = element;
    [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];
  }
}

- (void)setFocusedQuickActionPosition:(int64_t)position
{
  if (self->_focusedQuickActionPosition != position)
  {
    self->_focusedQuickActionPosition = position;
    [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];

    [(PREditorRootViewController *)self _setNeedsEditingElementsVisibilityUpdate];
  }
}

- (void)setTitleReticleActive:(BOOL)active
{
  if (self->_titleReticleActive != active)
  {
    self->_titleReticleActive = active;
    [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];
  }
}

- (void)setNeedsReticleVisibilityUpdate
{
  if (!self->_needsReticleVisibilityUpdate)
  {
    self->_needsReticleVisibilityUpdate = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PREditorRootViewController_setNeedsReticleVisibilityUpdate__block_invoke;
    block[3] = &unk_1E7843688;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_setNeedsEditingElementsVisibilityUpdate
{
  if (!self->_needsEditingElementsVisibilityUpdate)
  {
    self->_needsEditingElementsVisibilityUpdate = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__PREditorRootViewController__setNeedsEditingElementsVisibilityUpdate__block_invoke;
    block[3] = &unk_1E7843688;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_updateEditingElementsVisibilityIfNeeded
{
  if (self->_needsEditingElementsVisibilityUpdate)
  {
    self->_needsEditingElementsVisibilityUpdate = 0;
    focusedQuickActionPosition = [(PREditorRootViewController *)self focusedQuickActionPosition];
    timeContainerView = [(PREditorRootViewController *)self timeContainerView];
    v7 = timeContainerView;
    v6 = 0.0;
    if (!focusedQuickActionPosition)
    {
      v6 = 1.0;
    }

    [timeContainerView setAlpha:v6];
  }
}

- (void)updateReticleVisibilityIfNeeded
{
  if (!self->_needsReticleVisibilityUpdate)
  {
    return;
  }

  self->_needsReticleVisibilityUpdate = 0;
  focusedComplicationElement = [(PREditorRootViewController *)self focusedComplicationElement];
  isTitleReticleActive = [(PREditorRootViewController *)self isTitleReticleActive];
  areControlsHidden = [(PREditorRootViewController *)self areControlsHidden];
  focusedQuickActionPosition = [(PREditorRootViewController *)self focusedQuickActionPosition];
  if (isTitleReticleActive)
  {
    v9 = 0;
    v10 = 0;
    LOBYTE(v8) = self->_timeResizeGestureActive;
    v11 = v8;
    v12 = 1.0;
    v13 = 0.0;
  }

  else
  {
    if (focusedComplicationElement)
    {
      v10 = focusedComplicationElement == 2;
      v9 = focusedComplicationElement == 3;
      v11 = 0.0;
      if (focusedComplicationElement == 1)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }
    }

    else
    {
      if (focusedQuickActionPosition)
      {
        v14 = 1;
      }

      else
      {
        v14 = areControlsHidden;
      }

      v13 = 0.0;
      if ((v14 & 1) == 0 && !self->_presentingComplicationGallery)
      {
        presentationDismissalGestureView = [(PREditorRootViewController *)self presentationDismissalGestureView];

        if (!presentationDismissalGestureView)
        {
          currentDevice = [MEMORY[0x1E69DC938] currentDevice];
          userInterfaceIdiom = [currentDevice userInterfaceIdiom];

          v13 = 1.0;
          if (userInterfaceIdiom == 1)
          {
            view = [(PREditorRootViewController *)self view];
            window = [view window];
            windowScene = [window windowScene];
            interfaceOrientation = [windowScene interfaceOrientation];

            v10 = (interfaceOrientation - 1) < 2;
            v9 = (interfaceOrientation - 3) < 2;
          }

          else
          {
            v9 = 0;
            v10 = 1;
          }

          v11 = 1.0;
          v12 = 1.0;
          goto LABEL_17;
        }
      }

      v9 = 0;
      v10 = 0;
      v11 = 0.0;
    }

    v12 = 0.0;
  }

LABEL_17:
  titleReticleView = [(PREditorRootViewController *)self titleReticleView];
  titleResizeHandle = [(PREditorRootViewController *)self titleResizeHandle];
  inlineComplicationReticleView = [(PREditorRootViewController *)self inlineComplicationReticleView];
  complicationSidebarReticleView = [(PREditorRootViewController *)self complicationSidebarReticleView];
  [titleReticleView setAlpha:v12];
  [titleResizeHandle setAlpha:v11];
  [inlineComplicationReticleView setAlpha:v13];
  [complicationSidebarReticleView setAlpha:v9];
  [inlineComplicationReticleView setAlpha:v13];
  editor = [(PREditorRootViewController *)self editor];
  [editor setShowsEditingReticles:v10];

  if (PREditingSupportsLiveBlurs())
  {
    [titleReticleView setActive:isTitleReticleActive];
    [inlineComplicationReticleView setActive:focusedComplicationElement == 1];
    [complicationSidebarReticleView setActive:focusedComplicationElement == 3];
  }

  [(PREditorRootViewController *)self _updateComplicationSidebarEmptyViewVisibility];
}

- (void)setContentOverlayView:(id)view
{
  viewCopy = view;
  contentOverlayView = self->_contentOverlayView;
  if (contentOverlayView != viewCopy)
  {
    v19 = viewCopy;
    v7 = contentOverlayView;
    scrollView = [(PREditorRootViewController *)self scrollView];
    [(UIView *)v19 bounds];
    [(UIView *)v19 setFrame:?];
    objc_storeStrong(&self->_contentOverlayView, view);
    areControlsHidden = [(PREditorRootViewController *)self areControlsHidden];
    v10 = 1.0;
    if (areControlsHidden)
    {
      v10 = 0.0;
    }

    [(UIView *)v19 setAlpha:v10];
    if ([(PREditorRootViewController *)self isViewLoaded]&& scrollView)
    {
      superview = [(UIView *)v7 superview];
      [(UIView *)v7 removeFromSuperview];
      contentOverlayContainerView = self->_contentOverlayContainerView;
      if (superview == contentOverlayContainerView)
      {
        [(UIView *)contentOverlayContainerView addSubview:v19];
      }

      else
      {
        subviews = [(UIView *)contentOverlayContainerView subviews];
        firstObject = [subviews firstObject];
        v15 = objc_opt_class();
        v16 = firstObject;
        if (v15)
        {
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        [v18 addContentView:self->_contentOverlayView];
      }
    }

    viewCopy = v19;
  }
}

- (void)scrollToLook:(id)look animated:(BOOL)animated
{
  animatedCopy = animated;
  lookCopy = look;
  looks = [(PREditorRootViewController *)self looks];
  v8 = [looks indexOfObject:lookCopy];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(PREditorRootViewController *)self scrollToLookAtIndex:v8 animated:animatedCopy];
  }
}

- (void)scrollToLookAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  scrollView = [(PREditorRootViewController *)self scrollView];
  [(PREditorRootViewController *)self scrollContentOffsetForLookAtIndex:index];
  [scrollView setContentOffset:animatedCopy animated:?];
}

- (CGPoint)scrollContentOffsetForLook:(id)look
{
  lookCopy = look;
  looks = [(PREditorRootViewController *)self looks];
  v6 = [looks indexOfObject:lookCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    [(PREditorRootViewController *)self scrollContentOffsetForLookAtIndex:v6];
  }

  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)scrollContentOffsetForLookAtIndex:(unint64_t)index
{
  scrollView = [(PREditorRootViewController *)self scrollView];
  [scrollView frame];
  Width = CGRectGetWidth(v11);
  if ([scrollView effectiveUserInterfaceLayoutDirection])
  {
    looks = [(PREditorRootViewController *)self looks];
    index = [looks count] + ~index;
  }

  v8 = 0.0;
  v9 = Width * index;
  result.y = v8;
  result.x = v9;
  return result;
}

- (id)lookAtScrollContentOffset:(CGPoint)offset fractionOfDistanceThroughLook:(double *)look
{
  x = offset.x;
  v7 = [(PREditorRootViewController *)self scrollView:offset.x];
  [v7 frame];
  Width = CGRectGetWidth(v20);
  __y = 0.0;
  v9 = modf(x / Width, &__y);
  looks = [(PREditorRootViewController *)self looks];
  v11 = [looks count];
  v12 = 0;
  v13 = __y;
  if (__y >= 0.0)
  {
    v12 = [(PREditorRootViewController *)self lookIndexForViewIndex:__y];
  }

  v14 = v11 - 1;
  if (!v11)
  {
    v14 = 0;
  }

  if (v12 >= v11)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v16 = [looks objectAtIndex:{v15, v13}];
  if (look)
  {
    *look = v9;
  }

  return v16;
}

- (unint64_t)lookIndexForContentOffset:(CGPoint)offset
{
  x = offset.x;
  v4 = [(PREditorRootViewController *)self scrollView:offset.x];
  [v4 frame];
  v5 = x / CGRectGetWidth(v8);
  v6 = vcvtms_u32_f32(v5);

  return v6;
}

- (unint64_t)lookIndexForViewIndex:(unint64_t)index
{
  view = [(PREditorRootViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection)
  {
    looks = [(PREditorRootViewController *)self looks];
    index = [looks count] + ~index;
  }

  return index;
}

- (unint64_t)viewIndexForLookIndex:(unint64_t)index
{
  view = [(PREditorRootViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection)
  {
    looks = [(PREditorRootViewController *)self looks];
    index = [looks count] + ~index;
  }

  return index;
}

- (CGRect)frameForPageAtViewIndex:(unint64_t)index
{
  view = [(PREditorRootViewController *)self view];
  [view bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v9 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectGetHeight(v16);

  v11 = 0.0;
  v12 = v9 * index;
  v13 = v9;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (CGRect)frameForPageAtLookIndex:(unint64_t)index
{
  v4 = [(PREditorRootViewController *)self viewIndexForLookIndex:index];

  [(PREditorRootViewController *)self frameForPageAtViewIndex:v4];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)requireGestureRecognizerToFailForLooksScroll:(id)scroll
{
  scrollView = self->_scrollView;
  scrollCopy = scroll;
  panGestureRecognizer = [(UIScrollView *)scrollView panGestureRecognizer];
  [panGestureRecognizer requireGestureRecognizerToFail:scrollCopy];
}

- (void)currentLookDidChange
{
  currentLook = [(PREditorRootViewController *)self currentLook];
  looks = [(PREditorRootViewController *)self looks];
  v4 = [looks indexOfObject:currentLook];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    if (v4 < [(NSArray *)self->_looks count])
    {
      [(PREditorRootViewController *)self updateLookMenu];
      pageControl = [(PREditorRootViewController *)self pageControl];
      [pageControl setCurrentPage:v5];
    }
  }
}

- (void)pageControlCurrentPageDidChange:(id)change
{
  changeCopy = change;
  currentPage = [changeCopy currentPage];
  interactionState = [changeCopy interactionState];

  scrollView = [(PREditorRootViewController *)self scrollView];
  [(PREditorRootViewController *)self scrollContentOffsetForLookAtIndex:currentPage];
  [scrollView setContentOffset:interactionState != 2 animated:?];
}

- (void)titleViewTapped:(id)tapped
{
  editor = [(PREditorRootViewController *)self editor];
  [editor presentTimeStyleEditor];
}

- (CGRect)_titleViewFrame
{
  editorElementLayoutController = [(PREditorRootViewController *)self editorElementLayoutController];
  view = [(PREditorRootViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  configuredProperties = [(PREditorRootViewController *)self configuredProperties];
  titleStyleConfiguration = [configuredProperties titleStyleConfiguration];
  editor = [(PREditorRootViewController *)self editor];
  titleString = [editor titleString];
  v17 = [titleStyleConfiguration effectiveTitleLayoutForText:titleString];

  v18 = [editorElementLayoutController frameAttributesForElements:1 variant:2 titleLayout:v17 withBoundingRect:{v6, v8, v10, v12}];
  [v18 rect];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)_titleViewResizeGestureDidUpdate:(id)update
{
  updateCopy = update;
  v4 = self->_titleResizeHandle;
  state = [updateCopy state];
  if ((state - 3) >= 3)
  {
    if (state == 2)
    {
      view = [(PREditorRootViewController *)self view];
      [updateCopy locationInView:view];
      v15 = v14;

      [(PREditorRootViewController *)self _titleViewFrame];
      self->_currentResizeTimeHeight = v15 - CGRectGetMinY(v19);
      editor = [(PREditorRootViewController *)self editor];
      [editor setAdaptiveTimeHeightUserConfigured:1];

      [(PREditorRootViewController *)self _updateDesiredTimeStretchInEditor];
    }

    else if (state == 1)
    {
      [(SBHIconResizeHandle *)v4 setHighlighted:1];
      [(SBHIconResizeHandle *)v4 setResizing:1];
      titleReticleView = [(PREditorRootViewController *)self titleReticleView];
      [titleReticleView setActive:1];

      view2 = [(PREditorRootViewController *)self view];
      [updateCopy locationInView:view2];
      v10 = v9;

      self->_currentResizeInitialTouchLocation = v10;
      self->_timeResizeGestureActive = 1;
      editor2 = [(PREditorRootViewController *)self editor];
      v12 = [editor2 disableSwitchingLooksForReason:@"timeResizing"];
      [(PREditorRootViewController *)self setTimeResizeLookSwitchingDisableAssertion:v12];
    }
  }

  else
  {
    [(SBHIconResizeHandle *)v4 setHighlighted:0];
    [(SBHIconResizeHandle *)v4 setResizing:0];
    titleReticleView2 = [(PREditorRootViewController *)self titleReticleView];
    [titleReticleView2 setActive:0];

    self->_timeResizeGestureActive = 0;
    [(PREditorRootViewController *)self setTimeResizeLookSwitchingDisableAssertion:0];
    [(PREditorRootViewController *)self _updateDesiredTimeStretchInEditor];
    [(PREditorRootViewController *)self updateReticleViewFrames];
  }
}

- (double)_minimumAdaptiveTimeTextHeight
{
  currentLook = [(PREditorRootViewController *)self currentLook];
  v4 = [(PREditorRootViewController *)self timeViewControllerForLook:currentLook];

  objc_opt_class();
  v5 = 12.0;
  if (objc_opt_isKindOfClass())
  {
    [v4 minimumAdaptiveTimeTextHeight];
    v5 = v6;
  }

  return v5;
}

- (double)_maximumAdaptiveTimeTextHeight
{
  currentLook = [(PREditorRootViewController *)self currentLook];
  v4 = [(PREditorRootViewController *)self timeViewControllerForLook:currentLook];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 maximumAdaptiveTimeTextHeight];
    v6 = v5;
  }

  else
  {
    v6 = 500.0;
  }

  editor = [(PREditorRootViewController *)self editor];
  preferences = [editor preferences];
  [preferences maximumAdaptiveTimeHeight];
  v10 = v9;

  if (v10 != 1.79769313e308)
  {
    [(PREditorRootViewController *)self _titleViewFrame];
    v11 = v10 - CGRectGetMinY(v13);
    if (v11 < v6)
    {
      v6 = v11;
    }
  }

  return v6;
}

- (void)_updateDesiredTimeStretchInEditor
{
  editor = [(PREditorRootViewController *)self editor];
  [editor setIgnoringSalientContentForTimeHeight:0];

  interfaceOrientation = [(PREditorRootViewController *)self interfaceOrientation];
  currentResizeTimeHeight = self->_currentResizeTimeHeight;

  [(PREditorRootViewController *)self _updateForDesiredTimeMaxHeight:interfaceOrientation orientation:currentResizeTimeHeight];
}

- (void)_updateForDesiredTimeMaxHeight:(double)height orientation:(int64_t)orientation
{
  editor = [(PREditorRootViewController *)self editor];
  preferences = [editor preferences];
  adaptiveTimeMode = [preferences adaptiveTimeMode];

  if (adaptiveTimeMode < 3 || adaptiveTimeMode == 4)
  {
    [(PREditorRootViewController *)self _maximumAdaptiveTimeTextHeight];
    v11 = v10;
    [(PREditorRootViewController *)self _minimumAdaptiveTimeTextHeight];
    v13 = v12;
    [(PREditorRootViewController *)self _titleViewFrame];
    MinY = CGRectGetMinY(v24);
    view = [(PREditorRootViewController *)self view];
    [view frame];
    v17 = v16;

    if (v11 <= v13)
    {
      +[PRPosterTitleStyleConfiguration defaultPreferredTimeMaxY];
      self->_timeResizeGestureHeight = v21;
      +[PRPosterTitleStyleConfiguration defaultPreferredTimeMaxY];
    }

    else
    {
      if (v11 <= height)
      {
        heightCopy = v11;
      }

      else
      {
        heightCopy = height;
      }

      if (v13 >= heightCopy)
      {
        heightCopy = v13;
      }

      v19 = (MinY + heightCopy) / v17;
      self->_timeResizeGestureHeight = height;
    }

    [editor _updateForPreferredTimeMaxY:orientation orientation:v19];
  }

  else
  {
    v20 = editor;
    if (adaptiveTimeMode != 3)
    {
      goto LABEL_18;
    }

    [editor _updateForPreferredTimeMaxY:30 orientations:0.0];
  }

  v20 = editor;
LABEL_18:
}

- (void)updateForDesiredTimeMaxY:(double)y orientation:(int64_t)orientation
{
  [(PREditorRootViewController *)self _titleViewFrame];
  v7 = y - CGRectGetMinY(v9);

  [(PREditorRootViewController *)self _updateForDesiredTimeMaxHeight:orientation orientation:v7];
}

- (void)setTimeResizeLookSwitchingDisableAssertion:(id)assertion
{
  assertionCopy = assertion;
  timeResizeLookSwitchingDisableAssertion = self->_timeResizeLookSwitchingDisableAssertion;
  if (timeResizeLookSwitchingDisableAssertion != assertionCopy)
  {
    v9 = assertionCopy;
    v6 = assertionCopy;
    v7 = self->_timeResizeLookSwitchingDisableAssertion;
    self->_timeResizeLookSwitchingDisableAssertion = v6;
    v8 = timeResizeLookSwitchingDisableAssertion;

    [(PRInvalidatable *)v8 invalidate];
    assertionCopy = v9;
  }
}

- (void)enumerateTimeViewControllersUsingBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  [(PREditorRootViewController *)self loadViewIfNeeded];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  looks = [(PREditorRootViewController *)self looks];
  v6 = [looks countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(looks);
        }

        v10 = [(PREditorRootViewController *)self timeViewControllerForLook:*(*(&v11 + 1) + 8 * v9)];
        if (v10)
        {
          blockCopy[2](blockCopy, v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [looks countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)currentLook
{
  editor = [(PREditorRootViewController *)self editor];
  currentLook = [editor currentLook];

  return currentLook;
}

- (id)configuredProperties
{
  editor = [(PREditorRootViewController *)self editor];
  configuredProperties = [editor configuredProperties];

  return configuredProperties;
}

- (id)defaultTitleStyleConfigurationForLook:(id)look
{
  lookCopy = look;
  editor = [(PREditorRootViewController *)self editor];
  v6 = [editor defaultTitleStyleConfigurationForLook:lookCopy];

  return v6;
}

- (id)effectiveTitleStyleConfigurationForLook:(id)look
{
  lookCopy = look;
  editor = [(PREditorRootViewController *)self editor];
  v6 = [editor effectiveTitleStyleConfigurationForLook:lookCopy];

  return v6;
}

- (id)extensionBundleURL
{
  editor = [(PREditorRootViewController *)self editor];
  extensionBundleURL = [editor extensionBundleURL];

  return extensionBundleURL;
}

- (void)didTransitionToLook:(id)look method:(int64_t)method progress:(double)progress
{
  v35 = *MEMORY[0x1E69E9840];
  lookCopy = look;
  v9 = PRLogEditing();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [lookCopy identifier];
    *buf = 138543874;
    v28 = identifier;
    v29 = 2048;
    progressCopy = progress;
    v31 = 1024;
    LODWORD(v32) = method == 1;
    _os_log_impl(&dword_1A8AA7000, v9, OS_LOG_TYPE_DEFAULT, "did transition to look '%{public}@', progress: %f, discrete: %{BOOL}u", buf, 0x1Cu);
  }

  lookTransition = [(PREditorRootViewController *)self lookTransition];
  currentLook = [(PREditorRootViewController *)self currentLook];
  if (([lookTransition matchesCurrentLook:currentLook destinationLook:lookCopy] & 1) == 0)
  {
    currentLook2 = [lookTransition currentLook];
    destinationLook = [lookTransition destinationLook];
    v15 = PRLogEditing();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [currentLook2 identifier];
      v16 = v26 = currentLook2;
      [destinationLook identifier];
      v17 = v25 = destinationLook;
      identifier2 = [currentLook identifier];
      identifier3 = [lookCopy identifier];
      *buf = 138544130;
      v28 = v16;
      v29 = 2114;
      progressCopy = *&v17;
      v31 = 2114;
      v32 = identifier2;
      v33 = 2114;
      v34 = identifier3;
      _os_log_impl(&dword_1A8AA7000, v15, OS_LOG_TYPE_DEFAULT, "Current coordinated transition ('%{public}@' -> '%{public}@') does not match '%{public}@' -> '%{public}@', invalidating", buf, 0x2Au);

      destinationLook = v25;
      currentLook2 = v26;
    }

    destinationLook2 = [lookTransition destinationLook];
    if ([lookCopy isEqual:destinationLook2])
    {
    }

    else
    {
      destinationLook3 = [lookTransition destinationLook];
      v22 = [currentLook isEqual:destinationLook3];

      if (!v22)
      {
        [lookTransition cancelInteractiveTransition];
        goto LABEL_13;
      }
    }

    [lookTransition finishInteractiveTransition];
LABEL_13:

LABEL_14:
    lookTransition = [(PREditorRootViewController *)self beginTransitionToLook:lookCopy method:method];
    goto LABEL_15;
  }

  if (!lookTransition)
  {
    goto LABEL_14;
  }

LABEL_15:
  [lookTransition updateInteractiveTransition:progress];
  editor = [(PREditorRootViewController *)self editor];
  delegate = [editor delegate];
  if (progress >= 0.0 && progress <= 1.0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate editor:editor didTransitionToLook:lookCopy progress:progress];
  }
}

- (id)beginTransitionToLook:(id)look method:(int64_t)method
{
  v70 = *MEMORY[0x1E69E9840];
  lookCopy = look;
  v6 = PRLogEditing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [lookCopy identifier];
    *buf = 138543362;
    v69 = identifier;
    _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Begin coordinated transition to look '%{public}@'", buf, 0xCu);
  }

  currentLook = [(PREditorRootViewController *)self currentLook];
  v9 = [[PREditorLookTransition alloc] initWithCurrentLook:currentLook destinationLook:lookCopy];
  v10 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:currentLook];
  v11 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:lookCopy];
  extensionBundleURL = [(PREditorRootViewController *)self extensionBundleURL];
  v61 = v10;
  v13 = [v10 vibrancyConfigurationWithExtensionBundleURL:extensionBundleURL];
  v62 = [v11 vibrancyConfigurationWithExtensionBundleURL:extensionBundleURL];
  v55 = BSEqualObjects();
  [(PREditorTitleViewControllerCoordinator *)self->_titleViewControllerCoordinator prepareInteractiveTransitionForStartingLook:currentLook];
  v52 = [(PREditorTitleViewControllerCoordinator *)self->_titleViewControllerCoordinator cachingVibrancyProviderForLook:currentLook];
  v14 = [(PREditorRootViewController *)self timeViewControllerForLook:currentLook];
  v15 = [(PREditorRootViewController *)self timeViewControllerForLook:lookCopy];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __59__PREditorRootViewController_beginTransitionToLook_method___block_invoke;
  v63[3] = &unk_1E7844218;
  v16 = v14;
  v64 = v16;
  v58 = v15;
  v65 = v58;
  selfCopy = self;
  v17 = v9;
  v67 = v17;
  v18 = MEMORY[0x1AC574C60](v63);
  v54 = extensionBundleURL;
  v57 = v18;
  if (method == 1)
  {
    (*(v18 + 16))();
    v19 = v11;
LABEL_9:
    v20 = v13;
    goto LABEL_10;
  }

  v19 = v11;
  if (![(PREditorRootViewController *)self shouldFixTitleBetweenTransitionFromTitleStyleConfiguration:v61 toTitleStyleConfiguration:v11 extensionBundleURL:extensionBundleURL])
  {
    v24 = [[PREditorSlidingTitleTransition alloc] initWithSourceTitleViewController:v16 destinationTitleViewController:v58];
    [(PREditorLookTransition *)v17 setTitleScrollingTransition:v24];

    goto LABEL_9;
  }

  v57[2]();
  v20 = v13;
  if ((v55 & 1) == 0)
  {
    pr_baseFont = [v16 pr_baseFont];
    [(PREditorTitleViewControllerCoordinator *)self->_titleViewControllerCoordinator beginInteractiveTransitionForStartingLook:currentLook toBaseFont:pr_baseFont vibrancyConfiguration:v62];
    v23 = v22 = v16;
    [(PREditorLookTransition *)v17 setTitleStyleTransition:v23];

    v16 = v22;
  }

LABEL_10:
  displayName = [currentLook displayName];
  displayName2 = [lookCopy displayName];
  lookNameLabel = [(PREditorRootViewController *)self lookNameLabel];
  v53 = displayName;
  [lookNameLabel setText:displayName];
  if (displayName2)
  {
    [lookNameLabel beginInteractiveTransitionToText:displayName2];
    v29 = v28 = lookNameLabel;
    [(PREditorLookTransition *)v17 setLookNameTransition:v29];

    lookNameLabel = v28;
  }

  v51 = displayName2;
  if (method == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = v55;
  }

  if (v30)
  {
    v31 = v54;
    v32 = v52;
  }

  else
  {
    v60 = lookNameLabel;
    titleContentStyle = [v61 titleContentStyle];
    type = [titleContentStyle type];

    if (type == 1)
    {
      v35 = [objc_alloc(MEMORY[0x1E698E810]) initWithEffectType:2 backgroundType:0 color:0];

      v20 = v35;
    }

    titleContentStyle2 = [v19 titleContentStyle];
    type2 = [titleContentStyle2 type];

    v49 = currentLook;
    v50 = lookCopy;
    v48 = v16;
    if (type2 == 1)
    {
      v38 = [objc_alloc(MEMORY[0x1E698E810]) initWithEffectType:2 backgroundType:0 color:0];
    }

    else
    {
      v38 = v62;
    }

    v32 = v52;
    v62 = v38;
    v56 = [[PREditorLookSwitchingComplicationTransition alloc] initWithFromVibrancyConfiguration:v20 toVibrancyConfiguration:v38 viewController:self cachingVibrancyTransitionProvider:v52];
    [(PREditorLookTransition *)v17 setComplicationTransition:v56];
    subtitleViewController = [(PREditorRootViewController *)self subtitleViewController];
    extensionBundleURL2 = [(PREditorRootViewController *)self extensionBundleURL];
    editor = [(PREditorRootViewController *)self editor];
    posterRole = [editor posterRole];

    v43 = [v19 effectiveTimeFontWithExtensionBundleURL:extensionBundleURL2 forRole:posterRole];
    [subtitleViewController beginInteractiveTransitionToBaseFont:v43 vibrancyConfiguration:v38 cachingVibrancyTransitionProvider:v52];
    v45 = v44 = v20;
    [(PREditorLookTransition *)v17 setSubtitleStyleTransition:v45];

    v20 = v44;
    currentLook = v49;
    lookCopy = v50;
    v31 = v54;
    v16 = v48;
    lookNameLabel = v60;
  }

  [(PREditorRootViewController *)self setLookTransition:v17];
  v46 = v17;

  return v17;
}

void __59__PREditorRootViewController_beginTransitionToLook_method___block_invoke(uint64_t a1)
{
  v2 = [PREditorFixedTitleTransition alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) view];
  v6 = [(PREditorFixedTitleTransition *)v2 initWithSourceTitleViewController:v3 destinationTitleViewController:v4 anchorView:v5];

  [*(a1 + 56) setTitleScrollingTransition:v6];
}

- (void)didFinishTransitionToLook:(id)look
{
  v24 = *MEMORY[0x1E69E9840];
  lookCopy = look;
  v5 = PRLogEditing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [lookCopy identifier];
    v20 = 138543362;
    v21 = identifier;
    _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "Did finish transition to look '%{public}@'", &v20, 0xCu);
  }

  lookTransition = [(PREditorRootViewController *)self lookTransition];
  destinationLook = [lookTransition destinationLook];
  v9 = [lookCopy isEqual:destinationLook];
  if (lookTransition)
  {
    v10 = PRLogEditing();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1A8AA7000, v10, OS_LOG_TYPE_DEFAULT, "Finishing transition object successfully", &v20, 2u);
      }

      [lookTransition finishInteractiveTransition];
    }

    else
    {
      if (v11)
      {
        identifier2 = [destinationLook identifier];
        v20 = 138543362;
        v21 = identifier2;
        _os_log_impl(&dword_1A8AA7000, v10, OS_LOG_TYPE_DEFAULT, "Canceling transition object (object look: '%{public}@')", &v20, 0xCu);
      }

      [lookTransition cancelInteractiveTransition];
    }

    [(PREditorRootViewController *)self setLookTransition:0];
  }

  [(PREditorRootViewController *)self _updateOverlayHostViewControllerLuminanceFromCurrentLook];
  editor = [(PREditorRootViewController *)self editor];
  [editor didFinishTransitionToLook:lookCopy];
  delegate = [editor delegate];
  if (destinationLook && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (v9)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = PRLogEditing();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [destinationLook identifier];
      v20 = 138543618;
      v21 = identifier3;
      v22 = 2048;
      v23 = v15;
      _os_log_impl(&dword_1A8AA7000, v16, OS_LOG_TYPE_DEFAULT, "Sending final didTransitionToLook delegate method with look '%{public}@', progress: %f", &v20, 0x16u);
    }

    [delegate editor:editor didTransitionToLook:destinationLook progress:v15];
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = PRLogEditing();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      identifier4 = [destinationLook identifier];
      v20 = 138543362;
      v21 = identifier4;
      _os_log_impl(&dword_1A8AA7000, v18, OS_LOG_TYPE_DEFAULT, "Sending didFinishTransitionToLook delegate method with look '%{public}@'", &v20, 0xCu);
    }

    [delegate editor:editor didFinishTransitionToLook:lookCopy];
  }

  [editor updateInjectedEditingClientSettings];
}

- (BOOL)shouldFixTitleBetweenTransitionFromTitleStyleConfiguration:(id)configuration toTitleStyleConfiguration:(id)styleConfiguration extensionBundleURL:(id)l
{
  lCopy = l;
  styleConfigurationCopy = styleConfiguration;
  configurationCopy = configuration;
  editor = [(PREditorRootViewController *)self editor];
  posterRole = [editor posterRole];

  v13 = [configurationCopy effectiveTimeFontWithExtensionBundleURL:lCopy forRole:posterRole];

  v14 = [styleConfigurationCopy effectiveTimeFontWithExtensionBundleURL:lCopy forRole:posterRole];

  LOBYTE(styleConfigurationCopy) = [v13 isEqual:v14];
  return styleConfigurationCopy;
}

- (void)forciblyFinishLookTransition
{
  v14 = *MEMORY[0x1E69E9840];
  lookTransition = [(PREditorRootViewController *)self lookTransition];
  v4 = lookTransition;
  if (lookTransition)
  {
    destinationLook = [lookTransition destinationLook];
    v6 = PRLogEditing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [destinationLook identifier];
      v12 = 138543362;
      v13 = identifier;
      _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Forcibly ending transition to look '%{public}@'", &v12, 0xCu);
    }

    currentLook = [(PREditorRootViewController *)self currentLook];
    if (([currentLook isEqual:destinationLook] & 1) == 0)
    {
      v9 = PRLogEditing();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [destinationLook identifier];
        v12 = 138543362;
        v13 = identifier2;
        _os_log_impl(&dword_1A8AA7000, v9, OS_LOG_TYPE_DEFAULT, "Changing current look while forcibly ending transition to look '%{public}@'", &v12, 0xCu);
      }

      editor = [(PREditorRootViewController *)self editor];
      [editor setCurrentLook:destinationLook];
    }

    [(PREditorRootViewController *)self didFinishTransitionToLook:destinationLook];
  }
}

- (id)makeComplicationsHostingScene
{
  v3 = objc_alloc_init(PREditorComplicationSceneSpecification);
  v4 = [(PREditorRootViewController *)self makeComplicationHostingSceneWithSpecification:v3];

  return v4;
}

- (id)makeComplicationHostingSceneWithSpecification:(id)specification
{
  specificationCopy = specification;
  pui_posterKitComplicationsWorkspace = [MEMORY[0x1E699F7F8] pui_posterKitComplicationsWorkspace];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PREditorRootViewController_makeComplicationHostingSceneWithSpecification___block_invoke;
  v8[3] = &unk_1E7844240;
  v9 = specificationCopy;
  v5 = specificationCopy;
  v6 = [pui_posterKitComplicationsWorkspace pui_createScene:v8];

  return v6;
}

void __76__PREditorRootViewController_makeComplicationHostingSceneWithSpecification___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AFB0];
  v5 = a2;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"PREditor-%@", v7];
  [v5 setIdentifier:v8];

  [v5 setSpecification:*(a1 + 32)];
  v9 = MEMORY[0x1E699FBD8];
  v11 = [MEMORY[0x1E69C75F0] identityForAngelJobLabel:@"com.apple.PosterBoard"];
  v10 = [v9 identityForProcessIdentity:v11];
  [v5 setClientIdentity:v10];
}

- (BOOL)_shouldShowQuickActionEditing
{
  if (!PRLockPickIsActive())
  {
    return 0;
  }

  editor = [(PREditorRootViewController *)self editor];
  posterRole = [editor posterRole];
  if ([posterRole isEqualToString:@"PRPosterRoleLockScreen"])
  {
    editor2 = [(PREditorRootViewController *)self editor];
    v6 = [editor2 variant] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)makeQuickActionsHostingScene
{
  v3 = objc_alloc_init(PREditorQuickActionsSceneSpecification);
  v4 = [(PREditorRootViewController *)self makeComplicationHostingSceneWithSpecification:v3];

  return v4;
}

- (id)makeQuickActionsHostingSceneWithSpecification:(id)specification
{
  specificationCopy = specification;
  pui_posterKitComplicationsWorkspace = [MEMORY[0x1E699F7F8] pui_posterKitComplicationsWorkspace];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PREditorRootViewController_makeQuickActionsHostingSceneWithSpecification___block_invoke;
  v8[3] = &unk_1E7844240;
  v9 = specificationCopy;
  v5 = specificationCopy;
  v6 = [pui_posterKitComplicationsWorkspace pui_createScene:v8];

  return v6;
}

void __76__PREditorRootViewController_makeQuickActionsHostingSceneWithSpecification___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AFB0];
  v5 = a2;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"PREditor-QuickActions-%@", v7];
  [v5 setIdentifier:v8];

  [v5 setSpecification:*(a1 + 32)];
  v9 = MEMORY[0x1E699FBD8];
  v11 = [MEMORY[0x1E69C75F0] identityForAngelJobLabel:@"com.apple.PosterBoard"];
  v10 = [v9 identityForProcessIdentity:v11];
  [v5 setClientIdentity:v10];
}

- (id)_makeOverlayHostingScene
{
  v3 = objc_alloc_init(PREditorOverlaySceneSpecification);
  editor = [(PREditorRootViewController *)self editor];
  _hostProcessHandle = [editor _hostProcessHandle];

  identity = [_hostProcessHandle identity];
  if (!identity)
  {
    v7 = PRLogEditing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PREditorRootViewController _makeOverlayHostingScene];
    }
  }

  pui_posterKitExternallyHostedContentWorkspace = [MEMORY[0x1E699F7F8] pui_posterKitExternallyHostedContentWorkspace];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__PREditorRootViewController__makeOverlayHostingScene__block_invoke;
  v13[3] = &unk_1E7844268;
  v14 = v3;
  v15 = identity;
  v9 = identity;
  v10 = v3;
  v11 = [pui_posterKitExternallyHostedContentWorkspace pui_createScene:v13];

  return v11;
}

void __54__PREditorRootViewController__makeOverlayHostingScene__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AFB0];
  v5 = a2;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"PREditor-Overlay-%@", v7];
  [v5 setIdentifier:v8];

  [v5 setSpecification:*(a1 + 32)];
  v9 = [MEMORY[0x1E699FBD8] identityForProcessIdentity:*(a1 + 40)];
  [v5 setClientIdentity:v9];
}

- (void)disconnect
{
  if (![(PREditorRootViewController *)self isDisconnected])
  {

    [(PREditorRootViewController *)self setDisconnected:1];
  }
}

- (void)reconnect
{
  if ([(PREditorRootViewController *)self isDisconnected])
  {

    [(PREditorRootViewController *)self setDisconnected:0];
  }
}

- (void)setPresentingModalViewController:(BOOL)controller
{
  controllerCopy = controller;
  v24[4] = *MEMORY[0x1E69E9840];
  presentationDismissalGestureView = [(PREditorRootViewController *)self presentationDismissalGestureView];
  v6 = presentationDismissalGestureView;
  if (!controllerCopy || presentationDismissalGestureView)
  {
    if (!controllerCopy && presentationDismissalGestureView)
    {
      [presentationDismissalGestureView removeFromSuperview];
      [(PREditorRootViewController *)self setPresentationDismissalGestureView:0];
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    layer = [v6 layer];
    [layer setHitTestsAsOpaque:1];

    v23 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_modalPresentationDismissGestureDidFire_];
    [v6 addGestureRecognizer:v23];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditorRootViewController *)self setPresentationDismissalGestureView:v6];
    view = [(PREditorRootViewController *)self view];
    [view addSubview:v6];
    v17 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v6 leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[0] = v20;
    trailingAnchor = [v6 trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[1] = v16;
    topAnchor = [v6 topAnchor];
    topAnchor2 = [view topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[2] = v11;
    bottomAnchor = [v6 bottomAnchor];
    bottomAnchor2 = [view bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v17 activateConstraints:v15];
  }

  [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];
}

- (void)modalPresentationDismissGestureDidFire:(id)fire
{
  editor = [(PREditorRootViewController *)self editor];
  [editor dismissViewControllerAnimated:1 completion:0];
}

- (void)setPresentingComplicationGallery:(BOOL)gallery
{
  if (self->_presentingComplicationGallery != gallery)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_presentingComplicationGallery = gallery;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__PREditorRootViewController_setPresentingComplicationGallery___block_invoke;
    v5[3] = &unk_1E7843688;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.2];
  }
}

- (UIEdgeInsets)editingChromeDodgingInsets
{
  view = [(PREditorRootViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  editorElementLayoutController = [(PREditorRootViewController *)self editorElementLayoutController];
  editor = [(PREditorRootViewController *)self editor];
  areComplicationsAllowed = [editor areComplicationsAllowed];

  v15 = [(PREditorRootViewController *)self interfaceOrientation]- 1;
  if (![(PREditorRootViewController *)self _shouldShowQuickActionEditing]&& areComplicationsAllowed)
  {
    if (self->_complicationRowAtBottom && v15 <= 1)
    {
      [editorElementLayoutController frameForElements:32 variant:3 withBoundingRect:{v5, v7, v9, v11}];
LABEL_11:
      v21 = v11 - CGRectGetMinY(*&v17);
      goto LABEL_12;
    }

LABEL_10:
    [(PREditingStandaloneLabelView *)self->_lookNameLabel frame];
    goto LABEL_11;
  }

  if (!areComplicationsAllowed)
  {
    goto LABEL_10;
  }

  [(BSUIVibrancyEffectView *)self->_controlsVibrancyView frame];
  v21 = v11 - CGRectGetMinY(v57) + 25.0;
LABEL_12:
  v54 = v5;
  v56 = v21;
  v22 = v5;
  v23 = v7;
  v24 = v9;
  v25 = v11;
  [editorElementLayoutController frameForElements:2 variant:3 withBoundingRect:{v22, v7, v9, v11, *&v54}];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  [(PREditingReticleView *)self->_titleReticleView frame];
  MaxY = CGRectGetMaxY(v58);
  v59.origin.x = v27;
  v59.origin.y = v29;
  v59.size.width = v31;
  v59.size.height = v33;
  v35 = MaxY + CGRectGetMinY(v59);
  MaxX = 0.0;
  if (!areComplicationsAllowed)
  {
    goto LABEL_21;
  }

  v37 = v24;
  if (!self->_complicationRowAtBottom)
  {
    [editorElementLayoutController frameForElements:8 variant:3 withBoundingRect:{v55, v23, v24, v25}];
    v35 = CGRectGetMaxY(v60);
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && v15 >= 2)
  {
    [editorElementLayoutController frameForElements:16 variant:3 withBoundingRect:{v55, v23, v24, v25}];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = MEMORY[0x1E69DDA98];
    v49 = 0.0;
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] != 1)
    {
      v61.origin.x = v41;
      v61.origin.y = v43;
      v61.size.width = v45;
      v61.size.height = v47;
      MaxX = CGRectGetMaxX(v61);
    }

    if ([*v48 userInterfaceLayoutDirection] == 1)
    {
      v62.origin.x = v41;
      v62.origin.y = v43;
      v62.size.width = v45;
      v62.size.height = v47;
      v49 = v37 - CGRectGetMinX(v62);
    }
  }

  else
  {
LABEL_21:
    v49 = 0.0;
  }

  v50 = v35;
  v51 = MaxX;
  v52 = v56;
  v53 = v49;
  result.right = v53;
  result.bottom = v52;
  result.left = v51;
  result.top = v50;
  return result;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __41__PREditorRootViewController_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)scrollViewDidScroll:(id)scroll withContext:(id *)context
{
  v93 = *MEMORY[0x1E69E9840];
  scrollCopy = scroll;
  if (![(PREditorRootViewController *)self ignoresScrolling])
  {
    var0 = context->var0;
    [scrollCopy contentOffset];
    v9 = v8;
    x = context->var2.x;
    [scrollCopy frame];
    Width = CGRectGetWidth(v94);
    looks = [(PREditorRootViewController *)self looks];
    v84 = [looks count];
    v13 = v9 > Width * (v84 - 1) || v9 < 0.0;
    v14 = nexttoward(v9 + Width, v9);
    v15 = v9 >= x || v13;
    v16 = v9 < x || v13;
    if (v15)
    {
      v17 = v9;
    }

    else
    {
      v17 = v14;
    }

    if (v16)
    {
      v18 = v9;
    }

    else
    {
      v18 = v14;
    }

    v91 = 0.0;
    v19 = [(PREditorRootViewController *)self lookAtScrollContentOffset:&v91 fractionOfDistanceThroughLook:v17, 0.0];
    v86 = [(PREditorRootViewController *)self lookAtScrollContentOffset:0 fractionOfDistanceThroughLook:v18, 0.0];
    editor = [(PREditorRootViewController *)self editor];
    currentLook = [(PREditorRootViewController *)self currentLook];
    v22 = [v19 isEqual:currentLook];

    if ((v22 & 1) == 0)
    {
      [editor setCurrentLook:v19];
    }

    contentOverlayContainerView = [(PREditorRootViewController *)self contentOverlayContainerView];
    [contentOverlayContainerView frame];
    v85 = contentOverlayContainerView;
    [contentOverlayContainerView setFrame:{v9, 0.0}];
    editor2 = [(PREditorRootViewController *)self editor];
    _editorDynamicRotationIsActive = [editor2 _editorDynamicRotationIsActive];

    if ((_editorDynamicRotationIsActive & 1) == 0)
    {
      v82 = var0;
      v26 = editor;
      subviews = [v85 subviews];
      firstObject = [subviews firstObject];
      v29 = objc_opt_class();
      v30 = firstObject;
      if (v29)
      {
        if (objc_opt_isKindOfClass())
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      [v32 frame];
      [v32 setFrame:{v9, 0.0}];

      editor = v26;
      var0 = v82;
    }

    if (v13)
    {
      lastObject = [looks lastObject];
      v34 = [v19 isEqual:lastObject];
      v35 = v91 > 0.0;

      v36 = v91;
      if ((v34 & v35) != 0)
      {
        v36 = v91 + 1.0;
      }
    }

    else
    {
      v37 = var0 == 1 || v9 < x;
      v36 = v91;
      if (v37)
      {
        v36 = 1.0 - v91;
      }
    }

    v38 = v86;
    [(PREditorRootViewController *)self didTransitionToLook:v86 method:context->var0 progress:v36];
    if ([editor areViewsSharedBetweenLooks])
    {
      [(PREditorRootViewController *)self _updateReticleViewFramesWithOffset:v9];
    }

    else
    {
      v78 = editor;
      v79 = v19;
      v81 = looks;
      timeContainerScrollView = [(PREditorRootViewController *)self timeContainerScrollView];
      [timeContainerScrollView setContentOffset:{v9, 0.0}];

      [scrollCopy bounds];
      v41 = v40;
      v83 = scrollCopy;
      [scrollCopy bounds];
      v43 = v42;
      backgroundForegroundContainerViewsZStackView = [(PREditorRootViewController *)self backgroundForegroundContainerViewsZStackView];
      subviews2 = [backgroundForegroundContainerViewsZStackView subviews];
      reverseObjectEnumerator = [subviews2 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];

      selfCopy = self;
      floatingContainerViewsZStackView = [(PREditorRootViewController *)self floatingContainerViewsZStackView];
      subviews3 = [floatingContainerViewsZStackView subviews];
      reverseObjectEnumerator2 = [subviews3 reverseObjectEnumerator];
      allObjects2 = [reverseObjectEnumerator2 allObjects];

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v50 = allObjects;
      v51 = [v50 countByEnumeratingWithState:&v87 objects:v92 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v88;
        v54 = v9;
        do
        {
          for (i = 0; i != v52; ++i)
          {
            if (*v88 != v53)
            {
              objc_enumerationMutation(v50);
            }

            v56 = *(*(&v87 + 1) + 8 * i);
            if (PUIFeatureEnabled())
            {
              UIRoundToScale();
              v58 = fabs(v57);
            }

            else
            {
              v58 = fabs(v54);
            }

            v59 = v41 - v54;
            if (v54 <= 0.0)
            {
              v59 = v41;
            }

            if (v58 < v41)
            {
              v60 = v59;
            }

            else
            {
              v60 = 0.0;
            }

            v61 = [allObjects2 objectAtIndex:{objc_msgSend(v50, "indexOfObject:", v56, v59)}];
            [v61 setFrame:{0.0, 0.0, v60, v43}];
            [v56 setFrame:{0.0, 0.0, v60, v43}];
            IsZero = BSFloatIsZero();
            [v56 setHidden:IsZero];
            [v61 setHidden:IsZero];
            layer = [v56 layer];
            layer2 = [v61 layer];
            if ((IsZero & 1) != 0 || v54 >= 0.0 || v58 > v41)
            {
              [layer setMask:0];
              [layer2 setMask:0];
            }

            else
            {
              layer3 = [MEMORY[0x1E69794A0] layer];
              v66 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v58 cornerRadius:{0.0, v41 - v58, v43, 0.0}];
              [layer3 setPath:{objc_msgSend(v66, "CGPath")}];
              [layer setMask:layer3];
              [layer2 setMask:layer3];
            }

            v54 = v54 - v41;
          }

          v52 = [v50 countByEnumeratingWithState:&v87 objects:v92 count:16];
        }

        while (v52);
      }

      scrollCopy = v83;
      effectiveUserInterfaceLayoutDirection = [v83 effectiveUserInterfaceLayoutDirection];
      if (v9 >= x)
      {
        v68 = v79;
      }

      else
      {
        v68 = v86;
      }

      looks = v81;
      v69 = [v81 indexOfObject:v68];
      if (effectiveUserInterfaceLayoutDirection)
      {
        v70 = -(v9 - v41 * (v84 - v69));
      }

      else
      {
        v70 = v41 - (v9 - v41 * v69);
      }

      if (PUIFeatureEnabled())
      {
        v71 = 0.0;
      }

      else
      {
        v71 = 8.0;
      }

      traitCollection = [v83 traitCollection];
      [traitCollection displayScale];
      BSFloatRoundForScale();
      v74 = v73;

      looksDividerView = [(PREditorRootViewController *)selfCopy looksDividerView];
      [looksDividerView setFrame:{v70 - v74, 0.0, v71, v43}];

      v19 = v79;
      v38 = v86;

      editor = v78;
    }
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  draggingCopy = dragging;
  if (!-[PREditorRootViewController ignoresScrolling](self, "ignoresScrolling") && ([draggingCopy isPagingEnabled] & 1) == 0)
  {
    [draggingCopy frame];
    Width = CGRectGetWidth(v18);
    [draggingCopy contentOffset];
    v10 = v9 / Width;
    if (x > 0.1 || x >= -0.1 && modf(v10, &__y) >= 0.5)
    {
      v10 = v10 + 1.0;
    }

    offset->x = Width * floor(v10);
    v11 = [(PREditorRootViewController *)self lookAtScrollContentOffset:?];
    looks = [(PREditorRootViewController *)self looks];
    v13 = [looks indexOfObject:v11];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      pageControl = [(PREditorRootViewController *)self pageControl];
      [pageControl setCurrentPage:v13];
    }
  }
}

- (void)scrollViewDidEndScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  ignoresScrolling = [(PREditorRootViewController *)self ignoresScrolling];
  v5 = scrollingCopy;
  if (!ignoresScrolling)
  {
    [scrollingCopy contentOffset];
    v7 = v6;
    v9 = v8;
    currentLook = [(PREditorRootViewController *)self currentLook];
    v11 = [(PREditorRootViewController *)self lookAtScrollContentOffset:v7, v9];
    if (([v11 isEqual:currentLook] & 1) == 0)
    {
      editor = [(PREditorRootViewController *)self editor];
      [editor setCurrentLook:v11];
    }

    [(PREditorRootViewController *)self didFinishTransitionToLook:v11];

    v5 = scrollingCopy;
  }

  MEMORY[0x1EEE66BB8](ignoresScrolling, v5);
}

- (void)dateProvider:(id)provider didUpdateDate:(id)date
{
  dateCopy = date;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PREditorRootViewController_dateProvider_didUpdateDate___block_invoke;
  v12[3] = &unk_1E7844290;
  v6 = dateCopy;
  v13 = v6;
  [(PREditorRootViewController *)self enumerateTimeViewControllersUsingBlock:v12];
  subtitleViewController = [(PREditorRootViewController *)self subtitleViewController];
  [subtitleViewController setDisplayDate:v6];

  currentLook = [(PREditorRootViewController *)self currentLook];
  if (currentLook)
  {
    v9 = [(PREditorRootViewController *)self timeViewControllerForLook:currentLook];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isFourDigitTime = [v9 isFourDigitTime];
      if (self->_fourDigitTime != isFourDigitTime)
      {
        v11 = isFourDigitTime;
        [(PREditorRootViewController *)self setFourDigitTime:isFourDigitTime];
        [(PREditorElementLayoutController *)self->_editorElementLayoutController setFourDigitTime:v11];
        [(PREditorRootViewController *)self updateReticleViewFrames];
      }
    }
  }
}

void __57__PREditorRootViewController_dateProvider_didUpdateDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setAnimatesTimeChanges:0];
  }

  [v3 pr_setDisplayDate:*(a1 + 32)];
}

- (UIEdgeInsets)overlaySafeAreaInsets
{
  editor = [(PREditorRootViewController *)self editor];
  [editor _windowSafeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  lookNameLabel = [(PREditorRootViewController *)self lookNameLabel];
  [lookNameLabel frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  view = [(PREditorRootViewController *)self view];
  [view bounds];
  v40 = v23;
  v41 = v22;
  rect1 = v24;
  v42 = v25;

  if (lookNameLabel)
  {
    v36 = v9;
    v37 = v11;
    v38 = v7;
    v43.origin.x = v14;
    v26 = v5;
    v27 = *MEMORY[0x1E695F058];
    v28 = *(MEMORY[0x1E695F058] + 8);
    v29 = *(MEMORY[0x1E695F058] + 16);
    v30 = *(MEMORY[0x1E695F058] + 24);
    x = v43.origin.x;
    v43.origin.y = v16;
    v43.size.width = v18;
    v43.size.height = v20;
    v47.origin.x = *MEMORY[0x1E695F058];
    v47.origin.y = v28;
    v47.size.width = v29;
    v47.size.height = v30;
    if (CGRectEqualToRect(v43, v47))
    {
      v5 = v26;
      v11 = v37;
      v7 = v38;
      v9 = v36;
    }

    else
    {
      v44.origin.y = v40;
      v44.origin.x = v41;
      v44.size.width = rect1;
      v44.size.height = v42;
      v48.origin.x = v27;
      v48.origin.y = v28;
      v48.size.width = v29;
      v48.size.height = v30;
      v5 = v26;
      v11 = v37;
      v7 = v38;
      v9 = v36;
      if (!CGRectEqualToRect(v44, v48))
      {
        v45.origin.y = v16;
        v45.origin.x = x;
        v45.size.width = v18;
        v45.size.height = v20;
        v9 = fmax(v36, v42 - CGRectGetMinY(v45) + 10.0);
      }
    }
  }

  v31 = v5;
  v32 = v7;
  v33 = v9;
  v34 = v11;
  result.right = v34;
  result.bottom = v33;
  result.left = v32;
  result.top = v31;
  return result;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  lookTransition = [(PREditorRootViewController *)self lookTransition];
  v5 = [formatterCopy appendObject:lookTransition withName:@"lookTransition" skipIfNil:1];
}

- (PREditor)editor
{
  WeakRetained = objc_loadWeakRetained(&self->_editor);

  return WeakRetained;
}

- (UIEdgeInsets)topButtonsEdgeInsets
{
  top = self->_topButtonsEdgeInsets.top;
  left = self->_topButtonsEdgeInsets.left;
  bottom = self->_topButtonsEdgeInsets.bottom;
  right = self->_topButtonsEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end