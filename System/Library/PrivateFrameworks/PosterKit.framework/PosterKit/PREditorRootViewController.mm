@interface PREditorRootViewController
- (BOOL)_shouldShowQuickActionEditing;
- (BOOL)shouldFixTitleBetweenTransitionFromTitleStyleConfiguration:(id)a3 toTitleStyleConfiguration:(id)a4 extensionBundleURL:(id)a5;
- (CGPoint)scrollContentOffsetForLook:(id)a3;
- (CGPoint)scrollContentOffsetForLookAtIndex:(unint64_t)a3;
- (CGRect)_titleViewFrame;
- (CGRect)frameForPageAtLookIndex:(unint64_t)a3;
- (CGRect)frameForPageAtViewIndex:(unint64_t)a3;
- (NSString)description;
- (PREditor)editor;
- (UIEdgeInsets)editingChromeDodgingInsets;
- (UIEdgeInsets)overlaySafeAreaInsets;
- (UIEdgeInsets)topButtonsEdgeInsets;
- (double)_maximumAdaptiveTimeTextHeight;
- (double)_minimumAdaptiveTimeTextHeight;
- (id)_makeOverlayHostingScene;
- (id)_viewsForMenuElements:(id)a3;
- (id)beginTransitionToLook:(id)a3 method:(int64_t)a4;
- (id)configuredProperties;
- (id)currentLook;
- (id)defaultTitleStyleConfigurationForLook:(id)a3;
- (id)effectiveTitleStyleConfigurationForLook:(id)a3;
- (id)extensionBundleURL;
- (id)imageForDepthEffectActionTopLevelAction:(BOOL)a3;
- (id)lookAtScrollContentOffset:(CGPoint)a3 fractionOfDistanceThroughLook:(double *)a4;
- (id)makeComplicationHostingSceneWithSpecification:(id)a3;
- (id)makeComplicationsHostingScene;
- (id)makeQuickActionsHostingScene;
- (id)makeQuickActionsHostingSceneWithSpecification:(id)a3;
- (id)viewForMenuElementIdentifier:(id)a3;
- (unint64_t)backgroundTypeForLook:(id)a3;
- (unint64_t)lookIndexForContentOffset:(CGPoint)a3;
- (unint64_t)lookIndexForViewIndex:(unint64_t)a3;
- (unint64_t)viewIndexForLookIndex:(unint64_t)a3;
- (void)_setNeedsEditingElementsVisibilityUpdate;
- (void)_setOverlayHostViewController:(id)a3 insertingAboveSubview:(id)a4;
- (void)_setVibrancyConfiguration:(id)a3;
- (void)_titleViewResizeGestureDidUpdate:(id)a3;
- (void)_updateAdditionalControlsLayout;
- (void)_updateBottomControlsYConstraint;
- (void)_updateButtonLayout;
- (void)_updateComplicationRowReticleWithOffset:(double)a3 animated:(BOOL)a4;
- (void)_updateComplicationSidebarEmptyViewVisibilityAnimated:(BOOL)a3;
- (void)_updateComplicationsVibrancyFromCurrentLook;
- (void)_updateDesiredTimeStretchInEditor;
- (void)_updateEditingElementsVisibilityIfNeeded;
- (void)_updateForDesiredTimeMaxHeight:(double)a3 orientation:(int64_t)a4;
- (void)_updateMenuElements;
- (void)_updateOverlayHostViewControllerLuminanceFromCurrentLook;
- (void)_updateReticleViewFramesWithOffset:(double)a3;
- (void)_updateScrollViewContentSize;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)currentLookDidChange;
- (void)dateProvider:(id)a3 didUpdateDate:(id)a4;
- (void)depthEffectEnablementDidChange;
- (void)didFinishTransitionToLook:(id)a3;
- (void)didTransitionToLook:(id)a3 method:(int64_t)a4 progress:(double)a5;
- (void)disconnect;
- (void)enumerateTimeViewControllersUsingBlock:(id)a3;
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
- (void)modalPresentationDismissGestureDidFire:(id)a3;
- (void)pageControlCurrentPageDidChange:(id)a3;
- (void)reconnect;
- (void)requireGestureRecognizerToFailForLooksScroll:(id)a3;
- (void)scrollToLook:(id)a3 animated:(BOOL)a4;
- (void)scrollToLookAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)scrollViewDidEndScrolling:(id)a3;
- (void)scrollViewDidScroll:(id)a3 withContext:(id *)a4;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setAllUserInteractionDisabledExceptForCancelButton:(BOOL)a3;
- (void)setComplicationRowAtBottom:(BOOL)a3;
- (void)setComplicationSidebarConfigured:(BOOL)a3;
- (void)setComplicationsRowConfigured:(BOOL)a3;
- (void)setContentOverlayView:(id)a3;
- (void)setControlsHidden:(BOOL)a3;
- (void)setDepthEffectDisabled:(BOOL)a3;
- (void)setFocusedComplicationElement:(int64_t)a3;
- (void)setFocusedQuickActionPosition:(int64_t)a3;
- (void)setHostedContentSettings:(id)a3;
- (void)setLooks:(id)a3 forUpdatingProperties:(BOOL)a4;
- (void)setNeedsReticleVisibilityUpdate;
- (void)setOverlayHostViewController:(id)a3;
- (void)setOverrideUserInterfaceStyle:(int64_t)a3;
- (void)setPresentingComplicationGallery:(BOOL)a3;
- (void)setPresentingModalViewController:(BOOL)a3;
- (void)setSubtitleHidden:(BOOL)a3;
- (void)setTimeResizeLookSwitchingDisableAssertion:(id)a3;
- (void)setTitleReticleActive:(BOOL)a3;
- (void)setTopButtonsEdgeInsets:(UIEdgeInsets)a3;
- (void)setTopButtonsHidden:(BOOL)a3;
- (void)setUsesEditingLayout:(BOOL)a3;
- (void)setupAdditionalControls;
- (void)setupConfirmationButtons;
- (void)setupLookMenuButton;
- (void)titleViewTapped:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateForChangedOverrideDate;
- (void)updateForChangedTitleString;
- (void)updateForDesiredTimeMaxY:(double)a3 orientation:(int64_t)a4;
- (void)updateLookMenu;
- (void)updateOverlayHostViewControllerVisibility;
- (void)updateReticleViewFrames;
- (void)updateReticleVisibilityIfNeeded;
- (void)updateTimeControllersForLookMap;
- (void)updateTopButtonAlpha;
- (void)updateTopButtonsLayoutWithLeadingTopButtonFrame:(CGRect)a3 trailingTopButtonFrame:(CGRect)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PREditorRootViewController

- (void)setOverrideUserInterfaceStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PREditorRootViewController;
  [(PREditorRootViewController *)&v5 setOverrideUserInterfaceStyle:?];
  [(PRComplicationSceneHostViewController *)self->_complicationHostViewController setOverrideUserInterfaceStyle:a3];
  [(PRQuickActionsSceneHostViewController *)self->_quickActionsHostViewController setOverrideUserInterfaceStyle:a3];
  [(PROverlaySceneHostViewController *)self->_overlayHostViewController setOverrideUserInterfaceStyle:a3];
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
  v3 = [(PREditorRootViewController *)self view];
  v4 = [(PREditorRootViewController *)self editor];
  v5 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 additionalControlsForEditor:v4];
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

              [v3 addSubview:{*(*(&v15 + 1) + 8 * v14++), v15}];
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
  v3 = [(PREditorRootViewController *)self additionalControls];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v20 = [(PREditorRootViewController *)self view];
    v5 = [v20 safeAreaLayoutGuide];
    v6 = [v4 objectAtIndex:0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = MEMORY[0x1E696ACD8];
    v19 = [v6 topAnchor];
    v18 = [v5 topAnchor];
    v17 = [v19 constraintEqualToAnchor:v18 constant:22.0];
    v21[0] = v17;
    v16 = [v6 leadingAnchor];
    v14 = [v5 leadingAnchor];
    v7 = [v16 constraintEqualToAnchor:v14 constant:44.0];
    v21[1] = v7;
    v8 = [v6 widthAnchor];
    v9 = [v5 widthAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 multiplier:0.25];
    v21[2] = v10;
    v11 = [v6 heightAnchor];
    v12 = [v11 constraintEqualToConstant:50.0];
    v21[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
    [v15 activateConstraints:v13];
  }
}

