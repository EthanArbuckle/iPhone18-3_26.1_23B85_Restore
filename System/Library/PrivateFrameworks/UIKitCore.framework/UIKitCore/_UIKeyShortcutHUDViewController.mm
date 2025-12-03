@interface _UIKeyShortcutHUDViewController
- (BOOL)_canChangeFirstResponder:(id)responder toResponder:(id)toResponder;
- (BOOL)_disableAutomaticKeyboardUI;
- (BOOL)hasText;
- (BOOL)menuViewController:(id)controller shouldPersistSelectionForShortcut:(id)shortcut;
- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (BOOL)passthroughScrollInteractionDidRecognize:(id)recognize;
- (BOOL)shouldDismissHUDForModifierKeyTap;
- (UIKeyCommand)showShortcutsKeyCommand;
- (_UIKeyShortcutHUDViewController)init;
- (_UIKeyShortcutHUDViewControllerDelegate)delegate;
- (_UIKeyShortcutHUDWindow)hudWindow;
- (id)_defaultHUDAppearanceAnimatorForHidden:(BOOL)hidden;
- (id)_defaultSearchTransitionAnimator;
- (void)_focusTopSearchResultWithDelay:(BOOL)delay;
- (void)_hudWillBecomeHidden:(BOOL)hidden;
- (void)_setDisplayedMenu:(id)menu animated:(BOOL)animated;
- (void)_setMenuHeight:(double)height;
- (void)_setSearching:(BOOL)searching animated:(BOOL)animated initialSearchText:(id)text;
- (void)_setupCollectionViewManagement;
- (void)_setupHUDKeyCommands;
- (void)_setupInitialViewState;
- (void)_setupLayout;
- (void)_setupMetrics;
- (void)_setupSubviews;
- (void)_stopInFlightAnimationsForAnimator:(id)animator endPosition:(int64_t)position;
- (void)_updateDisplayedMenuForCurrentHeldModifierFlagsAnimated:(BOOL)animated;
- (void)handleEscapeKeyCommand:(id)command;
- (void)handleModelKeyCommand:(id)command;
- (void)handleShowShortcutsKeyCommand:(id)command;
- (void)insertText:(id)text;
- (void)menuViewController:(id)controller didSelectShortcut:(id)shortcut;
- (void)setHeldModifierFlags:(int64_t)flags;
- (void)setHidden:(BOOL)hidden completionHandler:(id)handler;
- (void)setupPassthroughScrollInteraction;
- (void)toolbarViewController:(id)controller didUpdateSearchText:(id)text;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v11.receiver = self;
  v11.super_class = _UIKeyShortcutHUDViewController;
  [(UIViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86___UIKeyShortcutHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7107260;
  objc_copyWeak(v9, &location);
  v8[4] = self;
  v9[1] = *&width;
  v9[2] = *&height;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)_setupMetrics
{
  v21 = *MEMORY[0x1E69E9840];
  metricsProvider = [(_UIKeyShortcutHUDViewController *)self metricsProvider];
  WeakRetained = objc_loadWeakRetained(&self->_hudWindow);
  v5 = [metricsProvider metricsForWindow:WeakRetained];
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
  traitCollection = [v9 traitCollection];
  [(UIKeyShortcutHUDMetrics *)self->_metrics setTraitCollection:traitCollection];

  clientTraits = [(_UIKeyShortcutHUDConfiguration *)self->_configuration clientTraits];
  [(UIKeyShortcutHUDMetrics *)self->_metrics setClientTraits:clientTraits];

  v12 = objc_loadWeakRetained(&self->_hudWindow);
  windowScene = [v12 windowScene];
  _coordinateSpace = [windowScene _coordinateSpace];
  [_coordinateSpace bounds];
  [(UIKeyShortcutHUDMetrics *)self->_metrics setAvailableVerticalSpace:CGRectGetHeight(v22)];

  [(UIKeyShortcutHUDMetrics *)self->_metrics computeOneTimeMetrics];
  v15 = objc_opt_new();
  [v15 setHidden:1];
  view = [(UIViewController *)self view];
  [view addSubview:v15];

  [(UIKeyShortcutHUDMetrics *)self->_metrics setSelfSizingPlayground:v15];
  model = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
  menu = [model menu];
  [(UIKeyShortcutHUDMetrics *)self->_metrics setBaseMenu:menu];
}

- (void)_setupSubviews
{
  v3 = objc_opt_new();
  hudContainerView = self->_hudContainerView;
  self->_hudContainerView = v3;

  [(UIView *)self->_hudContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIKeyShortcutHUDMetrics *)self->_metrics platterShadowOpacity];
  v6 = v5;
  layer = [(UIView *)self->_hudContainerView layer];
  *&v8 = v6;
  [layer setShadowOpacity:v8];

  [(UIKeyShortcutHUDMetrics *)self->_metrics platterShadowRadius];
  v10 = v9;
  layer2 = [(UIView *)self->_hudContainerView layer];
  [layer2 setShadowRadius:v10];

  v12 = *MEMORY[0x1E695F060];
  v13 = *(MEMORY[0x1E695F060] + 8);
  layer3 = [(UIView *)self->_hudContainerView layer];
  [layer3 setShadowOffset:{v12, v13}];

  view = [(UIViewController *)self view];
  [view addSubview:self->_hudContainerView];

  v16 = objc_opt_new();
  menuVC = self->_menuVC;
  self->_menuVC = v16;

  [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC setMetrics:self->_metrics];
  [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC setDelegate:self];
  view2 = [(UIViewController *)self->_menuVC view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = self->_hudContainerView;
  view3 = [(UIViewController *)self->_menuVC view];
  [(UIView *)v19 addSubview:view3];

  [(UIViewController *)self addChildViewController:self->_menuVC];
  [(UIViewController *)self->_menuVC didMoveToParentViewController:self];
  v21 = objc_opt_new();
  toolbarVC = self->_toolbarVC;
  self->_toolbarVC = v21;

  model = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
  menu = [model menu];
  [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC setMenu:menu];

  [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC setMetrics:self->_metrics];
  [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC setDelegate:self];
  view4 = [(UIViewController *)self->_toolbarVC view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = self->_hudContainerView;
  view5 = [(UIViewController *)self->_toolbarVC view];
  [(UIView *)v26 addSubview:view5];

  [(UIViewController *)self addChildViewController:self->_toolbarVC];
  v28 = self->_toolbarVC;

  [(UIViewController *)v28 didMoveToParentViewController:self];
}

- (void)_setupLayout
{
  v91[5] = *MEMORY[0x1E69E9840];
  topAnchor = [(UIView *)self->_hudContainerView topAnchor];
  view = [(UIViewController *)self view];
  topAnchor2 = [view topAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics minimumScreenEdgeDistance];
  v6 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:?];
  hudContainerTopEdgeConstraint = self->_hudContainerTopEdgeConstraint;
  self->_hudContainerTopEdgeConstraint = v6;

  leadingAnchor = [(UIView *)self->_hudContainerView leadingAnchor];
  view2 = [(UIViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics minimumScreenEdgeDistance];
  v11 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:?];
  hudContainerLeadingEdgeConstraint = self->_hudContainerLeadingEdgeConstraint;
  self->_hudContainerLeadingEdgeConstraint = v11;

  view3 = [(UIViewController *)self view];
  trailingAnchor = [view3 trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_hudContainerView trailingAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics minimumScreenEdgeDistance];
  v16 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:?];
  hudContainerTrailingEdgeConstraint = self->_hudContainerTrailingEdgeConstraint;
  self->_hudContainerTrailingEdgeConstraint = v16;

  view4 = [(UIViewController *)self view];
  bottomAnchor = [view4 bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_hudContainerView bottomAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics minimumBottomScreenEdgeDistance];
  v21 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:?];
  hudContainerBottomEdgeConstraint = self->_hudContainerBottomEdgeConstraint;
  self->_hudContainerBottomEdgeConstraint = v21;

  view5 = [(UIViewController *)self view];
  safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_hudContainerView bottomAnchor];
  v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
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
  centerXAnchor = [(UIView *)self->_hudContainerView centerXAnchor];
  view6 = [(UIViewController *)self view];
  centerXAnchor2 = [view6 centerXAnchor];
  v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v91[4] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:5];
  [v30 activateConstraints:v37];

  if (![(UIKeyShortcutHUDMetrics *)self->_metrics shouldExtendToolbarThroughSafeArea])
  {
    [(NSLayoutConstraint *)self->_hudContainerBottomSafeAreaEdgeConstraint setActive:1];
  }

  view7 = [(UIViewController *)self->_menuVC view];
  widthAnchor = [view7 widthAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics standardHUDWidth];
  v40 = [widthAnchor constraintEqualToConstant:?];
  menuPreferredWidthConstraint = self->_menuPreferredWidthConstraint;
  self->_menuPreferredWidthConstraint = v40;

  view8 = [(UIViewController *)self->_menuVC view];
  heightAnchor = [view8 heightAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics standardMenuPanelHeight];
  v44 = [heightAnchor constraintEqualToConstant:?];
  menuPreferredHeightConstraint = self->_menuPreferredHeightConstraint;
  self->_menuPreferredHeightConstraint = v44;

  view9 = [(UIViewController *)self->_toolbarVC view];
  topAnchor3 = [view9 topAnchor];
  view10 = [(UIViewController *)self->_menuVC view];
  bottomAnchor5 = [view10 bottomAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics standardMenuToolbarSpacing];
  v50 = [topAnchor3 constraintEqualToAnchor:bottomAnchor5 constant:?];
  menuToolbarSpacingConstraint = self->_menuToolbarSpacingConstraint;
  self->_menuToolbarSpacingConstraint = v50;

  view11 = [(UIViewController *)self->_toolbarVC view];
  widthAnchor2 = [view11 widthAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics standardHUDWidth];
  v54 = [widthAnchor2 constraintEqualToConstant:?];
  toolbarPreferredWidthConstraint = self->_toolbarPreferredWidthConstraint;
  self->_toolbarPreferredWidthConstraint = v54;

  v76 = MEMORY[0x1E69977A0];
  view12 = [(UIViewController *)self->_menuVC view];
  topAnchor4 = [view12 topAnchor];
  topAnchor5 = [(UIView *)self->_hudContainerView topAnchor];
  v86 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v90[0] = v86;
  view13 = [(UIViewController *)self->_menuVC view];
  leadingAnchor3 = [view13 leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_hudContainerView leadingAnchor];
  v82 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v90[1] = v82;
  view14 = [(UIViewController *)self->_menuVC view];
  trailingAnchor3 = [view14 trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_hudContainerView trailingAnchor];
  v77 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v56 = self->_menuPreferredWidthConstraint;
  v90[2] = v77;
  v90[3] = v56;
  v57 = self->_menuToolbarSpacingConstraint;
  v90[4] = self->_menuPreferredHeightConstraint;
  v90[5] = v57;
  view15 = [(UIViewController *)self->_toolbarVC view];
  centerXAnchor3 = [view15 centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_hudContainerView centerXAnchor];
  v73 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v90[6] = v73;
  view16 = [(UIViewController *)self->_toolbarVC view];
  bottomAnchor6 = [view16 bottomAnchor];
  bottomAnchor7 = [(UIView *)self->_hudContainerView bottomAnchor];
  v69 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v58 = self->_toolbarPreferredWidthConstraint;
  v90[7] = v69;
  v90[8] = v58;
  view17 = [(UIViewController *)self->_toolbarVC view];
  widthAnchor3 = [view17 widthAnchor];
  widthAnchor4 = [(UIView *)self->_hudContainerView widthAnchor];
  v62 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4];
  v90[9] = v62;
  safeAreaLayoutGuide2 = [(UIView *)self->_hudContainerView safeAreaLayoutGuide];
  bottomAnchor8 = [safeAreaLayoutGuide2 bottomAnchor];
  view18 = [(UIViewController *)self->_toolbarVC view];
  topAnchor6 = [view18 topAnchor];
  [(UIKeyShortcutHUDMetrics *)self->_metrics standardToolbarContentHeight];
  v67 = [bottomAnchor8 constraintEqualToAnchor:topAnchor6 constant:?];
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
  searchButton = [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC searchButton];
  [(_UIKeyShortcutHUDCollectionViewManager *)self->_collectionViewManager setSearchButton:searchButton];

  [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC setCollectionViewManager:self->_collectionViewManager];
  [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC setCollectionViewManager:self->_collectionViewManager];
  v6 = self->_collectionViewManager;

  [_UIKeyShortcutHUDUtilities setCurrentHUDCollectionViewManager:v6];
}

