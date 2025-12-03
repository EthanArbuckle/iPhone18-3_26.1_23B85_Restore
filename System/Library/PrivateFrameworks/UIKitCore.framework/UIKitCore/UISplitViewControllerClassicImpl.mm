@interface UISplitViewControllerClassicImpl
+ (double)_defaultGutterWidthInView:(id)view;
- (BOOL)_canDisplayHostedMaster;
- (BOOL)_defersUpdateDelegateHiddenMasterAspectRatios;
- (BOOL)_disableAutomaticKeyboardBehavior;
- (BOOL)_effectivePresentsWithGesture;
- (BOOL)_hasMasterViewController;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_hidesMasterViewInCurrentOrientation;
- (BOOL)_hidesMasterViewInOrientation:(int64_t)orientation medusaState:(int64_t)state;
- (BOOL)_iPhoneShouldUseOverlayIfRegularWidth;
- (BOOL)_iPhoneShouldUseOverlayInCurrentEnvironment;
- (BOOL)_isBasicallyHorizontallyCompact;
- (BOOL)_isMasterViewShown;
- (BOOL)_isTransitioningFromCollapsedToSeparated;
- (BOOL)_layoutPrimaryOnRight;
- (BOOL)_shouldPreventAutorotation;
- (BOOL)_shouldUseRelativeInsets;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hidesMasterViewInLandscape;
- (BOOL)hidesMasterViewInPortrait;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CGRect)_detailViewFrame;
- (CGRect)_detailViewFrame:(CGRect)frame;
- (CGRect)_frameForChildContentContainer:(id)container;
- (CGRect)_masterViewFrame;
- (CGRect)_masterViewFrame:(CGRect)frame;
- (CGSize)_contentSizeForChildViewController:(id)controller inPopoverController:(id)popoverController;
- (CGSize)_preferredContentSize;
- (CGSize)_screenSizeInMainScene:(BOOL)scene;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (NSArray)viewControllers;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UISplitViewController)splitViewController;
- (UISplitViewControllerClassicImpl)initWithSplitViewController:(id)controller;
- (UISplitViewControllerDelegate)delegate;
- (double)_contentMarginForChildViewController:(id)controller;
- (double)_defaultMaximumPrimaryColumnWidthForSize:(CGSize)size;
- (double)_primaryColumnWidthForSize:(CGSize)size;
- (double)_primaryColumnWidthForSize:(CGSize)size isCompact:(BOOL)compact;
- (double)effectiveMinimumPrimaryColumnWidth;
- (double)primaryColumnWidth;
- (float)gutterWidth;
- (id)_additionalViewControllersToCheckForUserActivity;
- (id)_allContainedViewControllers;
- (id)_childContainingSender:(id)sender;
- (id)_childViewControllerForSpokenContent;
- (id)_childViewControllersToSendViewWillTransitionToSize;
- (id)_deepestActionResponder;
- (id)_deepestUnambiguousResponder;
- (id)_defaultDisplayModes;
- (id)_effectiveActivityItemsConfiguration;
- (id)_multitaskingDragExclusionRects;
- (id)_nextVisibleViewControllerForResponderAfterChildViewController:(id)controller;
- (id)_orderedPreferredFocusedViewControllers;
- (id)_overridingPreferredFocusEnvironment;
- (id)_primaryContentResponder;
- (id)_primaryViewControllerForCollapsing;
- (id)_primaryViewControllerForExpanding;
- (id)_secondaryViewControllerForCollapsing;
- (id)_separateSecondaryViewControllerFromPrimaryViewController:(id)controller;
- (id)_topLevelViewControllerForColumn:(int64_t)column;
- (id)childViewControllerForStatusBarStyle;
- (id)detailViewController;
- (id)displayModeButtonItem;
- (id)masterViewController;
- (id)preferredFocusEnvironments;
- (id)preferredFocusedView;
- (int64_t)_currentInterfaceIdiom;
- (int64_t)_defaultTargetDisplayMode;
- (int64_t)_effectivePrimaryHidingState;
- (int64_t)_internalModeForTraitCollection:(id)collection orientation:(int64_t)orientation viewSize:(CGSize)size medusaState:(int64_t)state;
- (int64_t)_medusaState;
- (int64_t)_medusaStateForOrientation:(int64_t)orientation viewWidth:(double)width;
- (int64_t)_prepareToTransitionToViewSize:(CGSize)size fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation duration:(double)duration;
- (int64_t)displayMode;
- (int64_t)preferredCenterStatusBarStyle;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredLeadingStatusBarStyle;
- (int64_t)preferredTrafficLightStyle;
- (int64_t)preferredTrailingStatusBarStyle;
- (unint64_t)_lastFocusedChildViewControllerIndex;
- (unint64_t)_targetEdgeForPopover;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (void)__viewWillLayoutSubviews;
- (void)_addOrRemovePopoverPresentationGestureRecognizer;
- (void)_animateTransitionFromTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)_animateTransitionToOrientation:(int64_t)orientation duration:(double)duration masterChange:(int64_t)change;
- (void)_cacheEffectiveTargetDisplayMode;
- (void)_changeToDisplayMode:(int64_t)mode forCurrentOrientationOnly:(BOOL)only;
- (void)_collapseMaster:(id)master andDetail:(id)detail withTransitionCoordinator:(id)coordinator;
- (void)_collapseMasterAndDetailWithTransitionCoordinator:(id)coordinator;
- (void)_collapseSecondaryViewController:(id)controller ontoPrimaryViewController:(id)viewController;
- (void)_commonInit;
- (void)_completeTransitionFromOrientation:(int64_t)orientation masterChange:(int64_t)change;
- (void)_descendantWillPresentViewController:(id)controller modalSourceViewController:(id)viewController presentationController:(id)presentationController animated:(BOOL)animated;
- (void)_didChangeToFirstResponder:(id)responder;
- (void)_didTransitionTraitCollection;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_dismissMasterViewController:(BOOL)controller;
- (void)_displayModeBarButtonItemWasUsedForFirstTime:(id)time;
- (void)_displayModeDidChange;
- (void)_displayModeWillChangeTo:(int64_t)to;
- (void)_getRotationContentSettings:(id *)settings;
- (void)_initWithCoder:(id)coder;
- (void)_layoutContainerViewDidMoveToWindow:(id)window;
- (void)_layoutContainerViewWillMoveToWindow:(id)window;
- (void)_loadNewSubviews:(id)subviews;
- (void)_marginInfoForChild:(id)child leftMargin:(double *)margin rightMargin:(double *)rightMargin;
- (void)_popoverController:(id)controller didChangeFromVisible:(BOOL)visible;
- (void)_popoverController:(id)controller willChangeToVisible:(BOOL)visible;
- (void)_prepareForCompactLayout;
- (void)_presentMasterViewController:(BOOL)controller;
- (void)_removeCollapsingSnapshotViews;
- (void)_separateMasterAndDetailWithTransitionCoordinator:(id)coordinator;
- (void)_setCollapsedState:(int64_t)state;
- (void)_setDelegateHidesMaster:(BOOL)master inAspectRatio:(int64_t)ratio;
- (void)_setDetailViewFrame:(CGRect)frame;
- (void)_setDisplayModeButtonItemTitle:(id)title;
- (void)_setMasterOverrideTraitCollectionActive:(BOOL)active;
- (void)_setUsesExtraWidePrimaryColumn:(BOOL)column;
- (void)_setupHiddenPopoverControllerWithViewController:(id)controller;
- (void)_setupUnderBarSeparatorView;
- (void)_showMasterViewAnimated:(BOOL)animated;
- (void)_triggerDisplayModeAction:(id)action;
- (void)_updateChildContentMargins;
- (void)_updateDelegateHiddenMasterAspectRatios;
- (void)_updateDisplayModeButtonItem;
- (void)_updateMasterViewControllerFrame;
- (void)_updateTargetDisplayMode;
- (void)_viewControllerHiding:(id)hiding;
- (void)_willBeginSnapshotSession;
- (void)_willShowCollapsedDetailViewController:(id)controller inTargetController:(id)targetController;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)loadView;
- (void)popoverWillAppear:(id)appear;
- (void)setDelegate:(id)delegate;
- (void)setGutterWidth:(float)width;
- (void)setHidesMasterViewInPortrait:(BOOL)portrait;
- (void)setMaximumPrimaryColumnWidth:(double)width;
- (void)setMinimumPrimaryColumnWidth:(double)width;
- (void)setPreferredDisplayMode:(int64_t)mode;
- (void)setPreferredPrimaryColumnWidthFraction:(double)fraction;
- (void)setPrefersOverlayInRegularWidthPhone:(BOOL)phone;
- (void)setPresentsWithGesture:(BOOL)gesture;
- (void)setPrimaryEdge:(int64_t)edge;
- (void)setUsesDeviceOverlayPreferences:(BOOL)preferences;
- (void)setViewControllers:(id)controllers;
- (void)showDetailViewController:(id)controller sender:(id)sender;
- (void)showViewController:(id)controller sender:(id)sender;
- (void)snapshotAllViews;
- (void)snapshotForRotationFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation masterChange:(int64_t)change;
- (void)snapshotMasterView;
- (void)toggleMasterVisible:(id)visible;
- (void)traitCollectionDidChange:(id)change;
- (void)unloadViewForced:(BOOL)forced;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation UISplitViewControllerClassicImpl

- (UISplitViewControllerClassicImpl)initWithSplitViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = UISplitViewControllerClassicImpl;
  v5 = [(_UISplitViewControllerBaseImpl *)&v8 initWithSplitViewController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_svc, controllerCopy);
  }

  return v6;
}

- (CGRect)_frameForChildContentContainer:(id)container
{
  containerCopy = container;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  viewControllers = [WeakRetained viewControllers];

  v7 = [viewControllers count];
  if (v7)
  {
    v8 = [viewControllers objectAtIndexedSubscript:0];
    if (v7 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = [viewControllers objectAtIndexedSubscript:1];
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8 == containerCopy)
  {
    [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
LABEL_11:
    v12 = v19;
    v14 = v20;
    v16 = v21;
    v18 = v22;
    goto LABEL_12;
  }

  if (v7 == containerCopy)
  {
    [(UISplitViewControllerClassicImpl *)self _detailViewFrame];
    goto LABEL_11;
  }

  v9 = objc_loadWeakRetained(&self->_svc);
  view = [v9 view];
  [view bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

LABEL_12:
  v23 = v12;
  v24 = v14;
  v25 = v16;
  v26 = v18;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)_commonInit
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"UISplitViewController is only supported when running under UIUserInterfaceIdiomPad"];
    }
  }

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFFF3 | 8);
  self->_gutterWidth = -3.4028e38;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  WeakRetained[47] &= ~0x80000uLL;

  self->_presentsWithGesture = 1;
  self->_preferredPrimaryColumnWidthFraction = -3.40282347e38;
  self->_minimumPrimaryColumnWidth = -3.40282347e38;
  self->_maximumPrimaryColumnWidth = -3.40282347e38;
  self->_primaryEdge = 0;
  v6 = dyld_program_sdk_at_least();
  v7 = 0x8000000000;
  if (!v6)
  {
    v7 = 0;
  }

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFF7FFFFFFFFFLL | v7);
  v8 = +[UISplitViewController _devicePrefersOverlayInRegularWidth];
  v9 = 0x10000000000;
  if (!v8)
  {
    v9 = 0;
  }

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFEFFFFFFFFFFLL | v9);
  self->_lastFocusedChildViewControllerIndex = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction"])
  {
    [coderCopy decodeDoubleForKey:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction"];
    self->_preferredPrimaryColumnWidthFraction = v4;
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerMaximumPrimaryColumnWidth"])
  {
    [coderCopy decodeDoubleForKey:@"UISplitViewControllerMaximumPrimaryColumnWidth"];
    self->_maximumPrimaryColumnWidth = v5;
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerMinimumPrimaryColumnWidth"])
  {
    [coderCopy decodeDoubleForKey:@"UISplitViewControllerMinimumPrimaryColumnWidth"];
    self->_minimumPrimaryColumnWidth = v6;
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerPrimaryEdge"])
  {
    self->_primaryEdge = [coderCopy decodeIntegerForKey:@"UISplitViewControllerPrimaryEdge"];
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerPresentsWithGesture"])
  {
    self->_presentsWithGesture = [coderCopy decodeBoolForKey:@"UISplitViewControllerPresentsWithGesture"];
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerUsesDeviceOverlayPreferences"])
  {
    v7 = [coderCopy decodeBoolForKey:@"UISplitViewControllerUsesDeviceOverlayPreferences"];
    v8 = 0x8000000000;
    if (!v7)
    {
      v8 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFF7FFFFFFFFFLL | v8);
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerUsesExtraWidePrimaryColumn"])
  {
    v9 = [coderCopy decodeBoolForKey:@"UISplitViewControllerUsesExtraWidePrimaryColumn"];
    v10 = 0x4000000000;
    if (!v9)
    {
      v10 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFBFFFFFFFFFLL | v10);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self->_preferredPrimaryColumnWidthFraction != -3.40282347e38)
  {
    [coderCopy encodeDouble:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction" forKey:?];
    coderCopy = v5;
  }

  if (self->_maximumPrimaryColumnWidth != -3.40282347e38)
  {
    [v5 encodeDouble:@"UISplitViewControllerMaximumPrimaryColumnWidth" forKey:?];
    coderCopy = v5;
  }

  if (self->_minimumPrimaryColumnWidth != -3.40282347e38)
  {
    [v5 encodeDouble:@"UISplitViewControllerMinimumPrimaryColumnWidth" forKey:?];
    coderCopy = v5;
  }

  [coderCopy encodeInteger:self->_primaryEdge forKey:@"UISplitViewControllerPrimaryEdge"];
  [v5 encodeBool:self->_presentsWithGesture forKey:@"UISplitViewControllerPresentsWithGesture"];
  [v5 encodeBool:(*&self->_splitViewControllerFlags >> 39) & 1 forKey:@"UISplitViewControllerUsesDeviceOverlayPreferences"];
  [v5 encodeBool:(*&self->_splitViewControllerFlags >> 38) & 1 forKey:@"UISplitViewControllerUsesExtraWidePrimaryColumn"];
}

- (void)dealloc
{
  [(UISplitViewControllerClassicImpl *)self _removeCollapsingSnapshotViews];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_svc);
    v6 = v5[3];

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_svc);
      [v7[3] removeGestureRecognizer:self->_popoverPresentationGestureRecognizer];
    }
  }

  popoverPresentationGestureRecognizer = self->_popoverPresentationGestureRecognizer;
  self->_popoverPresentationGestureRecognizer = 0;

  postTransitionResponder = self->_postTransitionResponder;
  self->_postTransitionResponder = 0;

  [(UIView *)self->_rotationSnapshotView removeFromSuperview];
  rotationSnapshotView = self->_rotationSnapshotView;
  self->_rotationSnapshotView = 0;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIAlertWillAppearNotification" object:0];

  v12.receiver = self;
  v12.super_class = UISplitViewControllerClassicImpl;
  [(UISplitViewControllerClassicImpl *)&v12 dealloc];
}

- (UISplitViewController)splitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);

  return WeakRetained;
}

- (void)_loadNewSubviews:(id)subviews
{
  v33 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  masterViewController = [WeakRetained masterViewController];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = objc_loadWeakRetained(&self->_svc);
  obj = [v6 mutableChildViewControllers];

  v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v23 = *v29;
    v20 = v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        if (!subviewsCopy || ([subviewsCopy containsObject:{*(*(&v28 + 1) + 8 * v8), v20}] & 1) == 0)
        {
          view = [v9 view];
          if (masterViewController == v9)
          {
            v12 = objc_loadWeakRetained(&self->_svc);
            v11 = [v12 displayMode] == 2;
          }

          else
          {
            v11 = 1;
          }

          [view setAutoresizingMask:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [view setClipsToBounds:1];
          }

          if (([v9 appearanceTransitionsAreDisabled] & 1) == 0)
          {
            v13 = objc_loadWeakRetained(&self->_svc);
            if (v13)
            {
              v14 = (v13[94] & 3u) - 1 < 2;

              if (v14 && v11)
              {
                [v9 __viewWillAppear:0];
              }
            }
          }

          v15 = objc_loadWeakRetained(&self->_svc);
          view2 = [v15 view];
          [view2 insertSubview:view atIndex:0];

          objc_initWeak(&location, v9);
          if (([v9 appearanceTransitionsAreDisabled] & 1) == 0)
          {
            v17 = objc_loadWeakRetained(&self->_svc);
            if (v17)
            {
              v18 = (v17[94] & 3u) - 1 < 2;

              if (v18 && v11)
              {
                v24[0] = MEMORY[0x1E69E9820];
                v24[1] = 3221225472;
                v25[0] = __53__UISplitViewControllerClassicImpl__loadNewSubviews___block_invoke;
                v25[1] = &unk_1E70F5A28;
                objc_copyWeak(&v26, &location);
                [v9 setAfterAppearanceBlock:v24];
                [UIApp _addAfterCACommitBlockForViewController:v9];
                objc_destroyWeak(&v26);
              }
            }
          }

          objc_destroyWeak(&location);
        }

        ++v8;
      }

      while (v7 != v8);
      v19 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v7 = v19;
    }

    while (v19);
  }
}

void __53__UISplitViewControllerClassicImpl__loadNewSubviews___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __viewDidAppear:0];
}

- (void)loadView
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained _defaultInitialViewFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v14 = [[UILayoutContainerView alloc] initWithFrame:v5, v7, v9, v11];
  if (dyld_program_sdk_at_least())
  {
    +[UIColor _splitViewBorderColor];
  }

  else
  {
    +[UIColor systemGrayColor];
  }
  v12 = ;
  [(UILayoutContainerView *)v14 setBackgroundColor:v12];

  [(UIView *)v14 setAutoresizingMask:18];
  [(UILayoutContainerView *)v14 setDelegate:self];
  v13 = objc_loadWeakRetained(&self->_svc);
  [v13 setView:v14];

  [(UISplitViewControllerClassicImpl *)self _loadNewSubviews:0];
  if ((*(&self->_splitViewControllerFlags + 3) & 0x40) != 0)
  {
    [(UISplitViewControllerClassicImpl *)self _updateTargetDisplayMode];
    *&self->_splitViewControllerFlags &= ~0x40000000uLL;
  }

  [(UISplitViewControllerClassicImpl *)self _setUpFocusContainerGuides];
}

