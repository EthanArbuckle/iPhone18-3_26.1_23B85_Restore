@interface _UIKeyShortcutHUDViewController
- (BOOL)_canChangeFirstResponder:(id)a3 toResponder:(id)a4;
- (BOOL)_disableAutomaticKeyboardUI;
- (BOOL)hasText;
- (BOOL)menuViewController:(id)a3 shouldPersistSelectionForShortcut:(id)a4;
- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (BOOL)passthroughScrollInteractionDidRecognize:(id)a3;
- (BOOL)shouldDismissHUDForModifierKeyTap;
- (UIKeyCommand)showShortcutsKeyCommand;
- (_UIKeyShortcutHUDViewController)init;
- (_UIKeyShortcutHUDViewControllerDelegate)delegate;
- (_UIKeyShortcutHUDWindow)hudWindow;
- (id)_defaultHUDAppearanceAnimatorForHidden:(BOOL)a3;
- (id)_defaultSearchTransitionAnimator;
- (void)_focusTopSearchResultWithDelay:(BOOL)a3;
- (void)_hudWillBecomeHidden:(BOOL)a3;
- (void)_setDisplayedMenu:(id)a3 animated:(BOOL)a4;
- (void)_setMenuHeight:(double)a3;
- (void)_setSearching:(BOOL)a3 animated:(BOOL)a4 initialSearchText:(id)a5;
- (void)_setupCollectionViewManagement;
- (void)_setupHUDKeyCommands;
- (void)_setupInitialViewState;
- (void)_setupLayout;
- (void)_setupMetrics;
- (void)_setupSubviews;
- (void)_stopInFlightAnimationsForAnimator:(id)a3 endPosition:(int64_t)a4;
- (void)_updateDisplayedMenuForCurrentHeldModifierFlagsAnimated:(BOOL)a3;
- (void)handleEscapeKeyCommand:(id)a3;
- (void)handleModelKeyCommand:(id)a3;
- (void)handleShowShortcutsKeyCommand:(id)a3;
- (void)insertText:(id)a3;
- (void)menuViewController:(id)a3 didSelectShortcut:(id)a4;
- (void)setHeldModifierFlags:(int64_t)a3;
- (void)setHidden:(BOOL)a3 completionHandler:(id)a4;
- (void)setupPassthroughScrollInteraction;
- (void)toolbarViewController:(id)a3 didUpdateSearchText:(id)a4;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _UIKeyShortcutHUDViewController

- (_UIKeyShortcutHUDViewController)init
{
  v3.receiver = self;
  v3.super_class = _UIKeyShortcutHUDViewController;
  result = [(UIViewController *)&v3 init];
  if (result)
  {
    result->_hidden = 1;
  }

  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _UIKeyShortcutHUDViewController;
  [(UIViewController *)&v5 viewDidLoad];
  [(_UIKeyShortcutHUDViewController *)self _setupMetrics];
  [(_UIKeyShortcutHUDViewController *)self _setupSubviews];
  [(_UIKeyShortcutHUDViewController *)self _setupLayout];
  [(_UIKeyShortcutHUDViewController *)self _setupInitialDisplayedMenu];
  [(_UIKeyShortcutHUDViewController *)self _setupCollectionViewManagement];
  [(_UIKeyShortcutHUDViewController *)self _setupInitialViewState];
  [(_UIKeyShortcutHUDViewController *)self _setupHUDKeyCommands];
  hudContainerView = self->_hudContainerView;
  v4[0] = _UIKeyShortcutHUDAnimationShrunkTransform;
  v4[1] = unk_18A679F90;
  v4[2] = xmmword_18A679FA0;
  [(UIView *)hudContainerView setTransform:v4];
  [(UIView *)self->_hudContainerView setAlpha:0.0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UIKeyShortcutHUDViewController;
  [(UIViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86___UIKeyShortcutHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7107260;
  objc_copyWeak(v9, &location);
  v8[4] = self;
  v9[1] = *&width;
  v9[2] = *&height;
  [v7 animateAlongsideTransition:v8 completion:0];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)_setupMetrics
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(_UIKeyShortcutHUDViewController *)self metricsProvider];
  WeakRetained = objc_loadWeakRetained(&self->_hudWindow);
  v5 = [v3 metricsForWindow:WeakRetained];
  metrics = self->_metrics;
  self->_metrics = v5;

  [UIKeyShortcutHUDMetrics setCurrentMetrics:self->_metrics];
  v7 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_metrics;
    v19 = 138543362;
    v20 = v8;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "HUD metrics: %{public}@", &v19, 0xCu);
  }

  v9 = objc_loadWeakRetained(&self->_hudWindow);
  v10 = [v9 traitCollection];
  [(UIKeyShortcutHUDMetrics *)self->_metrics setTraitCollection:v10];

  v11 = [(_UIKeyShortcutHUDConfiguration *)self->_configuration clientTraits];
  [(UIKeyShortcutHUDMetrics *)self->_metrics setClientTraits:v11];

  v12 = objc_loadWeakRetained(&self->_hudWindow);
  v13 = [v12 windowScene];
  v14 = [v13 _coordinateSpace];
  [v14 bounds];
  [(UIKeyShortcutHUDMetrics *)self->_metrics setAvailableVerticalSpace:CGRectGetHeight(v22)];

  [(UIKeyShortcutHUDMetrics *)self->_metrics computeOneTimeMetrics];
  v15 = objc_opt_new();
  [v15 setHidden:1];
  v16 = [(UIViewController *)self view];
  [v16 addSubview:v15];

  [(UIKeyShortcutHUDMetrics *)self->_metrics setSelfSizingPlayground:v15];
  v17 = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
  v18 = [v17 menu];
  [(UIKeyShortcutHUDMetrics *)self->_metrics setBaseMenu:v18];
}

