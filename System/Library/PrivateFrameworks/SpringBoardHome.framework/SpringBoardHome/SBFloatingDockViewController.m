@interface SBFloatingDockViewController
- (BOOL)_isInAppToAppTransition;
- (BOOL)_isInSwitcherTransition;
- (BOOL)_isLibraryContainedInForeground;
- (BOOL)_shouldOpenFolderIcon:(id)a3;
- (BOOL)allowsFocus;
- (BOOL)canAddIcon:(id)a3 toIconList:(id)a4 inFolder:(id)a5;
- (BOOL)iconListView:(id)a3 canHandleDataDropSession:(id)a4;
- (BOOL)iconListView:(id)a3 canHandleIconDropSession:(id)a4;
- (BOOL)iconListView:(id)a3 shouldAllowSpringLoadedInteractionForIconDropSession:(id)a4 onIconView:(id)a5;
- (BOOL)iconViewCanBecomeFocused:(id)a3;
- (BOOL)isDefaultContainerForegroundForPresenter:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (BOOL)isIconViewRecycled:(id)a3;
- (BOOL)isLibraryPodIconEffectivelyVisible;
- (BOOL)isPresentingFolder;
- (BOOL)isPresentingIconLocation:(id)a3;
- (BOOL)isPresentingLibrary;
- (BOOL)isPresentingLibraryInForeground;
- (CGRect)floatingDockScreenFrame;
- (CGRect)floatingDockScreenPresentationFrame;
- (CGSize)maximumEditingIconSize;
- (Class)controllerClassForFolder:(id)a3;
- (NSSet)presentedIconLocations;
- (SBFloatingDockView)dockView;
- (SBFloatingDockViewController)initWithDockListModel:(id)a3 utilitiesListModel:(id)a4 listLayoutProvider:(id)a5 iconViewProvider:(id)a6 maxCombinedUserAndUtilitiesIconCountEnforced:(BOOL)a7;
- (SBFloatingDockViewController)initWithIconManager:(id)a3 iconViewProvider:(id)a4;
- (SBFloatingDockViewControllerDelegate)delegate;
- (SBFloatingDockViewControllerIconDelegate)iconDelegate;
- (SBFolderController)presentedFolderController;
- (SBHIconModel)iconModel;
- (SBIconView)libraryPodIconView;
- (SBIconViewProviding)iconViewProvider;
- (UIWindow)animationWindow;
- (double)contentHeight;
- (double)contentHeightForFrame:(CGRect)a3;
- (double)maximumDockContinuousCornerRadius;
- (double)minimumHomeScreenScaleForFolderPresentationController:(id)a3;
- (double)minimumVerticalMarginForFrame:(CGRect)a3;
- (double)preferredVerticalMargin;
- (double)requestedVerticalMargin;
- (double)translationFromFullyPresentedFrame;
- (id)_backdropGroupName;
- (id)acquireOrderSourceContainerViewBeforeLibraryViewAssertionForReason:(id)a3;
- (id)configureForPresentingLibraryViewController:(id)a3;
- (id)containerViewControllerForPresentingInForeground:(id)a3;
- (id)customImageViewControllerForIconView:(id)a3;
- (id)dequeueReusableIconViewOfClass:(Class)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)firstIconViewForIcon:(id)a3;
- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 options:(unint64_t)a4;
- (id)folderController:(id)a3 accessibilityTintColorForScreenRect:(CGRect)a4;
- (id)folderPresentationController:(id)a3 animationControllerForTransitionWithFolder:(id)a4 presenting:(BOOL)a5 animated:(BOOL)a6;
- (id)folderPresentationController:(id)a3 sourceViewForPresentingViewController:(id)a4;
- (id)iconListView:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4;
- (id)iconListView:(id)a3 dataDropSessionDidUpdate:(id)a4;
- (id)iconListView:(id)a3 iconDropSessionDidUpdate:(id)a4;
- (id)iconListView:(id)a3 previewForDroppingIconDragItem:(id)a4 proposedPreview:(id)a5;
- (id)iconViewForIcon:(id)a3 location:(id)a4;
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
- (void)_addIconsIntoFloatingDock:(unint64_t)a3;
- (void)_addIconsToFloatingDock;
- (void)_addMaxNumberOfIconsAllowedToDockOutlet;
- (void)_bounceIconView:(id)a3;
- (void)_bounceIconView:(id)a3 maxHeight:(double)a4 animationDuration:(double)a5 bounceCount:(unint64_t)a6;
- (void)_coalesceRequestsToResizeDockForChangedNumberOfIcons;
- (void)_enforceMaxCombinedUserAndUtilitiesIconCount:(BOOL)a3;
- (void)_presentFolderForIcon:(id)a3 location:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_rebuildLibraryPodIcon;
- (void)_rebuildUserIconListView;
- (void)_rebuildUtilitiesIconListView;
- (void)_removeIconsFromFloatingDock;
- (void)_removeIconsFromFloatingDock:(unint64_t)a3;
- (void)_resizeDockForChangedNumberOfIconsAnimated:(BOOL)a3;
- (void)_setUpFloatingDockPrototypeSettings;
- (void)_sizeCategoryDidChange:(id)a3;
- (void)_updateDockForStyleConfiguration:(id)a3;
- (void)_updateEditingStateAnimated:(BOOL)a3;
- (void)_updateLibraryPodDockAccessoryViewDisplayed;
- (void)_updateLibraryPodIconComponentVisibility;
- (void)_updatePlatterShadowForStyleConfiguration:(id)a3;
- (void)_updatePresentedFolderBackgroundForStyleConfiguration:(id)a3;
- (void)_updateViewBackdropGroupName;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)cleanUpAfterUnderlyingBackgroundStyleTransition;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
- (void)coronaAnimationController:(id)a3 willAnimateCoronaTransitionWithAnimator:(id)a4;
- (void)dealloc;
- (void)dismissLibraryAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissPresentedFolderAnimated:(BOOL)a3 completion:(id)a4;
- (void)dockViewDidBecomeVisible;
- (void)dockViewDidResignVisible;
- (void)dockViewWillBecomeVisible;
- (void)dockViewWillResignVisible;
- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3;
- (void)enumerateIconListViewsUsingBlock:(id)a3;
- (void)enumerateIconListsUsingBlock:(id)a3;
- (void)enumerateVisibleIconViewsUsingBlock:(id)a3;
- (void)floatingDockViewMainPlatterDidChangeFrame:(id)a3;
- (void)folderController:(id)a3 didBeginEditingTitle:(id)a4;
- (void)folderController:(id)a3 didEndEditingTitle:(id)a4;
- (void)folderControllerShouldBeginEditing:(id)a3 withHaptic:(BOOL)a4;
- (void)folderControllerShouldEndEditing:(id)a3;
- (void)folderControllerWillBeginScrolling:(id)a3;
- (void)folderControllerWillClose:(id)a3;
- (void)folderControllerWillOpen:(id)a3;
- (void)folderPresentationController:(id)a3 willPerformTransitionWithFolder:(id)a4 presenting:(BOOL)a5 withTransitionCoordinator:(id)a6;
- (void)icon:(id)a3 touchMoved:(id)a4;
- (void)iconList:(id)a3 didAddIcon:(id)a4;
- (void)iconList:(id)a3 didRemoveIcon:(id)a4;
- (void)iconListView:(id)a3 iconDragItem:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)iconListView:(id)a3 iconDropSessionDidEnter:(id)a4;
- (void)iconListView:(id)a3 iconDropSessionDidExit:(id)a4;
- (void)iconListView:(id)a3 performIconDrop:(id)a4;
- (void)iconListView:(id)a3 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a4;
- (void)iconListView:(id)a3 willUseIconView:(id)a4 forDroppingIconDragItem:(id)a5;
- (void)iconTapped:(id)a3;
- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4;
- (void)layoutUserControlledIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4;
- (void)libraryIndicatorIconView:(id)a3 didAcceptDropForSession:(id)a4;
- (void)prepareForTransitionToStyleConfiguration:(id)a3 fromDockVisible:(BOOL)a4 toDockVisible:(BOOL)a5;
- (void)presentFolderForIcon:(id)a3 location:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)presentLibraryAnimated:(BOOL)a3 completion:(id)a4;
- (void)recycleIconView:(id)a3;
- (void)reduceTransparencyEnabledStateDidChange:(id)a3;
- (void)returnScalingView;
- (void)setDockListModel:(id)a3;
- (void)setDockOffscreenProgress:(double)a3;
- (void)setDockUtilitiesListModel:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setFolderIconImageCache:(id)a3;
- (void)setIconImageCache:(id)a3;
- (void)setIconsDragging:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setLibraryPodIconEnabled:(BOOL)a3;
- (void)setLibraryPodIconVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4;
- (void)setMaximumEditingIconSize:(CGSize)a3;
- (void)setPrefersFlatImageLayers:(BOOL)a3;
- (void)setRequestedVerticalMargin:(double)a3;
- (void)setSuggestionsViewController:(id)a3;
- (void)setSuppressesEditingStateForListViews:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)toggleLibraryPresentedAnimated:(BOOL)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SBFloatingDockViewController

- (SBFloatingDockViewController)initWithIconManager:(id)a3 iconViewProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 iconModel];
  v8 = [v7 rootFolder];
  v9 = [v8 dock];
  v10 = [v5 iconModel];
  v11 = [v10 rootFolder];
  v12 = [v11 dockUtilities];
  v13 = [v5 listLayoutProvider];
  v14 = -[SBFloatingDockViewController initWithDockListModel:utilitiesListModel:listLayoutProvider:iconViewProvider:maxCombinedUserAndUtilitiesIconCountEnforced:](self, "initWithDockListModel:utilitiesListModel:listLayoutProvider:iconViewProvider:maxCombinedUserAndUtilitiesIconCountEnforced:", v9, v12, v13, v6, [v5 shouldEnforceMaxCombinedUserAndUtilitiesIconCountForFloatingDock]);

  if (v14)
  {
    [(SBFloatingDockViewController *)v14 setIconDelegate:v5];
    v15 = [v5 iconImageCache];
    [(SBFloatingDockViewController *)v14 setIconImageCache:v15];

    v16 = [v5 folderIconImageCache];
    [(SBFloatingDockViewController *)v14 setFolderIconImageCache:v16];

    v17 = [v5 iconDragManager];
    [(SBFloatingDockViewController *)v14 setIconDragManager:v17];
  }

  return v14;
}