- (void)unloadViewForced:(BOOL)forced
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  mutableChildViewControllers = [WeakRetained mutableChildViewControllers];

  v5 = [mutableChildViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(mutableChildViewControllers);
        }

        [*(*(&v9 + 1) + 8 * v8++) unloadViewIfReloadable];
      }

      while (v6 != v8);
      v6 = [mutableChildViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (int64_t)_effectivePrimaryHidingState
{
  result = [(UISplitViewControllerClassicImpl *)self _primaryHidingStateForCurrentOrientation];
  if (!result)
  {

    return [(UISplitViewControllerClassicImpl *)self _primaryHidingState];
  }

  return result;
}

- (void)setPrefersOverlayInRegularWidthPhone:(BOOL)phone
{
  v3 = 0x10000000000;
  if (!phone)
  {
    v3 = 0;
  }

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setUsesDeviceOverlayPreferences:(BOOL)preferences
{
  v3 = 0x8000000000;
  if (!preferences)
  {
    v3 = 0;
  }

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (BOOL)_iPhoneShouldUseOverlayInCurrentEnvironment
{
  _automaticDisplayModeOnPhoneUsesOverlayInLandscapeDefaultValue = [(UISplitViewControllerClassicImpl *)self usesDeviceOverlayPreferences]&& [(UISplitViewControllerClassicImpl *)self prefersOverlayInRegularWidthPhone]|| +[UISplitViewController _automaticDisplayModeOnPhoneUsesOverlayInLandscapeDefaultValue];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v5 = ([WeakRetained presentsWithGesture] & 1) != 0 || -[UISplitViewControllerDisplayModeBarButtonItem _hasBeenUsed](self->_displayModeButtonItem, "_hasBeenUsed");

  return _automaticDisplayModeOnPhoneUsesOverlayInLandscapeDefaultValue && v5;
}

- (BOOL)_iPhoneShouldUseOverlayIfRegularWidth
{
  if ([(UISplitViewControllerClassicImpl *)self _isBasicallyHorizontallyCompact])
  {
    return 0;
  }

  return [(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment];
}

- (int64_t)_currentInterfaceIdiom
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != -1)
  {
    return userInterfaceIdiom;
  }

  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom2 = [v6 userInterfaceIdiom];

  return userInterfaceIdiom2;
}

- (BOOL)_isMasterViewShown
{
  if (((*&self->_splitViewControllerFlags >> 20) & 3uLL) - 1 >= 2)
  {
    _effectivePrimaryHidingState = [(UISplitViewControllerClassicImpl *)self _effectivePrimaryHidingState];
    if (_effectivePrimaryHidingState != 2 && (_effectivePrimaryHidingState || ((v5 = [(UISplitViewControllerClassicImpl *)self _currentInterfaceIdiom], v5 == 1) || !v5 && [(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayIfRegularWidth]) && [(UISplitViewControllerClassicImpl *)self _hidesMasterViewInCurrentOrientation]))
    {
      _isMasterPopoverVisible = [(UISplitViewControllerClassicImpl *)self _isMasterPopoverVisible];
      if (_isMasterPopoverVisible)
      {
        LOBYTE(_isMasterPopoverVisible) = ![(UIPopoverController *)self->_hiddenPopoverController _isDismissing];
      }
    }

    else
    {
      LOBYTE(_isMasterPopoverVisible) = 1;
    }
  }

  else
  {
    LOBYTE(_isMasterPopoverVisible) = 1;
  }

  return _isMasterPopoverVisible;
}

- (void)_setDelegateHidesMaster:(BOOL)master inAspectRatio:(int64_t)ratio
{
  if (master)
  {
    v4 = *&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFFF3 | ((4 << ratio) | *&self->_splitViewControllerFlags) & 0xC;
    self->_splitViewControllerFlags = v4;
    v5 = 1 << ratio;
  }

  else
  {
    v5 = 1 << ratio;
    v4 = *&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFFF3 | *&self->_splitViewControllerFlags & (4 * ~(1 << ratio)) & 0xC;
    self->_splitViewControllerFlags = v4;
  }

  self->_splitViewControllerFlags = (v4 & 0xFFFFFFFFFFFFFFFCLL | v4 & ~v5 & 3);
}

- (BOOL)_defersUpdateDelegateHiddenMasterAspectRatios
{
  if ((*&self->_splitViewControllerFlags & 0x10) != 0)
  {
    return 0;
  }

  else
  {
    return dyld_program_sdk_at_least();
  }
}

- (void)_updateDelegateHiddenMasterAspectRatios
{
  if ((*&self->_splitViewControllerFlags & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    masterViewController = [WeakRetained masterViewController];

    if ([(UISplitViewControllerClassicImpl *)self _isHidesMasterInPortraitInvalid])
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_loadWeakRetained(&self->_svc);
      v7 = 1;
      if (([v5 splitViewController:v6 shouldHideViewController:masterViewController inOrientation:1] & 1) == 0)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_loadWeakRetained(&self->_svc);
        v7 = [v8 splitViewController:v9 shouldHideViewController:masterViewController inOrientation:2];
      }

      [(UISplitViewControllerClassicImpl *)self _setDelegateHidesMaster:v7 inAspectRatio:1];
    }

    if ([(UISplitViewControllerClassicImpl *)self _isHidesMasterInLandscapeInvalid])
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      v11 = objc_loadWeakRetained(&self->_svc);
      if ([v10 splitViewController:v11 shouldHideViewController:masterViewController inOrientation:4])
      {
        v12 = 1;
      }

      else
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_loadWeakRetained(&self->_svc);
        v12 = [v13 splitViewController:v14 shouldHideViewController:masterViewController inOrientation:3];
      }

      [(UISplitViewControllerClassicImpl *)self _setDelegateHidesMaster:v12 inAspectRatio:0];
    }
  }

  else
  {
    if ([(UISplitViewControllerClassicImpl *)self _isHidesMasterInPortraitInvalid])
    {
      [(UISplitViewControllerClassicImpl *)self _setDelegateHidesMaster:1 inAspectRatio:1];
    }

    if ([(UISplitViewControllerClassicImpl *)self _isHidesMasterInLandscapeInvalid])
    {
      if ([(UISplitViewControllerClassicImpl *)self _currentInterfaceIdiom])
      {
        _iPhoneShouldUseOverlayInCurrentEnvironment = 0;
      }

      else
      {
        _iPhoneShouldUseOverlayInCurrentEnvironment = [(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment];
      }

      [(UISplitViewControllerClassicImpl *)self _setDelegateHidesMaster:_iPhoneShouldUseOverlayInCurrentEnvironment inAspectRatio:0];
    }
  }
}

- (void)_addOrRemovePopoverPresentationGestureRecognizer
{
  if ([(UISplitViewControllerClassicImpl *)self _effectivePresentsWithGesture])
  {
    if ([(UISplitViewControllerClassicImpl *)self _hasMasterViewController])
    {
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      masterViewController = [WeakRetained masterViewController];
      [(UISplitViewControllerClassicImpl *)self _setupHiddenPopoverControllerWithViewController:masterViewController];
    }

    if (self->_popoverPresentationGestureRecognizer || ([(UIPopoverController *)self->_hiddenPopoverController _gestureRecognizerForPresentationFromEdge:[(UISplitViewControllerClassicImpl *)self _targetEdgeForPopover]], v5 = objc_claimAutoreleasedReturnValue(), popoverPresentationGestureRecognizer = self->_popoverPresentationGestureRecognizer, self->_popoverPresentationGestureRecognizer = v5, popoverPresentationGestureRecognizer, self->_popoverPresentationGestureRecognizer))
    {
      v7 = objc_loadWeakRetained(&self->_svc);
      view = [v7 view];
      [view addGestureRecognizer:self->_popoverPresentationGestureRecognizer];

      _effectiveTargetDisplayMode = [(UISplitViewControllerClassicImpl *)self _effectiveTargetDisplayMode];
      if (_effectiveTargetDisplayMode == 1)
      {
        v7 = objc_loadWeakRetained(&self->_svc);
        if ([v7 displayMode] == 3)
        {
          v10 = 1;
LABEL_20:

          goto LABEL_21;
        }

        if ([(UISplitViewControllerClassicImpl *)self _effectiveTargetDisplayMode]!= 3)
        {
          v10 = 0;
          goto LABEL_20;
        }
      }

      else if ([(UISplitViewControllerClassicImpl *)self _effectiveTargetDisplayMode]!= 3)
      {
        v10 = 0;
LABEL_21:
        hiddenPopoverController = self->_hiddenPopoverController;

        [(UIPopoverController *)hiddenPopoverController _setGesturesEnabled:v10];
        return;
      }

      v14 = objc_loadWeakRetained(&self->_svc);
      v10 = [v14 displayMode] == 1;

      if (_effectiveTargetDisplayMode != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if (self->_popoverPresentationGestureRecognizer)
  {
    v11 = objc_loadWeakRetained(&self->_svc);
    view2 = [v11 view];
    [view2 removeGestureRecognizer:self->_popoverPresentationGestureRecognizer];

    v13 = self->_popoverPresentationGestureRecognizer;
    self->_popoverPresentationGestureRecognizer = 0;
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (!obj || WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v6 = objc_opt_respondsToSelector();
    v7 = 512;
    if ((v6 & 1) == 0)
    {
      v7 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFDFFLL | v7);
    v8 = objc_opt_respondsToSelector();
    v9 = 1024;
    if ((v8 & 1) == 0)
    {
      v9 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFBFFLL | v9);
    v10 = objc_opt_respondsToSelector();
    v11 = 2048;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFF7FFLL | v11);
    v12 = objc_opt_respondsToSelector();
    v13 = 16;
    if ((v12 & 1) == 0)
    {
      v13 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFFEFLL | v13);
    v14 = objc_opt_respondsToSelector();
    v15 = 0x4000;
    if ((v14 & 1) == 0)
    {
      v15 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFBFFFLL | v15);
    v16 = objc_opt_respondsToSelector();
    v17 = 0x8000;
    if ((v16 & 1) == 0)
    {
      v17 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFF7FFFLL | v17);
    v18 = objc_opt_respondsToSelector();
    v19 = 0x10000;
    if ((v18 & 1) == 0)
    {
      v19 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFEFFFFLL | v19);
    v20 = objc_opt_respondsToSelector();
    v21 = 0x20000;
    if ((v20 & 1) == 0)
    {
      v21 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFDFFFFLL | v21);
    v22 = objc_opt_respondsToSelector();
    v23 = 0x40000;
    if ((v22 & 1) == 0)
    {
      v23 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFBFFFFLL | v23);
    v24 = objc_opt_respondsToSelector();
    v25 = 0x80000;
    if ((v24 & 1) == 0)
    {
      v25 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFF7FFFFLL | v25);
    v26 = objc_opt_respondsToSelector();
    v27 = 0x1000000000;
    if ((v26 & 1) == 0)
    {
      v27 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFEFFFFFFFFFLL | v27);
    v28 = objc_opt_respondsToSelector();
    v29 = 0x2000000000;
    if ((v28 & 1) == 0)
    {
      v29 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFDFFFFFFFFFLL | v29);
    v30 = objc_opt_respondsToSelector();
    v31 = 4096;
    if ((v30 & 1) == 0)
    {
      v31 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFEFFFLL | v31);
    v32 = objc_opt_respondsToSelector();
    v33 = 0x2000;
    if ((v32 & 1) == 0)
    {
      v33 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFDFFFLL | v33);
    v34 = objc_opt_respondsToSelector();
    v35 = 0x4000000;
    if ((v34 & 1) == 0)
    {
      v35 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFBFFFFFFLL | v35);
    v36 = objc_opt_respondsToSelector();
    v37 = 0x8000000;
    if ((v36 & 1) == 0)
    {
      v37 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFF7FFFFFFLL | v37);
    v38 = objc_opt_respondsToSelector();
    v39 = 0x10000000;
    if ((v38 & 1) == 0)
    {
      v39 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFEFFFFFFFLL | v39);
    [(UISplitViewControllerClassicImpl *)self _invalidateHidesMasterViewForAspectRatio:1];
    [(UISplitViewControllerClassicImpl *)self _invalidateHidesMasterViewForAspectRatio:0];
    if (![(UISplitViewControllerClassicImpl *)self _defersUpdateDelegateHiddenMasterAspectRatios])
    {
      [(UISplitViewControllerClassicImpl *)self _updateDelegateHiddenMasterAspectRatios];
    }

    v40 = objc_loadWeakRetained(&self->_svc);
    _hasAppeared = [v40 _hasAppeared];

    if (_hasAppeared)
    {
      [(UISplitViewControllerClassicImpl *)self _addOrRemovePopoverPresentationGestureRecognizer];
    }

    v42 = objc_loadWeakRetained(&self->_svc);
    isViewLoaded = [v42 isViewLoaded];

    if (isViewLoaded)
    {
      [(UISplitViewControllerClassicImpl *)self _updateTargetDisplayMode];
    }

    else
    {
      *&self->_splitViewControllerFlags |= 0x40000000uLL;
    }

    v5 = obj;
  }
}

- (CGRect)_masterViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UISplitViewControllerClassicImpl *)self _primaryColumnWidthForSize:frame.size.width, frame.size.height];
  v9 = v8;
  if ([(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = -v9;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v11 = CGRectGetHeight(v18);
  if ([(UISplitViewControllerClassicImpl *)self _layoutPrimaryOnRight])
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v12 = CGRectGetWidth(v19);
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      [(UISplitViewControllerClassicImpl *)self _screenSizeInMainScene:1];
      v12 = v13;
    }

    if ([(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
    {
      v10 = v12 - v9;
    }

    else
    {
      v10 = v12;
    }
  }

  v14 = 0.0;
  v15 = v10;
  v16 = v9;
  v17 = v11;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (CGRect)_masterViewFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  view = [WeakRetained view];
  [view bounds];
  [(UISplitViewControllerClassicImpl *)self _masterViewFrame:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_detailViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if ([WeakRetained displayMode] != 2 || (v9 = (*&self->_splitViewControllerFlags >> 20) & 3, v9 == 1))
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    [(UISplitViewControllerClassicImpl *)self _primaryColumnWidthForSize:width, height];
    v11 = v10;
    v12 = 0.0;
    if (![(UISplitViewControllerClassicImpl *)self _layoutPrimaryOnRight])
    {
      v13 = objc_loadWeakRetained(&self->_svc);
      [v13 gutterWidth];
      v12 = x + v11 + v14;
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [WeakRetained gutterWidth];
    width = width - (v11 + v15);
    x = v12;
    goto LABEL_7;
  }

LABEL_8:
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_detailViewFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  view = [WeakRetained view];
  [view bounds];
  [(UISplitViewControllerClassicImpl *)self _detailViewFrame:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_setupHiddenPopoverControllerWithViewController:(id)controller
{
  controllerCopy = controller;
  if (!self->_hiddenPopoverController)
  {
    v12 = controllerCopy;
    if (!dyld_program_sdk_at_least() || (v5 = objc_loadWeakRetained(&self->_svc), v6 = [v5 childViewControllersCount], v5, controllerCopy = v12, v6 >= 2))
    {
      v7 = [[UIPopoverController alloc] _initWithContentViewController:v12 popoverControllerStyle:1];
      hiddenPopoverController = self->_hiddenPopoverController;
      self->_hiddenPopoverController = v7;

      v9 = self->_hiddenPopoverController;
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      [(UIPopoverController *)v9 _setManagingSplitViewController:WeakRetained];

      [v12 _setPopoverController:0];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_popoverWillAppear_ name:@"_UIAlertWillAppearNotification" object:self->_hiddenPopoverController];

      [(UIPopoverController *)self->_hiddenPopoverController setPopoverBackgroundViewClass:objc_opt_class()];
      [(UISplitViewControllerClassicImpl *)self _addOrRemovePopoverPresentationGestureRecognizer];
      controllerCopy = v12;
    }
  }
}

- (void)_viewControllerHiding:(id)hiding
{
  hidingCopy = hiding;
  splitViewControllerFlags = self->_splitViewControllerFlags;
  if ((*&splitViewControllerFlags & 0x400) == 0)
  {
    if (!dyld_program_sdk_at_least())
    {
      goto LABEL_9;
    }

    splitViewControllerFlags = self->_splitViewControllerFlags;
  }

  if ((*&splitViewControllerFlags & 0xE0) != 0x80)
  {
    if (!self->_barButtonItem)
    {
      v5 = [UIBarButtonItem alloc];
      title = [hidingCopy title];
      v7 = [(UIBarButtonItem *)v5 initWithTitle:title style:1 target:self action:sel_toggleMasterVisible_];
      barButtonItem = self->_barButtonItem;
      self->_barButtonItem = v7;

      title2 = [hidingCopy title];
      v10 = [title2 copy];
      buttonTitle = self->_buttonTitle;
      self->_buttonTitle = v10;
    }

    [(UISplitViewControllerClassicImpl *)self _setupHiddenPopoverControllerWithViewController:hidingCopy];
    if ((*(&self->_splitViewControllerFlags + 1) & 4) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v13 = objc_loadWeakRetained(&self->_svc);
      [WeakRetained splitViewController:v13 willHideViewController:hidingCopy withBarButtonItem:self->_barButtonItem forPopoverController:self->_hiddenPopoverController];
    }
  }

LABEL_9:
}

- (double)primaryColumnWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  view = [WeakRetained view];
  [view bounds];
  v6 = v5;
  v8 = v7;

  [(UISplitViewControllerClassicImpl *)self _primaryColumnWidthForSize:v6, v8];
  return result;
}

- (CGSize)_screenSizeInMainScene:(BOOL)scene
{
  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _window = [WeakRetained _window];

  v7 = objc_loadWeakRetained(&self->_svc);
  _screen = [v7 _screen];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = _window;
LABEL_5:
    [v9 bounds];
    goto LABEL_6;
  }

  v9 = _screen;
  if (!sceneCopy)
  {
    goto LABEL_5;
  }

  [_screen _interfaceOrientedMainSceneBounds];
LABEL_6:
  v12 = v10;
  v13 = v11;

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)_setUsesExtraWidePrimaryColumn:(BOOL)column
{
  v3 = 0x4000000000;
  if (!column)
  {
    v3 = 0;
  }

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (CGSize)_preferredContentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained _super_preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)_defaultMaximumPrimaryColumnWidthForSize:(CGSize)size
{
  width = size.width;
  [(UISplitViewControllerClassicImpl *)self _screenSizeInMainScene:0, size.width, size.height];
  if (v5 >= v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v9 = [WeakRetained interfaceOrientation] - 3;

  v11 = v7 > 1112.0 && v9 < 2 || v7 > 1210.0;
  if (v11)
  {
    v12 = 375.0;
  }

  else
  {
    v12 = 320.0;
  }

  if (dyld_program_sdk_at_least())
  {
    if (v9 <= 1)
    {
      if (width <= v7 * 0.5)
      {
        v20 = objc_loadWeakRetained(&self->_svc);
        displayMode = [v20 displayMode];

        if (displayMode == 2)
        {
          return 320.0;
        }

        else
        {
          return 375.0;
        }
      }

      else if (width <= v7 - v12)
      {
        if (v7 <= 1210.0)
        {
          return 320.0;
        }

        else
        {
          return 375.0;
        }
      }

      else
      {
        v13 = objc_loadWeakRetained(&self->_svc);
        _usesExtraWidePrimaryColumn = [v13 _usesExtraWidePrimaryColumn];

        v15 = 414.0;
        if (!v11)
        {
          v15 = 375.0;
        }

        if (_usesExtraWidePrimaryColumn)
        {
          return v15;
        }
      }
    }
  }

  else
  {
    v16 = objc_loadWeakRetained(&self->_svc);
    preferredDisplayMode = [v16 preferredDisplayMode];

    if (preferredDisplayMode == 2)
    {
      v18 = round(width * 0.38);
      if (width > v7 * 0.5)
      {
        v19 = objc_loadWeakRetained(&self->_svc);
        if (([v19 interfaceOrientation] - 1) < 2)
        {

          return v12;
        }

        if (width <= v7 - v12)
        {
          return v12;
        }
      }

      return v18;
    }
  }

  return v12;
}

- (double)_primaryColumnWidthForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _isBasicallyHorizontallyCompact = [(UISplitViewControllerClassicImpl *)self _isBasicallyHorizontallyCompact];

  [(UISplitViewControllerClassicImpl *)self _primaryColumnWidthForSize:_isBasicallyHorizontallyCompact isCompact:width, height];
  return result;
}

- (double)_primaryColumnWidthForSize:(CGSize)size isCompact:(BOOL)compact
{
  width = size.width;
  if (compact)
  {
    return width;
  }

  height = size.height;
  if (!dyld_program_sdk_at_least())
  {
    return 320.0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained preferredPrimaryColumnWidthFraction];
  v9 = v8;

  v10 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v10 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 || !dyld_program_sdk_at_least())
  {
    if ([(UISplitViewControllerClassicImpl *)self _currentInterfaceIdiom]|| !dyld_program_sdk_at_least() || v9 != -3.40282347e38)
    {
      if (fmax(width, height) <= 1210.0)
      {
        v13 = 320.0;
      }

      else
      {
        v13 = 375.0;
      }

      if (v9 == -3.40282347e38)
      {
        v15 = 0.4;
      }

      else
      {
        v25 = objc_loadWeakRetained(&self->_svc);
        [v25 preferredPrimaryColumnWidthFraction];
        v15 = v26;
      }

      v14 = ceil(width * v15);
      goto LABEL_26;
    }

    v16 = objc_loadWeakRetained(&self->_svc);
    displayMode = [v16 displayMode];

    if (displayMode == 2)
    {
      v13 = 320.0;
    }

    else
    {
      v13 = 375.0;
    }

    goto LABEL_20;
  }

  [(UISplitViewControllerClassicImpl *)self _defaultMaximumPrimaryColumnWidthForSize:width, height];
  v13 = v12;
  if (v9 == -3.40282347e38)
  {
    v14 = v12;
    if (!dyld_program_sdk_at_least())
    {
      goto LABEL_26;
    }

LABEL_20:
    v18 = objc_loadWeakRetained(&self->_svc);
    viewIfLoaded = [v18 viewIfLoaded];
    [viewIfLoaded safeAreaInsets];
    v21 = v20;
    v23 = v22;

    if ([(UISplitViewControllerClassicImpl *)self _layoutPrimaryOnRight])
    {
      v24 = v23;
    }

    else
    {
      v24 = v21;
    }

    v14 = v13 + v24;
    v13 = v13 + v24;
    goto LABEL_26;
  }

  v36 = objc_loadWeakRetained(&self->_svc);
  [v36 preferredPrimaryColumnWidthFraction];
  v14 = ceil(width * v37);

LABEL_26:
  v27 = objc_loadWeakRetained(&self->_svc);
  [v27 minimumPrimaryColumnWidth];
  if (v28 == -3.40282347e38)
  {
    width = 0.0;
  }

  else
  {
    v29 = objc_loadWeakRetained(&self->_svc);
    [v29 minimumPrimaryColumnWidth];
    width = v30;
  }

  if (width < v14)
  {
    width = v14;
  }

  v31 = objc_loadWeakRetained(&self->_svc);
  [v31 maximumPrimaryColumnWidth];
  if (v32 != -3.40282347e38)
  {
    v33 = objc_loadWeakRetained(&self->_svc);
    [v33 maximumPrimaryColumnWidth];
    v13 = v34;
  }

  if (v13 < width)
  {
    return v13;
  }

  return width;
}

- (void)_setCollapsedState:(int64_t)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  isCollapsed = [WeakRetained isCollapsed];

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFCFFFFFLL | ((stateCopy & 3) << 20));
  v7 = objc_loadWeakRetained(&self->_svc);
  LODWORD(WeakRetained) = [v7 isCollapsed];

  if (isCollapsed != WeakRetained)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = objc_loadWeakRetained(&self->_svc);
    [defaultCenter postNotificationName:@"UIViewControllerShowDetailTargetDidChangeNotification" object:v8];
  }
}

- (id)_primaryViewControllerForCollapsing
{
  if ((*(&self->_splitViewControllerFlags + 2) & 4) == 0 || (v3 = objc_loadWeakRetained(&self->_delegate), v4 = objc_loadWeakRetained(&self->_svc), [v3 primaryViewControllerForCollapsingSplitViewController:v4], masterViewController = objc_claimAutoreleasedReturnValue(), v4, v3, !masterViewController))
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    masterViewController = [WeakRetained masterViewController];
  }

  return masterViewController;
}

- (id)_primaryViewControllerForExpanding
{
  if ((*(&self->_splitViewControllerFlags + 2) & 8) == 0 || (v3 = objc_loadWeakRetained(&self->_delegate), v4 = objc_loadWeakRetained(&self->_svc), [v3 primaryViewControllerForExpandingSplitViewController:v4], masterViewController = objc_claimAutoreleasedReturnValue(), v4, v3, !masterViewController))
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    masterViewController = [WeakRetained masterViewController];
  }

  return masterViewController;
}

- (id)_secondaryViewControllerForCollapsing
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  detailViewController = [WeakRetained detailViewController];

  return detailViewController;
}

- (void)_collapseSecondaryViewController:(id)controller ontoPrimaryViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  [viewControllerCopy _setAllowNestedNavigationControllers:1];
  if ((self->_suspendedState - 3) > 1)
  {
    if ((*(&self->_splitViewControllerFlags + 2) & 1) == 0)
    {
      goto LABEL_13;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_loadWeakRetained(&self->_svc);
    v16 = [WeakRetained splitViewController:v15 collapseSecondaryViewController:controllerCopy ontoPrimaryViewController:viewControllerCopy];

    if ((v16 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    if (!v7 || (v8 = self->_splitViewControllerFlags, v7, (*&v8 & 0x2000000000) == 0))
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      if (v9)
      {
        splitViewControllerFlags = self->_splitViewControllerFlags;

        if ((*&splitViewControllerFlags & 0x10000) != 0)
        {
          v11 = objc_loadWeakRetained(&self->_delegate);
          v12 = objc_loadWeakRetained(&self->_svc);
          v13 = [v11 splitViewController:v12 collapseSecondaryViewController:controllerCopy ontoPrimaryViewController:viewControllerCopy];

          if (v13)
          {
            goto LABEL_16;
          }
        }
      }

      if (self->_suspendedState == 3)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v17 = self->_suspendedState == 3;
    v18 = objc_loadWeakRetained(&self->_delegate);
    v19 = objc_loadWeakRetained(&self->_svc);
    LOBYTE(v17) = [v18 _splitViewController:v19 collapseSecondaryViewController:controllerCopy ontoPrimaryViewController:viewControllerCopy forRestorationOfCollapsedWhileSuspendedWithPrimaryVisible:v17];

    if ((v17 & 1) == 0)
    {
LABEL_13:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([controllerCopy childViewControllers], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, !v21))
      {
        NSLog(&cfstr_SWhenCollapsin.isa, "[UISplitViewControllerClassicImpl _collapseSecondaryViewController:ontoPrimaryViewController:]", self, viewControllerCopy, controllerCopy);
      }

      else
      {
        v22 = objc_loadWeakRetained(&self->_svc);
        [viewControllerCopy collapseSecondaryViewController:controllerCopy forSplitViewController:v22];
      }
    }
  }

LABEL_16:
}

- (id)_separateSecondaryViewControllerFromPrimaryViewController:(id)controller
{
  controllerCopy = controller;
  if (qword_1ED497E78 != -1)
  {
    dispatch_once(&qword_1ED497E78, &__block_literal_global_152);
  }

  if (_MergedGlobals_33 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    _existingView = [WeakRetained _existingView];
    window = [_existingView window];
    rootViewController = [window rootViewController];
    _printHierarchy = [rootViewController _printHierarchy];
  }

  else
  {
    _printHierarchy = 0;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = v9;
  v11 = self->_suspendedState != 2 || v9 == 0;
  if (v11)
  {
    v12 = 0;
    v13 = 0;
  }

  else if ((*(&self->_splitViewControllerFlags + 4) & 0x10) != 0)
  {
    v14 = objc_loadWeakRetained(&self->_svc);
    v12 = [v10 _splitViewControllerIsPrimaryVisible:v14];

    v13 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if ((*(&self->_splitViewControllerFlags + 2) & 2) == 0)
  {
    v15 = 0;
LABEL_19:
    v19 = objc_loadWeakRetained(&self->_svc);
    v18 = [controllerCopy separateSecondaryViewControllerForSplitViewController:v19];

    goto LABEL_20;
  }

  v16 = objc_loadWeakRetained(&self->_svc);
  v15 = [v10 splitViewController:v16 separateSecondaryViewControllerFromPrimaryViewController:controllerCopy];

  if (!v15)
  {
    goto LABEL_19;
  }

  parentViewController = [v15 parentViewController];

  v18 = v15;
  if (parentViewController == controllerCopy)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (self->_suspendedState == 2)
  {
    v20 = v18 == 0;
    if (v13)
    {
      v20 = v12;
    }

    v11 = !v20;
    v21 = 3;
    if (v11)
    {
      v21 = 4;
    }

    self->_suspendedState = v21;
  }

  _preservedDetailController = v18;
  if (!v18)
  {
    _preservedDetailController = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
  }

  if (_MergedGlobals_33 == 1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__UISplitViewControllerClassicImpl__separateSecondaryViewControllerFromPrimaryViewController___block_invoke_2;
    aBlock[3] = &unk_1E7103B90;
    aBlock[4] = self;
    v28 = v18 == 0;
    v27 = _printHierarchy;
    v23 = _Block_copy(aBlock);
    v23[2](v23, controllerCopy, @"primary");
    v23[2](v23, _preservedDetailController, @"secondary");
  }

  return _preservedDetailController;
}

void __94__UISplitViewControllerClassicImpl__separateSecondaryViewControllerFromPrimaryViewController___block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIMainBundleIdentifier();
    _MergedGlobals_33 = [@"com.apple.MobileSMS" isEqualToString:v0];
  }

  else
  {
    _MergedGlobals_33 = 0;
  }
}

void __94__UISplitViewControllerClassicImpl__separateSecondaryViewControllerFromPrimaryViewController___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 parentViewController];

    if (!v7)
    {
      v8 = [v5 _existingView];
      v9 = [v8 window];

      if (v9)
      {
        v10 = [v8 superview];
        v11 = [v10 _viewControllerForAncestor];

        if (v11)
        {
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));

          if (WeakRetained != v11)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              v13 = *(a1 + 48);
              *buf = 138413314;
              v65 = v6;
              v66 = 2112;
              v67 = v5;
              v68 = 2112;
              v69 = v8;
              v70 = 2112;
              v71 = v11;
              v72 = 1024;
              v73 = v13;
              _os_log_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Separation error: '%@' %@ has view %@ in the wrong VC: %@. Fell back:%d", buf, 0x30u);
            }

            v45 = v11;
            v46 = v8;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v47 = a1;
            v14 = [*(a1 + 40) componentsSeparatedByString:@"\n"];
            v15 = [v14 countByEnumeratingWithState:&v57 objects:v63 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = MEMORY[0x1E69E9C10];
              v18 = *v58;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v58 != v18)
                  {
                    objc_enumerationMutation(v14);
                  }

                  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                  {
                    v20 = *(*(&v57 + 1) + 8 * i);
                    *buf = 138412290;
                    v65 = v20;
                    _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_INFO, "VCs before: %@", buf, 0xCu);
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v57 objects:v63 count:16];
              }

              while (v16);
            }

            v21 = objc_loadWeakRetained((*(v47 + 32) + 312));
            v22 = [v21 _existingView];
            v23 = [v22 window];
            v24 = [v23 rootViewController];
            v25 = [v24 _printHierarchy];

            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v44 = v25;
            v26 = [v25 componentsSeparatedByString:@"\n"];
            v27 = [v26 countByEnumeratingWithState:&v53 objects:v62 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = MEMORY[0x1E69E9C10];
              v30 = *v54;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v54 != v30)
                  {
                    objc_enumerationMutation(v26);
                  }

                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    v32 = *(*(&v53 + 1) + 8 * j);
                    *buf = 138412290;
                    v65 = v32;
                    _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_INFO, "VCs after: %@", buf, 0xCu);
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v53 objects:v62 count:16];
              }

              while (v28);
            }

            v33 = objc_loadWeakRetained((*(v47 + 32) + 312));
            v34 = [v33 _existingView];
            v35 = [v34 window];
            v36 = [v35 recursiveDescription];

            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v48 = v36;
            v37 = [v36 componentsSeparatedByString:@"\n"];
            v38 = [v37 countByEnumeratingWithState:&v49 objects:v61 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = MEMORY[0x1E69E9C10];
              v41 = *v50;
              do
              {
                for (k = 0; k != v39; ++k)
                {
                  if (*v50 != v41)
                  {
                    objc_enumerationMutation(v37);
                  }

                  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                  {
                    v43 = *(*(&v49 + 1) + 8 * k);
                    *buf = 138412290;
                    v65 = v43;
                    _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_INFO, "Views after: %@", buf, 0xCu);
                  }
                }

                v39 = [v37 countByEnumeratingWithState:&v49 objects:v61 count:16];
              }

              while (v39);
            }

            v11 = v45;
            v8 = v46;
          }
        }
      }
    }
  }
}

- (BOOL)_canDisplayHostedMaster
{
  if (dyld_program_sdk_at_least())
  {
    return 1;
  }

  if ((*(&self->_splitViewControllerFlags + 1) & 4) == 0)
  {
    return 0;
  }

  return [(UISplitViewControllerClassicImpl *)self _hidesMasterViewInCurrentOrientation];
}

- (BOOL)_isBasicallyHorizontallyCompact
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if ([WeakRetained _horizontalSizeClass] == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    v3 = [v4 userInterfaceIdiom] == 4;
  }

  return v3;
}

- (NSArray)viewControllers
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  childViewControllers = [WeakRetained childViewControllers];

  return childViewControllers;
}

