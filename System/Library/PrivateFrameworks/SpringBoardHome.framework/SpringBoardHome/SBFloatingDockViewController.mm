@interface SBFloatingDockViewController
- (BOOL)_isInAppToAppTransition;
- (BOOL)_isInSwitcherTransition;
- (BOOL)_isLibraryContainedInForeground;
- (BOOL)_shouldOpenFolderIcon:(id)icon;
- (BOOL)allowsFocus;
- (BOOL)canAddIcon:(id)icon toIconList:(id)list inFolder:(id)folder;
- (BOOL)iconListView:(id)view canHandleDataDropSession:(id)session;
- (BOOL)iconListView:(id)view canHandleIconDropSession:(id)session;
- (BOOL)iconListView:(id)view shouldAllowSpringLoadedInteractionForIconDropSession:(id)session onIconView:(id)iconView;
- (BOOL)iconViewCanBecomeFocused:(id)focused;
- (BOOL)isDefaultContainerForegroundForPresenter:(id)presenter;
- (BOOL)isDisplayingIcon:(id)icon;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location;
- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations;
- (BOOL)isDisplayingIconView:(id)view;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (BOOL)isIconViewRecycled:(id)recycled;
- (BOOL)isLibraryPodIconEffectivelyVisible;
- (BOOL)isPresentingFolder;
- (BOOL)isPresentingIconLocation:(id)location;
- (BOOL)isPresentingLibrary;
- (BOOL)isPresentingLibraryInForeground;
- (CGRect)floatingDockScreenFrame;
- (CGRect)floatingDockScreenPresentationFrame;
- (CGSize)maximumEditingIconSize;
- (Class)controllerClassForFolder:(id)folder;
- (NSSet)presentedIconLocations;
- (SBFloatingDockView)dockView;
- (SBFloatingDockViewController)initWithDockListModel:(id)model utilitiesListModel:(id)listModel listLayoutProvider:(id)provider iconViewProvider:(id)viewProvider maxCombinedUserAndUtilitiesIconCountEnforced:(BOOL)enforced;
- (SBFloatingDockViewController)initWithIconManager:(id)manager iconViewProvider:(id)provider;
- (SBFloatingDockViewControllerDelegate)delegate;
- (SBFloatingDockViewControllerIconDelegate)iconDelegate;
- (SBFolderController)presentedFolderController;
- (SBHIconModel)iconModel;
- (SBIconView)libraryPodIconView;
- (SBIconViewProviding)iconViewProvider;
- (UIWindow)animationWindow;
- (double)contentHeight;
- (double)contentHeightForFrame:(CGRect)frame;
- (double)maximumDockContinuousCornerRadius;
- (double)minimumHomeScreenScaleForFolderPresentationController:(id)controller;
- (double)minimumVerticalMarginForFrame:(CGRect)frame;
- (double)preferredVerticalMargin;
- (double)requestedVerticalMargin;
- (double)translationFromFullyPresentedFrame;
- (id)_backdropGroupName;
- (id)acquireOrderSourceContainerViewBeforeLibraryViewAssertionForReason:(id)reason;
- (id)configureForPresentingLibraryViewController:(id)controller;
- (id)containerViewControllerForPresentingInForeground:(id)foreground;
- (id)customImageViewControllerForIconView:(id)view;
- (id)dequeueReusableIconViewOfClass:(Class)class;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)firstIconViewForIcon:(id)icon;
- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon options:(unint64_t)options;
- (id)folderController:(id)controller accessibilityTintColorForScreenRect:(CGRect)rect;
- (id)folderPresentationController:(id)controller animationControllerForTransitionWithFolder:(id)folder presenting:(BOOL)presenting animated:(BOOL)animated;
- (id)folderPresentationController:(id)controller sourceViewForPresentingViewController:(id)viewController;
- (id)iconListView:(id)view customSpringAnimationBehaviorForDroppingItem:(id)item;
- (id)iconListView:(id)view dataDropSessionDidUpdate:(id)update;
- (id)iconListView:(id)view iconDropSessionDidUpdate:(id)update;
- (id)iconListView:(id)view previewForDroppingIconDragItem:(id)item proposedPreview:(id)preview;
- (id)iconViewForIcon:(id)icon location:(id)location;
- (id)recentIconListView;
- (id)succinctDescription;
- (id)suggestionsIconLocation;
- (id)userIconListView;
- (id)utilitiesIconListView;
- (int64_t)_backgroundUserInterfaceStyle;
- (int64_t)interfaceOrientation;
- (unint64_t)_backgroundEffectForPresentedFolder;
- (unint64_t)_maxCombinedUserAndUtilitiesIconCount;
- (unint64_t)_platterEffectForPresentedFolder;
- (void)_addIconsIntoFloatingDock:(unint64_t)dock;
- (void)_addIconsToFloatingDock;
- (void)_addMaxNumberOfIconsAllowedToDockOutlet;
- (void)_bounceIconView:(id)view;
- (void)_bounceIconView:(id)view maxHeight:(double)height animationDuration:(double)duration bounceCount:(unint64_t)count;
- (void)_coalesceRequestsToResizeDockForChangedNumberOfIcons;
- (void)_enforceMaxCombinedUserAndUtilitiesIconCount:(BOOL)count;
- (void)_presentFolderForIcon:(id)icon location:(id)location animated:(BOOL)animated completion:(id)completion;
- (void)_rebuildLibraryPodIcon;
- (void)_rebuildUserIconListView;
- (void)_rebuildUtilitiesIconListView;
- (void)_removeIconsFromFloatingDock;
- (void)_removeIconsFromFloatingDock:(unint64_t)dock;
- (void)_resizeDockForChangedNumberOfIconsAnimated:(BOOL)animated;
- (void)_setUpFloatingDockPrototypeSettings;
- (void)_sizeCategoryDidChange:(id)change;
- (void)_updateDockForStyleConfiguration:(id)configuration;
- (void)_updateEditingStateAnimated:(BOOL)animated;
- (void)_updateLibraryPodDockAccessoryViewDisplayed;
- (void)_updateLibraryPodIconComponentVisibility;
- (void)_updatePlatterShadowForStyleConfiguration:(id)configuration;
- (void)_updatePresentedFolderBackgroundForStyleConfiguration:(id)configuration;
- (void)_updateViewBackdropGroupName;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)cleanUpAfterUnderlyingBackgroundStyleTransition;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)coronaAnimationController:(id)controller willAnimateCoronaTransitionWithAnimator:(id)animator;
- (void)dealloc;
- (void)dismissLibraryAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissPresentedFolderAnimated:(BOOL)animated completion:(id)completion;
- (void)dockViewDidBecomeVisible;
- (void)dockViewDidResignVisible;
- (void)dockViewWillBecomeVisible;
- (void)dockViewWillResignVisible;
- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)block;
- (void)enumerateIconListViewsUsingBlock:(id)block;
- (void)enumerateIconListsUsingBlock:(id)block;
- (void)enumerateVisibleIconViewsUsingBlock:(id)block;
- (void)floatingDockViewMainPlatterDidChangeFrame:(id)frame;
- (void)folderController:(id)controller didBeginEditingTitle:(id)title;
- (void)folderController:(id)controller didEndEditingTitle:(id)title;
- (void)folderControllerShouldBeginEditing:(id)editing withHaptic:(BOOL)haptic;
- (void)folderControllerShouldEndEditing:(id)editing;
- (void)folderControllerWillBeginScrolling:(id)scrolling;
- (void)folderControllerWillClose:(id)close;
- (void)folderControllerWillOpen:(id)open;
- (void)folderPresentationController:(id)controller willPerformTransitionWithFolder:(id)folder presenting:(BOOL)presenting withTransitionCoordinator:(id)coordinator;
- (void)icon:(id)icon touchMoved:(id)moved;
- (void)iconList:(id)list didAddIcon:(id)icon;
- (void)iconList:(id)list didRemoveIcon:(id)icon;
- (void)iconListView:(id)view iconDragItem:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)iconListView:(id)view iconDropSessionDidEnter:(id)enter;
- (void)iconListView:(id)view iconDropSessionDidExit:(id)exit;
- (void)iconListView:(id)view performIconDrop:(id)drop;
- (void)iconListView:(id)view springLoadedInteractionForIconDragDidCompleteOnIconView:(id)iconView;
- (void)iconListView:(id)view willUseIconView:(id)iconView forDroppingIconDragItem:(id)item;
- (void)iconTapped:(id)tapped;
- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller;
- (void)layoutUserControlledIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout;
- (void)libraryIndicatorIconView:(id)view didAcceptDropForSession:(id)session;
- (void)prepareForTransitionToStyleConfiguration:(id)configuration fromDockVisible:(BOOL)visible toDockVisible:(BOOL)dockVisible;
- (void)presentFolderForIcon:(id)icon location:(id)location animated:(BOOL)animated completion:(id)completion;
- (void)presentLibraryAnimated:(BOOL)animated completion:(id)completion;
- (void)recycleIconView:(id)view;
- (void)reduceTransparencyEnabledStateDidChange:(id)change;
- (void)returnScalingView;
- (void)setDockListModel:(id)model;
- (void)setDockOffscreenProgress:(double)progress;
- (void)setDockUtilitiesListModel:(id)model;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setFolderIconImageCache:(id)cache;
- (void)setIconImageCache:(id)cache;
- (void)setIconsDragging:(BOOL)dragging;
- (void)setLegibilitySettings:(id)settings;
- (void)setLibraryPodIconEnabled:(BOOL)enabled;
- (void)setLibraryPodIconVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated;
- (void)setMaximumEditingIconSize:(CGSize)size;
- (void)setPrefersFlatImageLayers:(BOOL)layers;
- (void)setRequestedVerticalMargin:(double)margin;
- (void)setSuggestionsViewController:(id)controller;
- (void)setSuppressesEditingStateForListViews:(BOOL)views;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)toggleLibraryPresentedAnimated:(BOOL)animated completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SBFloatingDockViewController

- (SBFloatingDockViewController)initWithIconManager:(id)manager iconViewProvider:(id)provider
{
  managerCopy = manager;
  providerCopy = provider;
  iconModel = [managerCopy iconModel];
  rootFolder = [iconModel rootFolder];
  dock = [rootFolder dock];
  iconModel2 = [managerCopy iconModel];
  rootFolder2 = [iconModel2 rootFolder];
  dockUtilities = [rootFolder2 dockUtilities];
  listLayoutProvider = [managerCopy listLayoutProvider];
  v14 = -[SBFloatingDockViewController initWithDockListModel:utilitiesListModel:listLayoutProvider:iconViewProvider:maxCombinedUserAndUtilitiesIconCountEnforced:](self, "initWithDockListModel:utilitiesListModel:listLayoutProvider:iconViewProvider:maxCombinedUserAndUtilitiesIconCountEnforced:", dock, dockUtilities, listLayoutProvider, providerCopy, [managerCopy shouldEnforceMaxCombinedUserAndUtilitiesIconCountForFloatingDock]);

  if (v14)
  {
    [(SBFloatingDockViewController *)v14 setIconDelegate:managerCopy];
    iconImageCache = [managerCopy iconImageCache];
    [(SBFloatingDockViewController *)v14 setIconImageCache:iconImageCache];

    folderIconImageCache = [managerCopy folderIconImageCache];
    [(SBFloatingDockViewController *)v14 setFolderIconImageCache:folderIconImageCache];

    iconDragManager = [managerCopy iconDragManager];
    [(SBFloatingDockViewController *)v14 setIconDragManager:iconDragManager];
  }

  return v14;
}