- (void)_setupSubviews
{
  v3 = objc_opt_new();
  hudContainerView = self->_hudContainerView;
  self->_hudContainerView = v3;

  [(UIView *)self->_hudContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIKeyShortcutHUDMetrics *)self->_metrics platterShadowOpacity];
  v6 = v5;
  v7 = [(UIView *)self->_hudContainerView layer];
  *&v8 = v6;
  [v7 setShadowOpacity:v8];

  [(UIKeyShortcutHUDMetrics *)self->_metrics platterShadowRadius];
  v10 = v9;
  v11 = [(UIView *)self->_hudContainerView layer];
  [v11 setShadowRadius:v10];

  v12 = *MEMORY[0x1E695F060];
  v13 = *(MEMORY[0x1E695F060] + 8);
  v14 = [(UIView *)self->_hudContainerView layer];
  [v14 setShadowOffset:{v12, v13}];

  v15 = [(UIViewController *)self view];
  [v15 addSubview:self->_hudContainerView];

  v16 = objc_opt_new();
  menuVC = self->_menuVC;
  self->_menuVC = v16;

  [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC setMetrics:self->_metrics];
  [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC setDelegate:self];
  v18 = [(UIViewController *)self->_menuVC view];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = self->_hudContainerView;
  v20 = [(UIViewController *)self->_menuVC view];
  [(UIView *)v19 addSubview:v20];

  [(UIViewController *)self addChildViewController:self->_menuVC];
  [(UIViewController *)self->_menuVC didMoveToParentViewController:self];
  v21 = objc_opt_new();
  toolbarVC = self->_toolbarVC;
  self->_toolbarVC = v21;

  v23 = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
  v24 = [v23 menu];
  [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC setMenu:v24];

  [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC setMetrics:self->_metrics];
  [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC setDelegate:self];
  v25 = [(UIViewController *)self->_toolbarVC view];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = self->_hudContainerView;
  v27 = [(UIViewController *)self->_toolbarVC view];
  [(UIView *)v26 addSubview:v27];

  [(UIViewController *)self addChildViewController:self->_toolbarVC];
  v28 = self->_toolbarVC;

  [(UIViewController *)v28 didMoveToParentViewController:self];
}