- (void)setViewControllers:(id)controllers
{
  v85 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  if ([controllersCopy count] >= 2 && -[UISplitViewControllerClassicImpl _isCollapsed](self, "_isCollapsed"))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v60 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v84 = controllersCopy;
        _os_log_fault_impl(&dword_188A29000, v60, OS_LOG_TYPE_FAULT, "Too many view controllers assigned to collapsed split view controller: %@", buf, 0xCu);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &setViewControllers____s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v84 = controllersCopy;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Too many view controllers assigned to collapsed split view controller: %@", buf, 0xCu);
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _existingView = [WeakRetained _existingView];
  window = [_existingView window];
  v61 = window && !self->_useChangingBoundsLayout && [(UISplitViewControllerClassicImpl *)self _isBasicallyHorizontallyCompact];

  [(UISplitViewControllerClassicImpl *)self _setMasterOverrideTraitCollectionActive:0];
  v8 = objc_loadWeakRetained(&self->_svc);
  mutableChildViewControllers = [v8 mutableChildViewControllers];

  v9 = objc_loadWeakRetained(&self->_svc);
  childViewControllers = [v9 childViewControllers];

  if (mutableChildViewControllers == controllersCopy)
  {
    [(UISplitViewControllerClassicImpl *)self _setMasterOverrideTraitCollectionActive:1];
  }

  else
  {
    v63 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:childViewControllers];
    v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:controllersCopy];
    [v10 intersectSet:v63];
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v76 objects:v82 count:16];
    if (v12)
    {
      v13 = *v77;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v77 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v76 + 1) + 8 * i);
          v16 = [childViewControllers indexOfObject:v15];
          if (v16 == [controllersCopy indexOfObject:v15])
          {
            [v63 removeObject:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v12);
    }

    [v11 minusSet:v63];
    [mutableChildViewControllers removeAllObjects];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v17 = childViewControllers;
    v18 = [v17 countByEnumeratingWithState:&v72 objects:v81 count:16];
    if (v18)
    {
      v19 = *v73;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v73 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v72 + 1) + 8 * j);
          if (([v11 containsObject:v21] & 1) == 0)
          {
            [v21 willMoveToParentViewController:0];
            [v21 removeFromParentViewController];
            v22 = objc_loadWeakRetained(&self->_svc);
            isViewLoaded = [v22 isViewLoaded];

            if (isViewLoaded)
            {
              if (([v21 appearanceTransitionsAreDisabled] & 1) == 0)
              {
                v24 = objc_loadWeakRetained(&self->_svc);
                if (v24)
                {
                  v25 = (v24[94] & 3u) - 1 < 2;

                  if (v25)
                  {
                    [(UIViewController *)v21 __viewWillDisappear:?];
                  }
                }
              }

              view = [v21 view];
              [view removeFromSuperview];

              if (([v21 appearanceTransitionsAreDisabled] & 1) == 0 && (v27 = objc_loadWeakRetained(&self->_svc)) != 0 && (v28 = (v27[94] & 3u) - 1 < 2, v27, v28))
              {
                objc_initWeak(buf, v21);
                v70[0] = MEMORY[0x1E69E9820];
                v70[1] = 3221225472;
                v70[2] = __55__UISplitViewControllerClassicImpl_setViewControllers___block_invoke;
                v70[3] = &unk_1E70F5A28;
                objc_copyWeak(&v71, buf);
                [v21 setAfterAppearanceBlock:v70];
                [UIApp _addAfterCACommitBlockForViewController:v21];
                objc_destroyWeak(&v71);
                objc_destroyWeak(buf);
              }

              else if (([v21 appearanceTransitionsAreDisabled] & 1) == 0)
              {
                v21[47] &= 0xFFFFFFFFFFFFFFFCLL;
              }

              view2 = [v21 view];
              [view2 _setSpeedBumpEdges:0];
            }
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v72 objects:v81 count:16];
      }

      while (v18);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v30 = controllersCopy;
    v31 = [v30 countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (v31)
    {
      v32 = *v67;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v67 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v66 + 1) + 8 * k);
          if ([v11 containsObject:v34])
          {
            [mutableChildViewControllers addObject:v34];
          }

          else
          {
            v35 = objc_loadWeakRetained(&self->_svc);
            [v35 addChildViewController:v34];

            [v34 setDefinesPresentationContext:1];
            [v34 setNeedsDidMoveCleanup:1];
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v31);
    }

    v36 = objc_loadWeakRetained(&self->_svc);
    isViewLoaded2 = [v36 isViewLoaded];

    if (isViewLoaded2)
    {
      if ([v30 count] == 1)
      {
        v38 = [v30 objectAtIndexedSubscript:0];
        if (!v38 || (v39 = (v38[94] & 3u) - 1 < 2, v38, !v39))
        {
          v40 = [v30 objectAtIndexedSubscript:0];
          [v11 removeObject:v40];
        }
      }

      [(UISplitViewControllerClassicImpl *)self _loadNewSubviews:v11];
      v41 = objc_loadWeakRetained(&self->_svc);
      view3 = [v41 view];
      [view3 setNeedsLayout];
    }

    if ([v30 count])
    {
      barButtonItem = self->_barButtonItem;
      if (barButtonItem)
      {
        title = [(UIBarButtonItem *)barButtonItem title];
        v45 = [title isEqualToString:self->_buttonTitle];

        if (v45)
        {
          v46 = objc_loadWeakRetained(&self->_svc);
          masterViewController = [v46 masterViewController];
          title2 = [masterViewController title];
          [(UIBarButtonItem *)self->_barButtonItem setTitle:title2];

          title3 = [(UIBarButtonItem *)self->_barButtonItem title];
          v50 = [title3 copy];
          buttonTitle = self->_buttonTitle;
          self->_buttonTitle = v50;
        }
      }
    }

    [(UISplitViewControllerClassicImpl *)self _updateDisplayModeButtonItem];
    if (![(UISplitViewControllerClassicImpl *)self _defersUpdateDelegateHiddenMasterAspectRatios])
    {
      [(UISplitViewControllerClassicImpl *)self _updateDelegateHiddenMasterAspectRatios];
    }

    if ([v30 count])
    {
      v52 = objc_loadWeakRetained(&self->_svc);
      masterViewController2 = [v52 masterViewController];
      view4 = [masterViewController2 view];
      [view4 _setSpeedBumpEdges:8];
    }

    v55 = objc_loadWeakRetained(&self->_svc);
    [v55 _didChangeDeepestActionResponder];

    [(UISplitViewControllerClassicImpl *)self _setMasterOverrideTraitCollectionActive:1];
    if (v61)
    {
      [(UISplitViewControllerClassicImpl *)self _prepareForCompactLayout];
      goto LABEL_70;
    }
  }

  v56 = objc_loadWeakRetained(&self->_svc);
  _existingView2 = [v56 _existingView];
  window2 = [_existingView2 window];
  v59 = window2 == 0;

  if (v59)
  {
    [(UISplitViewControllerClassicImpl *)self _setCollapsedState:0];
  }

LABEL_70:
}

void __55__UISplitViewControllerClassicImpl_setViewControllers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(UIViewController *)WeakRetained __viewDidDisappear:?];
}

- (void)_setMasterOverrideTraitCollectionActive:(BOOL)active
{
  activeCopy = active;
  if ([(UISplitViewControllerClassicImpl *)self _hasMasterViewController])
  {
    if (activeCopy)
    {
      v7 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
    }

    else
    {
      v7 = 0;
    }

    v5 = objc_loadWeakRetained(&self->_svc);
    masterViewController = [v5 masterViewController];
    [v5 setOverrideTraitCollection:v7 forChildViewController:masterViewController];
  }
}

- (id)_childContainingSender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    _preservedDetailController = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
    if (_preservedDetailController)
    {
      v6 = _preservedDetailController;
      _preservedDetailController2 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
      v8 = [senderCopy _isMemberOfViewControllerHierarchy:_preservedDetailController2];

      if (v8)
      {
        _preservedDetailController3 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
        goto LABEL_12;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    masterViewController = [WeakRetained masterViewController];
    v12 = [senderCopy _isMemberOfViewControllerHierarchy:masterViewController];

    v13 = objc_loadWeakRetained(&self->_svc);
    v14 = v13;
    if (v12)
    {
      masterViewController2 = [v13 masterViewController];
LABEL_10:
      _preservedDetailController3 = masterViewController2;

      goto LABEL_12;
    }

    detailViewController = [v13 detailViewController];
    v17 = [senderCopy _isMemberOfViewControllerHierarchy:detailViewController];

    if (v17)
    {
      v14 = objc_loadWeakRetained(&self->_svc);
      masterViewController2 = [v14 detailViewController];
      goto LABEL_10;
    }
  }

  _preservedDetailController3 = 0;
LABEL_12:

  return _preservedDetailController3;
}

- (id)_primaryContentResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  detailViewController = [WeakRetained detailViewController];

  return detailViewController;
}

- (void)showViewController:(id)controller sender:(id)sender
{
  v26[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  senderCopy = sender;
  v8 = [(UISplitViewControllerClassicImpl *)self _childContainingSender:senderCopy];
  v9 = v8;
  if (controllerCopy)
  {
    if (v8 != controllerCopy)
    {
      if ((*(&self->_splitViewControllerFlags + 1) & 0x40) == 0 || (v10 = objc_loadWeakRetained(&self->_delegate), v11 = objc_loadWeakRetained(&self->_svc), v12 = [v10 splitViewController:v11 showViewController:controllerCopy sender:senderCopy], v11, v10, (v12 & 1) == 0))
      {
        WeakRetained = objc_loadWeakRetained(&self->_svc);
        _horizontalSizeClass = [WeakRetained _horizontalSizeClass];

        v15 = objc_loadWeakRetained(&self->_svc);
        v16 = v15;
        if (_horizontalSizeClass == 2)
        {
          masterViewController = [v15 masterViewController];

          v18 = objc_loadWeakRetained(&self->_svc);
          if (masterViewController == v9)
          {
            v26[0] = controllerCopy;
            v19 = v18;
            viewControllers = [v19 viewControllers];
            v21 = [viewControllers objectAtIndex:1];
            v26[1] = v21;
            v22 = MEMORY[0x1E695DEC8];
            v23 = v26;
          }

          else
          {
            v19 = v18;
            viewControllers = [v19 viewControllers];
            v21 = [viewControllers objectAtIndex:0];
            v25[0] = v21;
            v25[1] = controllerCopy;
            v22 = MEMORY[0x1E695DEC8];
            v23 = v25;
          }

          v24 = [v22 arrayWithObjects:v23 count:2];
          [v19 setViewControllers:v24];
        }

        else
        {
          [v15 presentViewController:controllerCopy animated:+[UIView areAnimationsEnabled](UIView completion:{"areAnimationsEnabled"), 0}];
        }
      }
    }
  }
}

- (void)showDetailViewController:(id)controller sender:(id)sender
{
  v35 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  senderCopy = sender;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  detailViewController = [WeakRetained detailViewController];
  v10 = detailViewController;
  if (detailViewController)
  {
    _preservedDetailController = detailViewController;
  }

  else
  {
    _preservedDetailController = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
  }

  v12 = _preservedDetailController;

  _existingView = [v12 _existingView];
  window = [_existingView window];
  if (!window)
  {

    goto LABEL_10;
  }

  v15 = window;
  if (v12 != controllerCopy)
  {
    goto LABEL_11;
  }

  v16 = objc_loadWeakRetained(&self->_svc);
  traitCollection = [v16 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
LABEL_10:
    _existingView = objc_loadWeakRetained(&self->_svc);
    [_existingView masterViewController];
    v12 = v15 = v12;
LABEL_11:

    if (!controllerCopy)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (!controllerCopy)
  {
    goto LABEL_23;
  }

LABEL_12:
  if (v12 != controllerCopy)
  {
    _isBasicallyHorizontallyCompact = [(UISplitViewControllerClassicImpl *)self _isBasicallyHorizontallyCompact];
    if ((*(&self->_splitViewControllerFlags + 1) & 0x80) == 0 || (v20 = objc_loadWeakRetained(&self->_delegate), v21 = objc_loadWeakRetained(&self->_svc), v22 = [v20 splitViewController:v21 showDetailViewController:controllerCopy sender:senderCopy], v21, v20, (v22 & 1) == 0))
    {
      v23 = objc_loadWeakRetained(&self->_svc);
      v24 = v23;
      if (_isBasicallyHorizontallyCompact)
      {
        [v23 _willShowCollapsedDetailViewController:controllerCopy inTargetController:v12];

        if ([objc_opt_class() doesOverrideViewControllerMethod:sel_showViewController_sender_])
        {
          [v12 showViewController:controllerCopy sender:senderCopy];
        }

        else
        {
          v30 = objc_loadWeakRetained(&self->_svc);
          [v30 presentViewController:controllerCopy animated:+[UIView areAnimationsEnabled](UIView completion:{"areAnimationsEnabled"), 0}];
        }
      }

      else
      {
        masterViewController = [v23 masterViewController];

        v26 = objc_loadWeakRetained(&self->_svc);
        if (masterViewController)
        {
          v33 = masterViewController;
          v34 = controllerCopy;
          v27 = MEMORY[0x1E695DEC8];
          v28 = &v33;
          v29 = 2;
        }

        else
        {
          v32 = controllerCopy;
          v27 = MEMORY[0x1E695DEC8];
          v28 = &v32;
          v29 = 1;
        }

        v31 = [v27 arrayWithObjects:v28 count:{v29, v32, v33, v34, v35}];
        [v26 setViewControllers:v31];
      }
    }
  }

LABEL_23:
}

- (void)_willShowCollapsedDetailViewController:(id)controller inTargetController:(id)targetController
{
  targetControllerCopy = targetController;
  controllerCopy = controller;
  [(UISplitViewControllerClassicImpl *)self _setPreservedDetailController:controllerCopy];
  objc_opt_class();
  LOBYTE(self) = objc_opt_isKindOfClass();

  if ((self & 1) != 0 && [objc_opt_class() doesOverrideViewControllerMethod:sel_showViewController_sender_])
  {
    [targetControllerCopy _setAllowNestedNavigationControllers:1];
  }
}

- (void)_prepareForCompactLayout
{
  self->_useChangingBoundsLayout = 1;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  masterViewController = [WeakRetained masterViewController];

  v5 = objc_loadWeakRetained(&self->_svc);
  detailViewController = [v5 detailViewController];

  _primaryViewControllerForCollapsing = [(UISplitViewControllerClassicImpl *)self _primaryViewControllerForCollapsing];
  _secondaryViewControllerForCollapsing = [(UISplitViewControllerClassicImpl *)self _secondaryViewControllerForCollapsing];
  if (_secondaryViewControllerForCollapsing)
  {
    [(UISplitViewControllerClassicImpl *)self _setPreservedDetailController:_secondaryViewControllerForCollapsing];
    v9 = objc_loadWeakRetained(&self->_svc);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__UISplitViewControllerClassicImpl__prepareForCompactLayout__block_invoke;
    v17[3] = &unk_1E70F6228;
    v17[4] = self;
    v18 = _primaryViewControllerForCollapsing;
    v19 = _secondaryViewControllerForCollapsing;
    [UIViewController _withDisabledAppearanceTransitionsForVisibleDescendantsOf:v9 perform:v17];

    if (dyld_program_sdk_at_least())
    {
      if (masterViewController)
      {
        _existingView = [masterViewController _existingView];
        window = [_existingView window];
        if (window)
        {
        }

        else
        {
          v13 = (masterViewController[94] & 3) - 1;

          if (v13 <= 1)
          {
            [(UIViewController *)masterViewController __viewWillDisappear:?];
            [(UIViewController *)masterViewController __viewDidDisappear:?];
          }
        }
      }

      if (detailViewController)
      {
        _existingView2 = [detailViewController _existingView];
        window2 = [_existingView2 window];
        if (window2)
        {
        }

        else
        {
          v16 = (detailViewController[94] & 3) - 1;

          if (v16 <= 1)
          {
            [(UIViewController *)detailViewController __viewWillDisappear:?];
            [(UIViewController *)detailViewController __viewDidDisappear:?];
          }
        }
      }
    }
  }

  else
  {
    _preservedDetailController = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];

    if (!_preservedDetailController)
    {
      [(UISplitViewControllerClassicImpl *)self _setPreservedDetailController:0];
    }
  }
}

void __60__UISplitViewControllerClassicImpl__prepareForCompactLayout__block_invoke(uint64_t *a1)
{
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __60__UISplitViewControllerClassicImpl__prepareForCompactLayout__block_invoke_2;
  v6 = &unk_1E70F35B8;
  v2 = a1[5];
  v7 = a1[4];
  v8 = v2;
  [UIView performWithoutAnimation:&v3];
  [a1[4] _collapseSecondaryViewController:a1[6] ontoPrimaryViewController:{a1[5], v3, v4, v5, v6, v7}];
}

void __60__UISplitViewControllerClassicImpl__prepareForCompactLayout__block_invoke_2(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [WeakRetained setViewControllers:v3];
}

- (void)_animateTransitionFromTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  horizontalSizeClass = [collection horizontalSizeClass];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  traitCollection = [WeakRetained traitCollection];
  horizontalSizeClass2 = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1 && horizontalSizeClass2 == 2)
  {
    [(UISplitViewControllerClassicImpl *)self _separateMasterAndDetailWithTransitionCoordinator:coordinatorCopy];
    self->_useChangingBoundsLayout = 1;
  }

  else
  {
    self->_useChangingBoundsLayout = 1;
    if (horizontalSizeClass == 2 && horizontalSizeClass2 == 1)
    {
      [(UISplitViewControllerClassicImpl *)self _collapseMasterAndDetailWithTransitionCoordinator:coordinatorCopy];
    }
  }

  [(UISplitViewControllerClassicImpl *)self _updateTargetDisplayMode];
}

- (void)_separateMasterAndDetailWithTransitionCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __86__UISplitViewControllerClassicImpl__separateMasterAndDetailWithTransitionCoordinator___block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [UIView performWithoutAnimation:v4];
  [(UIView *)self->_collapsingMasterSnapshotView setAlpha:0.0];
}

void __86__UISplitViewControllerClassicImpl__separateMasterAndDetailWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
  v3 = [WeakRetained masterViewController];
  v4 = [v3 view];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [*(a1 + 32) _removeCollapsingSnapshotViews];
  v13 = [[UISnapshotView alloc] initWithFrame:v6, v8, v10, v12];
  v14 = *(a1 + 32);
  v15 = *(v14 + 376);
  *(v14 + 376) = v13;

  v16 = *(a1 + 32);
  v17 = *(v16 + 376);
  v18 = objc_loadWeakRetained((v16 + 312));
  v19 = [v18 masterViewController];
  v20 = [v19 view];
  [v17 captureSnapshotOfView:v20 withSnapshotType:1];

  v21 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v22 = [v21 view];
  [v22 addSubview:*(*(a1 + 32) + 376)];

  [*(a1 + 32) _setCollapsedState:3];
  v23 = [*(a1 + 32) _primaryViewControllerForExpanding];
  v24 = [*(a1 + 32) _preservedDetailController];
  if (!v24)
  {
    v24 = [*(a1 + 32) _secondaryViewControllerForCollapsing];
    [*(a1 + 32) _setPreservedDetailController:v24];
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__57;
  v58 = __Block_byref_object_dispose__57;
  v59 = 0;
  if (v24)
  {
    v25 = (v24[94] & 3u) - 1 < 2;
  }

  else
  {
    v25 = 0;
  }

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __86__UISplitViewControllerClassicImpl__separateMasterAndDetailWithTransitionCoordinator___block_invoke_105;
  v51[3] = &unk_1E70FB728;
  v26 = *(a1 + 32);
  v53 = &v54;
  v51[4] = v26;
  v27 = v23;
  v52 = v27;
  [UIViewController _withDisabledAppearanceTransitions:v25 forDescendantsOf:v24 visibleOnly:1 perform:v51];
  [*(a1 + 32) _setPreservedDetailController:v55[5]];
  v28 = [v55[5] _hasAppeared];
  v29 = v55[5];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __86__UISplitViewControllerClassicImpl__separateMasterAndDetailWithTransitionCoordinator___block_invoke_3;
  v47[3] = &unk_1E70FB728;
  v50 = &v54;
  v30 = v27;
  v31 = *(a1 + 32);
  v48 = v30;
  v49 = v31;
  [UIViewController _withDisabledAppearanceTransitions:v28 forDescendantsOf:v29 visibleOnly:v29 != v24 perform:v47];
  v32 = [v30 view];
  [v32 frame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  LODWORD(v28) = [*(a1 + 32) _layoutPrimaryOnRight];
  v41 = [v30 view];
  v42 = v41;
  v43 = -v38;
  if (v28)
  {
    v43 = v38;
  }

  [v41 setFrame:{v34 + v43, v36, v38, v40}];

  v44 = [v55[5] view];
  [v44 setFrame:{v6, v8, v10, v12}];

  v45 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v46 = [v45 view];
  [v46 bringSubviewToFront:*(*(a1 + 32) + 376)];

  _Block_object_dispose(&v54, 8);
}

void __86__UISplitViewControllerClassicImpl__separateMasterAndDetailWithTransitionCoordinator___block_invoke_105(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __86__UISplitViewControllerClassicImpl__separateMasterAndDetailWithTransitionCoordinator___block_invoke_2;
  v3[3] = &unk_1E70FB728;
  v3[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  v1 = v2;
  v4 = v2;
  [UIViewController _performWithoutDeferringTransitions:v3];
}

void __86__UISplitViewControllerClassicImpl__separateMasterAndDetailWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _separateSecondaryViewControllerFromPrimaryViewController:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __86__UISplitViewControllerClassicImpl__separateMasterAndDetailWithTransitionCoordinator___block_invoke_3(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[6] + 8) + 40);
  if (v2)
  {
    v9 = a1[4];
    v10 = v2;
    v3 = MEMORY[0x1E695DEC8];
    v4 = &v9;
    v5 = 2;
  }

  else
  {
    v8 = a1[4];
    v3 = MEMORY[0x1E695DEC8];
    v4 = &v8;
    v5 = 1;
  }

  v6 = [v3 arrayWithObjects:v4 count:{v5, v8, v9, v10, v11}];
  WeakRetained = objc_loadWeakRetained((a1[5] + 312));
  [WeakRetained setViewControllers:v6];
}

- (void)_collapseMasterAndDetailWithTransitionCoordinator:(id)coordinator
{
  v17 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  if ([(UISplitViewControllerClassicImpl *)self _isCollapsed])
  {
    viewControllers = [(UISplitViewControllerClassicImpl *)self viewControllers];
    v6 = [viewControllers count] > 1;
  }

  else
  {
    v6 = 0;
  }

  [(UISplitViewControllerClassicImpl *)self _setCollapsedState:1];
  _secondaryViewControllerForCollapsing = [(UISplitViewControllerClassicImpl *)self _secondaryViewControllerForCollapsing];
  _primaryViewControllerForCollapsing = [(UISplitViewControllerClassicImpl *)self _primaryViewControllerForCollapsing];
  if (v6)
  {
    navigationController = [_secondaryViewControllerForCollapsing navigationController];
    _outermostNavigationController = [navigationController _outermostNavigationController];
    v11 = [_outermostNavigationController isEqual:_primaryViewControllerForCollapsing];

    if (v11)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v13 = __UIFaultDebugAssertLog();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }

        WeakRetained = objc_loadWeakRetained(&self->_svc);
        v15 = 138412290;
        v16 = WeakRetained;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Avoid pushing detail twice while collapsing an already collapsed UISVC. UISplitViewController may be in inconsistent state. %@", &v15, 0xCu);
      }

      else
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &_collapseMasterAndDetailWithTransitionCoordinator____s_category) + 8);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
LABEL_11:

          _secondaryViewControllerForCollapsing = 0;
LABEL_15:
          [(UISplitViewControllerClassicImpl *)self _setCollapsedState:2];
          goto LABEL_16;
        }

        v13 = v12;
        WeakRetained = objc_loadWeakRetained(&self->_svc);
        v15 = 138412290;
        v16 = WeakRetained;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Avoid pushing detail twice while collapsing an already collapsed UISVC. UISplitViewController may be in inconsistent state. %@", &v15, 0xCu);
      }

LABEL_10:
      goto LABEL_11;
    }
  }

  if (!_primaryViewControllerForCollapsing || !_secondaryViewControllerForCollapsing)
  {
    goto LABEL_15;
  }

  [(UISplitViewControllerClassicImpl *)self _setPreservedDetailController:_secondaryViewControllerForCollapsing];
  [(UISplitViewControllerClassicImpl *)self _collapseMaster:_primaryViewControllerForCollapsing andDetail:_secondaryViewControllerForCollapsing withTransitionCoordinator:coordinatorCopy];
LABEL_16:
}

- (void)_collapseMaster:(id)master andDetail:(id)detail withTransitionCoordinator:(id)coordinator
{
  masterCopy = master;
  detailCopy = detail;
  coordinatorCopy = coordinator;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __88__UISplitViewControllerClassicImpl__collapseMaster_andDetail_withTransitionCoordinator___block_invoke;
  v23 = &unk_1E70F6B40;
  v24 = masterCopy;
  selfCopy = self;
  v26 = coordinatorCopy;
  v11 = detailCopy;
  v27 = v11;
  v12 = coordinatorCopy;
  v13 = masterCopy;
  [UIViewController _withDisabledAppearanceTransitionsForVisibleDescendantsOf:v11 perform:&v20];
  v14 = dyld_program_sdk_at_least();
  if (v11 && v14 && (v11[94] & 3u) - 1 <= 1)
  {
    splitViewController = [v11 splitViewController];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v17 = WeakRetained;
    if (splitViewController == WeakRetained)
    {
    }

    else
    {
      _existingView = [v11 _existingView];
      window = [_existingView window];

      if (!window)
      {
        [(UIViewController *)v11 __viewWillDisappear:?];
        [(UIViewController *)v11 __viewDidDisappear:?];
      }
    }
  }
}

void __88__UISplitViewControllerClassicImpl__collapseMaster_andDetail_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _appearState] == 3;
  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__UISplitViewControllerClassicImpl__collapseMaster_andDetail_withTransitionCoordinator___block_invoke_2;
  v10[3] = &unk_1E70F6B40;
  v9 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v9;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  [UIViewController _withDisabledAppearanceTransitions:v2 forDescendantsOf:v3 visibleOnly:1 perform:v10];
}

void __88__UISplitViewControllerClassicImpl__collapseMaster_andDetail_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__UISplitViewControllerClassicImpl__collapseMaster_andDetail_withTransitionCoordinator___block_invoke_3;
  v7[3] = &unk_1E70F6B40;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [UIView performWithoutAnimation:v7];
  [*(*(a1 + 32) + 384) setAlpha:0.0];
}