- (void)setupConfirmationButtons
{
  v3 = [(PREditorRootViewController *)self editor];
  if (([v3 _cancelAndAcceptButtonsRequireNavigationBar] & 1) == 0)
  {
    v4 = [v3 delegate];
    objc_initWeak(&location, self);
    if (PUIFeatureEnabled())
    {
      v5 = objc_alloc_init(MEMORY[0x1E69C5650]);
      confirmationButtonsContainerView = self->_confirmationButtonsContainerView;
      self->_confirmationButtonsContainerView = v5;

      v7 = v5;
      v8 = [(PUITouchPassThroughView *)v7 layer];
      [v8 setName:@"confirmationButtonsContainerView"];

      [(PUITouchPassThroughView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PUITouchPassThroughView *)v7 pui_setGlassGroupBackground];
      v9 = [(PREditorRootViewController *)self view];
      [v9 addSubview:v7];

      v10 = 5;
      v11 = 5;
    }

    else
    {
      v7 = [(PREditorRootViewController *)self view];
      v10 = PREditingSupportsLiveBlurs() ^ 1;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 prefersSimpleButtonAppearanceForEditor:v3])
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

    [(PUITouchPassThroughView *)v7 addSubview:v19];
    v20 = objc_opt_class();
    v21 = [(PREditorRootViewController *)self editor];
    v22 = [v21 acceptButtonType];

    if (v22 == 1 || v22 == 2)
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

    [(PUITouchPassThroughView *)v7 addSubview:v26];
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
  v3 = [(PREditorRootViewController *)self editor];
  v4 = [v3 _cancelAndAcceptButtonsRequireNavigationBar];

  if (v4)
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
    v13 = [(PREditorRootViewController *)self navigationItem];
    [v13 setLeftBarButtonItem:v8];

    v14 = [(PREditorRootViewController *)self navigationItem];
    [v14 setRightBarButtonItem:v12];

    objc_destroyWeak(&v68);
    objc_destroyWeak(&v70);
    objc_destroyWeak(&location);
  }

  else
  {
    v64 = [(PREditorRootViewController *)self view];
    v65 = [(PREditorRootViewController *)self cancelButton];
    v66 = [(PREditorRootViewController *)self acceptButton];
    v63 = [(PREditorRootViewController *)self pageControl];
    v15 = [(PREditorRootViewController *)self editor];
    v16 = [v15 editingIdiom];

    if (v16 == 2)
    {
      v62 = [v64 safeAreaLayoutGuide];
      v59 = MEMORY[0x1E696ACD8];
      v61 = [v65 heightAnchor];
      v60 = [v61 constraintEqualToConstant:50.0];
      v73[0] = v60;
      v17 = [v65 widthAnchor];
      v18 = [v62 widthAnchor];
      v19 = [v17 constraintEqualToAnchor:v18 multiplier:0.2];
      v73[1] = v19;
      v20 = [v66 heightAnchor];
      v21 = [v20 constraintEqualToConstant:50.0];
      v73[2] = v21;
      v22 = [v66 widthAnchor];
      v23 = [v62 widthAnchor];
      v24 = [v22 constraintEqualToAnchor:v23 multiplier:0.2];
      v73[3] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
      [v59 activateConstraints:v25];

      v26 = [v65 trailingAnchor];
      v27 = [v66 leadingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27 constant:-22.0];

      v29 = [v65 centerYAnchor];
      v30 = [v63 centerYAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];

      v32 = [v66 trailingAnchor];
      v33 = [v64 safeAreaLayoutGuide];
      v34 = [v33 trailingAnchor];
      v35 = [v32 constraintEqualToAnchor:v34 constant:-22.0];

      v36 = [v66 centerYAnchor];
      v37 = [v63 centerYAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];
    }

    else
    {
      if (PUIFeatureEnabled())
      {
        v39 = self->_confirmationButtonsContainerView;
        v40 = MEMORY[0x1E696ACD8];
        v41 = [v64 pui_constraintsPinningSubview:v39 toEdges:15];
        [v40 activateConstraints:v41];
      }

      else
      {
        v39 = v64;
      }

      [(PREditorRootViewController *)self topButtonsEdgeInsets];
      v43 = v42;
      v45 = v44;
      v46 = [v65 leadingAnchor];
      v47 = [(PUITouchPassThroughView *)v39 leadingAnchor];
      v28 = [v46 constraintEqualToAnchor:v47 constant:v45];

      v48 = [v65 topAnchor];
      v49 = [(PUITouchPassThroughView *)v39 topAnchor];
      v31 = [v48 constraintEqualToAnchor:v49 constant:v43];

      v50 = [v66 trailingAnchor];
      v51 = [(PUITouchPassThroughView *)v39 trailingAnchor];
      v35 = [v50 constraintEqualToAnchor:v51 constant:-v45];

      v52 = [v66 topAnchor];
      v53 = [(PUITouchPassThroughView *)v39 topAnchor];
      v38 = [v52 constraintEqualToAnchor:v53 constant:v43];
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
    v55 = [v66 widthAnchor];
    v56 = [v65 widthAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
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
  v3 = [(PREditorRootViewController *)self view];
  v4 = MEMORY[0x1E69DC628];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __49__PREditorRootViewController_setupLookMenuButton__block_invoke;
  v15 = &unk_1E7843448;
  objc_copyWeak(&v16, &location);
  v5 = [v4 actionWithHandler:&v12];
  v6 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  v7 = [MEMORY[0x1E69DC888] darkGrayColor];
  [v6 setBaseBackgroundColor:v7];

  v8 = [MEMORY[0x1E69DC888] whiteColor];
  [v6 setBaseForegroundColor:v8];

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.up.chevron.down"];
  [v6 setImage:v9];

  [v6 setImagePlacement:8];
  v10 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:-1 scale:12.0];
  [v6 setPreferredSymbolConfigurationForImage:v10];

  [v6 setContentInsets:{5.0, 20.0, 5.0, 20.0}];
  [v6 setCornerStyle:4];
  [v6 setTitleLineBreakMode:4];
  [v6 setTitleTextAttributesTransformer:&__block_literal_global_17];
  v11 = [PREditorMenuButton buttonWithType:1];
  [v11 setConfiguration:v6];
  [v11 addAction:v5 forControlEvents:0x2000];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setContentHorizontalAlignment:3];
  [v11 setShowsMenuAsPrimaryAction:1];
  [v3 addSubview:v11];
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
  v21 = [(PREditorRootViewController *)self view];
  v20 = [(PREditorRootViewController *)self pageControl];
  v3 = [v21 safeAreaLayoutGuide];
  v4 = [(PREditorRootViewController *)self lookMenuButton];
  v16 = MEMORY[0x1E696ACD8];
  v19 = [v4 centerYAnchor];
  v18 = [v20 centerYAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v22[0] = v17;
  v5 = [v4 heightAnchor];
  v6 = [v5 constraintEqualToConstant:50.0];
  v22[1] = v6;
  v7 = [v4 leadingAnchor];
  v8 = v3;
  v15 = v3;
  v9 = [v3 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:22.0];
  v22[2] = v10;
  v11 = [v4 widthAnchor];
  v12 = [v8 widthAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 multiplier:0.333333333];
  v22[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v16 activateConstraints:v14];
}

- (void)loadView
{
  v193[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v4 = [(PREditorRootViewController *)self editor];
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
  v6 = [v5 layer];
  [v6 setHitTestsAsOpaque:1];

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
  v9 = [(PREditorRootViewController *)self _shouldShowQuickActionEditing];
  v10 = 0.35;
  if (!v9)
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
  v13 = [(PREditorRootViewController *)self editor];
  v14 = [v13 editingIdiom];

  if (v14 == 2)
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
  v15 = [v4 displaysHeaderElements];
  v16 = [v4 displaysSubtitleElement];
  v171 = [v4 areComplicationsAllowed];
  v174 = v15 & v171;
  if ((v15 & v171) == 1 && v16)
  {
    v17 = [(PREditorRootViewController *)self isSubtitleHidden];
    v18 = objc_alloc_init(MEMORY[0x1E6999630]);
    v19 = v18;
    if (v17)
    {
      v20 = 0;
    }

    else
    {
      v20 = 2;
    }

    [v18 setElements:v20];
    v21 = [(PREditorRootViewController *)self dateProvider];
    [v21 date];
    v23 = v22 = v15;
    [v19 setDisplayDate:v23];

    [v19 setUsesEditingLayout:{-[PREditorRootViewController usesEditingLayout](self, "usesEditingLayout")}];
    v24 = [v19 view];
    [v24 setUserInteractionEnabled:0];
    v25 = [v24 layer];
    [v25 setAllowsHitTesting:0];

    v15 = v22;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditorRootViewController *)self addChildViewController:v19];
    [v180 addSubview:v24];
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
  if (v15)
  {
    v28 = objc_alloc_init(MEMORY[0x1E698E818]);
    [v28 setUserInteractionEnabled:0];
    [v28 setBlurEnabled:PREditingSupportsLiveBlurs()];
    [(PREditorRootViewController *)self setReticleVibrancyView:v28];
    v29 = [MEMORY[0x1E69DC938] currentDevice];
    v30 = [v29 userInterfaceIdiom];

    v185 = v28;
    if ((v30 & 0xFFFFFFFFFFFFFFFBLL) == 1 && _os_feature_enabled_impl())
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

  v177 = v4;
  v184 = v3;
  if ([v4 areViewsSharedBetweenLooks])
  {
    v168 = v15;
    v32 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v33 = [v32 layer];
    [v33 setName:@"backgroundContainerView"];

    [v3 insertSubview:v32 atIndex:0];
    [(PREditorRootViewController *)self setBackgroundContainerView:v32];
    v34 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:v32];
    v35 = [v34 layer];
    [v35 setName:@"portaledBackgroundContainerView"];

    [v34 setMatchesPosition:1];
    [v34 setHidesSourceView:1];
    [(PREditorRootViewController *)self setPortaledBackgroundContainerView:v34];
    [v5 addSubview:v34];
    v36 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v37 = [v36 layer];
    [v37 setName:@"foregroundContainerView"];

    [v3 insertSubview:v36 aboveSubview:v32];
    [(PREditorRootViewController *)self setForegroundContainerView:v36];
    v38 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:v36];
    v39 = [v38 layer];
    [v39 setName:@"portaledForegroundContainerView"];

    [v38 setMatchesPosition:1];
    [v38 setHidesSourceView:1];
    [(PREditorRootViewController *)self setPortaledForegroundContainerView:v38];
    [v5 addSubview:v38];
    v40 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v41 = [v40 layer];
    [v41 setName:@"floatingContainerView"];

    [(PREditorRootViewController *)self setFloatingContainerView:v40];
    if (v185)
    {
      [v5 addSubview:?];
    }

    [v5 addSubview:v180];
    [v3 insertSubview:v40 aboveSubview:v36];
    v42 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:v40];
    v43 = [v42 layer];
    [v43 setName:@"portaledFloatingContainerView"];

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
    v15 = v168;
  }

  if (v174)
  {
    v44 = objc_alloc_init(PREditingReticleView);
    [(PREditingReticleView *)v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = [v185 contentView];
    [v45 addSubview:v44];

    [(PREditorRootViewController *)self setInlineComplicationReticleView:v44];
  }

  if (v15)
  {
    v46 = objc_alloc_init(PREditingReticleView);
    v47 = [v185 contentView];
    [v47 addSubview:v46];

    [(PREditorRootViewController *)self setTitleReticleView:v46];
    v48 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v49 = [v48 layer];
    [v49 setHitTestsAsOpaque:1];

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

    if (v171)
    {
      v64 = objc_alloc_init(PREditingReticleView);
      v65 = [v185 contentView];
      [v65 addSubview:v64];

      [(PREditingReticleView *)v64 setHidden:1];
      [(PREditorRootViewController *)self setComplicationRowReticleView:v64];
      v66 = [MEMORY[0x1E69DC938] currentDevice];
      v67 = [v66 userInterfaceIdiom];

      if ((v67 & 0xFFFFFFFFFFFFFFFBLL) == 1 && _os_feature_enabled_impl())
      {
        v68 = objc_alloc_init(PREditingReticleView);
        v69 = [v179 contentView];
        [v69 addSubview:v68];

        [(PREditorRootViewController *)self setComplicationSidebarReticleView:v68];
        v70 = objc_alloc_init(PRComplicationEmptyStateView);
        [(PREditingReticleView *)v68 addSubview:v70];
        [(PREditorRootViewController *)self setComplicationSidebarEmptyStateView:v70];
      }

      v71 = [PRComplicationSceneHostViewController alloc];
      v72 = [(PREditorRootViewController *)self makeComplicationsHostingScene];
      v73 = [(PRComplicationSceneHostViewController *)v71 initWithScene:v72];

      v74 = [(PRComplicationSceneHostViewController *)v73 view];
      [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PREditorRootViewController *)self addChildViewController:v73];
      [v3 addSubview:v74];
      [(PRComplicationSceneHostViewController *)v73 didMoveToParentViewController:self];
      [(PREditorRootViewController *)self setComplicationHostViewController:v73];
      [(PREditorRootViewController *)self _updateComplicationsVibrancyFromCurrentLook];
    }
  }

  v178 = v5;
  if ([(PREditorRootViewController *)self _shouldShowQuickActionEditing])
  {
    v75 = [PRQuickActionsSceneHostViewController alloc];
    v76 = [(PREditorRootViewController *)self makeQuickActionsHostingScene];
    v77 = [(PRQuickActionsSceneHostViewController *)v75 initWithScene:v76];

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
    v169 = [v78 leadingAnchor];
    v166 = [v3 leadingAnchor];
    v79 = [v169 constraintEqualToAnchor:v166 constant:40.0];
    v193[0] = v79;
    v80 = [v78 trailingAnchor];
    v81 = [v3 trailingAnchor];
    v82 = [v80 constraintEqualToAnchor:v81 constant:-40.0];
    v193[1] = v82;
    v83 = [v78 heightAnchor];
    v84 = [v83 constraintEqualToConstant:1.0];
    v193[2] = v84;
    v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v193 count:3];
    [v164 activateConstraints:v85];

    v3 = v184;
    v5 = v178;
  }

  v86 = [(PREditorRootViewController *)self contentOverlayView];
  if (!v86)
  {
    v86 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(PREditorRootViewController *)self setContentOverlayView:v86];
  }

  [v86 bounds];
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v87, v89, v91, v93}];
  [v86 setFrame:{v88, v90, v92, v94}];
  v176 = v86;
  [v95 addSubview:v86];
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
    v104 = [(PREditorRootViewController *)self view];
    [v186 convertRect:v104 fromView:{v97, v99, v101, v103}];
    v106 = v105;
    v108 = v107;

    v109 = [(PREditingStandaloneLabelView *)v183 centerYAnchor];
    v110 = [v3 topAnchor];
    v111 = [v109 constraintEqualToAnchor:v110 constant:v106 + v108 * 0.5];
    [v111 setActive:1];
  }

  v144 = MEMORY[0x1E696ACD8];
  v167 = [v186 centerXAnchor];
  v170 = [v3 safeAreaLayoutGuide];
  v165 = [v170 centerXAnchor];
  v163 = [v167 constraintEqualToAnchor:v165];
  v192[0] = v163;
  v162 = [v5 topAnchor];
  v161 = [v3 topAnchor];
  v160 = [v162 constraintEqualToAnchor:v161];
  v192[1] = v160;
  v159 = [v5 bottomAnchor];
  v158 = [v3 bottomAnchor];
  v157 = [v159 constraintEqualToAnchor:v158];
  v192[2] = v157;
  v156 = [v5 leadingAnchor];
  v155 = [v3 leadingAnchor];
  v154 = [v156 constraintEqualToAnchor:v155];
  v192[3] = v154;
  v153 = [v5 trailingAnchor];
  v152 = [v3 trailingAnchor];
  v151 = [v153 constraintEqualToAnchor:v152];
  v192[4] = v151;
  v150 = [(PREditingStandaloneLabelView *)v183 centerXAnchor];
  v149 = [v3 centerXAnchor];
  v148 = [v150 constraintEqualToAnchor:v149];
  v192[5] = v148;
  v147 = [(PREditingStandaloneLabelView *)v183 bottomAnchor];
  v146 = [v186 topAnchor];
  v145 = [v147 constraintEqualToAnchor:v146 constant:-16.0];
  v192[6] = v145;
  v143 = [(PREditingStandaloneLabelView *)v183 leadingAnchor];
  v142 = [v3 leadingAnchor];
  v141 = [v143 constraintGreaterThanOrEqualToAnchor:v142 constant:20.0];
  v192[7] = v141;
  v140 = [(PREditingStandaloneLabelView *)v183 trailingAnchor];
  v139 = [v3 trailingAnchor];
  v138 = [v140 constraintLessThanOrEqualToAnchor:v139 constant:-20.0];
  v192[8] = v138;
  v137 = [(PREditingLegibilityView *)v182 heightAnchor];
  v136 = [v3 heightAnchor];
  v135 = [v137 constraintEqualToAnchor:v136];
  v192[9] = v135;
  v134 = [(PREditingLegibilityView *)v182 bottomAnchor];
  v133 = [v3 bottomAnchor];
  v132 = [v134 constraintEqualToAnchor:v133];
  v192[10] = v132;
  v131 = [(PREditingLegibilityView *)v182 leadingAnchor];
  v130 = [v3 leadingAnchor];
  v129 = [v131 constraintEqualToAnchor:v130];
  v192[11] = v129;
  v128 = [(PREditingLegibilityView *)v182 trailingAnchor];
  v127 = [v3 trailingAnchor];
  v126 = [v128 constraintEqualToAnchor:v127];
  v192[12] = v126;
  v125 = [(PREditingLegibilityView *)v181 heightAnchor];
  v124 = [v3 heightAnchor];
  v123 = [v125 constraintEqualToAnchor:v124];
  v192[13] = v123;
  [(PREditingLegibilityView *)v181 bottomAnchor];
  v113 = v112 = v3;
  v114 = [v112 bottomAnchor];
  v115 = [v113 constraintEqualToAnchor:v114];
  v192[14] = v115;
  v116 = [(PREditingLegibilityView *)v181 leadingAnchor];
  v117 = [v112 leadingAnchor];
  v118 = [v116 constraintEqualToAnchor:v117];
  v192[15] = v118;
  v119 = [(PREditingLegibilityView *)v181 trailingAnchor];
  v120 = [v112 trailingAnchor];
  v121 = [v119 constraintEqualToAnchor:v120];
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
  v5 = [(PREditorRootViewController *)self view];
  v6 = [(PREditorRootViewController *)self editor];
  if ([v6 displaysHeaderElements])
  {
    v71 = v5;
    v69 = v3;
    v7 = [(PREditorRootViewController *)self titleGestureView];
    v8 = [(PREditorRootViewController *)self titleReticleView];
    v9 = [(PREditorRootViewController *)self titlePopoverLayoutGuide];
    v64 = [v7 centerXAnchor];
    v62 = [v8 centerXAnchor];
    v59 = [v64 constraintEqualToAnchor:v62];
    v76[0] = v59;
    v56 = [v7 centerYAnchor];
    v53 = [v8 centerYAnchor];
    v50 = [v56 constraintEqualToAnchor:v53];
    v76[1] = v50;
    v47 = [v7 widthAnchor];
    v46 = [v8 widthAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v76[2] = v45;
    v68 = v7;
    v44 = [v7 heightAnchor];
    v43 = [v8 heightAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v76[3] = v42;
    v41 = [v9 centerXAnchor];
    v40 = [v8 centerXAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v76[4] = v39;
    v38 = [v9 centerYAnchor];
    v37 = [v8 centerYAnchor];
    v10 = [v38 constraintEqualToAnchor:v37];
    v76[5] = v10;
    v11 = [v9 widthAnchor];
    v12 = [v8 widthAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:10.0];
    v76[6] = v13;
    v66 = v9;
    v14 = [v9 heightAnchor];
    v67 = v8;
    [v8 heightAnchor];
    v15 = v70 = v6;
    v16 = [v14 constraintEqualToAnchor:v15 constant:10.0];
    v76[7] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:8];
    v72 = v4;
    [v4 addObjectsFromArray:v17];

    v6 = v70;
    if ([v70 areComplicationsAllowed])
    {
      v65 = [(PREditorRootViewController *)self complicationHostViewController];
      v18 = [v65 view];
      v60 = [v18 leadingAnchor];
      v57 = [v71 leadingAnchor];
      v54 = [v60 constraintEqualToAnchor:v57];
      v75[0] = v54;
      v51 = [v18 trailingAnchor];
      v48 = [v71 trailingAnchor];
      v19 = [v51 constraintEqualToAnchor:v48];
      v75[1] = v19;
      v63 = v18;
      v20 = [v18 topAnchor];
      v21 = [v71 topAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      v75[2] = v22;
      v23 = [v18 bottomAnchor];
      v24 = [v71 bottomAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];
      v75[3] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:4];
      [v72 addObjectsFromArray:v26];

      v61 = [(PREditorRootViewController *)self subtitleViewController];
      v27 = [v61 view];
      v58 = [v27 leadingAnchor];
      v55 = [v71 leadingAnchor];
      v52 = [v58 constraintEqualToAnchor:v55];
      v74[0] = v52;
      v49 = [v27 trailingAnchor];
      v28 = [v71 trailingAnchor];
      v29 = [v49 constraintEqualToAnchor:v28];
      v74[1] = v29;
      v30 = [v27 topAnchor];
      v31 = [v71 topAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];
      v74[2] = v32;
      v33 = [v27 bottomAnchor];
      v34 = [v71 bottomAnchor];
      v35 = [v33 constraintEqualToAnchor:v34];
      v74[3] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
      [v72 addObjectsFromArray:v36];

      v6 = v70;
    }

    v3 = v69;
    v5 = v71;
    v4 = v72;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = PREditorRootViewController;
  [(PREditorRootViewController *)&v13 viewDidAppear:a3];
  v4 = [(PREditorRootViewController *)self currentLook];
  v5 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:v4];

  editorElementLayoutController = self->_editorElementLayoutController;
  v7 = [v5 timeNumberingSystem];
  [(PREditorElementLayoutController *)editorElementLayoutController setNumberingSystem:v7];

  v8 = [(PREditorRootViewController *)self currentLook];
  v9 = [(PREditorRootViewController *)self timeViewControllerForLook:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 isFourDigitTime];
    [(PREditorRootViewController *)self setFourDigitTime:v10];
    [(PREditorElementLayoutController *)self->_editorElementLayoutController setFourDigitTime:v10];
  }

  [(PREditorRootViewController *)self _updateMenuElements];
  if (![(PREditorRootViewController *)self initialLayoutFinished])
  {
    [(PREditorRootViewController *)self setInitialLayoutFinished:1];
    v11 = [(PREditorRootViewController *)self editor];
    v12 = [v11 delegateSafeForCallbackType:3];
    if (objc_opt_respondsToSelector())
    {
      [v12 editorDidFinishInitialLayout:v11];
    }
  }

  [(PREditorRootViewController *)self lookPropertiesDidChange];
}