- (void)_setupLayout
{
  v91[5] = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self->_hudContainerView topAnchor];
  v4 = [(UIViewController *)self view];
  v5 = [v4 topAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics minimumScreenEdgeDistance];
  v6 = [v3 constraintGreaterThanOrEqualToAnchor:v5 constant:?];
  hudContainerTopEdgeConstraint = self->_hudContainerTopEdgeConstraint;
  self->_hudContainerTopEdgeConstraint = v6;

  v8 = [(UIView *)self->_hudContainerView leadingAnchor];
  v9 = [(UIViewController *)self view];
  v10 = [v9 leadingAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics minimumScreenEdgeDistance];
  v11 = [v8 constraintGreaterThanOrEqualToAnchor:v10 constant:?];
  hudContainerLeadingEdgeConstraint = self->_hudContainerLeadingEdgeConstraint;
  self->_hudContainerLeadingEdgeConstraint = v11;

  v13 = [(UIViewController *)self view];
  v14 = [v13 trailingAnchor];
  v15 = [(UIView *)self->_hudContainerView trailingAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics minimumScreenEdgeDistance];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15 constant:?];
  hudContainerTrailingEdgeConstraint = self->_hudContainerTrailingEdgeConstraint;
  self->_hudContainerTrailingEdgeConstraint = v16;

  v18 = [(UIViewController *)self view];
  v19 = [v18 bottomAnchor];
  v20 = [(UIView *)self->_hudContainerView bottomAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics minimumBottomScreenEdgeDistance];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20 constant:?];
  hudContainerBottomEdgeConstraint = self->_hudContainerBottomEdgeConstraint;
  self->_hudContainerBottomEdgeConstraint = v21;

  v23 = [(UIViewController *)self view];
  v24 = [v23 safeAreaLayoutGuide];
  v25 = [v24 bottomAnchor];
  v26 = [(UIView *)self->_hudContainerView bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  hudContainerBottomSafeAreaEdgeConstraint = self->_hudContainerBottomSafeAreaEdgeConstraint;
  self->_hudContainerBottomSafeAreaEdgeConstraint = v27;

  LODWORD(v29) = 1144750080;
  [(NSLayoutConstraint *)self->_hudContainerBottomSafeAreaEdgeConstraint setPriority:v29];
  v30 = MEMORY[0x1E69977A0];
  v31 = self->_hudContainerLeadingEdgeConstraint;
  v91[0] = self->_hudContainerTopEdgeConstraint;
  v91[1] = v31;
  v32 = self->_hudContainerBottomEdgeConstraint;
  v91[2] = self->_hudContainerTrailingEdgeConstraint;
  v91[3] = v32;
  v33 = [(UIView *)self->_hudContainerView centerXAnchor];
  v34 = [(UIViewController *)self view];
  v35 = [v34 centerXAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  v91[4] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:5];
  [v30 activateConstraints:v37];

  if (![(UIKeyShortcutHUDMetrics *)self->_metrics shouldExtendToolbarThroughSafeArea])
  {
    [(NSLayoutConstraint *)self->_hudContainerBottomSafeAreaEdgeConstraint setActive:1];
  }

  v38 = [(UIViewController *)self->_menuVC view];
  v39 = [v38 widthAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics standardHUDWidth];
  v40 = [v39 constraintEqualToConstant:?];
  menuPreferredWidthConstraint = self->_menuPreferredWidthConstraint;
  self->_menuPreferredWidthConstraint = v40;

  v42 = [(UIViewController *)self->_menuVC view];
  v43 = [v42 heightAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics standardMenuPanelHeight];
  v44 = [v43 constraintEqualToConstant:?];
  menuPreferredHeightConstraint = self->_menuPreferredHeightConstraint;
  self->_menuPreferredHeightConstraint = v44;

  v46 = [(UIViewController *)self->_toolbarVC view];
  v47 = [v46 topAnchor];
  v48 = [(UIViewController *)self->_menuVC view];
  v49 = [v48 bottomAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics standardMenuToolbarSpacing];
  v50 = [v47 constraintEqualToAnchor:v49 constant:?];
  menuToolbarSpacingConstraint = self->_menuToolbarSpacingConstraint;
  self->_menuToolbarSpacingConstraint = v50;

  v52 = [(UIViewController *)self->_toolbarVC view];
  v53 = [v52 widthAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics standardHUDWidth];
  v54 = [v53 constraintEqualToConstant:?];
  toolbarPreferredWidthConstraint = self->_toolbarPreferredWidthConstraint;
  self->_toolbarPreferredWidthConstraint = v54;

  v76 = MEMORY[0x1E69977A0];
  v89 = [(UIViewController *)self->_menuVC view];
  v88 = [v89 topAnchor];
  v87 = [(UIView *)self->_hudContainerView topAnchor];
  v86 = [v88 constraintEqualToAnchor:v87];
  v90[0] = v86;
  v85 = [(UIViewController *)self->_menuVC view];
  v84 = [v85 leadingAnchor];
  v83 = [(UIView *)self->_hudContainerView leadingAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v90[1] = v82;
  v81 = [(UIViewController *)self->_menuVC view];
  v80 = [v81 trailingAnchor];
  v78 = [(UIView *)self->_hudContainerView trailingAnchor];
  v77 = [v80 constraintEqualToAnchor:v78];
  v56 = self->_menuPreferredWidthConstraint;
  v90[2] = v77;
  v90[3] = v56;
  v57 = self->_menuToolbarSpacingConstraint;
  v90[4] = self->_menuPreferredHeightConstraint;
  v90[5] = v57;
  v79 = [(UIViewController *)self->_toolbarVC view];
  v75 = [v79 centerXAnchor];
  v74 = [(UIView *)self->_hudContainerView centerXAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v90[6] = v73;
  v72 = [(UIViewController *)self->_toolbarVC view];
  v71 = [v72 bottomAnchor];
  v70 = [(UIView *)self->_hudContainerView bottomAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v58 = self->_toolbarPreferredWidthConstraint;
  v90[7] = v69;
  v90[8] = v58;
  v59 = [(UIViewController *)self->_toolbarVC view];
  v60 = [v59 widthAnchor];
  v61 = [(UIView *)self->_hudContainerView widthAnchor];
  v62 = [v60 constraintLessThanOrEqualToAnchor:v61];
  v90[9] = v62;
  v63 = [(UIView *)self->_hudContainerView safeAreaLayoutGuide];
  v64 = [v63 bottomAnchor];
  v65 = [(UIViewController *)self->_toolbarVC view];
  v66 = [v65 topAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics standardToolbarContentHeight];
  v67 = [v64 constraintEqualToAnchor:v66 constant:?];
  v90[10] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:11];
  [v76 activateConstraints:v68];
}

- (void)_setupCollectionViewManagement
{
  v3 = objc_opt_new();
  collectionViewManager = self->_collectionViewManager;
  self->_collectionViewManager = v3;

  [(_UIKeyShortcutHUDCollectionViewManager *)self->_collectionViewManager setHudVC:self];
  [(_UIKeyShortcutHUDCollectionViewManager *)self->_collectionViewManager setMenu:self->_menuVC];
  [(_UIKeyShortcutHUDCollectionViewManager *)self->_collectionViewManager setToolbar:self->_toolbarVC];
  v5 = [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC searchButton];
  [(_UIKeyShortcutHUDCollectionViewManager *)self->_collectionViewManager setSearchButton:v5];

  [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC setCollectionViewManager:self->_collectionViewManager];
  [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC setCollectionViewManager:self->_collectionViewManager];
  v6 = self->_collectionViewManager;

  [_UIKeyShortcutHUDUtilities setCurrentHUDCollectionViewManager:v6];
}

- (void)_setupInitialViewState
{
  v3 = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
  v4 = [v3 menu];
  v5 = [v4 children];
  v6 = [v5 firstObject];

  [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC selectCategory:v6 withCategoryIndex:0];
  if ([(_UIKeyShortcutHUDConfiguration *)self->_configuration isSearching])
  {
    [(_UIKeyShortcutHUDViewController *)self _setSearching:1 animated:0];
    [(_UIKeyShortcutHUDViewController *)self setHudPresentedIntoSearchMode:1];
  }

  [(UIViewController *)self setNeedsFocusUpdate];
}

- (void)_setupHUDKeyCommands
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputEscape" modifierFlags:0 action:sel_handleEscapeKeyCommand_];
  [v4 setRepeatBehavior:2];
  [v4 _setEnumerationPriority:0];
  [v4 setAttributes:4];
  v27 = v4;
  [v3 addObject:v4];
  v5 = [UIKeyCommand keyCommandWithInput:@"?" modifierFlags:0x100000 action:sel_showHelp_];
  [v5 setRepeatBehavior:2];
  [v5 setAttributes:4];
  [v3 addObject:v5];
  v6 = [(_UIKeyShortcutHUDViewController *)self configuration];
  v7 = [v6 clientTraits];
  v8 = [v7 isSystemApp];

  if (v8)
  {
    v9 = [UIKeyCommand keyCommandWithInput:@"m" modifierFlags:0x800000 action:sel_handleShowShortcutsKeyCommand_];
    v10 = [v9 _allowGlobeModifierKeyCommand];

    [v10 setRepeatBehavior:2];
    [v10 setAttributes:4];
    [v3 addObject:v10];
    objc_storeWeak(&self->_showShortcutsKeyCommand, v10);
  }

  v11 = [MEMORY[0x1E695DF90] dictionary];
  hudToModelKeyCommandsMap = self->_hudToModelKeyCommandsMap;
  self->_hudToModelKeyCommandsMap = v11;

  v13 = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
  v14 = [v13 modelKeyCommandsExcludingHUDCommands:v3];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        v19 = self;
        v20 = v3;
        if (*v30 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        v22 = [v21 _keyCodes];

        if (v22)
        {
          v23 = [v21 _keyCodes];
          +[UIKeyCommand keyCommandWithKeyCodes:modifierFlags:action:](UIKeyCommand, "keyCommandWithKeyCodes:modifierFlags:action:", v23, [v21 modifierFlags], sel_handleModelKeyCommand_);
        }

        else
        {
          v23 = [v21 input];
          +[UIKeyCommand keyCommandWithInput:modifierFlags:action:](UIKeyCommand, "keyCommandWithInput:modifierFlags:action:", v23, [v21 modifierFlags], sel_handleModelKeyCommand_);
        }
        v24 = ;

        [v24 setRepeatBehavior:2];
        [v24 setWantsPriorityOverSystemBehavior:0];
        [v24 setAllowsAutomaticLocalization:{objc_msgSend(v21, "allowsAutomaticMirroring")}];
        [v24 setAllowsAutomaticMirroring:{objc_msgSend(v21, "allowsAutomaticMirroring")}];
        v25 = [v24 _allowGlobeModifierKeyCommand];

        self = v19;
        [(NSMutableDictionary *)v19->_hudToModelKeyCommandsMap setObject:v21 forKeyedSubscript:v25];
        v3 = v20;
        [v20 addObject:v25];
      }

      v16 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hudWindow);
  [WeakRetained setHudKeyCommands:v3];
}