void __88__UISplitViewControllerClassicImpl__collapseMaster_andDetail_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 376))
  {
    v3 = [UISnapshotView alloc];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
    v5 = [WeakRetained masterViewController];
    v6 = [v5 view];
    [v6 frame];
    v7 = [(UISnapshotView *)v3 initWithFrame:?];
    v8 = *(a1 + 32);
    v9 = *(v8 + 376);
    *(v8 + 376) = v7;

    v10 = *(a1 + 32);
    v11 = *(v10 + 376);
    v12 = objc_loadWeakRetained((v10 + 312));
    v13 = [v12 masterViewController];
    v14 = [v13 view];
    [v11 captureSnapshotOfView:v14 withSnapshotType:1];

    v2 = *(a1 + 32);
  }

  v15 = objc_loadWeakRetained((v2 + 312));
  v16 = [v15 view];
  [v16 addSubview:*(*(a1 + 32) + 376)];

  v17 = *(a1 + 32);
  if (!*(v17 + 384))
  {
    v18 = [UISnapshotView alloc];
    v19 = objc_loadWeakRetained((*(a1 + 32) + 312));
    v20 = [v19 detailViewController];
    v21 = [v20 view];
    [v21 frame];
    v22 = [(UISnapshotView *)v18 initWithFrame:?];
    v23 = *(a1 + 32);
    v24 = *(v23 + 384);
    *(v23 + 384) = v22;

    v25 = *(a1 + 32);
    v26 = *(v25 + 384);
    v27 = objc_loadWeakRetained((v25 + 312));
    v28 = [v27 detailViewController];
    v29 = [v28 view];
    [v26 captureSnapshotOfView:v29 withSnapshotType:1];

    v17 = *(a1 + 32);
  }

  v30 = objc_loadWeakRetained((v17 + 312));
  v31 = [v30 view];
  [v31 addSubview:*(*(a1 + 32) + 384)];

  v32 = *(a1 + 40);
  if (v32)
  {
    [v32 targetTransform];
    v33 = (*&v49 < 0.0) << 31;
  }

  else
  {
    v33 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
  }

  *(*(a1 + 32) + 640) = *(*(a1 + 32) + 640) & 0xFFFFFFFF7FFFFFFFLL | v33;
  v34 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v51[0] = *(a1 + 48);
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  [v34 setViewControllers:v35];

  v36 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v37 = [v36 view];
  [v37 bringSubviewToFront:*(*(a1 + 32) + 376)];

  v38 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v39 = [v38 view];
  [v39 bringSubviewToFront:*(*(a1 + 32) + 384)];

  v40 = *(*(a1 + 32) + 592);
  v41 = *(*(a1 + 32) + 600);
  v42 = *(*(a1 + 32) + 608);
  v43 = *(*(a1 + 32) + 616);
  v44 = [*(a1 + 48) view];
  [v44 setFrame:{v40, v41, v42, v43}];

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __88__UISplitViewControllerClassicImpl__collapseMaster_andDetail_withTransitionCoordinator___block_invoke_4;
  v45[3] = &unk_1E70F6228;
  v45[4] = *(a1 + 32);
  v46 = *(a1 + 56);
  v47 = *(a1 + 48);
  [UIViewController _performWithoutDeferringTransitions:v45];
}

- (void)_didTransitionTraitCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  masterViewController = [WeakRetained masterViewController];

  _preservedDetailController = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
  v5 = (*&self->_splitViewControllerFlags >> 20) & 3;
  if (masterViewController)
  {
    v6 = _preservedDetailController == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (v5 == 1)
    {
      v5 = 2;
    }

    else if (v5 == 3)
    {
      [(UISplitViewControllerClassicImpl *)self _setPreservedDetailController:0];
      v5 = 0;
    }
  }

  self->_useChangingBoundsLayout = 0;
  [(UISplitViewControllerClassicImpl *)self _setCollapsedState:v5];
  [(UISplitViewControllerClassicImpl *)self _removeCollapsingSnapshotViews];
  postTransitionResponder = self->_postTransitionResponder;
  if (postTransitionResponder)
  {
    if ((*(&self->_splitViewControllerFlags + 4) & 1) == 0)
    {
      v8 = objc_loadWeakRetained(&self->_svc);
      v9 = [v8 _containsResponder:self->_postTransitionResponder];

      if (v9)
      {
        if ((*(&self->_splitViewControllerFlags + 4) & 2) != 0)
        {
          [(UIResponder *)self->_postTransitionResponder becomeFirstResponder];
        }

        else
        {
          v10 = objc_loadWeakRetained(&self->_svc);
          _window = [v10 _window];
          [_window _setFirstResponder:self->_postTransitionResponder];
        }

        v12 = 0;
        goto LABEL_18;
      }

      postTransitionResponder = self->_postTransitionResponder;
    }

    v12 = postTransitionResponder;
LABEL_18:
    v13 = self->_postTransitionResponder;
    self->_postTransitionResponder = 0;

    *&self->_splitViewControllerFlags &= 0xFFFFFFFCFFFFFFFFLL;
    if (v12)
    {
      [(UIResponder *)v12 _finishResignFirstResponder];
    }

    v14 = objc_loadWeakRetained(&self->_svc);
    _window2 = [v14 _window];
    [_window2 _setIsSettingFirstResponder:0];
  }
}

- (void)_didChangeToFirstResponder:(id)responder
{
  postTransitionResponder = self->_postTransitionResponder;
  if (postTransitionResponder)
  {
    v4 = postTransitionResponder == responder;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = 0x100000000;
    if (!responder)
    {
      v5 = 0x200000000;
    }

    *&self->_splitViewControllerFlags |= v5;
  }
}

- (BOOL)_disableAutomaticKeyboardBehavior
{
  if (self->_postTransitionResponder)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _super_disableAutomaticKeyboardBehavior = [WeakRetained _super_disableAutomaticKeyboardBehavior];

  return _super_disableAutomaticKeyboardBehavior;
}

- (id)_deepestUnambiguousResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _super_deepestActionResponder = [WeakRetained _super_deepestActionResponder];

  return _super_deepestActionResponder;
}

- (void)_removeCollapsingSnapshotViews
{
  [(UIView *)self->_collapsingMasterSnapshotView removeFromSuperview];
  collapsingMasterSnapshotView = self->_collapsingMasterSnapshotView;
  self->_collapsingMasterSnapshotView = 0;

  [(UIView *)self->_collapsingDetailSnapshotView removeFromSuperview];
  collapsingDetailSnapshotView = self->_collapsingDetailSnapshotView;
  self->_collapsingDetailSnapshotView = 0;
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  if ((*(&self->_splitViewControllerFlags + 4) & 8) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    isCollapsed = [WeakRetained isCollapsed];

    if ((isCollapsed & 1) == 0)
    {
      if ([(UISplitViewControllerClassicImpl *)self _hasMasterViewController])
      {
        v10 = objc_loadWeakRetained(&self->_svc);
        masterViewController = [v10 masterViewController];

        if (masterViewController == containerCopy)
        {
          [(UISplitViewControllerClassicImpl *)self _masterViewFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
          goto LABEL_24;
        }
      }

      v12 = objc_loadWeakRetained(&self->_svc);
      detailViewController = [v12 detailViewController];

      if (detailViewController == containerCopy)
      {
        [(UISplitViewControllerClassicImpl *)self _detailViewFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
LABEL_24:
        width = v14;
        height = v15;
        goto LABEL_21;
      }
    }

    goto LABEL_19;
  }

  if (!self->_transitioningToInternalMode)
  {
    goto LABEL_19;
  }

  if ([(UISplitViewControllerClassicImpl *)self _hasMasterViewController])
  {
    v16 = objc_loadWeakRetained(&self->_svc);
    masterViewController2 = [v16 masterViewController];

    if (masterViewController2 == containerCopy)
    {
      [(UISplitViewControllerClassicImpl *)self _primaryColumnWidthForSize:0 isCompact:width, height];
      width = v30;
      goto LABEL_21;
    }
  }

  v18 = objc_loadWeakRetained(&self->_svc);
  detailViewController2 = [v18 detailViewController];
  v20 = detailViewController2;
  if (detailViewController2 == containerCopy)
  {

    goto LABEL_16;
  }

  if (![(UISplitViewControllerClassicImpl *)self _isTransitioningFromCollapsedToSeparated])
  {

    goto LABEL_19;
  }

  _preservedDetailController = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];

  if (_preservedDetailController != containerCopy)
  {
LABEL_19:
    v24 = objc_loadWeakRetained(&self->_svc);
    [v24 _super_sizeForChildContentContainer:containerCopy withParentContainerSize:{width, height}];
    width = v26;
    height = v27;
    goto LABEL_20;
  }

LABEL_16:
  if (self->_transitioningToInternalMode == 1)
  {
    [(UISplitViewControllerClassicImpl *)self _primaryColumnWidthForSize:0 isCompact:width, height];
    v23 = v22;
    v24 = objc_loadWeakRetained(&self->_svc);
    [v24 gutterWidth];
    width = width - (v23 + v25);
LABEL_20:
  }

LABEL_21:

  v28 = width;
  v29 = height;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _existingView = [WeakRetained _existingView];
  v100 = coordinatorCopy;
  if (_existingView)
  {
    v11 = _existingView;
    v12 = objc_loadWeakRetained(&self->_svc);
    traitCollection = [v12 traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];
    horizontalSizeClass2 = [collectionCopy horizontalSizeClass];

    if (horizontalSizeClass == horizontalSizeClass2)
    {
      v16 = 0;
      v17 = 0;
      coordinatorCopy = v100;
    }

    else
    {
      objc_storeStrong(&self->_transitioningToTraitCollection, collection);
      if ([collectionCopy horizontalSizeClass] == 1)
      {
        self->_useChangingBoundsLayout = 1;
        v18 = objc_loadWeakRetained(&self->_svc);
        view = [v18 view];
        [view bounds];
        self->_viewBoundsBeforeCollapse.origin.x = v20;
        self->_viewBoundsBeforeCollapse.origin.y = v21;
        self->_viewBoundsBeforeCollapse.size.width = v22;
        self->_viewBoundsBeforeCollapse.size.height = v23;

        v16 = 0;
      }

      else
      {
        v16 = [collectionCopy horizontalSizeClass] == 2;
      }

      v24 = objc_loadWeakRetained(&self->_svc);
      traitCollection2 = [v24 traitCollection];

      v26 = objc_loadWeakRetained(&self->_svc);
      _window = [v26 _window];
      firstResponder = [_window firstResponder];

      v29 = objc_loadWeakRetained(&self->_svc);
      detailViewController = [v29 detailViewController];
      v31 = detailViewController;
      if (detailViewController)
      {
        v32 = detailViewController;
      }

      else
      {
        v32 = objc_loadWeakRetained(&self->_svc);
      }

      v33 = v32;

      if ([v33 _containsResponder:firstResponder])
      {
        if ((*(&self->_splitViewControllerFlags + 3) & 0x10) == 0 || (v34 = objc_loadWeakRetained(&self->_delegate), v35 = objc_loadWeakRetained(&self->_svc), v36 = [v34 _splitViewControllerShouldRestoreResponderAfterTraitCollectionTransition:v35], v35, v34, v36))
        {
          objc_storeStrong(&self->_postTransitionResponder, firstResponder);
          *&self->_splitViewControllerFlags &= 0xFFFFFFFCFFFFFFFFLL;
          v37 = objc_loadWeakRetained(&self->_svc);
          _window2 = [v37 _window];
          [_window2 _setIsSettingFirstResponder:1];
        }
      }

      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
      v106[3] = &unk_1E7101978;
      v106[4] = self;
      v107 = traitCollection2;
      coordinatorCopy = v100;
      v108 = v100;
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_2;
      v105[3] = &unk_1E70F3B98;
      v105[4] = self;
      v39 = traitCollection2;
      [v108 animateAlongsideTransition:v106 completion:v105];

      v17 = 1;
    }
  }

  else
  {

    v16 = 0;
    v17 = 0;
  }

  v40 = objc_loadWeakRetained(&self->_svc);
  [v40 _super_willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];

  if (v16)
  {
    v41 = objc_loadWeakRetained(&self->_svc);
    masterViewController = [v41 masterViewController];

    _preservedDetailController = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
    if (masterViewController)
    {
      v44 = objc_loadWeakRetained(&self->_svc);
      v45 = [v44 overrideTraitCollectionForChildViewController:masterViewController];

      if (v45)
      {
        if (_preservedDetailController)
        {
          v46 = objc_loadWeakRetained(&self->_svc);
          v47 = [v46 overrideTraitCollectionForChildViewController:_preservedDetailController];

          v48 = objc_loadWeakRetained(&self->_svc);
          v49 = [objc_opt_class() _traitCollectionWithParentTraitCollection:collectionCopy overrideTraitCollection:v47];

          [_preservedDetailController _unsafeParentWillTransitionToTraitCollection:v49 withTransitionCoordinator:v100];
          coordinatorCopy = v100;
        }
      }
    }
  }

  if (v17)
  {
    [(UISplitViewControllerClassicImpl *)self _removeCollapsingSnapshotViews];
    if (!-[UISplitViewControllerClassicImpl _isMasterViewShown](self, "_isMasterViewShown") || (v50 = objc_loadWeakRetained(&self->_svc), [v50 masterViewController], v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v51, "childModalViewController"), v52 = objc_claimAutoreleasedReturnValue(), v52, v51, v50, !v52))
    {
LABEL_32:
      _firstCurrentContextChildInWindow2 = objc_loadWeakRetained(&self->_svc);
      detailViewController2 = [_firstCurrentContextChildInWindow2 detailViewController];
      if (detailViewController2)
      {
        v68 = detailViewController2;
        v69 = objc_loadWeakRetained(&self->_svc);
        detailViewController3 = [v69 detailViewController];
        childModalViewController = [detailViewController3 childModalViewController];

        if (!childModalViewController)
        {
LABEL_37:
          _preservedDetailController2 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
          coordinatorCopy = v100;
          if (_preservedDetailController2)
          {
            v85 = _preservedDetailController2;
            _preservedDetailController3 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
            childModalViewController2 = [_preservedDetailController3 childModalViewController];

            if (childModalViewController2)
            {
              _preservedDetailController4 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
              _presentationController = [_preservedDetailController4 _presentationController];
              _firstCurrentContextChildInWindow = [_presentationController _firstCurrentContextChildInWindow];

              if (_firstCurrentContextChildInWindow)
              {
                v91 = [UISnapshotView alloc];
                v92 = objc_loadWeakRetained(&self->_svc);
                detailViewController4 = [v92 detailViewController];
                childModalViewController3 = [detailViewController4 childModalViewController];
                view2 = [childModalViewController3 view];
                [view2 frame];
                v96 = [(UISnapshotView *)v91 initWithFrame:?];
                collapsingMasterSnapshotView = self->_collapsingMasterSnapshotView;
                self->_collapsingMasterSnapshotView = v96;

                coordinatorCopy = v100;
                v98 = self->_collapsingMasterSnapshotView;
                view3 = [_firstCurrentContextChildInWindow view];
                [(UISnapshotView *)v98 captureSnapshotOfView:view3 withSnapshotType:1];
              }

              v101[0] = MEMORY[0x1E69E9820];
              v101[1] = 3221225472;
              v101[2] = __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_6;
              v101[3] = &unk_1E70F3590;
              v101[4] = self;
              [UIViewController _performWithoutDeferringTransitions:v101];
            }
          }

          goto LABEL_42;
        }

        v72 = objc_loadWeakRetained(&self->_svc);
        detailViewController5 = [v72 detailViewController];
        _presentationController2 = [detailViewController5 _presentationController];
        _firstCurrentContextChildInWindow2 = [_presentationController2 _firstCurrentContextChildInWindow];

        if (_firstCurrentContextChildInWindow2)
        {
          v75 = [UISnapshotView alloc];
          v76 = objc_loadWeakRetained(&self->_svc);
          detailViewController6 = [v76 detailViewController];
          childModalViewController4 = [detailViewController6 childModalViewController];
          view4 = [childModalViewController4 view];
          [view4 frame];
          v80 = [(UISnapshotView *)v75 initWithFrame:?];
          collapsingDetailSnapshotView = self->_collapsingDetailSnapshotView;
          self->_collapsingDetailSnapshotView = v80;

          v82 = self->_collapsingDetailSnapshotView;
          view5 = [_firstCurrentContextChildInWindow2 view];
          [(UISnapshotView *)v82 captureSnapshotOfView:view5 withSnapshotType:1];

          v102[0] = MEMORY[0x1E69E9820];
          v102[1] = 3221225472;
          v102[2] = __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_5;
          v102[3] = &unk_1E70F3590;
          v102[4] = self;
          [UIViewController _performWithoutDeferringTransitions:v102];
        }
      }

      goto LABEL_37;
    }

    v53 = objc_loadWeakRetained(&self->_svc);
    masterViewController2 = [v53 masterViewController];
    _presentationController3 = [masterViewController2 _presentationController];
    _firstCurrentContextChildInWindow3 = [_presentationController3 _firstCurrentContextChildInWindow];

    if (_firstCurrentContextChildInWindow3)
    {
      v57 = [UISnapshotView alloc];
      v58 = objc_loadWeakRetained(&self->_svc);
      masterViewController3 = [v58 masterViewController];
      view6 = [masterViewController3 view];
      [view6 frame];
      v61 = [(UISnapshotView *)v57 initWithFrame:?];
      v62 = self->_collapsingMasterSnapshotView;
      self->_collapsingMasterSnapshotView = v61;

      v63 = self->_collapsingMasterSnapshotView;
      view7 = [_firstCurrentContextChildInWindow3 view];
      [(UISnapshotView *)v63 captureSnapshotOfView:view7 withSnapshotType:1];

      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_3;
      v104[3] = &unk_1E70F3590;
      v104[4] = self;
      v65 = v104;
    }

    else
    {
      if (!-[UIPopoverController isPopoverVisible](self->_hiddenPopoverController, "isPopoverVisible") || [collectionCopy horizontalSizeClass] != 1)
      {
        goto LABEL_31;
      }

      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_4;
      v103[3] = &unk_1E70F3590;
      v103[4] = self;
      v65 = v103;
    }

    [UIViewController _performWithoutDeferringTransitions:v65];
LABEL_31:

    goto LABEL_32;
  }

LABEL_42:
}

void __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _didTransitionTraitCollection];
  v2 = *(a1 + 32);
  v3 = *(v2 + 568);
  *(v2 + 568) = 0;
}

void __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
  v1 = [WeakRetained masterViewController];
  [v1 dismissViewControllerAnimated:0 completion:0];
}

void __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
  v1 = [WeakRetained masterViewController];
  [v1 dismissViewControllerAnimated:0 completion:0];
}

void __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
  v1 = [WeakRetained detailViewController];
  [v1 dismissViewControllerAnimated:0 completion:0];
}

void __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) _preservedDetailController];
  [v1 dismissViewControllerAnimated:0 completion:0];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  traitCollection = [WeakRetained traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  horizontalSizeClass2 = [changeCopy horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2)
  {

    [(UISplitViewControllerClassicImpl *)self _setMasterOverrideTraitCollectionActive:1];
  }
}

- (void)_setupUnderBarSeparatorView
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  view = [WeakRetained view];
  backgroundColor = [view backgroundColor];

  underBarSeparatorView = self->_underBarSeparatorView;
  if (backgroundColor)
  {
    if (!underBarSeparatorView)
    {
      v7 = [UIView alloc];
      v8 = objc_loadWeakRetained(&self->_svc);
      view2 = [v8 view];
      [view2 frame];
      v10 = [(UIView *)v7 initWithFrame:0.0, 0.0];
      v11 = self->_underBarSeparatorView;
      self->_underBarSeparatorView = v10;

      v12 = objc_loadWeakRetained(&self->_svc);
      view3 = [v12 view];
      [view3 addSubview:self->_underBarSeparatorView];
    }

    v14 = objc_loadWeakRetained(&self->_svc);
    view4 = [v14 view];
    [view4 sendSubviewToBack:self->_underBarSeparatorView];

    if (dyld_program_sdk_at_least())
    {
      v16 = objc_loadWeakRetained(&self->_svc);
      view5 = [v16 view];
      backgroundColor2 = [view5 backgroundColor];
      [(UIView *)self->_underBarSeparatorView setBackgroundColor:backgroundColor2];
    }

    else
    {
      v34 = 0.0;
      v35 = 0.0;
      v33 = 0.0;
      v20 = objc_loadWeakRetained(&self->_svc);
      view6 = [v20 view];
      backgroundColor3 = [view6 backgroundColor];
      [backgroundColor3 getRed:&v35 green:&v34 blue:&v33 alpha:&v32];

      v16 = [UIColor colorWithRed:v35 + (1.0 - v35) * 0.400000006 green:v34 + (1.0 - v34) * 0.400000006 blue:v33 + (1.0 - v33) * 0.400000006 alpha:1.0];
      [(UIView *)self->_underBarSeparatorView setBackgroundColor:v16];
    }

    v23 = objc_loadWeakRetained(&self->_svc);
    if ([v23 isCollapsed])
    {
    }

    else
    {
      v24 = objc_loadWeakRetained(&self->_svc);
      displayMode = [v24 displayMode];

      if (displayMode == 2)
      {
        v26 = objc_loadWeakRetained(&self->_svc);
        masterViewController = [v26 masterViewController];
        [masterViewController _topBarHeight];

        v28 = objc_loadWeakRetained(&self->_svc);
        detailViewController = [v28 detailViewController];
        [detailViewController _topBarHeight];
      }
    }

    v30 = objc_loadWeakRetained(&self->_svc);
    view7 = [v30 view];
    [view7 bounds];
    [(UIView *)self->_underBarSeparatorView setFrame:0.0, 0.0];
  }

  else if (underBarSeparatorView)
  {
    [(UIView *)underBarSeparatorView removeFromSuperview];
    v19 = self->_underBarSeparatorView;
    self->_underBarSeparatorView = 0;
  }
}

- (BOOL)_hasMasterViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if ([WeakRetained childViewControllersCount])
  {
    v4 = objc_loadWeakRetained(&self->_svc);
    masterViewController = [v4 masterViewController];
    v6 = masterViewController != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)masterViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  childViewControllersCount = [WeakRetained childViewControllersCount];

  if (childViewControllersCount < 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__UISplitViewControllerClassicImpl_masterViewController__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    if (masterViewController_once != -1)
    {
      dispatch_once(&masterViewController_once, block);
    }

    v7 = 0;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_svc);
    mutableChildViewControllers = [v5 mutableChildViewControllers];
    v7 = [mutableChildViewControllers objectAtIndex:0];
  }

  return v7;
}

void __56__UISplitViewControllerClassicImpl_masterViewController__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &kUISVCUsesExtraWidePrimaryColumn_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Splitview controller %@ is expected to have a view controller at index 0 before it's used!", &v4, 0xCu);
  }
}

- (id)detailViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  childViewControllersCount = [WeakRetained childViewControllersCount];

  if (childViewControllersCount < 2)
  {
    v7 = 0;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_svc);
    mutableChildViewControllers = [v5 mutableChildViewControllers];
    v7 = [mutableChildViewControllers objectAtIndex:1];
  }

  return v7;
}

- (id)_topLevelViewControllerForColumn:(int64_t)column
{
  if (column == 2)
  {
    detailViewController = [(UISplitViewControllerClassicImpl *)self detailViewController];
  }

  else if (column)
  {
    detailViewController = 0;
  }

  else
  {
    detailViewController = [(UISplitViewControllerClassicImpl *)self masterViewController];
  }

  return detailViewController;
}

- (BOOL)hidesMasterViewInPortrait
{
  if ([(UISplitViewControllerClassicImpl *)self _isHidesMasterInPortraitInvalid])
  {
    [(UISplitViewControllerClassicImpl *)self _updateDelegateHiddenMasterAspectRatios];
  }

  return (*&self->_splitViewControllerFlags >> 3) & 1;
}

- (BOOL)hidesMasterViewInLandscape
{
  if ([(UISplitViewControllerClassicImpl *)self _isHidesMasterInLandscapeInvalid])
  {
    [(UISplitViewControllerClassicImpl *)self _updateDelegateHiddenMasterAspectRatios];
  }

  return (*&self->_splitViewControllerFlags >> 2) & 1;
}

- (BOOL)_hidesMasterViewInCurrentOrientation
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  LOBYTE(selfCopy) = -[UISplitViewControllerClassicImpl _hidesMasterViewInOrientation:medusaState:](selfCopy, "_hidesMasterViewInOrientation:medusaState:", [WeakRetained interfaceOrientation], -[UISplitViewControllerClassicImpl _medusaState](selfCopy, "_medusaState"));

  return selfCopy;
}

- (BOOL)_hidesMasterViewInOrientation:(int64_t)orientation medusaState:(int64_t)state
{
  if ((state - 1) >= 3)
  {
    if ((orientation - 1) > 1)
    {

      LOBYTE(v5) = [(UISplitViewControllerClassicImpl *)self hidesMasterViewInLandscape];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      hidesMasterViewInPortrait = [WeakRetained hidesMasterViewInPortrait];

      LOBYTE(v5) = hidesMasterViewInPortrait;
    }
  }

  else
  {
    return (3u >> ((state - 1) & 7)) & 1;
  }

  return v5;
}

- (void)setHidesMasterViewInPortrait:(BOOL)portrait
{
  if ((*&self->_splitViewControllerFlags & 0x10) != 0)
  {
    return;
  }

  portraitCopy = portrait;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  hidesMasterViewInPortrait = [WeakRetained hidesMasterViewInPortrait];

  if (hidesMasterViewInPortrait == portraitCopy)
  {
    return;
  }

  v7 = objc_loadWeakRetained(&self->_svc);
  _window = [v7 _window];

  if (_window)
  {
    v8 = ([UIApp _sceneInterfaceOrientationFromWindow:?] - 3) < 2;
  }

  else
  {
    v8 = 0;
  }

  [(UISplitViewControllerClassicImpl *)self _setDelegateHidesMaster:portraitCopy inAspectRatio:1];
  if (!v8 && !portraitCopy)
  {
    v9 = objc_loadWeakRetained(&self->_svc);
    if (v9)
    {
      v10 = (v9[94] & 3) - 1;

      if (v10 <= 1)
      {
        [(UISplitViewControllerClassicImpl *)self _showMasterViewAnimated:0];
      }
    }
  }

  v11 = objc_loadWeakRetained(&self->_svc);
  view = [v11 view];
  [view setNeedsLayout];

  if (!v8 && portraitCopy)
  {
    v13 = objc_loadWeakRetained(&self->_svc);
    if (!v13)
    {
      v15 = 0;
      goto LABEL_16;
    }

    v14 = (v13[94] & 3) - 1;

    if (v14 <= 1)
    {
      v15 = objc_loadWeakRetained(&self->_svc);
      masterViewController = [v15 masterViewController];
      [(UIViewController *)masterViewController __viewDidDisappear:?];

LABEL_16:
    }
  }
}

- (void)_showMasterViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  masterViewController = [WeakRetained masterViewController];
  [masterViewController __viewWillAppear:animatedCopy];

  v7 = objc_loadWeakRetained(&self->_svc);
  masterViewController2 = [v7 masterViewController];
  view = [masterViewController2 view];
  superview = [view superview];
  v11 = objc_loadWeakRetained(&self->_svc);
  view2 = [v11 view];

  if (superview != view2)
  {
    v13 = objc_loadWeakRetained(&self->_svc);
    masterViewController3 = [v13 masterViewController];
    view3 = [masterViewController3 view];
    [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
    [view3 setFrame:?];

    v20 = objc_loadWeakRetained(&self->_svc);
    view4 = [v20 view];
    v17 = objc_loadWeakRetained(&self->_svc);
    masterViewController4 = [v17 masterViewController];
    view5 = [masterViewController4 view];
    [view4 insertSubview:view5 atIndex:0];
  }
}

- (void)setMinimumPrimaryColumnWidth:(double)width
{
  if (self->_minimumPrimaryColumnWidth != width)
  {
    self->_minimumPrimaryColumnWidth = width;
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    view = [WeakRetained view];
    [view setNeedsLayout];

    if (+[UIView _isInAnimationBlock])
    {
      v7 = objc_loadWeakRetained(&self->_svc);
      view2 = [v7 view];
      [view2 layoutBelowIfNeeded];
    }
  }
}