- (void)viewDidLayoutSubviews
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
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

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = PREditorRootViewController;
  [(PREditorRootViewController *)&v8 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  [(PREditorRootViewController *)self _updateButtonLayout];
  v6 = [(PREditorRootViewController *)self dateProvider];
  v7 = v6;
  if (a3)
  {
    [v6 addMinuteUpdateObserver:self];
  }

  else
  {
    [v6 removeMinuteUpdateObserver:self];
  }

  [(PREditorRootViewController *)self _updateComplicationSidebarEmptyViewVisibilityAnimated:0];
  [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PREditorRootViewController;
  [(PREditorRootViewController *)&v4 traitCollectionDidChange:a3];
  [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v35.receiver = self;
  v35.super_class = PREditorRootViewController;
  v7 = a4;
  [(PREditorRootViewController *)&v35 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(PREditorRootViewController *)self scrollView];
  v9 = [(PREditorRootViewController *)self lookTransition];
  v26 = v9;
  if (v9)
  {
    v10 = [v9 destinationLook];
    v11 = [(PREditorRootViewController *)self looks];
    v12 = [v11 indexOfObject:v10];

    v13 = [(PREditorRootViewController *)self viewIndexForLookIndex:v12];
  }

  else
  {
    [v8 contentOffset];
    v13 = [(PREditorRootViewController *)self lookIndexForContentOffset:?];
  }

  v14 = width * v13;
  v15 = [(PREditorRootViewController *)self topLegibilityView];
  v16 = [(PREditorRootViewController *)self bottomLegibilityView];
  [v15 setShouldOverscan:1];
  [v16 setShouldOverscan:1];
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v17 = 8;
  }

  else
  {
    v17 = 4;
  }

  v18 = [(PREditorRootViewController *)self view];
  v19 = [v18 window];
  v20 = [v19 windowScene];
  v21 = [v20 interfaceOrientation];

  if ((v21 - 1) < 2)
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
  v31 = v8;
  v32 = v14;
  v33 = 0;
  v34 = v22;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __81__PREditorRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v27[3] = &unk_1E7844110;
  v28 = v15;
  v29 = v16;
  v23 = v16;
  v24 = v15;
  v25 = v8;
  [v7 animateAlongsideTransition:v30 completion:v27];
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
  v12 = [(PREditorRootViewController *)self looks];
  v3 = [v12 count];
  v4 = [(PREditorRootViewController *)self view];
  [v4 bounds];
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
  v11 = [(PREditorRootViewController *)self scrollView];
  [v11 setContentSize:{v9, v10}];
}

- (void)looksWillChange
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(PREditorRootViewController *)self looks];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [(PREditorRootViewController *)self timeViewControllerForLook:*(*(&v10 + 1) + 8 * v7)];
        [v8 removeFromParentViewController];
        v9 = [v8 view];
        [v9 removeFromSuperview];

        [v8 didMoveToParentViewController:0];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(PREditorTitleViewControllerCoordinator *)self->_titleViewControllerCoordinator reloadData];
}

- (void)looksDidChange
{
  v46 = *MEMORY[0x1E69E9840];
  [(PREditorRootViewController *)self _updateScrollViewContentSize];
  v3 = [(PREditorRootViewController *)self editor];
  v4 = [v3 environment];
  v5 = [v4 role];

  v6 = [(PREditorRootViewController *)self looks];
  v7 = [v6 count];
  v40 = [(PREditorRootViewController *)self currentLook];
  v34 = v5;
  v35 = v6;
  if ([v3 displaysHeaderElements])
  {
    v33 = v7;
    v8 = [(PREditorRootViewController *)self dateProvider];
    v38 = [v8 date];

    v37 = [(PREditorRootViewController *)self extensionBundleURL];
    v39 = v3;
    v9 = [v3 timeViewControllerDisplayedElements];
    titleViewControllerCoordinator = self->_titleViewControllerCoordinator;
    if (!titleViewControllerCoordinator || (-[PREditorTitleViewControllerCoordinator role](titleViewControllerCoordinator, "role"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqual:v5], v11, (v12 & 1) == 0))
    {
      v13 = [[PREditorTitleViewControllerCoordinator alloc] initWithRole:v5];
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
          [v21 pr_setElements:v9];
          [v21 pr_setDisplayDate:v38];
          [v21 pr_setUsesEditingLayout:{-[PREditorRootViewController usesEditingLayout](self, "usesEditingLayout")}];
          v22 = [(PREditorRootViewController *)self editor];
          v23 = [v22 posterRole];

          [v21 pr_setStylingFromTitleStyleConfiguration:v20 withExtensionBundleURL:v37 forRole:v23];
          v24 = [v39 titleString];
          [v21 pr_setDisplayString:v24];

          [(PREditorRootViewController *)self addChildViewController:v21];
          v25 = [v21 view];
          [v25 setHidden:{objc_msgSend(v19, "isEqual:", v40) ^ 1}];
          [(UIView *)self->_timeContainerView addSubview:v25];
          [(UIView *)self->_timeContainerView sendSubviewToBack:v25];
          [v21 didMoveToParentViewController:self];
        }

        v16 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v16);
    }

    v3 = v39;
    v7 = v33;
  }

  [(PREditorRootViewController *)self _updateComplicationsVibrancyFromCurrentLook];
  [(PREditorRootViewController *)self _updateOverlayHostViewControllerLuminanceFromCurrentLook];
  v26 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:v40];
  v27 = [(PREditorRootViewController *)self subtitleViewController];
  v28 = [(PREditorRootViewController *)self extensionBundleURL];
  v29 = [v3 posterRole];
  [v27 pr_setStylingFromTitleStyleConfiguration:v26 withExtensionBundleURL:v28 forRole:v29];
  v30 = [(PREditorRootViewController *)self pageControl];
  [v30 setNumberOfPages:v7];
  [(PREditorRootViewController *)self currentLookDidChange];
  v31 = [(PREditorRootViewController *)self lookNameLabel];
  v32 = [v40 displayName];
  [v31 setText:v32];
  [v31 setHidden:v7 < 2];
}

- (void)updateForChangedTitleString
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PREditorRootViewController *)self looks];
  v4 = [(PREditorRootViewController *)self editor];
  v5 = [v4 titleString];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
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
        [v11 pr_setDisplayString:v5];

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
  v4 = [(PREditorRootViewController *)self dateProvider];
  v3 = [v4 date];
  [(PREditorRootViewController *)self dateProvider:v4 didUpdateDate:v3];
}

- (void)updateTimeControllersForLookMap
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PREditorRootViewController *)self editor];
  v4 = [v3 displaysHeaderElements];

  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(PREditorRootViewController *)self looks];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          titleViewControllerCoordinator = self->_titleViewControllerCoordinator;
          v12 = [v10 identifier];
          [(PREditorTitleViewControllerCoordinator *)titleViewControllerCoordinator updateLookWithIdentifier:v12 withLook:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)lookPropertiesDidChange
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = [(PREditorRootViewController *)self editor];
  v5 = [v4 displaysHeaderElements];

  if (!v5)
  {
    goto LABEL_22;
  }

  aSelector = a2;
  [(PREditorRootViewController *)self updateTimeControllersForLookMap];
  v33 = [(PREditorRootViewController *)self extensionBundleURL];
  v6 = [(PREditorRootViewController *)self editor];
  v7 = [v6 posterRole];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [(PREditorRootViewController *)self looks];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v50 count:16];
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
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v34 + 1) + 8 * v12);
      v14 = [(PREditorRootViewController *)self editor];
      if ([v14 isLookSwitchingDisabled])
      {
        v15 = [(PREditorRootViewController *)self currentLook];
        v16 = [v13 isEqual:v15];

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
          v43 = self;
          v44 = 2114;
          v45 = @"PREditorRootViewController.m";
          v46 = 1024;
          v47 = 1273;
          v48 = 2114;
          v49 = v19;
          _os_log_fault_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }
      }

      [v18 pr_setStylingFromTitleStyleConfiguration:v17 withExtensionBundleURL:v33 forRole:v7];

LABEL_13:
      ++v12;
    }

    while (v10 != v12);
    v23 = [v8 countByEnumeratingWithState:&v34 objects:v50 count:16];
    v10 = v23;
  }

  while (v23);
LABEL_19:

  v24 = [(PREditorRootViewController *)self editor];
  v25 = [v24 configuredProperties];
  v26 = [v25 titleStyleConfiguration];

  v27 = [(PREditorRootViewController *)self subtitleViewController];
  [v27 pr_setStylingFromTitleStyleConfiguration:v26 withExtensionBundleURL:v33 forRole:v7];

  if ([v7 isEqual:@"PRPosterRoleIncomingCall"])
  {
    v28 = [(PREditorRootViewController *)self editor];
    [v28 setDepthEffectDisallowed:objc_msgSend(v26 forReason:{"prefersVerticalTitleLayout"), @"role"}];
  }

  editorElementLayoutController = self->_editorElementLayoutController;
  v30 = [v26 timeNumberingSystem];
  [(PREditorElementLayoutController *)editorElementLayoutController setNumberingSystem:v30];

  [(PREditorRootViewController *)self _updateComplicationsVibrancyFromCurrentLook];
  [(PREditorRootViewController *)self updateReticleViewFrames];

LABEL_22:
  [(PREditorRootViewController *)self _updateOverlayHostViewControllerLuminanceFromCurrentLook];
}

- (void)lookBackgroundTypesDidChange
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = [(PREditorRootViewController *)self editor];
  v5 = [v4 displaysHeaderElements];

  if (v5)
  {
    aSelector = a2;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [(PREditorRootViewController *)self looks];
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v40 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          v12 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:v11];
          v13 = [(PREditorRootViewController *)self extensionBundleURL];
          v14 = [v12 vibrancyConfigurationWithExtensionBundleURL:v13];
          v15 = [v14 backgroundType];

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
              v33 = self;
              v34 = 2114;
              v35 = @"PREditorRootViewController.m";
              v36 = 1024;
              v37 = 1301;
              v38 = 2114;
              v39 = v17;
              _os_log_fault_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }
          }

          [v16 pr_setBackgroundType:v15];

          ++v10;
        }

        while (v8 != v10);
        v21 = [v6 countByEnumeratingWithState:&v24 objects:v40 count:16];
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
    v3 = [(PREditorRootViewController *)self currentLook];
    v4 = v3;
    if (v3)
    {
      v8 = v3;
      v5 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:v3];
      v6 = v5;
      if (v5)
      {
        overlayHostViewController = self->_overlayHostViewController;
        [v5 contentsLuminance];
        [(PROverlaySceneHostViewController *)overlayHostViewController setContentsLuminance:?];
      }

      v4 = v8;
    }

    MEMORY[0x1EEE66BB8](v3, v4);
  }
}