- (SBFloatingDockViewController)initWithDockListModel:(id)model utilitiesListModel:(id)listModel listLayoutProvider:(id)provider iconViewProvider:(id)viewProvider maxCombinedUserAndUtilitiesIconCountEnforced:(BOOL)enforced
{
  enforcedCopy = enforced;
  v28[2] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  listModelCopy = listModel;
  providerCopy = provider;
  viewProviderCopy = viewProvider;
  v27.receiver = self;
  v27.super_class = SBFloatingDockViewController;
  v17 = [(SBFloatingDockViewController *)&v27 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_listLayoutProvider, provider);
    objc_storeWeak(&v18->_iconViewProvider, viewProviderCopy);
    objc_storeStrong(&v18->_dockListModel, model);
    objc_storeStrong(&v18->_dockUtilitiesListModel, listModel);
    v18->_isAnimatingIconViewBounce = 0;
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    originalDragItemsPreviewProvider = v18->_originalDragItemsPreviewProvider;
    v18->_originalDragItemsPreviewProvider = v19;

    [(SBFloatingDockViewController *)v18 _enforceMaxCombinedUserAndUtilitiesIconCount:enforcedCopy];
    [modelCopy addListObserver:v18];
    [listModelCopy addListObserver:v18];
    v21 = +[SBHFloatingDockStyleConfiguration defaultConfiguration];
    [(SBFloatingDockViewController *)v18 setUnderlyingPresentationStyleConfiguration:v21];

    [(SBFloatingDockViewController *)v18 _setUpFloatingDockPrototypeSettings];
    v22 = objc_opt_self();
    v28[0] = v22;
    v23 = objc_opt_self();
    v28[1] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v25 = [(SBFloatingDockViewController *)v18 registerForTraitChanges:v24 withAction:sel__updateViewBackdropGroupName];
  }

  return v18;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBFloatingDockViewController;
  [(SBFloatingDockViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = SBFloatingDockViewController;
  [(SBFloatingDockViewController *)&v16 viewDidLoad];
  view = [(SBFloatingDockViewController *)self view];
  v4 = objc_alloc_init(SBFloatingDockView);
  [(SBFloatingDockView *)v4 setDelegate:self];
  [(SBFloatingDockViewController *)self setDockView:v4];
  [view addSubview:v4];
  [(SBFloatingDockViewController *)self _rebuildUserIconListView];
  [(SBFloatingDockViewController *)self _rebuildUtilitiesIconListView];
  self->_libraryPodIconVisible = 1;
  [(SBFloatingDockViewController *)self _updateLibraryPodDockAccessoryViewDisplayed];
  suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
  if (suggestionsViewController)
  {
    [(SBFloatingDockViewController *)self addChildViewController:suggestionsViewController];
    listView = [suggestionsViewController listView];
    [(SBFloatingDockView *)v4 setRecentIconListView:listView];
    [suggestionsViewController didMoveToParentViewController:self];
    iconImageCache = [(SBFloatingDockViewController *)self iconImageCache];
    [listView setIconImageCache:iconImageCache];

    folderIconImageCache = [(SBFloatingDockViewController *)self folderIconImageCache];
    [listView setFolderIconImageCache:folderIconImageCache];
  }

  v9 = objc_alloc_init(SBFolderPresentingViewController);
  [(SBFolderPresentingViewController *)v9 setFolderPresentationDelegate:self];
  [(SBFloatingDockViewController *)self setFolderPresentingViewController:v9];
  view2 = [(SBFolderPresentingViewController *)v9 view];
  [view2 setAutoresizingMask:18];

  view3 = [(SBFolderPresentingViewController *)v9 view];
  [view bounds];
  [view3 setFrame:?];

  [(SBFloatingDockViewController *)self bs_addChildViewController:v9];
  view4 = [(SBFolderPresentingViewController *)v9 view];
  [view sendSubviewToBack:view4];

  v13 = [SBHTouchPassThroughView alloc];
  [view bounds];
  v14 = [(SBHTouchPassThroughView *)v13 initWithFrame:?];
  [(SBHTouchPassThroughView *)v14 setAutoresizingMask:18];
  [(SBFloatingDockViewController *)self setScalingView:v14];
  [view addSubview:v14];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_reduceTransparencyEnabledStateDidChange_ name:*MEMORY[0x1E69DD920] object:0];
  [defaultCenter addObserver:self selector:sel__sizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SBFloatingDockViewController;
  [(SBFloatingDockViewController *)&v7 viewDidAppear:appear];
  dockView = [(SBFloatingDockViewController *)self dockView];
  window = [dockView window];

  if (objc_opt_respondsToSelector())
  {
    sb_coronaAnimationController = [window sb_coronaAnimationController];
    [sb_coronaAnimationController addParticipant:self];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SBFloatingDockViewController;
  [(SBFloatingDockViewController *)&v7 viewDidDisappear:disappear];
  dockView = [(SBFloatingDockViewController *)self dockView];
  window = [dockView window];

  if (objc_opt_respondsToSelector())
  {
    sb_coronaAnimationController = [window sb_coronaAnimationController];
    [sb_coronaAnimationController removeParticipant:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v25.receiver = self;
  v25.super_class = SBFloatingDockViewController;
  [(SBFloatingDockViewController *)&v25 viewDidLayoutSubviews];
  view = [(SBFloatingDockViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SBFloatingDockViewController *)self contentHeightForFrame:?];
  UICeilToViewScale();
  v13 = v12;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  CGRectDivide(v26, &slice, &remainder, v13, CGRectMaxYEdge);
  [(SBFloatingDockView *)self->_dockView setBounds:0.0, 0.0, slice.size.width, slice.size.height];
  dockView = self->_dockView;
  UIRectGetCenter();
  [(SBFloatingDockView *)dockView setCenter:?];
  v15 = self->_dockView;
  [(SBFloatingDockViewController *)self translationFromFullyPresentedFrame];
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&v21.a = *MEMORY[0x1E695EFD0];
  *&v21.c = v16;
  *&v21.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformTranslate(&v22, &v21, 0.0, v17);
  [(SBFloatingDockView *)v15 setTransform:&v22];
  [(SBFloatingDockViewController *)self lastDockHeight];
  if (v13 != v18)
  {
    [(SBFloatingDockViewController *)self setLastDockHeight:v13];
    iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
    if (objc_opt_respondsToSelector())
    {
      [iconDelegate floatingDockViewController:self didChangeContentHeight:0 animated:v13];
    }

    delegate = [(SBFloatingDockViewController *)self delegate];
    [delegate floatingDockViewController:self didChangeContentHeight:v13];
  }

  [(SBFloatingDockView *)self->_dockView setFocusGroupIdentifier:@"FolderViewFocusGroup"];
}

- (SBFloatingDockView)dockView
{
  [(SBFloatingDockViewController *)self loadViewIfNeeded];
  dockView = self->_dockView;

  return dockView;
}

- (id)userIconListView
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  userIconListView = [dockView userIconListView];

  return userIconListView;
}

- (id)utilitiesIconListView
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  utilitiesIconListView = [dockView utilitiesIconListView];

  return utilitiesIconListView;
}

- (SBIconView)libraryPodIconView
{
  libraryPodIconView = self->_libraryPodIconView;
  if (!libraryPodIconView)
  {
    v4 = objc_alloc_init(SBHLibraryPodIndicatorIcon);
    v5 = +[SBDockIconListView defaultIconViewConfigurationOptions];
    v6 = [SBIconView alloc];
    listLayoutProvider = [(SBFloatingDockViewController *)self listLayoutProvider];
    v8 = [(SBIconView *)v6 initWithConfigurationOptions:v5 | 0x10 listLayoutProvider:listLayoutProvider];

    [(SBIconView *)v8 setDelegate:self];
    [(SBIconView *)v8 addObserver:self];
    [(SBIconView *)v8 setIcon:v4];
    [(SBIconView *)v8 setAllowsCloseBox:0];
    [(SBIconView *)v8 setAllowsEditingAnimation:0];
    [(SBIconView *)v8 setIconContentScalingEnabled:1];
    userIconLocation = [(SBFloatingDockViewController *)self userIconLocation];
    [(SBIconView *)v8 setLocation:userIconLocation animated:0];

    iconImageCache = [(SBFloatingDockViewController *)self iconImageCache];
    [(SBIconView *)v8 setIconImageCache:iconImageCache];

    folderIconImageCache = [(SBFloatingDockViewController *)self folderIconImageCache];
    [(SBIconView *)v8 setFolderIconImageCache:folderIconImageCache];

    [(SBIconView *)v8 setPrefersFlatImageLayers:[(SBFloatingDockViewController *)self prefersFlatImageLayers]];
    v12 = [[SBHLibraryIndicatorIconDropInteractionDelegate alloc] initWithLibraryIndicatorIconView:v8];
    libraryIconDropInteractionDelegate = self->_libraryIconDropInteractionDelegate;
    self->_libraryIconDropInteractionDelegate = v12;

    [(SBHLibraryIndicatorIconDropInteractionDelegate *)self->_libraryIconDropInteractionDelegate setContextProvider:self];
    objc_storeStrong(&self->_libraryPodIconView, v8);
    v14 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__SBFloatingDockViewController_libraryPodIconView__block_invoke;
    v17[3] = &unk_1E8088C90;
    v18 = v8;
    v15 = v8;
    [v14 performWithoutAnimation:v17];

    libraryPodIconView = self->_libraryPodIconView;
  }

  return libraryPodIconView;
}

uint64_t __50__SBFloatingDockViewController_libraryPodIconView__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (id)recentIconListView
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  recentIconListView = [dockView recentIconListView];

  return recentIconListView;
}

- (void)setLibraryPodIconEnabled:(BOOL)enabled
{
  if (self->_libraryPodIconEnabled != enabled)
  {
    isLibraryPodIconEffectivelyVisible = [(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible];
    self->_libraryPodIconEnabled = enabled;
    if (isLibraryPodIconEffectivelyVisible != [(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible])
    {
      [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:1];
    }

    if (!enabled)
    {
      libraryPodIconView = self->_libraryPodIconView;
      self->_libraryPodIconView = 0;

      libraryIconViewController = self->_libraryIconViewController;
      self->_libraryIconViewController = 0;

      libraryIconDropInteractionDelegate = self->_libraryIconDropInteractionDelegate;
      self->_libraryIconDropInteractionDelegate = 0;

      [(SBFloatingDockViewController *)self _updateLibraryPodDockAccessoryViewDisplayed];
    }
  }
}

- (void)_rebuildLibraryPodIcon
{
  if ([(SBFloatingDockViewController *)self isLibraryPodIconEnabled])
  {
    libraryPodIconView = self->_libraryPodIconView;
    self->_libraryPodIconView = 0;

    libraryIconViewController = self->_libraryIconViewController;
    self->_libraryIconViewController = 0;

    libraryIconDropInteractionDelegate = self->_libraryIconDropInteractionDelegate;
    self->_libraryIconDropInteractionDelegate = 0;

    dockView = [(SBFloatingDockViewController *)self dockView];
    [dockView setAccessoryIconView:0];
    [(SBFloatingDockViewController *)self _updateLibraryPodDockAccessoryViewDisplayed];
  }
}

- (void)setLibraryPodIconVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_libraryPodIconVisible != visible)
  {
    animatedCopy = animated;
    isLibraryPodIconEffectivelyVisible = [(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible];
    self->_libraryPodIconVisible = visible;
    if (isLibraryPodIconEffectivelyVisible != [(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible])
    {

      [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:animatedCopy];
    }
  }
}

- (BOOL)isLibraryPodIconEffectivelyVisible
{
  isLibraryPodIconEnabled = [(SBFloatingDockViewController *)self isLibraryPodIconEnabled];
  if (isLibraryPodIconEnabled)
  {

    LOBYTE(isLibraryPodIconEnabled) = [(SBFloatingDockViewController *)self isLibraryPodIconVisible];
  }

  return isLibraryPodIconEnabled;
}

- (id)configureForPresentingLibraryViewController:(id)controller
{
  controllerCopy = controller;
  libraryViewController = self->_libraryViewController;
  if (libraryViewController != controllerCopy)
  {
    [(SBHLibraryViewController *)libraryViewController removeObserver:self];
    objc_storeStrong(&self->_libraryViewController, controller);
    [(SBHLibraryViewController *)self->_libraryViewController addObserver:self];
    libraryIconViewController = self->_libraryIconViewController;
    podFolderViewController = [(SBHLibraryViewController *)controllerCopy podFolderViewController];
    dataSource = [podFolderViewController dataSource];
    [(SBHLibraryIconViewController *)libraryIconViewController setLibraryDataSource:dataSource];

    if (controllerCopy)
    {
      delegate = [(SBFloatingDockViewController *)self delegate];
      v11 = [delegate libraryContainerViewControllerForFloatingDockViewController:self];
      v12 = v11;
      if (v11)
      {
        selfCopy = v11;
      }

      else
      {
        selfCopy = self;
      }

      v14 = selfCopy;

      v15 = [[SBHModalLibraryPresenter alloc] initWithContainerViewController:v14 libraryViewController:controllerCopy];
      [(SBHModalLibraryPresenter *)v15 setContextProvider:self];
      [(SBHLibraryViewController *)controllerCopy setPresenter:v15];
      [(SBFloatingDockViewController *)self setLibraryPresenter:v15];
    }

    else
    {
      [(SBFloatingDockViewController *)self setLibraryPresenter:0];
    }
  }

  libraryPresenter = [(SBFloatingDockViewController *)self libraryPresenter];

  return libraryPresenter;
}

- (void)setSuggestionsViewController:(id)controller
{
  controllerCopy = controller;
  suggestionsViewController = self->_suggestionsViewController;
  if (suggestionsViewController != controllerCopy)
  {
    v11 = controllerCopy;
    [(SBFloatingDockSuggestionsViewProviding *)suggestionsViewController setFloatingDockViewController:0];
    objc_storeStrong(&self->_suggestionsViewController, controller);
    suggestionsViewController = [(SBFloatingDockSuggestionsViewProviding *)self->_suggestionsViewController setFloatingDockViewController:self];
    controllerCopy = v11;
    if (v11)
    {
      suggestionsViewController = [(SBFloatingDockViewController *)self isViewLoaded];
      controllerCopy = v11;
      if (suggestionsViewController)
      {
        dockView = [(SBFloatingDockViewController *)self dockView];
        [(SBFloatingDockViewController *)self addChildViewController:v11];
        listView = [(SBFloatingDockSuggestionsViewProviding *)v11 listView];
        [dockView setRecentIconListView:listView];
        [(SBFloatingDockSuggestionsViewProviding *)v11 didMoveToParentViewController:self];
        iconImageCache = [(SBFloatingDockViewController *)self iconImageCache];
        [listView setIconImageCache:iconImageCache];

        folderIconImageCache = [(SBFloatingDockViewController *)self folderIconImageCache];
        [listView setFolderIconImageCache:folderIconImageCache];

        controllerCopy = v11;
      }
    }
  }

  MEMORY[0x1EEE66BB8](suggestionsViewController, controllerCopy);
}

- (id)suggestionsIconLocation
{
  suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
  listView = [suggestionsViewController listView];
  iconLocation = [listView iconLocation];

  return iconLocation;
}

- (double)contentHeight
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  [dockView contentHeight];
  v4 = v3;

  return v4;
}

- (double)contentHeightForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dockView = [(SBFloatingDockViewController *)self dockView];
  [dockView contentHeightForBounds:{x, y, width, height}];
  v9 = v8;

  return v9;
}

- (double)preferredVerticalMargin
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  [dockView interIconSpacing];
  v4 = v3;

  return v4;
}

- (double)requestedVerticalMargin
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  [dockView platterVerticalMargin];
  v4 = v3;

  return v4;
}

- (void)setRequestedVerticalMargin:(double)margin
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  [dockView setPlatterVerticalMargin:margin];
}

- (double)minimumVerticalMarginForFrame:(CGRect)frame
{
  BSRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  dockView = [(SBFloatingDockViewController *)self dockView];
  [dockView platterShadowOutsetsForBounds:{v5, v7, v9, v11}];
  v14 = v13;

  return v14;
}

- (double)translationFromFullyPresentedFrame
{
  view = [(SBFloatingDockViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SBFloatingDockViewController *)self contentHeightForFrame:?];
  UICeilToViewScale();
  v13 = v12;
  [(SBFloatingDockViewController *)self dockOffscreenProgress];
  v15 = v14;
  v16 = 0.0;
  if ((BSFloatIsZero() & 1) == 0)
  {
    [(SBFloatingDockViewController *)self minimumVerticalMarginForFrame:v5, v7, v9, v11];
    v16 = v15 * (v13 + v17);
  }

  return v16;
}

- (double)maximumDockContinuousCornerRadius
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  [dockView maximumDockContinuousCornerRadius];
  v4 = v3;

  return v4;
}