- (SBFloatingDockViewController)initWithDockListModel:(id)a3 utilitiesListModel:(id)a4 listLayoutProvider:(id)a5 iconViewProvider:(id)a6 maxCombinedUserAndUtilitiesIconCountEnforced:(BOOL)a7
{
  v7 = a7;
  v28[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v27.receiver = self;
  v27.super_class = SBFloatingDockViewController;
  v17 = [(SBFloatingDockViewController *)&v27 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_listLayoutProvider, a5);
    objc_storeWeak(&v18->_iconViewProvider, v16);
    objc_storeStrong(&v18->_dockListModel, a3);
    objc_storeStrong(&v18->_dockUtilitiesListModel, a4);
    v18->_isAnimatingIconViewBounce = 0;
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    originalDragItemsPreviewProvider = v18->_originalDragItemsPreviewProvider;
    v18->_originalDragItemsPreviewProvider = v19;

    [(SBFloatingDockViewController *)v18 _enforceMaxCombinedUserAndUtilitiesIconCount:v7];
    [v13 addListObserver:v18];
    [v14 addListObserver:v18];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBFloatingDockViewController;
  [(SBFloatingDockViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = SBFloatingDockViewController;
  [(SBFloatingDockViewController *)&v16 viewDidLoad];
  v3 = [(SBFloatingDockViewController *)self view];
  v4 = objc_alloc_init(SBFloatingDockView);
  [(SBFloatingDockView *)v4 setDelegate:self];
  [(SBFloatingDockViewController *)self setDockView:v4];
  [v3 addSubview:v4];
  [(SBFloatingDockViewController *)self _rebuildUserIconListView];
  [(SBFloatingDockViewController *)self _rebuildUtilitiesIconListView];
  self->_libraryPodIconVisible = 1;
  [(SBFloatingDockViewController *)self _updateLibraryPodDockAccessoryViewDisplayed];
  v5 = [(SBFloatingDockViewController *)self suggestionsViewController];
  if (v5)
  {
    [(SBFloatingDockViewController *)self addChildViewController:v5];
    v6 = [v5 listView];
    [(SBFloatingDockView *)v4 setRecentIconListView:v6];
    [v5 didMoveToParentViewController:self];
    v7 = [(SBFloatingDockViewController *)self iconImageCache];
    [v6 setIconImageCache:v7];

    v8 = [(SBFloatingDockViewController *)self folderIconImageCache];
    [v6 setFolderIconImageCache:v8];
  }

  v9 = objc_alloc_init(SBFolderPresentingViewController);
  [(SBFolderPresentingViewController *)v9 setFolderPresentationDelegate:self];
  [(SBFloatingDockViewController *)self setFolderPresentingViewController:v9];
  v10 = [(SBFolderPresentingViewController *)v9 view];
  [v10 setAutoresizingMask:18];

  v11 = [(SBFolderPresentingViewController *)v9 view];
  [v3 bounds];
  [v11 setFrame:?];

  [(SBFloatingDockViewController *)self bs_addChildViewController:v9];
  v12 = [(SBFolderPresentingViewController *)v9 view];
  [v3 sendSubviewToBack:v12];

  v13 = [SBHTouchPassThroughView alloc];
  [v3 bounds];
  v14 = [(SBHTouchPassThroughView *)v13 initWithFrame:?];
  [(SBHTouchPassThroughView *)v14 setAutoresizingMask:18];
  [(SBFloatingDockViewController *)self setScalingView:v14];
  [v3 addSubview:v14];
  v15 = [MEMORY[0x1E696AD88] defaultCenter];
  [v15 addObserver:self selector:sel_reduceTransparencyEnabledStateDidChange_ name:*MEMORY[0x1E69DD920] object:0];
  [v15 addObserver:self selector:sel__sizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SBFloatingDockViewController;
  [(SBFloatingDockViewController *)&v7 viewDidAppear:a3];
  v4 = [(SBFloatingDockViewController *)self dockView];
  v5 = [v4 window];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 sb_coronaAnimationController];
    [v6 addParticipant:self];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SBFloatingDockViewController;
  [(SBFloatingDockViewController *)&v7 viewDidDisappear:a3];
  v4 = [(SBFloatingDockViewController *)self dockView];
  v5 = [v4 window];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 sb_coronaAnimationController];
    [v6 removeParticipant:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v25.receiver = self;
  v25.super_class = SBFloatingDockViewController;
  [(SBFloatingDockViewController *)&v25 viewDidLayoutSubviews];
  v3 = [(SBFloatingDockViewController *)self view];
  [v3 bounds];
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
    v19 = [(SBFloatingDockViewController *)self iconDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v19 floatingDockViewController:self didChangeContentHeight:0 animated:v13];
    }

    v20 = [(SBFloatingDockViewController *)self delegate];
    [v20 floatingDockViewController:self didChangeContentHeight:v13];
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
  v2 = [(SBFloatingDockViewController *)self dockView];
  v3 = [v2 userIconListView];

  return v3;
}

- (id)utilitiesIconListView
{
  v2 = [(SBFloatingDockViewController *)self dockView];
  v3 = [v2 utilitiesIconListView];

  return v3;
}

- (SBIconView)libraryPodIconView
{
  libraryPodIconView = self->_libraryPodIconView;
  if (!libraryPodIconView)
  {
    v4 = objc_alloc_init(SBHLibraryPodIndicatorIcon);
    v5 = +[SBDockIconListView defaultIconViewConfigurationOptions];
    v6 = [SBIconView alloc];
    v7 = [(SBFloatingDockViewController *)self listLayoutProvider];
    v8 = [(SBIconView *)v6 initWithConfigurationOptions:v5 | 0x10 listLayoutProvider:v7];

    [(SBIconView *)v8 setDelegate:self];
    [(SBIconView *)v8 addObserver:self];
    [(SBIconView *)v8 setIcon:v4];
    [(SBIconView *)v8 setAllowsCloseBox:0];
    [(SBIconView *)v8 setAllowsEditingAnimation:0];
    [(SBIconView *)v8 setIconContentScalingEnabled:1];
    v9 = [(SBFloatingDockViewController *)self userIconLocation];
    [(SBIconView *)v8 setLocation:v9 animated:0];

    v10 = [(SBFloatingDockViewController *)self iconImageCache];
    [(SBIconView *)v8 setIconImageCache:v10];

    v11 = [(SBFloatingDockViewController *)self folderIconImageCache];
    [(SBIconView *)v8 setFolderIconImageCache:v11];

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
  v2 = [(SBFloatingDockViewController *)self dockView];
  v3 = [v2 recentIconListView];

  return v3;
}

- (void)setLibraryPodIconEnabled:(BOOL)a3
{
  if (self->_libraryPodIconEnabled != a3)
  {
    v5 = [(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible];
    self->_libraryPodIconEnabled = a3;
    if (v5 != [(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible])
    {
      [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:1];
    }

    if (!a3)
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

    v6 = [(SBFloatingDockViewController *)self dockView];
    [v6 setAccessoryIconView:0];
    [(SBFloatingDockViewController *)self _updateLibraryPodDockAccessoryViewDisplayed];
  }
}

- (void)setLibraryPodIconVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_libraryPodIconVisible != a3)
  {
    v4 = a4;
    v7 = [(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible];
    self->_libraryPodIconVisible = a3;
    if (v7 != [(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible])
    {

      [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:v4];
    }
  }
}

- (BOOL)isLibraryPodIconEffectivelyVisible
{
  v3 = [(SBFloatingDockViewController *)self isLibraryPodIconEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(SBFloatingDockViewController *)self isLibraryPodIconVisible];
  }

  return v3;
}

- (id)configureForPresentingLibraryViewController:(id)a3
{
  v5 = a3;
  libraryViewController = self->_libraryViewController;
  if (libraryViewController != v5)
  {
    [(SBHLibraryViewController *)libraryViewController removeObserver:self];
    objc_storeStrong(&self->_libraryViewController, a3);
    [(SBHLibraryViewController *)self->_libraryViewController addObserver:self];
    libraryIconViewController = self->_libraryIconViewController;
    v8 = [(SBHLibraryViewController *)v5 podFolderViewController];
    v9 = [v8 dataSource];
    [(SBHLibraryIconViewController *)libraryIconViewController setLibraryDataSource:v9];

    if (v5)
    {
      v10 = [(SBFloatingDockViewController *)self delegate];
      v11 = [v10 libraryContainerViewControllerForFloatingDockViewController:self];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = self;
      }

      v14 = v13;

      v15 = [[SBHModalLibraryPresenter alloc] initWithContainerViewController:v14 libraryViewController:v5];
      [(SBHModalLibraryPresenter *)v15 setContextProvider:self];
      [(SBHLibraryViewController *)v5 setPresenter:v15];
      [(SBFloatingDockViewController *)self setLibraryPresenter:v15];
    }

    else
    {
      [(SBFloatingDockViewController *)self setLibraryPresenter:0];
    }
  }

  v16 = [(SBFloatingDockViewController *)self libraryPresenter];

  return v16;
}

- (void)setSuggestionsViewController:(id)a3
{
  v5 = a3;
  suggestionsViewController = self->_suggestionsViewController;
  if (suggestionsViewController != v5)
  {
    v11 = v5;
    [(SBFloatingDockSuggestionsViewProviding *)suggestionsViewController setFloatingDockViewController:0];
    objc_storeStrong(&self->_suggestionsViewController, a3);
    suggestionsViewController = [(SBFloatingDockSuggestionsViewProviding *)self->_suggestionsViewController setFloatingDockViewController:self];
    v5 = v11;
    if (v11)
    {
      suggestionsViewController = [(SBFloatingDockViewController *)self isViewLoaded];
      v5 = v11;
      if (suggestionsViewController)
      {
        v7 = [(SBFloatingDockViewController *)self dockView];
        [(SBFloatingDockViewController *)self addChildViewController:v11];
        v8 = [(SBFloatingDockSuggestionsViewProviding *)v11 listView];
        [v7 setRecentIconListView:v8];
        [(SBFloatingDockSuggestionsViewProviding *)v11 didMoveToParentViewController:self];
        v9 = [(SBFloatingDockViewController *)self iconImageCache];
        [v8 setIconImageCache:v9];

        v10 = [(SBFloatingDockViewController *)self folderIconImageCache];
        [v8 setFolderIconImageCache:v10];

        v5 = v11;
      }
    }
  }

  MEMORY[0x1EEE66BB8](suggestionsViewController, v5);
}

- (id)suggestionsIconLocation
{
  v2 = [(SBFloatingDockViewController *)self suggestionsViewController];
  v3 = [v2 listView];
  v4 = [v3 iconLocation];

  return v4;
}

- (double)contentHeight
{
  v2 = [(SBFloatingDockViewController *)self dockView];
  [v2 contentHeight];
  v4 = v3;

  return v4;
}

- (double)contentHeightForFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SBFloatingDockViewController *)self dockView];
  [v7 contentHeightForBounds:{x, y, width, height}];
  v9 = v8;

  return v9;
}

- (double)preferredVerticalMargin
{
  v2 = [(SBFloatingDockViewController *)self dockView];
  [v2 interIconSpacing];
  v4 = v3;

  return v4;
}

- (double)requestedVerticalMargin
{
  v2 = [(SBFloatingDockViewController *)self dockView];
  [v2 platterVerticalMargin];
  v4 = v3;

  return v4;
}

- (void)setRequestedVerticalMargin:(double)a3
{
  v4 = [(SBFloatingDockViewController *)self dockView];
  [v4 setPlatterVerticalMargin:a3];
}

- (double)minimumVerticalMarginForFrame:(CGRect)a3
{
  BSRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SBFloatingDockViewController *)self dockView];
  [v12 platterShadowOutsetsForBounds:{v5, v7, v9, v11}];
  v14 = v13;

  return v14;
}

- (double)translationFromFullyPresentedFrame
{
  v3 = [(SBFloatingDockViewController *)self view];
  [v3 bounds];
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
  v2 = [(SBFloatingDockViewController *)self dockView];
  [v2 maximumDockContinuousCornerRadius];
  v4 = v3;

  return v4;
}

- (void)enumerateVisibleIconViewsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockViewController *)self userIconListView];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__SBFloatingDockViewController_enumerateVisibleIconViewsUsingBlock___block_invoke;
  v11[3] = &unk_1E8089310;
  v6 = v4;
  v12 = v6;
  [v5 enumerateIconViewsUsingBlock:v11];

  v7 = [(SBFloatingDockViewController *)self utilitiesIconListView];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__SBFloatingDockViewController_enumerateVisibleIconViewsUsingBlock___block_invoke_2;
  v9[3] = &unk_1E8089310;
  v10 = v6;
  v8 = v6;
  [v7 enumerateIconViewsUsingBlock:v9];
}

- (void)enumerateIconListViewsUsingBlock:(id)a3
{
  v8 = a3;
  v4 = [(SBFloatingDockViewController *)self userIconListView];
  v8[2](v8, v4);

  v5 = [(SBFloatingDockViewController *)self utilitiesIconListView];
  v8[2](v8, v5);

  v6 = [(SBFloatingDockViewController *)self suggestionsViewController];
  v7 = [v6 listView];

  if (v7)
  {
    v8[2](v8, v7);
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v4 = [SBHLegibilitySettings legibilitySettingsForLegibilitySettings:a3];
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:v4])
  {
    objc_storeStrong(&self->_legibilitySettings, v4);
    v5 = [(SBFloatingDockViewController *)self folderPresentingViewController];
    v6 = [v5 presentedFolderController];
    [v6 setLegibilitySettings:v4];

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
  v3 = [(SBFloatingDockViewController *)self presentedFolderController];
  if (v3)
  {
    v4 = [(SBFloatingDockViewController *)self presentedFolderController];
    v5 = [v4 isOpen];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBFolderController)presentedFolderController
{
  v2 = [(SBFloatingDockViewController *)self folderPresentingViewController];
  v3 = [v2 presentedFolderController];

  return v3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(SBFloatingDockViewController *)self _updateEditingStateAnimated:a4];
  }
}

- (CGSize)maximumEditingIconSize
{
  v2 = [(SBFloatingDockViewController *)self dockView];
  [v2 maximumEditingIconSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setMaximumEditingIconSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(SBFloatingDockViewController *)self dockView];
  [v5 setMaximumEditingIconSize:{width, height}];
}

- (void)setSuppressesEditingStateForListViews:(BOOL)a3
{
  if (self->_suppressesEditingStateForListViews != a3)
  {
    self->_suppressesEditingStateForListViews = a3;
    [(SBFloatingDockViewController *)self _updateEditingStateAnimated:1];
  }
}

- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_listLayoutProvider != v7)
  {
    objc_storeStrong(&self->_listLayoutProvider, a3);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __63__SBFloatingDockViewController_setListLayoutProvider_animated___block_invoke;
    v12 = &unk_1E80914E8;
    v8 = v7;
    v13 = v8;
    v14 = v4;
    [(SBFloatingDockViewController *)self enumerateIconListsUsingBlock:&v9];
    [(SBIconView *)self->_libraryPodIconView setListLayoutProvider:v8 animated:v4, v9, v10, v11, v12];
    [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:v4];
  }
}

- (void)setDockListModel:(id)a3
{
  v5 = a3;
  dockListModel = self->_dockListModel;
  if (dockListModel != v5)
  {
    v7 = v5;
    [(SBIconListModel *)dockListModel removeListObserver:self];
    objc_storeStrong(&self->_dockListModel, a3);
    [(SBIconListModel *)self->_dockListModel addListObserver:self];
    [(SBFloatingDockViewController *)self _rebuildUserIconListView];
    [(SBFloatingDockViewController *)self _rebuildUtilitiesIconListView];
    [(SBFloatingDockViewController *)self _rebuildLibraryPodIcon];
    dockListModel = [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:0];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](dockListModel, v5);
}

- (void)setDockUtilitiesListModel:(id)a3
{
  v5 = a3;
  dockUtilitiesListModel = self->_dockUtilitiesListModel;
  if (dockUtilitiesListModel != v5)
  {
    v7 = v5;
    [(SBIconListModel *)dockUtilitiesListModel removeListObserver:self];
    objc_storeStrong(&self->_dockUtilitiesListModel, a3);
    [(SBIconListModel *)self->_dockUtilitiesListModel addListObserver:self];
    [(SBFloatingDockViewController *)self _rebuildUserIconListView];
    [(SBFloatingDockViewController *)self _rebuildUtilitiesIconListView];
    [(SBFloatingDockViewController *)self _rebuildLibraryPodIcon];
    dockUtilitiesListModel = [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:0];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](dockUtilitiesListModel, v5);
}

- (void)setIconImageCache:(id)a3
{
  v5 = a3;
  if (self->_iconImageCache != v5)
  {
    objc_storeStrong(&self->_iconImageCache, a3);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__SBFloatingDockViewController_setIconImageCache___block_invoke;
    v7[3] = &unk_1E80908B0;
    v6 = v5;
    v8 = v6;
    [(SBFloatingDockViewController *)self enumerateIconListViewsUsingBlock:v7];
    [(SBIconView *)self->_libraryPodIconView setIconImageCache:v6];
  }
}

- (void)setFolderIconImageCache:(id)a3
{
  v5 = a3;
  if (self->_folderIconImageCache != v5)
  {
    objc_storeStrong(&self->_folderIconImageCache, a3);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__SBFloatingDockViewController_setFolderIconImageCache___block_invoke;
    v7[3] = &unk_1E80908B0;
    v6 = v5;
    v8 = v6;
    [(SBFloatingDockViewController *)self enumerateIconListViewsUsingBlock:v7];
    [(SBIconView *)self->_libraryPodIconView setFolderIconImageCache:v6];
  }
}

- (CGRect)floatingDockScreenFrame
{
  v3 = [(SBFloatingDockViewController *)self dockView];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 screen];

  if (v6)
  {
    [v3 platterFrame];
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
    v21 = [v6 fixedCoordinateSpace];
    [v3 convertRect:v21 toCoordinateSpace:{x, y, width, height}];
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
  v3 = [(SBFloatingDockViewController *)self dockView];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 screen];

  if (v6)
  {
    [v3 platterFrame];
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
    v21 = [v3 layer];
    v22 = [v3 layer];
    v23 = [v22 presentationLayer];
    [v21 convertRect:v23 fromLayer:{x, y, width, height}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = [v6 fixedCoordinateSpace];
    [v3 convertRect:v32 toCoordinateSpace:{v25, v27, v29, v31}];
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
  v3 = [(SBFloatingDockViewController *)self dockView];
  [v3 setHidden:0];

  [(SBFloatingDockViewController *)self enumerateVisibleIconViewsUsingBlock:&__block_literal_global_77];
  v4 = [(SBFloatingDockViewController *)self suggestionsViewController];
  [v4 dockViewWillBecomeVisible];

  v5 = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 floatingDockViewWillBecomeVisible:self];
  }
}

- (void)dockViewWillResignVisible
{
  [(SBFloatingDockViewController *)self enumerateVisibleIconViewsUsingBlock:&__block_literal_global_73_0];
  v3 = [(SBFloatingDockViewController *)self suggestionsViewController];
  [v3 dockViewWillResignVisible];

  v4 = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 floatingDockViewWillResignVisible:self];
  }
}

- (void)dockViewDidResignVisible
{
  v3 = [(SBFloatingDockViewController *)self suggestionsViewController];
  [v3 dockViewDidResignVisible];

  v8 = [(SBFloatingDockViewController *)self dockView];
  v4 = [v8 window];
  v5 = [v4 sb_coronaAnimationController];
  [v5 removeParticipant:self];

  [v8 setHidden:1];
  [(SBFloatingDockViewController *)self _updateLibraryPodIconComponentVisibility];
  v6 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:v8];
  [v6 _focusEnvironmentWillDisappear:v8];
  v7 = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 floatingDockViewDidResignVisible:self];
  }
}

- (void)dockViewDidBecomeVisible
{
  v3 = [(SBFloatingDockViewController *)self dockView];
  v4 = [v3 window];
  v5 = [v4 sb_coronaAnimationController];
  [v5 addParticipant:self];

  v6 = [(SBFloatingDockViewController *)self suggestionsViewController];
  [v6 dockViewDidBecomeVisible];
}

- (void)layoutUserControlledIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4
{
  v4 = a4;
  v7 = [(SBFloatingDockViewController *)self userIconListView];
  v12 = v7;
  if (v4)
  {
    [v7 setIconsNeedLayout];
    v7 = v12;
  }

  [v7 layoutIconsIfNeededWithAnimationType:a3 options:0];
  v8 = [(SBFloatingDockViewController *)self utilitiesIconListView];
  v9 = v8;
  if (v4)
  {
    [v8 setIconsNeedLayout];
  }

  [v9 layoutIconsIfNeededWithAnimationType:a3 options:0];
  v10 = [(SBFloatingDockViewController *)self presentedFolderController];
  [v10 layoutIconListsWithAnimationType:a3 forceRelayout:v4];

  v11 = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 floatingDockViewDidBecomeVisible:self];
  }
}

- (void)enumerateIconListsUsingBlock:(id)a3
{
  v4 = a3;
  v7 = [(SBFloatingDockViewController *)self userIconListView];
  v4[2](v4, v7);
  v5 = [(SBFloatingDockViewController *)self recentIconListView];
  v4[2](v4, v5);
  v6 = [(SBFloatingDockViewController *)self utilitiesIconListView];
  v4[2](v4, v6);
}

- (BOOL)isDisplayingIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockViewController *)self userIconLocation];
  v6 = [(SBFloatingDockViewController *)self isDisplayingIcon:v4 inLocation:v5];

  if (v6 || ([(SBFloatingDockViewController *)self utilitiesIconLocation], v7 = objc_claimAutoreleasedReturnValue(), v8 = [(SBFloatingDockViewController *)self isDisplayingIcon:v4 inLocation:v7], v7, v8))
  {
    v9 = 1;
  }

  else
  {
    v10 = [(SBFloatingDockViewController *)self suggestionsIconLocation];
    v9 = v10 && [(SBFloatingDockViewController *)self isDisplayingIcon:v4 inLocation:v10];
  }

  return v9;
}

- (BOOL)isDisplayingIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockViewController *)self userIconListView];
  if ([v5 isDisplayingIconView:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SBFloatingDockViewController *)self suggestionsViewController];
    v8 = [v7 listView];

    if ([v8 isDisplayingIconView:v4])
    {
      v6 = 1;
    }

    else
    {
      v9 = [(SBFloatingDockViewController *)self utilitiesIconListView];
      v6 = [v9 isDisplayingIconView:v4];
    }
  }

  return v6;
}

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFloatingDockViewController *)self userIconLocation];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(SBFloatingDockViewController *)self userIconListView];
LABEL_5:
    v13 = v10;