- (void)setMaximumPrimaryColumnWidth:(double)width
{
  if (self->_maximumPrimaryColumnWidth != width)
  {
    self->_maximumPrimaryColumnWidth = width;
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    view = [WeakRetained view];
    [view setNeedsLayout];

    if (+[UIView _isInAnimationBlock])
    {
      v7 = objc_loadWeakRetained(&self->_svc);
      view2 = [v7 view];
      [view2 layoutBelowIfNeeded];
    }
  }
}

- (void)setPreferredPrimaryColumnWidthFraction:(double)fraction
{
  if (self->_preferredPrimaryColumnWidthFraction != fraction)
  {
    self->_preferredPrimaryColumnWidthFraction = fraction;
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    view = [WeakRetained view];
    [view setNeedsLayout];

    if (+[UIView _isInAnimationBlock])
    {
      v7 = objc_loadWeakRetained(&self->_svc);
      view2 = [v7 view];
      [view2 layoutBelowIfNeeded];
    }
  }
}

- (double)effectiveMinimumPrimaryColumnWidth
{
  [(UISplitViewControllerClassicImpl *)self minimumPrimaryColumnWidth];
  if (result == -3.40282347e38)
  {
    return 0.0;
  }

  return result;
}

+ (double)_defaultGutterWidthInView:(id)view
{
  viewCopy = view;
  v4 = 1.0;
  if (dyld_program_sdk_at_least())
  {
    _screen = [viewCopy _screen];

    if (_screen)
    {
      _screen2 = [viewCopy _screen];
      [_screen2 scale];
      v8 = 1.0 / v7;

      _window = [viewCopy _window];
      [_window convertRect:0 fromWindow:{0.0, 0.0, v8, v8}];
      [viewCopy convertRect:0 fromView:?];
      v4 = v10;
    }

    else
    {
      _window = [objc_opt_self() mainScreen];
      [_window scale];
      v4 = 1.0 / v11;
    }
  }

  return v4;
}

- (float)gutterWidth
{
  gutterWidth = self->_gutterWidth;
  if (gutterWidth == -3.4028e38)
  {
    v4 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    _existingView = [WeakRetained _existingView];
    [v4 _defaultGutterWidthInView:_existingView];
    gutterWidth = v7;
  }

  return gutterWidth;
}

- (void)setGutterWidth:(float)width
{
  self->_gutterWidth = width;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _existingView = [WeakRetained _existingView];
  [_existingView setNeedsLayout];
}

- (void)setPresentsWithGesture:(BOOL)gesture
{
  if (self->_presentsWithGesture != gesture)
  {
    self->_presentsWithGesture = gesture;
    [(UISplitViewControllerClassicImpl *)self _addOrRemovePopoverPresentationGestureRecognizer];
  }
}

- (BOOL)_effectivePresentsWithGesture
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if ([WeakRetained presentsWithGesture] && ((*&self->_splitViewControllerFlags >> 20) & 3uLL) - 1 >= 2)
  {
    v5 = objc_loadWeakRetained(&self->_svc);
    if (([v5 hidesMasterViewInPortrait] & 1) != 0 || -[UISplitViewControllerClassicImpl hidesMasterViewInLandscape](self, "hidesMasterViewInLandscape")) && ((*(&self->_splitViewControllerFlags + 1) & 4) != 0 || (dyld_program_sdk_at_least()))
    {
      v4 = 1;
    }

    else
    {
      v6 = objc_loadWeakRetained(&self->_svc);
      v4 = [v6 preferredDisplayMode] != 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPrimaryEdge:(int64_t)edge
{
  if (self->_primaryEdge != edge)
  {
    self->_primaryEdge = edge;
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    view = [WeakRetained view];
    [view setNeedsLayout];

    v7 = objc_loadWeakRetained(&self->_svc);
    masterViewController = [v7 masterViewController];
    view2 = [masterViewController view];
    [view2 setNeedsLayout];

    v12 = objc_loadWeakRetained(&self->_svc);
    detailViewController = [v12 detailViewController];
    view3 = [detailViewController view];
    [view3 setNeedsLayout];
  }
}

- (BOOL)_layoutPrimaryOnRight
{
  primaryEdge = self->_primaryEdge;
  if (!primaryEdge)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    view = [WeakRetained view];
    if ([view _shouldReverseLayoutDirection])
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      if (self->_primaryEdge == 1)
      {
        goto LABEL_8;
      }

      LOBYTE(v6) = 0;
    }

LABEL_11:

    return v6;
  }

  if (primaryEdge != 1)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

LABEL_8:
  v7 = objc_loadWeakRetained(&self->_svc);
  view2 = [v7 view];
  v6 = [view2 _shouldReverseLayoutDirection] ^ 1;

  if (!primaryEdge)
  {
    goto LABEL_11;
  }

  return v6;
}

- (void)setPreferredDisplayMode:(int64_t)mode
{
  if (self->_preferredDisplayMode | mode)
  {
    self->_preferredDisplayMode = mode;
    [UISplitViewControllerClassicImpl _changeToDisplayMode:"_changeToDisplayMode:forCurrentOrientationOnly:" forCurrentOrientationOnly:?];
  }
}

- (int64_t)displayMode
{
  if (![(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    return 1;
  }

  if ([(UISplitViewControllerClassicImpl *)self _isMasterPopoverVisible]&& ![(UIPopoverController *)self->_hiddenPopoverController _isDismissing])
  {
    return 3;
  }

  return 2;
}

- (id)_defaultDisplayModes
{
  _currentInterfaceIdiom = [(UISplitViewControllerClassicImpl *)self _currentInterfaceIdiom];
  if (_currentInterfaceIdiom)
  {
    if (_currentInterfaceIdiom == 1)
    {
      _hidesMasterViewInCurrentOrientation = [(UISplitViewControllerClassicImpl *)self _hidesMasterViewInCurrentOrientation];
      v5 = &unk_1EFE2BB78;
      v6 = &unk_1EFE2BB60;
      goto LABEL_6;
    }

    return &unk_1EFE2BBC0;
  }

  if (![(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment])
  {
    return &unk_1EFE2BBC0;
  }

  _hidesMasterViewInCurrentOrientation = [(UISplitViewControllerClassicImpl *)self _hidesMasterViewInCurrentOrientation];
  v5 = &unk_1EFE2BBA8;
  v6 = &unk_1EFE2BB90;
LABEL_6:
  if (_hidesMasterViewInCurrentOrientation)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_defaultTargetDisplayMode
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  traitCollection = [WeakRetained traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    return 0;
  }

  _currentInterfaceIdiom = [(UISplitViewControllerClassicImpl *)self _currentInterfaceIdiom];
  v8 = objc_loadWeakRetained(&self->_svc);
  displayMode = [v8 displayMode];

  v10 = objc_loadWeakRetained(&self->_svc);
  preferredDisplayMode = [v10 preferredDisplayMode];

  if (!preferredDisplayMode)
  {
    if (_currentInterfaceIdiom == 1)
    {
      if (![(UISplitViewControllerClassicImpl *)self _hidesMasterViewInCurrentOrientation])
      {
        if ((dyld_program_sdk_at_least() & (displayMode == 1)) != 0)
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }
    }

    else if (_currentInterfaceIdiom || ![(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment])
    {
      if (displayMode == 1)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    if (displayMode == 1)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  if (displayMode != 1)
  {
    return 1;
  }

  v12 = objc_loadWeakRetained(&self->_svc);
  preferredDisplayMode2 = [v12 preferredDisplayMode];

  if (preferredDisplayMode2 == 1)
  {
    if (_currentInterfaceIdiom == 1 || !_currentInterfaceIdiom && [(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment])
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_svc);
    preferredDisplayMode3 = [v14 preferredDisplayMode];

    return preferredDisplayMode3;
  }
}

- (void)_changeToDisplayMode:(int64_t)mode forCurrentOrientationOnly:(BOOL)only
{
  onlyCopy = only;
  _isMasterViewShown = [(UISplitViewControllerClassicImpl *)self _isMasterViewShown];
  v8 = 1;
  if (mode > 1)
  {
    if (mode == 3)
    {
      goto LABEL_12;
    }

    if (mode == 2)
    {
      v8 = 2;
      goto LABEL_12;
    }
  }

  else if (mode)
  {
    if (mode == 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    _defaultDisplayModes = [(UISplitViewControllerClassicImpl *)self _defaultDisplayModes];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    mode = [WeakRetained displayMode];

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    v12 = [_defaultDisplayModes containsObject:v11];

    if ((v12 & 1) == 0)
    {
      firstObject = [_defaultDisplayModes firstObject];
      mode = [firstObject integerValue];
    }
  }

  v8 = 0;
LABEL_12:
  [(UISplitViewControllerClassicImpl *)self _displayModeWillChangeTo:mode];
  if (onlyCopy)
  {
    [(UISplitViewControllerClassicImpl *)self _setPrimaryHidingStateForCurrentOrientation:v8];
  }

  else
  {
    [(UISplitViewControllerClassicImpl *)self _setPrimaryHidingStateForCurrentOrientation:0];
    [(UISplitViewControllerClassicImpl *)self _setPrimaryHidingState:v8];
  }

  _isMasterPopoverVisible = [(UISplitViewControllerClassicImpl *)self _isMasterPopoverVisible];
  if (mode == 3)
  {
    if (!_isMasterPopoverVisible)
    {
      if (_isMasterViewShown)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __83__UISplitViewControllerClassicImpl__changeToDisplayMode_forCurrentOrientationOnly___block_invoke;
        v29[3] = &unk_1E70F3590;
        v29[4] = self;
        [UIView performWithoutAnimation:v29];
      }

      else
      {
        [(UISplitViewControllerClassicImpl *)self _presentMasterViewController:+[UIView _isInAnimationBlock]];
      }
    }
  }

  else
  {
    if (_isMasterPopoverVisible)
    {
      v15 = +[UIView _isInAnimationBlock];
      v16 = mode == 1 && v15;
      [(UISplitViewControllerClassicImpl *)self _dismissMasterViewController:v16];
    }

    if (mode == 2)
    {
      v17 = objc_loadWeakRetained(&self->_svc);
      masterViewController = [v17 masterViewController];
      view = [masterViewController view];
      superview = [view superview];
      v21 = objc_loadWeakRetained(&self->_svc);
      view2 = [v21 view];
      if (superview == view2 || (v23 = objc_loadWeakRetained(&self->_svc)) == 0)
      {
      }

      else
      {
        v24 = (v23[94] & 3) - 1;

        if (v24 <= 1)
        {
          [(UISplitViewControllerClassicImpl *)self _showMasterViewAnimated:+[UIView _isInAnimationBlock]];
        }
      }
    }
  }

  v25 = objc_loadWeakRetained(&self->_svc);
  view3 = [v25 view];
  [view3 setNeedsLayout];

  if (+[UIView _isInAnimationBlock])
  {
    v27 = objc_loadWeakRetained(&self->_svc);
    view4 = [v27 view];
    [view4 layoutBelowIfNeeded];
  }

  [(UISplitViewControllerClassicImpl *)self _displayModeDidChange];
}

- (void)_displayModeWillChangeTo:(int64_t)to
{
  pendingDisplayModeChangeCount = self->_pendingDisplayModeChangeCount;
  if (!pendingDisplayModeChangeCount)
  {
    if (self->_lastNotifiedDisplayMode == to)
    {
      pendingDisplayModeChangeCount = 0;
    }

    else
    {
      if ((*(&self->_splitViewControllerFlags + 3) & 4) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v7 = objc_loadWeakRetained(&self->_svc);
        [WeakRetained splitViewController:v7 willChangeToDisplayMode:to];
      }

      self->_lastNotifiedDisplayMode = to;
      pendingDisplayModeChangeCount = self->_pendingDisplayModeChangeCount;
    }
  }

  self->_pendingDisplayModeChangeCount = pendingDisplayModeChangeCount + 1;
}

- (void)_displayModeDidChange
{
  [(UISplitViewControllerClassicImpl *)self _updateTargetDisplayMode];
  pendingDisplayModeChangeCount = self->_pendingDisplayModeChangeCount;
  v4 = pendingDisplayModeChangeCount < 1;
  v5 = pendingDisplayModeChangeCount - 1;
  if (!v4)
  {
    self->_pendingDisplayModeChangeCount = v5;
  }
}

- (void)_updateTargetDisplayMode
{
  [(UISplitViewControllerClassicImpl *)self _cacheEffectiveTargetDisplayMode];
  [(UISplitViewControllerClassicImpl *)self _updateDisplayModeButtonItem];

  [(UISplitViewControllerClassicImpl *)self _addOrRemovePopoverPresentationGestureRecognizer];
}

- (void)_popoverController:(id)controller willChangeToVisible:(BOOL)visible
{
  if ((*(&self->_splitViewControllerFlags + 4) & 4) == 0)
  {
    if (visible)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    [(UISplitViewControllerClassicImpl *)self _displayModeWillChangeTo:v5];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained setNeedsStatusBarAppearanceUpdate];
}

- (void)_popoverController:(id)controller didChangeFromVisible:(BOOL)visible
{
  if ((*(&self->_splitViewControllerFlags + 4) & 4) == 0)
  {
    [(UISplitViewControllerClassicImpl *)self _displayModeDidChange:controller];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained setNeedsStatusBarAppearanceUpdate];
}

- (void)_cacheEffectiveTargetDisplayMode
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  traitCollection = [WeakRetained traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    _defaultTargetDisplayMode = 0;
  }

  else if ((*(&self->_splitViewControllerFlags + 3) & 8) == 0 || (v7 = objc_loadWeakRetained(&self->_delegate), v8 = objc_loadWeakRetained(&self->_svc), _defaultTargetDisplayMode = [v7 targetDisplayModeForActionInSplitViewController:v8], v8, v7, !_defaultTargetDisplayMode))
  {
    _defaultTargetDisplayMode = [(UISplitViewControllerClassicImpl *)self _defaultTargetDisplayMode];
  }

  self->_effectiveTargetDisplayMode = _defaultTargetDisplayMode;
}

- (void)_triggerDisplayModeAction:(id)action
{
  _effectiveTargetDisplayMode = [(UISplitViewControllerClassicImpl *)self _effectiveTargetDisplayMode];
  if (_effectiveTargetDisplayMode)
  {
    v5 = _effectiveTargetDisplayMode;
    [(UISplitViewControllerClassicImpl *)self _masterPresentationAnimationDuration];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__UISplitViewControllerClassicImpl__triggerDisplayModeAction___block_invoke;
    v6[3] = &unk_1E70F32F0;
    v6[4] = self;
    v6[5] = v5;
    [UIView animateWithDuration:v6 animations:?];
  }
}

- (void)_updateDisplayModeButtonItem
{
  if (!self->_displayModeButtonItem)
  {
    return;
  }

  _effectiveTargetDisplayMode = [(UISplitViewControllerClassicImpl *)self _effectiveTargetDisplayMode];
  if ((_effectiveTargetDisplayMode - 2) < 2)
  {
    goto LABEL_7;
  }

  if (_effectiveTargetDisplayMode == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    displayMode = [WeakRetained displayMode];

    if (displayMode != 3)
    {
      v15 = _UIImageWithName(@"UISplitViewControllerFullScreen.png");
      imageFlippedForRightToLeftLayoutDirection = [v15 imageFlippedForRightToLeftLayoutDirection];

      v4 = 0;
      v5 = 0;
      v6 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v10 = objc_loadWeakRetained(&self->_svc);
    _displayModeButtonItemTitle = [v10 _displayModeButtonItemTitle];

    v6 = _displayModeButtonItemTitle;
    if (!_displayModeButtonItemTitle)
    {
      if (![(UISplitViewControllerClassicImpl *)self _hasMasterViewController])
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_11;
      }

      v11 = objc_loadWeakRetained(&self->_svc);
      masterViewController = [v11 masterViewController];
      title = [masterViewController title];

      v6 = title;
    }

    v5 = 0;
LABEL_11:
    imageFlippedForRightToLeftLayoutDirection = 0;
    v4 = 1;
    goto LABEL_12;
  }

  v4 = 0;
  v5 = _effectiveTargetDisplayMode == 0;
  v6 = 0;
  imageFlippedForRightToLeftLayoutDirection = 0;
LABEL_12:
  v18 = v6;
  if ([(__CFString *)v6 length])
  {
    v13 = 0;
  }

  else
  {
    v13 = imageFlippedForRightToLeftLayoutDirection == 0;
  }

  if (v13)
  {

    v18 = @" ";
  }

  [(UIBarButtonItem *)self->_displayModeButtonItem setImage:imageFlippedForRightToLeftLayoutDirection];
  [(UIBarButtonItem *)self->_displayModeButtonItem setTitle:v18];
  [(UIBarButtonItem *)self->_displayModeButtonItem _setShowsBackButtonIndicator:v4];
  if (v4)
  {
    v14 = +[UIDragInteraction isEnabledByDefault];
  }

  else
  {
    v14 = 0;
  }

  [(UIBarButtonItem *)self->_displayModeButtonItem setSpringLoaded:v14];
  [(UIBarButtonItem *)self->_displayModeButtonItem setHidden:v5];
}

- (id)displayModeButtonItem
{
  displayModeButtonItem = self->_displayModeButtonItem;
  if (!displayModeButtonItem)
  {
    v4 = [(UIBarButtonItem *)[UISplitViewControllerDisplayModeBarButtonItem alloc] initWithImage:0 landscapeImagePhone:0 style:0 target:self action:sel__triggerDisplayModeAction_];
    v5 = self->_displayModeButtonItem;
    self->_displayModeButtonItem = v4;

    [(UISplitViewControllerDisplayModeBarButtonItem *)self->_displayModeButtonItem _setImpl:self];
    [(UISplitViewControllerClassicImpl *)self _updateDisplayModeButtonItem];
    displayModeButtonItem = self->_displayModeButtonItem;
  }

  return displayModeButtonItem;
}

- (void)_displayModeBarButtonItemWasUsedForFirstTime:(id)time
{
  if ([(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    isViewLoaded = [WeakRetained isViewLoaded];

    if (isViewLoaded)
    {
      v6 = objc_loadWeakRetained(&self->_svc);
      view = [v6 view];
      [view setNeedsLayout];

      [(UISplitViewControllerClassicImpl *)self _cacheEffectiveTargetDisplayMode];
    }
  }
}

- (void)_setDisplayModeButtonItemTitle:(id)title
{
  titleCopy = title;
  displayModeButtonItemTitle = self->_displayModeButtonItemTitle;
  if (displayModeButtonItemTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)displayModeButtonItemTitle isEqualToString:titleCopy];
    titleCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_displayModeButtonItemTitle;
      self->_displayModeButtonItemTitle = v7;

      [(UISplitViewControllerClassicImpl *)self _updateDisplayModeButtonItem];
      titleCopy = v9;
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  _isMasterViewShown = [(UISplitViewControllerClassicImpl *)self _isMasterViewShown];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v7 = WeakRetained;
  if (_isMasterViewShown)
  {
    masterViewController = [WeakRetained masterViewController];
    [masterViewController __viewWillAppear:appearCopy];
  }

  else
  {
    displayMode = [WeakRetained displayMode];

    if (displayMode != 2)
    {
      v10 = objc_loadWeakRetained(&self->_svc);
      masterViewController2 = [v10 masterViewController];
      [(UISplitViewControllerClassicImpl *)self _viewControllerHiding:masterViewController2];

      self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFF1FLL | 0x80);
    }
  }

  [(UISplitViewControllerClassicImpl *)self _addOrRemovePopoverPresentationGestureRecognizer];
  v13 = objc_loadWeakRetained(&self->_svc);
  detailViewController = [v13 detailViewController];
  [detailViewController __viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    masterViewController = [WeakRetained masterViewController];
    [masterViewController __viewDidAppear:appearCopy];
  }

  v7 = objc_loadWeakRetained(&self->_svc);
  detailViewController = [v7 detailViewController];
  [detailViewController __viewDidAppear:appearCopy];

  v9 = objc_loadWeakRetained(&self->_svc);
  self->_lastPresentedOrientation = [v9 interfaceOrientation];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    masterViewController = [WeakRetained masterViewController];
    [(UIViewController *)masterViewController __viewWillDisappear:disappearCopy];
  }

  v8 = objc_loadWeakRetained(&self->_svc);
  detailViewController = [v8 detailViewController];
  [(UIViewController *)detailViewController __viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    masterViewController = [WeakRetained masterViewController];
    [(UIViewController *)masterViewController __viewDidDisappear:disappearCopy];
  }

  v8 = objc_loadWeakRetained(&self->_svc);
  detailViewController = [v8 detailViewController];
  [(UIViewController *)detailViewController __viewDidDisappear:disappearCopy];
}

- (void)_layoutContainerViewDidMoveToWindow:(id)window
{
  if (window)
  {
    [(UISplitViewControllerClassicImpl *)self _updateTargetDisplayMode];
    if ([(UISplitViewControllerClassicImpl *)self _isBasicallyHorizontallyCompact])
    {
      if ((*&self->_splitViewControllerFlags & 0x300000) == 0x100000)
      {
        [(UISplitViewControllerClassicImpl *)self _prepareForCompactLayout];
      }
    }

    else if (self->_traitCollectionWhenRemovedFromWindow)
    {
      v6 = (*&self->_splitViewControllerFlags >> 20) & 3;
      if (v6 && v6 != 3)
      {
        if (dyld_program_sdk_at_least())
        {
          v10 = objc_alloc_init(_UIViewControllerNullAnimationTransitionCoordinator);
          [(UISplitViewControllerClassicImpl *)self _animateTransitionFromTraitCollection:self->_traitCollectionWhenRemovedFromWindow withTransitionCoordinator:v10];
          [(_UIViewControllerNullAnimationTransitionCoordinator *)v10 _runAlongsideAnimations];
          [(_UIViewControllerNullAnimationTransitionCoordinator *)v10 _runAlongsideCompletionsAfterCommit];
        }
      }
    }

    if ((*(&self->_splitViewControllerFlags + 3) & 0x20) != 0)
    {
      [(UISplitViewControllerClassicImpl *)self _presentMasterViewController:0];
    }

    traitCollectionWhenRemovedFromWindow = self->_traitCollectionWhenRemovedFromWindow;
    self->_traitCollectionWhenRemovedFromWindow = 0;
  }

  else
  {
    _clearPreventRotationHook = [(UISplitViewControllerClassicImpl *)self _clearPreventRotationHook];

    if (_clearPreventRotationHook)
    {
      _clearPreventRotationHook2 = [(UISplitViewControllerClassicImpl *)self _clearPreventRotationHook];
      _clearPreventRotationHook2[2]();

      [(UISplitViewControllerClassicImpl *)self _setClearPreventRotationHook:0];
    }
  }
}

- (BOOL)_shouldPreventAutorotation
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 || ![(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  masterViewController = [WeakRetained masterViewController];
  childModalViewController = [masterViewController childModalViewController];
  presentationController = [childModalViewController presentationController];
  v9 = presentationController != 0;

  return v9;
}

- (void)_layoutContainerViewWillMoveToWindow:(id)window
{
  windowCopy = window;
  if ([(UISplitViewControllerClassicImpl *)self _isBasicallyHorizontallyCompact]&& ((*&self->_splitViewControllerFlags >> 20) & 3uLL) - 1 >= 2)
  {
    [(UISplitViewControllerClassicImpl *)self _setCollapsedState:1];
  }

  if (!windowCopy)
  {
    if ([(UISplitViewControllerClassicImpl *)self _isMasterPopoverVisible])
    {
      *&self->_splitViewControllerFlags |= 0x20000000uLL;
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    traitCollection = [WeakRetained traitCollection];
    traitCollectionWhenRemovedFromWindow = self->_traitCollectionWhenRemovedFromWindow;
    self->_traitCollectionWhenRemovedFromWindow = traitCollection;

    v17 = objc_loadWeakRetained(&self->_svc);
    _window = [v17 _window];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__UISplitViewControllerClassicImpl__layoutContainerViewWillMoveToWindow___block_invoke;
    v20[3] = &unk_1E70F3590;
    v5 = _window;
    v21 = v5;
    [(UISplitViewControllerClassicImpl *)self _setClearPreventRotationHook:v20];
    if (dyld_program_sdk_at_least() && [(UISplitViewControllerClassicImpl *)self _isMasterPopoverVisible])
    {
      [(UISplitViewControllerClassicImpl *)self _dismissMasterViewController:0];
    }

    goto LABEL_17;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__UISplitViewControllerClassicImpl__layoutContainerViewWillMoveToWindow___block_invoke_2;
  v19[3] = &unk_1E70F3CB0;
  v19[4] = self;
  [windowCopy _setShouldPreventRotationHook:v19];
  v5 = objc_loadWeakRetained(&self->_svc);
  if ([v5 displayMode] != 2)
  {
LABEL_17:

    goto LABEL_18;
  }

  v6 = objc_loadWeakRetained(&self->_svc);
  masterViewController = [v6 masterViewController];
  view = [masterViewController view];
  superview = [view superview];
  v10 = objc_loadWeakRetained(&self->_svc);
  view2 = [v10 view];
  if (superview == view2 || (v12 = objc_loadWeakRetained(&self->_svc)) == 0)
  {

    goto LABEL_17;
  }

  v13 = (v12[94] & 3) - 1;

  if (v13 <= 1)
  {
    [(UISplitViewControllerClassicImpl *)self _showMasterViewAnimated:0];
  }

LABEL_18:
}

- (void)_willBeginSnapshotSession
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _isCollapsed = [WeakRetained _isCollapsed];
  v4 = 1;
  if (_isCollapsed)
  {
    v4 = 2;
  }

  self->_suspendedState = v4;
}

- (void)_presentMasterViewController:(BOOL)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _existingView = [WeakRetained _existingView];
  window = [_existingView window];

  if (window)
  {
    if ([(UISplitViewControllerClassicImpl *)self _canDisplayHostedMaster])
    {
      *&self->_splitViewControllerFlags &= ~0x20000000uLL;
      v8 = objc_loadWeakRetained(&self->_svc);
      masterViewController = [v8 masterViewController];
      [(UISplitViewControllerClassicImpl *)self _setupHiddenPopoverControllerWithViewController:masterViewController];

      if (![(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible])
      {
        hiddenPopoverController = self->_hiddenPopoverController;
        _targetEdgeForPopover = [(UISplitViewControllerClassicImpl *)self _targetEdgeForPopover];
        v13 = objc_loadWeakRetained(&self->_svc);
        view = [v13 view];
        [(UIPopoverController *)hiddenPopoverController _presentPopoverFromEdge:_targetEdgeForPopover ofView:view animated:controllerCopy];
      }
    }
  }

  else
  {
    *&self->_splitViewControllerFlags |= 0x20000000uLL;
  }
}

- (unint64_t)_targetEdgeForPopover
{
  if ([(UISplitViewControllerClassicImpl *)self _layoutPrimaryOnRight])
  {
    return 8;
  }

  else
  {
    return 2;
  }
}

- (void)_dismissMasterViewController:(BOOL)controller
{
  controllerCopy = controller;
  *&self->_splitViewControllerFlags &= ~0x20000000uLL;
  if ([(UISplitViewControllerClassicImpl *)self _canDisplayHostedMaster]&& [(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible])
  {
    [(UISplitViewControllerClassicImpl *)self _displayModeWillChangeTo:1];
    [(UIPopoverController *)self->_hiddenPopoverController dismissPopoverAnimated:controllerCopy];

    [(UISplitViewControllerClassicImpl *)self _displayModeDidChange];
  }
}

- (void)toggleMasterVisible:(id)visible
{
  if ([(UISplitViewControllerClassicImpl *)self _canDisplayHostedMaster])
  {
    if ([(UISplitViewControllerClassicImpl *)self _isMasterPopoverVisible])
    {

      [(UISplitViewControllerClassicImpl *)self _dismissMasterViewController:1];
    }

    else
    {

      [(UISplitViewControllerClassicImpl *)self _presentMasterViewController:1];
    }
  }
}

- (void)_descendantWillPresentViewController:(id)controller modalSourceViewController:(id)viewController presentationController:(id)presentationController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  presentationControllerCopy = presentationController;
  if ([(UISplitViewControllerClassicImpl *)self _canDisplayHostedMaster]&& [(UISplitViewControllerClassicImpl *)self _isMasterPopoverVisible])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    masterViewController = [WeakRetained masterViewController];

    v14 = viewControllerCopy;
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = v14;
    v24 = animatedCopy;
    v16 = 0;
    do
    {
      v17 = objc_loadWeakRetained(&self->_svc);

      if (v15 == v17 || v16)
      {
        break;
      }

      v16 = v15 == masterViewController;
      parentViewController = [v15 parentViewController];
      v19 = parentViewController;
      if (parentViewController)
      {
        parentModalViewController = parentViewController;
      }

      else
      {
        parentModalViewController = [v15 parentModalViewController];
      }

      v21 = parentModalViewController;

      v15 = v21;
    }

    while (v21);
    animatedCopy = v24;

    if (!v16)
    {
LABEL_12:
      [(UISplitViewControllerClassicImpl *)self _dismissMasterViewController:animatedCopy];
    }
  }

  v22 = objc_loadWeakRetained(&self->_svc);
  splitViewController = [v22 splitViewController];
  [splitViewController _descendantWillPresentViewController:controllerCopy modalSourceViewController:viewControllerCopy presentationController:presentationControllerCopy animated:animatedCopy];
}

- (CGSize)_contentSizeForChildViewController:(id)controller inPopoverController:(id)popoverController
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained primaryColumnWidth];
  v7 = v6;
  v8 = objc_loadWeakRetained(&self->_svc);
  view = [v8 view];
  [view bounds];
  Height = CGRectGetHeight(v14);

  v11 = v7;
  v12 = Height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)popoverWillAppear:(id)appear
{
  appearCopy = appear;
  v5 = appearCopy;
  if (self->_hiddenPopoverController)
  {
    object = [appearCopy object];
    hiddenPopoverController = self->_hiddenPopoverController;

    if (object == hiddenPopoverController)
    {
      if ((*(&self->_splitViewControllerFlags + 1) & 8) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_loadWeakRetained(&self->_svc);
        v10 = self->_hiddenPopoverController;
        v11 = v9;
        masterViewController = [v11 masterViewController];
        [WeakRetained splitViewController:v11 popoverController:v10 willPresentViewController:masterViewController];
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54__UISplitViewControllerClassicImpl_popoverWillAppear___block_invoke;
      v13[3] = &unk_1E70F3590;
      v13[4] = self;
      [UIView performWithoutAnimation:v13];
    }
  }
}

void __54__UISplitViewControllerClassicImpl_popoverWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
  v3 = [WeakRetained masterViewController];
  v4 = [v3 view];
  [v4 setNeedsLayout];

  v7 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v5 = [v7 masterViewController];
  v6 = [v5 view];
  [v6 layoutIfNeeded];
}

- (BOOL)_shouldUseRelativeInsets
{
  if (+[UIDevice _hasHomeButton]|| ![(UISplitViewControllerClassicImpl *)self _isBasicallyHorizontallyCompact])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if ([WeakRetained isViewLoaded])
  {
    v4 = objc_loadWeakRetained(&self->_svc);
    view = [v4 view];
    window = [view window];
    _isHostedInAnotherProcess = [window _isHostedInAnotherProcess];
  }

  else
  {
    _isHostedInAnotherProcess = 0;
  }

  return _isHostedInAnotherProcess;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  controllerCopy = controller;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (![(UISplitViewControllerClassicImpl *)self _shouldUseRelativeInsets])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [WeakRetained _contentOverlayInsets];
    v9 = v11;
    v7 = v12;

    [(UISplitViewControllerClassicImpl *)self _contentMarginForChildViewController:controllerCopy];
    v8 = v13;
    *absolute = 1;
  }

  v14 = v9;
  v15 = v8;
  v16 = v7;
  v17 = v8;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)_marginInfoForChild:(id)child leftMargin:(double *)margin rightMargin:(double *)rightMargin
{
  childCopy = child;
  if ([(UISplitViewControllerClassicImpl *)self _shouldUseRelativeInsets])
  {
    [(UISplitViewControllerClassicImpl *)self _contentMarginForChildViewController:childCopy];
  }

  else
  {
    v8 = 0xFFEFFFFFFFFFFFFFLL;
  }

  *margin = v8;
  *rightMargin = v8;
}

- (void)_updateChildContentMargins
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  viewControllers = [WeakRetained viewControllers];

  v5 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(viewControllers);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(UISplitViewControllerClassicImpl *)self _contentMarginForChildViewController:v9];
        [v9 _setContentMargin:?];
      }

      v6 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (double)_contentMarginForChildViewController:(id)controller
{
  view = [controller view];
  [UIViewController _horizontalContentMarginForView:view];
  v5 = v4;

  return v5;
}