- (void)enumerateVisibleIconViewsUsingBlock:(id)block
{
  blockCopy = block;
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__SBFloatingDockViewController_enumerateVisibleIconViewsUsingBlock___block_invoke;
  v11[3] = &unk_1E8089310;
  v6 = blockCopy;
  v12 = v6;
  [userIconListView enumerateIconViewsUsingBlock:v11];

  utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__SBFloatingDockViewController_enumerateVisibleIconViewsUsingBlock___block_invoke_2;
  v9[3] = &unk_1E8089310;
  v10 = v6;
  v8 = v6;
  [utilitiesIconListView enumerateIconViewsUsingBlock:v9];
}

- (void)enumerateIconListViewsUsingBlock:(id)block
{
  blockCopy = block;
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];
  blockCopy[2](blockCopy, userIconListView);

  utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
  blockCopy[2](blockCopy, utilitiesIconListView);

  suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
  listView = [suggestionsViewController listView];

  if (listView)
  {
    blockCopy[2](blockCopy, listView);
  }
}

- (void)setLegibilitySettings:(id)settings
{
  v4 = [SBHLegibilitySettings legibilitySettingsForLegibilitySettings:settings];
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:v4])
  {
    objc_storeStrong(&self->_legibilitySettings, v4);
    folderPresentingViewController = [(SBFloatingDockViewController *)self folderPresentingViewController];
    presentedFolderController = [folderPresentingViewController presentedFolderController];
    [presentedFolderController setLegibilitySettings:v4];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__SBFloatingDockViewController_setLegibilitySettings___block_invoke;
    v7[3] = &unk_1E80908B0;
    v8 = v4;
    [(SBFloatingDockViewController *)self enumerateIconListViewsUsingBlock:v7];
  }
}

- (BOOL)isPresentingFolder
{
  presentedFolderController = [(SBFloatingDockViewController *)self presentedFolderController];
  if (presentedFolderController)
  {
    presentedFolderController2 = [(SBFloatingDockViewController *)self presentedFolderController];
    isOpen = [presentedFolderController2 isOpen];
  }

  else
  {
    isOpen = 0;
  }

  return isOpen;
}

- (SBFolderController)presentedFolderController
{
  folderPresentingViewController = [(SBFloatingDockViewController *)self folderPresentingViewController];
  presentedFolderController = [folderPresentingViewController presentedFolderController];

  return presentedFolderController;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(SBFloatingDockViewController *)self _updateEditingStateAnimated:animated];
  }
}

- (CGSize)maximumEditingIconSize
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  [dockView maximumEditingIconSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setMaximumEditingIconSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  dockView = [(SBFloatingDockViewController *)self dockView];
  [dockView setMaximumEditingIconSize:{width, height}];
}

- (void)setSuppressesEditingStateForListViews:(BOOL)views
{
  if (self->_suppressesEditingStateForListViews != views)
  {
    self->_suppressesEditingStateForListViews = views;
    [(SBFloatingDockViewController *)self _updateEditingStateAnimated:1];
  }
}

- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated
{
  animatedCopy = animated;
  providerCopy = provider;
  if (self->_listLayoutProvider != providerCopy)
  {
    objc_storeStrong(&self->_listLayoutProvider, provider);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __63__SBFloatingDockViewController_setListLayoutProvider_animated___block_invoke;
    v12 = &unk_1E80914E8;
    v8 = providerCopy;
    v13 = v8;
    v14 = animatedCopy;
    [(SBFloatingDockViewController *)self enumerateIconListsUsingBlock:&v9];
    [(SBIconView *)self->_libraryPodIconView setListLayoutProvider:v8 animated:animatedCopy, v9, v10, v11, v12];
    [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:animatedCopy];
  }
}

- (void)setDockListModel:(id)model
{
  modelCopy = model;
  dockListModel = self->_dockListModel;
  if (dockListModel != modelCopy)
  {
    v7 = modelCopy;
    [(SBIconListModel *)dockListModel removeListObserver:self];
    objc_storeStrong(&self->_dockListModel, model);
    [(SBIconListModel *)self->_dockListModel addListObserver:self];
    [(SBFloatingDockViewController *)self _rebuildUserIconListView];
    [(SBFloatingDockViewController *)self _rebuildUtilitiesIconListView];
    [(SBFloatingDockViewController *)self _rebuildLibraryPodIcon];
    dockListModel = [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:0];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](dockListModel, modelCopy);
}

- (void)setDockUtilitiesListModel:(id)model
{
  modelCopy = model;
  dockUtilitiesListModel = self->_dockUtilitiesListModel;
  if (dockUtilitiesListModel != modelCopy)
  {
    v7 = modelCopy;
    [(SBIconListModel *)dockUtilitiesListModel removeListObserver:self];
    objc_storeStrong(&self->_dockUtilitiesListModel, model);
    [(SBIconListModel *)self->_dockUtilitiesListModel addListObserver:self];
    [(SBFloatingDockViewController *)self _rebuildUserIconListView];
    [(SBFloatingDockViewController *)self _rebuildUtilitiesIconListView];
    [(SBFloatingDockViewController *)self _rebuildLibraryPodIcon];
    dockUtilitiesListModel = [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:0];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](dockUtilitiesListModel, modelCopy);
}

- (void)setIconImageCache:(id)cache
{
  cacheCopy = cache;
  if (self->_iconImageCache != cacheCopy)
  {
    objc_storeStrong(&self->_iconImageCache, cache);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__SBFloatingDockViewController_setIconImageCache___block_invoke;
    v7[3] = &unk_1E80908B0;
    v6 = cacheCopy;
    v8 = v6;
    [(SBFloatingDockViewController *)self enumerateIconListViewsUsingBlock:v7];
    [(SBIconView *)self->_libraryPodIconView setIconImageCache:v6];
  }
}

- (void)setFolderIconImageCache:(id)cache
{
  cacheCopy = cache;
  if (self->_folderIconImageCache != cacheCopy)
  {
    objc_storeStrong(&self->_folderIconImageCache, cache);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__SBFloatingDockViewController_setFolderIconImageCache___block_invoke;
    v7[3] = &unk_1E80908B0;
    v6 = cacheCopy;
    v8 = v6;
    [(SBFloatingDockViewController *)self enumerateIconListViewsUsingBlock:v7];
    [(SBIconView *)self->_libraryPodIconView setFolderIconImageCache:v6];
  }
}

- (CGRect)floatingDockScreenFrame
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  window = [dockView window];
  windowScene = [window windowScene];
  screen = [windowScene screen];

  if (screen)
  {
    [dockView platterFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(SBFloatingDockViewController *)self translationFromFullyPresentedFrame];
    v16 = v15;
    v34.origin.x = v8;
    v34.origin.y = v10;
    v34.size.width = v12;
    v34.size.height = v14;
    v35 = CGRectOffset(v34, 0.0, v16);
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
    fixedCoordinateSpace = [screen fixedCoordinateSpace];
    [dockView convertRect:fixedCoordinateSpace toCoordinateSpace:{x, y, width, height}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
  }

  else
  {
    v23 = *MEMORY[0x1E695F058];
    v25 = *(MEMORY[0x1E695F058] + 8);
    v27 = *(MEMORY[0x1E695F058] + 16);
    v29 = *(MEMORY[0x1E695F058] + 24);
  }

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)floatingDockScreenPresentationFrame
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  window = [dockView window];
  windowScene = [window windowScene];
  screen = [windowScene screen];

  if (screen)
  {
    [dockView platterFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(SBFloatingDockViewController *)self translationFromFullyPresentedFrame];
    v16 = v15;
    v45.origin.x = v8;
    v45.origin.y = v10;
    v45.size.width = v12;
    v45.size.height = v14;
    v46 = CGRectOffset(v45, 0.0, v16);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    layer = [dockView layer];
    layer2 = [dockView layer];
    presentationLayer = [layer2 presentationLayer];
    [layer convertRect:presentationLayer fromLayer:{x, y, width, height}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    fixedCoordinateSpace = [screen fixedCoordinateSpace];
    [dockView convertRect:fixedCoordinateSpace toCoordinateSpace:{v25, v27, v29, v31}];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
  }

  else
  {
    v34 = *MEMORY[0x1E695F058];
    v36 = *(MEMORY[0x1E695F058] + 8);
    v38 = *(MEMORY[0x1E695F058] + 16);
    v40 = *(MEMORY[0x1E695F058] + 24);
  }

  v41 = v34;
  v42 = v36;
  v43 = v38;
  v44 = v40;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (void)dockViewWillBecomeVisible
{
  [(SBFloatingDockViewController *)self _updateLibraryPodIconComponentVisibility];
  dockView = [(SBFloatingDockViewController *)self dockView];
  [dockView setHidden:0];

  [(SBFloatingDockViewController *)self enumerateVisibleIconViewsUsingBlock:&__block_literal_global_77];
  suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
  [suggestionsViewController dockViewWillBecomeVisible];

  delegate = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockViewWillBecomeVisible:self];
  }
}

- (void)dockViewWillResignVisible
{
  [(SBFloatingDockViewController *)self enumerateVisibleIconViewsUsingBlock:&__block_literal_global_73_0];
  suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
  [suggestionsViewController dockViewWillResignVisible];

  delegate = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockViewWillResignVisible:self];
  }
}

- (void)dockViewDidResignVisible
{
  suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
  [suggestionsViewController dockViewDidResignVisible];

  dockView = [(SBFloatingDockViewController *)self dockView];
  window = [dockView window];
  sb_coronaAnimationController = [window sb_coronaAnimationController];
  [sb_coronaAnimationController removeParticipant:self];

  [dockView setHidden:1];
  [(SBFloatingDockViewController *)self _updateLibraryPodIconComponentVisibility];
  v6 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:dockView];
  [v6 _focusEnvironmentWillDisappear:dockView];
  delegate = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockViewDidResignVisible:self];
  }
}

- (void)dockViewDidBecomeVisible
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  window = [dockView window];
  sb_coronaAnimationController = [window sb_coronaAnimationController];
  [sb_coronaAnimationController addParticipant:self];

  suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
  [suggestionsViewController dockViewDidBecomeVisible];
}

- (void)layoutUserControlledIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout
{
  relayoutCopy = relayout;
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];
  v12 = userIconListView;
  if (relayoutCopy)
  {
    [userIconListView setIconsNeedLayout];
    userIconListView = v12;
  }

  [userIconListView layoutIconsIfNeededWithAnimationType:type options:0];
  utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
  v9 = utilitiesIconListView;
  if (relayoutCopy)
  {
    [utilitiesIconListView setIconsNeedLayout];
  }

  [v9 layoutIconsIfNeededWithAnimationType:type options:0];
  presentedFolderController = [(SBFloatingDockViewController *)self presentedFolderController];
  [presentedFolderController layoutIconListsWithAnimationType:type forceRelayout:relayoutCopy];

  delegate = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockViewDidBecomeVisible:self];
  }
}

- (void)enumerateIconListsUsingBlock:(id)block
{
  blockCopy = block;
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];
  blockCopy[2](blockCopy, userIconListView);
  recentIconListView = [(SBFloatingDockViewController *)self recentIconListView];
  blockCopy[2](blockCopy, recentIconListView);
  utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
  blockCopy[2](blockCopy, utilitiesIconListView);
}

- (BOOL)isDisplayingIcon:(id)icon
{
  iconCopy = icon;
  userIconLocation = [(SBFloatingDockViewController *)self userIconLocation];
  v6 = [(SBFloatingDockViewController *)self isDisplayingIcon:iconCopy inLocation:userIconLocation];

  if (v6 || ([(SBFloatingDockViewController *)self utilitiesIconLocation], v7 = objc_claimAutoreleasedReturnValue(), v8 = [(SBFloatingDockViewController *)self isDisplayingIcon:iconCopy inLocation:v7], v7, v8))
  {
    v9 = 1;
  }

  else
  {
    suggestionsIconLocation = [(SBFloatingDockViewController *)self suggestionsIconLocation];
    v9 = suggestionsIconLocation && [(SBFloatingDockViewController *)self isDisplayingIcon:iconCopy inLocation:suggestionsIconLocation];
  }

  return v9;
}

- (BOOL)isDisplayingIconView:(id)view
{
  viewCopy = view;
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];
  if ([userIconListView isDisplayingIconView:viewCopy])
  {
    v6 = 1;
  }

  else
  {
    suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
    listView = [suggestionsViewController listView];

    if ([listView isDisplayingIconView:viewCopy])
    {
      v6 = 1;
    }

    else
    {
      utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
      v6 = [utilitiesIconListView isDisplayingIconView:viewCopy];
    }
  }

  return v6;
}

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  locationCopy = location;
  userIconLocation = [(SBFloatingDockViewController *)self userIconLocation];
  v9 = [locationCopy isEqualToString:userIconLocation];

  if (v9)
  {
    userIconListView = [(SBFloatingDockViewController *)self userIconListView];
LABEL_5:
    listView = userIconListView;
LABEL_6:
    v14 = [userIconListView isDisplayingIconView:viewCopy];
    goto LABEL_7;
  }

  utilitiesIconLocation = [(SBFloatingDockViewController *)self utilitiesIconLocation];
  v12 = [locationCopy isEqualToString:utilitiesIconLocation];

  if (v12)
  {
    userIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
    goto LABEL_5;
  }

  suggestionsIconLocation = [(SBFloatingDockViewController *)self suggestionsIconLocation];
  v18 = [locationCopy isEqualToString:suggestionsIconLocation];

  if (v18)
  {
    suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
    listView = [suggestionsViewController listView];

    userIconListView = listView;
    goto LABEL_6;
  }

  if (!self->_libraryPodIconView || ![(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible])
  {
    v15 = 0;
    goto LABEL_8;
  }

  listView = [(SBIconView *)self->_libraryPodIconView location];
  v14 = [locationCopy isEqualToString:listView];
LABEL_7:
  v15 = v14;

LABEL_8:
  return v15;
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)block
{
  blockCopy = block;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__SBFloatingDockViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v7[3] = &unk_1E8091530;
  v9 = v10;
  v5 = blockCopy;
  v8 = v5;
  [(SBFloatingDockViewController *)self enumerateIconListViewsUsingBlock:v7];
  if (self->_libraryPodIconView && [(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible])
  {
    v6 = 0;
    (*(v5 + 2))(v5, self->_libraryPodIconView, &v6);
  }

  _Block_object_dispose(v10, 8);
}

void __70__SBFloatingDockViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__SBFloatingDockViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke_2;
    v6[3] = &unk_1E808A808;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = v5;
    [a2 enumerateIconViewsUsingBlock:v6];
  }
}