- (void)setHostedContentSettings:(id)a3
{
  v5 = a3;
  if (PUIFeatureEnabled())
  {
    if ((BSEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&self->_hostedContentSettings, a3);
      overlayHostViewController = self->_overlayHostViewController;
      if (overlayHostViewController)
      {
        [(PROverlaySceneHostViewController *)overlayHostViewController setContentSettings:v5];
      }

      else
      {
        v8 = [(PREditorRootViewController *)self _makeOverlayHostingScene];
        v9 = [(PREditorRootViewController *)self currentLook];
        v10 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:v9];
        [v10 contentsLuminance];
        v12 = v11;

        v13 = [[PROverlaySceneHostViewController alloc] initWithScene:v8 contentSettings:v5 contentsLuminance:self safeAreaProvider:v12];
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
  v3 = [(PREditorRootViewController *)self lookMenuButton];
  if (v3)
  {
    v4 = [(PREditorRootViewController *)self currentLook];
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [v4 displayName];
    [v3 setTitle:v6 forState:0];

    objc_initWeak(&location, self);
    v7 = [(PREditorRootViewController *)self looks];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__PREditorRootViewController_updateLookMenu__block_invoke;
    v12[3] = &unk_1E7844160;
    objc_copyWeak(&v16, &location);
    v8 = v3;
    v13 = v8;
    v9 = v4;
    v14 = v9;
    v10 = v5;
    v15 = v10;
    [v7 enumerateObjectsUsingBlock:v12];

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

- (void)setOverlayHostViewController:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PREditorRootViewController.m" lineNumber:1393 description:@"setOverlayHostViewController needs to be overridden by subclasses"];
}

- (void)_setOverlayHostViewController:(id)a3 insertingAboveSubview:(id)a4
{
  v14 = a3;
  v7 = a4;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(PREditorRootViewController *)self removeChildViewController:self->_overlayHostViewController];
    objc_storeStrong(&self->_overlayHostViewController, a3);
    v8 = [v14 view];
    [v8 setAlpha:0.0];
    v9 = [v8 layer];
    [v9 setName:@"overlayHostView"];

    [(PREditorRootViewController *)self addChildViewController:v14];
    if (v7)
    {
      v10 = [(PREditorRootViewController *)self view];
      [v10 insertSubview:v8 aboveSubview:v7];

      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = MEMORY[0x1E696ACD8];
      v12 = [(PREditorRootViewController *)self view];
      v13 = [v12 pui_constraintsPinningSubview:v8 toEdges:15];
      [v11 activateConstraints:v13];
    }

    [v14 didMoveToParentViewController:self];
    [(PREditorRootViewController *)self updateOverlayHostViewControllerVisibility];
  }
}

- (void)updateOverlayHostViewControllerVisibility
{
  v3 = self->_overlayHostViewController;
  if (v3)
  {
    v4 = [(PREditorRootViewController *)self editor];
    v5 = [v4 viewsHaveASubview];

    v6 = MEMORY[0x1E69DD250];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__PREditorRootViewController_updateOverlayHostViewControllerVisibility__block_invoke;
    v9[3] = &unk_1E78437A0;
    v10 = v3;
    v11 = v5;
    [v6 animateWithDuration:v9 animations:0.2];
    v7 = PRLogEditing();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v5)
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
  v3 = [(PREditorRootViewController *)self editor];
  v4 = 0.0;
  if ([v3 areViewsSharedBetweenLooks])
  {
    v5 = [(PREditorRootViewController *)self scrollView];
    [v5 contentOffset];
    v4 = v6;
  }

  updateReticleRecursionDepth = self->_updateReticleRecursionDepth;
  if (updateReticleRecursionDepth > 2)
  {
    v8 = [(PREditorRootViewController *)self interfaceOrientation];
    v9 = [v3 configuredProperties];
    v10 = [v9 titleStyleConfiguration];
    [v10 preferredTimeMaxYForOrientation:v8];
    v12 = v11;

    v13 = [v3 preferences];
    [v13 preferredSalientContentRectangle];
    v14 = NSStringFromCGRect(v26);

    v15 = PRLogEditing();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = [v3 isAdaptiveTimeHeightUserConfigured];
      timeResizeGestureActive = self->_timeResizeGestureActive;
      v18[0] = 67109890;
      v18[1] = v16;
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

- (void)_updateReticleViewFramesWithOffset:(double)a3
{
  if ([(PREditorRootViewController *)self _appearState]!= 2)
  {
    return;
  }

  v5 = [(PREditorRootViewController *)self editor];
  v6 = [(PREditorRootViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(PREditorRootViewController *)self editorElementLayoutController];
  v262 = [(PREditorRootViewController *)self configuredProperties];
  v16 = [v262 titleStyleConfiguration];
  v17 = [v5 titleString];
  v18 = [v16 effectiveTitleLayoutForText:v17];

  v19 = [(PREditorRootViewController *)self reticleVibrancyView];
  v20 = [v5 displaysHeaderElements];
  if (v19 && v20)
  {
    v250 = v16;
    v21 = [v5 displaysSubtitleElement];
    v22 = [v5 areComplicationsAllowed];
    v23 = [v5 isComplicationRowAtBottom];
    v24 = 3;
    if (!v21)
    {
      v24 = 1;
    }

    v25 = v24 | 0xC;
    if (v23)
    {
      v25 = v24 | 0x24;
    }

    if (v22)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    v27 = [v15 frameAttributesForElements:v26 variant:3 titleLayout:v18 withBoundingRect:{v8, v10, v12, v14}];
    [v27 rect];
    v249 = a3;
    [v19 setFrame:v28 + a3];
    v246 = [(PREditorRootViewController *)self inlineComplicationReticleView];
    [v15 frameForElements:2 variant:3 withBoundingRect:{v8, v10, v12, v14}];
    v259 = v30;
    v260 = v29;
    v242 = v32;
    v243 = v31;
    v245 = [(PREditorRootViewController *)self titleReticleView];
    v244 = [v15 frameAttributesForElements:1 variant:3 titleLayout:v18 withBoundingRect:{v8, v10, v12, v14}];
    [v244 rect];
    v33 = v12;
    rect_16 = v34;
    rect_24 = v35;
    v261 = v36;
    v256 = v37;
    v38 = [v15 frameAttributesForElements:1 variant:2 titleLayout:v18 withBoundingRect:{v8, v10, v12, v14}];
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
    v46 = [v15 frameAttributesForElements:1 variant:1 titleLayout:v18 withBoundingRect:{v8, v39, v33, v14}];
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
    v56 = [(PREditorRootViewController *)self editor];
    v57 = [v56 preferences];
    [v57 preferredSalientContentRectangle];
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
    v71 = [(PREditorRootViewController *)self editor];
    v72 = [v71 preferences];
    [v72 acceptableSalientContentRectangle];
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;

    v274.origin.x = v74;
    v274.origin.y = v76;
    v274.size.width = v78;
    v274.size.height = v80;
    v81 = CGRectIsNull(v274);
    v82 = [(PREditorRootViewController *)self currentLook];
    v83 = [(PREditorRootViewController *)self timeViewControllerForLook:v82];

    v84 = objc_opt_class();
    v85 = v83;
    v236 = v19;
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

    v228 = [v93 supportsAdaptiveTimeTextHeight];
    v94 = [MEMORY[0x1E69DC938] currentDevice];
    v95 = [v94 userInterfaceIdiom] == 1 && self->_complicationSidebarConfigured;
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
    v98 = [(PREditorRootViewController *)self editor];
    v99 = [v98 preferences];
    v100 = [v99 adaptiveTimeMode];

    v101 = [(PREditorRootViewController *)self editor];
    v102 = [v101 preferences];
    v103 = [v102 complicationRowMode];

    v104 = [(PREditorRootViewController *)self editor];
    v105 = [v104 preferences];
    if ([v105 adaptiveTimeMode] == 2 && -[PREditorRootViewController isComplicationsRowConfigured](self, "isComplicationsRowConfigured"))
    {
      v223 = v85;
      v106 = [(PREditorRootViewController *)self isComplicationRowAtBottom];

      v89 = 0;
      v90 = 0.0;
      v92 = v261;
      v88 = rect_24;
      v87 = v256;
      if (!v106 || v103 == 1)
      {
        v19 = v236;
        v27 = v239;
        v85 = v223;
LABEL_75:
        [(SBHIconResizeHandle *)self->_titleResizeHandle setHidden:v89 ^ 1u];

        v91 = rect_16;
LABEL_76:
        v257 = v90;
        if (!PUIFeatureEnabled())
        {
          v16 = v250;
          v147 = v245;
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

          v161 = [v147 superview];
          [v161 convertRect:v6 fromView:{v160, v92, v88, v87}];
          v162 = v87;
          v164 = v163;
          v166 = v165;
          v168 = v167;
          v170 = v169;

          [v6 bounds];
          if (BSFloatLessThanFloat())
          {
            +[PRIncomingCallMetricsProvider horizontalTextEdgePadding];
            v172 = v171;
            [v6 frame];
            v174 = (v172 + vabdd_f64(v88, v173)) * 0.5;
            [v6 frame];
            v88 = v175 - v172;
            v160 = v160 + v174;
            v176 = [v147 superview];
            v177 = v92;
            v178 = v162;
            [v176 convertRect:v6 fromView:{v160, v177, v88, v162}];
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
          v184 = [(PREditorRootViewController *)self editor];
          [v184 updateHostForTitleReticleFrameChanged:{v160, v261, v88, v178}];

          v185 = [v246 superview];
          [v185 convertRect:v6 fromView:{v260, v243, v259, v242}];
          v187 = v186;
          v189 = v188;
          v191 = v190;
          v193 = v192;

          [v246 setFrame:{v187, v189, v191, v193}];
          [(PREditorRootViewController *)self _updateComplicationRowReticleWithOffset:0 animated:v257];

          v8 = v248;
          a3 = v249;
          v10 = v247;
          v12 = v241;
          v14 = rect_8;
          goto LABEL_106;
        }

        v138 = v27;
        v139 = [(PREditorRootViewController *)self currentLook];
        v140 = [(PREditorRootViewController *)self timeViewControllerForLook:v139];

        objc_opt_class();
        rect_24a = v140;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v146 = v250;
          v147 = v245;
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

          v16 = v146;
          v154 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
          v155 = v91;
          v156 = v92;
          v157 = v88;
          v158 = v87;
          if (v154 == 1)
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
          v143 = [MEMORY[0x1E69DC938] currentDevice];
          v144 = [v143 userInterfaceIdiom];

          if (v144 == 1)
          {
            [v142 relativeAdaptiveTimeTextWidth];
            v146 = v250;
            v147 = v245;
            if (v145 > 1.0)
            {
              v148 = v88 * (v145 + -1.0);
              v88 = v88 + v148;
              v91 = v91 - v148 * 0.5;
              [v19 frame];
              if (v150 >= v88)
              {
                v151 = v150;
              }

              else
              {
                v151 = v88;
              }

              [v19 setFrame:v149 - (v151 - v150) * 0.5];
            }

            goto LABEL_89;
          }
        }

        else
        {
          [v141 setAdaptsTimeTextHeight:0];
        }

        v146 = v250;
        v147 = v245;
LABEL_89:

        v27 = v138;
        goto LABEL_90;
      }

      v19 = v236;
      v85 = v223;
      if ((v228 ^ 1))
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
      if (v103 == 1)
      {
        v19 = v236;
        goto LABEL_60;
      }

      v19 = v236;
      if ((v228 ^ 1))
      {
LABEL_60:
        v27 = v239;
        goto LABEL_75;
      }
    }

    v27 = v239;
    if (v100 != 3)
    {
      if ((PUIFeatureEnabled() & 1) != 0 || ![(PREditorRootViewController *)self isComplicationsRowConfigured])
      {
        v224 = v85;
        v107 = [(PREditorRootViewController *)self interfaceOrientation];
        v108 = [v5 configuredProperties];
        v109 = [v108 titleStyleConfiguration];
        [v109 preferredTimeMaxYForOrientation:v107];
        v111 = v110;

        v112 = v111;
        if (v111 <= 1.0)
        {
          v113 = [(PREditorRootViewController *)self view];
          [v113 frame];
          v112 = v111 * v114;
        }

        v115 = [(PREditorRootViewController *)self editor];
        v116 = [v115 editingContext];

        v117 = [(PREditorRootViewController *)self editor];
        v118 = [v117 isAdaptiveTimeHeightUserConfigured];

        v119 = [(PREditorRootViewController *)self editor];
        v120 = [v119 isIgnoringSalientContentForTimeHeight];

        v219 = v96;
        if (v116 && !((v112 != 0.0) & v118 | v120 & 1))
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
          v123 = [(PREditorRootViewController *)self editor];
          [v123 setAdaptiveTimeHeightUserConfigured:0];

          [(PREditorRootViewController *)self updateForDesiredTimeMaxY:v107 orientation:v121];
          v19 = v236;
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

            v19 = v236;
          }

          else
          {
            v19 = v236;
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

          v19 = v236;
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

        v128 = [(PREditorRootViewController *)self isTimeResizeGestureActive];
        v129 = v258;
        if (v128)
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
        [v19 frame];
        [v19 setFrame:?];
        v137 = [(PREditorRootViewController *)self editor];
        [v137 setDepthEffectDisallowed:v124 > v220 forReason:@"adaptiveTime"];

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
  v194 = [(PREditorRootViewController *)self sidebarReticleVibrancyView];
  if (v194)
  {
    v195 = [v15 frameAttributesForElements:16 variant:3 titleLayout:0 withBoundingRect:{v8, v10, v12, v14}];
    [v195 rect];
    [v194 setFrame:v196 + a3];
    [(PREditorRootViewController *)self complicationSidebarReticleView];
    v197 = v5;
    v198 = v16;
    v200 = v199 = v19;
    [v15 frameForElements:16 variant:3 withBoundingRect:{v8, v10, v12, v14}];
    v202 = v201;
    v204 = v203;
    v206 = v205;
    v208 = v207;
    v209 = [v200 superview];
    [v209 convertRect:v6 fromView:{v202, v204, v206, v208}];
    v211 = v210;
    v213 = v212;
    v215 = v214;
    v217 = v216;

    [v200 setFrame:{v211, v213, v215, v217}];
    v218 = [(PREditorRootViewController *)self complicationSidebarEmptyStateView];
    [v200 bounds];
    [v218 setFrame:?];

    v19 = v199;
    v16 = v198;
    v5 = v197;
  }
}

- (void)_updateBottomControlsYConstraint
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = [(PREditorRootViewController *)self bottomControlsYConstraint];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696ACD8];
    v36[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    [v5 deactivateConstraints:v6];
  }

  if ([(PREditorRootViewController *)self _shouldShowQuickActionEditing])
  {
    if (self->_complicationRowAtBottom)
    {
      v7 = [(BSUIVibrancyEffectView *)self->_controlsVibrancyView bottomAnchor];
      v8 = [(PREditorRootViewController *)self complicationRowReticleView];
      v9 = [v8 topAnchor];
      v10 = -38.0;
    }

    else
    {
      [PREditorElementLayoutController frameForElements:64 variant:2];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [(PREditorRootViewController *)self lookNameLabel];
      [v22 frame];
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
      v7 = [(BSUIVibrancyEffectView *)self->_controlsVibrancyView bottomAnchor];
      v8 = [(PREditorRootViewController *)self lookNameLabel];
      v9 = [v8 topAnchor];
      v10 = v32 - MinY + -38.0;
    }

    v13 = [v7 constraintEqualToAnchor:v9 constant:v10];
  }

  else
  {
    v7 = [(PREditorRootViewController *)self pageControl];
    v8 = [v7 bottomAnchor];
    v9 = [(PREditorRootViewController *)self view];
    v11 = [v9 safeAreaLayoutGuide];
    v12 = [v11 bottomAnchor];
    v13 = [v8 constraintEqualToAnchor:v12 constant:-20.0];

    v4 = v11;
  }

  [(PREditorRootViewController *)self setBottomControlsYConstraint:v13];
  v33 = MEMORY[0x1E696ACD8];
  v35 = v13;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [v33 activateConstraints:v34];
}

- (void)_updateComplicationRowReticleWithOffset:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(PREditorRootViewController *)self _appearState]== 2)
  {
    v7 = [(PREditorRootViewController *)self complicationRowReticleView];
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
      v11 = v19 + a3;
    }

    v20 = [v7 superview];
    v21 = [(PREditorRootViewController *)self view];
    [v20 convertRect:v21 fromView:{v9, v11, v13, v15}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    if (v4)
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
      v32 = v7;
      v33 = self;
      [v30 _animateUsingSpringWithDampingRatio:0 response:v31 tracking:&__block_literal_global_228 dampingRatioSmoothing:0.9 responseSmoothing:0.9 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    }

    else
    {
      [(PREditorRootViewController *)self _updateBottomControlsYConstraint];
      [v7 setFrame:{v23, v25, v27, v29}];
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

- (void)_updateComplicationSidebarEmptyViewVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PREditorRootViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v7 interfaceOrientation];

  v9 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v9 userInterfaceIdiom] == 1)
  {

    v10 = 0.0;
    if ((v8 - 1) < 2)
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
  if (!v3 || self->_complicationSidebarConfigured)
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
  v3 = [(PREditorRootViewController *)self currentLook];
  v4 = v3;
  if (v3)
  {
    v17 = v3;
    v5 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:v3];
    v6 = [v5 titleContentStyle];
    v7 = [v6 type];

    if (v7 == 1)
    {
      v8 = [objc_alloc(MEMORY[0x1E698E810]) initWithEffectType:2 backgroundType:0 color:0];
    }

    else
    {
      v9 = [(PREditorRootViewController *)self extensionBundleURL];
      v8 = [v5 vibrancyConfigurationWithExtensionBundleURL:v9];
    }

    [(PREditorRootViewController *)self _setVibrancyConfiguration:v8];
    v10 = [(PREditorRootViewController *)self subtitleViewController];
    v11 = [v8 color];
    [v10 setTextColor:v11];

    [v10 setEffectType:{objc_msgSend(v8, "effectType")}];
    [v10 setBackgroundType:{objc_msgSend(v8, "backgroundType")}];
    v12 = [v8 alternativeVibrancyEffectLUT];
    v13 = objc_opt_respondsToSelector();
    v14 = [v12 lutIdentifier];
    v15 = [v12 bundleURL];
    if (v13)
    {
      [v10 setAlternativeVibrancyEffectLUTIdentifier:v14 alternativeVibrancyEffectLUTBundleURL:v15 luminanceReduced:0];
    }

    else
    {
      [v10 setAlternativeVibrancyEffectLUTIdentifier:v14 alternativeVibrancyEffectLUTBundleURL:v15];
    }

    v16 = [v8 groupName];
    [v10 setGroupName:v16];

    v4 = v17;
  }

  MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)_setVibrancyConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PREditorRootViewController *)self editor];
  [v5 setComplicationsVibrancyConfiguration:v4];

  v9 = [PREditingReticleView reticleVibrancyForVibrancyConfiguration:v4];

  v6 = [(PREditorRootViewController *)self reticleVibrancyView];
  [v6 setConfiguration:v9];

  v7 = [(PREditorRootViewController *)self sidebarReticleVibrancyView];
  [v7 setConfiguration:v9];

  v8 = [(PREditorRootViewController *)self controlsVibrancyView];
  [v8 setConfiguration:v9];
}