LABEL_6:
    v14 = [v10 isDisplayingIconView:v6];
    goto LABEL_7;
  }

  v11 = [(SBFloatingDockViewController *)self utilitiesIconLocation];
  v12 = [v7 isEqualToString:v11];

  if (v12)
  {
    v10 = [(SBFloatingDockViewController *)self utilitiesIconListView];
    goto LABEL_5;
  }

  v17 = [(SBFloatingDockViewController *)self suggestionsIconLocation];
  v18 = [v7 isEqualToString:v17];

  if (v18)
  {
    v19 = [(SBFloatingDockViewController *)self suggestionsViewController];
    v13 = [v19 listView];

    v10 = v13;
    goto LABEL_6;
  }

  if (!self->_libraryPodIconView || ![(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible])
  {
    v15 = 0;
    goto LABEL_8;
  }

  v13 = [(SBIconView *)self->_libraryPodIconView location];
  v14 = [v7 isEqualToString:v13];
LABEL_7:
  v15 = v14;

LABEL_8:
  return v15;
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__SBFloatingDockViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v7[3] = &unk_1E8091530;
  v9 = v10;
  v5 = v4;
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

- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(SBFloatingDockViewController *)self userIconListView];
  v8 = [v7 displayedIconViewForIcon:v15];

  if (v8)
  {
    v6[2](v6, v8);
  }

  v9 = [(SBFloatingDockViewController *)self suggestionsViewController];
  v10 = [v9 listView];
  v11 = [v10 displayedIconViewForIcon:v15];

  if (v11)
  {
    v6[2](v6, v11);
  }

  v12 = [(SBFloatingDockViewController *)self utilitiesIconListView];
  v13 = [v12 displayedIconViewForIcon:v15];

  if (v13)
  {
    v6[2](v6, v13);
  }

  if (self->_libraryPodIconView)
  {
    if ([(SBFloatingDockViewController *)self isLibraryPodIconEffectivelyVisible])
    {
      v14 = [(SBIconView *)self->_libraryPodIconView icon];

      if (v14 == v15)
      {
        v6[2](v6, self->_libraryPodIconView);
      }
    }
  }
}

- (void)prepareForTransitionToStyleConfiguration:(id)a3 fromDockVisible:(BOOL)a4 toDockVisible:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  [(SBFloatingDockViewController *)self setTransitioningUnderlyingPresentationStyleConfiguration:1];
  [(SBFloatingDockViewController *)self setTransitionTargetUnderlyingPresentationStyleConfiguration:v8];
  if (v6 && v5)
  {
    v9 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __103__SBFloatingDockViewController_prepareForTransitionToStyleConfiguration_fromDockVisible_toDockVisible___block_invoke;
    v14[3] = &unk_1E8088F18;
    v14[4] = self;
    v10 = &v15;
    v15 = v8;
    [v9 animateWithDuration:v14 animations:0.3];
LABEL_7:

    goto LABEL_8;
  }

  if (v5 && !v6)
  {
    v11 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __103__SBFloatingDockViewController_prepareForTransitionToStyleConfiguration_fromDockVisible_toDockVisible___block_invoke_2;
    v12[3] = &unk_1E8088F18;
    v12[4] = self;
    v10 = &v13;
    v13 = v8;
    [v11 performWithoutAnimation:v12];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)cleanUpAfterUnderlyingBackgroundStyleTransition
{
  v3 = [(SBFloatingDockViewController *)self transitionTargetUnderlyingPresentationStyleConfiguration];
  [(SBFloatingDockViewController *)self setTransitioningUnderlyingPresentationStyleConfiguration:0];
  [(SBFloatingDockViewController *)self setUnderlyingPresentationStyleConfiguration:v3];
  [(SBFloatingDockViewController *)self _updateDockForStyleConfiguration:v3];
}

- (void)setDockOffscreenProgress:(double)a3
{
  if (self->_dockOffscreenProgress != a3)
  {
    self->_dockOffscreenProgress = a3;
    v5 = [(SBFloatingDockViewController *)self viewIfLoaded];
    [v5 setNeedsLayout];

    v6 = [(SBFloatingDockViewController *)self viewIfLoaded];
    [v6 layoutIfNeeded];
  }
}

- (id)iconViewForIcon:(id)a3 location:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFloatingDockViewController *)self suggestionsIconLocation];
  if (v8 && [v7 isEqualToString:v8])
  {
    v9 = [(SBFloatingDockViewController *)self suggestionsViewController];
    v10 = [v9 iconViewForIcon:v6 location:v7];
LABEL_11:
    v22 = v10;

    goto LABEL_13;
  }

  v11 = [(SBFloatingDockViewController *)self userIconLocation];
  v12 = [v7 isEqualToString:v11];

  if (v12)
  {
    v13 = [(SBFloatingDockViewController *)self userIconListView];
    v14 = [v13 model];
    v15 = [v14 directlyContainsIcon:v6];

    if (v15)
    {
      v16 = [(SBFloatingDockViewController *)self userIconListView];
LABEL_10:
      v9 = v16;
      v10 = [v16 displayedIconViewForIcon:v6];
      goto LABEL_11;
    }
  }

  else
  {
    v17 = [(SBFloatingDockViewController *)self utilitiesIconLocation];
    v18 = [v7 isEqualToString:v17];

    if (v18)
    {
      v19 = [(SBFloatingDockViewController *)self utilitiesIconListView];
      v20 = [v19 model];
      v21 = [v20 directlyContainsIcon:v6];

      if (v21)
      {
        v16 = [(SBFloatingDockViewController *)self utilitiesIconListView];
        goto LABEL_10;
      }
    }
  }

  v22 = 0;
LABEL_13:

  return v22;
}

- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [(SBFloatingDockViewController *)self iconViewForIcon:v6 location:*(*(&v15 + 1) + 8 * i), v15];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)firstIconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockViewController *)self presentedIconLocations];
  v6 = [v5 allObjects];
  v7 = [(SBFloatingDockViewController *)self firstIconViewForIcon:v4 inLocations:v6];

  return v7;
}

- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBFloatingDockViewController *)self presentedIconLocations];
  v9 = [v8 mutableCopy];

  [v9 minusSet:v6];
  v10 = [v9 allObjects];
  v11 = [(SBFloatingDockViewController *)self firstIconViewForIcon:v7 inLocations:v10];

  return v11;
}

- (id)firstIconViewForIcon:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBFloatingDockViewController *)self userIconListView];
  v8 = [v7 displayedIconViewForIcon:v6];

  if (!v8)
  {
    v9 = [(SBFloatingDockViewController *)self utilitiesIconListView];
    v8 = [v9 displayedIconViewForIcon:v6];

    if (!v8)
    {
      if ((a4 & 0x40) != 0)
      {
        v8 = 0;
      }

      else
      {
        v10 = [(SBFloatingDockViewController *)self suggestionsViewController];
        v8 = SBIconViewQueryingFirstIconViewForIcon(v10, v6, a4);
      }
    }
  }

  return v8;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFloatingDockViewController *)self suggestionsIconLocation];
  if (v8 && [v7 isEqualToString:v8])
  {
    v9 = [(SBFloatingDockViewController *)self suggestionsViewController];
    v10 = [v9 isDisplayingIcon:v6 inLocation:v7];
  }

  else
  {
    v11 = [(SBFloatingDockViewController *)self userIconLocation];
    v12 = [v7 isEqualToString:v11];

    if (v12)
    {
      v13 = [(SBFloatingDockViewController *)self userIconListView];
    }

    else
    {
      v14 = [(SBFloatingDockViewController *)self utilitiesIconLocation];
      v15 = [v7 isEqualToString:v14];

      if (!v15)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v13 = [(SBFloatingDockViewController *)self utilitiesIconListView];
    }

    v9 = v13;
    v16 = [v13 model];
    v10 = [v16 directlyContainsIcon:v6];
  }

LABEL_10:
  return v10;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        if ([(SBFloatingDockViewController *)self isDisplayingIcon:v6 inLocation:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_enforceMaxCombinedUserAndUtilitiesIconCount:(BOOL)a3
{
  self->_maxCombinedUserAndUtilitiesIconCountEnforced = a3;
  if (a3)
  {
    v4 = [(SBFloatingDockViewController *)self listLayoutProvider];
    v5 = [(SBFloatingDockViewController *)self userIconLocation];
    v6 = [v4 layoutForIconLocation:v5];
    SBHIconListLayoutMaximumIconCount(v6);

    v9 = [(SBFloatingDockViewController *)self listLayoutProvider];
    v7 = [(SBFloatingDockViewController *)self utilitiesIconLocation];
    v8 = [v9 layoutForIconLocation:v7];
    SBHIconListLayoutMaximumIconCount(v8);
  }
}

- (void)_bounceIconView:(id)a3
{
  v5 = a3;
  if (v5 && !self->_isAnimatingIconViewBounce)
  {
    v9 = v5;
    objc_storeStrong(&self->_bouncingIconView, a3);
    v6 = [(SBFloatingDockViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 floatingDockViewController:self willStartBouncingIconView:v9];
    }

    if ([(SBFloatingDockViewController *)self _isDockViewOffScreen])
    {
      v7 = [(SBFloatingDockViewController *)self dockView];
      [v7 setHidden:0];

      v8 = 180.0;
    }

    else
    {
      v8 = 72.0;
    }

    [(SBFloatingDockViewController *)self _bounceIconView:v9 maxHeight:3 animationDuration:v8 bounceCount:0.5];

    v5 = v9;
  }
}

- (void)_bounceIconView:(id)a3 maxHeight:(double)a4 animationDuration:(double)a5 bounceCount:(unint64_t)a6
{
  v26 = a3;
  v10 = a5 <= 0.0 || a6 == 0;
  if (v10 || !self->_bouncingIconView)
  {
    self->_isAnimatingIconViewBounce = 0;
    v11 = [(SBFloatingDockViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v11 floatingDockViewController:self didFinishBouncingIconView:self->_bouncingIconView];
    }

    v25 = [(SBFloatingDockViewController *)self dockView];
    [v25 setHidden:{-[SBFloatingDockViewController _isDockViewOffScreen](self, "_isDockViewOffScreen")}];

    bouncingIconView = self->_bouncingIconView;
    self->_bouncingIconView = 0;
  }

  else
  {
    self->_isAnimatingIconViewBounce = 1;
    v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position.y"];
    v12 = MEMORY[0x1E696AD98];
    v13 = [v26 layer];
    [v13 position];
    v15 = [v12 numberWithDouble:v14];
    [v11 setFromValue:v15];

    v16 = MEMORY[0x1E696AD98];
    v17 = [v26 layer];
    [v17 position];
    v19 = [v16 numberWithDouble:v18 - a4];
    [v11 setToValue:v19];

    [v11 setDuration:a5 * 0.5];
    [v11 setAutoreverses:1];
    v20 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    [v11 setTimingFunction:v20];

    [v11 setDelegate:self];
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:a4 * 0.5];
    [v11 setValue:v21 forKey:@"SBFloatingDockViewControllerBounceIconViewMaxHeight"];

    v22 = [MEMORY[0x1E696AD98] numberWithDouble:a5 * 0.666666667];
    [v11 setValue:v22 forKey:@"SBFloatingDockViewControllerBounceIconViewDuration"];

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6 - 1];
    [v11 setValue:v23 forKey:@"SBFloatingDockViewControllerBounceIconViewBounceCount"];

    bouncingIconView = [v26 layer];
    [bouncingIconView addAnimation:v11 forKey:@"SBFloatingDockViewControllerBounceIconViewAnimation"];
  }
}