- (unint64_t)_lastFocusedChildViewControllerIndex
{
  if (self->_lastFocusedChildViewControllerIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  viewControllers = [WeakRetained viewControllers];
  v5 = [viewControllers count];

  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  lastFocusedChildViewControllerIndex = self->_lastFocusedChildViewControllerIndex;
  v7 = objc_loadWeakRetained(&self->_svc);
  viewControllers2 = [v7 viewControllers];
  v9 = [viewControllers2 count] - 1;

  if (lastFocusedChildViewControllerIndex >= v9)
  {
    return v9;
  }

  else
  {
    return lastFocusedChildViewControllerIndex;
  }
}

- (id)_orderedPreferredFocusedViewControllers
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  viewControllers = [WeakRetained viewControllers];

  if (dyld_program_sdk_at_least() && [viewControllers count] >= 2)
  {
    v4 = [viewControllers subarrayWithRange:{1, objc_msgSend(viewControllers, "count") - 1}];
    firstObject = [viewControllers firstObject];
    v6 = [v4 arrayByAddingObject:firstObject];
  }

  else
  {
    v6 = viewControllers;
  }

  return v6;
}

- (id)preferredFocusedView
{
  v23 = *MEMORY[0x1E69E9840];
  _lastFocusedChildViewControllerIndex = [(UISplitViewControllerClassicImpl *)self _lastFocusedChildViewControllerIndex];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  viewControllers = [WeakRetained viewControllers];
  v6 = [viewControllers count];

  if (_lastFocusedChildViewControllerIndex >= v6)
  {
    preferredFocusedView = 0;
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_svc);
    viewControllers2 = [v7 viewControllers];
    v9 = [viewControllers2 objectAtIndex:{-[UISplitViewControllerClassicImpl _lastFocusedChildViewControllerIndex](self, "_lastFocusedChildViewControllerIndex")}];
    preferredFocusedView = [v9 preferredFocusedView];

    if (preferredFocusedView && ([(UIView *)preferredFocusedView _containsPreferredFocusableView]& 1) != 0)
    {
      goto LABEL_18;
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  _orderedPreferredFocusedViewControllers = [(UISplitViewControllerClassicImpl *)self _orderedPreferredFocusedViewControllers];
  v12 = [_orderedPreferredFocusedViewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
LABEL_8:
    v15 = 0;
    v16 = preferredFocusedView;
    while (1)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(_orderedPreferredFocusedViewControllers);
      }

      preferredFocusedView = [*(*(&v18 + 1) + 8 * v15) preferredFocusedView];

      if (preferredFocusedView)
      {
        if (([(UIView *)preferredFocusedView _containsPreferredFocusableView]& 1) != 0)
        {
          break;
        }
      }

      ++v15;
      v16 = preferredFocusedView;
      if (v13 == v15)
      {
        v13 = [_orderedPreferredFocusedViewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:

    if (preferredFocusedView)
    {
      goto LABEL_18;
    }

    _orderedPreferredFocusedViewControllers = objc_loadWeakRetained(&self->_svc);
    preferredFocusedView = [_orderedPreferredFocusedViewControllers _super_preferredFocusedView];
  }

LABEL_18:

  return preferredFocusedView;
}

- (id)preferredFocusEnvironments
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _lastFocusedChildViewControllerIndex = [(UISplitViewControllerClassicImpl *)self _lastFocusedChildViewControllerIndex];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  viewControllers = [WeakRetained viewControllers];
  v7 = [viewControllers count];

  if (_lastFocusedChildViewControllerIndex < v7)
  {
    v8 = objc_loadWeakRetained(&self->_svc);
    viewControllers2 = [v8 viewControllers];
    v10 = [viewControllers2 objectAtIndex:{-[UISplitViewControllerClassicImpl _lastFocusedChildViewControllerIndex](self, "_lastFocusedChildViewControllerIndex")}];

    if (v10)
    {
      [v3 addObject:v10];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  _orderedPreferredFocusedViewControllers = [(UISplitViewControllerClassicImpl *)self _orderedPreferredFocusedViewControllers];
  v12 = [_orderedPreferredFocusedViewControllers countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(_orderedPreferredFocusedViewControllers);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if (([v3 containsObject:v16] & 1) == 0)
        {
          [v3 addObject:v16];
        }
      }

      v13 = [_orderedPreferredFocusedViewControllers countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = objc_loadWeakRetained(&self->_svc);
  _super_preferredFocusEnvironments = [v17 _super_preferredFocusEnvironments];
  [v3 addObjectsFromArray:_super_preferredFocusEnvironments];

  v19 = objc_loadWeakRetained(&self->_svc);
  v20 = _UIFocusEnvironmentCombinedPreferredFocusEnvironments(v19, v3, [v19 _subclassPreferredFocusedViewPrioritizationType]);

  return v20;
}

- (id)_overridingPreferredFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _super_overridingPreferredFocusEnvironment = [WeakRetained _super_overridingPreferredFocusEnvironment];

  return _super_overridingPreferredFocusEnvironment;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  if ([(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v6 = [WeakRetained _super_shouldUpdateFocusInContext:contextCopy];
  }

  else
  {
    WeakRetained = [contextCopy nextFocusedView];
    v7 = objc_loadWeakRetained(&self->_svc);
    masterViewController = [v7 masterViewController];
    view = [masterViewController view];
    if ([WeakRetained isDescendantOfView:view])
    {
      v10 = objc_loadWeakRetained(&self->_svc);
      if ([v10 presentsWithGesture])
      {
        v6 = [(UISplitViewControllerClassicImpl *)self _lastFocusedChildViewControllerIndex]!= 0;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (void)_didUpdateFocusInContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained _super_didUpdateFocusInContext:contextCopy];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = objc_loadWeakRetained(&self->_svc);
  viewControllers = [v6 viewControllers];

  v8 = [viewControllers countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(viewControllers);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        nextFocusedView = [contextCopy nextFocusedView];
        view = [v12 view];
        v15 = [nextFocusedView isDescendantOfView:view];

        if (v15)
        {
          v16 = objc_loadWeakRetained(&self->_svc);
          viewControllers2 = [v16 viewControllers];
          self->_lastFocusedChildViewControllerIndex = [viewControllers2 indexOfObject:v12];

          v18 = objc_loadWeakRetained(&self->_svc);
          masterViewController = [v18 masterViewController];
          if (v12 == masterViewController && ![(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
          {
            v20 = objc_loadWeakRetained(&self->_svc);
            presentsWithGesture = [v20 presentsWithGesture];

            if (presentsWithGesture)
            {
              [(UISplitViewControllerClassicImpl *)self _triggerDisplayModeAction:self];
            }
          }

          else
          {
          }

          goto LABEL_13;
        }
      }

      v9 = [viewControllers countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (id)_multitaskingDragExclusionRects
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _super_multitaskingDragExclusionRects = [WeakRetained _super_multitaskingDragExclusionRects];

  return _super_multitaskingDragExclusionRects;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_menuGestureRecognizer != begin)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained displayMode] == 1;

  return v3;
}

- (id)childViewControllerForStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _shouldUseNewStatusBarBehavior = [WeakRetained _shouldUseNewStatusBarBehavior];

  v5 = objc_loadWeakRetained(&self->_svc);
  v6 = v5;
  if (_shouldUseNewStatusBarBehavior)
  {
    if ([v5 _shouldUseSeparateStatusBarStyles])
    {
      firstObject = 0;
    }

    else
    {
      viewControllers = [(UISplitViewControllerClassicImpl *)self viewControllers];
      firstObject = [viewControllers firstObject];
    }
  }

  else
  {
    firstObject = [v5 _super_childViewControllerForStatusBarStyle];
  }

  return firstObject;
}

- (int64_t)preferredLeadingStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _shouldUseSeparateStatusBarStyles = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!_shouldUseSeparateStatusBarStyles)
  {
    return 4;
  }

  v5 = objc_loadWeakRetained(&self->_svc);
  displayMode = [v5 displayMode];
  viewControllers = [(UISplitViewControllerClassicImpl *)self viewControllers];
  v8 = viewControllers;
  if (displayMode == 1)
  {
    [viewControllers lastObject];
  }

  else
  {
    [viewControllers firstObject];
  }
  v10 = ;

  _effectiveStatusBarStyleViewController = [v10 _effectiveStatusBarStyleViewController];
  preferredStatusBarStyle = [_effectiveStatusBarStyleViewController preferredStatusBarStyle];
  if (preferredStatusBarStyle == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (preferredStatusBarStyle == 3);
  }

  return v9;
}

- (int64_t)preferredTrailingStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _shouldUseSeparateStatusBarStyles = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!_shouldUseSeparateStatusBarStyles)
  {
    return 4;
  }

  viewControllers = [(UISplitViewControllerClassicImpl *)self viewControllers];
  lastObject = [viewControllers lastObject];
  _effectiveStatusBarStyleViewController = [lastObject _effectiveStatusBarStyleViewController];
  preferredStatusBarStyle = [_effectiveStatusBarStyleViewController preferredStatusBarStyle];
  if (preferredStatusBarStyle == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (preferredStatusBarStyle == 3);
  }

  return v9;
}

- (int64_t)preferredCenterStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _shouldUseSeparateStatusBarStyles = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!_shouldUseSeparateStatusBarStyles)
  {
    return 4;
  }

  viewControllers = [(UISplitViewControllerClassicImpl *)self viewControllers];
  lastObject = [viewControllers lastObject];
  _effectiveStatusBarStyleViewController = [lastObject _effectiveStatusBarStyleViewController];
  preferredStatusBarStyle = [_effectiveStatusBarStyleViewController preferredStatusBarStyle];
  if (preferredStatusBarStyle == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (preferredStatusBarStyle == 3);
  }

  return v9;
}

- (int64_t)preferredTrafficLightStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _shouldUseSeparateStatusBarStyles = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!_shouldUseSeparateStatusBarStyles)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_svc);
  displayMode = [v5 displayMode];
  viewControllers = [(UISplitViewControllerClassicImpl *)self viewControllers];
  v8 = viewControllers;
  if (displayMode == 1)
  {
    [viewControllers lastObject];
  }

  else
  {
    [viewControllers firstObject];
  }
  v10 = ;

  _effectiveStatusBarStyleViewController = [v10 _effectiveStatusBarStyleViewController];
  preferredTrafficLightStyle = [_effectiveStatusBarStyleViewController preferredTrafficLightStyle];

  return preferredTrafficLightStyle;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _super_preferredScreenEdgesDeferringSystemGestures = [WeakRetained _super_preferredScreenEdgesDeferringSystemGestures];

  return _super_preferredScreenEdgesDeferringSystemGestures;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  mutableChildViewControllers = [WeakRetained mutableChildViewControllers];

  v6 = [mutableChildViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mutableChildViewControllers);
        }

        v9 &= [*(*(&v12 + 1) + 8 * i) shouldAutorotateToInterfaceOrientation:orientation];
      }

      v7 = [mutableChildViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (dyld_program_sdk_at_least() && (*(&self->_splitViewControllerFlags + 1) & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_loadWeakRetained(&self->_svc);
    _super_supportedInterfaceOrientations = [WeakRetained splitViewControllerSupportedInterfaceOrientations:v5];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    _super_supportedInterfaceOrientations = [WeakRetained _super_supportedInterfaceOrientations];
  }

  return _super_supportedInterfaceOrientations;
}

- (BOOL)_hasPreferredInterfaceOrientationForPresentation
{
  v3 = dyld_program_sdk_at_least();
  if (v3)
  {
    return (*(&self->_splitViewControllerFlags + 1) >> 5) & 1;
  }

  return v3;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  if ((*(&self->_splitViewControllerFlags + 1) & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_loadWeakRetained(&self->_svc);
    _super_preferredInterfaceOrientationForPresentation = [WeakRetained splitViewControllerPreferredInterfaceOrientationForPresentation:v5];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    _super_preferredInterfaceOrientationForPresentation = [WeakRetained _super_preferredInterfaceOrientationForPresentation];
  }

  return _super_preferredInterfaceOrientationForPresentation;
}

- (int64_t)_internalModeForTraitCollection:(id)collection orientation:(int64_t)orientation viewSize:(CGSize)size medusaState:(int64_t)state
{
  collectionCopy = collection;
  if ([collectionCopy horizontalSizeClass] == 1)
  {
    v10 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    preferredDisplayMode = [WeakRetained preferredDisplayMode];

    if ((preferredDisplayMode - 1) >= 3)
    {
      if ([collectionCopy userInterfaceIdiom])
      {
        if ([collectionCopy userInterfaceIdiom] == 1)
        {
          if ([(UISplitViewControllerClassicImpl *)self _hidesMasterViewInOrientation:orientation medusaState:state])
          {
            v10 = 4;
          }

          else
          {
            v10 = 1;
          }
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        _iPhoneShouldUseOverlayInCurrentEnvironment = [(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment];
        _effectivePrimaryHidingState = [(UISplitViewControllerClassicImpl *)self _effectivePrimaryHidingState];
        if (_iPhoneShouldUseOverlayInCurrentEnvironment)
        {
          if (_effectivePrimaryHidingState == 1)
          {
            v10 = 4;
          }

          else if ([(UISplitViewControllerClassicImpl *)self _hidesMasterViewInOrientation:orientation medusaState:state])
          {
            v10 = 4;
          }

          else
          {
            v10 = 3;
          }
        }

        else if (_effectivePrimaryHidingState == 1)
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }
      }
    }

    else
    {
      v10 = qword_18A679490[preferredDisplayMode - 1];
    }
  }

  return v10;
}

- (int64_t)_prepareToTransitionToViewSize:(CGSize)size fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation duration:(double)duration
{
  height = size.height;
  width = size.width;
  if ((*&self->_splitViewControllerFlags & 0x10) != 0)
  {
    [(UISplitViewControllerClassicImpl *)self _invalidateHidesMasterViewForAspectRatio:(toOrientation - 1) < 2];
  }

  if (duration > 0.0 || !self->_rotatingFromOrientation)
  {
    self->_rotatingFromOrientation = orientation;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  masterViewController = [WeakRetained masterViewController];
  view = [masterViewController view];

  [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
  self->_rotatingFromMasterViewFrame.origin.x = v15;
  self->_rotatingFromMasterViewFrame.origin.y = v16;
  self->_rotatingFromMasterViewFrame.size.width = v17;
  self->_rotatingFromMasterViewFrame.size.height = v18;
  if (!self->_transitioningToTraitCollection)
  {
    v19 = objc_loadWeakRetained(&self->_svc);
    _existingView = [v19 _existingView];
    [_existingView bounds];
    if (width != v22 || height != v21)
    {
      goto LABEL_11;
    }

    if ((orientation - 1) > 1)
    {
      if ((orientation - 3) >= 2)
      {
LABEL_11:

        goto LABEL_18;
      }

      v24 = toOrientation - 3;
    }

    else
    {
      v24 = toOrientation - 1;
    }

    if (v24 < 2)
    {
      v25 = 0;
      goto LABEL_76;
    }
  }

LABEL_18:
  v26 = [(UISplitViewControllerClassicImpl *)self _medusaStateForOrientation:toOrientation viewWidth:width];
  transitioningToTraitCollection = self->_transitioningToTraitCollection;
  if (transitioningToTraitCollection)
  {
    traitCollection = transitioningToTraitCollection;
  }

  else
  {
    v29 = objc_loadWeakRetained(&self->_svc);
    traitCollection = [v29 traitCollection];
  }

  v73 = traitCollection;
  height = [(UISplitViewControllerClassicImpl *)self _internalModeForTraitCollection:traitCollection orientation:toOrientation viewSize:v26 medusaState:width, height];
  v31 = objc_loadWeakRetained(&self->_svc);
  traitCollection2 = [v31 traitCollection];
  horizontalSizeClass = [traitCollection2 horizontalSizeClass];

  lastNotifiedDisplayMode = self->_lastNotifiedDisplayMode;
  if ((lastNotifiedDisplayMode - 2) >= 2)
  {
    if (lastNotifiedDisplayMode == 1)
    {
      superview = [view superview];
      v38 = objc_loadWeakRetained(&self->_svc);
      view2 = [v38 view];
      v35 = view;
      if (superview == view2)
      {
        v71 = objc_loadWeakRetained(&self->_svc);
        masterViewController2 = [v71 masterViewController];
        if (masterViewController2)
        {
          v36 = (masterViewController2[94] & 3u) - 1 < 2;
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v35 = view;
      v36 = 0;
    }
  }

  else
  {
    v35 = view;
    v36 = 1;
  }

  if (height == 4)
  {
    v42 = 0;
    v43 = 0;
    v44 = horizontalSizeClass != 1 && v36;
    v72 = v44;
    if (v36 && horizontalSizeClass == 1)
    {
      v41 = 3;
    }

    else
    {
      v41 = 0;
    }
  }

  else if (height == 3)
  {
    v72 = 0;
    v41 = 0;
    v43 = 0;
    v42 = !v36;
  }

  else
  {
    if (height == 1)
    {
      v72 = 0;
      v41 = 0;
      v42 = !v36;
    }

    else
    {
      v42 = 0;
      v72 = 0;
      v41 = 0;
    }

    v43 = 1;
  }

  view = v35;
  v45 = objc_loadWeakRetained(&self->_svc);
  preferredDisplayMode = [v45 preferredDisplayMode];

  if (!preferredDisplayMode)
  {
    v47 = objc_loadWeakRetained(&self->_svc);
    traitCollection3 = [v47 traitCollection];

    userInterfaceIdiom = [traitCollection3 userInterfaceIdiom];
    if ((userInterfaceIdiom == 1 || !userInterfaceIdiom && -[UISplitViewControllerClassicImpl _iPhoneShouldUseOverlayInCurrentEnvironment](self, "_iPhoneShouldUseOverlayInCurrentEnvironment")) && [traitCollection3 horizontalSizeClass] != 1 && -[UITraitCollection horizontalSizeClass](v73, "horizontalSizeClass") != UIUserInterfaceSizeClassCompact)
    {
      [(UISplitViewControllerClassicImpl *)self _setPrimaryHidingStateForCurrentOrientation:0];
    }
  }

  if ((height - 2) > 2)
  {
    v50 = 2;
  }

  else
  {
    v50 = qword_18A6794A8[height - 2];
  }

  [(UISplitViewControllerClassicImpl *)self _displayModeWillChangeTo:v50];
  if ((v42 | v43) == 1)
  {
    v70 = v41;
    v51 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
    if ((*(&self->_splitViewControllerFlags + 1) & 1) == 0)
    {
      superview2 = [view superview];
      v53 = objc_loadWeakRetained(&self->_svc);
      view3 = [v53 view];
      v55 = view3;
      if (superview2 != view3)
      {

        v51 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
LABEL_60:
        v58 = v51[754];
        if ([*(&self->super.super.isa + v58) isPopoverVisible])
        {
          [*(&self->super.super.isa + v58) _dismissPopoverAnimated:0 stateOnly:1 notifyDelegate:1];
        }

        v59 = objc_loadWeakRetained(&self->_svc);
        masterViewController3 = [v59 masterViewController];
        [masterViewController3 _setPopoverController:0];

        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __106__UISplitViewControllerClassicImpl__prepareToTransitionToViewSize_fromOrientation_toOrientation_duration___block_invoke;
        v74[3] = &unk_1E70F35B8;
        v74[4] = self;
        v75 = view;
        [UIView performWithoutAnimation:v74];

        goto LABEL_63;
      }

      v68 = objc_loadWeakRetained(&self->_svc);
      [v68 masterViewController];
      v56 = v69 = view;
      _popoverController = [v56 _popoverController];

      view = v69;
      v51 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
      if (_popoverController)
      {
        goto LABEL_60;
      }
    }

LABEL_63:
    [*(&self->super.super.isa + v51[754]) _setGesturesEnabled:0];
    v41 = v70;
  }

  if (v42)
  {
    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFF1FLL | 0x20);
  }

  if (!v72)
  {
    goto LABEL_72;
  }

  v61 = objc_loadWeakRetained(&self->_svc);
  masterViewController4 = [v61 masterViewController];
  [(UISplitViewControllerClassicImpl *)self _viewControllerHiding:masterViewController4];

  v63 = objc_loadWeakRetained(&self->_svc);
  masterViewController5 = [v63 masterViewController];
  if (!masterViewController5)
  {
    masterViewController6 = 0;
    goto LABEL_70;
  }

  v65 = (masterViewController5[94] & 3) - 1;

  if (v65 <= 1)
  {
    v63 = objc_loadWeakRetained(&self->_svc);
    masterViewController6 = [v63 masterViewController];
    [(UIViewController *)masterViewController6 __viewWillDisappear:?];
LABEL_70:
  }

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFF1FLL | 0x60);
  v41 = 2;
LABEL_72:
  self->_transitioningToInternalMode = height;
  *&self->_splitViewControllerFlags |= 0x800000000uLL;
  if (v42)
  {
    v25 = 1;
  }

  else
  {
    v25 = v41;
  }

LABEL_76:
  return v25;
}

void __106__UISplitViewControllerClassicImpl__prepareToTransitionToViewSize_fromOrientation_toOrientation_duration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _masterViewFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
  v11 = [WeakRetained masterViewController];
  v12 = [v11 view];
  [v12 setFrame:{v3, v5, v7, v9}];

  v13 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v14 = [v13 masterViewController];
  v15 = [v14 view];
  [v15 setAutoresizingMask:0];

  v16 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v17 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v18 = [v17 masterViewController];
  v19 = v18;
  if (v18)
  {
    v20 = v18[192];
    v18[192] = v20 | 0x100;
    [v18 setParentViewController:v16];
    v19[192] = v19[192] & 0xFEFF | v20 & 0x100;
  }

  v22 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v21 = [v22 view];
  [v21 insertSubview:*(a1 + 40) atIndex:0];
}

- (void)_animateTransitionToOrientation:(int64_t)orientation duration:(double)duration masterChange:(int64_t)change
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  childViewControllersCount = [WeakRetained childViewControllersCount];

  if (duration > 0.0 && childViewControllersCount == 2)
  {
    [(UISplitViewControllerClassicImpl *)self snapshotForRotationFromInterfaceOrientation:self->_rotatingFromOrientation toInterfaceOrientation:orientation masterChange:change];
    if (self->_rotationSnapshotView)
    {
      rotatingFromOrientation = self->_rotatingFromOrientation;
      if ((rotatingFromOrientation - 1) >= 2)
      {
        if (((rotatingFromOrientation - 3) | (orientation - 3)) >= 2)
        {
          goto LABEL_9;
        }
      }

      else if ((orientation - 1) > 1)
      {
LABEL_9:
        mutableChildViewControllers = objc_loadWeakRetained(&self->_svc);
        masterViewController = [mutableChildViewControllers masterViewController];
        view = [masterViewController view];
        [view setHidden:1];

LABEL_12:
        goto LABEL_13;
      }

      v16 = objc_loadWeakRetained(&self->_svc);
      mutableChildViewControllers = [v16 mutableChildViewControllers];

      [mutableChildViewControllers enumerateObjectsUsingBlock:&__block_literal_global_142];
      goto LABEL_12;
    }
  }

LABEL_13:
  v17 = objc_loadWeakRetained(&self->_svc);
  _existingView = [v17 _existingView];
  window = [_existingView window];

  if (window)
  {
    v20 = objc_loadWeakRetained(&self->_svc);
    view2 = [v20 view];
    [view2 setNeedsLayout];

    v23 = objc_loadWeakRetained(&self->_svc);
    view3 = [v23 view];
    [view3 layoutIfNeeded];
  }
}

void __90__UISplitViewControllerClassicImpl__animateTransitionToOrientation_duration_masterChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 view];
  [v2 setHidden:1];
}

- (void)_completeTransitionFromOrientation:(int64_t)orientation masterChange:(int64_t)change
{
  v94 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  mutableChildViewControllers = [WeakRetained mutableChildViewControllers];

  rotatingFromOrientation = self->_rotatingFromOrientation;
  self->_rotatingFromOrientation = 0;
  if (self->_rotationSnapshotView)
  {
    v9 = objc_loadWeakRetained(&self->_svc);
    interfaceOrientation = [v9 interfaceOrientation];
    if ((rotatingFromOrientation - 1) < 2)
    {
      v11 = interfaceOrientation - 1;

      if (v11 > 1)
      {
        goto LABEL_18;
      }

LABEL_7:
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v13 = mutableChildViewControllers;
      v14 = [v13 countByEnumeratingWithState:&v89 objects:v93 count:16];
      if (v14)
      {
        v15 = *v90;
        do
        {
          v16 = 0;
          do
          {
            if (*v90 != v15)
            {
              objc_enumerationMutation(v13);
            }

            view = [*(*(&v89 + 1) + 8 * v16) view];
            [view setHidden:0];

            ++v16;
          }

          while (v14 != v16);
          v14 = [v13 countByEnumeratingWithState:&v89 objects:v93 count:16];
        }

        while (v14);
      }

      hiddenPopoverController = self->_hiddenPopoverController;
      if (hiddenPopoverController && (*(&self->_splitViewControllerFlags + 1) & 1) != 0)
      {
        _targetEdgeForPopover = [(UISplitViewControllerClassicImpl *)self _targetEdgeForPopover];
        v20 = objc_loadWeakRetained(&self->_svc);
        view2 = [v20 view];
        [(UIPopoverController *)hiddenPopoverController _presentPopoverFromEdge:_targetEdgeForPopover ofView:view2 animated:0];

        *&self->_splitViewControllerFlags &= ~0x100uLL;
      }

      goto LABEL_19;
    }

    if ((rotatingFromOrientation - 3) >= 2)
    {
    }

    else
    {
      v12 = interfaceOrientation - 3;

      if (v12 < 2)
      {
        goto LABEL_7;
      }
    }

LABEL_18:
    v22 = objc_loadWeakRetained(&self->_svc);
    masterViewController = [v22 masterViewController];
    view3 = [masterViewController view];
    [view3 setHidden:0];

    [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = objc_loadWeakRetained(&self->_svc);
    masterViewController2 = [v33 masterViewController];
    view4 = [masterViewController2 view];
    [view4 setFrame:{v26, v28, v30, v32}];

LABEL_19:
    v36 = objc_loadWeakRetained(&self->_svc);
    view5 = [v36 view];
    layer = [view5 layer];
    [layer setNeedsLayoutOnGeometryChange:0];

    [(UIView *)self->_rotationSnapshotView removeFromSuperview];
    rotationSnapshotView = self->_rotationSnapshotView;
    self->_rotationSnapshotView = 0;

    v40 = objc_loadWeakRetained(&self->_svc);
    view6 = [v40 view];
    layer2 = [view6 layer];
    [layer2 setNeedsLayoutOnGeometryChange:1];
  }

  v43 = objc_loadWeakRetained(&self->_svc);
  if (v43)
  {
    v44 = (v43[94] & 3u) - 1 < 2;

    if (v44)
    {
      if (change == 1)
      {
        v45 = objc_loadWeakRetained(&self->_svc);
        v46 = v45;
        if (v45[40] || (*(&self->_splitViewControllerFlags + 1) & 1) != 0)
        {
        }

        else
        {
          isPopoverVisible = [(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible];

          if (!isPopoverVisible)
          {
            v48 = objc_loadWeakRetained(&self->_svc);
            masterViewController3 = [v48 masterViewController];
            objc_initWeak(&location, masterViewController3);

            v86[0] = MEMORY[0x1E69E9820];
            v86[1] = 3221225472;
            v86[2] = __84__UISplitViewControllerClassicImpl__completeTransitionFromOrientation_masterChange___block_invoke;
            v86[3] = &unk_1E70F5A28;
            objc_copyWeak(&v87, &location);
            v50 = objc_loadWeakRetained(&location);
            [v50 setAfterAppearanceBlock:v86];

            v51 = UIApp;
            v52 = objc_loadWeakRetained(&location);
            [v51 _addAfterCACommitBlockForViewController:v52];

            objc_destroyWeak(&v87);
            objc_destroyWeak(&location);
          }
        }
      }

      else if ((change & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v53 = objc_loadWeakRetained(&self->_svc);
        masterViewController4 = [v53 masterViewController];
        objc_initWeak(&location, masterViewController4);

        v55 = objc_loadWeakRetained(&location);
        LOBYTE(v53) = [v55 _appearState] == 0;

        if ((v53 & 1) == 0)
        {
          v84[0] = MEMORY[0x1E69E9820];
          v84[1] = 3221225472;
          v84[2] = __84__UISplitViewControllerClassicImpl__completeTransitionFromOrientation_masterChange___block_invoke_2;
          v84[3] = &unk_1E70F5A28;
          objc_copyWeak(&v85, &location);
          v56 = objc_loadWeakRetained(&location);
          [v56 setAfterAppearanceBlock:v84];

          v57 = UIApp;
          v58 = objc_loadWeakRetained(&location);
          [v57 _addAfterCACommitBlockForViewController:v58];

          objc_destroyWeak(&v85);
        }

        [(UIPopoverController *)self->_hiddenPopoverController _setGesturesEnabled:1];
        objc_destroyWeak(&location);
      }
    }
  }

  if ((*(&self->_splitViewControllerFlags + 1) & 1) == 0 && ![(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible])
  {
    goto LABEL_45;
  }

  v59 = objc_loadWeakRetained(&self->_svc);
  interfaceOrientation2 = [v59 interfaceOrientation];
  if ((orientation - 1) < 2)
  {
    v61 = (interfaceOrientation2 - 1) < 2;

    goto LABEL_38;
  }

  if ((orientation - 3) < 2)
  {
    v61 = (interfaceOrientation2 - 3) < 2;

LABEL_38:
    if (v61)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

LABEL_41:
  v62 = self->_hiddenPopoverController;
  if (v62)
  {
    if (change)
    {
      popoverView = [(UIPopoverController *)v62 popoverView];
      [(UIPopoverController *)self->_hiddenPopoverController _dismissPopoverAnimated:0 stateOnly:1 notifyDelegate:1];
      v63 = objc_loadWeakRetained(&self->_svc);
      masterViewController5 = [v63 masterViewController];
      view7 = [masterViewController5 view];
      [popoverView frame];
      [view7 setFrame:?];

      v81 = objc_loadWeakRetained(&self->_svc);
      view8 = [v81 view];
      v67 = objc_loadWeakRetained(&self->_svc);
      masterViewController6 = [v67 masterViewController];
      view9 = [masterViewController6 view];
      v70 = objc_loadWeakRetained(&self->_svc);
      detailViewController = [v70 detailViewController];
      view10 = [detailViewController view];
      [view8 insertSubview:view9 belowSubview:view10];

      v73 = objc_loadWeakRetained(&self->_svc);
      masterViewController7 = [v73 masterViewController];
      [masterViewController7 _setPopoverController:0];
    }
  }

  else
  {
    *&self->_splitViewControllerFlags &= ~0x100uLL;
  }

LABEL_45:
  v75 = objc_loadWeakRetained(&self->_svc);
  displayMode = [v75 displayMode];
  v77 = 128;
  if (displayMode == 2)
  {
    v77 = 64;
  }

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFF1FLL | v77);

LABEL_48:
  v78 = objc_loadWeakRetained(&self->_svc);
  view11 = [v78 view];
  [view11 setNeedsLayout];

  v80 = objc_loadWeakRetained(&self->_svc);
  self->_lastPresentedOrientation = [v80 interfaceOrientation];
}

void __84__UISplitViewControllerClassicImpl__completeTransitionFromOrientation_masterChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __viewDidAppear:0];
}

void __84__UISplitViewControllerClassicImpl__completeTransitionFromOrientation_masterChange___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(UIViewController *)WeakRetained __viewDidDisappear:?];
}

- (BOOL)_isTransitioningFromCollapsedToSeparated
{
  if ((*(&self->_splitViewControllerFlags + 4) & 8) == 0 || !self->_transitioningToInternalMode)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _isCollapsed = [WeakRetained _isCollapsed];

  return _isCollapsed;
}

- (id)_childViewControllerForSpokenContent
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  detailViewController = [WeakRetained detailViewController];

  return detailViewController;
}