- (unint64_t)backgroundTypeForLook:(id)a3
{
  v3 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:a3];
  [v3 contentsLuminance];
  v5 = PRPosterContentsBackgroundTypeForLuminance(v4);

  return v5;
}

- (void)setLooks:(id)a3 forUpdatingProperties:(BOOL)a4
{
  v10 = a3;
  if ((BSEqualArrays() & 1) == 0)
  {
    if (a4)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v10 copyItems:1];
      looks = self->_looks;
      self->_looks = v6;

      [(PREditorRootViewController *)self lookPropertiesDidChange];
    }

    else
    {
      [(PREditorRootViewController *)self looksWillChange];
      v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v10 copyItems:1];
      v9 = self->_looks;
      self->_looks = v8;

      [(PREditorRootViewController *)self looksDidChange];
    }
  }
}

- (id)viewForMenuElementIdentifier:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PREditorRootViewController *)self leadingMenuElements];
  v6 = [(PREditorRootViewController *)self trailingMenuElements];
  v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v8 = [v7 arrayByAddingObjectsFromArray:v5];

  v37 = v6;
  v9 = [v8 arrayByAddingObjectsFromArray:v6];

  v10 = [(PREditorRootViewController *)self leadingMenuElementViews];
  v11 = [(PREditorRootViewController *)self trailingMenuElementViews];
  v12 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v36 = v10;
  v13 = [v12 arrayByAddingObjectsFromArray:v10];

  v35 = v11;
  v39 = [v13 arrayByAddingObjectsFromArray:v11];

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
    v34 = v5;
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

        v25 = [v24 identifier];
        v26 = [v25 isEqualToString:v4];

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

        v31 = [v30 identifier];
        v32 = [v31 isEqualToString:v4];

        if (v32)
        {

LABEL_23:
          v5 = v34;
          goto LABEL_24;
        }

        ++v16;
      }

      v15 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      v20 = 0;
      v5 = v34;
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
    v3 = [(PREditorRootViewController *)self additionalControls];
    v4 = v3;
    if (v3)
    {
      if ([v3 count])
      {
        v20 = [(PREditorRootViewController *)self view];
        v5 = [v20 safeAreaLayoutGuide];
        v6 = [v4 objectAtIndex:0];
        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
        v15 = MEMORY[0x1E696ACD8];
        v19 = [v6 topAnchor];
        v18 = [v5 topAnchor];
        v17 = [v19 constraintEqualToAnchor:v18 constant:22.0];
        v21[0] = v17;
        v16 = [v6 leadingAnchor];
        v14 = [v5 leadingAnchor];
        v7 = [v16 constraintEqualToAnchor:v14 constant:44.0];
        v21[1] = v7;
        v8 = [v6 widthAnchor];
        v9 = [v5 widthAnchor];
        v10 = [v8 constraintEqualToAnchor:v9 multiplier:0.25];
        v21[2] = v10;
        v11 = [v6 heightAnchor];
        v12 = [v11 constraintEqualToConstant:50.0];
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
    v3 = [(PREditorRootViewController *)self leadingMenuElements];
    v4 = [(PREditorRootViewController *)self trailingMenuElements];
    if ([v3 count] < 3)
    {
      if ([v4 count] < 3)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v6 = [(PREditorRootViewController *)self leadingMenuElementViews];
        v7 = [v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
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
                objc_enumerationMutation(v6);
              }

              [*(*(&v40 + 1) + 8 * v10++) removeFromSuperview];
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
          }

          while (v8);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v11 = [(PREditorRootViewController *)self trailingMenuElementViews];
        v12 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
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
                objc_enumerationMutation(v11);
              }

              [*(*(&v36 + 1) + 8 * v15++) removeFromSuperview];
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
          }

          while (v13);
        }

        v16 = [(PREditorRootViewController *)self _viewsForMenuElements:v3];
        [(PREditorRootViewController *)self setLeadingMenuElementViews:v16];
        v17 = [(PREditorRootViewController *)self _viewsForMenuElements:v4];
        [(PREditorRootViewController *)self setTrailingMenuElementViews:v17];
        v18 = [(PREditorRootViewController *)self view];
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

              [v18 addSubview:*(*(&v32 + 1) + 8 * v22++)];
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

              [v18 addSubview:{*(*(&v28 + 1) + 8 * v27++), v28}];
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

- (id)_viewsForMenuElements:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v3;
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

      v18 = [v13 identifier];
      v19 = [v18 isEqualToString:PREditorPlaceholderActionIdentifier];

      if (v19)
      {
        v20 = [objc_alloc(MEMORY[0x1E69DC638]) initWithFrame:{v4, v5, v6, v7}];
        [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
        v21 = [MEMORY[0x1E69DC888] whiteColor];
        [v20 setColor:v21];

        [v20 startAnimating];
        [v36 addObject:v20];
        goto LABEL_29;
      }

      v20 = [PREditorMenuButton buttonWithType:0];
      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
      v22 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:26.0];
      [v20 setPreferredSymbolConfiguration:v22 forImageInState:0];
      v23 = [v15 accessibilityLabel];
      [v20 setAccessibilityLabel:v23];

      v24 = [MEMORY[0x1E69DC888] whiteColor];
      [v20 setTintColor:v24];

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

      v27 = [v13 identifier];
      if ([v27 isEqualToString:PREditorDepthEffectActionIdentifier])
      {

LABEL_21:
        v30 = [(PREditorRootViewController *)self imageForDepthEffectActionTopLevelAction:1];
        [v20 setImage:v30 forState:0];
        goto LABEL_23;
      }

      v28 = [v17 identifier];
      v29 = [v28 isEqualToString:PREditorDepthEffectActionIdentifier];

      if (v29)
      {
        goto LABEL_21;
      }

      v30 = [v15 image];
      [v20 setImage:v30 forState:0];
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
    v3 = [(PREditorRootViewController *)self leadingMenuElementViews];
    v4 = [(PREditorRootViewController *)self trailingMenuElementViews];
    if (!(v3 | v4))
    {
LABEL_54:

      return;
    }

    v5 = [(PREditorRootViewController *)self view];
    v88 = [(PREditorRootViewController *)self pageControl];
    v90 = [v5 safeAreaLayoutGuide];
    v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v7 = [v4 reverseObjectEnumerator];
    v8 = [v7 allObjects];

    v9 = [v3 reverseObjectEnumerator];
    v10 = [v9 allObjects];

    v87 = v8;
    v11 = [v6 arrayByAddingObjectsFromArray:v8];

    v86 = v10;
    v12 = [v11 arrayByAddingObjectsFromArray:v10];

    v13 = [(PREditorRootViewController *)self editor];
    v14 = [v13 editingIdiom];

    v89 = v12;
    if (v14 == 2)
    {
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v117 objects:v127 count:16];
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
              objc_enumerationMutation(v15);
            }

            [*(*(&v117 + 1) + 8 * i) setAlpha:0.0];
          }

          v17 = [v15 countByEnumeratingWithState:&v117 objects:v127 count:16];
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
      v21 = [(BSUIVibrancyEffectView *)self->_controlsVibrancyView topAnchor];
    }

    else
    {
      v22 = [MEMORY[0x1E69DC938] currentDevice];
      v23 = [v22 userInterfaceIdiom];

      if ((v23 & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v25 = [(PREditorRootViewController *)self lookNameLabel];
        v15 = [v25 centerYAnchor];

LABEL_20:
        v26 = [(PREditorRootViewController *)self editor];
        v27 = [v26 editingIdiom];

        if (v27 == 1)
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
            v83 = v5;
            v84 = v4;
            v85 = v3;
            v28 = 0;
            v92 = *v114;
            v95 = v15;
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
                  [v90 trailingAnchor];
                }
                v101 = ;
                v104 = MEMORY[0x1E696ACD8];
                v110 = [v31 centerYAnchor];
                v107 = [v110 constraintEqualToAnchor:v95];
                v125[0] = v107;
                v32 = [v31 widthAnchor];
                v33 = [v32 constraintEqualToConstant:50.0];
                v125[1] = v33;
                v34 = [v31 heightAnchor];
                v35 = [v34 constraintEqualToConstant:50.0];
                v125[2] = v35;
                v36 = [v31 trailingAnchor];
                v37 = [v36 constraintEqualToAnchor:v101 constant:-22.0];
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
            v15 = v95;
            goto LABEL_51;
          }

LABEL_52:
          v19 = v87;

LABEL_53:
          goto LABEL_54;
        }

        obj = [v5 window];
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
            [v88 _setPreferredNumberOfVisibleIndicators:4];
          }
        }

        v84 = v4;
        v85 = v3;
        v83 = v5;
        if ([v3 count] == 1)
        {
          v42 = [v3 objectAtIndex:0];
          v43 = MEMORY[0x1E696ACD8];
          v44 = [v42 centerYAnchor];
          v45 = [v44 constraintEqualToAnchor:v15];
          v124[0] = v45;
          v46 = [v42 widthAnchor];
          v47 = [v46 constraintEqualToConstant:50.0];
          v124[1] = v47;
          v111 = [v42 heightAnchor];
          v108 = [v111 constraintEqualToConstant:50.0];
          v124[2] = v108;
          v48 = [v42 leadingAnchor];
          v49 = [v90 leadingAnchor];
          v105 = v48;
          v50 = [v48 constraintEqualToAnchor:v49 constant:v40];
          v124[3] = v50;
          v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:4];
          [v43 activateConstraints:v51];
        }

        else
        {
          if ([v3 count] != 2)
          {
            goto LABEL_46;
          }

          v42 = [v3 objectAtIndex:0];
          v44 = [v3 objectAtIndex:1];
          v93 = MEMORY[0x1E696ACD8];
          v99 = [v42 centerYAnchor];
          v102 = [v99 constraintEqualToAnchor:v15];
          v123[0] = v102;
          v81 = [v42 widthAnchor];
          v111 = [v81 constraintEqualToConstant:50.0];
          v123[1] = v111;
          v108 = [v42 heightAnchor];
          v105 = [v108 constraintEqualToConstant:50.0];
          v123[2] = v105;
          v49 = [v42 leadingAnchor];
          v50 = [v90 leadingAnchor];
          v51 = [v49 constraintEqualToAnchor:v50 constant:v41];
          v123[3] = v51;
          v79 = [v44 centerYAnchor];
          v77 = [v79 constraintEqualToAnchor:v15];
          v123[4] = v77;
          v75 = [v44 widthAnchor];
          v73 = [v75 constraintEqualToConstant:50.0];
          v123[5] = v73;
          v71 = [v44 heightAnchor];
          v52 = [v71 constraintEqualToConstant:50.0];
          v123[6] = v52;
          [v44 leadingAnchor];
          v53 = v96 = v15;
          v54 = [v90 leadingAnchor];
          v55 = [v53 constraintEqualToAnchor:v54 constant:v41 + 50.0];
          v123[7] = v55;
          v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:8];
          [v93 activateConstraints:v56];

          v45 = v99;
          v47 = v81;

          v15 = v96;
          v46 = v102;
        }

        v4 = v84;
        v3 = v85;
        v5 = v83;
        v24 = v89;
LABEL_46:
        if ([v4 count] == 1)
        {
          v28 = [v4 objectAtIndex:0];
          v57 = MEMORY[0x1E696ACD8];
          v58 = [v28 centerYAnchor];
          v59 = [v58 constraintEqualToAnchor:v15];
          v122[0] = v59;
          v60 = [v28 widthAnchor];
          v61 = [v60 constraintEqualToConstant:50.0];
          v122[1] = v61;
          v112 = [v28 heightAnchor];
          v109 = [v112 constraintEqualToConstant:50.0];
          v122[2] = v109;
          v62 = [v28 trailingAnchor];
          v63 = [v90 trailingAnchor];
          v106 = v62;
          v64 = [v62 constraintEqualToAnchor:v63 constant:-v40];
          v122[3] = v64;
          v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:4];
          [v57 activateConstraints:v65];
        }

        else
        {
          if ([v4 count] != 2)
          {
            goto LABEL_52;
          }

          v28 = [v4 objectAtIndex:1];
          v58 = [v4 objectAtIndex:0];
          v94 = MEMORY[0x1E696ACD8];
          v100 = [v28 centerYAnchor];
          v103 = [v100 constraintEqualToAnchor:v15];
          v121[0] = v103;
          v82 = [v28 widthAnchor];
          v112 = [v82 constraintEqualToConstant:50.0];
          v121[1] = v112;
          v109 = [v28 heightAnchor];
          v106 = [v109 constraintEqualToConstant:50.0];
          v121[2] = v106;
          v63 = [v28 trailingAnchor];
          v64 = [v90 trailingAnchor];
          v65 = [v63 constraintEqualToAnchor:v64 constant:-v41];
          v121[3] = v65;
          v80 = [v58 centerYAnchor];
          v78 = [v80 constraintEqualToAnchor:v15];
          v121[4] = v78;
          v76 = [v58 widthAnchor];
          v74 = [v76 constraintEqualToConstant:50.0];
          v121[5] = v74;
          v72 = [v58 heightAnchor];
          v66 = [v72 constraintEqualToConstant:50.0];
          v121[6] = v66;
          [v58 trailingAnchor];
          v67 = v97 = v15;
          v68 = [v90 trailingAnchor];
          v69 = [v67 constraintEqualToAnchor:v68 constant:-(v41 + 50.0)];
          v121[7] = v69;
          v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:8];
          [v94 activateConstraints:v70];

          v59 = v100;
          v61 = v82;

          v15 = v97;
          v60 = v103;
        }

        v24 = v89;
LABEL_51:

        v4 = v84;
        v3 = v85;
        v5 = v83;
        goto LABEL_52;
      }

      v21 = [v88 centerYAnchor];
    }

    v15 = v21;
    goto LABEL_20;
  }
}

- (void)updateTopButtonsLayoutWithLeadingTopButtonFrame:(CGRect)a3 trailingTopButtonFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v15 = [(PREditorRootViewController *)self view];
  if (![v15 effectiveUserInterfaceLayoutDirection])
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

- (void)setTopButtonsEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_topButtonsEdgeInsets.top), vceqq_f64(v4, *&self->_topButtonsEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_topButtonsEdgeInsets = a3;
    left = a3.left;
    top = a3.top;
    v9 = [(PREditorRootViewController *)self leadingTopButtonXConstraint];
    [v9 setConstant:left];
    v6 = [(PREditorRootViewController *)self leadingTopButtonYConstraint];
    [v6 setConstant:top];
    v7 = [(PREditorRootViewController *)self trailingTopButtonXConstraint];
    [v7 setConstant:-left];
    v8 = [(PREditorRootViewController *)self trailingTopButtonYConstraint];
    [v8 setConstant:top];
  }
}