- (void)_setupInitialViewState
{
  model = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
  menu = [model menu];
  children = [menu children];
  firstObject = [children firstObject];

  [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC selectCategory:firstObject withCategoryIndex:0];
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
  array = [MEMORY[0x1E695DF70] array];
  v4 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputEscape" modifierFlags:0 action:sel_handleEscapeKeyCommand_];
  [v4 setRepeatBehavior:2];
  [v4 _setEnumerationPriority:0];
  [v4 setAttributes:4];
  v27 = v4;
  [array addObject:v4];
  v5 = [UIKeyCommand keyCommandWithInput:@"?" modifierFlags:0x100000 action:sel_showHelp_];
  [v5 setRepeatBehavior:2];
  [v5 setAttributes:4];
  [array addObject:v5];
  configuration = [(_UIKeyShortcutHUDViewController *)self configuration];
  clientTraits = [configuration clientTraits];
  isSystemApp = [clientTraits isSystemApp];

  if (isSystemApp)
  {
    v9 = [UIKeyCommand keyCommandWithInput:@"m" modifierFlags:0x800000 action:sel_handleShowShortcutsKeyCommand_];
    _allowGlobeModifierKeyCommand = [v9 _allowGlobeModifierKeyCommand];

    [_allowGlobeModifierKeyCommand setRepeatBehavior:2];
    [_allowGlobeModifierKeyCommand setAttributes:4];
    [array addObject:_allowGlobeModifierKeyCommand];
    objc_storeWeak(&self->_showShortcutsKeyCommand, _allowGlobeModifierKeyCommand);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  hudToModelKeyCommandsMap = self->_hudToModelKeyCommandsMap;
  self->_hudToModelKeyCommandsMap = dictionary;

  model = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
  v14 = [model modelKeyCommandsExcludingHUDCommands:array];

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
        selfCopy = self;
        v20 = array;
        if (*v30 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        _keyCodes = [v21 _keyCodes];

        if (_keyCodes)
        {
          _keyCodes2 = [v21 _keyCodes];
          +[UIKeyCommand keyCommandWithKeyCodes:modifierFlags:action:](UIKeyCommand, "keyCommandWithKeyCodes:modifierFlags:action:", _keyCodes2, [v21 modifierFlags], sel_handleModelKeyCommand_);
        }

        else
        {
          _keyCodes2 = [v21 input];
          +[UIKeyCommand keyCommandWithInput:modifierFlags:action:](UIKeyCommand, "keyCommandWithInput:modifierFlags:action:", _keyCodes2, [v21 modifierFlags], sel_handleModelKeyCommand_);
        }
        v24 = ;

        [v24 setRepeatBehavior:2];
        [v24 setWantsPriorityOverSystemBehavior:0];
        [v24 setAllowsAutomaticLocalization:{objc_msgSend(v21, "allowsAutomaticMirroring")}];
        [v24 setAllowsAutomaticMirroring:{objc_msgSend(v21, "allowsAutomaticMirroring")}];
        _allowGlobeModifierKeyCommand2 = [v24 _allowGlobeModifierKeyCommand];

        self = selfCopy;
        [(NSMutableDictionary *)selfCopy->_hudToModelKeyCommandsMap setObject:v21 forKeyedSubscript:_allowGlobeModifierKeyCommand2];
        array = v20;
        [v20 addObject:_allowGlobeModifierKeyCommand2];
      }

      v16 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hudWindow);
  [WeakRetained setHudKeyCommands:array];
}