uint64_t __70__SBFloatingDockViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = 0;
  result = (*(*(a1 + 32) + 16))();
  if (v7 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block
{
  iconCopy = icon;
  blockCopy = block;
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];
  v8 = [userIconListView displayedIconViewForIcon:iconCopy];

  if (v8)
  {
    blockCopy[2](blockCopy, v8);
  }

  suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
  listView = [suggestionsViewController listView];
  v11 = [listView displayedIconViewForIcon:iconCopy];

  if (v11)
  {
    blockCopy[2](blockCopy, v11);
  }

  utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
  v13 = [utilitiesIconListView displayedIconViewForIcon:iconCopy];

  if (v13)
  {
    blockCopy[2](blockCopy, v13);
  }

  if (self->_libraryPodIconView)
  {
    if ([(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible])
    {
      icon = [(SBIconView *)self->_libraryPodIconView icon];

      if (icon == iconCopy)
      {
        blockCopy[2](blockCopy, self->_libraryPodIconView);
      }
    }
  }
}

- (void)prepareForTransitionToStyleConfiguration:(id)configuration fromDockVisible:(BOOL)visible toDockVisible:(BOOL)dockVisible
{
  dockVisibleCopy = dockVisible;
  visibleCopy = visible;
  configurationCopy = configuration;
  [(SBFloatingDockViewController *)self setTransitioningUnderlyingPresentationStyleConfiguration:1];
  [(SBFloatingDockViewController *)self setTransitionTargetUnderlyingPresentationStyleConfiguration:configurationCopy];
  if (visibleCopy && dockVisibleCopy)
  {
    v9 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __103__SBFloatingDockViewController_prepareForTransitionToStyleConfiguration_fromDockVisible_toDockVisible___block_invoke;
    v14[3] = &unk_1E8088F18;
    v14[4] = self;
    v10 = &v15;
    v15 = configurationCopy;
    [v9 animateWithDuration:v14 animations:0.3];
LABEL_7:

    goto LABEL_8;
  }

  if (dockVisibleCopy && !visibleCopy)
  {
    v11 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __103__SBFloatingDockViewController_prepareForTransitionToStyleConfiguration_fromDockVisible_toDockVisible___block_invoke_2;
    v12[3] = &unk_1E8088F18;
    v12[4] = self;
    v10 = &v13;
    v13 = configurationCopy;
    [v11 performWithoutAnimation:v12];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)cleanUpAfterUnderlyingBackgroundStyleTransition
{
  transitionTargetUnderlyingPresentationStyleConfiguration = [(SBFloatingDockViewController *)self transitionTargetUnderlyingPresentationStyleConfiguration];
  [(SBFloatingDockViewController *)self setTransitioningUnderlyingPresentationStyleConfiguration:0];
  [(SBFloatingDockViewController *)self setUnderlyingPresentationStyleConfiguration:transitionTargetUnderlyingPresentationStyleConfiguration];
  [(SBFloatingDockViewController *)self _updateDockForStyleConfiguration:transitionTargetUnderlyingPresentationStyleConfiguration];
}

- (void)setDockOffscreenProgress:(double)progress
{
  if (self->_dockOffscreenProgress != progress)
  {
    self->_dockOffscreenProgress = progress;
    viewIfLoaded = [(SBFloatingDockViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];

    viewIfLoaded2 = [(SBFloatingDockViewController *)self viewIfLoaded];
    [viewIfLoaded2 layoutIfNeeded];
  }
}

- (id)iconViewForIcon:(id)icon location:(id)location
{
  iconCopy = icon;
  locationCopy = location;
  suggestionsIconLocation = [(SBFloatingDockViewController *)self suggestionsIconLocation];
  if (suggestionsIconLocation && [locationCopy isEqualToString:suggestionsIconLocation])
  {
    suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
    v10 = [suggestionsViewController iconViewForIcon:iconCopy location:locationCopy];
LABEL_11:
    v22 = v10;

    goto LABEL_13;
  }

  userIconLocation = [(SBFloatingDockViewController *)self userIconLocation];
  v12 = [locationCopy isEqualToString:userIconLocation];

  if (v12)
  {
    userIconListView = [(SBFloatingDockViewController *)self userIconListView];
    model = [userIconListView model];
    v15 = [model directlyContainsIcon:iconCopy];

    if (v15)
    {
      userIconListView2 = [(SBFloatingDockViewController *)self userIconListView];
LABEL_10:
      suggestionsViewController = userIconListView2;
      v10 = [userIconListView2 displayedIconViewForIcon:iconCopy];
      goto LABEL_11;
    }
  }

  else
  {
    utilitiesIconLocation = [(SBFloatingDockViewController *)self utilitiesIconLocation];
    v18 = [locationCopy isEqualToString:utilitiesIconLocation];

    if (v18)
    {
      utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
      model2 = [utilitiesIconListView model];
      v21 = [model2 directlyContainsIcon:iconCopy];

      if (v21)
      {
        userIconListView2 = [(SBFloatingDockViewController *)self utilitiesIconListView];
        goto LABEL_10;
      }
    }
  }

  v22 = 0;
LABEL_13:

  return v22;
}

- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations
{
  v20 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  locationsCopy = locations;
  v8 = [locationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(locationsCopy);
        }

        v12 = [(SBFloatingDockViewController *)self iconViewForIcon:iconCopy location:*(*(&v15 + 1) + 8 * i), v15];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [locationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)firstIconViewForIcon:(id)icon
{
  iconCopy = icon;
  presentedIconLocations = [(SBFloatingDockViewController *)self presentedIconLocations];
  allObjects = [presentedIconLocations allObjects];
  v7 = [(SBFloatingDockViewController *)self firstIconViewForIcon:iconCopy inLocations:allObjects];

  return v7;
}

- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations
{
  locationsCopy = locations;
  iconCopy = icon;
  presentedIconLocations = [(SBFloatingDockViewController *)self presentedIconLocations];
  v9 = [presentedIconLocations mutableCopy];

  [v9 minusSet:locationsCopy];
  allObjects = [v9 allObjects];
  v11 = [(SBFloatingDockViewController *)self firstIconViewForIcon:iconCopy inLocations:allObjects];

  return v11;
}

- (id)firstIconViewForIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];
  v8 = [userIconListView displayedIconViewForIcon:iconCopy];

  if (!v8)
  {
    utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
    v8 = [utilitiesIconListView displayedIconViewForIcon:iconCopy];

    if (!v8)
    {
      if ((options & 0x40) != 0)
      {
        v8 = 0;
      }

      else
      {
        suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
        v8 = SBIconViewQueryingFirstIconViewForIcon(suggestionsViewController, iconCopy, options);
      }
    }
  }

  return v8;
}

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location
{
  iconCopy = icon;
  locationCopy = location;
  suggestionsIconLocation = [(SBFloatingDockViewController *)self suggestionsIconLocation];
  if (suggestionsIconLocation && [locationCopy isEqualToString:suggestionsIconLocation])
  {
    suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
    v10 = [suggestionsViewController isDisplayingIcon:iconCopy inLocation:locationCopy];
  }

  else
  {
    userIconLocation = [(SBFloatingDockViewController *)self userIconLocation];
    v12 = [locationCopy isEqualToString:userIconLocation];

    if (v12)
    {
      userIconListView = [(SBFloatingDockViewController *)self userIconListView];
    }

    else
    {
      utilitiesIconLocation = [(SBFloatingDockViewController *)self utilitiesIconLocation];
      v15 = [locationCopy isEqualToString:utilitiesIconLocation];

      if (!v15)
      {
        v10 = 0;
        goto LABEL_10;
      }

      userIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
    }

    suggestionsViewController = userIconListView;
    model = [userIconListView model];
    v10 = [model directlyContainsIcon:iconCopy];
  }

LABEL_10:
  return v10;
}

- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations
{
  v19 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  locationsCopy = locations;
  v8 = [locationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(locationsCopy);
        }

        if ([(SBFloatingDockViewController *)self isDisplayingIcon:iconCopy inLocation:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [locationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_enforceMaxCombinedUserAndUtilitiesIconCount:(BOOL)count
{
  self->_maxCombinedUserAndUtilitiesIconCountEnforced = count;
  if (count)
  {
    listLayoutProvider = [(SBFloatingDockViewController *)self listLayoutProvider];
    userIconLocation = [(SBFloatingDockViewController *)self userIconLocation];
    v6 = [listLayoutProvider layoutForIconLocation:userIconLocation];
    SBHIconListLayoutMaximumIconCount(v6);

    listLayoutProvider2 = [(SBFloatingDockViewController *)self listLayoutProvider];
    utilitiesIconLocation = [(SBFloatingDockViewController *)self utilitiesIconLocation];
    v8 = [listLayoutProvider2 layoutForIconLocation:utilitiesIconLocation];
    SBHIconListLayoutMaximumIconCount(v8);
  }
}

- (void)_bounceIconView:(id)view
{
  viewCopy = view;
  if (viewCopy && !self->_isAnimatingIconViewBounce)
  {
    v9 = viewCopy;
    objc_storeStrong(&self->_bouncingIconView, view);
    delegate = [(SBFloatingDockViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate floatingDockViewController:self willStartBouncingIconView:v9];
    }

    if ([(SBFloatingDockViewController *)self _isDockViewOffScreen])
    {
      dockView = [(SBFloatingDockViewController *)self dockView];
      [dockView setHidden:0];

      v8 = 180.0;
    }

    else
    {
      v8 = 72.0;
    }

    [(SBFloatingDockViewController *)self _bounceIconView:v9 maxHeight:3 animationDuration:v8 bounceCount:0.5];

    viewCopy = v9;
  }
}

- (void)_bounceIconView:(id)view maxHeight:(double)height animationDuration:(double)duration bounceCount:(unint64_t)count
{
  viewCopy = view;
  v10 = duration <= 0.0 || count == 0;
  if (v10 || !self->_bouncingIconView)
  {
    self->_isAnimatingIconViewBounce = 0;
    delegate = [(SBFloatingDockViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate floatingDockViewController:self didFinishBouncingIconView:self->_bouncingIconView];
    }

    dockView = [(SBFloatingDockViewController *)self dockView];
    [dockView setHidden:{-[SBFloatingDockViewController _isDockViewOffScreen](self, "_isDockViewOffScreen")}];

    bouncingIconView = self->_bouncingIconView;
    self->_bouncingIconView = 0;
  }

  else
  {
    self->_isAnimatingIconViewBounce = 1;
    delegate = [MEMORY[0x1E6979318] animationWithKeyPath:@"position.y"];
    v12 = MEMORY[0x1E696AD98];
    layer = [viewCopy layer];
    [layer position];
    v15 = [v12 numberWithDouble:v14];
    [delegate setFromValue:v15];

    v16 = MEMORY[0x1E696AD98];
    layer2 = [viewCopy layer];
    [layer2 position];
    height = [v16 numberWithDouble:v18 - height];
    [delegate setToValue:height];

    [delegate setDuration:duration * 0.5];
    [delegate setAutoreverses:1];
    v20 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    [delegate setTimingFunction:v20];

    [delegate setDelegate:self];
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:height * 0.5];
    [delegate setValue:v21 forKey:@"SBFloatingDockViewControllerBounceIconViewMaxHeight"];

    v22 = [MEMORY[0x1E696AD98] numberWithDouble:duration * 0.666666667];
    [delegate setValue:v22 forKey:@"SBFloatingDockViewControllerBounceIconViewDuration"];

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count - 1];
    [delegate setValue:v23 forKey:@"SBFloatingDockViewControllerBounceIconViewBounceCount"];

    bouncingIconView = [viewCopy layer];
    [bouncingIconView addAnimation:delegate forKey:@"SBFloatingDockViewControllerBounceIconViewAnimation"];
  }
}

- (void)_rebuildUserIconListView
{
  dockViewIfExists = [(SBFloatingDockViewController *)self dockViewIfExists];
  if (dockViewIfExists)
  {
    v11 = dockViewIfExists;
    dockListModel = [(SBFloatingDockViewController *)self dockListModel];
    v5 = [SBFloatingDockIconListView alloc];
    listLayoutProvider = [(SBFloatingDockViewController *)self listLayoutProvider];
    userIconLocation = [(SBFloatingDockViewController *)self userIconLocation];
    v8 = [(SBDockIconListView *)v5 initWithModel:dockListModel layoutProvider:listLayoutProvider iconLocation:userIconLocation orientation:1 iconViewProvider:self];

    [(SBIconListView *)v8 setIconViewConfigurationOptions:2];
    [(SBIconListView *)v8 setDragDelegate:self];
    iconImageCache = [(SBFloatingDockViewController *)self iconImageCache];
    [(SBIconListView *)v8 setIconImageCache:iconImageCache];

    folderIconImageCache = [(SBFloatingDockViewController *)self folderIconImageCache];
    [(SBIconListView *)v8 setFolderIconImageCache:folderIconImageCache];

    [(SBIconListView *)v8 setAutomaticallyAdjustsLayoutMetricsToFit:0];
    [(SBIconListView *)v8 addLayoutObserver:self];
    [v11 setUserIconListView:v8];

    dockViewIfExists = v11;
  }
}

- (void)_rebuildUtilitiesIconListView
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  if (dockView)
  {
    v11 = dockView;
    dockUtilitiesListModel = [(SBFloatingDockViewController *)self dockUtilitiesListModel];
    if (dockUtilitiesListModel)
    {
      v5 = [SBFloatingDockIconListView alloc];
      listLayoutProvider = [(SBFloatingDockViewController *)self listLayoutProvider];
      utilitiesIconLocation = [(SBFloatingDockViewController *)self utilitiesIconLocation];
      v8 = [(SBDockIconListView *)v5 initWithModel:dockUtilitiesListModel layoutProvider:listLayoutProvider iconLocation:utilitiesIconLocation orientation:1 iconViewProvider:self];

      [(SBIconListView *)v8 setIconViewConfigurationOptions:2];
      [(SBIconListView *)v8 setDragDelegate:self];
      iconImageCache = [(SBFloatingDockViewController *)self iconImageCache];
      [(SBIconListView *)v8 setIconImageCache:iconImageCache];

      folderIconImageCache = [(SBFloatingDockViewController *)self folderIconImageCache];
      [(SBIconListView *)v8 setFolderIconImageCache:folderIconImageCache];

      [(SBIconListView *)v8 setAutomaticallyAdjustsLayoutMetricsToFit:0];
      [(SBIconListView *)v8 addLayoutObserver:self];
      [v11 setUtilitiesIconListView:v8];
    }

    dockView = v11;
  }
}

- (BOOL)canAddIcon:(id)icon toIconList:(id)list inFolder:(id)folder
{
  listCopy = list;
  dockListModel = [(SBFloatingDockViewController *)self dockListModel];

  dockUtilitiesListModel = [(SBFloatingDockViewController *)self dockUtilitiesListModel];

  if (dockListModel != listCopy && dockUtilitiesListModel != listCopy || !self->_maxCombinedUserAndUtilitiesIconCountEnforced)
  {
    return 1;
  }

  dockListModel2 = [(SBFloatingDockViewController *)self dockListModel];
  icons = [dockListModel2 icons];
  v11 = [icons count];
  dockUtilitiesListModel2 = [(SBFloatingDockViewController *)self dockUtilitiesListModel];
  icons2 = [dockUtilitiesListModel2 icons];
  v14 = [icons2 count] + v11;

  return v14 < [(SBFloatingDockViewController *)self _maxCombinedUserAndUtilitiesIconCount];
}

- (unint64_t)_maxCombinedUserAndUtilitiesIconCount
{
  listLayoutProvider = [(SBFloatingDockViewController *)self listLayoutProvider];
  userIconLocation = [(SBFloatingDockViewController *)self userIconLocation];
  v5 = [listLayoutProvider layoutForIconLocation:userIconLocation];
  v6 = SBHIconListLayoutMaximumIconCount(v5);

  return v6;
}

- (void)_updateLibraryPodDockAccessoryViewDisplayed
{
  dockView = [(SBFloatingDockViewController *)self dockView];
  isLibraryPodIconEnabled = [(SBFloatingDockViewController *)self isLibraryPodIconEnabled];
  accessoryIconView = [dockView accessoryIconView];

  if (!isLibraryPodIconEnabled || accessoryIconView)
  {
    if (accessoryIconView != 0 && !isLibraryPodIconEnabled)
    {
      [dockView setAccessoryIconView:0];
    }
  }

  else
  {
    libraryPodIconView = [(SBFloatingDockViewController *)self libraryPodIconView];
    [dockView setAccessoryIconView:libraryPodIconView];
  }

  [dockView setAccessoryIconViewVisible:{-[SBFloatingDockViewController isLibraryPodIconVisible](self, "isLibraryPodIconVisible")}];
}

- (BOOL)_shouldOpenFolderIcon:(id)icon
{
  iconCopy = icon;
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];
  model = [userIconListView model];
  if ([model directlyContainsIcon:iconCopy])
  {
    v7 = 1;
  }

  else
  {
    utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
    model2 = [utilitiesIconListView model];
    v7 = [model2 directlyContainsIcon:iconCopy];
  }

  return v7;
}

- (void)_resizeDockForChangedNumberOfIconsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  resizeRunLoopObserver = self->_resizeRunLoopObserver;
  if (resizeRunLoopObserver)
  {
    CFRunLoopObserverInvalidate(resizeRunLoopObserver);
    CFRelease(self->_resizeRunLoopObserver);
    self->_resizeRunLoopObserver = 0;
  }

  userIconListView = [(SBFloatingDockViewController *)self userIconListView];
  [userIconListView layoutIconsIfNeededWithAnimationType:0 options:0];
  utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
  [utilitiesIconListView layoutIconsIfNeededWithAnimationType:0 options:0];
  [(SBFloatingDockViewController *)self _updateLibraryPodDockAccessoryViewDisplayed];
  dockView = [(SBFloatingDockViewController *)self dockView];
  [dockView setNeedsLayout];
  [dockView contentHeight];
  v10 = v9;
  [dockView frame];
  v15 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__SBFloatingDockViewController__resizeDockForChangedNumberOfIconsAnimated___block_invoke;
  v18[3] = &unk_1E8091558;
  v19 = dockView;
  selfCopy = self;
  if (animatedCopy)
  {
    v16 = 0.3;
  }

  else
  {
    v16 = 0.0;
  }

  v26 = animatedCopy;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v17 = dockView;
  [v15 animateWithDuration:2 delay:v18 options:0 animations:v16 completion:0.0];
}

void __75__SBFloatingDockViewController__resizeDockForChangedNumberOfIconsAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 32) contentHeight];
  v3 = v2;
  v6 = [*(a1 + 40) delegate];
  if (*(a1 + 48) != v3)
  {
    v4 = [*(a1 + 40) iconDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 floatingDockViewController:*(a1 + 40) didChangeContentHeight:*(a1 + 88) animated:v3];
    }

    [v6 floatingDockViewController:*(a1 + 40) didChangeContentHeight:v3];
  }

  [*(a1 + 32) frame];
  if ((BSRectEqualToRect() & 1) == 0)
  {
    v5 = *(a1 + 40);
    [v5 floatingDockScreenFrame];
    [v6 floatingDockViewController:v5 didChangeContentFrame:?];
  }
}