- (id)_childViewControllersToSendViewWillTransitionToSize
{
  if ([(UISplitViewControllerClassicImpl *)self _isTransitioningFromCollapsedToSeparated])
  {
    array = [MEMORY[0x1E695DF70] array];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    masterViewController = [WeakRetained masterViewController];

    if (masterViewController)
    {
      [array addObject:masterViewController];
    }

    v6 = objc_loadWeakRetained(&self->_svc);
    detailViewController = [v6 detailViewController];
    if (detailViewController)
    {
      _preservedDetailController = detailViewController;
    }

    else
    {
      _preservedDetailController = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];

      if (!_preservedDetailController)
      {
        goto LABEL_10;
      }
    }

    [array addObject:_preservedDetailController];
  }

  else
  {
    _preservedDetailController = objc_loadWeakRetained(&self->_svc);
    array = [_preservedDetailController _super_childViewControllersToSendViewWillTransitionToSize];
  }

LABEL_10:

  return array;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  interfaceOrientation = [WeakRetained interfaceOrientation];

  switch(interfaceOrientation)
  {
    case 1:
      v10 = 0.0;
      break;
    case 3:
      v10 = 1.57079633;
      break;
    case 4:
      v10 = -1.57079633;
      break;
    default:
      v10 = 3.14159265;
      if (interfaceOrientation != 2)
      {
        v10 = 0.0;
      }

      break;
  }

  CGAffineTransformMakeRotation(&t1, v10);
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  CGAffineTransformConcat(&v22, &t1, &t2);
  v11 = 0;
  v18 = vrndaq_f64(*&v22.c);
  v19 = vrndaq_f64(*&v22.a);
  v17 = vrndaq_f64(*&v22.tx);
  while (1)
  {
    *&t1.a = v19;
    *&t1.c = v18;
    v12 = 3.14159265;
    *&t1.tx = v17;
    if (v11 <= 2)
    {
      v12 = dbl_18A6794C0[v11];
    }

    CGAffineTransformMakeRotation(&v23, v12);
    *&v23.a = vrndaq_f64(*&v23.a);
    *&v23.c = vrndaq_f64(*&v23.c);
    *&v23.tx = vrndaq_f64(*&v23.tx);
    t2 = v23;
    if (CGAffineTransformEqualToTransform(&t1, &t2))
    {
      break;
    }

    if (++v11 == 4)
    {
      v13 = 0;
      goto LABEL_19;
    }
  }

  v13 = qword_18A679470[v11];
LABEL_19:
  *&self->_splitViewControllerFlags |= 0x400000000uLL;
  [coordinatorCopy transitionDuration];
  v15 = [(UISplitViewControllerClassicImpl *)self _prepareToTransitionToViewSize:interfaceOrientation fromOrientation:v13 toOrientation:width duration:height, v14];
  self->_transitioningMasterChange = v15;
  *&self->_splitViewControllerFlags &= ~0x400000000uLL;
  v16 = objc_loadWeakRetained(&self->_svc);
  [v16 _super_viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];

  *&self->_splitViewControllerFlags &= ~0x800000000uLL;
  v20[6] = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __87__UISplitViewControllerClassicImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v21[3] = &unk_1E7103BF8;
  v21[4] = self;
  v21[5] = v15;
  v21[6] = v13;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__UISplitViewControllerClassicImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v20[3] = &unk_1E7103BF8;
  v20[4] = self;
  v20[5] = interfaceOrientation;
  [coordinatorCopy animateAlongsideTransition:v21 completion:v20];
}

void __87__UISplitViewControllerClassicImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(void *a1, void *a2)
{
  v7 = a2;
  if (a1[5] == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 312));
    v4 = [WeakRetained masterViewController];
    [(UIViewController *)v4 __viewWillDisappear:?];
  }

  v5 = a1[4];
  v6 = a1[6];
  [v7 transitionDuration];
  [v5 _animateTransitionToOrientation:v6 duration:a1[5] masterChange:?];
}

uint64_t __87__UISplitViewControllerClassicImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _completeTransitionFromOrientation:*(a1 + 40) masterChange:*(a1 + 48)];
  result = [*(a1 + 32) _displayModeDidChange];
  *(*(a1 + 32) + 560) = 0;
  return result;
}

- (void)snapshotMasterView
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  detailViewController = [WeakRetained detailViewController];

  v4 = objc_loadWeakRetained(&self->_svc);
  detailViewController2 = [v4 detailViewController];
  childModalViewController = [detailViewController2 childModalViewController];

  if (childModalViewController)
  {
    while (1)
    {
      presentationController = [childModalViewController presentationController];
      shouldPresentInFullscreen = [presentationController shouldPresentInFullscreen];

      if (shouldPresentInFullscreen)
      {
        break;
      }

      v9 = childModalViewController;

      childModalViewController = [v9 presentedViewController];

      detailViewController = v9;
      if (!childModalViewController)
      {
        v10 = v9;
        goto LABEL_6;
      }
    }
  }

  v10 = detailViewController;
LABEL_6:
  v48 = v10;
  view = [v10 view];
  if (!self->_rotationSnapshotView)
  {
    [UIView setAnimationsEnabled:0];
    v12 = objc_loadWeakRetained(&self->_svc);
    masterViewController = [v12 masterViewController];
    view2 = [masterViewController view];

    [view2 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [view2 setFrame:{self->_rotatingFromMasterViewFrame.origin.x, self->_rotatingFromMasterViewFrame.origin.y, self->_rotatingFromMasterViewFrame.size.width, self->_rotatingFromMasterViewFrame.size.height}];
    [view2 layoutBelowIfNeeded];
    v46 = view2;
    superview = [view2 superview];
    v24 = objc_loadWeakRetained(&self->_svc);
    view3 = [v24 view];
    if (superview == view3)
    {
      v43 = objc_loadWeakRetained(&self->_svc);
      [v43 view];
      v26 = v44 = view;
      subviews = [v26 subviews];
      v45 = [subviews indexOfObject:v44] + 1;

      view = v44;
    }

    else
    {
      v45 = 0;
    }

    v28 = [[UISnapshotView alloc] initWithFrame:self->_rotatingFromMasterViewFrame.origin.x, self->_rotatingFromMasterViewFrame.origin.y, self->_rotatingFromMasterViewFrame.size.width, self->_rotatingFromMasterViewFrame.size.height];
    rotationSnapshotView = self->_rotationSnapshotView;
    self->_rotationSnapshotView = &v28->super;

    v30 = self->_rotationSnapshotView;
    v31 = objc_loadWeakRetained(&self->_svc);
    [v31 gutterWidth];
    [(UIView *)v30 setEdgePadding:0.0, 0.0, 0.0, v32];

    v33 = self->_rotationSnapshotView;
    v34 = objc_loadWeakRetained(&self->_svc);
    view4 = [v34 view];
    backgroundColor = [view4 backgroundColor];
    [(UIView *)v33 setEdgePaddingColor:backgroundColor];

    v37 = self->_rotationSnapshotView;
    v38 = objc_loadWeakRetained(&self->_svc);
    masterViewController2 = [v38 masterViewController];
    view5 = [masterViewController2 view];
    [(UIView *)v37 captureSnapshotOfView:view5 withSnapshotType:self->_transitioningMasterChange != 1];

    v41 = objc_loadWeakRetained(&self->_svc);
    view6 = [v41 view];
    [view6 insertSubview:self->_rotationSnapshotView atIndex:v45];

    [v46 setFrame:{v16, v18, v20, v22}];
    [UIView setAnimationsEnabled:1];
    [(UIView *)self->_rotationSnapshotView setFrame:self->_rotatingToMasterViewFrame.origin.x, self->_rotatingToMasterViewFrame.origin.y, self->_rotatingToMasterViewFrame.size.width, self->_rotatingToMasterViewFrame.size.height];
  }
}

- (void)snapshotAllViews
{
  if (!self->_rotationSnapshotView)
  {
    [UIView setAnimationsEnabled:0];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    view = [WeakRetained view];
    [view layoutBelowIfNeeded];

    v5 = [UISnapshotView alloc];
    v6 = objc_loadWeakRetained(&self->_svc);
    view2 = [v6 view];
    [view2 bounds];
    v8 = [(UISnapshotView *)v5 initWithFrame:?];
    rotationSnapshotView = self->_rotationSnapshotView;
    self->_rotationSnapshotView = v8;

    v10 = self->_rotationSnapshotView;
    v11 = objc_loadWeakRetained(&self->_svc);
    view3 = [v11 view];
    [(UIView *)v10 captureSnapshotOfView:view3 withSnapshotType:1];

    v13 = objc_loadWeakRetained(&self->_svc);
    view4 = [v13 view];
    [view4 addSubview:self->_rotationSnapshotView];

    [UIView setAnimationsEnabled:1];
    v15 = self->_rotationSnapshotView;
    v17 = objc_loadWeakRetained(&self->_svc);
    view5 = [v17 view];
    [view5 bounds];
    [(UIView *)v15 setFrame:?];
  }
}

- (void)snapshotForRotationFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation masterChange:(int64_t)change
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if ([WeakRetained _isRotating])
  {
    v9 = +[UIView areAnimationsEnabled];

    if (!v9)
    {
      return;
    }

    v10 = objc_loadWeakRetained(&self->_svc);
    view = [v10 view];
    layer = [view layer];
    [layer setNeedsLayoutOnGeometryChange:0];

    if (!change || (*(&self->_splitViewControllerFlags + 1) & 1) != 0 || [(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible])
    {
      if ((orientation - 1) < 2)
      {
        if ((interfaceOrientation - 1) > 1)
        {
          goto LABEL_18;
        }

LABEL_13:
        [(UISplitViewControllerClassicImpl *)self snapshotAllViews];
        if ([(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible])
        {
          popoverView = [(UIPopoverController *)self->_hiddenPopoverController popoverView];
          v14 = [UISnapshotView alloc];
          [popoverView bounds];
          v15 = [(UISnapshotView *)v14 initWithFrame:?];
          [popoverView bounds];
          v17 = v16;
          v19 = v18;
          [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
          v21 = v20;
          v23 = v22;
          _layoutPrimaryOnRight = [(UISplitViewControllerClassicImpl *)self _layoutPrimaryOnRight];
          v25 = objc_loadWeakRetained(&self->_svc);
          [v25 primaryColumnWidth];
          v27 = v26;

          v28 = -v27;
          if (!_layoutPrimaryOnRight)
          {
            v28 = v27;
          }

          v29 = v21 + v28;
          [popoverView _snapshotBounds];
          [(UISnapshotView *)v15 captureSnapshotRect:popoverView fromView:1 withSnapshotType:?];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __116__UISplitViewControllerClassicImpl_snapshotForRotationFromInterfaceOrientation_toInterfaceOrientation_masterChange___block_invoke;
          v35[3] = &unk_1E7100760;
          v35[4] = self;
          v36 = v15;
          v37 = v29;
          v38 = v23;
          v39 = v17;
          v40 = v19;
          v30 = v15;
          [UIView performWithoutAnimation:v35];
          *&self->_splitViewControllerFlags |= 0x100uLL;
          [(UIPopoverController *)self->_hiddenPopoverController _dismissPopoverAnimated:0 stateOnly:1 notifyDelegate:0];
        }

        goto LABEL_18;
      }

      if (((interfaceOrientation - 3) | (orientation - 3)) < 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      [(UISplitViewControllerClassicImpl *)self snapshotMasterView];
    }

LABEL_18:
    v31 = objc_loadWeakRetained(&self->_svc);
    view2 = [v31 view];
    layer2 = [view2 layer];
    [layer2 setNeedsLayoutOnGeometryChange:1];

    return;
  }
}

uint64_t __116__UISplitViewControllerClassicImpl_snapshotForRotationFromInterfaceOrientation_toInterfaceOrientation_masterChange___block_invoke(double *a1)
{
  [*(*(a1 + 4) + 360) addSubview:*(a1 + 5)];
  v2 = *(a1 + 5);
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];

  return [v2 setFrame:{v3, v4, v5, v6}];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v27 = *MEMORY[0x1E69E9840];
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    view = [WeakRetained view];
    [view frame];
    v10 = v9;
    v12 = v11;
    v13 = objc_loadWeakRetained(&self->_svc);
    self->_rotatingMasterChange = -[UISplitViewControllerClassicImpl _prepareToTransitionToViewSize:fromOrientation:toOrientation:duration:](self, "_prepareToTransitionToViewSize:fromOrientation:toOrientation:duration:", [v13 interfaceOrientation], orientation, v10, v12, duration);

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = objc_loadWeakRetained(&self->_svc);
    childViewControllers = [v14 childViewControllers];

    v16 = [childViewControllers countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(childViewControllers);
          }

          v20 = *(*(&v22 + 1) + 8 * i);
          [v20 willRotateToInterfaceOrientation:orientation duration:duration];
          view2 = [v20 view];
          [view2 layoutBelowIfNeeded];
        }

        v17 = [childViewControllers countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }
  }
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    childViewControllersCount = [WeakRetained childViewControllersCount];

    v9 = objc_loadWeakRetained(&self->_svc);
    v10 = v9;
    if (childViewControllersCount == 2)
    {
      mutableChildViewControllers = [v9 mutableChildViewControllers];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __87__UISplitViewControllerClassicImpl_willAnimateRotationToInterfaceOrientation_duration___block_invoke;
      v13[3] = &__block_descriptor_48_e15_v32__0_8Q16_B24l;
      v13[4] = orientation;
      *&v13[5] = duration;
      [mutableChildViewControllers enumerateObjectsUsingBlock:v13];
    }

    else
    {
      masterViewController = [v9 masterViewController];
      [masterViewController willAnimateRotationToInterfaceOrientation:orientation duration:duration];
    }

    [(UISplitViewControllerClassicImpl *)self _animateTransitionToOrientation:orientation duration:self->_rotatingMasterChange masterChange:duration];
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  v19 = *MEMORY[0x1E69E9840];
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    [(UISplitViewControllerClassicImpl *)self _completeTransitionFromOrientation:orientation masterChange:self->_rotatingMasterChange];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    mutableChildViewControllers = [WeakRetained mutableChildViewControllers];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = mutableChildViewControllers;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          [v12 didRotateFromInterfaceOrientation:{orientation, v14}];
          view = [v12 view];
          [view setNeedsLayout];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(UISplitViewControllerClassicImpl *)self _displayModeDidChange];
    self->_rotatingMasterChange = 0;
  }
}