- (void)setupPassthroughScrollInteraction
{
  v3 = objc_alloc_init(_UIPassthroughScrollInteraction);
  passthroughScrollInteraction = self->_passthroughScrollInteraction;
  self->_passthroughScrollInteraction = v3;

  [(_UIPassthroughScrollInteraction *)self->_passthroughScrollInteraction setDelegate:self];
  view = [(UIViewController *)self view];
  [view addInteraction:self->_passthroughScrollInteraction];
}

- (void)setHidden:(BOOL)hidden completionHandler:(id)handler
{
  hiddenCopy = hidden;
  handlerCopy = handler;
  if (self->_hidden != hiddenCopy)
  {
    self->_hidden = hiddenCopy;
    [(_UIKeyShortcutHUDViewController *)self _stopInFlightAnimationsForAnimator:self->_hudAppearanceAnimator endPosition:2];
    v7 = [(_UIKeyShortcutHUDViewController *)self _defaultHUDAppearanceAnimatorForHidden:hiddenCopy];
    hudAppearanceAnimator = self->_hudAppearanceAnimator;
    self->_hudAppearanceAnimator = v7;

    [(_UIKeyShortcutHUDViewController *)self _hudWillBecomeHidden:hiddenCopy];
    [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC hudWillBecomeHidden:hiddenCopy];
    [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC hudWillBecomeHidden:hiddenCopy];
    if (hiddenCopy)
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
    v20 = hiddenCopy;
    [(UIViewPropertyAnimator *)v9 addAnimations:v18];
    v10 = self->_hudAppearanceAnimator;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __63___UIKeyShortcutHUDViewController_setHidden_completionHandler___block_invoke_2;
    v14 = &unk_1E7107288;
    objc_copyWeak(&v16, &location);
    v17 = hiddenCopy;
    v15 = handlerCopy;
    [(UIViewPropertyAnimator *)v10 addCompletion:&v11];
    [(UIViewPropertyAnimator *)self->_hudAppearanceAnimator startAnimation:v11];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)_hudWillBecomeHidden:(BOOL)hidden
{
  if (hidden)
  {
    view = [(UIViewController *)self view];
    [view setUserInteractionEnabled:0];

    hudContainerView = [(_UIKeyShortcutHUDViewController *)self hudContainerView];
    [hudContainerView _setSafeAreaInsetsFrozen:1];
  }
}

- (BOOL)shouldDismissHUDForModifierKeyTap
{
  searchBar = [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC searchBar];
  isEditing = [searchBar isEditing];

  return isEditing ^ 1;
}

- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  eventCopy = event;
  view = [(UIViewController *)self view];
  v10 = [view hitTest:eventCopy withEvent:{x, y}];

  view2 = [(UIViewController *)self view];
  if (v10)
  {
    v12 = v10 == view2;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;

  return v13;
}

- (BOOL)passthroughScrollInteractionDidRecognize:(id)recognize
{
  v4 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to interaction outside HUD", v7, 2u);
  }

  delegate = [(_UIKeyShortcutHUDViewController *)self delegate];
  [delegate keyShortcutHUDViewControllerDidRequestDismissal:self];

  return 1;
}