- (void)setupPassthroughScrollInteraction
{
  v3 = objc_alloc_init(_UIPassthroughScrollInteraction);
  passthroughScrollInteraction = self->_passthroughScrollInteraction;
  self->_passthroughScrollInteraction = v3;

  [(_UIPassthroughScrollInteraction *)self->_passthroughScrollInteraction setDelegate:self];
  v5 = [(UIViewController *)self view];
  [v5 addInteraction:self->_passthroughScrollInteraction];
}

- (void)setHidden:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_hidden != v4)
  {
    self->_hidden = v4;
    [(_UIKeyShortcutHUDViewController *)self _stopInFlightAnimationsForAnimator:self->_hudAppearanceAnimator endPosition:2];
    v7 = [(_UIKeyShortcutHUDViewController *)self _defaultHUDAppearanceAnimatorForHidden:v4];
    hudAppearanceAnimator = self->_hudAppearanceAnimator;
    self->_hudAppearanceAnimator = v7;

    [(_UIKeyShortcutHUDViewController *)self _hudWillBecomeHidden:v4];
    [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC hudWillBecomeHidden:v4];
    [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC hudWillBecomeHidden:v4];
    if (v4)
    {
      self->_completelyPresented = 0;
    }

    objc_initWeak(&location, self);
    v9 = self->_hudAppearanceAnimator;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63___UIKeyShortcutHUDViewController_setHidden_completionHandler___block_invoke;
    v18[3] = &unk_1E7101C60;
    objc_copyWeak(&v19, &location);
    v20 = v4;
    [(UIViewPropertyAnimator *)v9 addAnimations:v18];
    v10 = self->_hudAppearanceAnimator;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __63___UIKeyShortcutHUDViewController_setHidden_completionHandler___block_invoke_2;
    v14 = &unk_1E7107288;
    objc_copyWeak(&v16, &location);
    v17 = v4;
    v15 = v6;
    [(UIViewPropertyAnimator *)v10 addCompletion:&v11];
    [(UIViewPropertyAnimator *)self->_hudAppearanceAnimator startAnimation:v11];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)_hudWillBecomeHidden:(BOOL)a3
{
  if (a3)
  {
    v4 = [(UIViewController *)self view];
    [v4 setUserInteractionEnabled:0];

    v5 = [(_UIKeyShortcutHUDViewController *)self hudContainerView];
    [v5 _setSafeAreaInsetsFrozen:1];
  }
}