- (void)_rebuildUserIconListView
{
  v3 = [(SBFloatingDockViewController *)self dockViewIfExists];
  if (v3)
  {
    v11 = v3;
    v4 = [(SBFloatingDockViewController *)self dockListModel];
    v5 = [SBFloatingDockIconListView alloc];
    v6 = [(SBFloatingDockViewController *)self listLayoutProvider];
    v7 = [(SBFloatingDockViewController *)self userIconLocation];
    v8 = [(SBDockIconListView *)v5 initWithModel:v4 layoutProvider:v6 iconLocation:v7 orientation:1 iconViewProvider:self];

    [(SBIconListView *)v8 setIconViewConfigurationOptions:2];
    [(SBIconListView *)v8 setDragDelegate:self];
    v9 = [(SBFloatingDockViewController *)self iconImageCache];
    [(SBIconListView *)v8 setIconImageCache:v9];

    v10 = [(SBFloatingDockViewController *)self folderIconImageCache];
    [(SBIconListView *)v8 setFolderIconImageCache:v10];

    [(SBIconListView *)v8 setAutomaticallyAdjustsLayoutMetricsToFit:0];
    [(SBIconListView *)v8 addLayoutObserver:self];
    [v11 setUserIconListView:v8];

    v3 = v11;
  }
}

- (void)_rebuildUtilitiesIconListView
{
  v3 = [(SBFloatingDockViewController *)self dockView];
  if (v3)
  {
    v11 = v3;
    v4 = [(SBFloatingDockViewController *)self dockUtilitiesListModel];
    if (v4)
    {
      v5 = [SBFloatingDockIconListView alloc];
      v6 = [(SBFloatingDockViewController *)self listLayoutProvider];
      v7 = [(SBFloatingDockViewController *)self utilitiesIconLocation];
      v8 = [(SBDockIconListView *)v5 initWithModel:v4 layoutProvider:v6 iconLocation:v7 orientation:1 iconViewProvider:self];

      [(SBIconListView *)v8 setIconViewConfigurationOptions:2];
      [(SBIconListView *)v8 setDragDelegate:self];
      v9 = [(SBFloatingDockViewController *)self iconImageCache];
      [(SBIconListView *)v8 setIconImageCache:v9];

      v10 = [(SBFloatingDockViewController *)self folderIconImageCache];
      [(SBIconListView *)v8 setFolderIconImageCache:v10];

      [(SBIconListView *)v8 setAutomaticallyAdjustsLayoutMetricsToFit:0];
      [(SBIconListView *)v8 addLayoutObserver:self];
      [v11 setUtilitiesIconListView:v8];
    }

    v3 = v11;
  }
}

- (BOOL)canAddIcon:(id)a3 toIconList:(id)a4 inFolder:(id)a5
{
  v6 = a4;
  v7 = [(SBFloatingDockViewController *)self dockListModel];

  v8 = [(SBFloatingDockViewController *)self dockUtilitiesListModel];

  if (v7 != v6 && v8 != v6 || !self->_maxCombinedUserAndUtilitiesIconCountEnforced)
  {
    return 1;
  }

  v9 = [(SBFloatingDockViewController *)self dockListModel];
  v10 = [v9 icons];
  v11 = [v10 count];
  v12 = [(SBFloatingDockViewController *)self dockUtilitiesListModel];
  v13 = [v12 icons];
  v14 = [v13 count] + v11;

  return v14 < [(SBFloatingDockViewController *)self _maxCombinedUserAndUtilitiesIconCount];
}

- (unint64_t)_maxCombinedUserAndUtilitiesIconCount
{
  v3 = [(SBFloatingDockViewController *)self listLayoutProvider];
  v4 = [(SBFloatingDockViewController *)self userIconLocation];
  v5 = [v3 layoutForIconLocation:v4];
  v6 = SBHIconListLayoutMaximumIconCount(v5);

  return v6;
}

- (void)_updateLibraryPodDockAccessoryViewDisplayed
{
  v6 = [(SBFloatingDockViewController *)self dockView];
  v3 = [(SBFloatingDockViewController *)self isLibraryPodIconEnabled];
  v4 = [v6 accessoryIconView];

  if (!v3 || v4)
  {
    if (v4 != 0 && !v3)
    {
      [v6 setAccessoryIconView:0];
    }
  }

  else
  {
    v5 = [(SBFloatingDockViewController *)self libraryPodIconView];
    [v6 setAccessoryIconView:v5];
  }

  [v6 setAccessoryIconViewVisible:{-[SBFloatingDockViewController isLibraryPodIconVisible](self, "isLibraryPodIconVisible")}];
}

- (BOOL)_shouldOpenFolderIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockViewController *)self userIconListView];
  v6 = [v5 model];
  if ([v6 directlyContainsIcon:v4])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(SBFloatingDockViewController *)self utilitiesIconListView];
    v9 = [v8 model];
    v7 = [v9 directlyContainsIcon:v4];
  }

  return v7;
}

- (void)_resizeDockForChangedNumberOfIconsAnimated:(BOOL)a3
{
  v3 = a3;
  resizeRunLoopObserver = self->_resizeRunLoopObserver;
  if (resizeRunLoopObserver)
  {
    CFRunLoopObserverInvalidate(resizeRunLoopObserver);
    CFRelease(self->_resizeRunLoopObserver);
    self->_resizeRunLoopObserver = 0;
  }

  v6 = [(SBFloatingDockViewController *)self userIconListView];
  [v6 layoutIconsIfNeededWithAnimationType:0 options:0];
  v7 = [(SBFloatingDockViewController *)self utilitiesIconListView];
  [v7 layoutIconsIfNeededWithAnimationType:0 options:0];
  [(SBFloatingDockViewController *)self _updateLibraryPodDockAccessoryViewDisplayed];
  v8 = [(SBFloatingDockViewController *)self dockView];
  [v8 setNeedsLayout];
  [v8 contentHeight];
  v10 = v9;
  [v8 frame];
  v15 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__SBFloatingDockViewController__resizeDockForChangedNumberOfIconsAnimated___block_invoke;
  v18[3] = &unk_1E8091558;
  v19 = v8;
  v20 = self;
  if (v3)
  {
    v16 = 0.3;
  }

  else
  {
    v16 = 0.0;
  }

  v26 = v3;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v17 = v8;
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
  v2 = self;
  v3 = [(SBFloatingDockViewController *)self delegate];
  LOBYTE(v2) = [v3 isFloatingDockViewControllerPresentedOverTransitioningAppToAppContent:v2];

  return v2;
}

- (BOOL)_isInSwitcherTransition
{
  v2 = self;
  v3 = [(SBFloatingDockViewController *)self delegate];
  LOBYTE(v2) = [v3 isFloatingDockViewControllerPresentedOverTransitioningSwitcherContent:v2];

  return v2;
}

- (BOOL)_isLibraryContainedInForeground
{
  v2 = [(SBFloatingDockViewController *)self libraryPresenter];
  v3 = [v2 isLibraryContainedInForeground];

  return v3;
}

- (unint64_t)_backgroundEffectForPresentedFolder
{
  v2 = [(SBFloatingDockViewController *)self underlyingPresentationStyleConfiguration];
  v3 = [v2 backgroundEffect];

  return v3;
}

- (unint64_t)_platterEffectForPresentedFolder
{
  v2 = [(SBFloatingDockViewController *)self underlyingPresentationStyleConfiguration];
  v3 = [v2 platterEffect];

  return v3;
}

- (void)_updateDockForStyleConfiguration:(id)a3
{
  v4 = a3;
  [(SBFloatingDockViewController *)self _updatePresentedFolderBackgroundForStyleConfiguration:v4];
  [(SBFloatingDockViewController *)self _updatePlatterShadowForStyleConfiguration:v4];

  v5 = [(SBFloatingDockViewController *)self wantsFastIconReordering];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__SBFloatingDockViewController__updateDockForStyleConfiguration___block_invoke;
  v6[3] = &__block_descriptor_33_e24_v16__0__SBIconListView_8l;
  v7 = v5;
  [(SBFloatingDockViewController *)self enumerateIconListViewsUsingBlock:v6];
}

- (void)_updateLibraryPodIconComponentVisibility
{
  if ([(SBFloatingDockViewController *)self isPresentingLibrary])
  {
    v3 = [(SBFloatingDockViewController *)self isPresentingLibraryInForeground];
    [(SBFloatingDockViewController *)self setLibraryPodIconVisible:v3 ^ 1 animated:v3];
    v4 = self->_libraryIconViewController;
    v5 = [(SBHLibraryIconViewController *)v4 categoryStackView];
    v6 = v5;
    if (v3)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (v3)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    [v5 setAlpha:v7];

    v9 = [(SBHLibraryIconViewController *)v4 dismissalView];

    [v9 setAlpha:v8];
  }
}

- (void)_updatePresentedFolderBackgroundForStyleConfiguration:(id)a3
{
  v4 = [(SBFloatingDockViewController *)self folderPresentingViewController];
  [v4 setBackgroundEffect:{-[SBFloatingDockViewController _backgroundEffectForPresentedFolder](self, "_backgroundEffectForPresentedFolder")}];
}

- (void)_updatePlatterShadowForStyleConfiguration:(id)a3
{
  v4 = [a3 wantsPlatterShadow];
  v5 = [(SBFloatingDockViewController *)self dockView];
  [v5 setHasPlatterShadow:v4];
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
  v2 = [(SBFloatingDockViewController *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_dockGlassUserInterfaceStyleFromTraitCollection:v2];

  return v3;
}

- (void)_updateViewBackdropGroupName
{
  v4 = [(SBFloatingDockViewController *)self _backdropGroupName];
  v3 = [(SBHLibraryIconViewController *)self->_libraryIconViewController categoryStackView];
  [v3 setBackdropGroupName:v4];
}

- (BOOL)allowsFocus
{
  v3 = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isFocusAllowedForFloatingDockViewController:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setPrefersFlatImageLayers:(BOOL)a3
{
  if (self->_prefersFlatImageLayers != a3)
  {
    v4 = a3;
    self->_prefersFlatImageLayers = a3;
    v5 = [(SBFloatingDockViewController *)self libraryPodIconView];
    [v5 setPrefersFlatImageLayers:v4];
  }
}

- (void)_updateEditingStateAnimated:(BOOL)a3
{
  v3 = a3;
  v13 = [(SBFloatingDockViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v13 isFloatingDockViewControllerPresentedOnExternalDisplay:self] & 1) == 0)
  {
    v5 = [(SBFloatingDockViewController *)self isEditing];
    if (v5)
    {
      v6 = [(SBFloatingDockViewController *)self suppressesEditingStateForListViews]^ 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = [(SBFloatingDockViewController *)self dockView];
    [v7 setEditing:v5 animated:v3];
    v8 = [(SBFloatingDockViewController *)self userIconListView];
    [v8 setEditing:v6];
    [v8 updateEditingStateAnimated:v3];
    v9 = [v7 recentIconListView];
    [v9 setEditing:v6];
    [v9 updateEditingStateAnimated:v3];
    v10 = [v7 utilitiesIconListView];
    [v10 setEditing:v6];
    [v10 updateEditingStateAnimated:v3];
    [(SBIconView *)self->_libraryPodIconView setEditing:v6 animated:v3];
    if ([(SBFloatingDockViewController *)self isPresentingFolder])
    {
      v11 = [(SBFloatingDockViewController *)self folderPresentingViewController];
      v12 = [v11 presentedFolderController];
      [v12 setEditing:v5 animated:v3];
    }
  }
}

- (void)setIconsDragging:(BOOL)a3
{
  if (self->_iconsDragging != a3)
  {
    self->_iconsDragging = a3;
    v5 = a3;
    v6 = [(SBFloatingDockViewController *)self dockView];
    [v6 setMinimumUserIconSpaces:v5];

    [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:1];
    if (!a3)
    {
      bouncedDropSessions = self->_bouncedDropSessions;
      self->_bouncedDropSessions = 0;
    }
  }
}

- (void)reduceTransparencyEnabledStateDidChange:(id)a3
{
  v4 = [(SBFloatingDockViewController *)self folderPresentingViewController];
  [v4 setBackgroundEffect:{-[SBFloatingDockViewController _backgroundEffectForPresentedFolder](self, "_backgroundEffectForPresentedFolder")}];

  v7 = [(SBFloatingDockViewController *)self presentedFolderController];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v7 setBackgroundEffect:{-[SBFloatingDockViewController _platterEffectForPresentedFolder](self, "_platterEffectForPresentedFolder")}];
  }
}