- (void)handleEscapeKeyCommand:(id)command
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

    delegate = [(_UIKeyShortcutHUDViewController *)self delegate];
    [delegate keyShortcutHUDViewControllerDidRequestDismissal:self];
  }
}

- (void)handleShowShortcutsKeyCommand:(id)command
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

    delegate = [(_UIKeyShortcutHUDViewController *)self delegate];
    [delegate keyShortcutHUDViewControllerDidRequestDismissal:self];
  }
}

- (void)handleModelKeyCommand:(id)command
{
  v4 = [(NSMutableDictionary *)self->_hudToModelKeyCommandsMap objectForKeyedSubscript:command];
  if (v4)
  {
    model = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
    v6 = [model modelShortcutForModelKeyCommand:v4];

    if (v6)
    {
      view = [(UIViewController *)self view];
      [view setUserInteractionEnabled:0];

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

- (void)_setDisplayedMenu:(id)menu animated:(BOOL)animated
{
  animatedCopy = animated;
  metrics = self->_metrics;
  menuCopy = menu;
  [(UIKeyShortcutHUDMetrics *)metrics setDisplayedMenu:menuCopy searching:[(_UIKeyShortcutHUDViewController *)self isSearching]];
  [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC setMenu:menuCopy animated:animatedCopy];
}

- (void)_focusTopSearchResultWithDelay:(BOOL)delay
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66___UIKeyShortcutHUDViewController__focusTopSearchResultWithDelay___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (delay)
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

- (void)setHeldModifierFlags:(int64_t)flags
{
  if (self->_heldModifierFlags != flags)
  {
    self->_heldModifierFlags = flags;
    if ([(UIViewController *)self isViewLoaded])
    {
      view = [(UIViewController *)self view];
      isUserInteractionEnabled = [view isUserInteractionEnabled];

      if (isUserInteractionEnabled)
      {

        [(_UIKeyShortcutHUDViewController *)self _updateDisplayedMenuForCurrentHeldModifierFlagsAnimated:0];
      }
    }
  }
}

- (void)_updateDisplayedMenuForCurrentHeldModifierFlagsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(_UIKeyShortcutHUDViewController *)self isSearching])
  {
    model = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
    v5 = [model menuWithAlternatesForModifierFlags:self->_heldModifierFlags];
    [(_UIKeyShortcutHUDViewController *)self _setDisplayedMenu:v5 animated:animatedCopy];
  }
}