- (BOOL)shouldDismissHUDForModifierKeyTap
{
  v2 = [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC searchBar];
  v3 = [v2 isEditing];

  return v3 ^ 1;
}

- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(UIViewController *)self view];
  v10 = [v9 hitTest:v8 withEvent:{x, y}];

  v11 = [(UIViewController *)self view];
  if (v10)
  {
    v12 = v10 == v11;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;

  return v13;
}

- (BOOL)passthroughScrollInteractionDidRecognize:(id)a3
{
  v4 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to interaction outside HUD", v7, 2u);
  }

  v5 = [(_UIKeyShortcutHUDViewController *)self delegate];
  [v5 keyShortcutHUDViewControllerDidRequestDismissal:self];

  return 1;
}

- (void)handleEscapeKeyCommand:(id)a3
{
  if ([(_UIKeyShortcutHUDViewController *)self isSearching]&& ![(_UIKeyShortcutHUDViewController *)self isHUDPresentedIntoSearchMode])
  {

    [(_UIKeyShortcutHUDViewController *)self _setSearching:0 animated:1];
  }

  else
  {
    v4 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to esc key command", v6, 2u);
    }

    v5 = [(_UIKeyShortcutHUDViewController *)self delegate];
    [v5 keyShortcutHUDViewControllerDidRequestDismissal:self];
  }
}

- (void)handleShowShortcutsKeyCommand:(id)a3
{
  if ([(_UIKeyShortcutHUDViewController *)self isSearching])
  {

    [(_UIKeyShortcutHUDViewController *)self _setSearching:0 animated:1];
  }

  else
  {
    v4 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to hitting Globe-M key command", v6, 2u);
    }

    v5 = [(_UIKeyShortcutHUDViewController *)self delegate];
    [v5 keyShortcutHUDViewControllerDidRequestDismissal:self];
  }
}

- (void)handleModelKeyCommand:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_hudToModelKeyCommandsMap objectForKeyedSubscript:a3];
  if (v4)
  {
    v5 = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
    v6 = [v5 modelShortcutForModelKeyCommand:v4];

    if (v6)
    {
      v7 = [(UIViewController *)self view];
      [v7 setUserInteractionEnabled:0];

      WeakRetained = objc_loadWeakRetained(&self->_hudWindow);
      [WeakRetained setHudKeyCommands:0];

      menuVC = self->_menuVC;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __57___UIKeyShortcutHUDViewController_handleModelKeyCommand___block_invoke;
      v11[3] = &unk_1E71072B0;
      v11[4] = self;
      v12 = v6;
      v10 = v6;
      [(_UIKeyShortcutHUDMenuViewController *)menuVC flashShortcutIfVisible:v10 completionHandler:v11];
    }
  }
}

- (void)_setDisplayedMenu:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  metrics = self->_metrics;
  v7 = a3;
  [(UIKeyShortcutHUDMetrics *)metrics setDisplayedMenu:v7 searching:[(_UIKeyShortcutHUDViewController *)self isSearching]];
  [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC setMenu:v7 animated:v4];
}

- (void)_focusTopSearchResultWithDelay:(BOOL)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66___UIKeyShortcutHUDViewController__focusTopSearchResultWithDelay___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (a3)
  {
    v6 = dispatch_time(0, 50000000);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66___UIKeyShortcutHUDViewController__focusTopSearchResultWithDelay___block_invoke_2;
    v7[3] = &unk_1E70F0F78;
    v8 = v5;
    dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

- (void)setHeldModifierFlags:(int64_t)a3
{
  if (self->_heldModifierFlags != a3)
  {
    self->_heldModifierFlags = a3;
    if ([(UIViewController *)self isViewLoaded])
    {
      v4 = [(UIViewController *)self view];
      v5 = [v4 isUserInteractionEnabled];

      if (v5)
      {

        [(_UIKeyShortcutHUDViewController *)self _updateDisplayedMenuForCurrentHeldModifierFlagsAnimated:0];
      }
    }
  }
}

- (void)_updateDisplayedMenuForCurrentHeldModifierFlagsAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(_UIKeyShortcutHUDViewController *)self isSearching])
  {
    v6 = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
    v5 = [v6 menuWithAlternatesForModifierFlags:self->_heldModifierFlags];
    [(_UIKeyShortcutHUDViewController *)self _setDisplayedMenu:v5 animated:v3];
  }
}