- (void)_sizeCategoryDidChange:(id)a3
{
  v5 = [(SBFloatingDockViewController *)self userIconListView];
  [v5 removeAllIconViews];
  [v5 layoutIconsNow];
  v4 = [(SBFloatingDockViewController *)self utilitiesIconListView];
  [v4 removeAllIconViews];
  [v4 layoutIconsNow];
}

- (void)floatingDockViewMainPlatterDidChangeFrame:(id)a3
{
  v4 = [(SBFloatingDockViewController *)self delegate];
  [(SBFloatingDockViewController *)self floatingDockScreenFrame];
  [v4 floatingDockViewController:self didChangeContentFrame:?];
}

- (void)coronaAnimationController:(id)a3 willAnimateCoronaTransitionWithAnimator:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __98__SBFloatingDockViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke;
  v4[3] = &unk_1E8088C90;
  v4[4] = self;
  [a4 addAnimations:v4];
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

- (BOOL)iconListView:(id)a3 canHandleIconDropSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFloatingDockViewController *)self userIconListView];

  if (v8 == v6 || ([(SBFloatingDockViewController *)self utilitiesIconListView], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == v6))
  {
    v11 = [(SBFloatingDockViewController *)self iconDragManager];
    v10 = [v11 canHandleIconDropSession:v7 inIconListView:v6];
    v12 = [v11 canAcceptDropInSession:v7 inIconListView:v6];

    if (v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  if ([(SBFloatingDockViewController *)self shouldIndicateImpossibleDrop]&& ![(NSHashTable *)self->_bouncedDropSessions containsObject:v7])
  {
    v13 = [(SBFloatingDockViewController *)self dockView];
    [v13 bounce];

    bouncedDropSessions = self->_bouncedDropSessions;
    if (!bouncedDropSessions)
    {
      v15 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v16 = self->_bouncedDropSessions;
      self->_bouncedDropSessions = v15;

      bouncedDropSessions = self->_bouncedDropSessions;
    }

    [(NSHashTable *)bouncedDropSessions addObject:v7];
  }

LABEL_10:

  return v10;
}

- (BOOL)iconListView:(id)a3 canHandleDataDropSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 floatingDockViewController:self canHandleDataDropSession:v7 inIconListView:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)iconListView:(id)a3 iconDropSessionDidEnter:(id)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBFloatingDockViewController *)self userIconListView];

  if (v8 == v6)
  {
    v29 = [(SBFloatingDockViewController *)self iconDragManager];
    [v29 iconDropSessionDidEnter:v7 inIconListView:v6];
  }

  else
  {
    v9 = [(SBFloatingDockViewController *)self utilitiesIconListView];

    if (v9 == v6)
    {
      v10 = [(SBFloatingDockViewController *)self iconDragManager];
      [v10 iconDropSessionDidEnter:v7 inIconListView:v6];

      v40[0] = *MEMORY[0x1E699A3D0];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
      v12 = [v7 hasItemsConformingToTypeIdentifiers:v11];

      if (v12)
      {
        v30 = v7;
        v31 = v6;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        obj = [v7 items];
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
              v18 = [v17 itemProvider];
              v19 = [v18 teamData];
              if (v19)
              {
                v20 = MEMORY[0x1E696ACD0];
                v21 = objc_opt_self();
                v22 = [v20 unarchivedObjectOfClass:v21 fromData:v19 error:0];
              }

              else
              {
                v22 = 0;
              }

              v23 = [v17 previewProvider];
              if (v23)
              {
                v24 = v22 == 0;
              }

              else
              {
                v24 = 1;
              }

              if (!v24)
              {
                v25 = [(SBFloatingDockViewController *)self originalDragItemsPreviewProvider];
                v26 = [v23 copy];
                v27 = self;
                v28 = _Block_copy(v26);
                [v25 setObject:v28 forKey:v22];

                self = v27;
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

        v7 = v30;
        v6 = v31;
      }
    }
  }
}

- (id)iconListView:(id)a3 iconDropSessionDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFloatingDockViewController *)self userIconListView];

  if (v8 == v6 || ([(SBFloatingDockViewController *)self utilitiesIconListView], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == v6))
  {
    v11 = [(SBFloatingDockViewController *)self iconDragManager];
    v10 = [v11 iconDropSessionDidUpdate:v7 inIconListView:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)iconListView:(id)a3 dataDropSessionDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 floatingDockViewController:self dataDropSessionDidUpdate:v7 inIconListView:v6];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:1];
  }

  v10 = v9;

  return v10;
}

- (void)iconListView:(id)a3 iconDropSessionDidExit:(id)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBFloatingDockViewController *)self userIconListView];

  if (v8 == v6)
  {
    v27 = [(SBFloatingDockViewController *)self iconDragManager];
    [v27 iconDropSessionDidExit:v7 fromIconListView:v6];
  }

  else
  {
    v9 = [(SBFloatingDockViewController *)self utilitiesIconListView];

    if (v9 == v6)
    {
      v10 = [(SBFloatingDockViewController *)self iconDragManager];
      [v10 iconDropSessionDidExit:v7 fromIconListView:v6];

      v37[0] = *MEMORY[0x1E699A3D0];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
      v12 = [v7 hasItemsConformingToTypeIdentifiers:v11];

      if (v12)
      {
        v29 = v6;
        v30 = self;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v28 = v7;
        obj = [v7 items];
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
              v18 = [v17 itemProvider];
              v19 = [v18 teamData];
              if (v19)
              {
                v20 = MEMORY[0x1E696ACD0];
                v21 = objc_opt_self();
                v22 = [v20 unarchivedObjectOfClass:v21 fromData:v19 error:0];

                if (v22)
                {
                  v23 = [(SBFloatingDockViewController *)v30 originalDragItemsPreviewProvider];
                  v24 = [v23 objectForKey:v22];

                  if (v24)
                  {
                    v25 = [v24 copy];
                    [v17 setPreviewProvider:v25];

                    v26 = [(SBFloatingDockViewController *)v30 originalDragItemsPreviewProvider];
                    [v26 removeObjectForKey:v22];
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

        v7 = v28;
        v6 = v29;
      }
    }
  }
}

- (void)iconListView:(id)a3 performIconDrop:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBFloatingDockViewController *)self iconDragManager];
  [v8 performIconDrop:v6 inIconListView:v7];

  [(SBFloatingDockViewController *)self _resizeDockForChangedNumberOfIconsAnimated:1];
}

- (void)iconListView:(id)a3 willUseIconView:(id)a4 forDroppingIconDragItem:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBFloatingDockViewController *)self iconDragManager];
  [v11 iconListView:v10 willUseIconView:v9 forDroppingIconDragItem:v8];
}

- (id)iconListView:(id)a3 previewForDroppingIconDragItem:(id)a4 proposedPreview:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBFloatingDockViewController *)self iconDragManager];
  v12 = [v11 iconListView:v10 previewForDroppingIconDragItem:v9 proposedPreview:v8];

  return v12;
}

- (void)iconListView:(id)a3 iconDragItem:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBFloatingDockViewController *)self iconDragManager];
  [v11 iconListView:v10 iconDragItem:v9 willAnimateDropWithAnimator:v8];
}

- (BOOL)iconListView:(id)a3 shouldAllowSpringLoadedInteractionForIconDropSession:(id)a4 onIconView:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SBFloatingDockViewController *)self iconDragManager];
  v10 = [v9 shouldAllowSpringLoadedInteractionForIconDropSession:v8 onIconView:v7];

  return v10;
}

- (void)iconListView:(id)a3 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBFloatingDockViewController *)self iconDragManager];
  [v6 performSpringLoadedInteractionForIconDragOnIconView:v5];
}

- (id)iconListView:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBFloatingDockViewController *)self iconDragManager];
  v9 = [v8 iconListView:v7 customSpringAnimationBehaviorForDroppingItem:v6];

  return v9;
}

- (void)iconList:(id)a3 didAddIcon:(id)a4
{
  v8 = a3;
  v5 = [(SBFloatingDockViewController *)self dockListModel];

  if (v5 == v8 || ([(SBFloatingDockViewController *)self dockUtilitiesListModel], v6 = objc_claimAutoreleasedReturnValue(), v6, v7 = v8, v6 == v8))
  {
    [(SBFloatingDockViewController *)self _coalesceRequestsToResizeDockForChangedNumberOfIcons];
    v7 = v8;
  }
}

- (void)iconList:(id)a3 didRemoveIcon:(id)a4
{
  v8 = a3;
  v5 = [(SBFloatingDockViewController *)self dockListModel];

  if (v5 == v8 || ([(SBFloatingDockViewController *)self dockUtilitiesListModel], v6 = objc_claimAutoreleasedReturnValue(), v6, v7 = v8, v6 == v8))
  {
    [(SBFloatingDockViewController *)self _coalesceRequestsToResizeDockForChangedNumberOfIcons];
    v7 = v8;
  }
}

- (BOOL)isPresentingIconLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockViewController *)self userIconLocation];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(SBFloatingDockViewController *)self suggestionsViewController];
    v7 = [v8 isPresentingIconLocation:v4];
  }

  return v7;
}

- (NSSet)presentedIconLocations
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(SBFloatingDockViewController *)self userIconLocation];
  v5 = [v3 setWithObject:v4];

  v6 = [(SBFloatingDockViewController *)self suggestionsViewController];
  v7 = [v6 presentedIconLocations];
  v8 = [v5 setByAddingObjectsFromSet:v7];

  return v8;
}

- (id)dequeueReusableIconViewOfClass:(Class)a3
{
  v4 = [(SBFloatingDockViewController *)self iconViewProvider];
  v5 = [v4 dequeueReusableIconViewOfClass:a3];

  return v5;
}

- (void)recycleIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockViewController *)self iconViewProvider];
  [v5 recycleIconView:v4];
}

- (BOOL)isIconViewRecycled:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockViewController *)self iconViewProvider];
  v6 = [v5 isIconViewRecycled:v4];

  return v6;
}

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBFloatingDockViewController *)self iconViewProvider];
  [v8 configureIconView:v7 forIcon:v6];
}

- (void)icon:(id)a3 touchMoved:(id)a4
{
  v5 = a4;
  v26 = a3;
  UIEdgeInsetsMakeWithEdges();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v26 bounds];
  v15 = v9 + v14;
  v17 = v7 + v16;
  v19 = v18 - (v9 + v13);
  v21 = v20 - (v7 + v11);
  [v5 locationInView:v26];
  v23 = v22;
  v25 = v24;

  v29.origin.x = v15;
  v29.origin.y = v17;
  v29.size.width = v19;
  v29.size.height = v21;
  v28.x = v23;
  v28.y = v25;
  [v26 setHighlighted:{CGRectContainsPoint(v29, v28)}];
}