- (void)_setSearching:(BOOL)searching animated:(BOOL)animated initialSearchText:(id)text
{
  animatedCopy = animated;
  searchingCopy = searching;
  textCopy = text;
  if (self->_searching == searchingCopy)
  {
    [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC prepareForSearchTransition:searchingCopy];
    [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC prepareForSearchTransition:searchingCopy];
    [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC setSearching:searchingCopy];
    [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC setSearching:searchingCopy];
    [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC didCompleteSearchTransition];
    [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC didCompleteSearchTransition];
  }

  else
  {
    self->_searching = searchingCopy;
    if (!searchingCopy)
    {
      [(_UIKeyShortcutHUDViewController *)self setHudPresentedIntoSearchMode:0];
    }

    [(_UIKeyShortcutHUDViewController *)self _stopInFlightAnimationsForAnimator:self->_menuPanelAnimator endPosition:2];
    [(_UIKeyShortcutHUDViewController *)self _stopInFlightAnimationsForAnimator:self->_searchTransitionAnimator endPosition:0];
    [(_UIKeyShortcutHUDMenuViewController *)self->_menuVC prepareForSearchTransition:searchingCopy];
    [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC prepareForSearchTransition:searchingCopy];
    objc_initWeak(location, self);
    view = [(UIViewController *)self->_menuVC view];
    [view alpha];
    v11 = v10;
    v12 = v10 > 0.0;

    model = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
    v14 = [model searchMenuWithSearchText:textCopy maxSearchResultEntries:{-[UIKeyShortcutHUDMetrics maxNumberOfCellsInSearchResults](self->_metrics, "maxNumberOfCellsInSearchResults")}];

    v15 = 0;
    if (searchingCopy && v14)
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

    v31 = textCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke;
    aBlock[3] = &unk_1E71072D8;
    objc_copyWeak(&v56, location);
    v57 = searchingCopy;
    v58 = v15;
    v32 = _Block_copy(aBlock);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_2;
    v47[3] = &unk_1E7107300;
    objc_copyWeak(&v50, location);
    v51 = searchingCopy;
    v52 = v15;
    v16 = v14;
    v53 = animatedCopy;
    v30 = v16;
    v48 = v16;
    selfCopy = self;
    v54 = v12;
    v17 = _Block_copy(v47);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_4;
    v43[3] = &unk_1E7107328;
    objc_copyWeak(&v44, location);
    v45 = searchingCopy;
    v46 = v15;
    v18 = _Block_copy(v43);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_5;
    v41[3] = &unk_1E70F5DE0;
    objc_copyWeak(&v42, location);
    v19 = _Block_copy(v41);
    metrics = self->_metrics;
    if (searchingCopy)
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
        view2 = [(UIViewController *)self view];
        [view2 layoutIfNeeded];
      }

      [(UIKeyShortcutHUDMetrics *)self->_metrics standardHUDWidth];
      [(NSLayoutConstraint *)self->_menuPreferredWidthConstraint setConstant:?];
      [(UIKeyShortcutHUDMetrics *)self->_metrics standardHUDWidth];
    }

    [(NSLayoutConstraint *)self->_toolbarPreferredWidthConstraint setConstant:?];
    if (animatedCopy)
    {
      _defaultMenuPanelAnimator = [(_UIKeyShortcutHUDViewController *)self _defaultMenuPanelAnimator];
      menuPanelAnimator = self->_menuPanelAnimator;
      self->_menuPanelAnimator = _defaultMenuPanelAnimator;

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
      _defaultSearchTransitionAnimator = [(_UIKeyShortcutHUDViewController *)self _defaultSearchTransitionAnimator];
      searchTransitionAnimator = self->_searchTransitionAnimator;
      self->_searchTransitionAnimator = _defaultSearchTransitionAnimator;

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
    textCopy = v31;
  }
}