- (void)_setSearching:(BOOL)a3 animated:(BOOL)a4 initialSearchText:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if (self->_searching == v6)
  {
    [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC prepareForSearchTransition:v6];
    [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC prepareForSearchTransition:v6];
    [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC setSearching:v6];
    [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC setSearching:v6];
    [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC didCompleteSearchTransition];
    [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC didCompleteSearchTransition];
  }

  else
  {
    self->_searching = v6;
    if (!v6)
    {
      [(_UIKeyShortcutHUDViewController *)self setHudPresentedIntoSearchMode:0];
    }

    [(_UIKeyShortcutHUDViewController *)self _stopInFlightAnimationsForAnimator:self->_menuPanelAnimator endPosition:2];
    [(_UIKeyShortcutHUDViewController *)self _stopInFlightAnimationsForAnimator:self->_searchTransitionAnimator endPosition:0];
    [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC prepareForSearchTransition:v6];
    [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC prepareForSearchTransition:v6];
    objc_initWeak(location, self);
    v9 = [(UIViewController *)self->_menuVC view];
    [v9 alpha];
    v11 = v10;
    v12 = v10 > 0.0;

    v13 = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
    v14 = [v13 searchMenuWithSearchText:v8 maxSearchResultEntries:{-[UIKeyShortcutHUDMetrics maxNumberOfCellsInSearchResults](self->_metrics, "maxNumberOfCellsInSearchResults")}];

    v15 = 0;
    if (v6 && v14)
    {
      if ([v14 isEmpty])
      {
        v15 = 0;
      }

      else
      {
        v15 = 1;
        [(UIKeyShortcutHUDMetrics *)self->_metrics setDisplayedMenu:v14 searching:1];
      }
    }

    v31 = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke;
    aBlock[3] = &unk_1E71072D8;
    objc_copyWeak(&v56, location);
    v57 = v6;
    v58 = v15;
    v32 = _Block_copy(aBlock);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_2;
    v47[3] = &unk_1E7107300;
    objc_copyWeak(&v50, location);
    v51 = v6;
    v52 = v15;
    v16 = v14;
    v53 = v5;
    v30 = v16;
    v48 = v16;
    v49 = self;
    v54 = v12;
    v17 = _Block_copy(v47);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_4;
    v43[3] = &unk_1E7107328;
    objc_copyWeak(&v44, location);
    v45 = v6;
    v46 = v15;
    v18 = _Block_copy(v43);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_5;
    v41[3] = &unk_1E70F5DE0;
    objc_copyWeak(&v42, location);
    v19 = _Block_copy(v41);
    metrics = self->_metrics;
    if (v6)
    {
      if (v15)
      {
        [(UIKeyShortcutHUDMetrics *)metrics searchModePreferredMenuPanelWidth];
        [(NSLayoutConstraint *)self->_menuPreferredWidthConstraint setConstant:?];
        [(UIKeyShortcutHUDMetrics *)self->_metrics searchModePreferredMenuPanelHeight];
        [(_UIKeyShortcutHUDViewController *)self _setMenuHeight:?];
      }

      else
      {
        [(UIKeyShortcutHUDMetrics *)metrics searchModeStandardHUDWidth];
        [(NSLayoutConstraint *)self->_menuPreferredWidthConstraint setConstant:?];
      }

      [(UIKeyShortcutHUDMetrics *)self->_metrics searchModeStandardHUDWidth];
    }

    else
    {
      [(UIKeyShortcutHUDMetrics *)metrics standardMenuPanelHeight];
      [(_UIKeyShortcutHUDViewController *)self _setMenuHeight:?];
      if (v11 <= 0.0)
      {
        [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC setSearching:0];
        [(_UIKeyShortcutHUDViewController *)self _updateDisplayedMenuForCurrentHeldModifierFlagsAnimated:0];
        v21 = [(UIViewController *)self view];
        [v21 layoutIfNeeded];
      }

      [(UIKeyShortcutHUDMetrics *)self->_metrics standardHUDWidth];
      [(NSLayoutConstraint *)self->_menuPreferredWidthConstraint setConstant:?];
      [(UIKeyShortcutHUDMetrics *)self->_metrics standardHUDWidth];
    }

    [(NSLayoutConstraint *)self->_toolbarPreferredWidthConstraint setConstant:?];
    if (v5)
    {
      v22 = [(_UIKeyShortcutHUDViewController *)self _defaultMenuPanelAnimator];
      menuPanelAnimator = self->_menuPanelAnimator;
      self->_menuPanelAnimator = v22;

      v24 = self->_menuPanelAnimator;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_6;
      v39[3] = &unk_1E70F0F78;
      v40 = v32;
      [(UIViewPropertyAnimator *)v24 addAnimations:v39];
      v25 = self->_menuPanelAnimator;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_7;
      v37[3] = &unk_1E70FFB68;
      v38 = v18;
      [(UIViewPropertyAnimator *)v25 addCompletion:v37];
      v26 = [(_UIKeyShortcutHUDViewController *)self _defaultSearchTransitionAnimator];
      searchTransitionAnimator = self->_searchTransitionAnimator;
      self->_searchTransitionAnimator = v26;

      v28 = self->_searchTransitionAnimator;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_8;
      v35[3] = &unk_1E70F0F78;
      v36 = v17;
      [(UIViewPropertyAnimator *)v28 addAnimations:v35];
      v29 = self->_searchTransitionAnimator;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_9;
      v33[3] = &unk_1E70FFB68;
      v34 = v19;
      [(UIViewPropertyAnimator *)v29 addCompletion:v33];
      [(UIViewPropertyAnimator *)self->_menuPanelAnimator startAnimation];
      [(UIViewPropertyAnimator *)self->_searchTransitionAnimator startAnimation];
    }

    else
    {
      v32[2]();
      v17[2](v17);
      (*(v18 + 2))(v18, 0);
      (*(v19 + 2))(v19, 0);
    }

    objc_destroyWeak(&v42);
    objc_destroyWeak(&v44);

    objc_destroyWeak(&v50);
    objc_destroyWeak(&v56);

    objc_destroyWeak(location);
    v8 = v31;
  }
}