- (void)iconTapped:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(SBFloatingDockViewController *)self toggleLibraryPresentedAnimated:1 completion:0];
  v4 = [(SBFloatingDockViewController *)self delegate];
  v5 = [v4 isFloatingDockViewControllerPresentedOverApplication:self];
  v11 = *MEMORY[0x1E69D4548];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = MEMORY[0x1E69D3F90];
  v9 = v7;
  v10 = [v8 sharedInstance];
  [v10 emitEvent:51 withPayload:v9];
}

- (id)customImageViewControllerForIconView:(id)a3
{
  libraryIconViewController = self->_libraryIconViewController;
  if (!libraryIconViewController)
  {
    v5 = a3;
    v6 = [SBHLibraryIconViewController alloc];
    v7 = [v5 listLayoutProvider];

    v8 = [(SBHLibraryIconViewController *)v6 initWithListLayoutProvider:v7];
    v9 = [(SBFloatingDockViewController *)self libraryViewController];
    v10 = [v9 podFolderViewController];
    v11 = [v10 dataSource];
    [(SBHLibraryIconViewController *)v8 setLibraryDataSource:v11];

    v12 = [(SBHLibraryIconViewController *)v8 categoryStackView];
    v13 = [(SBFloatingDockViewController *)self _backdropGroupName];
    [v12 setBackdropGroupName:v13];

    v14 = self->_libraryIconViewController;
    self->_libraryIconViewController = v8;

    libraryIconViewController = self->_libraryIconViewController;
  }

  return libraryIconViewController;
}

- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    [(SBFloatingDockViewController *)self bs_removeChildViewController:v6];
  }

  v7 = [v8 customIconImageViewController];
  if (v7)
  {
    [(SBFloatingDockViewController *)self bs_addChildViewController:v7];
  }
}

- (BOOL)iconViewCanBecomeFocused:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 floatingDockViewController:self iconViewCanBecomeFocused:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isPresentingLibrary
{
  v2 = [(SBFloatingDockViewController *)self libraryPresenter];
  v3 = [v2 isPresentingLibrary];

  return v3;
}

- (BOOL)isPresentingLibraryInForeground
{
  v3 = [(SBFloatingDockViewController *)self isPresentingLibrary];
  if (v3)
  {

    LOBYTE(v3) = [(SBFloatingDockViewController *)self _isLibraryContainedInForeground];
  }

  return v3;
}

- (void)presentLibraryAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBFloatingDockViewController *)self libraryPresenter];
  [v7 presentLibraryWithAnimation:v4 completion:v6];
}

- (void)dismissLibraryAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  if (v4 && (![(SBFloatingDockViewController *)self _isLibraryContainedInForeground]|| [(SBFloatingDockViewController *)self _isInAppToAppTransition]|| [(SBFloatingDockViewController *)self _isInSwitcherTransition]))
  {
    v6 = [(SBFloatingDockViewController *)self libraryPresenter];
    [v6 dismissLibraryWithTransition:2 completion:v7];
  }

  else
  {
    v6 = [(SBFloatingDockViewController *)self libraryPresenter];
    [v6 dismissLibraryWithAnimation:v4 completion:v7];
  }
}

- (void)toggleLibraryPresentedAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBFloatingDockViewController *)self libraryPresenter];
  [v7 toggleLibraryPresentedInForegroundWithAnimation:v4 completion:v6];
}

- (BOOL)isDefaultContainerForegroundForPresenter:(id)a3
{
  v3 = self;
  v4 = [(SBFloatingDockViewController *)self delegate];
  LOBYTE(v3) = [v4 isDefaultLibraryContainerViewControllerForegroundForFloatingDockViewController:v3];

  return v3;
}

- (id)containerViewControllerForPresentingInForeground:(id)a3
{
  v4 = [(SBFloatingDockViewController *)self delegate];
  v5 = [v4 foregroundLibraryContainerViewControllerForFloatingDockViewController:self];

  return v5;
}

- (id)acquireOrderSourceContainerViewBeforeLibraryViewAssertionForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockViewController *)self delegate];
  v6 = [v5 floatingDockViewController:self acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason:v4];

  return v6;
}

- (void)libraryIndicatorIconView:(id)a3 didAcceptDropForSession:(id)a4
{
  v5 = a4;
  v6 = [(SBFloatingDockViewController *)self iconDragManager];
  [v6 noteDragItemWasConsumedExternallyForDropSession:v5];
}

- (void)presentFolderForIcon:(id)a3 location:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SBFloatingDockViewController *)self currentFolderAnimator];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 childViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 folder];
      v17 = [v16 icon];
    }

    else
    {
      v17 = 0;
    }

    if ([v10 isEqual:v17])
    {
      if (v12)
      {
        v19 = [(SBFloatingDockViewController *)self currentExpandCompletions];
        if (!v19)
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [(SBFloatingDockViewController *)self setCurrentExpandCompletions:v19];
        }

        v20 = [v12 copy];
        v21 = _Block_copy(v20);
        [v19 addObject:v21];
      }

      if ([v14 currentOperation] == 1)
      {
        [v14 reverse];
      }
    }

    else if (v12)
    {
      (*(v12 + 2))(v12, 0);
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
    v23 = v12;
    v18 = _Block_copy(aBlock);
    [(SBFloatingDockViewController *)self _presentFolderForIcon:v10 location:v11 animated:v7 completion:v18];

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

- (void)dismissPresentedFolderAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBFloatingDockViewController *)self iconDelegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 floatingDockViewControllerCanCloseFolders:self] & 1) == 0)
  {
    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    v8 = [(SBFloatingDockViewController *)self currentFolderAnimator];
    if (v8)
    {
      if (v6)
      {
        v9 = [(SBFloatingDockViewController *)self currentCollapseCompletions];
        if (!v9)
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [(SBFloatingDockViewController *)self setCurrentCollapseCompletions:v9];
        }

        v10 = [v6 copy];
        v11 = _Block_copy(v10);
        [v9 addObject:v11];
      }

      if (![v8 currentOperation])
      {
        [v8 reverse];
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
      v17 = v6;
      v12 = _Block_copy(aBlock);
      v13 = [(SBFloatingDockViewController *)self folderPresentingViewController];
      v14 = [v13 presentedFolderController];
      if (v14)
      {
        v15 = [(SBFloatingDockViewController *)self iconDragManager];
        [v15 noteFolderControllerWillClose:v14];
      }

      [v13 dismissPresentedFolderControllerAnimated:v4 completion:v12];

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

- (void)_presentFolderForIcon:(id)a3 location:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10 && [(SBFloatingDockViewController *)self _shouldOpenFolderIcon:v10])
  {
    v13 = [(SBFloatingDockViewController *)self userIconListView];
    v14 = [v13 displayedIconViewForIcon:v10];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v17 = [(SBFloatingDockViewController *)self utilitiesIconListView];
      v15 = [v17 displayedIconViewForIcon:v10];

      if (!v15)
      {
        v31 = SBLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [SBFloatingDockViewController _presentFolderForIcon:location:animated:completion:];
        }

        if (v12)
        {
          v12[2](v12, 0);
        }

        goto LABEL_16;
      }
    }

    v32 = v7;
    v33 = v13;
    v18 = [v10 folder];
    v19 = [(SBFloatingDockViewController *)self controllerClassForFolder:v18];
    v20 = objc_alloc_init([(objc_class *)v19 configurationClass]);
    [v20 setFolder:v18];
    v21 = [(SBFloatingDockViewController *)self listLayoutProvider];
    [v20 setListLayoutProvider:v21];

    [v20 setOrientation:{-[SBFloatingDockViewController interfaceOrientation](self, "interfaceOrientation")}];
    [v20 setIconViewProvider:self];
    v22 = [(SBFloatingDockViewController *)self folderIconImageCache];
    [v20 setFolderIconImageCache:v22];

    v23 = [(SBFloatingDockViewController *)self legibilitySettings];
    [v20 setLegibilitySettings:v23];

    [v20 setFolderDelegate:self];
    [v20 setOriginatingIconLocation:v11];
    [v20 setAddsFocusGuidesForWrapping:{-[SBFloatingDockViewController allowsFocus](self, "allowsFocus")}];
    v24 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v26 = v20;
      v27 = [(SBFloatingDockViewController *)self _platterEffectForPresentedFolder];
      if (v27 == 1)
      {
        v28 = 3;
      }

      else
      {
        v28 = v27;
      }

      [v26 setBackgroundEffect:v28];
    }

    v29 = [[v19 alloc] initWithConfiguration:v20];
    [v29 setFolderIconView:v15];
    [v29 setEditing:-[SBFloatingDockViewController isEditing](self animated:{"isEditing"), 0}];
    v30 = [(SBFloatingDockViewController *)self folderPresentingViewController];
    [v30 setBackgroundEffect:{-[SBFloatingDockViewController _backgroundEffectForPresentedFolder](self, "_backgroundEffectForPresentedFolder")}];
    [v30 presentFolderController:v29 animated:v32 completion:v12];

    v13 = v33;
LABEL_16:

    goto LABEL_17;
  }

  v16 = SBLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [SBFloatingDockViewController _presentFolderForIcon:location:animated:completion:];
  }

  if (v12)
  {
    v12[2](v12, 0);
  }

LABEL_17:
}

- (id)folderPresentationController:(id)a3 animationControllerForTransitionWithFolder:(id)a4 presenting:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(SBFloatingDockViewController *)self folderPresentingViewController];

  v13 = 0;
  if (v12 != v11 || !v6)
  {
    goto LABEL_19;
  }

  v14 = [v10 folder];
  v15 = [v14 icon];

  if (v15 && [(SBScaleIconZoomAnimator *)SBFolderIconZoomAnimator validateAnimationContainer:self targetIcon:v15])
  {
    v16 = 0;
    if (v7)
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
    [SBFloatingDockViewController folderPresentationController:v15 animationControllerForTransitionWithFolder:v17 presenting:? animated:?];
  }

  v16 = 1;
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ((v16 | UIAccessibilityIsReduceMotionEnabled()) != 1)
  {
    v20 = [[SBFolderIconZoomAnimator alloc] initWithAnimationContainer:self innerFolderController:v10 folderIcon:v15];
    [(SBFolderIconZoomAnimator *)v20 setIsAnimatingInFloatingDock:1];
    goto LABEL_14;
  }

LABEL_12:
  v18 = [SBIconFadeAnimator alloc];
  v19 = [v10 contentView];
  v20 = [(SBIconFadeAnimator *)v18 initWithAnimationContainer:self crossfadeView:v19];

  [(SBFolderIconZoomAnimator *)v20 setFadesReferenceView:0];
LABEL_14:
  v13 = [[SBHomeScreenIconTransitionAnimator alloc] initWithIconAnimator:v20 childViewController:v10 operation:v7 ^ 1];
  [(SBFloatingDockViewController *)self setCurrentFolderAnimator:v13];
  v21 = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    v22 = [v21 iconTransitionAnimatorDelegateForFloatingDockViewController:self];
    [(SBHomeScreenIconTransitionAnimator *)v13 setDelegate:v22];
  }

  v23 = [(SBFloatingDockViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v23 floatingDockViewController:self willUseAnimator:v13 forTransitioningWithFolder:v10 presenting:v7];
  }

LABEL_19:

  return v13;
}