- (void)setTopButtonsHidden:(BOOL)a3
{
  if (self->_topButtonsHidden != a3)
  {
    self->_topButtonsHidden = a3;
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

  v4 = [(PREditorRootViewController *)self cancelButton];
  [v4 setAlpha:v3];

  v5 = [(PREditorRootViewController *)self acceptButton];
  [v5 setAlpha:v3];
}

- (void)setAllUserInteractionDisabledExceptForCancelButton:(BOOL)a3
{
  v27[4] = *MEMORY[0x1E69E9840];
  if (self->_allUserInteractionDisabledExceptForCancelButton != a3)
  {
    v3 = a3;
    self->_allUserInteractionDisabledExceptForCancelButton = a3;
    v5 = [(PREditorRootViewController *)self view];
    v6 = [(PREditorRootViewController *)self acceptButton];
    v7 = !v3;
    [v6 setEnabled:v7];
    if (v7)
    {
      v17 = [(PREditorRootViewController *)self touchBlockingView];
      [v17 removeFromSuperview];

      [(PREditorRootViewController *)self setTouchBlockingView:0];
    }

    else
    {
      v25 = [(PREditorRootViewController *)self cancelButton];
      [v5 bringSubviewToFront:v25];
      v26 = v6;
      v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v9 = [v8 layer];
      [v9 setHitTestsAsOpaque:1];

      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v5 insertSubview:v8 belowSubview:v25];
      v19 = MEMORY[0x1E696ACD8];
      v24 = [v8 leadingAnchor];
      v23 = [v5 leadingAnchor];
      v22 = [v24 constraintEqualToAnchor:v23];
      v27[0] = v22;
      v21 = [v8 trailingAnchor];
      v20 = [v5 trailingAnchor];
      v18 = [v21 constraintEqualToAnchor:v20];
      v27[1] = v18;
      v10 = [v8 topAnchor];
      v11 = [v5 topAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v27[2] = v12;
      v13 = [v8 bottomAnchor];
      v14 = [v5 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      v27[3] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
      [v19 activateConstraints:v16];

      [(PREditorRootViewController *)self setTouchBlockingView:v8];
      v6 = v26;
    }
  }
}

- (void)setDepthEffectDisabled:(BOOL)a3
{
  if (self->_depthEffectDisabled != a3)
  {
    self->_depthEffectDisabled = a3;
    [(PREditorRootViewController *)self depthEffectEnablementDidChange];
  }
}

- (void)depthEffectEnablementDidChange
{
  if (![(PREditorRootViewController *)self isViewLoaded])
  {
    return;
  }

  v10 = [(PREditorRootViewController *)self editor];
  v3 = [(PREditorRootViewController *)self reticleVibrancyView];
  v4 = [(PREditorRootViewController *)self isDepthEffectDisabled];
  if ([v10 areViewsSharedBetweenLooks])
  {
    v5 = [(PREditorRootViewController *)self scrollView];
    v6 = [(PREditorRootViewController *)self portaledFloatingContainerView];
    if (!v4)
    {
      v7 = [(PREditorRootViewController *)self sidebarReticleVibrancyView];
      if (v7)
      {
        v8 = [(PREditorRootViewController *)self sidebarReticleVibrancyView];
        [v5 insertSubview:v6 belowSubview:v8];
      }

      else
      {
        v8 = [(PREditorRootViewController *)self timeContainerView];
        [v5 insertSubview:v6 aboveSubview:v8];
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = [(PREditorRootViewController *)self view];
    v6 = [(PREditorRootViewController *)self floatingContainerViewsZStackView];
    if (!v4)
    {
      v9 = [(PREditorRootViewController *)self timeContainerScrollView];
      [v5 insertSubview:v6 aboveSubview:v9];

      goto LABEL_12;
    }
  }

  [v5 insertSubview:v6 belowSubview:v3];
LABEL_12:
}

- (id)imageForDepthEffectActionTopLevelAction:(BOOL)a3
{
  if (a3)
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

- (void)setSubtitleHidden:(BOOL)a3
{
  if (self->_subtitleHidden != a3)
  {
    v4 = a3;
    self->_subtitleHidden = a3;
    v5 = [(PREditorRootViewController *)self subtitleViewController];
    [v5 pr_setSubtitleHidden:v4];
  }
}

- (void)setUsesEditingLayout:(BOOL)a3
{
  if (self->_usesEditingLayout != a3)
  {
    v10 = v3;
    v11 = v4;
    v5 = a3;
    self->_usesEditingLayout = a3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PREditorRootViewController_setUsesEditingLayout___block_invoke;
    v8[3] = &__block_descriptor_33_e55_v16__0__UIViewController_PREditorTitleViewController__8l;
    v9 = a3;
    [(PREditorRootViewController *)self enumerateTimeViewControllersUsingBlock:v8];
    v7 = [(PREditorRootViewController *)self subtitleViewController];
    [v7 setUsesEditingLayout:v5];
  }
}

- (void)setControlsHidden:(BOOL)a3
{
  v3 = a3;
  v43 = *MEMORY[0x1E69E9840];
  v5 = [(PREditorRootViewController *)self editor];
  v6 = [v5 editingIdiom];

  if ((v6 != 2 || v3) && self->_controlsHidden != v3)
  {
    self->_controlsHidden = v3;
    [(PREditorRootViewController *)self updateTopButtonAlpha];
    [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];
    if (v3)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = [(PREditorRootViewController *)self lookMenuButton];
    [v8 setAlpha:v7];

    v9 = [(PREditorRootViewController *)self lookNameLabel];
    [v9 setAlpha:v7];

    v10 = [(PREditorRootViewController *)self pageControl];
    [v10 setAlpha:v7];

    v11 = [(PREditorRootViewController *)self contentOverlayView];
    [v11 setAlpha:v7];

    v12 = [(PREditorRootViewController *)self bottomLegibilityView];
    [v12 setAlpha:v7];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = [(PREditorRootViewController *)self leadingMenuElementViews];
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
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
            objc_enumerationMutation(v13);
          }

          [*(*(&v36 + 1) + 8 * i) setAlpha:v7];
        }

        v15 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v15);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = [(PREditorRootViewController *)self trailingMenuElementViews];
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v41 count:16];
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
            objc_enumerationMutation(v18);
          }

          [*(*(&v32 + 1) + 8 * j) setAlpha:v7];
        }

        v20 = [v18 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v20);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = [(PREditorRootViewController *)self additionalControls];
    v24 = [v23 countByEnumeratingWithState:&v28 objects:v40 count:16];
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
            objc_enumerationMutation(v23);
          }

          [*(*(&v28 + 1) + 8 * k) setAlpha:v7];
        }

        v25 = [v23 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v25);
    }
  }
}

- (void)setComplicationsRowConfigured:(BOOL)a3
{
  if (self->_complicationsRowConfigured != a3)
  {
    self->_complicationsRowConfigured = a3;
    [(PREditorRootViewController *)self updateReticleViewFrames];
  }
}

- (void)setComplicationSidebarConfigured:(BOOL)a3
{
  if (self->_complicationSidebarConfigured != a3)
  {
    self->_complicationSidebarConfigured = a3;
    [(PREditorRootViewController *)self _updateComplicationSidebarEmptyViewVisibility];

    [(PREditorRootViewController *)self updateReticleViewFrames];
  }
}

- (void)setComplicationRowAtBottom:(BOOL)a3
{
  if (self->_complicationRowAtBottom != a3)
  {
    self->_complicationRowAtBottom = a3;
    [(PREditorRootViewController *)self _updateComplicationRowReticleWithOffset:1 animated:0.0];
  }
}

- (void)setFocusedComplicationElement:(int64_t)a3
{
  if (self->_focusedComplicationElement != a3)
  {
    self->_focusedComplicationElement = a3;
    [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];
  }
}

- (void)setFocusedQuickActionPosition:(int64_t)a3
{
  if (self->_focusedQuickActionPosition != a3)
  {
    self->_focusedQuickActionPosition = a3;
    [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];

    [(PREditorRootViewController *)self _setNeedsEditingElementsVisibilityUpdate];
  }
}

- (void)setTitleReticleActive:(BOOL)a3
{
  if (self->_titleReticleActive != a3)
  {
    self->_titleReticleActive = a3;
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
    v4 = [(PREditorRootViewController *)self focusedQuickActionPosition];
    v5 = [(PREditorRootViewController *)self timeContainerView];
    v7 = v5;
    v6 = 0.0;
    if (!v4)
    {
      v6 = 1.0;
    }

    [v5 setAlpha:v6];
  }
}

- (void)updateReticleVisibilityIfNeeded
{
  if (!self->_needsReticleVisibilityUpdate)
  {
    return;
  }

  self->_needsReticleVisibilityUpdate = 0;
  v4 = [(PREditorRootViewController *)self focusedComplicationElement];
  v5 = [(PREditorRootViewController *)self isTitleReticleActive];
  v6 = [(PREditorRootViewController *)self areControlsHidden];
  v7 = [(PREditorRootViewController *)self focusedQuickActionPosition];
  if (v5)
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
    if (v4)
    {
      v10 = v4 == 2;
      v9 = v4 == 3;
      v11 = 0.0;
      if (v4 == 1)
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
      if (v7)
      {
        v14 = 1;
      }

      else
      {
        v14 = v6;
      }

      v13 = 0.0;
      if ((v14 & 1) == 0 && !self->_presentingComplicationGallery)
      {
        v15 = [(PREditorRootViewController *)self presentationDismissalGestureView];

        if (!v15)
        {
          v20 = [MEMORY[0x1E69DC938] currentDevice];
          v21 = [v20 userInterfaceIdiom];

          v13 = 1.0;
          if (v21 == 1)
          {
            v22 = [(PREditorRootViewController *)self view];
            v23 = [v22 window];
            v24 = [v23 windowScene];
            v25 = [v24 interfaceOrientation];

            v10 = (v25 - 1) < 2;
            v9 = (v25 - 3) < 2;
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
  v26 = [(PREditorRootViewController *)self titleReticleView];
  v16 = [(PREditorRootViewController *)self titleResizeHandle];
  v17 = [(PREditorRootViewController *)self inlineComplicationReticleView];
  v18 = [(PREditorRootViewController *)self complicationSidebarReticleView];
  [v26 setAlpha:v12];
  [v16 setAlpha:v11];
  [v17 setAlpha:v13];
  [v18 setAlpha:v9];
  [v17 setAlpha:v13];
  v19 = [(PREditorRootViewController *)self editor];
  [v19 setShowsEditingReticles:v10];

  if (PREditingSupportsLiveBlurs())
  {
    [v26 setActive:v5];
    [v17 setActive:v4 == 1];
    [v18 setActive:v4 == 3];
  }

  [(PREditorRootViewController *)self _updateComplicationSidebarEmptyViewVisibility];
}

- (void)setContentOverlayView:(id)a3
{
  v5 = a3;
  contentOverlayView = self->_contentOverlayView;
  if (contentOverlayView != v5)
  {
    v19 = v5;
    v7 = contentOverlayView;
    v8 = [(PREditorRootViewController *)self scrollView];
    [(UIView *)v19 bounds];
    [(UIView *)v19 setFrame:?];
    objc_storeStrong(&self->_contentOverlayView, a3);
    v9 = [(PREditorRootViewController *)self areControlsHidden];
    v10 = 1.0;
    if (v9)
    {
      v10 = 0.0;
    }

    [(UIView *)v19 setAlpha:v10];
    if ([(PREditorRootViewController *)self isViewLoaded]&& v8)
    {
      v11 = [(UIView *)v7 superview];
      [(UIView *)v7 removeFromSuperview];
      contentOverlayContainerView = self->_contentOverlayContainerView;
      if (v11 == contentOverlayContainerView)
      {
        [(UIView *)contentOverlayContainerView addSubview:v19];
      }

      else
      {
        v13 = [(UIView *)contentOverlayContainerView subviews];
        v14 = [v13 firstObject];
        v15 = objc_opt_class();
        v16 = v14;
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

    v5 = v19;
  }
}

- (void)scrollToLook:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PREditorRootViewController *)self looks];
  v8 = [v7 indexOfObject:v6];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(PREditorRootViewController *)self scrollToLookAtIndex:v8 animated:v4];
  }
}

- (void)scrollToLookAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(PREditorRootViewController *)self scrollView];
  [(PREditorRootViewController *)self scrollContentOffsetForLookAtIndex:a3];
  [v7 setContentOffset:v4 animated:?];
}

- (CGPoint)scrollContentOffsetForLook:(id)a3
{
  v4 = a3;
  v5 = [(PREditorRootViewController *)self looks];
  v6 = [v5 indexOfObject:v4];

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

- (CGPoint)scrollContentOffsetForLookAtIndex:(unint64_t)a3
{
  v5 = [(PREditorRootViewController *)self scrollView];
  [v5 frame];
  Width = CGRectGetWidth(v11);
  if ([v5 effectiveUserInterfaceLayoutDirection])
  {
    v7 = [(PREditorRootViewController *)self looks];
    a3 = [v7 count] + ~a3;
  }

  v8 = 0.0;
  v9 = Width * a3;
  result.y = v8;
  result.x = v9;
  return result;
}

- (id)lookAtScrollContentOffset:(CGPoint)a3 fractionOfDistanceThroughLook:(double *)a4
{
  x = a3.x;
  v7 = [(PREditorRootViewController *)self scrollView:a3.x];
  [v7 frame];
  Width = CGRectGetWidth(v20);
  __y = 0.0;
  v9 = modf(x / Width, &__y);
  v10 = [(PREditorRootViewController *)self looks];
  v11 = [v10 count];
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

  v16 = [v10 objectAtIndex:{v15, v13}];
  if (a4)
  {
    *a4 = v9;
  }

  return v16;
}

- (unint64_t)lookIndexForContentOffset:(CGPoint)a3
{
  x = a3.x;
  v4 = [(PREditorRootViewController *)self scrollView:a3.x];
  [v4 frame];
  v5 = x / CGRectGetWidth(v8);
  v6 = vcvtms_u32_f32(v5);

  return v6;
}

- (unint64_t)lookIndexForViewIndex:(unint64_t)a3
{
  v5 = [(PREditorRootViewController *)self view];
  v6 = [v5 effectiveUserInterfaceLayoutDirection];

  if (v6)
  {
    v7 = [(PREditorRootViewController *)self looks];
    a3 = [v7 count] + ~a3;
  }

  return a3;
}

- (unint64_t)viewIndexForLookIndex:(unint64_t)a3
{
  v5 = [(PREditorRootViewController *)self view];
  v6 = [v5 effectiveUserInterfaceLayoutDirection];

  if (v6)
  {
    v7 = [(PREditorRootViewController *)self looks];
    a3 = [v7 count] + ~a3;
  }

  return a3;
}

- (CGRect)frameForPageAtViewIndex:(unint64_t)a3
{
  v4 = [(PREditorRootViewController *)self view];
  [v4 bounds];
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
  v12 = v9 * a3;
  v13 = v9;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (CGRect)frameForPageAtLookIndex:(unint64_t)a3
{
  v4 = [(PREditorRootViewController *)self viewIndexForLookIndex:a3];

  [(PREditorRootViewController *)self frameForPageAtViewIndex:v4];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)requireGestureRecognizerToFailForLooksScroll:(id)a3
{
  scrollView = self->_scrollView;
  v4 = a3;
  v5 = [(UIScrollView *)scrollView panGestureRecognizer];
  [v5 requireGestureRecognizerToFail:v4];
}

- (void)currentLookDidChange
{
  v7 = [(PREditorRootViewController *)self currentLook];
  v3 = [(PREditorRootViewController *)self looks];
  v4 = [v3 indexOfObject:v7];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    if (v4 < [(NSArray *)self->_looks count])
    {
      [(PREditorRootViewController *)self updateLookMenu];
      v6 = [(PREditorRootViewController *)self pageControl];
      [v6 setCurrentPage:v5];
    }
  }
}

- (void)pageControlCurrentPageDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 currentPage];
  v6 = [v4 interactionState];

  v7 = [(PREditorRootViewController *)self scrollView];
  [(PREditorRootViewController *)self scrollContentOffsetForLookAtIndex:v5];
  [v7 setContentOffset:v6 != 2 animated:?];
}