- (BOOL)_canChangeFirstResponder:(id)a3 toResponder:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIResponder *)self _containsResponder:v7]&& [(_UIKeyShortcutHUDViewController *)self isHidden])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIKeyShortcutHUDViewController;
    v8 = [(UIResponder *)&v10 _canChangeFirstResponder:v6 toResponder:v7];
  }

  return v8;
}

- (void)insertText:(id)a3
{
  v4 = a3;
  if ([(_UIKeyShortcutHUDViewController *)self isHidden])
  {
    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v8 = [v4 stringByTrimmingCharactersInSet:v6];

    if ([v8 length])
    {
      [(_UIKeyShortcutHUDViewController *)self _setSearching:1 animated:1 initialSearchText:v8];
      [(_UIKeyShortcutHUDViewController *)self setShouldIgnoreNextSearchFieldTextChangedCallback:1];
      v7 = [(_UIKeyShortcutHUDViewController *)self delegate];
      [v7 keyShortcutHUDViewControllerDidBeginTypeAheadSearch:self];
    }

    v5 = v8;
  }
}

- (BOOL)hasText
{
  v2 = [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC searchBar];
  v3 = [v2 text];
  v4 = [v3 length] != 0;

  return v4;
}

- (BOOL)_disableAutomaticKeyboardUI
{
  if ([(UIResponder *)self isFirstResponder])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _UIKeyShortcutHUDViewController;
  return [(UIResponder *)&v4 _disableAutomaticKeyboardUI];
}

- (id)_defaultHUDAppearanceAnimatorForHidden:(BOOL)a3
{
  if (a3)
  {
    v3 = [[UICubicTimingParameters alloc] initWithAnimationCurve:0];
  }

  else
  {
    v3 = [[UISpringTimingParameters alloc] initWithMass:2.0 stiffness:1500.0 damping:500.0 initialVelocity:0.0, 0.0];
  }

  v4 = v3;
  v5 = [[UIViewPropertyAnimator alloc] initWithDuration:v3 timingParameters:0.15];

  return v5;
}

- (id)_defaultSearchTransitionAnimator
{
  v2 = [[UISpringTimingParameters alloc] initWithMass:3.0 stiffness:1000.0 damping:500.0 initialVelocity:0.0, 0.0];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:0.5];

  return v3;
}

- (void)_stopInFlightAnimationsForAnimator:(id)a3 endPosition:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v8 = v5;
    v7 = [v5 state];
    v6 = v8;
    if (v7)
    {
      [v8 stopAnimation:0];
      [v8 finishAnimationAtPosition:a4];
      v6 = v8;
    }
  }
}

- (void)_setMenuHeight:(double)a3
{
  [(NSLayoutConstraint *)self->_menuPreferredHeightConstraint setConstant:?];
  [(UIKeyShortcutHUDMetrics *)self->_metrics hiddenMenuPanelHeight];
  v6 = v5;
  v7 = 0.0;
  if (v6 != a3)
  {
    [(UIKeyShortcutHUDMetrics *)self->_metrics standardMenuToolbarSpacing];
  }

  menuToolbarSpacingConstraint = self->_menuToolbarSpacingConstraint;

  [(NSLayoutConstraint *)menuToolbarSpacingConstraint setConstant:v7];
}