- (void)_coalesceRequestsToResizeDockForChangedNumberOfIcons
{
  if (!self->_resizeRunLoopObserver)
  {
    objc_initWeak(&location, self);
    v3 = *MEMORY[0x1E695E480];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __84__SBFloatingDockViewController__coalesceRequestsToResizeDockForChangedNumberOfIcons__block_invoke;
    v5[3] = &unk_1E8089DA0;
    objc_copyWeak(&v6, &location);
    self->_resizeRunLoopObserver = CFRunLoopObserverCreateWithHandler(v3, 0xA0uLL, 0, 0, v5);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, self->_resizeRunLoopObserver, *MEMORY[0x1E695E8D0]);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __84__SBFloatingDockViewController__coalesceRequestsToResizeDockForChangedNumberOfIcons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resizeDockForChangedNumberOfIconsAnimated:1];
}

- (BOOL)_isInAppToAppTransition
{
  selfCopy = self;
  delegate = [(SBFloatingDockViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate isFloatingDockViewControllerPresentedOverTransitioningAppToAppContent:selfCopy];

  return selfCopy;
}

- (BOOL)_isInSwitcherTransition
{
  selfCopy = self;
  delegate = [(SBFloatingDockViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate isFloatingDockViewControllerPresentedOverTransitioningSwitcherContent:selfCopy];

  return selfCopy;
}

- (BOOL)_isLibraryContainedInForeground
{
  libraryPresenter = [(SBFloatingDockViewController *)self libraryPresenter];
  isLibraryContainedInForeground = [libraryPresenter isLibraryContainedInForeground];

  return isLibraryContainedInForeground;
}

- (unint64_t)_backgroundEffectForPresentedFolder
{
  underlyingPresentationStyleConfiguration = [(SBFloatingDockViewController *)self underlyingPresentationStyleConfiguration];
  backgroundEffect = [underlyingPresentationStyleConfiguration backgroundEffect];

  return backgroundEffect;
}

- (unint64_t)_platterEffectForPresentedFolder
{
  underlyingPresentationStyleConfiguration = [(SBFloatingDockViewController *)self underlyingPresentationStyleConfiguration];
  platterEffect = [underlyingPresentationStyleConfiguration platterEffect];

  return platterEffect;
}

- (void)_updateDockForStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(SBFloatingDockViewController *)self _updatePresentedFolderBackgroundForStyleConfiguration:configurationCopy];
  [(SBFloatingDockViewController *)self _updatePlatterShadowForStyleConfiguration:configurationCopy];

  wantsFastIconReordering = [(SBFloatingDockViewController *)self wantsFastIconReordering];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__SBFloatingDockViewController__updateDockForStyleConfiguration___block_invoke;
  v6[3] = &__block_descriptor_33_e24_v16__0__SBIconListView_8l;
  v7 = wantsFastIconReordering;
  [(SBFloatingDockViewController *)self enumerateIconListViewsUsingBlock:v6];
}

- (void)_updateLibraryPodIconComponentVisibility
{
  if ([(SBFloatingDockViewController *)self isPresentingLibrary])
  {
    isPresentingLibraryInForeground = [(SBFloatingDockViewController *)self isPresentingLibraryInForeground];
    [(SBFloatingDockViewController *)self setLibraryPodIconVisible:isPresentingLibraryInForeground ^ 1 animated:isPresentingLibraryInForeground];
    v4 = self->_libraryIconViewController;
    categoryStackView = [(SBHLibraryIconViewController *)v4 categoryStackView];
    v6 = categoryStackView;
    if (isPresentingLibraryInForeground)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (isPresentingLibraryInForeground)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    [categoryStackView setAlpha:v7];

    dismissalView = [(SBHLibraryIconViewController *)v4 dismissalView];

    [dismissalView setAlpha:v8];
  }
}

- (void)_updatePresentedFolderBackgroundForStyleConfiguration:(id)configuration
{
  folderPresentingViewController = [(SBFloatingDockViewController *)self folderPresentingViewController];
  [folderPresentingViewController setBackgroundEffect:{-[SBFloatingDockViewController _backgroundEffectForPresentedFolder](self, "_backgroundEffectForPresentedFolder")}];
}

- (void)_updatePlatterShadowForStyleConfiguration:(id)configuration
{
  wantsPlatterShadow = [configuration wantsPlatterShadow];
  dockView = [(SBFloatingDockViewController *)self dockView];
  [dockView setHasPlatterShadow:wantsPlatterShadow];
}

- (id)_backdropGroupName
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%p", self];
  v4 = [@"SBFloatingDockViewControllerBackdropGroupName" stringByAppendingString:v3];
  if ([(SBFloatingDockViewController *)self _backgroundUserInterfaceStyle]== 2)
  {
    v5 = @"-Dark";
  }

  else
  {
    v5 = @"-Light";
  }

  v6 = [v4 stringByAppendingString:v5];

  return v6;
}

- (int64_t)_backgroundUserInterfaceStyle
{
  traitCollection = [(SBFloatingDockViewController *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_dockGlassUserInterfaceStyleFromTraitCollection:traitCollection];

  return v3;
}

- (void)_updateViewBackdropGroupName
{
  _backdropGroupName = [(SBFloatingDockViewController *)self _backdropGroupName];
  categoryStackView = [(SBHLibraryIconViewController *)self->_libraryIconViewController categoryStackView];
  [categoryStackView setBackdropGroupName:_backdropGroupName];
}

- (BOOL)allowsFocus
{
  iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [iconDelegate isFocusAllowedForFloatingDockViewController:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setPrefersFlatImageLayers:(BOOL)layers
{
  if (self->_prefersFlatImageLayers != layers)
  {
    layersCopy = layers;
    self->_prefersFlatImageLayers = layers;
    libraryPodIconView = [(SBFloatingDockViewController *)self libraryPodIconView];
    [libraryPodIconView setPrefersFlatImageLayers:layersCopy];
  }
}

- (void)_updateEditingStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(SBFloatingDockViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate isFloatingDockViewControllerPresentedOnExternalDisplay:self] & 1) == 0)
  {
    isEditing = [(SBFloatingDockViewController *)self isEditing];
    if (isEditing)
    {
      v6 = [(SBFloatingDockViewController *)self suppressesEditingStateForListViews]^ 1;
    }

    else
    {
      v6 = 0;
    }

    dockView = [(SBFloatingDockViewController *)self dockView];
    [dockView setEditing:isEditing animated:animatedCopy];
    userIconListView = [(SBFloatingDockViewController *)self userIconListView];
    [userIconListView setEditing:v6];
    [userIconListView updateEditingStateAnimated:animatedCopy];
    recentIconListView = [dockView recentIconListView];
    [recentIconListView setEditing:v6];
    [recentIconListView updateEditingStateAnimated:animatedCopy];
    utilitiesIconListView = [dockView utilitiesIconListView];
    [utilitiesIconListView setEditing:v6];
    [utilitiesIconListView updateEditingStateAnimated:animatedCopy];
    [(SBIconView *)self->_libraryPodIconView setEditing:v6 animated:animatedCopy];
    if ([(SBFloatingDockViewController *)self isPresentingFolder])
    {
      folderPresentingViewController = [(SBFloatingDockViewController *)self folderPresentingViewController];
      presentedFolderController = [folderPresentingViewController presentedFolderController];
      [presentedFolderController setEditing:isEditing animated:animatedCopy];
    }
  }
}

- (void)setIconsDragging:(BOOL)dragging
{
  if (self->_iconsDragging != dragging)
  {
    self->_iconsDragging = dragging;
    draggingCopy = dragging;
    dockView = [(SBFloatingDockViewController *)self dockView];
    [dockView setMinimumUserIconSpaces:draggingCopy];

    [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:1];
    if (!dragging)
    {
      bouncedDropSessions = self->_bouncedDropSessions;
      self->_bouncedDropSessions = 0;
    }
  }
}

- (void)reduceTransparencyEnabledStateDidChange:(id)change
{
  folderPresentingViewController = [(SBFloatingDockViewController *)self folderPresentingViewController];
  [folderPresentingViewController setBackgroundEffect:{-[SBFloatingDockViewController _backgroundEffectForPresentedFolder](self, "_backgroundEffectForPresentedFolder")}];

  presentedFolderController = [(SBFloatingDockViewController *)self presentedFolderController];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [presentedFolderController setBackgroundEffect:{-[SBFloatingDockViewController _platterEffectForPresentedFolder](self, "_platterEffectForPresentedFolder")}];
  }
}

- (void)_sizeCategoryDidChange:(id)change
{
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];
  [userIconListView removeAllIconViews];
  [userIconListView layoutIconsNow];
  utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
  [utilitiesIconListView removeAllIconViews];
  [utilitiesIconListView layoutIconsNow];
}

- (void)floatingDockViewMainPlatterDidChangeFrame:(id)frame
{
  delegate = [(SBFloatingDockViewController *)self delegate];
  [(SBFloatingDockViewController *)self floatingDockScreenFrame];
  [delegate floatingDockViewController:self didChangeContentFrame:?];
}