- (void)folderPresentationController:(id)a3 willPerformTransitionWithFolder:(id)a4 presenting:(BOOL)a5 withTransitionCoordinator:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  v12 = a3;
  v13 = [(SBFloatingDockViewController *)self folderPresentingViewController];

  if (v13 == v12)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __130__SBFloatingDockViewController_folderPresentationController_willPerformTransitionWithFolder_presenting_withTransitionCoordinator___block_invoke;
    v19[3] = &unk_1E808D468;
    v19[4] = self;
    v20 = v10;
    v21 = v7;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __130__SBFloatingDockViewController_folderPresentationController_willPerformTransitionWithFolder_presenting_withTransitionCoordinator___block_invoke_2;
    v16[3] = &unk_1E808E988;
    v14 = v20;
    v17 = v14;
    v18 = self;
    [v11 animateAlongsideTransition:v19 completion:v16];
    if ([v11 isAnimated])
    {
      [v11 animateAlongsideTransition:&__block_literal_global_137_0 completion:0];
    }

    v15 = [(SBFloatingDockViewController *)self delegate];
    [v15 floatingDockViewController:self willPerformTransitionWithFolder:v14 presenting:v7 withTransitionCoordinator:v11];
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

- (double)minimumHomeScreenScaleForFolderPresentationController:(id)a3
{
  v4 = [(SBFloatingDockViewController *)self delegate];
  [v4 minimumHomeScreenScaleForFloatingDockViewController:self];
  v6 = v5;

  return v6;
}

- (id)folderPresentationController:(id)a3 sourceViewForPresentingViewController:(id)a4
{
  v5 = a4;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 folder];
    v9 = [v8 icon];

    v10 = [(SBFloatingDockViewController *)self firstIconViewForIcon:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UIWindow)animationWindow
{
  v2 = [(SBFloatingDockViewController *)self view];
  v3 = [v2 window];

  return v3;
}

- (SBHIconModel)iconModel
{
  v2 = [(SBFloatingDockViewController *)self dockListModel];
  v3 = [v2 folder];
  v4 = [v3 rootFolder];
  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 model];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)returnScalingView
{
  v4 = [(SBFloatingDockViewController *)self view];
  v3 = [(SBFloatingDockViewController *)self scalingView];
  [v4 addSubview:v3];
}

- (Class)controllerClassForFolder:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 floatingDockViewController:self controllerClassForFolderClass:objc_opt_class()];
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
  v3 = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 interfaceOrientationForFloatingDockViewController:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)folderControllerWillOpen:(id)a3
{
  v5 = a3;
  [(SBFloatingDockSuggestionsViewProviding *)self->_suggestionsViewController dockFolderWillBeginTransitioning];
  v4 = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 floatingDockViewController:self willOpenFolderController:v5];
  }
}

- (void)folderControllerWillClose:(id)a3
{
  v6 = a3;
  if (![(SBFloatingDockViewController *)self _isInAppToAppTransition])
  {
    v4 = [(SBFloatingDockViewController *)self delegate];
    [v4 floatingDockViewController:self wantsToBePresented:1];
  }

  [(SBFloatingDockSuggestionsViewProviding *)self->_suggestionsViewController dockFolderWillBeginTransitioning];
  v5 = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 floatingDockViewController:self willCloseFolderController:v6];
  }
}

- (void)folderControllerShouldBeginEditing:(id)a3 withHaptic:(BOOL)a4
{
  v11 = a3;
  v5 = [(SBFloatingDockViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 isFloatingDockViewControllerPresentedOnExternalDisplay:self] & 1) == 0)
  {
    v6 = [(SBFloatingDockViewController *)self iconDelegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v11 view];
      v8 = [v7 window];
      v9 = [v8 _screen];
      v10 = [v9 coordinateSpace];
      [v7 center];
      [v7 convertPoint:v10 toCoordinateSpace:?];
      [v6 floatingDockViewController:self wantsToBeginEditingAtScreenLocation:?];
    }
  }
}

- (void)folderControllerShouldEndEditing:(id)a3
{
  v4 = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 floatingDockViewControllerWantsToEndEditing:self];
  }
}

- (void)folderControllerWillBeginScrolling:(id)a3
{
  v3 = [(SBFloatingDockViewController *)self iconDragManager];
  [v3 noteFolderBeganScrolling];
}

- (void)folderController:(id)a3 didBeginEditingTitle:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 floatingDockViewController:self folderController:v8 didBeginEditingTitle:v6];
  }
}

- (void)folderController:(id)a3 didEndEditingTitle:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 floatingDockViewController:self folderController:v8 didEndEditingTitle:v6];
  }
}

- (id)folderController:(id)a3 accessibilityTintColorForScreenRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(SBFloatingDockViewController *)self iconDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 floatingDockViewController:self accessibilityTintColorForScreenRect:{x, y, width, height}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v6 = a3;
  v18 = v6;
  if (a4)
  {
    v7 = [v6 valueForKey:@"SBFloatingDockViewControllerBounceIconViewMaxHeight"];
    [v7 floatValue];
    v9 = v8;

    v10 = [v18 valueForKey:@"SBFloatingDockViewControllerBounceIconViewDuration"];
    [v10 floatValue];
    v12 = v11;

    v13 = [v18 valueForKey:@"SBFloatingDockViewControllerBounceIconViewBounceCount"];
    v14 = [v13 integerValue];

    [(SBFloatingDockViewController *)self _bounceIconView:self->_bouncingIconView maxHeight:v14 animationDuration:v9 bounceCount:v12];
  }

  else
  {
    self->_isAnimatingIconViewBounce = 0;
    v15 = [(SBFloatingDockViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v15 floatingDockViewController:self didFinishBouncingIconView:self->_bouncingIconView];
    }

    v16 = [(SBFloatingDockViewController *)self dockView];
    [v16 setHidden:{-[SBFloatingDockViewController _isDockViewOffScreen](self, "_isDockViewOffScreen")}];

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
  v5 = [(SBHFloatingDockSettings *)self->_floatingDockPrototypeSettings addIconsToFloatingDockOutlet];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__SBFloatingDockViewController__setUpFloatingDockPrototypeSettings__block_invoke;
  v14[3] = &unk_1E8088C90;
  v14[4] = self;
  v6 = [v5 addAction:v14];

  v7 = [(SBHFloatingDockSettings *)self->_floatingDockPrototypeSettings removeIconsFromFloatingDockOutlet];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__SBFloatingDockViewController__setUpFloatingDockPrototypeSettings__block_invoke_2;
  v13[3] = &unk_1E8088C90;
  v13[4] = self;
  v8 = [v7 addAction:v13];

  v9 = [(SBHFloatingDockSettings *)self->_floatingDockPrototypeSettings addMaxNumberOfIconsAllowedToDockOutlet];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__SBFloatingDockViewController__setUpFloatingDockPrototypeSettings__block_invoke_3;
  v12[3] = &unk_1E8088C90;
  v12[4] = self;
  v10 = [v9 addAction:v12];

  v11 = [(SBHFloatingDockSettings *)self->_floatingDockPrototypeSettings connectedClientBundleIdentifier];
  [(SBFloatingDockViewController *)self setConnectedRemoteContentBundleIdentifier:v11];
}

- (void)_addIconsToFloatingDock
{
  v3 = [(SBHFloatingDockSettings *)self->_floatingDockPrototypeSettings numberOfIconsToAddOrRemove];

  [(SBFloatingDockViewController *)self _addIconsIntoFloatingDock:v3];
}

- (void)_removeIconsFromFloatingDock
{
  v3 = [(SBHFloatingDockSettings *)self->_floatingDockPrototypeSettings numberOfIconsToAddOrRemove];

  [(SBFloatingDockViewController *)self _removeIconsFromFloatingDock:v3];
}

- (void)_addMaxNumberOfIconsAllowedToDockOutlet
{
  v3 = [(SBFloatingDockViewController *)self userIconListView];
  v4 = [v3 layoutProvider];
  v5 = [v4 layoutForIconLocation:@"SBIconLocationFloatingDock"];
  v6 = SBHIconListLayoutMaximumIconCount(v5);

  v7 = [(SBFloatingDockViewController *)self userIconListView];
  v8 = v6 - [v7 numberOfDisplayedIconViews];

  [(SBFloatingDockViewController *)self _addIconsIntoFloatingDock:v8];
}

- (void)_addIconsIntoFloatingDock:(unint64_t)a3
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
  if (v13[5] && a3)
  {
    do
    {
      v6 = v13[5];
      v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      v8 = [v7 UUIDString];
      v9 = [v6 copyWithLeafIdentifier:v8];

      v10 = [(SBIconListModel *)self->_dockListModel addIcon:v9];
      --a3;
    }

    while (a3);
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

- (void)_removeIconsFromFloatingDock:(unint64_t)a3
{
  v5 = [(SBIconListModel *)self->_dockListModel numberOfIcons];
  if (v5 < a3)
  {
    a3 = v5;
  }

  for (; a3; --a3)
  {
    [(SBIconListModel *)self->_dockListModel removeLastIcon];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_floatingDockPrototypeSettings == a3 && [a4 isEqualToString:@"connectedClientBundleIdentifier"])
  {
    v7 = +[SBHFloatingDockDomain rootSettings];
    v5 = [v7 connectedClientBundleIdentifier];
    [(SBFloatingDockViewController *)self setConnectedRemoteContentBundleIdentifier:v5];

    v6 = [(SBFloatingDockViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 reconnectHostingClient:self];
    }
  }
}

- (id)succinctDescription
{
  v2 = [(SBFloatingDockViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFloatingDockViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBFloatingDockViewController *)self succinctDescriptionBuilder];
  [(SBFloatingDockViewController *)self dockOffscreenProgress];
  v5 = [v4 appendFloat:@"dockOffscreenProgress" withName:2 decimalPrecision:?];
  v6 = [(SBFloatingDockViewController *)self suggestionsViewController];
  v7 = [v4 appendObject:v6 withName:@"suggestionsViewController"];

  [(SBFloatingDockViewController *)self contentHeight];
  v8 = [v4 appendDouble:@"contentHeight" withName:1 decimalPrecision:?];
  [(SBFloatingDockViewController *)self maximumContentHeight];
  v9 = [v4 appendDouble:@"maximumContentHeight" withName:1 decimalPrecision:?];
  v10 = [v4 appendBool:-[SBFloatingDockViewController isPresentingLibrary](self withName:"isPresentingLibrary") ifEqualTo:{@"isPresentingLibrary", 1}];
  v11 = [v4 appendBool:-[SBFloatingDockViewController _isLibraryContainedInForeground](self withName:"_isLibraryContainedInForeground") ifEqualTo:{@"isLibraryContainedInForeground", 1}];
  v12 = [v4 appendBool:-[SBFloatingDockViewController isPresentingFolder](self withName:"isPresentingFolder") ifEqualTo:{@"isPresentingFolder", 1}];
  v13 = [(SBFloatingDockViewController *)self presentedFolderController];
  v14 = [v4 appendObject:v13 withName:@"presentedFolderController" skipIfNil:1];

  v15 = [(SBFloatingDockViewController *)self legibilitySettings];
  v16 = [v4 appendObject:v15 withName:@"legibilitySettings"];

  v17 = [(SBFloatingDockViewController *)self underlyingPresentationStyleConfiguration];
  v18 = [v4 appendObject:v17 withName:@"underlyingPresentationStyleConfiguration"];

  return v4;
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