- (void)titleViewTapped:(id)a3
{
  v3 = [(PREditorRootViewController *)self editor];
  [v3 presentTimeStyleEditor];
}

- (CGRect)_titleViewFrame
{
  v3 = [(PREditorRootViewController *)self editorElementLayoutController];
  v4 = [(PREditorRootViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(PREditorRootViewController *)self configuredProperties];
  v14 = [v13 titleStyleConfiguration];
  v15 = [(PREditorRootViewController *)self editor];
  v16 = [v15 titleString];
  v17 = [v14 effectiveTitleLayoutForText:v16];

  v18 = [v3 frameAttributesForElements:1 variant:2 titleLayout:v17 withBoundingRect:{v6, v8, v10, v12}];
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

- (void)_titleViewResizeGestureDidUpdate:(id)a3
{
  v17 = a3;
  v4 = self->_titleResizeHandle;
  v5 = [v17 state];
  if ((v5 - 3) >= 3)
  {
    if (v5 == 2)
    {
      v13 = [(PREditorRootViewController *)self view];
      [v17 locationInView:v13];
      v15 = v14;

      [(PREditorRootViewController *)self _titleViewFrame];
      self->_currentResizeTimeHeight = v15 - CGRectGetMinY(v19);
      v16 = [(PREditorRootViewController *)self editor];
      [v16 setAdaptiveTimeHeightUserConfigured:1];

      [(PREditorRootViewController *)self _updateDesiredTimeStretchInEditor];
    }

    else if (v5 == 1)
    {
      [(SBHIconResizeHandle *)v4 setHighlighted:1];
      [(SBHIconResizeHandle *)v4 setResizing:1];
      v7 = [(PREditorRootViewController *)self titleReticleView];
      [v7 setActive:1];

      v8 = [(PREditorRootViewController *)self view];
      [v17 locationInView:v8];
      v10 = v9;

      self->_currentResizeInitialTouchLocation = v10;
      self->_timeResizeGestureActive = 1;
      v11 = [(PREditorRootViewController *)self editor];
      v12 = [v11 disableSwitchingLooksForReason:@"timeResizing"];
      [(PREditorRootViewController *)self setTimeResizeLookSwitchingDisableAssertion:v12];
    }
  }

  else
  {
    [(SBHIconResizeHandle *)v4 setHighlighted:0];
    [(SBHIconResizeHandle *)v4 setResizing:0];
    v6 = [(PREditorRootViewController *)self titleReticleView];
    [v6 setActive:0];

    self->_timeResizeGestureActive = 0;
    [(PREditorRootViewController *)self setTimeResizeLookSwitchingDisableAssertion:0];
    [(PREditorRootViewController *)self _updateDesiredTimeStretchInEditor];
    [(PREditorRootViewController *)self updateReticleViewFrames];
  }
}

- (double)_minimumAdaptiveTimeTextHeight
{
  v3 = [(PREditorRootViewController *)self currentLook];
  v4 = [(PREditorRootViewController *)self timeViewControllerForLook:v3];

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
  v3 = [(PREditorRootViewController *)self currentLook];
  v4 = [(PREditorRootViewController *)self timeViewControllerForLook:v3];

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

  v7 = [(PREditorRootViewController *)self editor];
  v8 = [v7 preferences];
  [v8 maximumAdaptiveTimeHeight];
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
  v3 = [(PREditorRootViewController *)self editor];
  [v3 setIgnoringSalientContentForTimeHeight:0];

  v4 = [(PREditorRootViewController *)self interfaceOrientation];
  currentResizeTimeHeight = self->_currentResizeTimeHeight;

  [(PREditorRootViewController *)self _updateForDesiredTimeMaxHeight:v4 orientation:currentResizeTimeHeight];
}

- (void)_updateForDesiredTimeMaxHeight:(double)a3 orientation:(int64_t)a4
{
  v22 = [(PREditorRootViewController *)self editor];
  v7 = [v22 preferences];
  v8 = [v7 adaptiveTimeMode];

  if (v8 < 3 || v8 == 4)
  {
    [(PREditorRootViewController *)self _maximumAdaptiveTimeTextHeight];
    v11 = v10;
    [(PREditorRootViewController *)self _minimumAdaptiveTimeTextHeight];
    v13 = v12;
    [(PREditorRootViewController *)self _titleViewFrame];
    MinY = CGRectGetMinY(v24);
    v15 = [(PREditorRootViewController *)self view];
    [v15 frame];
    v17 = v16;

    if (v11 <= v13)
    {
      +[PRPosterTitleStyleConfiguration defaultPreferredTimeMaxY];
      self->_timeResizeGestureHeight = v21;
      +[PRPosterTitleStyleConfiguration defaultPreferredTimeMaxY];
    }

    else
    {
      if (v11 <= a3)
      {
        v18 = v11;
      }

      else
      {
        v18 = a3;
      }

      if (v13 >= v18)
      {
        v18 = v13;
      }

      v19 = (MinY + v18) / v17;
      self->_timeResizeGestureHeight = a3;
    }

    [v22 _updateForPreferredTimeMaxY:a4 orientation:v19];
  }

  else
  {
    v20 = v22;
    if (v8 != 3)
    {
      goto LABEL_18;
    }

    [v22 _updateForPreferredTimeMaxY:30 orientations:0.0];
  }

  v20 = v22;
LABEL_18:
}

- (void)updateForDesiredTimeMaxY:(double)a3 orientation:(int64_t)a4
{
  [(PREditorRootViewController *)self _titleViewFrame];
  v7 = a3 - CGRectGetMinY(v9);

  [(PREditorRootViewController *)self _updateForDesiredTimeMaxHeight:a4 orientation:v7];
}

- (void)setTimeResizeLookSwitchingDisableAssertion:(id)a3
{
  v4 = a3;
  timeResizeLookSwitchingDisableAssertion = self->_timeResizeLookSwitchingDisableAssertion;
  if (timeResizeLookSwitchingDisableAssertion != v4)
  {
    v9 = v4;
    v6 = v4;
    v7 = self->_timeResizeLookSwitchingDisableAssertion;
    self->_timeResizeLookSwitchingDisableAssertion = v6;
    v8 = timeResizeLookSwitchingDisableAssertion;

    [(PRInvalidatable *)v8 invalidate];
    v4 = v9;
  }
}

- (void)enumerateTimeViewControllersUsingBlock:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PREditorRootViewController *)self loadViewIfNeeded];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(PREditorRootViewController *)self looks];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [(PREditorRootViewController *)self timeViewControllerForLook:*(*(&v11 + 1) + 8 * v9)];
        if (v10)
        {
          v4[2](v4, v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)currentLook
{
  v2 = [(PREditorRootViewController *)self editor];
  v3 = [v2 currentLook];

  return v3;
}

- (id)configuredProperties
{
  v2 = [(PREditorRootViewController *)self editor];
  v3 = [v2 configuredProperties];

  return v3;
}

- (id)defaultTitleStyleConfigurationForLook:(id)a3
{
  v4 = a3;
  v5 = [(PREditorRootViewController *)self editor];
  v6 = [v5 defaultTitleStyleConfigurationForLook:v4];

  return v6;
}

- (id)effectiveTitleStyleConfigurationForLook:(id)a3
{
  v4 = a3;
  v5 = [(PREditorRootViewController *)self editor];
  v6 = [v5 effectiveTitleStyleConfigurationForLook:v4];

  return v6;
}

- (id)extensionBundleURL
{
  v2 = [(PREditorRootViewController *)self editor];
  v3 = [v2 extensionBundleURL];

  return v3;
}

- (void)didTransitionToLook:(id)a3 method:(int64_t)a4 progress:(double)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = PRLogEditing();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 identifier];
    *buf = 138543874;
    v28 = v10;
    v29 = 2048;
    v30 = a5;
    v31 = 1024;
    LODWORD(v32) = a4 == 1;
    _os_log_impl(&dword_1A8AA7000, v9, OS_LOG_TYPE_DEFAULT, "did transition to look '%{public}@', progress: %f, discrete: %{BOOL}u", buf, 0x1Cu);
  }

  v11 = [(PREditorRootViewController *)self lookTransition];
  v12 = [(PREditorRootViewController *)self currentLook];
  if (([v11 matchesCurrentLook:v12 destinationLook:v8] & 1) == 0)
  {
    v13 = [v11 currentLook];
    v14 = [v11 destinationLook];
    v15 = PRLogEditing();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [v13 identifier];
      v16 = v26 = v13;
      [v14 identifier];
      v17 = v25 = v14;
      v18 = [v12 identifier];
      v19 = [v8 identifier];
      *buf = 138544130;
      v28 = v16;
      v29 = 2114;
      v30 = *&v17;
      v31 = 2114;
      v32 = v18;
      v33 = 2114;
      v34 = v19;
      _os_log_impl(&dword_1A8AA7000, v15, OS_LOG_TYPE_DEFAULT, "Current coordinated transition ('%{public}@' -> '%{public}@') does not match '%{public}@' -> '%{public}@', invalidating", buf, 0x2Au);

      v14 = v25;
      v13 = v26;
    }

    v20 = [v11 destinationLook];
    if ([v8 isEqual:v20])
    {
    }

    else
    {
      v21 = [v11 destinationLook];
      v22 = [v12 isEqual:v21];

      if (!v22)
      {
        [v11 cancelInteractiveTransition];
        goto LABEL_13;
      }
    }

    [v11 finishInteractiveTransition];
LABEL_13:

LABEL_14:
    v11 = [(PREditorRootViewController *)self beginTransitionToLook:v8 method:a4];
    goto LABEL_15;
  }

  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_15:
  [v11 updateInteractiveTransition:a5];
  v23 = [(PREditorRootViewController *)self editor];
  v24 = [v23 delegate];
  if (a5 >= 0.0 && a5 <= 1.0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v24 editor:v23 didTransitionToLook:v8 progress:a5];
  }
}

- (id)beginTransitionToLook:(id)a3 method:(int64_t)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PRLogEditing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 identifier];
    *buf = 138543362;
    v69 = v7;
    _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Begin coordinated transition to look '%{public}@'", buf, 0xCu);
  }

  v8 = [(PREditorRootViewController *)self currentLook];
  v9 = [[PREditorLookTransition alloc] initWithCurrentLook:v8 destinationLook:v5];
  v10 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:v8];
  v11 = [(PREditorRootViewController *)self effectiveTitleStyleConfigurationForLook:v5];
  v12 = [(PREditorRootViewController *)self extensionBundleURL];
  v61 = v10;
  v13 = [v10 vibrancyConfigurationWithExtensionBundleURL:v12];
  v62 = [v11 vibrancyConfigurationWithExtensionBundleURL:v12];
  v55 = BSEqualObjects();
  [(PREditorTitleViewControllerCoordinator *)self->_titleViewControllerCoordinator prepareInteractiveTransitionForStartingLook:v8];
  v52 = [(PREditorTitleViewControllerCoordinator *)self->_titleViewControllerCoordinator cachingVibrancyProviderForLook:v8];
  v14 = [(PREditorRootViewController *)self timeViewControllerForLook:v8];
  v15 = [(PREditorRootViewController *)self timeViewControllerForLook:v5];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __59__PREditorRootViewController_beginTransitionToLook_method___block_invoke;
  v63[3] = &unk_1E7844218;
  v16 = v14;
  v64 = v16;
  v58 = v15;
  v65 = v58;
  v66 = self;
  v17 = v9;
  v67 = v17;
  v18 = MEMORY[0x1AC574C60](v63);
  v54 = v12;
  v57 = v18;
  if (a4 == 1)
  {
    (*(v18 + 16))();
    v19 = v11;
LABEL_9:
    v20 = v13;
    goto LABEL_10;
  }

  v19 = v11;
  if (![(PREditorRootViewController *)self shouldFixTitleBetweenTransitionFromTitleStyleConfiguration:v61 toTitleStyleConfiguration:v11 extensionBundleURL:v12])
  {
    v24 = [[PREditorSlidingTitleTransition alloc] initWithSourceTitleViewController:v16 destinationTitleViewController:v58];
    [(PREditorLookTransition *)v17 setTitleScrollingTransition:v24];

    goto LABEL_9;
  }

  v57[2]();
  v20 = v13;
  if ((v55 & 1) == 0)
  {
    v21 = [v16 pr_baseFont];
    [(PREditorTitleViewControllerCoordinator *)self->_titleViewControllerCoordinator beginInteractiveTransitionForStartingLook:v8 toBaseFont:v21 vibrancyConfiguration:v62];
    v23 = v22 = v16;
    [(PREditorLookTransition *)v17 setTitleStyleTransition:v23];

    v16 = v22;
  }

LABEL_10:
  v25 = [v8 displayName];
  v26 = [v5 displayName];
  v27 = [(PREditorRootViewController *)self lookNameLabel];
  v53 = v25;
  [v27 setText:v25];
  if (v26)
  {
    [v27 beginInteractiveTransitionToText:v26];
    v29 = v28 = v27;
    [(PREditorLookTransition *)v17 setLookNameTransition:v29];

    v27 = v28;
  }

  v51 = v26;
  if (a4 == 1)
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
    v60 = v27;
    v33 = [v61 titleContentStyle];
    v34 = [v33 type];

    if (v34 == 1)
    {
      v35 = [objc_alloc(MEMORY[0x1E698E810]) initWithEffectType:2 backgroundType:0 color:0];

      v20 = v35;
    }

    v36 = [v19 titleContentStyle];
    v37 = [v36 type];

    v49 = v8;
    v50 = v5;
    v48 = v16;
    if (v37 == 1)
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
    v39 = [(PREditorRootViewController *)self subtitleViewController];
    v40 = [(PREditorRootViewController *)self extensionBundleURL];
    v41 = [(PREditorRootViewController *)self editor];
    v42 = [v41 posterRole];

    v43 = [v19 effectiveTimeFontWithExtensionBundleURL:v40 forRole:v42];
    [v39 beginInteractiveTransitionToBaseFont:v43 vibrancyConfiguration:v38 cachingVibrancyTransitionProvider:v52];
    v45 = v44 = v20;
    [(PREditorLookTransition *)v17 setSubtitleStyleTransition:v45];

    v20 = v44;
    v8 = v49;
    v5 = v50;
    v31 = v54;
    v16 = v48;
    v27 = v60;
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