- (void)_updateMasterViewControllerFrame
{
  transitioningMasterChange = self->_transitioningMasterChange;
  rotatingFromOrientation = self->_rotatingFromOrientation;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = +[UIView _degreesToRotateFromInterfaceOrientation:toInterfaceOrientation:](UIView, "_degreesToRotateFromInterfaceOrientation:toInterfaceOrientation:", rotatingFromOrientation, [WeakRetained interfaceOrientation]);

  v7 = 448;
  [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
  self->_rotatingToMasterViewFrame.origin.x = v8;
  self->_rotatingToMasterViewFrame.origin.y = v9;
  self->_rotatingToMasterViewFrame.size.width = v10;
  self->_rotatingToMasterViewFrame.size.height = v11;
  v12 = objc_loadWeakRetained(&self->_svc);
  if (![v12 _isRotating])
  {

    goto LABEL_7;
  }

  v13 = +[UIView areAnimationsEnabled];

  if (v13)
  {
    if ([(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible])
    {
      v14 = self->_rotatingFromOrientation;
      v15 = objc_loadWeakRetained(&self->_svc);
      interfaceOrientation = [v15 interfaceOrientation];
      if ((v14 - 1) >= 2)
      {
        if ((v14 - 3) >= 2)
        {

LABEL_61:
          v76 = objc_loadWeakRetained(&self->_svc);
          if ([v76 preferredDisplayMode])
          {

LABEL_64:
            hiddenPopoverController = self->_hiddenPopoverController;
            _targetEdgeForPopover = [(UISplitViewControllerClassicImpl *)self _targetEdgeForPopover];
            v80 = objc_loadWeakRetained(&self->_svc);
            view = [v80 view];
            [(UIPopoverController *)hiddenPopoverController _presentPopoverFromEdge:_targetEdgeForPopover ofView:view animated:1];

            goto LABEL_7;
          }

          _hidesMasterViewInCurrentOrientation = [(UISplitViewControllerClassicImpl *)self _hidesMasterViewInCurrentOrientation];

          if (_hidesMasterViewInCurrentOrientation)
          {
            goto LABEL_64;
          }

          origin = self->_rotatingToMasterViewFrame.origin;
          width = self->_rotatingToMasterViewFrame.size.width;
          height = self->_rotatingToMasterViewFrame.size.height;
          popoverView = [(UIPopoverController *)self->_hiddenPopoverController popoverView];
          childModalViewController = popoverView;
          if (popoverView)
          {
            [popoverView frame];
            v87 = v86;
            v89 = v88;
            v96[0] = MEMORY[0x1E69E9820];
            v96[1] = 3221225472;
            v96[2] = __68__UISplitViewControllerClassicImpl__updateMasterViewControllerFrame__block_invoke_2;
            v96[3] = &unk_1E7100760;
            v96[4] = self;
            v90 = childModalViewController;
            v97 = v90;
            v98 = origin;
            v99 = v87;
            v100 = v89;
            [UIView performWithoutAnimation:v96];
            v91[0] = MEMORY[0x1E69E9820];
            v91[1] = 3221225472;
            v91[2] = __68__UISplitViewControllerClassicImpl__updateMasterViewControllerFrame__block_invoke_3;
            v91[3] = &unk_1E70F3B20;
            v92 = v90;
            v93 = origin;
            v94 = width;
            v95 = height;
            [UIView animateWithDuration:4 delay:v91 options:0 animations:0.2 completion:0.0];
          }

LABEL_71:

          goto LABEL_7;
        }

        v17 = interfaceOrientation - 3;
      }

      else
      {
        v17 = interfaceOrientation - 1;
      }

      if (v17 >= 2)
      {
        goto LABEL_61;
      }

      goto LABEL_7;
    }

    if ((transitioningMasterChange - 1) > 1)
    {
      v58 = objc_loadWeakRetained(&self->_svc);
      masterViewController = [v58 masterViewController];
      view2 = [masterViewController view];
      [view2 setFrame:{self->_rotatingToMasterViewFrame.origin.x, self->_rotatingToMasterViewFrame.origin.y, self->_rotatingToMasterViewFrame.size.width, self->_rotatingToMasterViewFrame.size.height}];

      v61 = objc_loadWeakRetained(&self->_svc);
      masterViewController2 = [v61 masterViewController];
      childModalViewController = [masterViewController2 childModalViewController];

      if (childModalViewController)
      {
        do
        {
          presentationController = [childModalViewController presentationController];
          shouldPresentInFullscreen = [presentationController shouldPresentInFullscreen];

          if (shouldPresentInFullscreen)
          {
            break;
          }

          [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
          v67 = v66;
          v69 = v68;
          v71 = v70;
          v73 = v72;
          view3 = [childModalViewController view];
          [view3 setFrame:{v67, v69, v71, v73}];

          presentedViewController = [childModalViewController presentedViewController];

          childModalViewController = presentedViewController;
        }

        while (presentedViewController);
        goto LABEL_71;
      }

      goto LABEL_7;
    }

    if (transitioningMasterChange == 1 && v6 <= 0)
    {
      v57 = self->_rotatingFromOrientation;
      if ((v57 - 3) >= 2)
      {
        self->_rotatingFromMasterViewFrame.origin.y = self->_rotatingFromMasterViewFrame.origin.y + self->_rotatingFromMasterViewFrame.size.height - self->_rotatingToMasterViewFrame.size.height;
      }
    }

    else
    {
      if (transitioningMasterChange == 2 && v6 >= 1)
      {
        if ((self->_rotatingFromOrientation - 3) <= 1)
        {
          self->_rotatingToMasterViewFrame.origin.y = self->_rotatingToMasterViewFrame.origin.y + self->_rotatingToMasterViewFrame.size.height - self->_rotatingFromMasterViewFrame.size.height;
        }

        goto LABEL_67;
      }

      if (transitioningMasterChange != 1)
      {
LABEL_67:
        v7 = 416;
LABEL_68:
        v82 = *(&self->super._gutterWidth + v7);
        self->_rotatingToMasterViewFrame.size.height = v82;
        self->_rotatingFromMasterViewFrame.size.height = v82;
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 3221225472;
        v102[2] = __68__UISplitViewControllerClassicImpl__updateMasterViewControllerFrame__block_invoke;
        v102[3] = &unk_1E70F3590;
        v102[4] = self;
        [UIView performWithoutAnimation:v102];
        goto LABEL_7;
      }

      v57 = self->_rotatingFromOrientation;
    }

    self->_rotatingFromMasterViewFrame.size.width = self->_rotatingToMasterViewFrame.size.width;
    if ((v57 - 1) <= 1 && transitioningMasterChange == 1 || (v57 - 3) <= 1 && transitioningMasterChange == 1)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_7:
  v18 = objc_loadWeakRetained(&self->_svc);
  _isRotating = [v18 _isRotating];

  if (_isRotating && transitioningMasterChange == 1)
  {
    if ((*&self->_splitViewControllerFlags & 0x2E0) == 0x220)
    {
      v20 = objc_loadWeakRetained(&self->_delegate);
      v21 = objc_loadWeakRetained(&self->_svc);
      masterViewController3 = [v21 masterViewController];
      [v20 splitViewController:v21 willShowViewController:masterViewController3 invalidatingBarButtonItem:self->_barButtonItem];
    }

    v23 = objc_loadWeakRetained(&self->_svc);
    v24 = v23;
    if (v23 && (*(v23 + 94) & 3u) - 1 <= 1 && (*(&self->_splitViewControllerFlags + 1) & 1) == 0)
    {
      isPopoverVisible = [(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible];

      if (isPopoverVisible)
      {
        goto LABEL_17;
      }

      v26 = objc_loadWeakRetained(&self->_svc);
      masterViewController4 = [v26 masterViewController];
      [masterViewController4 setAfterAppearanceBlock:0];

      v24 = objc_loadWeakRetained(&self->_svc);
      masterViewController5 = [v24 masterViewController];
      [masterViewController5 __viewWillAppear:0];
    }
  }

LABEL_17:
  v29 = objc_loadWeakRetained(&self->_svc);
  masterViewController6 = [v29 masterViewController];

  if (masterViewController6)
  {
    contentViewController = [(UIPopoverController *)self->_hiddenPopoverController contentViewController];
    v32 = contentViewController;
    if (contentViewController == masterViewController6)
    {
      view4 = [masterViewController6 view];
      popoverView2 = [(UIPopoverController *)self->_hiddenPopoverController popoverView];
      v35 = [view4 isDescendantOfView:popoverView2];

      if (v35)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  v36 = objc_loadWeakRetained(&self->_svc);
  if ([v36 _isRotating] & 1) != 0 || (*(&self->_splitViewControllerFlags + 1))
  {
    goto LABEL_25;
  }

  isPopoverVisible2 = [(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible];

  if (!isPopoverVisible2)
  {
    v36 = objc_loadWeakRetained(&self->_svc);
    masterViewController7 = [v36 masterViewController];
    view5 = [masterViewController7 view];
    [view5 setFrame:{self->_rotatingToMasterViewFrame.origin.x, self->_rotatingToMasterViewFrame.origin.y, self->_rotatingToMasterViewFrame.size.width, self->_rotatingToMasterViewFrame.size.height}];

LABEL_25:
  }

LABEL_26:
  if ((dyld_program_sdk_at_least() & 1) == 0 && [(UISplitViewControllerClassicImpl *)self _layoutPrimaryOnRight]&& [(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = objc_loadWeakRetained(&self->_svc);
    masterViewController8 = [v46 masterViewController];
    _popoverController = [masterViewController8 _popoverController];
    isPopoverVisible3 = [_popoverController isPopoverVisible];

    v50 = 0.5;
    if ((isPopoverVisible3 & 1) == 0)
    {
      [(UISplitViewControllerClassicImpl *)self _screenSizeInMainScene:1];
      v50 = v51 - v43;
    }

    v52 = objc_loadWeakRetained(&self->_svc);
    masterViewController9 = [v52 masterViewController];
    view6 = [masterViewController9 view];
    [view6 setFrame:{v50, v41, v43, v45}];
  }
}

void __68__UISplitViewControllerClassicImpl__updateMasterViewControllerFrame__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
  v3 = [WeakRetained masterViewController];
  v4 = [v3 view];
  [v4 setFrame:{*(*(a1 + 32) + 416), *(*(a1 + 32) + 424), *(*(a1 + 32) + 432), *(*(a1 + 32) + 440)}];

  v7 = objc_loadWeakRetained((*(a1 + 32) + 312));
  v5 = [v7 masterViewController];
  v6 = [v5 view];
  [v6 layoutBelowIfNeeded];
}

uint64_t __68__UISplitViewControllerClassicImpl__updateMasterViewControllerFrame__block_invoke_2(double *a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 4) + 312));
  v3 = [WeakRetained view];
  v4 = *(a1 + 5);
  v5 = objc_loadWeakRetained((*(a1 + 4) + 312));
  v6 = [v5 detailViewController];
  v7 = [v6 view];
  [v3 insertSubview:v4 aboveSubview:v7];

  v8 = *(a1 + 5);
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];

  return [v8 setFrame:{v9, v10, v11, v12}];
}

- (void)_setDetailViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  detailViewController = [WeakRetained detailViewController];
  view = [detailViewController view];
  [view setFrame:{x, y, width, height}];
}

- (void)__viewWillLayoutSubviews
{
  if (!self->_lastNotifiedDisplayMode)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    self->_lastNotifiedDisplayMode = [WeakRetained displayMode];
  }

  [(UISplitViewControllerClassicImpl *)self _setupUnderBarSeparatorView];
  if (self->_useChangingBoundsLayout)
  {
    v4 = objc_loadWeakRetained(&self->_svc);
    detailViewController = [v4 detailViewController];

    if (detailViewController)
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen _referenceBounds];
      v8 = ceil(v7 * 0.666);

      v9 = ceil(v8 * 0.6);
      v10 = objc_loadWeakRetained(&self->_svc);
      detailViewController2 = [v10 detailViewController];
      view = [detailViewController2 view];
      [view frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      if (v18 >= v9 || (*&self->_splitViewControllerFlags & 0x300000) != 0x100000)
      {
        [(UISplitViewControllerClassicImpl *)self _detailViewFrame];
        v14 = v21;
        v16 = v22;
        v9 = v23;
        v20 = v24;
      }

      [(UISplitViewControllerClassicImpl *)self _setDetailViewFrame:v14, v16, v9, v20];
    }

    else if (self->_useChangingBoundsLayout)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __60__UISplitViewControllerClassicImpl___viewWillLayoutSubviews__block_invoke;
      aBlock[3] = &unk_1E70F3590;
      aBlock[4] = self;
      v25 = _Block_copy(aBlock);
      if (+[UIView areAnimationsEnabled])
      {
        +[UIView inheritedAnimationDuration];
        [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:0 options:v25 animations:0 completion:?];
      }

      else
      {
        v25[2](v25);
      }

      if ((*&self->_splitViewControllerFlags & 0x300000) == 0x100000)
      {
        [(UISplitViewControllerClassicImpl *)self _setCollapsedState:2];
        self->_useChangingBoundsLayout = 0;
      }

      return;
    }
  }

  v26 = +[UIDevice currentDevice];
  if ([v26 userInterfaceIdiom])
  {
  }

  else
  {
    _iPhoneShouldUseOverlayIfRegularWidth = [(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayIfRegularWidth];

    if (!_iPhoneShouldUseOverlayIfRegularWidth)
    {
      v32 = *&self->_splitViewControllerFlags & 0x300000;
      [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = objc_loadWeakRetained(&self->_svc);
      masterViewController = [v41 masterViewController];
      view2 = [masterViewController view];
      [view2 setFrame:{v34, v36, v38, v40}];

      if (self->_collapsingMasterSnapshotView && !self->_collapsingDetailSnapshotView)
      {
        [(UISplitViewControllerClassicImpl *)self _detailViewFrame];
        [(UISnapshotView *)self->_collapsingMasterSnapshotView setFrame:?];
      }

      if (v32 != 0x200000)
      {
        [(UISplitViewControllerClassicImpl *)self _detailViewFrame];

        [(UISplitViewControllerClassicImpl *)self _setDetailViewFrame:?];
      }

      return;
    }
  }

  if (self->_lastPresentedOrientation)
  {
    if (self->_rotatingFromOrientation || (v28 = objc_loadWeakRetained(&self->_svc), v29 = [v28 interfaceOrientation], lastPresentedOrientation = self->_lastPresentedOrientation, v28, v29 == lastPresentedOrientation))
    {
      v31 = 0;
    }

    else
    {
      self->_rotatingFromOrientation = self->_lastPresentedOrientation;
      v44 = objc_loadWeakRetained(&self->_svc);
      [(UISplitViewControllerClassicImpl *)self willRotateToInterfaceOrientation:v44[32] duration:0.0];

      v45 = objc_loadWeakRetained(&self->_svc);
      [(UISplitViewControllerClassicImpl *)self willAnimateRotationToInterfaceOrientation:v45[32] duration:0.0];

      v31 = 1;
    }
  }

  else
  {
    v31 = 0;
  }

  p_svc = &self->_svc;
  v47 = objc_loadWeakRetained(&self->_svc);
  masterViewController2 = [v47 masterViewController];
  _popoverController = [masterViewController2 _popoverController];
  if (([_popoverController isPopoverVisible] & 1) == 0)
  {

    if (!v31)
    {
      goto LABEL_35;
    }

LABEL_33:
    if ((*&self->_splitViewControllerFlags & 0x2E0) == 0x220)
    {
      v52 = objc_loadWeakRetained(&self->_delegate);
      v53 = objc_loadWeakRetained(p_svc);
      masterViewController3 = [v53 masterViewController];
      [v52 splitViewController:v53 willShowViewController:masterViewController3 invalidatingBarButtonItem:self->_barButtonItem];
    }

    goto LABEL_35;
  }

  v50 = objc_loadWeakRetained(p_svc);
  _isRotating = [v50 _isRotating];

  if (!_isRotating)
  {
    goto LABEL_36;
  }

  if (v31)
  {
    goto LABEL_33;
  }

LABEL_35:
  [(UISplitViewControllerClassicImpl *)self _updateMasterViewControllerFrame];
LABEL_36:
  if (v31)
  {
    [(UISplitViewControllerClassicImpl *)self didRotateFromInterfaceOrientation:self->_lastPresentedOrientation];
    self->_rotatingFromOrientation = 0;
    v55 = objc_loadWeakRetained(p_svc);
    self->_lastPresentedOrientation = [v55 interfaceOrientation];
  }

  [(UISplitViewControllerClassicImpl *)self _detailViewFrame];
  v60 = v56;
  v61 = v57;
  v62 = v58;
  v63 = v59;
  if (!self->_useChangingBoundsLayout)
  {
    [(UISplitViewControllerClassicImpl *)self _setDetailViewFrame:v56, v57, v58, v59];
  }

  v64 = objc_loadWeakRetained(p_svc);
  _isRotating2 = [v64 _isRotating];

  if (_isRotating2)
  {
    v66 = objc_loadWeakRetained(p_svc);
    detailViewController3 = [v66 detailViewController];
    childModalViewController = [detailViewController3 childModalViewController];

    v68 = childModalViewController;
    if (childModalViewController)
    {
      while (1)
      {
        presentationController = [v68 presentationController];
        shouldPresentInFullscreen = [presentationController shouldPresentInFullscreen];

        if (shouldPresentInFullscreen)
        {
          break;
        }

        view3 = [v74 view];
        [view3 setFrame:{v60, v61, v62, v63}];

        presentedViewController = [v74 presentedViewController];

        v68 = presentedViewController;
        if (!presentedViewController)
        {
          goto LABEL_46;
        }
      }

      v68 = v74;
LABEL_46:
    }
  }
}

void *__60__UISplitViewControllerClassicImpl___viewWillLayoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _masterViewFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
  v11 = [WeakRetained masterViewController];
  [v11 _updateControlledViewsToFrame:{v3, v5, v7, v9}];

  v12 = *(a1 + 32);
  result = *(v12 + 376);
  if (result && *(v12 + 384))
  {
    [result frame];
    v15 = v14;
    v17 = v16;
    if ([*(a1 + 32) _layoutPrimaryOnRight])
    {
      v26.origin.x = v3;
      v26.origin.y = v5;
      v26.size.width = v7;
      v26.size.height = v9;
      MaxX = CGRectGetMaxX(v26);
    }

    else
    {
      MaxX = v3 - v15;
    }

    v19 = v17 + 50.0;
    v20 = *(a1 + 32);
    v21 = v20[160];
    v22 = [v20 _layoutPrimaryOnRight];
    v23 = v5;
    if (v22 != v21 < 0)
    {
      v27.origin.x = v3;
      v27.origin.y = v5;
      v27.size.width = v7;
      v27.size.height = v9;
      v23 = CGRectGetMaxY(v27) - v19;
    }

    [*(*(a1 + 32) + 376) setFrame:{MaxX, v23, v15, v19}];
    v24 = *(*(a1 + 32) + 384);

    return [v24 setFrame:{v3, v5, v7, v9}];
  }

  return result;
}

- (void)viewDidLayoutSubviews
{
  _masterFocusContainerGuide = [(UISplitViewControllerClassicImpl *)self _masterFocusContainerGuide];

  if (_masterFocusContainerGuide)
  {
    _masterFocusContainerGuide2 = [(UISplitViewControllerClassicImpl *)self _masterFocusContainerGuide];
    [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
    [_masterFocusContainerGuide2 _setManualLayoutFrame:?];
  }

  _detailFocusContainerGuide = [(UISplitViewControllerClassicImpl *)self _detailFocusContainerGuide];

  if (_detailFocusContainerGuide)
  {
    _detailFocusContainerGuide2 = [(UISplitViewControllerClassicImpl *)self _detailFocusContainerGuide];
    [(UISplitViewControllerClassicImpl *)self _detailViewFrame];
    [_detailFocusContainerGuide2 _setManualLayoutFrame:?];
  }
}

- (void)_getRotationContentSettings:(id *)settings
{
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v6 = 14;
  }

  else
  {
    v6 = 15;
  }

  settings->var6 = v6;
}

- (int64_t)_medusaState
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  interfaceOrientation = [WeakRetained interfaceOrientation];
  v5 = objc_loadWeakRetained(&self->_svc);
  view = [v5 view];
  [view bounds];
  v8 = [(UISplitViewControllerClassicImpl *)self _medusaStateForOrientation:interfaceOrientation viewWidth:v7];

  return v8;
}

- (int64_t)_medusaStateForOrientation:(int64_t)orientation viewWidth:(double)width
{
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    _screen = [WeakRetained _screen];

    v11 = objc_loadWeakRetained(&self->_svc);
    _window = [v11 _window];

    _windowHostingScene = [_window _windowHostingScene];
    _sceneSessionRoleIsCarPlayOrNonInteractiveExternal = [_windowHostingScene _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

    if (_sceneSessionRoleIsCarPlayOrNonInteractiveExternal)
    {
      goto LABEL_15;
    }

    [_screen _boundsForInterfaceOrientation:orientation];
    v16 = v15;
    v18 = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [_window bounds];
      v20 = v19;
      v22 = v21;
      interfaceOrientation = [_window interfaceOrientation];
      if (orientation && interfaceOrientation && orientation < 3 != ([_window interfaceOrientation] - 1) < 2)
      {
        v20 = v22;
      }
    }

    else
    {
      _windowHostingScene2 = [_window _windowHostingScene];
      if (_windowHostingScene2)
      {
        _windowHostingScene3 = [_window _windowHostingScene];
        [_windowHostingScene3 _boundsForInterfaceOrientation:orientation];
        v20 = v27;
      }

      else
      {
        [_screen _boundsForInterfaceOrientation:orientation];
        v20 = v28;
      }
    }

    if (v20 >= v16)
    {
LABEL_15:
      v24 = 0;
LABEL_16:

      return v24;
    }

    v30 = fmax(v16, v18);
    if (v30 > 1210.0)
    {
      if ((orientation - 5) >= 0xFFFFFFFFFFFFFFFELL && v16 * 0.3 < width && v16 * 0.5 >= width)
      {
        v24 = 1;
        goto LABEL_16;
      }
    }

    else if (v30 <= 1112.0 && (orientation - 5) >= 0xFFFFFFFFFFFFFFFELL && v16 * 0.5 < width)
    {
      v24 = 2;
      goto LABEL_16;
    }

    v24 = 3;
    goto LABEL_16;
  }

  return 0;
}

- (id)_allContainedViewControllers
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  viewControllers = [WeakRetained viewControllers];

  return viewControllers;
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  viewControllers = [WeakRetained viewControllers];

  _UISaveReferencedChildViewControllers(viewControllers, 0);
  v7 = objc_loadWeakRetained(&self->_svc);
  _window = [v7 _window];

  if (_window)
  {
    v9 = [UIApp _sceneInterfaceOrientationFromWindow:_window];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_loadWeakRetained(&self->_svc);
  [coderCopy encodeInteger:objc_msgSend(v10 forKey:{"displayMode"), @"SplitViewControllerDisplayMode"}];

  [coderCopy encodeInteger:v9 forKey:@"SplitViewInterfaceOrientation"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = viewControllers;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        _restorationIdentifierPath = [v16 _restorationIdentifierPath];

        if (!_restorationIdentifierPath)
        {
          if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SViewControlle.isa, "[UISplitViewControllerClassicImpl encodeRestorableStateWithCoder:]", v16, v18);
          }

          [UIApp ignoreSnapshotOnNextApplicationLaunch];
          goto LABEL_16;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _window = [WeakRetained _window];

  if (_window)
  {
    v7 = [UIApp _sceneInterfaceOrientationFromWindow:_window];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIApplicationStateRestorationUserInterfaceIdiom"];
  if (userInterfaceIdiom == [v10 intValue])
  {
    v11 = objc_loadWeakRetained(&self->_svc);
    [v11 displayMode];

    if (userInterfaceIdiom == 1)
    {
      v12 = [coderCopy decodeBoolForKey:@"SplitViewControllerShowingMasterView"];
    }

    else
    {
      v12 = 0;
    }

    if ([coderCopy containsValueForKey:@"SplitViewControllerDisplayMode"] && objc_msgSend(coderCopy, "containsValueForKey:", @"SplitViewInterfaceOrientation"))
    {
      if ([coderCopy decodeIntegerForKey:@"SplitViewInterfaceOrientation"] != v7)
      {
        goto LABEL_36;
      }

      v18 = [coderCopy decodeIntegerForKey:@"SplitViewControllerDisplayMode"];
    }

    else
    {
      if ((v7 - 1) < 2)
      {
        v19 = v12;
      }

      else
      {
        v19 = 0;
      }

      if (v19 != 1)
      {
        goto LABEL_36;
      }

      v18 = 3;
    }

    v20 = objc_loadWeakRetained(&self->_svc);
    displayMode = [v20 displayMode];

    if (v18 != displayMode)
    {
      v22 = objc_loadWeakRetained(&self->_svc);
      if ([v22 isViewLoaded])
      {
        v23 = objc_loadWeakRetained(&self->_svc);
        view = [v23 view];
        window = [view window];

        if (window)
        {
          [(UISplitViewControllerClassicImpl *)self _changeToDisplayMode:v18 forCurrentOrientationOnly:1];
          goto LABEL_36;
        }
      }

      else
      {
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__UISplitViewControllerClassicImpl_decodeRestorableStateWithCoder___block_invoke;
      block[3] = &unk_1E70F32F0;
      block[4] = self;
      block[5] = v18;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    if (userInterfaceIdiom)
    {
      v13 = @"Unspecified";
    }

    else
    {
      v13 = @"iPhone";
    }

    if (userInterfaceIdiom == 1)
    {
      v13 = @"iPad";
    }

    v14 = v13;
    integerValue = [v10 integerValue];
    if (integerValue)
    {
      v16 = @"Unspecified";
    }

    else
    {
      v16 = @"iPhone";
    }

    if (integerValue == 1)
    {
      v16 = @"iPad";
    }

    v17 = v16;
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SSkippingCheck.isa, "[UISplitViewControllerClassicImpl decodeRestorableStateWithCoder:]", v14, v17);
    }
  }

LABEL_36:
}

void __67__UISplitViewControllerClassicImpl_decodeRestorableStateWithCoder___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 312));
  if ([WeakRetained isViewLoaded])
  {
    v2 = objc_loadWeakRetained((*(a1 + 32) + 312));
    v3 = [v2 view];
    v4 = [v3 window];

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);

      [v5 _changeToDisplayMode:v6 forCurrentOrientationOnly:1];
    }
  }

  else
  {
  }
}

- (id)_additionalViewControllersToCheckForUserActivity
{
  v12[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  viewControllers = [WeakRetained viewControllers];

  v5 = [viewControllers count];
  if (v5 == 2)
  {
    v7 = [viewControllers objectAtIndexedSubscript:1];
    v12[0] = v7;
    v8 = [viewControllers objectAtIndexedSubscript:0];
    v12[1] = v8;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  }

  else if (v5 == 1)
  {
    v6 = viewControllers;
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_svc);
    viewControllers2 = [v9 viewControllers];
    NSLog(&cfstr_SWarningChecki.isa, "[UISplitViewControllerClassicImpl _additionalViewControllersToCheckForUserActivity]", viewControllers2);

    v6 = 0;
  }

  return v6;
}

- (id)_effectiveActivityItemsConfiguration
{
  viewControllers = [(UISplitViewControllerClassicImpl *)self viewControllers];
  lastObject = [viewControllers lastObject];
  _effectiveActivityItemsConfiguration = [lastObject _effectiveActivityItemsConfiguration];

  return _effectiveActivityItemsConfiguration;
}

- (id)_deepestActionResponder
{
  viewControllers = [(UISplitViewControllerClassicImpl *)self viewControllers];
  lastObject = [viewControllers lastObject];

  return lastObject;
}

- (id)_nextVisibleViewControllerForResponderAfterChildViewController:(id)controller
{
  controllerCopy = controller;
  if (![(UISplitViewControllerClassicImpl *)self isCollapsed]&& ([(UISplitViewControllerClassicImpl *)self detailViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == controllerCopy))
  {
    masterViewController = [(UISplitViewControllerClassicImpl *)self masterViewController];
  }

  else
  {
    masterViewController = 0;
  }

  return masterViewController;
}

- (UISplitViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end