- (void)menuViewController:(id)a3 didSelectShortcut:(id)a4
{
  v14 = a4;
  v5 = [(_UIKeyShortcutHUDViewController *)self configuration];
  v6 = [v5 clientTraits];
  if (([v6 isSystemApp] & 1) == 0)
  {

    goto LABEL_6;
  }

  v7 = [v14 uiKeyCommand];
  WeakRetained = objc_loadWeakRetained(&self->_showShortcutsKeyCommand);
  v9 = [v7 isEqual:WeakRetained];

  if (!v9)
  {
LABEL_6:
    v12 = [(UIViewController *)self view];
    [v12 setUserInteractionEnabled:0];

    v13 = [(_UIKeyShortcutHUDViewController *)self delegate];
    [v13 keyShortcutHUDViewController:self didSelectShortcut:v14];

    goto LABEL_7;
  }

  v10 = [(_UIKeyShortcutHUDViewController *)self isSearching];
  v11 = v14;
  if (!v10)
  {
    goto LABEL_8;
  }

  [(_UIKeyShortcutHUDViewController *)self _setSearching:0 animated:1];
LABEL_7:
  v11 = v14;
LABEL_8:
}

- (BOOL)menuViewController:(id)a3 shouldPersistSelectionForShortcut:(id)a4
{
  v5 = a4;
  v6 = [(_UIKeyShortcutHUDViewController *)self configuration];
  v7 = [v6 clientTraits];
  if ([v7 isSystemApp])
  {
    v8 = [v5 uiKeyCommand];
    WeakRetained = objc_loadWeakRetained(&self->_showShortcutsKeyCommand);
    v10 = [v8 isEqual:WeakRetained];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)toolbarViewController:(id)a3 didUpdateSearchText:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_UIKeyShortcutHUDViewController *)self shouldIgnoreNextSearchFieldTextChangedCallback])
  {
    [(_UIKeyShortcutHUDViewController *)self setShouldIgnoreNextSearchFieldTextChangedCallback:0];
  }

  else if ([(_UIKeyShortcutHUDViewController *)self isSearching])
  {
    [(_UIKeyShortcutHUDViewController *)self _stopInFlightAnimationsForAnimator:self->_menuPanelAnimator endPosition:2];
    v8 = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
    v9 = [v8 searchMenuWithSearchText:v7 maxSearchResultEntries:{-[UIKeyShortcutHUDMetrics maxNumberOfCellsInSearchResults](self->_metrics, "maxNumberOfCellsInSearchResults")}];

    if (([v9 isEmpty] & 1) == 0)
    {
      [(_UIKeyShortcutHUDViewController *)self _setDisplayedMenu:v9 animated:0];
      [(_UIKeyShortcutHUDViewController *)self _focusTopSearchResultWithDelay:0];
    }

    v10 = [(UIViewController *)self->_menuVC view];
    [v10 alpha];
    v12 = v11;

    v13 = [v9 isEmpty];
    metrics = self->_metrics;
    if ((v13 ^ 1))
    {
      [(UIKeyShortcutHUDMetrics *)metrics searchModePreferredMenuPanelHeight];
      v16 = v18;
      [(UIKeyShortcutHUDMetrics *)self->_metrics searchModePreferredMenuPanelWidth];
    }

    else
    {
      [(UIKeyShortcutHUDMetrics *)metrics hiddenMenuPanelHeight];
      v16 = v15;
      [(UIKeyShortcutHUDMetrics *)self->_metrics hiddenMenuPanelWidth];
    }

    v19 = v17;
    objc_initWeak(&location, self);
    v20 = [(_UIKeyShortcutHUDViewController *)self _defaultMenuPanelAnimator];
    menuPanelAnimator = self->_menuPanelAnimator;
    self->_menuPanelAnimator = v20;

    v22 = self->_menuPanelAnimator;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __77___UIKeyShortcutHUDViewController_toolbarViewController_didUpdateSearchText___block_invoke;
    v28[3] = &unk_1E7101C60;
    objc_copyWeak(&v29, &location);
    v30 = v13 ^ 1;
    [(UIViewPropertyAnimator *)v22 addAnimations:v28];
    if ((((v12 > 0.0) ^ v13) & 1) != 0 || (v13 & 1) == 0)
    {
      [(_UIKeyShortcutHUDViewController *)self _setMenuHeight:*&v16];
      [(_UIKeyShortcutHUDViewController *)self _setMenuWidth:*&v19];
      v24 = [(UIViewController *)self view];
      [v24 layoutIfNeeded];
    }

    else
    {
      v23 = self->_menuPanelAnimator;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __77___UIKeyShortcutHUDViewController_toolbarViewController_didUpdateSearchText___block_invoke_2;
      v25[3] = &unk_1E7107350;
      objc_copyWeak(v27, &location);
      v27[1] = v16;
      v27[2] = v19;
      v26 = v9;
      [(UIViewPropertyAnimator *)v23 addCompletion:v25];

      objc_destroyWeak(v27);
    }

    [(UIViewPropertyAnimator *)self->_menuPanelAnimator startAnimation];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }
}

- (_UIKeyShortcutHUDViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIKeyShortcutHUDWindow)hudWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_hudWindow);

  return WeakRetained;
}

- (UIKeyCommand)showShortcutsKeyCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_showShortcutsKeyCommand);

  return WeakRetained;
}

@end