- (void)coronaAnimationController:(id)controller willAnimateCoronaTransitionWithAnimator:(id)animator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __98__SBFloatingDockViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke;
  v4[3] = &unk_1E8088C90;
  v4[4] = self;
  [animator addAnimations:v4];
}

void __98__SBFloatingDockViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dockView];
  v2 = MEMORY[0x1E69DD250];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __98__SBFloatingDockViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_2;
  v4[3] = &unk_1E8088C90;
  v5 = v1;
  v3 = v1;
  [v2 performWithoutAnimation:v4];
  [v3 pl_performCrossFadeIfNecessary];
}

uint64_t __98__SBFloatingDockViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (BOOL)iconListView:(id)view canHandleIconDropSession:(id)session
{
  viewCopy = view;
  sessionCopy = session;
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];

  if (userIconListView == viewCopy || ([(SBFloatingDockViewController *)self utilitiesIconListView], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == viewCopy))
  {
    iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
    v10 = [iconDragManager canHandleIconDropSession:sessionCopy inIconListView:viewCopy];
    v12 = [iconDragManager canAcceptDropInSession:sessionCopy inIconListView:viewCopy];

    if (v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  if ([(SBFloatingDockViewController *)self shouldIndicateImpossibleDrop]&& ![(NSHashTable *)self->_bouncedDropSessions containsObject:sessionCopy])
  {
    dockView = [(SBFloatingDockViewController *)self dockView];
    [dockView bounce];

    bouncedDropSessions = self->_bouncedDropSessions;
    if (!bouncedDropSessions)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v16 = self->_bouncedDropSessions;
      self->_bouncedDropSessions = weakObjectsHashTable;

      bouncedDropSessions = self->_bouncedDropSessions;
    }

    [(NSHashTable *)bouncedDropSessions addObject:sessionCopy];
  }

LABEL_10:

  return v10;
}

- (BOOL)iconListView:(id)view canHandleDataDropSession:(id)session
{
  viewCopy = view;
  sessionCopy = session;
  delegate = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate floatingDockViewController:self canHandleDataDropSession:sessionCopy inIconListView:viewCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)iconListView:(id)view iconDropSessionDidEnter:(id)enter
{
  v40[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  enterCopy = enter;
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];

  if (userIconListView == viewCopy)
  {
    iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
    [iconDragManager iconDropSessionDidEnter:enterCopy inIconListView:viewCopy];
  }

  else
  {
    utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];

    if (utilitiesIconListView == viewCopy)
    {
      iconDragManager2 = [(SBFloatingDockViewController *)self iconDragManager];
      [iconDragManager2 iconDropSessionDidEnter:enterCopy inIconListView:viewCopy];

      v40[0] = *MEMORY[0x1E699A3D0];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
      v12 = [enterCopy hasItemsConformingToTypeIdentifiers:v11];

      if (v12)
      {
        v30 = enterCopy;
        v31 = viewCopy;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        obj = [enterCopy items];
        v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v36;
          v32 = *v36;
          do
          {
            v16 = 0;
            v33 = v14;
            do
            {
              if (*v36 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v35 + 1) + 8 * v16);
              itemProvider = [v17 itemProvider];
              teamData = [itemProvider teamData];
              if (teamData)
              {
                v20 = MEMORY[0x1E696ACD0];
                v21 = objc_opt_self();
                v22 = [v20 unarchivedObjectOfClass:v21 fromData:teamData error:0];
              }

              else
              {
                v22 = 0;
              }

              previewProvider = [v17 previewProvider];
              if (previewProvider)
              {
                v24 = v22 == 0;
              }

              else
              {
                v24 = 1;
              }

              if (!v24)
              {
                originalDragItemsPreviewProvider = [(SBFloatingDockViewController *)self originalDragItemsPreviewProvider];
                v26 = [previewProvider copy];
                selfCopy = self;
                v28 = _Block_copy(v26);
                [originalDragItemsPreviewProvider setObject:v28 forKey:v22];

                self = selfCopy;
                v15 = v32;

                v14 = v33;
              }

              [v17 setPreviewProvider:0];

              ++v16;
            }

            while (v14 != v16);
            v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v14);
        }

        enterCopy = v30;
        viewCopy = v31;
      }
    }
  }
}

- (id)iconListView:(id)view iconDropSessionDidUpdate:(id)update
{
  viewCopy = view;
  updateCopy = update;
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];

  if (userIconListView == viewCopy || ([(SBFloatingDockViewController *)self utilitiesIconListView], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == viewCopy))
  {
    iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
    v10 = [iconDragManager iconDropSessionDidUpdate:updateCopy inIconListView:viewCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)iconListView:(id)view dataDropSessionDidUpdate:(id)update
{
  viewCopy = view;
  updateCopy = update;
  delegate = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate floatingDockViewController:self dataDropSessionDidUpdate:updateCopy inIconListView:viewCopy];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:1];
  }

  v10 = v9;

  return v10;
}

- (void)iconListView:(id)view iconDropSessionDidExit:(id)exit
{
  v37[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  exitCopy = exit;
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];

  if (userIconListView == viewCopy)
  {
    iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
    [iconDragManager iconDropSessionDidExit:exitCopy fromIconListView:viewCopy];
  }

  else
  {
    utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];

    if (utilitiesIconListView == viewCopy)
    {
      iconDragManager2 = [(SBFloatingDockViewController *)self iconDragManager];
      [iconDragManager2 iconDropSessionDidExit:exitCopy fromIconListView:viewCopy];

      v37[0] = *MEMORY[0x1E699A3D0];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
      v12 = [exitCopy hasItemsConformingToTypeIdentifiers:v11];

      if (v12)
      {
        v29 = viewCopy;
        selfCopy = self;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v28 = exitCopy;
        obj = [exitCopy items];
        v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v33;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v33 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v32 + 1) + 8 * i);
              itemProvider = [v17 itemProvider];
              teamData = [itemProvider teamData];
              if (teamData)
              {
                v20 = MEMORY[0x1E696ACD0];
                v21 = objc_opt_self();
                v22 = [v20 unarchivedObjectOfClass:v21 fromData:teamData error:0];

                if (v22)
                {
                  originalDragItemsPreviewProvider = [(SBFloatingDockViewController *)selfCopy originalDragItemsPreviewProvider];
                  v24 = [originalDragItemsPreviewProvider objectForKey:v22];

                  if (v24)
                  {
                    v25 = [v24 copy];
                    [v17 setPreviewProvider:v25];

                    originalDragItemsPreviewProvider2 = [(SBFloatingDockViewController *)selfCopy originalDragItemsPreviewProvider];
                    [originalDragItemsPreviewProvider2 removeObjectForKey:v22];
                  }

                  else
                  {
                    [v17 setPreviewProvider:0];
                  }
                }
              }
            }

            v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v14);
        }

        exitCopy = v28;
        viewCopy = v29;
      }
    }
  }
}

- (void)iconListView:(id)view performIconDrop:(id)drop
{
  dropCopy = drop;
  viewCopy = view;
  iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
  [iconDragManager performIconDrop:dropCopy inIconListView:viewCopy];

  [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:1];
}

- (void)iconListView:(id)view willUseIconView:(id)iconView forDroppingIconDragItem:(id)item
{
  itemCopy = item;
  iconViewCopy = iconView;
  viewCopy = view;
  iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
  [iconDragManager iconListView:viewCopy willUseIconView:iconViewCopy forDroppingIconDragItem:itemCopy];
}

- (id)iconListView:(id)view previewForDroppingIconDragItem:(id)item proposedPreview:(id)preview
{
  previewCopy = preview;
  itemCopy = item;
  viewCopy = view;
  iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
  v12 = [iconDragManager iconListView:viewCopy previewForDroppingIconDragItem:itemCopy proposedPreview:previewCopy];

  return v12;
}

- (void)iconListView:(id)view iconDragItem:(id)item willAnimateDropWithAnimator:(id)animator
{
  animatorCopy = animator;
  itemCopy = item;
  viewCopy = view;
  iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
  [iconDragManager iconListView:viewCopy iconDragItem:itemCopy willAnimateDropWithAnimator:animatorCopy];
}

- (BOOL)iconListView:(id)view shouldAllowSpringLoadedInteractionForIconDropSession:(id)session onIconView:(id)iconView
{
  iconViewCopy = iconView;
  sessionCopy = session;
  iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
  v10 = [iconDragManager shouldAllowSpringLoadedInteractionForIconDropSession:sessionCopy onIconView:iconViewCopy];

  return v10;
}

- (void)iconListView:(id)view springLoadedInteractionForIconDragDidCompleteOnIconView:(id)iconView
{
  iconViewCopy = iconView;
  iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
  [iconDragManager performSpringLoadedInteractionForIconDragOnIconView:iconViewCopy];
}

- (id)iconListView:(id)view customSpringAnimationBehaviorForDroppingItem:(id)item
{
  itemCopy = item;
  viewCopy = view;
  iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
  v9 = [iconDragManager iconListView:viewCopy customSpringAnimationBehaviorForDroppingItem:itemCopy];

  return v9;
}

- (void)iconList:(id)list didAddIcon:(id)icon
{
  listCopy = list;
  dockListModel = [(SBFloatingDockViewController *)self dockListModel];

  if (dockListModel == listCopy || ([(SBFloatingDockViewController *)self dockUtilitiesListModel], v6 = objc_claimAutoreleasedReturnValue(), v6, v7 = listCopy, v6 == listCopy))
  {
    [(SBFloatingDockViewController *)self _coalesceRequestsToResizeDockForChangedNumberOfIcons];
    v7 = listCopy;
  }
}

- (void)iconList:(id)list didRemoveIcon:(id)icon
{
  listCopy = list;
  dockListModel = [(SBFloatingDockViewController *)self dockListModel];

  if (dockListModel == listCopy || ([(SBFloatingDockViewController *)self dockUtilitiesListModel], v6 = objc_claimAutoreleasedReturnValue(), v6, v7 = listCopy, v6 == listCopy))
  {
    [(SBFloatingDockViewController *)self _coalesceRequestsToResizeDockForChangedNumberOfIcons];
    v7 = listCopy;
  }
}

- (BOOL)isPresentingIconLocation:(id)location
{
  locationCopy = location;
  userIconLocation = [(SBFloatingDockViewController *)self userIconLocation];
  v6 = [locationCopy isEqualToString:userIconLocation];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
    v7 = [suggestionsViewController isPresentingIconLocation:locationCopy];
  }

  return v7;
}

- (NSSet)presentedIconLocations
{
  v3 = MEMORY[0x1E695DFD8];
  userIconLocation = [(SBFloatingDockViewController *)self userIconLocation];
  v5 = [v3 setWithObject:userIconLocation];

  suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
  presentedIconLocations = [suggestionsViewController presentedIconLocations];
  v8 = [v5 setByAddingObjectsFromSet:presentedIconLocations];

  return v8;
}

- (id)dequeueReusableIconViewOfClass:(Class)class
{
  iconViewProvider = [(SBFloatingDockViewController *)self iconViewProvider];
  v5 = [iconViewProvider dequeueReusableIconViewOfClass:class];

  return v5;
}

- (void)recycleIconView:(id)view
{
  viewCopy = view;
  iconViewProvider = [(SBFloatingDockViewController *)self iconViewProvider];
  [iconViewProvider recycleIconView:viewCopy];
}

- (BOOL)isIconViewRecycled:(id)recycled
{
  recycledCopy = recycled;
  iconViewProvider = [(SBFloatingDockViewController *)self iconViewProvider];
  v6 = [iconViewProvider isIconViewRecycled:recycledCopy];

  return v6;
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  iconCopy = icon;
  viewCopy = view;
  iconViewProvider = [(SBFloatingDockViewController *)self iconViewProvider];
  [iconViewProvider configureIconView:viewCopy forIcon:iconCopy];
}

- (void)icon:(id)icon touchMoved:(id)moved
{
  movedCopy = moved;
  iconCopy = icon;
  UIEdgeInsetsMakeWithEdges();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [iconCopy bounds];
  v15 = v9 + v14;
  v17 = v7 + v16;
  v19 = v18 - (v9 + v13);
  v21 = v20 - (v7 + v11);
  [movedCopy locationInView:iconCopy];
  v23 = v22;
  v25 = v24;

  v29.origin.x = v15;
  v29.origin.y = v17;
  v29.size.width = v19;
  v29.size.height = v21;
  v28.x = v23;
  v28.y = v25;
  [iconCopy setHighlighted:{CGRectContainsPoint(v29, v28)}];
}

- (void)iconTapped:(id)tapped
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(SBFloatingDockViewController *)self toggleLibraryPresentedAnimated:1 completion:0];
  delegate = [(SBFloatingDockViewController *)self delegate];
  v5 = [delegate isFloatingDockViewControllerPresentedOverApplication:self];
  v11 = *MEMORY[0x1E69D4548];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = MEMORY[0x1E69D3F90];
  v9 = v7;
  sharedInstance = [v8 sharedInstance];
  [sharedInstance emitEvent:51 withPayload:v9];
}

- (id)customImageViewControllerForIconView:(id)view
{
  libraryIconViewController = self->_libraryIconViewController;
  if (!libraryIconViewController)
  {
    viewCopy = view;
    v6 = [SBHLibraryIconViewController alloc];
    listLayoutProvider = [viewCopy listLayoutProvider];

    v8 = [(SBHLibraryIconViewController *)v6 initWithListLayoutProvider:listLayoutProvider];
    libraryViewController = [(SBFloatingDockViewController *)self libraryViewController];
    podFolderViewController = [libraryViewController podFolderViewController];
    dataSource = [podFolderViewController dataSource];
    [(SBHLibraryIconViewController *)v8 setLibraryDataSource:dataSource];

    categoryStackView = [(SBHLibraryIconViewController *)v8 categoryStackView];
    _backdropGroupName = [(SBFloatingDockViewController *)self _backdropGroupName];
    [categoryStackView setBackdropGroupName:_backdropGroupName];

    v14 = self->_libraryIconViewController;
    self->_libraryIconViewController = v8;

    libraryIconViewController = self->_libraryIconViewController;
  }

  return libraryIconViewController;
}

- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  if (controllerCopy)
  {
    [(SBFloatingDockViewController *)self bs_removeChildViewController:controllerCopy];
  }

  customIconImageViewController = [viewCopy customIconImageViewController];
  if (customIconImageViewController)
  {
    [(SBFloatingDockViewController *)self bs_addChildViewController:customIconImageViewController];
  }
}