- (void)didFinishTransitionToLook:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRLogEditing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v20 = 138543362;
    v21 = v6;
    _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "Did finish transition to look '%{public}@'", &v20, 0xCu);
  }

  v7 = [(PREditorRootViewController *)self lookTransition];
  v8 = [v7 destinationLook];
  v9 = [v4 isEqual:v8];
  if (v7)
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

      [v7 finishInteractiveTransition];
    }

    else
    {
      if (v11)
      {
        v12 = [v8 identifier];
        v20 = 138543362;
        v21 = v12;
        _os_log_impl(&dword_1A8AA7000, v10, OS_LOG_TYPE_DEFAULT, "Canceling transition object (object look: '%{public}@')", &v20, 0xCu);
      }

      [v7 cancelInteractiveTransition];
    }

    [(PREditorRootViewController *)self setLookTransition:0];
  }

  [(PREditorRootViewController *)self _updateOverlayHostViewControllerLuminanceFromCurrentLook];
  v13 = [(PREditorRootViewController *)self editor];
  [v13 didFinishTransitionToLook:v4];
  v14 = [v13 delegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
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
      v17 = [v8 identifier];
      v20 = 138543618;
      v21 = v17;
      v22 = 2048;
      v23 = v15;
      _os_log_impl(&dword_1A8AA7000, v16, OS_LOG_TYPE_DEFAULT, "Sending final didTransitionToLook delegate method with look '%{public}@', progress: %f", &v20, 0x16u);
    }

    [v14 editor:v13 didTransitionToLook:v8 progress:v15];
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = PRLogEditing();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v8 identifier];
      v20 = 138543362;
      v21 = v19;
      _os_log_impl(&dword_1A8AA7000, v18, OS_LOG_TYPE_DEFAULT, "Sending didFinishTransitionToLook delegate method with look '%{public}@'", &v20, 0xCu);
    }

    [v14 editor:v13 didFinishTransitionToLook:v4];
  }

  [v13 updateInjectedEditingClientSettings];
}

- (BOOL)shouldFixTitleBetweenTransitionFromTitleStyleConfiguration:(id)a3 toTitleStyleConfiguration:(id)a4 extensionBundleURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PREditorRootViewController *)self editor];
  v12 = [v11 posterRole];

  v13 = [v10 effectiveTimeFontWithExtensionBundleURL:v8 forRole:v12];

  v14 = [v9 effectiveTimeFontWithExtensionBundleURL:v8 forRole:v12];

  LOBYTE(v9) = [v13 isEqual:v14];
  return v9;
}

- (void)forciblyFinishLookTransition
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PREditorRootViewController *)self lookTransition];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 destinationLook];
    v6 = PRLogEditing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 identifier];
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Forcibly ending transition to look '%{public}@'", &v12, 0xCu);
    }

    v8 = [(PREditorRootViewController *)self currentLook];
    if (([v8 isEqual:v5] & 1) == 0)
    {
      v9 = PRLogEditing();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v5 identifier];
        v12 = 138543362;
        v13 = v10;
        _os_log_impl(&dword_1A8AA7000, v9, OS_LOG_TYPE_DEFAULT, "Changing current look while forcibly ending transition to look '%{public}@'", &v12, 0xCu);
      }

      v11 = [(PREditorRootViewController *)self editor];
      [v11 setCurrentLook:v5];
    }

    [(PREditorRootViewController *)self didFinishTransitionToLook:v5];
  }
}

- (id)makeComplicationsHostingScene
{
  v3 = objc_alloc_init(PREditorComplicationSceneSpecification);
  v4 = [(PREditorRootViewController *)self makeComplicationHostingSceneWithSpecification:v3];

  return v4;
}

- (id)makeComplicationHostingSceneWithSpecification:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E699F7F8] pui_posterKitComplicationsWorkspace];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PREditorRootViewController_makeComplicationHostingSceneWithSpecification___block_invoke;
  v8[3] = &unk_1E7844240;
  v9 = v3;
  v5 = v3;
  v6 = [v4 pui_createScene:v8];

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

  v3 = [(PREditorRootViewController *)self editor];
  v4 = [v3 posterRole];
  if ([v4 isEqualToString:@"PRPosterRoleLockScreen"])
  {
    v5 = [(PREditorRootViewController *)self editor];
    v6 = [v5 variant] == 0;
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

- (id)makeQuickActionsHostingSceneWithSpecification:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E699F7F8] pui_posterKitComplicationsWorkspace];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PREditorRootViewController_makeQuickActionsHostingSceneWithSpecification___block_invoke;
  v8[3] = &unk_1E7844240;
  v9 = v3;
  v5 = v3;
  v6 = [v4 pui_createScene:v8];

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
  v4 = [(PREditorRootViewController *)self editor];
  v5 = [v4 _hostProcessHandle];

  v6 = [v5 identity];
  if (!v6)
  {
    v7 = PRLogEditing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PREditorRootViewController _makeOverlayHostingScene];
    }
  }

  v8 = [MEMORY[0x1E699F7F8] pui_posterKitExternallyHostedContentWorkspace];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__PREditorRootViewController__makeOverlayHostingScene__block_invoke;
  v13[3] = &unk_1E7844268;
  v14 = v3;
  v15 = v6;
  v9 = v6;
  v10 = v3;
  v11 = [v8 pui_createScene:v13];

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

- (void)setPresentingModalViewController:(BOOL)a3
{
  v3 = a3;
  v24[4] = *MEMORY[0x1E69E9840];
  v5 = [(PREditorRootViewController *)self presentationDismissalGestureView];
  v6 = v5;
  if (!v3 || v5)
  {
    if (!v3 && v5)
    {
      [v5 removeFromSuperview];
      [(PREditorRootViewController *)self setPresentationDismissalGestureView:0];
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v7 = [v6 layer];
    [v7 setHitTestsAsOpaque:1];

    v23 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_modalPresentationDismissGestureDidFire_];
    [v6 addGestureRecognizer:v23];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditorRootViewController *)self setPresentationDismissalGestureView:v6];
    v8 = [(PREditorRootViewController *)self view];
    [v8 addSubview:v6];
    v17 = MEMORY[0x1E696ACD8];
    v22 = [v6 leadingAnchor];
    v21 = [v8 leadingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v24[0] = v20;
    v19 = [v6 trailingAnchor];
    v18 = [v8 trailingAnchor];
    v16 = [v19 constraintEqualToAnchor:v18];
    v24[1] = v16;
    v9 = [v6 topAnchor];
    v10 = [v8 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v24[2] = v11;
    v12 = [v6 bottomAnchor];
    v13 = [v8 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v24[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v17 activateConstraints:v15];
  }

  [(PREditorRootViewController *)self setNeedsReticleVisibilityUpdate];
}

- (void)modalPresentationDismissGestureDidFire:(id)a3
{
  v3 = [(PREditorRootViewController *)self editor];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)setPresentingComplicationGallery:(BOOL)a3
{
  if (self->_presentingComplicationGallery != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_presentingComplicationGallery = a3;
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
  v3 = [(PREditorRootViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PREditorRootViewController *)self editorElementLayoutController];
  v13 = [(PREditorRootViewController *)self editor];
  v14 = [v13 areComplicationsAllowed];

  v15 = [(PREditorRootViewController *)self interfaceOrientation]- 1;
  if (![(PREditorRootViewController *)self _shouldShowQuickActionEditing]&& v14)
  {
    if (self->_complicationRowAtBottom && v15 <= 1)
    {
      [v12 frameForElements:32 variant:3 withBoundingRect:{v5, v7, v9, v11}];
LABEL_11:
      v21 = v11 - CGRectGetMinY(*&v17);
      goto LABEL_12;
    }

LABEL_10:
    [(PREditingStandaloneLabelView *)self->_lookNameLabel frame];
    goto LABEL_11;
  }

  if (!v14)
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
  [v12 frameForElements:2 variant:3 withBoundingRect:{v22, v7, v9, v11, *&v54}];
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
  if (!v14)
  {
    goto LABEL_21;
  }

  v37 = v24;
  if (!self->_complicationRowAtBottom)
  {
    [v12 frameForElements:8 variant:3 withBoundingRect:{v55, v23, v24, v25}];
    v35 = CGRectGetMaxY(v60);
  }

  v38 = [MEMORY[0x1E69DC938] currentDevice];
  v39 = [v38 userInterfaceIdiom];

  if ((v39 & 0xFFFFFFFFFFFFFFFBLL) == 1 && v15 >= 2)
  {
    [v12 frameForElements:16 variant:3 withBoundingRect:{v55, v23, v24, v25}];
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
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)scrollViewDidScroll:(id)a3 withContext:(id *)a4
{
  v93 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![(PREditorRootViewController *)self ignoresScrolling])
  {
    var0 = a4->var0;
    [v6 contentOffset];
    v9 = v8;
    x = a4->var2.x;
    [v6 frame];
    Width = CGRectGetWidth(v94);
    v12 = [(PREditorRootViewController *)self looks];
    v84 = [v12 count];
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
    v20 = [(PREditorRootViewController *)self editor];
    v21 = [(PREditorRootViewController *)self currentLook];
    v22 = [v19 isEqual:v21];

    if ((v22 & 1) == 0)
    {
      [v20 setCurrentLook:v19];
    }

    v23 = [(PREditorRootViewController *)self contentOverlayContainerView];
    [v23 frame];
    v85 = v23;
    [v23 setFrame:{v9, 0.0}];
    v24 = [(PREditorRootViewController *)self editor];
    v25 = [v24 _editorDynamicRotationIsActive];

    if ((v25 & 1) == 0)
    {
      v82 = var0;
      v26 = v20;
      v27 = [v85 subviews];
      v28 = [v27 firstObject];
      v29 = objc_opt_class();
      v30 = v28;
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

      v20 = v26;
      var0 = v82;
    }

    if (v13)
    {
      v33 = [v12 lastObject];
      v34 = [v19 isEqual:v33];
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
    [(PREditorRootViewController *)self didTransitionToLook:v86 method:a4->var0 progress:v36];
    if ([v20 areViewsSharedBetweenLooks])
    {
      [(PREditorRootViewController *)self _updateReticleViewFramesWithOffset:v9];
    }

    else
    {
      v78 = v20;
      v79 = v19;
      v81 = v12;
      v39 = [(PREditorRootViewController *)self timeContainerScrollView];
      [v39 setContentOffset:{v9, 0.0}];

      [v6 bounds];
      v41 = v40;
      v83 = v6;
      [v6 bounds];
      v43 = v42;
      v77 = [(PREditorRootViewController *)self backgroundForegroundContainerViewsZStackView];
      v44 = [v77 subviews];
      v45 = [v44 reverseObjectEnumerator];
      v46 = [v45 allObjects];

      v80 = self;
      v76 = [(PREditorRootViewController *)self floatingContainerViewsZStackView];
      v47 = [v76 subviews];
      v48 = [v47 reverseObjectEnumerator];
      v49 = [v48 allObjects];

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v50 = v46;
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

            v61 = [v49 objectAtIndex:{objc_msgSend(v50, "indexOfObject:", v56, v59)}];
            [v61 setFrame:{0.0, 0.0, v60, v43}];
            [v56 setFrame:{0.0, 0.0, v60, v43}];
            IsZero = BSFloatIsZero();
            [v56 setHidden:IsZero];
            [v61 setHidden:IsZero];
            v63 = [v56 layer];
            v64 = [v61 layer];
            if ((IsZero & 1) != 0 || v54 >= 0.0 || v58 > v41)
            {
              [v63 setMask:0];
              [v64 setMask:0];
            }

            else
            {
              v65 = [MEMORY[0x1E69794A0] layer];
              v66 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v58 cornerRadius:{0.0, v41 - v58, v43, 0.0}];
              [v65 setPath:{objc_msgSend(v66, "CGPath")}];
              [v63 setMask:v65];
              [v64 setMask:v65];
            }

            v54 = v54 - v41;
          }

          v52 = [v50 countByEnumeratingWithState:&v87 objects:v92 count:16];
        }

        while (v52);
      }

      v6 = v83;
      v67 = [v83 effectiveUserInterfaceLayoutDirection];
      if (v9 >= x)
      {
        v68 = v79;
      }

      else
      {
        v68 = v86;
      }

      v12 = v81;
      v69 = [v81 indexOfObject:v68];
      if (v67)
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

      v72 = [v83 traitCollection];
      [v72 displayScale];
      BSFloatRoundForScale();
      v74 = v73;

      v75 = [(PREditorRootViewController *)v80 looksDividerView];
      [v75 setFrame:{v70 - v74, 0.0, v71, v43}];

      v19 = v79;
      v38 = v86;

      v20 = v78;
    }
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v15 = a3;
  if (!-[PREditorRootViewController ignoresScrolling](self, "ignoresScrolling") && ([v15 isPagingEnabled] & 1) == 0)
  {
    [v15 frame];
    Width = CGRectGetWidth(v18);
    [v15 contentOffset];
    v10 = v9 / Width;
    if (x > 0.1 || x >= -0.1 && modf(v10, &__y) >= 0.5)
    {
      v10 = v10 + 1.0;
    }

    a5->x = Width * floor(v10);
    v11 = [(PREditorRootViewController *)self lookAtScrollContentOffset:?];
    v12 = [(PREditorRootViewController *)self looks];
    v13 = [v12 indexOfObject:v11];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [(PREditorRootViewController *)self pageControl];
      [v14 setCurrentPage:v13];
    }
  }
}

- (void)scrollViewDidEndScrolling:(id)a3
{
  v13 = a3;
  v4 = [(PREditorRootViewController *)self ignoresScrolling];
  v5 = v13;
  if (!v4)
  {
    [v13 contentOffset];
    v7 = v6;
    v9 = v8;
    v10 = [(PREditorRootViewController *)self currentLook];
    v11 = [(PREditorRootViewController *)self lookAtScrollContentOffset:v7, v9];
    if (([v11 isEqual:v10] & 1) == 0)
    {
      v12 = [(PREditorRootViewController *)self editor];
      [v12 setCurrentLook:v11];
    }

    [(PREditorRootViewController *)self didFinishTransitionToLook:v11];

    v5 = v13;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)dateProvider:(id)a3 didUpdateDate:(id)a4
{
  v5 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PREditorRootViewController_dateProvider_didUpdateDate___block_invoke;
  v12[3] = &unk_1E7844290;
  v6 = v5;
  v13 = v6;
  [(PREditorRootViewController *)self enumerateTimeViewControllersUsingBlock:v12];
  v7 = [(PREditorRootViewController *)self subtitleViewController];
  [v7 setDisplayDate:v6];

  v8 = [(PREditorRootViewController *)self currentLook];
  if (v8)
  {
    v9 = [(PREditorRootViewController *)self timeViewControllerForLook:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 isFourDigitTime];
      if (self->_fourDigitTime != v10)
      {
        v11 = v10;
        [(PREditorRootViewController *)self setFourDigitTime:v10];
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
  v3 = [(PREditorRootViewController *)self editor];
  [v3 _windowSafeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PREditorRootViewController *)self lookNameLabel];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(PREditorRootViewController *)self view];
  [v21 bounds];
  v40 = v23;
  v41 = v22;
  rect1 = v24;
  v42 = v25;

  if (v12)
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

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  v4 = [(PREditorRootViewController *)self lookTransition];
  v5 = [v6 appendObject:v4 withName:@"lookTransition" skipIfNil:1];
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