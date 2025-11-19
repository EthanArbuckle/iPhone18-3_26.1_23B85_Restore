@interface UISplitViewControllerClassicImpl
+ (double)_defaultGutterWidthInView:(id)a3;
- (BOOL)_canDisplayHostedMaster;
- (BOOL)_defersUpdateDelegateHiddenMasterAspectRatios;
- (BOOL)_disableAutomaticKeyboardBehavior;
- (BOOL)_effectivePresentsWithGesture;
- (BOOL)_hasMasterViewController;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_hidesMasterViewInCurrentOrientation;
- (BOOL)_hidesMasterViewInOrientation:(int64_t)a3 medusaState:(int64_t)a4;
- (BOOL)_iPhoneShouldUseOverlayIfRegularWidth;
- (BOOL)_iPhoneShouldUseOverlayInCurrentEnvironment;
- (BOOL)_isBasicallyHorizontallyCompact;
- (BOOL)_isMasterViewShown;
- (BOOL)_isTransitioningFromCollapsedToSeparated;
- (BOOL)_layoutPrimaryOnRight;
- (BOOL)_shouldPreventAutorotation;
- (BOOL)_shouldUseRelativeInsets;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hidesMasterViewInLandscape;
- (BOOL)hidesMasterViewInPortrait;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGRect)_detailViewFrame;
- (CGRect)_detailViewFrame:(CGRect)a3;
- (CGRect)_frameForChildContentContainer:(id)a3;
- (CGRect)_masterViewFrame;
- (CGRect)_masterViewFrame:(CGRect)a3;
- (CGSize)_contentSizeForChildViewController:(id)a3 inPopoverController:(id)a4;
- (CGSize)_preferredContentSize;
- (CGSize)_screenSizeInMainScene:(BOOL)a3;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NSArray)viewControllers;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UISplitViewController)splitViewController;
- (UISplitViewControllerClassicImpl)initWithSplitViewController:(id)a3;
- (UISplitViewControllerDelegate)delegate;
- (double)_contentMarginForChildViewController:(id)a3;
- (double)_defaultMaximumPrimaryColumnWidthForSize:(CGSize)a3;
- (double)_primaryColumnWidthForSize:(CGSize)a3;
- (double)_primaryColumnWidthForSize:(CGSize)a3 isCompact:(BOOL)a4;
- (double)effectiveMinimumPrimaryColumnWidth;
- (double)primaryColumnWidth;
- (float)gutterWidth;
- (id)_additionalViewControllersToCheckForUserActivity;
- (id)_allContainedViewControllers;
- (id)_childContainingSender:(id)a3;
- (id)_childViewControllerForSpokenContent;
- (id)_childViewControllersToSendViewWillTransitionToSize;
- (id)_deepestActionResponder;
- (id)_deepestUnambiguousResponder;
- (id)_defaultDisplayModes;
- (id)_effectiveActivityItemsConfiguration;
- (id)_multitaskingDragExclusionRects;
- (id)_nextVisibleViewControllerForResponderAfterChildViewController:(id)a3;
- (id)_orderedPreferredFocusedViewControllers;
- (id)_overridingPreferredFocusEnvironment;
- (id)_primaryContentResponder;
- (id)_primaryViewControllerForCollapsing;
- (id)_primaryViewControllerForExpanding;
- (id)_secondaryViewControllerForCollapsing;
- (id)_separateSecondaryViewControllerFromPrimaryViewController:(id)a3;
- (id)_topLevelViewControllerForColumn:(int64_t)a3;
- (id)childViewControllerForStatusBarStyle;
- (id)detailViewController;
- (id)displayModeButtonItem;
- (id)masterViewController;
- (id)preferredFocusEnvironments;
- (id)preferredFocusedView;
- (int64_t)_currentInterfaceIdiom;
- (int64_t)_defaultTargetDisplayMode;
- (int64_t)_effectivePrimaryHidingState;
- (int64_t)_internalModeForTraitCollection:(id)a3 orientation:(int64_t)a4 viewSize:(CGSize)a5 medusaState:(int64_t)a6;
- (int64_t)_medusaState;
- (int64_t)_medusaStateForOrientation:(int64_t)a3 viewWidth:(double)a4;
- (int64_t)_prepareToTransitionToViewSize:(CGSize)a3 fromOrientation:(int64_t)a4 toOrientation:(int64_t)a5 duration:(double)a6;
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
- (void)_animateTransitionFromTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
- (void)_animateTransitionToOrientation:(int64_t)a3 duration:(double)a4 masterChange:(int64_t)a5;
- (void)_cacheEffectiveTargetDisplayMode;
- (void)_changeToDisplayMode:(int64_t)a3 forCurrentOrientationOnly:(BOOL)a4;
- (void)_collapseMaster:(id)a3 andDetail:(id)a4 withTransitionCoordinator:(id)a5;
- (void)_collapseMasterAndDetailWithTransitionCoordinator:(id)a3;
- (void)_collapseSecondaryViewController:(id)a3 ontoPrimaryViewController:(id)a4;
- (void)_commonInit;
- (void)_completeTransitionFromOrientation:(int64_t)a3 masterChange:(int64_t)a4;
- (void)_descendantWillPresentViewController:(id)a3 modalSourceViewController:(id)a4 presentationController:(id)a5 animated:(BOOL)a6;
- (void)_didChangeToFirstResponder:(id)a3;
- (void)_didTransitionTraitCollection;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)_dismissMasterViewController:(BOOL)a3;
- (void)_displayModeBarButtonItemWasUsedForFirstTime:(id)a3;
- (void)_displayModeDidChange;
- (void)_displayModeWillChangeTo:(int64_t)a3;
- (void)_getRotationContentSettings:(id *)a3;
- (void)_initWithCoder:(id)a3;
- (void)_layoutContainerViewDidMoveToWindow:(id)a3;
- (void)_layoutContainerViewWillMoveToWindow:(id)a3;
- (void)_loadNewSubviews:(id)a3;
- (void)_marginInfoForChild:(id)a3 leftMargin:(double *)a4 rightMargin:(double *)a5;
- (void)_popoverController:(id)a3 didChangeFromVisible:(BOOL)a4;
- (void)_popoverController:(id)a3 willChangeToVisible:(BOOL)a4;
- (void)_prepareForCompactLayout;
- (void)_presentMasterViewController:(BOOL)a3;
- (void)_removeCollapsingSnapshotViews;
- (void)_separateMasterAndDetailWithTransitionCoordinator:(id)a3;
- (void)_setCollapsedState:(int64_t)a3;
- (void)_setDelegateHidesMaster:(BOOL)a3 inAspectRatio:(int64_t)a4;
- (void)_setDetailViewFrame:(CGRect)a3;
- (void)_setDisplayModeButtonItemTitle:(id)a3;
- (void)_setMasterOverrideTraitCollectionActive:(BOOL)a3;
- (void)_setUsesExtraWidePrimaryColumn:(BOOL)a3;
- (void)_setupHiddenPopoverControllerWithViewController:(id)a3;
- (void)_setupUnderBarSeparatorView;
- (void)_showMasterViewAnimated:(BOOL)a3;
- (void)_triggerDisplayModeAction:(id)a3;
- (void)_updateChildContentMargins;
- (void)_updateDelegateHiddenMasterAspectRatios;
- (void)_updateDisplayModeButtonItem;
- (void)_updateMasterViewControllerFrame;
- (void)_updateTargetDisplayMode;
- (void)_viewControllerHiding:(id)a3;
- (void)_willBeginSnapshotSession;
- (void)_willShowCollapsedDetailViewController:(id)a3 inTargetController:(id)a4;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadView;
- (void)popoverWillAppear:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setGutterWidth:(float)a3;
- (void)setHidesMasterViewInPortrait:(BOOL)a3;
- (void)setMaximumPrimaryColumnWidth:(double)a3;
- (void)setMinimumPrimaryColumnWidth:(double)a3;
- (void)setPreferredDisplayMode:(int64_t)a3;
- (void)setPreferredPrimaryColumnWidthFraction:(double)a3;
- (void)setPrefersOverlayInRegularWidthPhone:(BOOL)a3;
- (void)setPresentsWithGesture:(BOOL)a3;
- (void)setPrimaryEdge:(int64_t)a3;
- (void)setUsesDeviceOverlayPreferences:(BOOL)a3;
- (void)setViewControllers:(id)a3;
- (void)showDetailViewController:(id)a3 sender:(id)a4;
- (void)showViewController:(id)a3 sender:(id)a4;
- (void)snapshotAllViews;
- (void)snapshotForRotationFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 masterChange:(int64_t)a5;
- (void)snapshotMasterView;
- (void)toggleMasterVisible:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)unloadViewForced:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UISplitViewControllerClassicImpl

- (UISplitViewControllerClassicImpl)initWithSplitViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UISplitViewControllerClassicImpl;
  v5 = [(_UISplitViewControllerBaseImpl *)&v8 initWithSplitViewController:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_svc, v4);
  }

  return v6;
}

- (CGRect)_frameForChildContentContainer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained viewControllers];

  v7 = [v6 count];
  if (v7)
  {
    v8 = [v6 objectAtIndexedSubscript:0];
    if (v7 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v6 objectAtIndexedSubscript:1];
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8 == v4)
  {
    [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
LABEL_11:
    v12 = v19;
    v14 = v20;
    v16 = v21;
    v18 = v22;
    goto LABEL_12;
  }

  if (v7 == v4)
  {
    [(UISplitViewControllerClassicImpl *)self _detailViewFrame];
    goto LABEL_11;
  }

  v9 = objc_loadWeakRetained(&self->_svc);
  v10 = [v9 view];
  [v10 bounds];
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
    v4 = [v3 userInterfaceIdiom];

    if (!v4)
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

- (void)_initWithCoder:(id)a3
{
  v11 = a3;
  if ([v11 containsValueForKey:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction"])
  {
    [v11 decodeDoubleForKey:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction"];
    self->_preferredPrimaryColumnWidthFraction = v4;
  }

  if ([v11 containsValueForKey:@"UISplitViewControllerMaximumPrimaryColumnWidth"])
  {
    [v11 decodeDoubleForKey:@"UISplitViewControllerMaximumPrimaryColumnWidth"];
    self->_maximumPrimaryColumnWidth = v5;
  }

  if ([v11 containsValueForKey:@"UISplitViewControllerMinimumPrimaryColumnWidth"])
  {
    [v11 decodeDoubleForKey:@"UISplitViewControllerMinimumPrimaryColumnWidth"];
    self->_minimumPrimaryColumnWidth = v6;
  }

  if ([v11 containsValueForKey:@"UISplitViewControllerPrimaryEdge"])
  {
    self->_primaryEdge = [v11 decodeIntegerForKey:@"UISplitViewControllerPrimaryEdge"];
  }

  if ([v11 containsValueForKey:@"UISplitViewControllerPresentsWithGesture"])
  {
    self->_presentsWithGesture = [v11 decodeBoolForKey:@"UISplitViewControllerPresentsWithGesture"];
  }

  if ([v11 containsValueForKey:@"UISplitViewControllerUsesDeviceOverlayPreferences"])
  {
    v7 = [v11 decodeBoolForKey:@"UISplitViewControllerUsesDeviceOverlayPreferences"];
    v8 = 0x8000000000;
    if (!v7)
    {
      v8 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFF7FFFFFFFFFLL | v8);
  }

  if ([v11 containsValueForKey:@"UISplitViewControllerUsesExtraWidePrimaryColumn"])
  {
    v9 = [v11 decodeBoolForKey:@"UISplitViewControllerUsesExtraWidePrimaryColumn"];
    v10 = 0x4000000000;
    if (!v9)
    {
      v10 = 0;
    }

    self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFBFFFFFFFFFLL | v10);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_preferredPrimaryColumnWidthFraction != -3.40282347e38)
  {
    [v4 encodeDouble:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction" forKey:?];
    v4 = v5;
  }

  if (self->_maximumPrimaryColumnWidth != -3.40282347e38)
  {
    [v5 encodeDouble:@"UISplitViewControllerMaximumPrimaryColumnWidth" forKey:?];
    v4 = v5;
  }

  if (self->_minimumPrimaryColumnWidth != -3.40282347e38)
  {
    [v5 encodeDouble:@"UISplitViewControllerMinimumPrimaryColumnWidth" forKey:?];
    v4 = v5;
  }

  [v4 encodeInteger:self->_primaryEdge forKey:@"UISplitViewControllerPrimaryEdge"];
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

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 removeObserver:self name:@"_UIAlertWillAppearNotification" object:0];

  v12.receiver = self;
  v12.super_class = UISplitViewControllerClassicImpl;
  [(UISplitViewControllerClassicImpl *)&v12 dealloc];
}

- (UISplitViewController)splitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);

  return WeakRetained;
}

- (void)_loadNewSubviews:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v22 = [WeakRetained masterViewController];

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
        if (!v4 || ([v4 containsObject:{*(*(&v28 + 1) + 8 * v8), v20}] & 1) == 0)
        {
          v10 = [v9 view];
          if (v22 == v9)
          {
            v12 = objc_loadWeakRetained(&self->_svc);
            v11 = [v12 displayMode] == 2;
          }

          else
          {
            v11 = 1;
          }

          [v10 setAutoresizingMask:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 setClipsToBounds:1];
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
          v16 = [v15 view];
          [v16 insertSubview:v10 atIndex:0];

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

- (void)unloadViewForced:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained mutableChildViewControllers];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) unloadViewIfReloadable];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)setPrefersOverlayInRegularWidthPhone:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setUsesDeviceOverlayPreferences:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (BOOL)_iPhoneShouldUseOverlayInCurrentEnvironment
{
  v3 = [(UISplitViewControllerClassicImpl *)self usesDeviceOverlayPreferences]&& [(UISplitViewControllerClassicImpl *)self prefersOverlayInRegularWidthPhone]|| +[UISplitViewController _automaticDisplayModeOnPhoneUsesOverlayInLandscapeDefaultValue];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v5 = ([WeakRetained presentsWithGesture] & 1) != 0 || -[UISplitViewControllerDisplayModeBarButtonItem _hasBeenUsed](self->_displayModeButtonItem, "_hasBeenUsed");

  return v3 && v5;
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
  v3 = [WeakRetained traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != -1)
  {
    return v4;
  }

  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  return v7;
}