- (BOOL)iconViewCanBecomeFocused:(id)focused
{
  focusedCopy = focused;
  iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [iconDelegate floatingDockViewController:self iconViewCanBecomeFocused:focusedCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isPresentingLibrary
{
  libraryPresenter = [(SBFloatingDockViewController *)self libraryPresenter];
  isPresentingLibrary = [libraryPresenter isPresentingLibrary];

  return isPresentingLibrary;
}

- (BOOL)isPresentingLibraryInForeground
{
  isPresentingLibrary = [(SBFloatingDockViewController *)self isPresentingLibrary];
  if (isPresentingLibrary)
  {

    LOBYTE(isPresentingLibrary) = [(SBFloatingDockViewController *)self _isLibraryContainedInForeground];
  }

  return isPresentingLibrary;
}

- (void)presentLibraryAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  libraryPresenter = [(SBFloatingDockViewController *)self libraryPresenter];
  [libraryPresenter presentLibraryWithAnimation:animatedCopy completion:completionCopy];
}

- (void)dismissLibraryAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (animatedCopy && (![(SBFloatingDockViewController *)self _isLibraryContainedInForeground]|| [(SBFloatingDockViewController *)self _isInAppToAppTransition]|| [(SBFloatingDockViewController *)self _isInSwitcherTransition]))
  {
    libraryPresenter = [(SBFloatingDockViewController *)self libraryPresenter];
    [libraryPresenter dismissLibraryWithTransition:2 completion:completionCopy];
  }

  else
  {
    libraryPresenter = [(SBFloatingDockViewController *)self libraryPresenter];
    [libraryPresenter dismissLibraryWithAnimation:animatedCopy completion:completionCopy];
  }
}

- (void)toggleLibraryPresentedAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  libraryPresenter = [(SBFloatingDockViewController *)self libraryPresenter];
  [libraryPresenter toggleLibraryPresentedInForegroundWithAnimation:animatedCopy completion:completionCopy];
}

- (BOOL)isDefaultContainerForegroundForPresenter:(id)presenter
{
  selfCopy = self;
  delegate = [(SBFloatingDockViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate isDefaultLibraryContainerViewControllerForegroundForFloatingDockViewController:selfCopy];

  return selfCopy;
}

- (id)containerViewControllerForPresentingInForeground:(id)foreground
{
  delegate = [(SBFloatingDockViewController *)self delegate];
  v5 = [delegate foregroundLibraryContainerViewControllerForFloatingDockViewController:self];

  return v5;
}

- (id)acquireOrderSourceContainerViewBeforeLibraryViewAssertionForReason:(id)reason
{
  reasonCopy = reason;
  delegate = [(SBFloatingDockViewController *)self delegate];
  v6 = [delegate floatingDockViewController:self acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason:reasonCopy];

  return v6;
}

- (void)libraryIndicatorIconView:(id)view didAcceptDropForSession:(id)session
{
  sessionCopy = session;
  iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
  [iconDragManager noteDragItemWasConsumedExternallyForDropSession:sessionCopy];
}

- (void)presentFolderForIcon:(id)icon location:(id)location animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  iconCopy = icon;
  locationCopy = location;
  completionCopy = completion;
  currentFolderAnimator = [(SBFloatingDockViewController *)self currentFolderAnimator];
  v14 = currentFolderAnimator;
  if (currentFolderAnimator)
  {
    childViewController = [currentFolderAnimator childViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      folder = [childViewController folder];
      icon = [folder icon];
    }

    else
    {
      icon = 0;
    }

    if ([iconCopy isEqual:icon])
    {
      if (completionCopy)
      {
        currentExpandCompletions = [(SBFloatingDockViewController *)self currentExpandCompletions];
        if (!currentExpandCompletions)
        {
          currentExpandCompletions = objc_alloc_init(MEMORY[0x1E695DF70]);
          [(SBFloatingDockViewController *)self setCurrentExpandCompletions:currentExpandCompletions];
        }

        v20 = [completionCopy copy];
        v21 = _Block_copy(v20);
        [currentExpandCompletions addObject:v21];
      }

      if ([v14 currentOperation] == 1)
      {
        [v14 reverse];
      }
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__SBFloatingDockViewController_presentFolderForIcon_location_animated_completion___block_invoke;
    aBlock[3] = &unk_1E808EA20;
    objc_copyWeak(&v24, &location);
    v23 = completionCopy;
    v18 = _Block_copy(aBlock);
    [(SBFloatingDockViewController *)self _presentFolderForIcon:iconCopy location:locationCopy animated:animatedCopy completion:v18];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __82__SBFloatingDockViewController_presentFolderForIcon_location_animated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained currentExpandCompletions];
  v6 = [WeakRetained currentCollapseCompletions];
  [WeakRetained setCurrentExpandCompletions:0];
  [WeakRetained setCurrentCollapseCompletions:0];
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v22 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v18 + 1) + 8 * v17) + 16))(*(*(&v18 + 1) + 8 * v17));
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (void)dismissPresentedFolderAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([iconDelegate floatingDockViewControllerCanCloseFolders:self] & 1) == 0)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    currentFolderAnimator = [(SBFloatingDockViewController *)self currentFolderAnimator];
    if (currentFolderAnimator)
    {
      if (completionCopy)
      {
        currentCollapseCompletions = [(SBFloatingDockViewController *)self currentCollapseCompletions];
        if (!currentCollapseCompletions)
        {
          currentCollapseCompletions = objc_alloc_init(MEMORY[0x1E695DF70]);
          [(SBFloatingDockViewController *)self setCurrentCollapseCompletions:currentCollapseCompletions];
        }

        v10 = [completionCopy copy];
        v11 = _Block_copy(v10);
        [currentCollapseCompletions addObject:v11];
      }

      if (![currentFolderAnimator currentOperation])
      {
        [currentFolderAnimator reverse];
      }
    }

    else
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__SBFloatingDockViewController_dismissPresentedFolderAnimated_completion___block_invoke;
      aBlock[3] = &unk_1E808EA20;
      objc_copyWeak(&v18, &location);
      v17 = completionCopy;
      v12 = _Block_copy(aBlock);
      folderPresentingViewController = [(SBFloatingDockViewController *)self folderPresentingViewController];
      presentedFolderController = [folderPresentingViewController presentedFolderController];
      if (presentedFolderController)
      {
        iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
        [iconDragManager noteFolderControllerWillClose:presentedFolderController];
      }

      [folderPresentingViewController dismissPresentedFolderControllerAnimated:animatedCopy completion:v12];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __74__SBFloatingDockViewController_dismissPresentedFolderAnimated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained currentExpandCompletions];
  v6 = [WeakRetained currentCollapseCompletions];
  [WeakRetained setCurrentExpandCompletions:0];
  [WeakRetained setCurrentCollapseCompletions:0];
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v22 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v18 + 1) + 8 * v17) + 16))(*(*(&v18 + 1) + 8 * v17));
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (void)_presentFolderForIcon:(id)icon location:(id)location animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  iconCopy = icon;
  locationCopy = location;
  completionCopy = completion;
  if (iconCopy && [(SBFloatingDockViewController *)self _shouldOpenFolderIcon:iconCopy])
  {
    userIconListView = [(SBFloatingDockViewController *)self userIconListView];
    v14 = [userIconListView displayedIconViewForIcon:iconCopy];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      utilitiesIconListView = [(SBFloatingDockViewController *)self utilitiesIconListView];
      v15 = [utilitiesIconListView displayedIconViewForIcon:iconCopy];

      if (!v15)
      {
        v31 = SBLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [SBFloatingDockViewController _presentFolderForIcon:location:animated:completion:];
        }

        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }

        goto LABEL_16;
      }
    }

    v32 = animatedCopy;
    v33 = userIconListView;
    folder = [iconCopy folder];
    v19 = [(SBFloatingDockViewController *)self controllerClassForFolder:folder];
    v20 = objc_alloc_init([(objc_class *)v19 configurationClass]);
    [v20 setFolder:folder];
    listLayoutProvider = [(SBFloatingDockViewController *)self listLayoutProvider];
    [v20 setListLayoutProvider:listLayoutProvider];

    [v20 setOrientation:{-[SBFloatingDockViewController interfaceOrientation](self, "interfaceOrientation")}];
    [v20 setIconViewProvider:self];
    folderIconImageCache = [(SBFloatingDockViewController *)self folderIconImageCache];
    [v20 setFolderIconImageCache:folderIconImageCache];

    legibilitySettings = [(SBFloatingDockViewController *)self legibilitySettings];
    [v20 setLegibilitySettings:legibilitySettings];

    [v20 setFolderDelegate:self];
    [v20 setOriginatingIconLocation:locationCopy];
    [v20 setAddsFocusGuidesForWrapping:{-[SBFloatingDockViewController allowsFocus](self, "allowsFocus")}];
    v24 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v26 = v20;
      _platterEffectForPresentedFolder = [(SBFloatingDockViewController *)self _platterEffectForPresentedFolder];
      if (_platterEffectForPresentedFolder == 1)
      {
        v28 = 3;
      }

      else
      {
        v28 = _platterEffectForPresentedFolder;
      }

      [v26 setBackgroundEffect:v28];
    }

    v29 = [[v19 alloc] initWithConfiguration:v20];
    [v29 setFolderIconView:v15];
    [v29 setEditing:-[SBFloatingDockViewController isEditing](self animated:{"isEditing"), 0}];
    folderPresentingViewController = [(SBFloatingDockViewController *)self folderPresentingViewController];
    [folderPresentingViewController setBackgroundEffect:{-[SBFloatingDockViewController _backgroundEffectForPresentedFolder](self, "_backgroundEffectForPresentedFolder")}];
    [folderPresentingViewController presentFolderController:v29 animated:v32 completion:completionCopy];

    userIconListView = v33;
LABEL_16:

    goto LABEL_17;
  }

  v16 = SBLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [SBFloatingDockViewController _presentFolderForIcon:location:animated:completion:];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_17:
}

- (id)folderPresentationController:(id)controller animationControllerForTransitionWithFolder:(id)folder presenting:(BOOL)presenting animated:(BOOL)animated
{
  animatedCopy = animated;
  presentingCopy = presenting;
  folderCopy = folder;
  controllerCopy = controller;
  folderPresentingViewController = [(SBFloatingDockViewController *)self folderPresentingViewController];

  v13 = 0;
  if (folderPresentingViewController != controllerCopy || !animatedCopy)
  {
    goto LABEL_19;
  }

  folder = [folderCopy folder];
  icon = [folder icon];

  if (icon && [(SBScaleIconZoomAnimator *)SBFolderIconZoomAnimator validateAnimationContainer:self targetIcon:icon])
  {
    v16 = 0;
    if (presentingCopy)
    {
      goto LABEL_11;
    }

LABEL_10:
    if ([(SBFloatingDockViewController *)self _isInAppToAppTransition])
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v17 = SBLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [SBFloatingDockViewController folderPresentationController:icon animationControllerForTransitionWithFolder:v17 presenting:? animated:?];
  }

  v16 = 1;
  if (!presentingCopy)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ((v16 | UIAccessibilityIsReduceMotionEnabled()) != 1)
  {
    v20 = [[SBFolderIconZoomAnimator alloc] initWithAnimationContainer:self innerFolderController:folderCopy folderIcon:icon];
    [(SBFolderIconZoomAnimator *)v20 setIsAnimatingInFloatingDock:1];
    goto LABEL_14;
  }

LABEL_12:
  v18 = [SBIconFadeAnimator alloc];
  contentView = [folderCopy contentView];
  v20 = [(SBIconFadeAnimator *)v18 initWithAnimationContainer:self crossfadeView:contentView];

  [(SBFolderIconZoomAnimator *)v20 setFadesReferenceView:0];
LABEL_14:
  v13 = [[SBHomeScreenIconTransitionAnimator alloc] initWithIconAnimator:v20 childViewController:folderCopy operation:presentingCopy ^ 1];
  [(SBFloatingDockViewController *)self setCurrentFolderAnimator:v13];
  iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    v22 = [iconDelegate iconTransitionAnimatorDelegateForFloatingDockViewController:self];
    [(SBHomeScreenIconTransitionAnimator *)v13 setDelegate:v22];
  }

  delegate = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockViewController:self willUseAnimator:v13 forTransitioningWithFolder:folderCopy presenting:presentingCopy];
  }

LABEL_19:

  return v13;
}

- (void)folderPresentationController:(id)controller willPerformTransitionWithFolder:(id)folder presenting:(BOOL)presenting withTransitionCoordinator:(id)coordinator
{
  presentingCopy = presenting;
  folderCopy = folder;
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  folderPresentingViewController = [(SBFloatingDockViewController *)self folderPresentingViewController];

  if (folderPresentingViewController == controllerCopy)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __130__SBFloatingDockViewController_folderPresentationController_willPerformTransitionWithFolder_presenting_withTransitionCoordinator___block_invoke;
    v19[3] = &unk_1E808D468;
    v19[4] = self;
    v20 = folderCopy;
    v21 = presentingCopy;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __130__SBFloatingDockViewController_folderPresentationController_willPerformTransitionWithFolder_presenting_withTransitionCoordinator___block_invoke_2;
    v16[3] = &unk_1E808E988;
    v14 = v20;
    v17 = v14;
    selfCopy = self;
    [coordinatorCopy animateAlongsideTransition:v19 completion:v16];
    if ([coordinatorCopy isAnimated])
    {
      [coordinatorCopy animateAlongsideTransition:&__block_literal_global_137_0 completion:0];
    }

    delegate = [(SBFloatingDockViewController *)self delegate];
    [delegate floatingDockViewController:self willPerformTransitionWithFolder:v14 presenting:presentingCopy withTransitionCoordinator:coordinatorCopy];
  }
}

void __130__SBFloatingDockViewController_folderPresentationController_willPerformTransitionWithFolder_presenting_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([*(a1 + 32) _platterEffectForPresentedFolder] == 1)
  {
    v3 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [v11 isCancelled];
      v6 = *(a1 + 48) ^ 1;
      v7 = v6 | v5;
      v8 = (v6 & v5 & 1) == 0;
      v9 = 3;
      if (!v8)
      {
        v9 = 1;
      }

      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      [*(a1 + 40) setBackgroundEffect:v10];
    }
  }
}