- (BOOL)_canChangeFirstResponder:(id)responder toResponder:(id)toResponder
{
  responderCopy = responder;
  toResponderCopy = toResponder;
  if ([(UIResponder *)self _containsResponder:toResponderCopy]&& [(_UIKeyShortcutHUDViewController *)self isHidden])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIKeyShortcutHUDViewController;
    v8 = [(UIResponder *)&v10 _canChangeFirstResponder:responderCopy toResponder:toResponderCopy];
  }

  return v8;
}

- (void)insertText:(id)text
{
  textCopy = text;
  if ([(_UIKeyShortcutHUDViewController *)self isHidden])
  {
    v5 = textCopy;
  }

  else
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v8 = [textCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([v8 length])
    {
      [(_UIKeyShortcutHUDViewController *)self _setSearching:1 animated:1 initialSearchText:v8];
      [(_UIKeyShortcutHUDViewController *)self setShouldIgnoreNextSearchFieldTextChangedCallback:1];
      delegate = [(_UIKeyShortcutHUDViewController *)self delegate];
      [delegate keyShortcutHUDViewControllerDidBeginTypeAheadSearch:self];
    }

    v5 = v8;
  }
}

- (BOOL)hasText
{
  searchBar = [(_UIKeyShortcutHUDToolbarViewController *)self->_toolbarVC searchBar];
  text = [searchBar text];
  v4 = [text length] != 0;

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

- (id)_defaultHUDAppearanceAnimatorForHidden:(BOOL)hidden
{
  if (hidden)
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

- (void)_stopInFlightAnimationsForAnimator:(id)animator endPosition:(int64_t)position
{
  animatorCopy = animator;
  v6 = animatorCopy;
  if (animatorCopy)
  {
    v8 = animatorCopy;
    state = [animatorCopy state];
    v6 = v8;
    if (state)
    {
      [v8 stopAnimation:0];
      [v8 finishAnimationAtPosition:position];
      v6 = v8;
    }
  }
}

- (void)_setMenuHeight:(double)height
{
  [(NSLayoutConstraint *)self->_menuPreferredHeightConstraint setConstant:?];
  [(UIKeyShortcutHUDMetrics *)self->_metrics hiddenMenuPanelHeight];
  v6 = v5;
  v7 = 0.0;
  if (v6 != height)
  {
    [(UIKeyShortcutHUDMetrics *)self->_metrics standardMenuToolbarSpacing];
  }

  menuToolbarSpacingConstraint = self->_menuToolbarSpacingConstraint;

  [(NSLayoutConstraint *)menuToolbarSpacingConstraint setConstant:v7];
}

- (void)menuViewController:(id)controller didSelectShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  configuration = [(_UIKeyShortcutHUDViewController *)self configuration];
  clientTraits = [configuration clientTraits];
  if (([clientTraits isSystemApp] & 1) == 0)
  {

    goto LABEL_6;
  }

  uiKeyCommand = [shortcutCopy uiKeyCommand];
  WeakRetained = objc_loadWeakRetained(&self->_showShortcutsKeyCommand);
  v9 = [uiKeyCommand isEqual:WeakRetained];

  if (!v9)
  {
LABEL_6:
    view = [(UIViewController *)self view];
    [view setUserInteractionEnabled:0];

    delegate = [(_UIKeyShortcutHUDViewController *)self delegate];
    [delegate keyShortcutHUDViewController:self didSelectShortcut:shortcutCopy];

    goto LABEL_7;
  }

  isSearching = [(_UIKeyShortcutHUDViewController *)self isSearching];
  v11 = shortcutCopy;
  if (!isSearching)
  {
    goto LABEL_8;
  }

  [(_UIKeyShortcutHUDViewController *)self _setSearching:0 animated:1];
LABEL_7:
  v11 = shortcutCopy;
LABEL_8:
}

- (BOOL)menuViewController:(id)controller shouldPersistSelectionForShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  configuration = [(_UIKeyShortcutHUDViewController *)self configuration];
  clientTraits = [configuration clientTraits];
  if ([clientTraits isSystemApp])
  {
    uiKeyCommand = [shortcutCopy uiKeyCommand];
    WeakRetained = objc_loadWeakRetained(&self->_showShortcutsKeyCommand);
    v10 = [uiKeyCommand isEqual:WeakRetained];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)toolbarViewController:(id)controller didUpdateSearchText:(id)text
{
  controllerCopy = controller;
  textCopy = text;
  if ([(_UIKeyShortcutHUDViewController *)self shouldIgnoreNextSearchFieldTextChangedCallback])
  {
    [(_UIKeyShortcutHUDViewController *)self setShouldIgnoreNextSearchFieldTextChangedCallback:0];
  }

  else if ([(_UIKeyShortcutHUDViewController *)self isSearching])
  {
    [(_UIKeyShortcutHUDViewController *)self _stopInFlightAnimationsForAnimator:self->_menuPanelAnimator endPosition:2];
    model = [(_UIKeyShortcutHUDConfiguration *)self->_configuration model];
    v9 = [model searchMenuWithSearchText:textCopy maxSearchResultEntries:{-[UIKeyShortcutHUDMetrics maxNumberOfCellsInSearchResults](self->_metrics, "maxNumberOfCellsInSearchResults")}];

    if (([v9 isEmpty] & 1) == 0)
    {
      [(_UIKeyShortcutHUDViewController *)self _setDisplayedMenu:v9 animated:0];
      [(_UIKeyShortcutHUDViewController *)self _focusTopSearchResultWithDelay:0];
    }

    view = [(UIViewController *)self->_menuVC view];
    [view alpha];
    v12 = v11;

    isEmpty = [v9 isEmpty];
    metrics = self->_metrics;
    if ((isEmpty ^ 1))
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
    _defaultMenuPanelAnimator = [(_UIKeyShortcutHUDViewController *)self _defaultMenuPanelAnimator];
    menuPanelAnimator = self->_menuPanelAnimator;
    self->_menuPanelAnimator = _defaultMenuPanelAnimator;

    v22 = self->_menuPanelAnimator;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __77___UIKeyShortcutHUDViewController_toolbarViewController_didUpdateSearchText___block_invoke;
    v28[3] = &unk_1E7101C60;
    objc_copyWeak(&v29, &location);
    v30 = isEmpty ^ 1;
    [(UIViewPropertyAnimator *)v22 addAnimations:v28];
    if ((((v12 > 0.0) ^ isEmpty) & 1) != 0 || (isEmpty & 1) == 0)
    {
      [(_UIKeyShortcutHUDViewController *)self _setMenuHeight:*&v16];
      [(_UIKeyShortcutHUDViewController *)self _setMenuWidth:*&v19];
      view2 = [(UIViewController *)self view];
      [view2 layoutIfNeeded];
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