- (BOOL)_isMasterViewShown
{
  if (((*&self->_splitViewControllerFlags >> 20) & 3uLL) - 1 >= 2)
  {
    v4 = [(UISplitViewControllerClassicImpl *)self _effectivePrimaryHidingState];
    if (v4 != 2 && (v4 || ((v5 = [(UISplitViewControllerClassicImpl *)self _currentInterfaceIdiom], v5 == 1) || !v5 && [(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayIfRegularWidth]) && [(UISplitViewControllerClassicImpl *)self _hidesMasterViewInCurrentOrientation]))
    {
      v2 = [(UISplitViewControllerClassicImpl *)self _isMasterPopoverVisible];
      if (v2)
      {
        LOBYTE(v2) = ![(UIPopoverController *)self->_hiddenPopoverController _isDismissing];
      }
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  return v2;
}

- (void)_setDelegateHidesMaster:(BOOL)a3 inAspectRatio:(int64_t)a4
{
  if (a3)
  {
    v4 = *&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFFF3 | ((4 << a4) | *&self->_splitViewControllerFlags) & 0xC;
    self->_splitViewControllerFlags = v4;
    v5 = 1 << a4;
  }

  else
  {
    v5 = 1 << a4;
    v4 = *&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFFF3 | *&self->_splitViewControllerFlags & (4 * ~(1 << a4)) & 0xC;
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
    v15 = [WeakRetained masterViewController];

    if ([(UISplitViewControllerClassicImpl *)self _isHidesMasterInPortraitInvalid])
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_loadWeakRetained(&self->_svc);
      v7 = 1;
      if (([v5 splitViewController:v6 shouldHideViewController:v15 inOrientation:1] & 1) == 0)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_loadWeakRetained(&self->_svc);
        v7 = [v8 splitViewController:v9 shouldHideViewController:v15 inOrientation:2];
      }

      [(UISplitViewControllerClassicImpl *)self _setDelegateHidesMaster:v7 inAspectRatio:1];
    }

    if ([(UISplitViewControllerClassicImpl *)self _isHidesMasterInLandscapeInvalid])
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      v11 = objc_loadWeakRetained(&self->_svc);
      if ([v10 splitViewController:v11 shouldHideViewController:v15 inOrientation:4])
      {
        v12 = 1;
      }

      else
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_loadWeakRetained(&self->_svc);
        v12 = [v13 splitViewController:v14 shouldHideViewController:v15 inOrientation:3];
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
        v3 = 0;
      }

      else
      {
        v3 = [(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment];
      }

      [(UISplitViewControllerClassicImpl *)self _setDelegateHidesMaster:v3 inAspectRatio:0];
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
      v4 = [WeakRetained masterViewController];
      [(UISplitViewControllerClassicImpl *)self _setupHiddenPopoverControllerWithViewController:v4];
    }

    if (self->_popoverPresentationGestureRecognizer || ([(UIPopoverController *)self->_hiddenPopoverController _gestureRecognizerForPresentationFromEdge:[(UISplitViewControllerClassicImpl *)self _targetEdgeForPopover]], v5 = objc_claimAutoreleasedReturnValue(), popoverPresentationGestureRecognizer = self->_popoverPresentationGestureRecognizer, self->_popoverPresentationGestureRecognizer = v5, popoverPresentationGestureRecognizer, self->_popoverPresentationGestureRecognizer))
    {
      v7 = objc_loadWeakRetained(&self->_svc);
      v8 = [v7 view];
      [v8 addGestureRecognizer:self->_popoverPresentationGestureRecognizer];

      v9 = [(UISplitViewControllerClassicImpl *)self _effectiveTargetDisplayMode];
      if (v9 == 1)
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

      if (v9 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if (self->_popoverPresentationGestureRecognizer)
  {
    v11 = objc_loadWeakRetained(&self->_svc);
    v12 = [v11 view];
    [v12 removeGestureRecognizer:self->_popoverPresentationGestureRecognizer];

    v13 = self->_popoverPresentationGestureRecognizer;
    self->_popoverPresentationGestureRecognizer = 0;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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
    v41 = [v40 _hasAppeared];

    if (v41)
    {
      [(UISplitViewControllerClassicImpl *)self _addOrRemovePopoverPresentationGestureRecognizer];
    }

    v42 = objc_loadWeakRetained(&self->_svc);
    v43 = [v42 isViewLoaded];

    if (v43)
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

- (CGRect)_masterViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UISplitViewControllerClassicImpl *)self _primaryColumnWidthForSize:a3.size.width, a3.size.height];
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
  v4 = [WeakRetained view];
  [v4 bounds];
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

- (CGRect)_detailViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v4 = [WeakRetained view];
  [v4 bounds];
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

- (void)_setupHiddenPopoverControllerWithViewController:(id)a3
{
  v4 = a3;
  if (!self->_hiddenPopoverController)
  {
    v12 = v4;
    if (!dyld_program_sdk_at_least() || (v5 = objc_loadWeakRetained(&self->_svc), v6 = [v5 childViewControllersCount], v5, v4 = v12, v6 >= 2))
    {
      v7 = [[UIPopoverController alloc] _initWithContentViewController:v12 popoverControllerStyle:1];
      hiddenPopoverController = self->_hiddenPopoverController;
      self->_hiddenPopoverController = v7;

      v9 = self->_hiddenPopoverController;
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      [(UIPopoverController *)v9 _setManagingSplitViewController:WeakRetained];

      [v12 _setPopoverController:0];
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 addObserver:self selector:sel_popoverWillAppear_ name:@"_UIAlertWillAppearNotification" object:self->_hiddenPopoverController];

      [(UIPopoverController *)self->_hiddenPopoverController setPopoverBackgroundViewClass:objc_opt_class()];
      [(UISplitViewControllerClassicImpl *)self _addOrRemovePopoverPresentationGestureRecognizer];
      v4 = v12;
    }
  }
}

- (void)_viewControllerHiding:(id)a3
{
  v14 = a3;
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
      v6 = [v14 title];
      v7 = [(UIBarButtonItem *)v5 initWithTitle:v6 style:1 target:self action:sel_toggleMasterVisible_];
      barButtonItem = self->_barButtonItem;
      self->_barButtonItem = v7;

      v9 = [v14 title];
      v10 = [v9 copy];
      buttonTitle = self->_buttonTitle;
      self->_buttonTitle = v10;
    }

    [(UISplitViewControllerClassicImpl *)self _setupHiddenPopoverControllerWithViewController:v14];
    if ((*(&self->_splitViewControllerFlags + 1) & 4) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v13 = objc_loadWeakRetained(&self->_svc);
      [WeakRetained splitViewController:v13 willHideViewController:v14 withBarButtonItem:self->_barButtonItem forPopoverController:self->_hiddenPopoverController];
    }
  }

LABEL_9:
}

- (double)primaryColumnWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  [(UISplitViewControllerClassicImpl *)self _primaryColumnWidthForSize:v6, v8];
  return result;
}

- (CGSize)_screenSizeInMainScene:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained _window];

  v7 = objc_loadWeakRetained(&self->_svc);
  v8 = [v7 _screen];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
LABEL_5:
    [v9 bounds];
    goto LABEL_6;
  }

  v9 = v8;
  if (!v3)
  {
    goto LABEL_5;
  }

  [v8 _interfaceOrientedMainSceneBounds];
LABEL_6:
  v12 = v10;
  v13 = v11;

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)_setUsesExtraWidePrimaryColumn:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
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

- (double)_defaultMaximumPrimaryColumnWidthForSize:(CGSize)a3
{
  width = a3.width;
  [(UISplitViewControllerClassicImpl *)self _screenSizeInMainScene:0, a3.width, a3.height];
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
        v21 = [v20 displayMode];

        if (v21 == 2)
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
        v14 = [v13 _usesExtraWidePrimaryColumn];

        v15 = 414.0;
        if (!v11)
        {
          v15 = 375.0;
        }

        if (v14)
        {
          return v15;
        }
      }
    }
  }

  else
  {
    v16 = objc_loadWeakRetained(&self->_svc);
    v17 = [v16 preferredDisplayMode];

    if (v17 == 2)
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

- (double)_primaryColumnWidthForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UISplitViewControllerClassicImpl *)self _isBasicallyHorizontallyCompact];

  [(UISplitViewControllerClassicImpl *)self _primaryColumnWidthForSize:v6 isCompact:width, height];
  return result;
}

- (double)_primaryColumnWidthForSize:(CGSize)a3 isCompact:(BOOL)a4
{
  width = a3.width;
  if (a4)
  {
    return width;
  }

  height = a3.height;
  if (!dyld_program_sdk_at_least())
  {
    return 320.0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained preferredPrimaryColumnWidthFraction];
  v9 = v8;

  v10 = +[UIDevice currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) != 1 || !dyld_program_sdk_at_least())
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
    v17 = [v16 displayMode];

    if (v17 == 2)
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
    v19 = [v18 viewIfLoaded];
    [v19 safeAreaInsets];
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

- (void)_setCollapsedState:(int64_t)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained isCollapsed];

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFCFFFFFLL | ((v3 & 3) << 20));
  v7 = objc_loadWeakRetained(&self->_svc);
  LODWORD(WeakRetained) = [v7 isCollapsed];

  if (v6 != WeakRetained)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = objc_loadWeakRetained(&self->_svc);
    [v9 postNotificationName:@"UIViewControllerShowDetailTargetDidChangeNotification" object:v8];
  }
}

- (id)_primaryViewControllerForCollapsing
{
  if ((*(&self->_splitViewControllerFlags + 2) & 4) == 0 || (v3 = objc_loadWeakRetained(&self->_delegate), v4 = objc_loadWeakRetained(&self->_svc), [v3 primaryViewControllerForCollapsingSplitViewController:v4], v5 = objc_claimAutoreleasedReturnValue(), v4, v3, !v5))
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v5 = [WeakRetained masterViewController];
  }

  return v5;
}

- (id)_primaryViewControllerForExpanding
{
  if ((*(&self->_splitViewControllerFlags + 2) & 8) == 0 || (v3 = objc_loadWeakRetained(&self->_delegate), v4 = objc_loadWeakRetained(&self->_svc), [v3 primaryViewControllerForExpandingSplitViewController:v4], v5 = objc_claimAutoreleasedReturnValue(), v4, v3, !v5))
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v5 = [WeakRetained masterViewController];
  }

  return v5;
}

- (id)_secondaryViewControllerForCollapsing
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained detailViewController];

  return v3;
}

- (void)_collapseSecondaryViewController:(id)a3 ontoPrimaryViewController:(id)a4
{
  v23 = a3;
  v6 = a4;
  [v6 _setAllowNestedNavigationControllers:1];
  if ((self->_suspendedState - 3) > 1)
  {
    if ((*(&self->_splitViewControllerFlags + 2) & 1) == 0)
    {
      goto LABEL_13;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_loadWeakRetained(&self->_svc);
    v16 = [WeakRetained splitViewController:v15 collapseSecondaryViewController:v23 ontoPrimaryViewController:v6];

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
          v13 = [v11 splitViewController:v12 collapseSecondaryViewController:v23 ontoPrimaryViewController:v6];

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
    LOBYTE(v17) = [v18 _splitViewController:v19 collapseSecondaryViewController:v23 ontoPrimaryViewController:v6 forRestorationOfCollapsedWhileSuspendedWithPrimaryVisible:v17];

    if ((v17 & 1) == 0)
    {
LABEL_13:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v23 childViewControllers], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, !v21))
      {
        NSLog(&cfstr_SWhenCollapsin.isa, "[UISplitViewControllerClassicImpl _collapseSecondaryViewController:ontoPrimaryViewController:]", self, v6, v23);
      }

      else
      {
        v22 = objc_loadWeakRetained(&self->_svc);
        [v6 collapseSecondaryViewController:v23 forSplitViewController:v22];
      }
    }
  }

LABEL_16:
}

- (id)_separateSecondaryViewControllerFromPrimaryViewController:(id)a3
{
  v4 = a3;
  if (qword_1ED497E78 != -1)
  {
    dispatch_once(&qword_1ED497E78, &__block_literal_global_152);
  }

  if (_MergedGlobals_33 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v6 = [WeakRetained _existingView];
    v7 = [v6 window];
    v8 = [v7 rootViewController];
    v25 = [v8 _printHierarchy];
  }

  else
  {
    v25 = 0;
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
    v18 = [v4 separateSecondaryViewControllerForSplitViewController:v19];

    goto LABEL_20;
  }

  v16 = objc_loadWeakRetained(&self->_svc);
  v15 = [v10 splitViewController:v16 separateSecondaryViewControllerFromPrimaryViewController:v4];

  if (!v15)
  {
    goto LABEL_19;
  }

  v17 = [v15 parentViewController];

  v18 = v15;
  if (v17 == v4)
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

  v22 = v18;
  if (!v18)
  {
    v22 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
  }

  if (_MergedGlobals_33 == 1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__UISplitViewControllerClassicImpl__separateSecondaryViewControllerFromPrimaryViewController___block_invoke_2;
    aBlock[3] = &unk_1E7103B90;
    aBlock[4] = self;
    v28 = v18 == 0;
    v27 = v25;
    v23 = _Block_copy(aBlock);
    v23[2](v23, v4, @"primary");
    v23[2](v23, v22, @"secondary");
  }

  return v22;
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
  v3 = [WeakRetained childViewControllers];

  return v3;
}