void __130__SBFloatingDockViewController_folderPresentationController_willPerformTransitionWithFolder_presenting_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) view];
  v2 = [*(a1 + 32) contentView];
  v3 = [v2 superview];

  if (v3 != v4)
  {
    [v4 addSubview:v2];
    [v4 setNeedsLayout];
  }

  [*(a1 + 40) setCurrentFolderAnimator:0];
}

uint64_t __130__SBFloatingDockViewController_folderPresentationController_willPerformTransitionWithFolder_presenting_withTransitionCoordinator___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 isInteractive];
  if ((result & 1) == 0)
  {
    v3 = MEMORY[0x1E69DD250];

    return [v3 _recenterMotionEffects];
  }

  return result;
}

- (double)minimumHomeScreenScaleForFolderPresentationController:(id)controller
{
  delegate = [(SBFloatingDockViewController *)self delegate];
  [delegate minimumHomeScreenScaleForFloatingDockViewController:self];
  v6 = v5;

  return v6;
}

- (id)folderPresentationController:(id)controller sourceViewForPresentingViewController:(id)viewController
{
  viewControllerCopy = viewController;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    folder = [viewControllerCopy folder];
    icon = [folder icon];

    v10 = [(SBFloatingDockViewController *)self firstIconViewForIcon:icon];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UIWindow)animationWindow
{
  view = [(SBFloatingDockViewController *)self view];
  window = [view window];

  return window;
}

- (SBHIconModel)iconModel
{
  dockListModel = [(SBFloatingDockViewController *)self dockListModel];
  folder = [dockListModel folder];
  rootFolder = [folder rootFolder];
  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    model = [rootFolder model];
  }

  else
  {
    model = 0;
  }

  return model;
}

- (void)returnScalingView
{
  view = [(SBFloatingDockViewController *)self view];
  scalingView = [(SBFloatingDockViewController *)self scalingView];
  [view addSubview:scalingView];
}

- (Class)controllerClassForFolder:(id)folder
{
  folderCopy = folder;
  iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [iconDelegate floatingDockViewController:self controllerClassForFolderClass:objc_opt_class()];
  }

  else
  {
    v6 = objc_opt_self();
  }

  v7 = v6;
  v8 = v6;

  return v7;
}

- (int64_t)interfaceOrientation
{
  iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [iconDelegate interfaceOrientationForFloatingDockViewController:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)folderControllerWillOpen:(id)open
{
  openCopy = open;
  [(SBFloatingDockSuggestionsViewProviding *)self->_suggestionsViewController dockFolderWillBeginTransitioning];
  iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    [iconDelegate floatingDockViewController:self willOpenFolderController:openCopy];
  }
}

- (void)folderControllerWillClose:(id)close
{
  closeCopy = close;
  if (![(SBFloatingDockViewController *)self _isInAppToAppTransition])
  {
    delegate = [(SBFloatingDockViewController *)self delegate];
    [delegate floatingDockViewController:self wantsToBePresented:1];
  }

  [(SBFloatingDockSuggestionsViewProviding *)self->_suggestionsViewController dockFolderWillBeginTransitioning];
  iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    [iconDelegate floatingDockViewController:self willCloseFolderController:closeCopy];
  }
}

- (void)folderControllerShouldBeginEditing:(id)editing withHaptic:(BOOL)haptic
{
  editingCopy = editing;
  delegate = [(SBFloatingDockViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate isFloatingDockViewControllerPresentedOnExternalDisplay:self] & 1) == 0)
  {
    iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
    if (objc_opt_respondsToSelector())
    {
      view = [editingCopy view];
      window = [view window];
      _screen = [window _screen];
      coordinateSpace = [_screen coordinateSpace];
      [view center];
      [view convertPoint:coordinateSpace toCoordinateSpace:?];
      [iconDelegate floatingDockViewController:self wantsToBeginEditingAtScreenLocation:?];
    }
  }
}

- (void)folderControllerShouldEndEditing:(id)editing
{
  iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    [iconDelegate floatingDockViewControllerWantsToEndEditing:self];
  }
}

- (void)folderControllerWillBeginScrolling:(id)scrolling
{
  iconDragManager = [(SBFloatingDockViewController *)self iconDragManager];
  [iconDragManager noteFolderBeganScrolling];
}

- (void)folderController:(id)controller didBeginEditingTitle:(id)title
{
  controllerCopy = controller;
  titleCopy = title;
  iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    [iconDelegate floatingDockViewController:self folderController:controllerCopy didBeginEditingTitle:titleCopy];
  }
}

- (void)folderController:(id)controller didEndEditingTitle:(id)title
{
  controllerCopy = controller;
  titleCopy = title;
  iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    [iconDelegate floatingDockViewController:self folderController:controllerCopy didEndEditingTitle:titleCopy];
  }
}

- (id)folderController:(id)controller accessibilityTintColorForScreenRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  iconDelegate = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [iconDelegate floatingDockViewController:self accessibilityTintColorForScreenRect:{x, y, width, height}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  v18 = stopCopy;
  if (finished)
  {
    v7 = [stopCopy valueForKey:@"SBFloatingDockViewControllerBounceIconViewMaxHeight"];
    [v7 floatValue];
    v9 = v8;

    v10 = [v18 valueForKey:@"SBFloatingDockViewControllerBounceIconViewDuration"];
    [v10 floatValue];
    v12 = v11;

    v13 = [v18 valueForKey:@"SBFloatingDockViewControllerBounceIconViewBounceCount"];
    integerValue = [v13 integerValue];

    [(SBFloatingDockViewController *)self _bounceIconView:self->_bouncingIconView maxHeight:integerValue animationDuration:v9 bounceCount:v12];
  }

  else
  {
    self->_isAnimatingIconViewBounce = 0;
    delegate = [(SBFloatingDockViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate floatingDockViewController:self didFinishBouncingIconView:self->_bouncingIconView];
    }

    dockView = [(SBFloatingDockViewController *)self dockView];
    [dockView setHidden:{-[SBFloatingDockViewController _isDockViewOffScreen](self, "_isDockViewOffScreen")}];

    bouncingIconView = self->_bouncingIconView;
    self->_bouncingIconView = 0;
  }
}

- (void)_setUpFloatingDockPrototypeSettings
{
  v3 = +[SBHFloatingDockDomain rootSettings];
  floatingDockPrototypeSettings = self->_floatingDockPrototypeSettings;
  self->_floatingDockPrototypeSettings = v3;

  [(PTSettings *)self->_floatingDockPrototypeSettings addKeyObserver:self];
  addIconsToFloatingDockOutlet = [(SBHFloatingDockSettings *)self->_floatingDockPrototypeSettings addIconsToFloatingDockOutlet];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__SBFloatingDockViewController__setUpFloatingDockPrototypeSettings__block_invoke;
  v14[3] = &unk_1E8088C90;
  v14[4] = self;
  v6 = [addIconsToFloatingDockOutlet addAction:v14];

  removeIconsFromFloatingDockOutlet = [(SBHFloatingDockSettings *)self->_floatingDockPrototypeSettings removeIconsFromFloatingDockOutlet];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__SBFloatingDockViewController__setUpFloatingDockPrototypeSettings__block_invoke_2;
  v13[3] = &unk_1E8088C90;
  v13[4] = self;
  v8 = [removeIconsFromFloatingDockOutlet addAction:v13];

  addMaxNumberOfIconsAllowedToDockOutlet = [(SBHFloatingDockSettings *)self->_floatingDockPrototypeSettings addMaxNumberOfIconsAllowedToDockOutlet];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__SBFloatingDockViewController__setUpFloatingDockPrototypeSettings__block_invoke_3;
  v12[3] = &unk_1E8088C90;
  v12[4] = self;
  v10 = [addMaxNumberOfIconsAllowedToDockOutlet addAction:v12];

  connectedClientBundleIdentifier = [(SBHFloatingDockSettings *)self->_floatingDockPrototypeSettings connectedClientBundleIdentifier];
  [(SBFloatingDockViewController *)self setConnectedRemoteContentBundleIdentifier:connectedClientBundleIdentifier];
}

- (void)_addIconsToFloatingDock
{
  numberOfIconsToAddOrRemove = [(SBHFloatingDockSettings *)self->_floatingDockPrototypeSettings numberOfIconsToAddOrRemove];

  [(SBFloatingDockViewController *)self _addIconsIntoFloatingDock:numberOfIconsToAddOrRemove];
}

- (void)_removeIconsFromFloatingDock
{
  numberOfIconsToAddOrRemove = [(SBHFloatingDockSettings *)self->_floatingDockPrototypeSettings numberOfIconsToAddOrRemove];

  [(SBFloatingDockViewController *)self _removeIconsFromFloatingDock:numberOfIconsToAddOrRemove];
}

- (void)_addMaxNumberOfIconsAllowedToDockOutlet
{
  userIconListView = [(SBFloatingDockViewController *)self userIconListView];
  layoutProvider = [userIconListView layoutProvider];
  v5 = [layoutProvider layoutForIconLocation:@"SBIconLocationFloatingDock"];
  v6 = SBHIconListLayoutMaximumIconCount(v5);

  userIconListView2 = [(SBFloatingDockViewController *)self userIconListView];
  v8 = v6 - [userIconListView2 numberOfDisplayedIconViews];

  [(SBFloatingDockViewController *)self _addIconsIntoFloatingDock:v8];
}

- (void)_addIconsIntoFloatingDock:(unint64_t)dock
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__26;
  v16 = __Block_byref_object_dispose__26;
  v17 = 0;
  dockListModel = self->_dockListModel;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__SBFloatingDockViewController__addIconsIntoFloatingDock___block_invoke;
  v11[3] = &unk_1E808D7B0;
  v11[4] = &v12;
  [(SBIconListModel *)dockListModel enumerateIconsUsingBlock:v11];
  if (v13[5] && dock)
  {
    do
    {
      v6 = v13[5];
      v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      uUIDString = [v7 UUIDString];
      v9 = [v6 copyWithLeafIdentifier:uUIDString];

      v10 = [(SBIconListModel *)self->_dockListModel addIcon:v9];
      --dock;
    }

    while (dock);
  }

  _Block_object_dispose(&v12, 8);
}

void __58__SBFloatingDockViewController__addIconsIntoFloatingDock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isLeafIcon])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_removeIconsFromFloatingDock:(unint64_t)dock
{
  numberOfIcons = [(SBIconListModel *)self->_dockListModel numberOfIcons];
  if (numberOfIcons < dock)
  {
    dock = numberOfIcons;
  }

  for (; dock; --dock)
  {
    [(SBIconListModel *)self->_dockListModel removeLastIcon];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_floatingDockPrototypeSettings == settings && [key isEqualToString:@"connectedClientBundleIdentifier"])
  {
    v7 = +[SBHFloatingDockDomain rootSettings];
    connectedClientBundleIdentifier = [v7 connectedClientBundleIdentifier];
    [(SBFloatingDockViewController *)self setConnectedRemoteContentBundleIdentifier:connectedClientBundleIdentifier];

    delegate = [(SBFloatingDockViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate reconnectHostingClient:self];
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFloatingDockViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFloatingDockViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBFloatingDockViewController *)self succinctDescriptionBuilder];
  [(SBFloatingDockViewController *)self dockOffscreenProgress];
  v5 = [succinctDescriptionBuilder appendFloat:@"dockOffscreenProgress" withName:2 decimalPrecision:?];
  suggestionsViewController = [(SBFloatingDockViewController *)self suggestionsViewController];
  v7 = [succinctDescriptionBuilder appendObject:suggestionsViewController withName:@"suggestionsViewController"];

  [(SBFloatingDockViewController *)self contentHeight];
  v8 = [succinctDescriptionBuilder appendDouble:@"contentHeight" withName:1 decimalPrecision:?];
  [(SBFloatingDockViewController *)self maximumContentHeight];
  v9 = [succinctDescriptionBuilder appendDouble:@"maximumContentHeight" withName:1 decimalPrecision:?];
  v10 = [succinctDescriptionBuilder appendBool:-[SBFloatingDockViewController isPresentingLibrary](self withName:"isPresentingLibrary") ifEqualTo:{@"isPresentingLibrary", 1}];
  v11 = [succinctDescriptionBuilder appendBool:-[SBFloatingDockViewController _isLibraryContainedInForeground](self withName:"_isLibraryContainedInForeground") ifEqualTo:{@"isLibraryContainedInForeground", 1}];
  v12 = [succinctDescriptionBuilder appendBool:-[SBFloatingDockViewController isPresentingFolder](self withName:"isPresentingFolder") ifEqualTo:{@"isPresentingFolder", 1}];
  presentedFolderController = [(SBFloatingDockViewController *)self presentedFolderController];
  v14 = [succinctDescriptionBuilder appendObject:presentedFolderController withName:@"presentedFolderController" skipIfNil:1];

  legibilitySettings = [(SBFloatingDockViewController *)self legibilitySettings];
  v16 = [succinctDescriptionBuilder appendObject:legibilitySettings withName:@"legibilitySettings"];

  underlyingPresentationStyleConfiguration = [(SBFloatingDockViewController *)self underlyingPresentationStyleConfiguration];
  v18 = [succinctDescriptionBuilder appendObject:underlyingPresentationStyleConfiguration withName:@"underlyingPresentationStyleConfiguration"];

  return succinctDescriptionBuilder;
}

- (SBFloatingDockViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBFloatingDockViewControllerIconDelegate)iconDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_iconDelegate);

  return WeakRetained;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

- (void)_presentFolderForIcon:location:animated:completion:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1BEB18000, v0, OS_LOG_TYPE_ERROR, "%s No folder icon view for %@", v1, 0x16u);
}

- (void)_presentFolderForIcon:location:animated:completion:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1BEB18000, v0, OS_LOG_TYPE_ERROR, "%s Folder icon %@ cannot be opened because it does not exist in the user icon list", v1, 0x16u);
}

- (void)folderPresentationController:(uint64_t)a1 animationControllerForTransitionWithFolder:(NSObject *)a2 presenting:animated:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Forcing cross-fade animation for floating dock folder transition for icon: %@", &v2, 0xCu);
}

@end