- (void)setViewControllers:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v65 = a3;
  if ([v65 count] >= 2 && -[UISplitViewControllerClassicImpl _isCollapsed](self, "_isCollapsed"))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v60 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v84 = v65;
        _os_log_fault_impl(&dword_188A29000, v60, OS_LOG_TYPE_FAULT, "Too many view controllers assigned to collapsed split view controller: %@", buf, 0xCu);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &setViewControllers____s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v84 = v65;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Too many view controllers assigned to collapsed split view controller: %@", buf, 0xCu);
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained _existingView];
  v7 = [v6 window];
  v61 = v7 && !self->_useChangingBoundsLayout && [(UISplitViewControllerClassicImpl *)self _isBasicallyHorizontallyCompact];

  [(UISplitViewControllerClassicImpl *)self _setMasterOverrideTraitCollectionActive:0];
  v8 = objc_loadWeakRetained(&self->_svc);
  v62 = [v8 mutableChildViewControllers];

  v9 = objc_loadWeakRetained(&self->_svc);
  v64 = [v9 childViewControllers];

  if (v62 == v65)
  {
    [(UISplitViewControllerClassicImpl *)self _setMasterOverrideTraitCollectionActive:1];
  }

  else
  {
    v63 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v64];
    v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v65];
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
          v16 = [v64 indexOfObject:v15];
          if (v16 == [v65 indexOfObject:v15])
          {
            [v63 removeObject:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v12);
    }

    [v11 minusSet:v63];
    [v62 removeAllObjects];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v17 = v64;
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
            v23 = [v22 isViewLoaded];

            if (v23)
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

              v26 = [v21 view];
              [v26 removeFromSuperview];

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

              v29 = [v21 view];
              [v29 _setSpeedBumpEdges:0];
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
    v30 = v65;
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
            [v62 addObject:v34];
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
    v37 = [v36 isViewLoaded];

    if (v37)
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
      v42 = [v41 view];
      [v42 setNeedsLayout];
    }

    if ([v30 count])
    {
      barButtonItem = self->_barButtonItem;
      if (barButtonItem)
      {
        v44 = [(UIBarButtonItem *)barButtonItem title];
        v45 = [v44 isEqualToString:self->_buttonTitle];

        if (v45)
        {
          v46 = objc_loadWeakRetained(&self->_svc);
          v47 = [v46 masterViewController];
          v48 = [v47 title];
          [(UIBarButtonItem *)self->_barButtonItem setTitle:v48];

          v49 = [(UIBarButtonItem *)self->_barButtonItem title];
          v50 = [v49 copy];
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
      v53 = [v52 masterViewController];
      v54 = [v53 view];
      [v54 _setSpeedBumpEdges:8];
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
  v57 = [v56 _existingView];
  v58 = [v57 window];
  v59 = v58 == 0;

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

- (void)_setMasterOverrideTraitCollectionActive:(BOOL)a3
{
  v3 = a3;
  if ([(UISplitViewControllerClassicImpl *)self _hasMasterViewController])
  {
    if (v3)
    {
      v7 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
    }

    else
    {
      v7 = 0;
    }

    v5 = objc_loadWeakRetained(&self->_svc);
    v6 = [v5 masterViewController];
    [v5 setOverrideTraitCollection:v7 forChildViewController:v6];
  }
}

- (id)_childContainingSender:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
    if (v5)
    {
      v6 = v5;
      v7 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
      v8 = [v4 _isMemberOfViewControllerHierarchy:v7];

      if (v8)
      {
        v9 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
        goto LABEL_12;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v11 = [WeakRetained masterViewController];
    v12 = [v4 _isMemberOfViewControllerHierarchy:v11];

    v13 = objc_loadWeakRetained(&self->_svc);
    v14 = v13;
    if (v12)
    {
      v15 = [v13 masterViewController];
LABEL_10:
      v9 = v15;

      goto LABEL_12;
    }

    v16 = [v13 detailViewController];
    v17 = [v4 _isMemberOfViewControllerHierarchy:v16];

    if (v17)
    {
      v14 = objc_loadWeakRetained(&self->_svc);
      v15 = [v14 detailViewController];
      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)_primaryContentResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained detailViewController];

  return v3;
}

- (void)showViewController:(id)a3 sender:(id)a4
{
  v26[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UISplitViewControllerClassicImpl *)self _childContainingSender:v7];
  v9 = v8;
  if (v6)
  {
    if (v8 != v6)
    {
      if ((*(&self->_splitViewControllerFlags + 1) & 0x40) == 0 || (v10 = objc_loadWeakRetained(&self->_delegate), v11 = objc_loadWeakRetained(&self->_svc), v12 = [v10 splitViewController:v11 showViewController:v6 sender:v7], v11, v10, (v12 & 1) == 0))
      {
        WeakRetained = objc_loadWeakRetained(&self->_svc);
        v14 = [WeakRetained _horizontalSizeClass];

        v15 = objc_loadWeakRetained(&self->_svc);
        v16 = v15;
        if (v14 == 2)
        {
          v17 = [v15 masterViewController];

          v18 = objc_loadWeakRetained(&self->_svc);
          if (v17 == v9)
          {
            v26[0] = v6;
            v19 = v18;
            v20 = [v19 viewControllers];
            v21 = [v20 objectAtIndex:1];
            v26[1] = v21;
            v22 = MEMORY[0x1E695DEC8];
            v23 = v26;
          }

          else
          {
            v19 = v18;
            v20 = [v19 viewControllers];
            v21 = [v20 objectAtIndex:0];
            v25[0] = v21;
            v25[1] = v6;
            v22 = MEMORY[0x1E695DEC8];
            v23 = v25;
          }

          v24 = [v22 arrayWithObjects:v23 count:2];
          [v19 setViewControllers:v24];
        }

        else
        {
          [v15 presentViewController:v6 animated:+[UIView areAnimationsEnabled](UIView completion:{"areAnimationsEnabled"), 0}];
        }
      }
    }
  }
}

- (void)showDetailViewController:(id)a3 sender:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v9 = [WeakRetained detailViewController];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
  }

  v12 = v11;

  v13 = [v12 _existingView];
  v14 = [v13 window];
  if (!v14)
  {

    goto LABEL_10;
  }

  v15 = v14;
  if (v12 != v6)
  {
    goto LABEL_11;
  }

  v16 = objc_loadWeakRetained(&self->_svc);
  v17 = [v16 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (!v18)
  {
LABEL_10:
    v13 = objc_loadWeakRetained(&self->_svc);
    [v13 masterViewController];
    v12 = v15 = v12;
LABEL_11:

    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_12:
  if (v12 != v6)
  {
    v19 = [(UISplitViewControllerClassicImpl *)self _isBasicallyHorizontallyCompact];
    if ((*(&self->_splitViewControllerFlags + 1) & 0x80) == 0 || (v20 = objc_loadWeakRetained(&self->_delegate), v21 = objc_loadWeakRetained(&self->_svc), v22 = [v20 splitViewController:v21 showDetailViewController:v6 sender:v7], v21, v20, (v22 & 1) == 0))
    {
      v23 = objc_loadWeakRetained(&self->_svc);
      v24 = v23;
      if (v19)
      {
        [v23 _willShowCollapsedDetailViewController:v6 inTargetController:v12];

        if ([objc_opt_class() doesOverrideViewControllerMethod:sel_showViewController_sender_])
        {
          [v12 showViewController:v6 sender:v7];
        }

        else
        {
          v30 = objc_loadWeakRetained(&self->_svc);
          [v30 presentViewController:v6 animated:+[UIView areAnimationsEnabled](UIView completion:{"areAnimationsEnabled"), 0}];
        }
      }

      else
      {
        v25 = [v23 masterViewController];

        v26 = objc_loadWeakRetained(&self->_svc);
        if (v25)
        {
          v33 = v25;
          v34 = v6;
          v27 = MEMORY[0x1E695DEC8];
          v28 = &v33;
          v29 = 2;
        }

        else
        {
          v32 = v6;
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

- (void)_willShowCollapsedDetailViewController:(id)a3 inTargetController:(id)a4
{
  v7 = a4;
  v6 = a3;
  [(UISplitViewControllerClassicImpl *)self _setPreservedDetailController:v6];
  objc_opt_class();
  LOBYTE(self) = objc_opt_isKindOfClass();

  if ((self & 1) != 0 && [objc_opt_class() doesOverrideViewControllerMethod:sel_showViewController_sender_])
  {
    [v7 _setAllowNestedNavigationControllers:1];
  }
}

- (void)_prepareForCompactLayout
{
  self->_useChangingBoundsLayout = 1;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained masterViewController];

  v5 = objc_loadWeakRetained(&self->_svc);
  v6 = [v5 detailViewController];

  v7 = [(UISplitViewControllerClassicImpl *)self _primaryViewControllerForCollapsing];
  v8 = [(UISplitViewControllerClassicImpl *)self _secondaryViewControllerForCollapsing];
  if (v8)
  {
    [(UISplitViewControllerClassicImpl *)self _setPreservedDetailController:v8];
    v9 = objc_loadWeakRetained(&self->_svc);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__UISplitViewControllerClassicImpl__prepareForCompactLayout__block_invoke;
    v17[3] = &unk_1E70F6228;
    v17[4] = self;
    v18 = v7;
    v19 = v8;
    [UIViewController _withDisabledAppearanceTransitionsForVisibleDescendantsOf:v9 perform:v17];

    if (dyld_program_sdk_at_least())
    {
      if (v4)
      {
        v10 = [v4 _existingView];
        v11 = [v10 window];
        if (v11)
        {
        }

        else
        {
          v13 = (v4[94] & 3) - 1;

          if (v13 <= 1)
          {
            [(UIViewController *)v4 __viewWillDisappear:?];
            [(UIViewController *)v4 __viewDidDisappear:?];
          }
        }
      }

      if (v6)
      {
        v14 = [v6 _existingView];
        v15 = [v14 window];
        if (v15)
        {
        }

        else
        {
          v16 = (v6[94] & 3) - 1;

          if (v16 <= 1)
          {
            [(UIViewController *)v6 __viewWillDisappear:?];
            [(UIViewController *)v6 __viewDidDisappear:?];
          }
        }
      }
    }
  }

  else
  {
    v12 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];

    if (!v12)
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

- (void)_animateTransitionFromTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v10 = a4;
  v6 = [a3 horizontalSizeClass];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v8 = [WeakRetained traitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v6 == 1 && v9 == 2)
  {
    [(UISplitViewControllerClassicImpl *)self _separateMasterAndDetailWithTransitionCoordinator:v10];
    self->_useChangingBoundsLayout = 1;
  }

  else
  {
    self->_useChangingBoundsLayout = 1;
    if (v6 == 2 && v9 == 1)
    {
      [(UISplitViewControllerClassicImpl *)self _collapseMasterAndDetailWithTransitionCoordinator:v10];
    }
  }

  [(UISplitViewControllerClassicImpl *)self _updateTargetDisplayMode];
}

- (void)_separateMasterAndDetailWithTransitionCoordinator:(id)a3
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

- (void)_collapseMasterAndDetailWithTransitionCoordinator:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(UISplitViewControllerClassicImpl *)self _isCollapsed])
  {
    v5 = [(UISplitViewControllerClassicImpl *)self viewControllers];
    v6 = [v5 count] > 1;
  }

  else
  {
    v6 = 0;
  }

  [(UISplitViewControllerClassicImpl *)self _setCollapsedState:1];
  v7 = [(UISplitViewControllerClassicImpl *)self _secondaryViewControllerForCollapsing];
  v8 = [(UISplitViewControllerClassicImpl *)self _primaryViewControllerForCollapsing];
  if (v6)
  {
    v9 = [v7 navigationController];
    v10 = [v9 _outermostNavigationController];
    v11 = [v10 isEqual:v8];

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

          v7 = 0;
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

  if (!v8 || !v7)
  {
    goto LABEL_15;
  }

  [(UISplitViewControllerClassicImpl *)self _setPreservedDetailController:v7];
  [(UISplitViewControllerClassicImpl *)self _collapseMaster:v8 andDetail:v7 withTransitionCoordinator:v4];
LABEL_16:
}

- (void)_collapseMaster:(id)a3 andDetail:(id)a4 withTransitionCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __88__UISplitViewControllerClassicImpl__collapseMaster_andDetail_withTransitionCoordinator___block_invoke;
  v23 = &unk_1E70F6B40;
  v24 = v8;
  v25 = self;
  v26 = v10;
  v11 = v9;
  v27 = v11;
  v12 = v10;
  v13 = v8;
  [UIViewController _withDisabledAppearanceTransitionsForVisibleDescendantsOf:v11 perform:&v20];
  v14 = dyld_program_sdk_at_least();
  if (v11 && v14 && (v11[94] & 3u) - 1 <= 1)
  {
    v15 = [v11 splitViewController];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v17 = WeakRetained;
    if (v15 == WeakRetained)
    {
    }

    else
    {
      v18 = [v11 _existingView];
      v19 = [v18 window];

      if (!v19)
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
  v16 = [WeakRetained masterViewController];

  v4 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
  v5 = (*&self->_splitViewControllerFlags >> 20) & 3;
  if (v16)
  {
    v6 = v4 == 0;
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
          v11 = [v10 _window];
          [v11 _setFirstResponder:self->_postTransitionResponder];
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
    v15 = [v14 _window];
    [v15 _setIsSettingFirstResponder:0];
  }
}

- (void)_didChangeToFirstResponder:(id)a3
{
  postTransitionResponder = self->_postTransitionResponder;
  if (postTransitionResponder)
  {
    v4 = postTransitionResponder == a3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = 0x100000000;
    if (!a3)
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
  v4 = [WeakRetained _super_disableAutomaticKeyboardBehavior];

  return v4;
}

- (id)_deepestUnambiguousResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained _super_deepestActionResponder];

  return v3;
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

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if ((*(&self->_splitViewControllerFlags + 4) & 8) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v9 = [WeakRetained isCollapsed];

    if ((v9 & 1) == 0)
    {
      if ([(UISplitViewControllerClassicImpl *)self _hasMasterViewController])
      {
        v10 = objc_loadWeakRetained(&self->_svc);
        v11 = [v10 masterViewController];

        if (v11 == v7)
        {
          [(UISplitViewControllerClassicImpl *)self _masterViewFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
          goto LABEL_24;
        }
      }

      v12 = objc_loadWeakRetained(&self->_svc);
      v13 = [v12 detailViewController];

      if (v13 == v7)
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
    v17 = [v16 masterViewController];

    if (v17 == v7)
    {
      [(UISplitViewControllerClassicImpl *)self _primaryColumnWidthForSize:0 isCompact:width, height];
      width = v30;
      goto LABEL_21;
    }
  }

  v18 = objc_loadWeakRetained(&self->_svc);
  v19 = [v18 detailViewController];
  v20 = v19;
  if (v19 == v7)
  {

    goto LABEL_16;
  }

  if (![(UISplitViewControllerClassicImpl *)self _isTransitioningFromCollapsedToSeparated])
  {

    goto LABEL_19;
  }

  v21 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];

  if (v21 != v7)
  {
LABEL_19:
    v24 = objc_loadWeakRetained(&self->_svc);
    [v24 _super_sizeForChildContentContainer:v7 withParentContainerSize:{width, height}];
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

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v10 = [WeakRetained _existingView];
  v100 = v8;
  if (v10)
  {
    v11 = v10;
    v12 = objc_loadWeakRetained(&self->_svc);
    v13 = [v12 traitCollection];
    v14 = [v13 horizontalSizeClass];
    v15 = [v7 horizontalSizeClass];

    if (v14 == v15)
    {
      v16 = 0;
      v17 = 0;
      v8 = v100;
    }

    else
    {
      objc_storeStrong(&self->_transitioningToTraitCollection, a3);
      if ([v7 horizontalSizeClass] == 1)
      {
        self->_useChangingBoundsLayout = 1;
        v18 = objc_loadWeakRetained(&self->_svc);
        v19 = [v18 view];
        [v19 bounds];
        self->_viewBoundsBeforeCollapse.origin.x = v20;
        self->_viewBoundsBeforeCollapse.origin.y = v21;
        self->_viewBoundsBeforeCollapse.size.width = v22;
        self->_viewBoundsBeforeCollapse.size.height = v23;

        v16 = 0;
      }

      else
      {
        v16 = [v7 horizontalSizeClass] == 2;
      }

      v24 = objc_loadWeakRetained(&self->_svc);
      v25 = [v24 traitCollection];

      v26 = objc_loadWeakRetained(&self->_svc);
      v27 = [v26 _window];
      v28 = [v27 firstResponder];

      v29 = objc_loadWeakRetained(&self->_svc);
      v30 = [v29 detailViewController];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = objc_loadWeakRetained(&self->_svc);
      }

      v33 = v32;

      if ([v33 _containsResponder:v28])
      {
        if ((*(&self->_splitViewControllerFlags + 3) & 0x10) == 0 || (v34 = objc_loadWeakRetained(&self->_delegate), v35 = objc_loadWeakRetained(&self->_svc), v36 = [v34 _splitViewControllerShouldRestoreResponderAfterTraitCollectionTransition:v35], v35, v34, v36))
        {
          objc_storeStrong(&self->_postTransitionResponder, v28);
          *&self->_splitViewControllerFlags &= 0xFFFFFFFCFFFFFFFFLL;
          v37 = objc_loadWeakRetained(&self->_svc);
          v38 = [v37 _window];
          [v38 _setIsSettingFirstResponder:1];
        }
      }

      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
      v106[3] = &unk_1E7101978;
      v106[4] = self;
      v107 = v25;
      v8 = v100;
      v108 = v100;
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_2;
      v105[3] = &unk_1E70F3B98;
      v105[4] = self;
      v39 = v25;
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
  [v40 _super_willTransitionToTraitCollection:v7 withTransitionCoordinator:v8];

  if (v16)
  {
    v41 = objc_loadWeakRetained(&self->_svc);
    v42 = [v41 masterViewController];

    v43 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
    if (v42)
    {
      v44 = objc_loadWeakRetained(&self->_svc);
      v45 = [v44 overrideTraitCollectionForChildViewController:v42];

      if (v45)
      {
        if (v43)
        {
          v46 = objc_loadWeakRetained(&self->_svc);
          v47 = [v46 overrideTraitCollectionForChildViewController:v43];

          v48 = objc_loadWeakRetained(&self->_svc);
          v49 = [objc_opt_class() _traitCollectionWithParentTraitCollection:v7 overrideTraitCollection:v47];

          [v43 _unsafeParentWillTransitionToTraitCollection:v49 withTransitionCoordinator:v100];
          v8 = v100;
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
      v66 = objc_loadWeakRetained(&self->_svc);
      v67 = [v66 detailViewController];
      if (v67)
      {
        v68 = v67;
        v69 = objc_loadWeakRetained(&self->_svc);
        v70 = [v69 detailViewController];
        v71 = [v70 childModalViewController];

        if (!v71)
        {
LABEL_37:
          v84 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
          v8 = v100;
          if (v84)
          {
            v85 = v84;
            v86 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
            v87 = [v86 childModalViewController];

            if (v87)
            {
              v88 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];
              v89 = [v88 _presentationController];
              v90 = [v89 _firstCurrentContextChildInWindow];

              if (v90)
              {
                v91 = [UISnapshotView alloc];
                v92 = objc_loadWeakRetained(&self->_svc);
                v93 = [v92 detailViewController];
                v94 = [v93 childModalViewController];
                v95 = [v94 view];
                [v95 frame];
                v96 = [(UISnapshotView *)v91 initWithFrame:?];
                collapsingMasterSnapshotView = self->_collapsingMasterSnapshotView;
                self->_collapsingMasterSnapshotView = v96;

                v8 = v100;
                v98 = self->_collapsingMasterSnapshotView;
                v99 = [v90 view];
                [(UISnapshotView *)v98 captureSnapshotOfView:v99 withSnapshotType:1];
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
        v73 = [v72 detailViewController];
        v74 = [v73 _presentationController];
        v66 = [v74 _firstCurrentContextChildInWindow];

        if (v66)
        {
          v75 = [UISnapshotView alloc];
          v76 = objc_loadWeakRetained(&self->_svc);
          v77 = [v76 detailViewController];
          v78 = [v77 childModalViewController];
          v79 = [v78 view];
          [v79 frame];
          v80 = [(UISnapshotView *)v75 initWithFrame:?];
          collapsingDetailSnapshotView = self->_collapsingDetailSnapshotView;
          self->_collapsingDetailSnapshotView = v80;

          v82 = self->_collapsingDetailSnapshotView;
          v83 = [v66 view];
          [(UISnapshotView *)v82 captureSnapshotOfView:v83 withSnapshotType:1];

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
    v54 = [v53 masterViewController];
    v55 = [v54 _presentationController];
    v56 = [v55 _firstCurrentContextChildInWindow];

    if (v56)
    {
      v57 = [UISnapshotView alloc];
      v58 = objc_loadWeakRetained(&self->_svc);
      v59 = [v58 masterViewController];
      v60 = [v59 view];
      [v60 frame];
      v61 = [(UISnapshotView *)v57 initWithFrame:?];
      v62 = self->_collapsingMasterSnapshotView;
      self->_collapsingMasterSnapshotView = v61;

      v63 = self->_collapsingMasterSnapshotView;
      v64 = [v56 view];
      [(UISnapshotView *)v63 captureSnapshotOfView:v64 withSnapshotType:1];

      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __94__UISplitViewControllerClassicImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_3;
      v104[3] = &unk_1E70F3590;
      v104[4] = self;
      v65 = v104;
    }

    else
    {
      if (!-[UIPopoverController isPopoverVisible](self->_hiddenPopoverController, "isPopoverVisible") || [v7 horizontalSizeClass] != 1)
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained traitCollection];
  v7 = [v6 horizontalSizeClass];
  v8 = [v4 horizontalSizeClass];

  if (v7 != v8)
  {

    [(UISplitViewControllerClassicImpl *)self _setMasterOverrideTraitCollectionActive:1];
  }
}

- (void)_setupUnderBarSeparatorView
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained view];
  v5 = [v4 backgroundColor];

  underBarSeparatorView = self->_underBarSeparatorView;
  if (v5)
  {
    if (!underBarSeparatorView)
    {
      v7 = [UIView alloc];
      v8 = objc_loadWeakRetained(&self->_svc);
      v9 = [v8 view];
      [v9 frame];
      v10 = [(UIView *)v7 initWithFrame:0.0, 0.0];
      v11 = self->_underBarSeparatorView;
      self->_underBarSeparatorView = v10;

      v12 = objc_loadWeakRetained(&self->_svc);
      v13 = [v12 view];
      [v13 addSubview:self->_underBarSeparatorView];
    }

    v14 = objc_loadWeakRetained(&self->_svc);
    v15 = [v14 view];
    [v15 sendSubviewToBack:self->_underBarSeparatorView];

    if (dyld_program_sdk_at_least())
    {
      v16 = objc_loadWeakRetained(&self->_svc);
      v17 = [v16 view];
      v18 = [v17 backgroundColor];
      [(UIView *)self->_underBarSeparatorView setBackgroundColor:v18];
    }

    else
    {
      v34 = 0.0;
      v35 = 0.0;
      v33 = 0.0;
      v20 = objc_loadWeakRetained(&self->_svc);
      v21 = [v20 view];
      v22 = [v21 backgroundColor];
      [v22 getRed:&v35 green:&v34 blue:&v33 alpha:&v32];

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
      v25 = [v24 displayMode];

      if (v25 == 2)
      {
        v26 = objc_loadWeakRetained(&self->_svc);
        v27 = [v26 masterViewController];
        [v27 _topBarHeight];

        v28 = objc_loadWeakRetained(&self->_svc);
        v29 = [v28 detailViewController];
        [v29 _topBarHeight];
      }
    }

    v30 = objc_loadWeakRetained(&self->_svc);
    v31 = [v30 view];
    [v31 bounds];
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
    v5 = [v4 masterViewController];
    v6 = v5 != 0;
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
  v4 = [WeakRetained childViewControllersCount];

  if (v4 < 1)
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
    v6 = [v5 mutableChildViewControllers];
    v7 = [v6 objectAtIndex:0];
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
  v4 = [WeakRetained childViewControllersCount];

  if (v4 < 2)
  {
    v7 = 0;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_svc);
    v6 = [v5 mutableChildViewControllers];
    v7 = [v6 objectAtIndex:1];
  }

  return v7;
}

- (id)_topLevelViewControllerForColumn:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(UISplitViewControllerClassicImpl *)self detailViewController];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(UISplitViewControllerClassicImpl *)self masterViewController];
  }

  return v3;
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
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  LOBYTE(v2) = -[UISplitViewControllerClassicImpl _hidesMasterViewInOrientation:medusaState:](v2, "_hidesMasterViewInOrientation:medusaState:", [WeakRetained interfaceOrientation], -[UISplitViewControllerClassicImpl _medusaState](v2, "_medusaState"));

  return v2;
}

- (BOOL)_hidesMasterViewInOrientation:(int64_t)a3 medusaState:(int64_t)a4
{
  if ((a4 - 1) >= 3)
  {
    if ((a3 - 1) > 1)
    {

      LOBYTE(v5) = [(UISplitViewControllerClassicImpl *)self hidesMasterViewInLandscape];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      v7 = [WeakRetained hidesMasterViewInPortrait];

      LOBYTE(v5) = v7;
    }
  }

  else
  {
    return (3u >> ((a4 - 1) & 7)) & 1;
  }

  return v5;
}

- (void)setHidesMasterViewInPortrait:(BOOL)a3
{
  if ((*&self->_splitViewControllerFlags & 0x10) != 0)
  {
    return;
  }

  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained hidesMasterViewInPortrait];

  if (v6 == v3)
  {
    return;
  }

  v7 = objc_loadWeakRetained(&self->_svc);
  v17 = [v7 _window];

  if (v17)
  {
    v8 = ([UIApp _sceneInterfaceOrientationFromWindow:?] - 3) < 2;
  }

  else
  {
    v8 = 0;
  }

  [(UISplitViewControllerClassicImpl *)self _setDelegateHidesMaster:v3 inAspectRatio:1];
  if (!v8 && !v3)
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
  v12 = [v11 view];
  [v12 setNeedsLayout];

  if (!v8 && v3)
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
      v16 = [v15 masterViewController];
      [(UIViewController *)v16 __viewDidDisappear:?];

LABEL_16:
    }
  }
}

- (void)_showMasterViewAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained masterViewController];
  [v6 __viewWillAppear:v3];

  v7 = objc_loadWeakRetained(&self->_svc);
  v8 = [v7 masterViewController];
  v9 = [v8 view];
  v10 = [v9 superview];
  v11 = objc_loadWeakRetained(&self->_svc);
  v12 = [v11 view];

  if (v10 != v12)
  {
    v13 = objc_loadWeakRetained(&self->_svc);
    v14 = [v13 masterViewController];
    v15 = [v14 view];
    [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
    [v15 setFrame:?];

    v20 = objc_loadWeakRetained(&self->_svc);
    v16 = [v20 view];
    v17 = objc_loadWeakRetained(&self->_svc);
    v18 = [v17 masterViewController];
    v19 = [v18 view];
    [v16 insertSubview:v19 atIndex:0];
  }
}

- (void)setMinimumPrimaryColumnWidth:(double)a3
{
  if (self->_minimumPrimaryColumnWidth != a3)
  {
    self->_minimumPrimaryColumnWidth = a3;
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v5 = [WeakRetained view];
    [v5 setNeedsLayout];

    if (+[UIView _isInAnimationBlock])
    {
      v7 = objc_loadWeakRetained(&self->_svc);
      v6 = [v7 view];
      [v6 layoutBelowIfNeeded];
    }
  }
}

- (void)setMaximumPrimaryColumnWidth:(double)a3
{
  if (self->_maximumPrimaryColumnWidth != a3)
  {
    self->_maximumPrimaryColumnWidth = a3;
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v5 = [WeakRetained view];
    [v5 setNeedsLayout];

    if (+[UIView _isInAnimationBlock])
    {
      v7 = objc_loadWeakRetained(&self->_svc);
      v6 = [v7 view];
      [v6 layoutBelowIfNeeded];
    }
  }
}

- (void)setPreferredPrimaryColumnWidthFraction:(double)a3
{
  if (self->_preferredPrimaryColumnWidthFraction != a3)
  {
    self->_preferredPrimaryColumnWidthFraction = a3;
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v5 = [WeakRetained view];
    [v5 setNeedsLayout];

    if (+[UIView _isInAnimationBlock])
    {
      v7 = objc_loadWeakRetained(&self->_svc);
      v6 = [v7 view];
      [v6 layoutBelowIfNeeded];
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

+ (double)_defaultGutterWidthInView:(id)a3
{
  v3 = a3;
  v4 = 1.0;
  if (dyld_program_sdk_at_least())
  {
    v5 = [v3 _screen];

    if (v5)
    {
      v6 = [v3 _screen];
      [v6 scale];
      v8 = 1.0 / v7;

      v9 = [v3 _window];
      [v9 convertRect:0 fromWindow:{0.0, 0.0, v8, v8}];
      [v3 convertRect:0 fromView:?];
      v4 = v10;
    }

    else
    {
      v9 = [objc_opt_self() mainScreen];
      [v9 scale];
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
    v6 = [WeakRetained _existingView];
    [v4 _defaultGutterWidthInView:v6];
    gutterWidth = v7;
  }

  return gutterWidth;
}

- (void)setGutterWidth:(float)a3
{
  self->_gutterWidth = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained _existingView];
  [v3 setNeedsLayout];
}

- (void)setPresentsWithGesture:(BOOL)a3
{
  if (self->_presentsWithGesture != a3)
  {
    self->_presentsWithGesture = a3;
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

- (void)setPrimaryEdge:(int64_t)a3
{
  if (self->_primaryEdge != a3)
  {
    self->_primaryEdge = a3;
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v6 = [WeakRetained view];
    [v6 setNeedsLayout];

    v7 = objc_loadWeakRetained(&self->_svc);
    v8 = [v7 masterViewController];
    v9 = [v8 view];
    [v9 setNeedsLayout];

    v12 = objc_loadWeakRetained(&self->_svc);
    v10 = [v12 detailViewController];
    v11 = [v10 view];
    [v11 setNeedsLayout];
  }
}

- (BOOL)_layoutPrimaryOnRight
{
  primaryEdge = self->_primaryEdge;
  if (!primaryEdge)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v3 = [WeakRetained view];
    if ([v3 _shouldReverseLayoutDirection])
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
  v8 = [v7 view];
  v6 = [v8 _shouldReverseLayoutDirection] ^ 1;

  if (!primaryEdge)
  {
    goto LABEL_11;
  }

  return v6;
}

- (void)setPreferredDisplayMode:(int64_t)a3
{
  if (self->_preferredDisplayMode | a3)
  {
    self->_preferredDisplayMode = a3;
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
  v3 = [(UISplitViewControllerClassicImpl *)self _currentInterfaceIdiom];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(UISplitViewControllerClassicImpl *)self _hidesMasterViewInCurrentOrientation];
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

  v4 = [(UISplitViewControllerClassicImpl *)self _hidesMasterViewInCurrentOrientation];
  v5 = &unk_1EFE2BBA8;
  v6 = &unk_1EFE2BB90;
LABEL_6:
  if (v4)
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
  v4 = [WeakRetained traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    return 0;
  }

  v7 = [(UISplitViewControllerClassicImpl *)self _currentInterfaceIdiom];
  v8 = objc_loadWeakRetained(&self->_svc);
  v9 = [v8 displayMode];

  v10 = objc_loadWeakRetained(&self->_svc);
  v11 = [v10 preferredDisplayMode];

  if (!v11)
  {
    if (v7 == 1)
    {
      if (![(UISplitViewControllerClassicImpl *)self _hidesMasterViewInCurrentOrientation])
      {
        if ((dyld_program_sdk_at_least() & (v9 == 1)) != 0)
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }
    }

    else if (v7 || ![(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment])
    {
      if (v9 == 1)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    if (v9 == 1)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  if (v9 != 1)
  {
    return 1;
  }

  v12 = objc_loadWeakRetained(&self->_svc);
  v13 = [v12 preferredDisplayMode];

  if (v13 == 1)
  {
    if (v7 == 1 || !v7 && [(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment])
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
    v15 = [v14 preferredDisplayMode];

    return v15;
  }
}

- (void)_changeToDisplayMode:(int64_t)a3 forCurrentOrientationOnly:(BOOL)a4
{
  v4 = a4;
  v7 = [(UISplitViewControllerClassicImpl *)self _isMasterViewShown];
  v8 = 1;
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      goto LABEL_12;
    }

    if (a3 == 2)
    {
      v8 = 2;
      goto LABEL_12;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = [(UISplitViewControllerClassicImpl *)self _defaultDisplayModes];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    a3 = [WeakRetained displayMode];

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v12 = [v9 containsObject:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [v9 firstObject];
      a3 = [v13 integerValue];
    }
  }

  v8 = 0;
LABEL_12:
  [(UISplitViewControllerClassicImpl *)self _displayModeWillChangeTo:a3];
  if (v4)
  {
    [(UISplitViewControllerClassicImpl *)self _setPrimaryHidingStateForCurrentOrientation:v8];
  }

  else
  {
    [(UISplitViewControllerClassicImpl *)self _setPrimaryHidingStateForCurrentOrientation:0];
    [(UISplitViewControllerClassicImpl *)self _setPrimaryHidingState:v8];
  }

  v14 = [(UISplitViewControllerClassicImpl *)self _isMasterPopoverVisible];
  if (a3 == 3)
  {
    if (!v14)
    {
      if (v7)
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
    if (v14)
    {
      v15 = +[UIView _isInAnimationBlock];
      v16 = a3 == 1 && v15;
      [(UISplitViewControllerClassicImpl *)self _dismissMasterViewController:v16];
    }

    if (a3 == 2)
    {
      v17 = objc_loadWeakRetained(&self->_svc);
      v18 = [v17 masterViewController];
      v19 = [v18 view];
      v20 = [v19 superview];
      v21 = objc_loadWeakRetained(&self->_svc);
      v22 = [v21 view];
      if (v20 == v22 || (v23 = objc_loadWeakRetained(&self->_svc)) == 0)
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
  v26 = [v25 view];
  [v26 setNeedsLayout];

  if (+[UIView _isInAnimationBlock])
  {
    v27 = objc_loadWeakRetained(&self->_svc);
    v28 = [v27 view];
    [v28 layoutBelowIfNeeded];
  }

  [(UISplitViewControllerClassicImpl *)self _displayModeDidChange];
}

- (void)_displayModeWillChangeTo:(int64_t)a3
{
  pendingDisplayModeChangeCount = self->_pendingDisplayModeChangeCount;
  if (!pendingDisplayModeChangeCount)
  {
    if (self->_lastNotifiedDisplayMode == a3)
    {
      pendingDisplayModeChangeCount = 0;
    }

    else
    {
      if ((*(&self->_splitViewControllerFlags + 3) & 4) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v7 = objc_loadWeakRetained(&self->_svc);
        [WeakRetained splitViewController:v7 willChangeToDisplayMode:a3];
      }

      self->_lastNotifiedDisplayMode = a3;
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

- (void)_popoverController:(id)a3 willChangeToVisible:(BOOL)a4
{
  if ((*(&self->_splitViewControllerFlags + 4) & 4) == 0)
  {
    if (a4)
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

- (void)_popoverController:(id)a3 didChangeFromVisible:(BOOL)a4
{
  if ((*(&self->_splitViewControllerFlags + 4) & 4) == 0)
  {
    [(UISplitViewControllerClassicImpl *)self _displayModeDidChange:a3];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained setNeedsStatusBarAppearanceUpdate];
}

- (void)_cacheEffectiveTargetDisplayMode
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    v6 = 0;
  }

  else if ((*(&self->_splitViewControllerFlags + 3) & 8) == 0 || (v7 = objc_loadWeakRetained(&self->_delegate), v8 = objc_loadWeakRetained(&self->_svc), v6 = [v7 targetDisplayModeForActionInSplitViewController:v8], v8, v7, !v6))
  {
    v6 = [(UISplitViewControllerClassicImpl *)self _defaultTargetDisplayMode];
  }

  self->_effectiveTargetDisplayMode = v6;
}

- (void)_triggerDisplayModeAction:(id)a3
{
  v4 = [(UISplitViewControllerClassicImpl *)self _effectiveTargetDisplayMode];
  if (v4)
  {
    v5 = v4;
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

  v3 = [(UISplitViewControllerClassicImpl *)self _effectiveTargetDisplayMode];
  if ((v3 - 2) < 2)
  {
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v9 = [WeakRetained displayMode];

    if (v9 != 3)
    {
      v15 = _UIImageWithName(@"UISplitViewControllerFullScreen.png");
      v7 = [v15 imageFlippedForRightToLeftLayoutDirection];

      v4 = 0;
      v5 = 0;
      v6 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v10 = objc_loadWeakRetained(&self->_svc);
    v16 = [v10 _displayModeButtonItemTitle];

    v6 = v16;
    if (!v16)
    {
      if (![(UISplitViewControllerClassicImpl *)self _hasMasterViewController])
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_11;
      }

      v11 = objc_loadWeakRetained(&self->_svc);
      v12 = [v11 masterViewController];
      v17 = [v12 title];

      v6 = v17;
    }

    v5 = 0;
LABEL_11:
    v7 = 0;
    v4 = 1;
    goto LABEL_12;
  }

  v4 = 0;
  v5 = v3 == 0;
  v6 = 0;
  v7 = 0;
LABEL_12:
  v18 = v6;
  if ([(__CFString *)v6 length])
  {
    v13 = 0;
  }

  else
  {
    v13 = v7 == 0;
  }

  if (v13)
  {

    v18 = @" ";
  }

  [(UIBarButtonItem *)self->_displayModeButtonItem setImage:v7];
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

- (void)_displayModeBarButtonItemWasUsedForFirstTime:(id)a3
{
  if ([(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v5 = [WeakRetained isViewLoaded];

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_svc);
      v7 = [v6 view];
      [v7 setNeedsLayout];

      [(UISplitViewControllerClassicImpl *)self _cacheEffectiveTargetDisplayMode];
    }
  }
}

- (void)_setDisplayModeButtonItemTitle:(id)a3
{
  v4 = a3;
  displayModeButtonItemTitle = self->_displayModeButtonItemTitle;
  if (displayModeButtonItemTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)displayModeButtonItemTitle isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_displayModeButtonItemTitle;
      self->_displayModeButtonItemTitle = v7;

      [(UISplitViewControllerClassicImpl *)self _updateDisplayModeButtonItem];
      v4 = v9;
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(UISplitViewControllerClassicImpl *)self _isMasterViewShown];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v7 = WeakRetained;
  if (v5)
  {
    v8 = [WeakRetained masterViewController];
    [v8 __viewWillAppear:v3];
  }

  else
  {
    v9 = [WeakRetained displayMode];

    if (v9 != 2)
    {
      v10 = objc_loadWeakRetained(&self->_svc);
      v11 = [v10 masterViewController];
      [(UISplitViewControllerClassicImpl *)self _viewControllerHiding:v11];

      self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFF1FLL | 0x80);
    }
  }

  [(UISplitViewControllerClassicImpl *)self _addOrRemovePopoverPresentationGestureRecognizer];
  v13 = objc_loadWeakRetained(&self->_svc);
  v12 = [v13 detailViewController];
  [v12 __viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if ([(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v6 = [WeakRetained masterViewController];
    [v6 __viewDidAppear:v3];
  }

  v7 = objc_loadWeakRetained(&self->_svc);
  v8 = [v7 detailViewController];
  [v8 __viewDidAppear:v3];

  v9 = objc_loadWeakRetained(&self->_svc);
  self->_lastPresentedOrientation = [v9 interfaceOrientation];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if ([(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v6 = [WeakRetained masterViewController];
    [(UIViewController *)v6 __viewWillDisappear:v3];
  }

  v8 = objc_loadWeakRetained(&self->_svc);
  v7 = [v8 detailViewController];
  [(UIViewController *)v7 __viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if ([(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v6 = [WeakRetained masterViewController];
    [(UIViewController *)v6 __viewDidDisappear:v3];
  }

  v8 = objc_loadWeakRetained(&self->_svc);
  v7 = [v8 detailViewController];
  [(UIViewController *)v7 __viewDidDisappear:v3];
}

- (void)_layoutContainerViewDidMoveToWindow:(id)a3
{
  if (a3)
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
    v4 = [(UISplitViewControllerClassicImpl *)self _clearPreventRotationHook];

    if (v4)
    {
      v5 = [(UISplitViewControllerClassicImpl *)self _clearPreventRotationHook];
      v5[2]();

      [(UISplitViewControllerClassicImpl *)self _setClearPreventRotationHook:0];
    }
  }
}

- (BOOL)_shouldPreventAutorotation
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1 || ![(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained masterViewController];
  v7 = [v6 childModalViewController];
  v8 = [v7 presentationController];
  v9 = v8 != 0;

  return v9;
}

- (void)_layoutContainerViewWillMoveToWindow:(id)a3
{
  v4 = a3;
  if ([(UISplitViewControllerClassicImpl *)self _isBasicallyHorizontallyCompact]&& ((*&self->_splitViewControllerFlags >> 20) & 3uLL) - 1 >= 2)
  {
    [(UISplitViewControllerClassicImpl *)self _setCollapsedState:1];
  }

  if (!v4)
  {
    if ([(UISplitViewControllerClassicImpl *)self _isMasterPopoverVisible])
    {
      *&self->_splitViewControllerFlags |= 0x20000000uLL;
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v15 = [WeakRetained traitCollection];
    traitCollectionWhenRemovedFromWindow = self->_traitCollectionWhenRemovedFromWindow;
    self->_traitCollectionWhenRemovedFromWindow = v15;

    v17 = objc_loadWeakRetained(&self->_svc);
    v18 = [v17 _window];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__UISplitViewControllerClassicImpl__layoutContainerViewWillMoveToWindow___block_invoke;
    v20[3] = &unk_1E70F3590;
    v5 = v18;
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
  [v4 _setShouldPreventRotationHook:v19];
  v5 = objc_loadWeakRetained(&self->_svc);
  if ([v5 displayMode] != 2)
  {
LABEL_17:

    goto LABEL_18;
  }

  v6 = objc_loadWeakRetained(&self->_svc);
  v7 = [v6 masterViewController];
  v8 = [v7 view];
  v9 = [v8 superview];
  v10 = objc_loadWeakRetained(&self->_svc);
  v11 = [v10 view];
  if (v9 == v11 || (v12 = objc_loadWeakRetained(&self->_svc)) == 0)
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
  v3 = [WeakRetained _isCollapsed];
  v4 = 1;
  if (v3)
  {
    v4 = 2;
  }

  self->_suspendedState = v4;
}

- (void)_presentMasterViewController:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained _existingView];
  v7 = [v6 window];

  if (v7)
  {
    if ([(UISplitViewControllerClassicImpl *)self _canDisplayHostedMaster])
    {
      *&self->_splitViewControllerFlags &= ~0x20000000uLL;
      v8 = objc_loadWeakRetained(&self->_svc);
      v9 = [v8 masterViewController];
      [(UISplitViewControllerClassicImpl *)self _setupHiddenPopoverControllerWithViewController:v9];

      if (![(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible])
      {
        hiddenPopoverController = self->_hiddenPopoverController;
        v11 = [(UISplitViewControllerClassicImpl *)self _targetEdgeForPopover];
        v13 = objc_loadWeakRetained(&self->_svc);
        v12 = [v13 view];
        [(UIPopoverController *)hiddenPopoverController _presentPopoverFromEdge:v11 ofView:v12 animated:v3];
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

- (void)_dismissMasterViewController:(BOOL)a3
{
  v3 = a3;
  *&self->_splitViewControllerFlags &= ~0x20000000uLL;
  if ([(UISplitViewControllerClassicImpl *)self _canDisplayHostedMaster]&& [(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible])
  {
    [(UISplitViewControllerClassicImpl *)self _displayModeWillChangeTo:1];
    [(UIPopoverController *)self->_hiddenPopoverController dismissPopoverAnimated:v3];

    [(UISplitViewControllerClassicImpl *)self _displayModeDidChange];
  }
}

- (void)toggleMasterVisible:(id)a3
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

- (void)_descendantWillPresentViewController:(id)a3 modalSourceViewController:(id)a4 presentationController:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v25 = a3;
  v10 = a4;
  v11 = a5;
  if ([(UISplitViewControllerClassicImpl *)self _canDisplayHostedMaster]&& [(UISplitViewControllerClassicImpl *)self _isMasterPopoverVisible])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v13 = [WeakRetained masterViewController];

    v14 = v10;
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = v14;
    v24 = v6;
    v16 = 0;
    do
    {
      v17 = objc_loadWeakRetained(&self->_svc);

      if (v15 == v17 || v16)
      {
        break;
      }

      v16 = v15 == v13;
      v18 = [v15 parentViewController];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = [v15 parentModalViewController];
      }

      v21 = v20;

      v15 = v21;
    }

    while (v21);
    v6 = v24;

    if (!v16)
    {
LABEL_12:
      [(UISplitViewControllerClassicImpl *)self _dismissMasterViewController:v6];
    }
  }

  v22 = objc_loadWeakRetained(&self->_svc);
  v23 = [v22 splitViewController];
  [v23 _descendantWillPresentViewController:v25 modalSourceViewController:v10 presentationController:v11 animated:v6];
}

- (CGSize)_contentSizeForChildViewController:(id)a3 inPopoverController:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained primaryColumnWidth];
  v7 = v6;
  v8 = objc_loadWeakRetained(&self->_svc);
  v9 = [v8 view];
  [v9 bounds];
  Height = CGRectGetHeight(v14);

  v11 = v7;
  v12 = Height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)popoverWillAppear:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hiddenPopoverController)
  {
    v6 = [v4 object];
    hiddenPopoverController = self->_hiddenPopoverController;

    if (v6 == hiddenPopoverController)
    {
      if ((*(&self->_splitViewControllerFlags + 1) & 8) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_loadWeakRetained(&self->_svc);
        v10 = self->_hiddenPopoverController;
        v11 = v9;
        v12 = [v11 masterViewController];
        [WeakRetained splitViewController:v11 popoverController:v10 willPresentViewController:v12];
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
    v5 = [v4 view];
    v6 = [v5 window];
    v7 = [v6 _isHostedInAnotherProcess];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v6 = a3;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (![(UISplitViewControllerClassicImpl *)self _shouldUseRelativeInsets])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [WeakRetained _contentOverlayInsets];
    v9 = v11;
    v7 = v12;

    [(UISplitViewControllerClassicImpl *)self _contentMarginForChildViewController:v6];
    v8 = v13;
    *a4 = 1;
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

- (void)_marginInfoForChild:(id)a3 leftMargin:(double *)a4 rightMargin:(double *)a5
{
  v9 = a3;
  if ([(UISplitViewControllerClassicImpl *)self _shouldUseRelativeInsets])
  {
    [(UISplitViewControllerClassicImpl *)self _contentMarginForChildViewController:v9];
  }

  else
  {
    v8 = 0xFFEFFFFFFFFFFFFFLL;
  }

  *a4 = v8;
  *a5 = v8;
}

- (void)_updateChildContentMargins
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained viewControllers];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(UISplitViewControllerClassicImpl *)self _contentMarginForChildViewController:v9];
        [v9 _setContentMargin:?];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (double)_contentMarginForChildViewController:(id)a3
{
  v3 = [a3 view];
  [UIViewController _horizontalContentMarginForView:v3];
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
  v4 = [WeakRetained viewControllers];
  v5 = [v4 count];

  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  lastFocusedChildViewControllerIndex = self->_lastFocusedChildViewControllerIndex;
  v7 = objc_loadWeakRetained(&self->_svc);
  v8 = [v7 viewControllers];
  v9 = [v8 count] - 1;

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
  v3 = [WeakRetained viewControllers];

  if (dyld_program_sdk_at_least() && [v3 count] >= 2)
  {
    v4 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
    v5 = [v3 firstObject];
    v6 = [v4 arrayByAddingObject:v5];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)preferredFocusedView
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(UISplitViewControllerClassicImpl *)self _lastFocusedChildViewControllerIndex];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v5 = [WeakRetained viewControllers];
  v6 = [v5 count];

  if (v3 >= v6)
  {
    v10 = 0;
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_svc);
    v8 = [v7 viewControllers];
    v9 = [v8 objectAtIndex:{-[UISplitViewControllerClassicImpl _lastFocusedChildViewControllerIndex](self, "_lastFocusedChildViewControllerIndex")}];
    v10 = [v9 preferredFocusedView];

    if (v10 && ([(UIView *)v10 _containsPreferredFocusableView]& 1) != 0)
    {
      goto LABEL_18;
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(UISplitViewControllerClassicImpl *)self _orderedPreferredFocusedViewControllers];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
LABEL_8:
    v15 = 0;
    v16 = v10;
    while (1)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v10 = [*(*(&v18 + 1) + 8 * v15) preferredFocusedView];

      if (v10)
      {
        if (([(UIView *)v10 _containsPreferredFocusableView]& 1) != 0)
        {
          break;
        }
      }

      ++v15;
      v16 = v10;
      if (v13 == v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

    if (v10)
    {
      goto LABEL_18;
    }

    v11 = objc_loadWeakRetained(&self->_svc);
    v10 = [v11 _super_preferredFocusedView];
  }

LABEL_18:

  return v10;
}

- (id)preferredFocusEnvironments
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(UISplitViewControllerClassicImpl *)self _lastFocusedChildViewControllerIndex];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained viewControllers];
  v7 = [v6 count];

  if (v4 < v7)
  {
    v8 = objc_loadWeakRetained(&self->_svc);
    v9 = [v8 viewControllers];
    v10 = [v9 objectAtIndex:{-[UISplitViewControllerClassicImpl _lastFocusedChildViewControllerIndex](self, "_lastFocusedChildViewControllerIndex")}];

    if (v10)
    {
      [v3 addObject:v10];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [(UISplitViewControllerClassicImpl *)self _orderedPreferredFocusedViewControllers];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if (([v3 containsObject:v16] & 1) == 0)
        {
          [v3 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = objc_loadWeakRetained(&self->_svc);
  v18 = [v17 _super_preferredFocusEnvironments];
  [v3 addObjectsFromArray:v18];

  v19 = objc_loadWeakRetained(&self->_svc);
  v20 = _UIFocusEnvironmentCombinedPreferredFocusEnvironments(v19, v3, [v19 _subclassPreferredFocusedViewPrioritizationType]);

  return v20;
}

- (id)_overridingPreferredFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained _super_overridingPreferredFocusEnvironment];

  return v3;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  if ([(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v6 = [WeakRetained _super_shouldUpdateFocusInContext:v4];
  }

  else
  {
    WeakRetained = [v4 nextFocusedView];
    v7 = objc_loadWeakRetained(&self->_svc);
    v8 = [v7 masterViewController];
    v9 = [v8 view];
    if ([WeakRetained isDescendantOfView:v9])
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

- (void)_didUpdateFocusInContext:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained _super_didUpdateFocusInContext:v4];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = objc_loadWeakRetained(&self->_svc);
  v7 = [v6 viewControllers];

  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v4 nextFocusedView];
        v14 = [v12 view];
        v15 = [v13 isDescendantOfView:v14];

        if (v15)
        {
          v16 = objc_loadWeakRetained(&self->_svc);
          v17 = [v16 viewControllers];
          self->_lastFocusedChildViewControllerIndex = [v17 indexOfObject:v12];

          v18 = objc_loadWeakRetained(&self->_svc);
          v19 = [v18 masterViewController];
          if (v12 == v19 && ![(UISplitViewControllerClassicImpl *)self _isMasterViewShown])
          {
            v20 = objc_loadWeakRetained(&self->_svc);
            v21 = [v20 presentsWithGesture];

            if (v21)
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

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  v3 = [WeakRetained _super_multitaskingDragExclusionRects];

  return v3;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_menuGestureRecognizer != a3)
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
  v4 = [WeakRetained _shouldUseNewStatusBarBehavior];

  v5 = objc_loadWeakRetained(&self->_svc);
  v6 = v5;
  if (v4)
  {
    if ([v5 _shouldUseSeparateStatusBarStyles])
    {
      v7 = 0;
    }

    else
    {
      v8 = [(UISplitViewControllerClassicImpl *)self viewControllers];
      v7 = [v8 firstObject];
    }
  }

  else
  {
    v7 = [v5 _super_childViewControllerForStatusBarStyle];
  }

  return v7;
}

- (int64_t)preferredLeadingStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!v4)
  {
    return 4;
  }

  v5 = objc_loadWeakRetained(&self->_svc);
  v6 = [v5 displayMode];
  v7 = [(UISplitViewControllerClassicImpl *)self viewControllers];
  v8 = v7;
  if (v6 == 1)
  {
    [v7 lastObject];
  }

  else
  {
    [v7 firstObject];
  }
  v10 = ;

  v11 = [v10 _effectiveStatusBarStyleViewController];
  v12 = [v11 preferredStatusBarStyle];
  if (v12 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v12 == 3);
  }

  return v9;
}

- (int64_t)preferredTrailingStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!v4)
  {
    return 4;
  }

  v5 = [(UISplitViewControllerClassicImpl *)self viewControllers];
  v6 = [v5 lastObject];
  v7 = [v6 _effectiveStatusBarStyleViewController];
  v8 = [v7 preferredStatusBarStyle];
  if (v8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v8 == 3);
  }

  return v9;
}

- (int64_t)preferredCenterStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!v4)
  {
    return 4;
  }

  v5 = [(UISplitViewControllerClassicImpl *)self viewControllers];
  v6 = [v5 lastObject];
  v7 = [v6 _effectiveStatusBarStyleViewController];
  v8 = [v7 preferredStatusBarStyle];
  if (v8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v8 == 3);
  }

  return v9;
}

- (int64_t)preferredTrafficLightStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!v4)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_svc);
  v6 = [v5 displayMode];
  v7 = [(UISplitViewControllerClassicImpl *)self viewControllers];
  v8 = v7;
  if (v6 == 1)
  {
    [v7 lastObject];
  }

  else
  {
    [v7 firstObject];
  }
  v10 = ;

  v11 = [v10 _effectiveStatusBarStyleViewController];
  v12 = [v11 preferredTrafficLightStyle];

  return v12;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained _super_preferredScreenEdgesDeferringSystemGestures];

  return v3;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v5 = [WeakRetained mutableChildViewControllers];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 &= [*(*(&v12 + 1) + 8 * i) shouldAutorotateToInterfaceOrientation:a3];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    v4 = [WeakRetained splitViewControllerSupportedInterfaceOrientations:v5];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v4 = [WeakRetained _super_supportedInterfaceOrientations];
  }

  return v4;
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
    v4 = [WeakRetained splitViewControllerPreferredInterfaceOrientationForPresentation:v5];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v4 = [WeakRetained _super_preferredInterfaceOrientationForPresentation];
  }

  return v4;
}

- (int64_t)_internalModeForTraitCollection:(id)a3 orientation:(int64_t)a4 viewSize:(CGSize)a5 medusaState:(int64_t)a6
{
  v9 = a3;
  if ([v9 horizontalSizeClass] == 1)
  {
    v10 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v12 = [WeakRetained preferredDisplayMode];

    if ((v12 - 1) >= 3)
    {
      if ([v9 userInterfaceIdiom])
      {
        if ([v9 userInterfaceIdiom] == 1)
        {
          if ([(UISplitViewControllerClassicImpl *)self _hidesMasterViewInOrientation:a4 medusaState:a6])
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
        v13 = [(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment];
        v14 = [(UISplitViewControllerClassicImpl *)self _effectivePrimaryHidingState];
        if (v13)
        {
          if (v14 == 1)
          {
            v10 = 4;
          }

          else if ([(UISplitViewControllerClassicImpl *)self _hidesMasterViewInOrientation:a4 medusaState:a6])
          {
            v10 = 4;
          }

          else
          {
            v10 = 3;
          }
        }

        else if (v14 == 1)
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
      v10 = qword_18A679490[v12 - 1];
    }
  }

  return v10;
}

- (int64_t)_prepareToTransitionToViewSize:(CGSize)a3 fromOrientation:(int64_t)a4 toOrientation:(int64_t)a5 duration:(double)a6
{
  height = a3.height;
  width = a3.width;
  if ((*&self->_splitViewControllerFlags & 0x10) != 0)
  {
    [(UISplitViewControllerClassicImpl *)self _invalidateHidesMasterViewForAspectRatio:(a5 - 1) < 2];
  }

  if (a6 > 0.0 || !self->_rotatingFromOrientation)
  {
    self->_rotatingFromOrientation = a4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v13 = [WeakRetained masterViewController];
  v14 = [v13 view];

  [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
  self->_rotatingFromMasterViewFrame.origin.x = v15;
  self->_rotatingFromMasterViewFrame.origin.y = v16;
  self->_rotatingFromMasterViewFrame.size.width = v17;
  self->_rotatingFromMasterViewFrame.size.height = v18;
  if (!self->_transitioningToTraitCollection)
  {
    v19 = objc_loadWeakRetained(&self->_svc);
    v20 = [v19 _existingView];
    [v20 bounds];
    if (width != v22 || height != v21)
    {
      goto LABEL_11;
    }

    if ((a4 - 1) > 1)
    {
      if ((a4 - 3) >= 2)
      {
LABEL_11:

        goto LABEL_18;
      }

      v24 = a5 - 3;
    }

    else
    {
      v24 = a5 - 1;
    }

    if (v24 < 2)
    {
      v25 = 0;
      goto LABEL_76;
    }
  }

LABEL_18:
  v26 = [(UISplitViewControllerClassicImpl *)self _medusaStateForOrientation:a5 viewWidth:width];
  transitioningToTraitCollection = self->_transitioningToTraitCollection;
  if (transitioningToTraitCollection)
  {
    v28 = transitioningToTraitCollection;
  }

  else
  {
    v29 = objc_loadWeakRetained(&self->_svc);
    v28 = [v29 traitCollection];
  }

  v73 = v28;
  v30 = [(UISplitViewControllerClassicImpl *)self _internalModeForTraitCollection:v28 orientation:a5 viewSize:v26 medusaState:width, height];
  v31 = objc_loadWeakRetained(&self->_svc);
  v32 = [v31 traitCollection];
  v33 = [v32 horizontalSizeClass];

  lastNotifiedDisplayMode = self->_lastNotifiedDisplayMode;
  if ((lastNotifiedDisplayMode - 2) >= 2)
  {
    if (lastNotifiedDisplayMode == 1)
    {
      v37 = [v14 superview];
      v38 = objc_loadWeakRetained(&self->_svc);
      v39 = [v38 view];
      v35 = v14;
      if (v37 == v39)
      {
        v71 = objc_loadWeakRetained(&self->_svc);
        v40 = [v71 masterViewController];
        if (v40)
        {
          v36 = (v40[94] & 3u) - 1 < 2;
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
      v35 = v14;
      v36 = 0;
    }
  }

  else
  {
    v35 = v14;
    v36 = 1;
  }

  if (v30 == 4)
  {
    v42 = 0;
    v43 = 0;
    v44 = v33 != 1 && v36;
    v72 = v44;
    if (v36 && v33 == 1)
    {
      v41 = 3;
    }

    else
    {
      v41 = 0;
    }
  }

  else if (v30 == 3)
  {
    v72 = 0;
    v41 = 0;
    v43 = 0;
    v42 = !v36;
  }

  else
  {
    if (v30 == 1)
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

  v14 = v35;
  v45 = objc_loadWeakRetained(&self->_svc);
  v46 = [v45 preferredDisplayMode];

  if (!v46)
  {
    v47 = objc_loadWeakRetained(&self->_svc);
    v48 = [v47 traitCollection];

    v49 = [v48 userInterfaceIdiom];
    if ((v49 == 1 || !v49 && -[UISplitViewControllerClassicImpl _iPhoneShouldUseOverlayInCurrentEnvironment](self, "_iPhoneShouldUseOverlayInCurrentEnvironment")) && [v48 horizontalSizeClass] != 1 && -[UITraitCollection horizontalSizeClass](v73, "horizontalSizeClass") != UIUserInterfaceSizeClassCompact)
    {
      [(UISplitViewControllerClassicImpl *)self _setPrimaryHidingStateForCurrentOrientation:0];
    }
  }

  if ((v30 - 2) > 2)
  {
    v50 = 2;
  }

  else
  {
    v50 = qword_18A6794A8[v30 - 2];
  }

  [(UISplitViewControllerClassicImpl *)self _displayModeWillChangeTo:v50];
  if ((v42 | v43) == 1)
  {
    v70 = v41;
    v51 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
    if ((*(&self->_splitViewControllerFlags + 1) & 1) == 0)
    {
      v52 = [v14 superview];
      v53 = objc_loadWeakRetained(&self->_svc);
      v54 = [v53 view];
      v55 = v54;
      if (v52 != v54)
      {

        v51 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
LABEL_60:
        v58 = v51[754];
        if ([*(&self->super.super.isa + v58) isPopoverVisible])
        {
          [*(&self->super.super.isa + v58) _dismissPopoverAnimated:0 stateOnly:1 notifyDelegate:1];
        }

        v59 = objc_loadWeakRetained(&self->_svc);
        v60 = [v59 masterViewController];
        [v60 _setPopoverController:0];

        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __106__UISplitViewControllerClassicImpl__prepareToTransitionToViewSize_fromOrientation_toOrientation_duration___block_invoke;
        v74[3] = &unk_1E70F35B8;
        v74[4] = self;
        v75 = v14;
        [UIView performWithoutAnimation:v74];

        goto LABEL_63;
      }

      v68 = objc_loadWeakRetained(&self->_svc);
      [v68 masterViewController];
      v56 = v69 = v14;
      v57 = [v56 _popoverController];

      v14 = v69;
      v51 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
      if (v57)
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
  v62 = [v61 masterViewController];
  [(UISplitViewControllerClassicImpl *)self _viewControllerHiding:v62];

  v63 = objc_loadWeakRetained(&self->_svc);
  v64 = [v63 masterViewController];
  if (!v64)
  {
    v66 = 0;
    goto LABEL_70;
  }

  v65 = (v64[94] & 3) - 1;

  if (v65 <= 1)
  {
    v63 = objc_loadWeakRetained(&self->_svc);
    v66 = [v63 masterViewController];
    [(UIViewController *)v66 __viewWillDisappear:?];
LABEL_70:
  }

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFF1FLL | 0x60);
  v41 = 2;
LABEL_72:
  self->_transitioningToInternalMode = v30;
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

- (void)_animateTransitionToOrientation:(int64_t)a3 duration:(double)a4 masterChange:(int64_t)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v10 = [WeakRetained childViewControllersCount];

  if (a4 > 0.0 && v10 == 2)
  {
    [(UISplitViewControllerClassicImpl *)self snapshotForRotationFromInterfaceOrientation:self->_rotatingFromOrientation toInterfaceOrientation:a3 masterChange:a5];
    if (self->_rotationSnapshotView)
    {
      rotatingFromOrientation = self->_rotatingFromOrientation;
      if ((rotatingFromOrientation - 1) >= 2)
      {
        if (((rotatingFromOrientation - 3) | (a3 - 3)) >= 2)
        {
          goto LABEL_9;
        }
      }

      else if ((a3 - 1) > 1)
      {
LABEL_9:
        v13 = objc_loadWeakRetained(&self->_svc);
        v14 = [v13 masterViewController];
        v15 = [v14 view];
        [v15 setHidden:1];

LABEL_12:
        goto LABEL_13;
      }

      v16 = objc_loadWeakRetained(&self->_svc);
      v13 = [v16 mutableChildViewControllers];

      [v13 enumerateObjectsUsingBlock:&__block_literal_global_142];
      goto LABEL_12;
    }
  }

LABEL_13:
  v17 = objc_loadWeakRetained(&self->_svc);
  v18 = [v17 _existingView];
  v19 = [v18 window];

  if (v19)
  {
    v20 = objc_loadWeakRetained(&self->_svc);
    v21 = [v20 view];
    [v21 setNeedsLayout];

    v23 = objc_loadWeakRetained(&self->_svc);
    v22 = [v23 view];
    [v22 layoutIfNeeded];
  }
}

void __90__UISplitViewControllerClassicImpl__animateTransitionToOrientation_duration_masterChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 view];
  [v2 setHidden:1];
}

- (void)_completeTransitionFromOrientation:(int64_t)a3 masterChange:(int64_t)a4
{
  v94 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v83 = [WeakRetained mutableChildViewControllers];

  rotatingFromOrientation = self->_rotatingFromOrientation;
  self->_rotatingFromOrientation = 0;
  if (self->_rotationSnapshotView)
  {
    v9 = objc_loadWeakRetained(&self->_svc);
    v10 = [v9 interfaceOrientation];
    if ((rotatingFromOrientation - 1) < 2)
    {
      v11 = v10 - 1;

      if (v11 > 1)
      {
        goto LABEL_18;
      }

LABEL_7:
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v13 = v83;
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

            v17 = [*(*(&v89 + 1) + 8 * v16) view];
            [v17 setHidden:0];

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
        v19 = [(UISplitViewControllerClassicImpl *)self _targetEdgeForPopover];
        v20 = objc_loadWeakRetained(&self->_svc);
        v21 = [v20 view];
        [(UIPopoverController *)hiddenPopoverController _presentPopoverFromEdge:v19 ofView:v21 animated:0];

        *&self->_splitViewControllerFlags &= ~0x100uLL;
      }

      goto LABEL_19;
    }

    if ((rotatingFromOrientation - 3) >= 2)
    {
    }

    else
    {
      v12 = v10 - 3;

      if (v12 < 2)
      {
        goto LABEL_7;
      }
    }

LABEL_18:
    v22 = objc_loadWeakRetained(&self->_svc);
    v23 = [v22 masterViewController];
    v24 = [v23 view];
    [v24 setHidden:0];

    [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = objc_loadWeakRetained(&self->_svc);
    v34 = [v33 masterViewController];
    v35 = [v34 view];
    [v35 setFrame:{v26, v28, v30, v32}];

LABEL_19:
    v36 = objc_loadWeakRetained(&self->_svc);
    v37 = [v36 view];
    v38 = [v37 layer];
    [v38 setNeedsLayoutOnGeometryChange:0];

    [(UIView *)self->_rotationSnapshotView removeFromSuperview];
    rotationSnapshotView = self->_rotationSnapshotView;
    self->_rotationSnapshotView = 0;

    v40 = objc_loadWeakRetained(&self->_svc);
    v41 = [v40 view];
    v42 = [v41 layer];
    [v42 setNeedsLayoutOnGeometryChange:1];
  }

  v43 = objc_loadWeakRetained(&self->_svc);
  if (v43)
  {
    v44 = (v43[94] & 3u) - 1 < 2;

    if (v44)
    {
      if (a4 == 1)
      {
        v45 = objc_loadWeakRetained(&self->_svc);
        v46 = v45;
        if (v45[40] || (*(&self->_splitViewControllerFlags + 1) & 1) != 0)
        {
        }

        else
        {
          v47 = [(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible];

          if (!v47)
          {
            v48 = objc_loadWeakRetained(&self->_svc);
            v49 = [v48 masterViewController];
            objc_initWeak(&location, v49);

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

      else if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v53 = objc_loadWeakRetained(&self->_svc);
        v54 = [v53 masterViewController];
        objc_initWeak(&location, v54);

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
  v60 = [v59 interfaceOrientation];
  if ((a3 - 1) < 2)
  {
    v61 = (v60 - 1) < 2;

    goto LABEL_38;
  }

  if ((a3 - 3) < 2)
  {
    v61 = (v60 - 3) < 2;

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
    if (a4)
    {
      v82 = [(UIPopoverController *)v62 popoverView];
      [(UIPopoverController *)self->_hiddenPopoverController _dismissPopoverAnimated:0 stateOnly:1 notifyDelegate:1];
      v63 = objc_loadWeakRetained(&self->_svc);
      v64 = [v63 masterViewController];
      v65 = [v64 view];
      [v82 frame];
      [v65 setFrame:?];

      v81 = objc_loadWeakRetained(&self->_svc);
      v66 = [v81 view];
      v67 = objc_loadWeakRetained(&self->_svc);
      v68 = [v67 masterViewController];
      v69 = [v68 view];
      v70 = objc_loadWeakRetained(&self->_svc);
      v71 = [v70 detailViewController];
      v72 = [v71 view];
      [v66 insertSubview:v69 belowSubview:v72];

      v73 = objc_loadWeakRetained(&self->_svc);
      v74 = [v73 masterViewController];
      [v74 _setPopoverController:0];
    }
  }

  else
  {
    *&self->_splitViewControllerFlags &= ~0x100uLL;
  }

LABEL_45:
  v75 = objc_loadWeakRetained(&self->_svc);
  v76 = [v75 displayMode];
  v77 = 128;
  if (v76 == 2)
  {
    v77 = 64;
  }

  self->_splitViewControllerFlags = (*&self->_splitViewControllerFlags & 0xFFFFFFFFFFFFFF1FLL | v77);

LABEL_48:
  v78 = objc_loadWeakRetained(&self->_svc);
  v79 = [v78 view];
  [v79 setNeedsLayout];

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
  v3 = [WeakRetained _isCollapsed];

  return v3;
}

- (id)_childViewControllerForSpokenContent
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained detailViewController];

  return v3;
}

- (id)_childViewControllersToSendViewWillTransitionToSize
{
  if ([(UISplitViewControllerClassicImpl *)self _isTransitioningFromCollapsedToSeparated])
  {
    v3 = [MEMORY[0x1E695DF70] array];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v5 = [WeakRetained masterViewController];

    if (v5)
    {
      [v3 addObject:v5];
    }

    v6 = objc_loadWeakRetained(&self->_svc);
    v7 = [v6 detailViewController];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [(UISplitViewControllerClassicImpl *)self _preservedDetailController];

      if (!v8)
      {
        goto LABEL_10;
      }
    }

    [v3 addObject:v8];
  }

  else
  {
    v8 = objc_loadWeakRetained(&self->_svc);
    v3 = [v8 _super_childViewControllersToSendViewWillTransitionToSize];
  }

LABEL_10:

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v9 = [WeakRetained interfaceOrientation];

  switch(v9)
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
      if (v9 != 2)
      {
        v10 = 0.0;
      }

      break;
  }

  CGAffineTransformMakeRotation(&t1, v10);
  if (v7)
  {
    [v7 targetTransform];
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
  [v7 transitionDuration];
  v15 = [(UISplitViewControllerClassicImpl *)self _prepareToTransitionToViewSize:v9 fromOrientation:v13 toOrientation:width duration:height, v14];
  self->_transitioningMasterChange = v15;
  *&self->_splitViewControllerFlags &= ~0x400000000uLL;
  v16 = objc_loadWeakRetained(&self->_svc);
  [v16 _super_viewWillTransitionToSize:v7 withTransitionCoordinator:{width, height}];

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
  v20[5] = v9;
  [v7 animateAlongsideTransition:v21 completion:v20];
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
  v47 = [WeakRetained detailViewController];

  v4 = objc_loadWeakRetained(&self->_svc);
  v5 = [v4 detailViewController];
  v6 = [v5 childModalViewController];

  if (v6)
  {
    while (1)
    {
      v7 = [v6 presentationController];
      v8 = [v7 shouldPresentInFullscreen];

      if (v8)
      {
        break;
      }

      v9 = v6;

      v6 = [v9 presentedViewController];

      v47 = v9;
      if (!v6)
      {
        v10 = v9;
        goto LABEL_6;
      }
    }
  }

  v10 = v47;
LABEL_6:
  v48 = v10;
  v11 = [v10 view];
  if (!self->_rotationSnapshotView)
  {
    [UIView setAnimationsEnabled:0];
    v12 = objc_loadWeakRetained(&self->_svc);
    v13 = [v12 masterViewController];
    v14 = [v13 view];

    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [v14 setFrame:{self->_rotatingFromMasterViewFrame.origin.x, self->_rotatingFromMasterViewFrame.origin.y, self->_rotatingFromMasterViewFrame.size.width, self->_rotatingFromMasterViewFrame.size.height}];
    [v14 layoutBelowIfNeeded];
    v46 = v14;
    v23 = [v14 superview];
    v24 = objc_loadWeakRetained(&self->_svc);
    v25 = [v24 view];
    if (v23 == v25)
    {
      v43 = objc_loadWeakRetained(&self->_svc);
      [v43 view];
      v26 = v44 = v11;
      v27 = [v26 subviews];
      v45 = [v27 indexOfObject:v44] + 1;

      v11 = v44;
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
    v35 = [v34 view];
    v36 = [v35 backgroundColor];
    [(UIView *)v33 setEdgePaddingColor:v36];

    v37 = self->_rotationSnapshotView;
    v38 = objc_loadWeakRetained(&self->_svc);
    v39 = [v38 masterViewController];
    v40 = [v39 view];
    [(UIView *)v37 captureSnapshotOfView:v40 withSnapshotType:self->_transitioningMasterChange != 1];

    v41 = objc_loadWeakRetained(&self->_svc);
    v42 = [v41 view];
    [v42 insertSubview:self->_rotationSnapshotView atIndex:v45];

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
    v4 = [WeakRetained view];
    [v4 layoutBelowIfNeeded];

    v5 = [UISnapshotView alloc];
    v6 = objc_loadWeakRetained(&self->_svc);
    v7 = [v6 view];
    [v7 bounds];
    v8 = [(UISnapshotView *)v5 initWithFrame:?];
    rotationSnapshotView = self->_rotationSnapshotView;
    self->_rotationSnapshotView = v8;

    v10 = self->_rotationSnapshotView;
    v11 = objc_loadWeakRetained(&self->_svc);
    v12 = [v11 view];
    [(UIView *)v10 captureSnapshotOfView:v12 withSnapshotType:1];

    v13 = objc_loadWeakRetained(&self->_svc);
    v14 = [v13 view];
    [v14 addSubview:self->_rotationSnapshotView];

    [UIView setAnimationsEnabled:1];
    v15 = self->_rotationSnapshotView;
    v17 = objc_loadWeakRetained(&self->_svc);
    v16 = [v17 view];
    [v16 bounds];
    [(UIView *)v15 setFrame:?];
  }
}

- (void)snapshotForRotationFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 masterChange:(int64_t)a5
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
    v11 = [v10 view];
    v12 = [v11 layer];
    [v12 setNeedsLayoutOnGeometryChange:0];

    if (!a5 || (*(&self->_splitViewControllerFlags + 1) & 1) != 0 || [(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible])
    {
      if ((a3 - 1) < 2)
      {
        if ((a4 - 1) > 1)
        {
          goto LABEL_18;
        }

LABEL_13:
        [(UISplitViewControllerClassicImpl *)self snapshotAllViews];
        if ([(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible])
        {
          v13 = [(UIPopoverController *)self->_hiddenPopoverController popoverView];
          v14 = [UISnapshotView alloc];
          [v13 bounds];
          v15 = [(UISnapshotView *)v14 initWithFrame:?];
          [v13 bounds];
          v17 = v16;
          v19 = v18;
          [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
          v21 = v20;
          v23 = v22;
          v24 = [(UISplitViewControllerClassicImpl *)self _layoutPrimaryOnRight];
          v25 = objc_loadWeakRetained(&self->_svc);
          [v25 primaryColumnWidth];
          v27 = v26;

          v28 = -v27;
          if (!v24)
          {
            v28 = v27;
          }

          v29 = v21 + v28;
          [v13 _snapshotBounds];
          [(UISnapshotView *)v15 captureSnapshotRect:v13 fromView:1 withSnapshotType:?];
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

      if (((a4 - 3) | (a3 - 3)) < 2)
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
    v32 = [v31 view];
    v33 = [v32 layer];
    [v33 setNeedsLayoutOnGeometryChange:1];

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

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v27 = *MEMORY[0x1E69E9840];
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v8 = [WeakRetained view];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v13 = objc_loadWeakRetained(&self->_svc);
    self->_rotatingMasterChange = -[UISplitViewControllerClassicImpl _prepareToTransitionToViewSize:fromOrientation:toOrientation:duration:](self, "_prepareToTransitionToViewSize:fromOrientation:toOrientation:duration:", [v13 interfaceOrientation], a3, v10, v12, a4);

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = objc_loadWeakRetained(&self->_svc);
    v15 = [v14 childViewControllers];

    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v22 + 1) + 8 * i);
          [v20 willRotateToInterfaceOrientation:a3 duration:a4];
          v21 = [v20 view];
          [v21 layoutBelowIfNeeded];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }
  }
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v8 = [WeakRetained childViewControllersCount];

    v9 = objc_loadWeakRetained(&self->_svc);
    v10 = v9;
    if (v8 == 2)
    {
      v11 = [v9 mutableChildViewControllers];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __87__UISplitViewControllerClassicImpl_willAnimateRotationToInterfaceOrientation_duration___block_invoke;
      v13[3] = &__block_descriptor_48_e15_v32__0_8Q16_B24l;
      v13[4] = a3;
      *&v13[5] = a4;
      [v11 enumerateObjectsUsingBlock:v13];
    }

    else
    {
      v12 = [v9 masterViewController];
      [v12 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
    }

    [(UISplitViewControllerClassicImpl *)self _animateTransitionToOrientation:a3 duration:self->_rotatingMasterChange masterChange:a4];
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    [(UISplitViewControllerClassicImpl *)self _completeTransitionFromOrientation:a3 masterChange:self->_rotatingMasterChange];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v6 = [WeakRetained mutableChildViewControllers];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
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
          [v12 didRotateFromInterfaceOrientation:{a3, v14}];
          v13 = [v12 view];
          [v13 setNeedsLayout];
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
      v16 = [v15 interfaceOrientation];
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
            v79 = [(UISplitViewControllerClassicImpl *)self _targetEdgeForPopover];
            v80 = objc_loadWeakRetained(&self->_svc);
            v81 = [v80 view];
            [(UIPopoverController *)hiddenPopoverController _presentPopoverFromEdge:v79 ofView:v81 animated:1];

            goto LABEL_7;
          }

          v77 = [(UISplitViewControllerClassicImpl *)self _hidesMasterViewInCurrentOrientation];

          if (v77)
          {
            goto LABEL_64;
          }

          origin = self->_rotatingToMasterViewFrame.origin;
          width = self->_rotatingToMasterViewFrame.size.width;
          height = self->_rotatingToMasterViewFrame.size.height;
          v85 = [(UIPopoverController *)self->_hiddenPopoverController popoverView];
          v63 = v85;
          if (v85)
          {
            [v85 frame];
            v87 = v86;
            v89 = v88;
            v96[0] = MEMORY[0x1E69E9820];
            v96[1] = 3221225472;
            v96[2] = __68__UISplitViewControllerClassicImpl__updateMasterViewControllerFrame__block_invoke_2;
            v96[3] = &unk_1E7100760;
            v96[4] = self;
            v90 = v63;
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

        v17 = v16 - 3;
      }

      else
      {
        v17 = v16 - 1;
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
      v59 = [v58 masterViewController];
      v60 = [v59 view];
      [v60 setFrame:{self->_rotatingToMasterViewFrame.origin.x, self->_rotatingToMasterViewFrame.origin.y, self->_rotatingToMasterViewFrame.size.width, self->_rotatingToMasterViewFrame.size.height}];

      v61 = objc_loadWeakRetained(&self->_svc);
      v62 = [v61 masterViewController];
      v63 = [v62 childModalViewController];

      if (v63)
      {
        do
        {
          v64 = [v63 presentationController];
          v65 = [v64 shouldPresentInFullscreen];

          if (v65)
          {
            break;
          }

          [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
          v67 = v66;
          v69 = v68;
          v71 = v70;
          v73 = v72;
          v74 = [v63 view];
          [v74 setFrame:{v67, v69, v71, v73}];

          v75 = [v63 presentedViewController];

          v63 = v75;
        }

        while (v75);
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
  v19 = [v18 _isRotating];

  if (v19 && transitioningMasterChange == 1)
  {
    if ((*&self->_splitViewControllerFlags & 0x2E0) == 0x220)
    {
      v20 = objc_loadWeakRetained(&self->_delegate);
      v21 = objc_loadWeakRetained(&self->_svc);
      v22 = [v21 masterViewController];
      [v20 splitViewController:v21 willShowViewController:v22 invalidatingBarButtonItem:self->_barButtonItem];
    }

    v23 = objc_loadWeakRetained(&self->_svc);
    v24 = v23;
    if (v23 && (*(v23 + 94) & 3u) - 1 <= 1 && (*(&self->_splitViewControllerFlags + 1) & 1) == 0)
    {
      v25 = [(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible];

      if (v25)
      {
        goto LABEL_17;
      }

      v26 = objc_loadWeakRetained(&self->_svc);
      v27 = [v26 masterViewController];
      [v27 setAfterAppearanceBlock:0];

      v24 = objc_loadWeakRetained(&self->_svc);
      v28 = [v24 masterViewController];
      [v28 __viewWillAppear:0];
    }
  }

LABEL_17:
  v29 = objc_loadWeakRetained(&self->_svc);
  v30 = [v29 masterViewController];

  if (v30)
  {
    v31 = [(UIPopoverController *)self->_hiddenPopoverController contentViewController];
    v32 = v31;
    if (v31 == v30)
    {
      v33 = [v30 view];
      v34 = [(UIPopoverController *)self->_hiddenPopoverController popoverView];
      v35 = [v33 isDescendantOfView:v34];

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

  v37 = [(UIPopoverController *)self->_hiddenPopoverController isPopoverVisible];

  if (!v37)
  {
    v36 = objc_loadWeakRetained(&self->_svc);
    v38 = [v36 masterViewController];
    v39 = [v38 view];
    [v39 setFrame:{self->_rotatingToMasterViewFrame.origin.x, self->_rotatingToMasterViewFrame.origin.y, self->_rotatingToMasterViewFrame.size.width, self->_rotatingToMasterViewFrame.size.height}];

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
    v47 = [v46 masterViewController];
    v48 = [v47 _popoverController];
    v49 = [v48 isPopoverVisible];

    v50 = 0.5;
    if ((v49 & 1) == 0)
    {
      [(UISplitViewControllerClassicImpl *)self _screenSizeInMainScene:1];
      v50 = v51 - v43;
    }

    v52 = objc_loadWeakRetained(&self->_svc);
    v53 = [v52 masterViewController];
    v54 = [v53 view];
    [v54 setFrame:{v50, v41, v43, v45}];
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

- (void)_setDetailViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v7 = [WeakRetained detailViewController];
  v8 = [v7 view];
  [v8 setFrame:{x, y, width, height}];
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
    v5 = [v4 detailViewController];

    if (v5)
    {
      v6 = [objc_opt_self() mainScreen];
      [v6 _referenceBounds];
      v8 = ceil(v7 * 0.666);

      v9 = ceil(v8 * 0.6);
      v10 = objc_loadWeakRetained(&self->_svc);
      v11 = [v10 detailViewController];
      v12 = [v11 view];
      [v12 frame];
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
    v27 = [(UISplitViewControllerClassicImpl *)self _iPhoneShouldUseOverlayIfRegularWidth];

    if (!v27)
    {
      v32 = *&self->_splitViewControllerFlags & 0x300000;
      [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = objc_loadWeakRetained(&self->_svc);
      v42 = [v41 masterViewController];
      v43 = [v42 view];
      [v43 setFrame:{v34, v36, v38, v40}];

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
  v48 = [v47 masterViewController];
  v49 = [v48 _popoverController];
  if (([v49 isPopoverVisible] & 1) == 0)
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
      v54 = [v53 masterViewController];
      [v52 splitViewController:v53 willShowViewController:v54 invalidatingBarButtonItem:self->_barButtonItem];
    }

    goto LABEL_35;
  }

  v50 = objc_loadWeakRetained(p_svc);
  v51 = [v50 _isRotating];

  if (!v51)
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
  v65 = [v64 _isRotating];

  if (v65)
  {
    v66 = objc_loadWeakRetained(p_svc);
    v67 = [v66 detailViewController];
    v73 = [v67 childModalViewController];

    v68 = v73;
    if (v73)
    {
      while (1)
      {
        v69 = [v68 presentationController];
        v70 = [v69 shouldPresentInFullscreen];

        if (v70)
        {
          break;
        }

        v71 = [v74 view];
        [v71 setFrame:{v60, v61, v62, v63}];

        v72 = [v74 presentedViewController];

        v68 = v72;
        if (!v72)
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
  v3 = [(UISplitViewControllerClassicImpl *)self _masterFocusContainerGuide];

  if (v3)
  {
    v4 = [(UISplitViewControllerClassicImpl *)self _masterFocusContainerGuide];
    [(UISplitViewControllerClassicImpl *)self _masterViewFrame];
    [v4 _setManualLayoutFrame:?];
  }

  v5 = [(UISplitViewControllerClassicImpl *)self _detailFocusContainerGuide];

  if (v5)
  {
    v6 = [(UISplitViewControllerClassicImpl *)self _detailFocusContainerGuide];
    [(UISplitViewControllerClassicImpl *)self _detailViewFrame];
    [v6 _setManualLayoutFrame:?];
  }
}

- (void)_getRotationContentSettings:(id *)a3
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    v6 = 14;
  }

  else
  {
    v6 = 15;
  }

  a3->var6 = v6;
}

- (int64_t)_medusaState
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained interfaceOrientation];
  v5 = objc_loadWeakRetained(&self->_svc);
  v6 = [v5 view];
  [v6 bounds];
  v8 = [(UISplitViewControllerClassicImpl *)self _medusaStateForOrientation:v4 viewWidth:v7];

  return v8;
}

- (int64_t)_medusaStateForOrientation:(int64_t)a3 viewWidth:(double)a4
{
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v10 = [WeakRetained _screen];

    v11 = objc_loadWeakRetained(&self->_svc);
    v12 = [v11 _window];

    v13 = [v12 _windowHostingScene];
    v14 = [v13 _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

    if (v14)
    {
      goto LABEL_15;
    }

    [v10 _boundsForInterfaceOrientation:a3];
    v16 = v15;
    v18 = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 bounds];
      v20 = v19;
      v22 = v21;
      v23 = [v12 interfaceOrientation];
      if (a3 && v23 && a3 < 3 != ([v12 interfaceOrientation] - 1) < 2)
      {
        v20 = v22;
      }
    }

    else
    {
      v25 = [v12 _windowHostingScene];
      if (v25)
      {
        v26 = [v12 _windowHostingScene];
        [v26 _boundsForInterfaceOrientation:a3];
        v20 = v27;
      }

      else
      {
        [v10 _boundsForInterfaceOrientation:a3];
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
      if ((a3 - 5) >= 0xFFFFFFFFFFFFFFFELL && v16 * 0.3 < a4 && v16 * 0.5 >= a4)
      {
        v24 = 1;
        goto LABEL_16;
      }
    }

    else if (v30 <= 1112.0 && (a3 - 5) >= 0xFFFFFFFFFFFFFFFELL && v16 * 0.5 < a4)
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
  v3 = [WeakRetained viewControllers];

  return v3;
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained viewControllers];

  _UISaveReferencedChildViewControllers(v6, 0);
  v7 = objc_loadWeakRetained(&self->_svc);
  v8 = [v7 _window];

  if (v8)
  {
    v9 = [UIApp _sceneInterfaceOrientationFromWindow:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_loadWeakRetained(&self->_svc);
  [v4 encodeInteger:objc_msgSend(v10 forKey:{"displayMode"), @"SplitViewControllerDisplayMode"}];

  [v4 encodeInteger:v9 forKey:@"SplitViewInterfaceOrientation"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v6;
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
        v17 = [v16 _restorationIdentifierPath];

        if (!v17)
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

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained _window];

  if (v6)
  {
    v7 = [UIApp _sceneInterfaceOrientationFromWindow:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[UIDevice currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIApplicationStateRestorationUserInterfaceIdiom"];
  if (v9 == [v10 intValue])
  {
    v11 = objc_loadWeakRetained(&self->_svc);
    [v11 displayMode];

    if (v9 == 1)
    {
      v12 = [v4 decodeBoolForKey:@"SplitViewControllerShowingMasterView"];
    }

    else
    {
      v12 = 0;
    }

    if ([v4 containsValueForKey:@"SplitViewControllerDisplayMode"] && objc_msgSend(v4, "containsValueForKey:", @"SplitViewInterfaceOrientation"))
    {
      if ([v4 decodeIntegerForKey:@"SplitViewInterfaceOrientation"] != v7)
      {
        goto LABEL_36;
      }

      v18 = [v4 decodeIntegerForKey:@"SplitViewControllerDisplayMode"];
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
    v21 = [v20 displayMode];

    if (v18 != v21)
    {
      v22 = objc_loadWeakRetained(&self->_svc);
      if ([v22 isViewLoaded])
      {
        v23 = objc_loadWeakRetained(&self->_svc);
        v24 = [v23 view];
        v25 = [v24 window];

        if (v25)
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
    if (v9)
    {
      v13 = @"Unspecified";
    }

    else
    {
      v13 = @"iPhone";
    }

    if (v9 == 1)
    {
      v13 = @"iPad";
    }

    v14 = v13;
    v15 = [v10 integerValue];
    if (v15)
    {
      v16 = @"Unspecified";
    }

    else
    {
      v16 = @"iPhone";
    }

    if (v15 == 1)
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
  v4 = [WeakRetained viewControllers];

  v5 = [v4 count];
  if (v5 == 2)
  {
    v7 = [v4 objectAtIndexedSubscript:1];
    v12[0] = v7;
    v8 = [v4 objectAtIndexedSubscript:0];
    v12[1] = v8;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  }

  else if (v5 == 1)
  {
    v6 = v4;
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_svc);
    v10 = [v9 viewControllers];
    NSLog(&cfstr_SWarningChecki.isa, "[UISplitViewControllerClassicImpl _additionalViewControllersToCheckForUserActivity]", v10);

    v6 = 0;
  }

  return v6;
}

- (id)_effectiveActivityItemsConfiguration
{
  v2 = [(UISplitViewControllerClassicImpl *)self viewControllers];
  v3 = [v2 lastObject];
  v4 = [v3 _effectiveActivityItemsConfiguration];

  return v4;
}

- (id)_deepestActionResponder
{
  v2 = [(UISplitViewControllerClassicImpl *)self viewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (id)_nextVisibleViewControllerForResponderAfterChildViewController:(id)a3
{
  v4 = a3;
  if (![(UISplitViewControllerClassicImpl *)self isCollapsed]&& ([(UISplitViewControllerClassicImpl *)self detailViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == v4))
  {
    v6 = [(UISplitViewControllerClassicImpl *)self masterViewController];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UISplitViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end