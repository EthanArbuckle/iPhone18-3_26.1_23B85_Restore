@interface _UISplitViewControllerAdaptiveImpl
- (BOOL)_allowsTriggeringToolbarCustomizationCommandActionWithSender:(id)sender;
- (BOOL)_areAnimatedTransitionsPermitted;
- (BOOL)_isCollapsed;
- (BOOL)_setNeedsUpdateAnimatedTransitionsEnabled;
- (BOOL)_showsSeparators;
- (BOOL)_updatePreferredColumnsEnforcingColumnPreferences:(uint64_t)preferences;
- (BOOL)_updatePreferredColumnsPrimaryEdgePreferenceMode:(void *)mode;
- (BOOL)_updatePreferredColumnsPrimaryEdgeSplitViewControllerColumn:(void *)column;
- (BOOL)_updatePreferredColumnsSecondaryEdgePreferenceMode:(void *)mode;
- (BOOL)_updatePreferredColumnsSecondaryEdgeSplitViewControllerColumn:(void *)column;
- (BOOL)canTileSidebarColumn:(int64_t)column;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)hasAppeared;
- (BOOL)isCollapsed;
- (BOOL)isGlobalSearchDonor:(id)donor;
- (BOOL)isGlobalSearchRecipient:(id)recipient;
- (BOOL)isRTL;
- (BOOL)isShowingColumn:(int64_t)column;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersInterfaceOrientationLocked;
- (BOOL)prefersPointerLocked;
- (CGRect)_frameForChildContentContainer:(id)container;
- (CGSize)_preferredContentSize;
- (CGSize)containerSize;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (NSString)description;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIEdgeInsets)additionalContainerContentInsetsForSplitViewControllerColumn:(int64_t)column;
- (UIEdgeInsets)containerInsets;
- (UITraitCollection)traitCollection;
- (_UISplitViewControllerAdaptiveImpl)initWithSplitViewController:(id)controller;
- (_UISplitViewControllerAdaptiveLayoutPreferredColumns)preferredColumns;
- (_UISplitViewControllerStyle)visualStyle;
- (double)_contentMarginForChildViewController:(id)controller;
- (double)_inspectorDividerPosition;
- (double)_primaryDividerPosition;
- (double)_supplementaryDividerPosition;
- (double)effectiveMinimumInspectorColumnWidth;
- (double)effectiveMinimumPrimaryColumnWidth;
- (double)maximumInspectorColumnWidth;
- (double)maximumPrimaryColumnWidth;
- (double)maximumSupplementaryColumnWidth;
- (double)minimumInspectorColumnWidth;
- (double)minimumPrimaryColumnWidth;
- (double)minimumSecondaryColumnWidth;
- (double)minimumSupplementaryColumnWidth;
- (double)preferredInspectorColumnWidth;
- (double)preferredInspectorColumnWidthFraction;
- (double)preferredPrimaryColumnWidth;
- (double)preferredPrimaryColumnWidthFraction;
- (double)preferredSecondaryColumnWidth;
- (double)preferredSecondaryColumnWidthFraction;
- (double)preferredSupplementaryColumnWidth;
- (double)preferredSupplementaryColumnWidthFraction;
- (double)primaryColumnWidth;
- (double)supplementaryColumnWidth;
- (id)_accessibilityLabelForTogglingInspectorWithLayout:(void *)layout;
- (id)_accessibilityLabelForTogglingSidebarWithLayout:(void *)layout;
- (id)_childViewControllerForSpokenContent;
- (id)_effectiveActivityItemsConfiguration;
- (id)_navigationControllerForTriggeringToolbarCustomizationWithSender:(id)sender;
- (id)_suspendAppearanceTransitionsInSplitViewController;
- (id)_systemImageForTogglingEdge:(void *)edge;
- (id)_topLevelViewControllerForColumn:(int64_t)column;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)childViewControllerForStatusBarStyle;
- (id)columnForSplitViewControllerColumn:(int64_t)column;
- (id)delegate;
- (id)displayModeButtonItem;
- (id)globalSearchController;
- (id)globalSearchDonorViewController;
- (id)layout;
- (id)navigationControllerForColumn:(int64_t)column;
- (id)preferredFocusEnvironments;
- (id)scheduledLayout;
- (id)viewControllerForColumn:(int64_t)column;
- (id)viewControllers;
- (int64_t)_columnForViewController:(id)controller;
- (int64_t)_trailingmostColumnForGlobalSearchItems;
- (int64_t)displayMode;
- (int64_t)displayModeButtonVisibility;
- (int64_t)preferredLeadingStatusBarStyle;
- (int64_t)preferredTrafficLightStyle;
- (int64_t)preferredTrailingStatusBarStyle;
- (int64_t)primaryBackgroundStyle;
- (int64_t)splitBehavior;
- (uint64_t)_areAnimatedTransitionsEnabled;
- (uint64_t)_columnForViewController:(void *)controller layout:;
- (uint64_t)_splitViewControllerColumnToShowWithInteractivePresentationGestureOnEdge:(void *)edge layout:;
- (uint64_t)_updatePreferredColumnsCollapsedSplitViewControllerColumn:(uint64_t)result;
- (uint64_t)_updatePreferredColumnsPreferredEdge:(uint64_t)result;
- (uint64_t)_updatePreferredColumnsPresentedSplitViewControllerColumn:(uint64_t)result;
- (uint64_t)_updatePreferredColumnsSplitBehavior:(uint64_t)result;
- (uint64_t)_updatePreferredColumnsToHideSplitViewControllerColumn:(void *)column layout:;
- (uint64_t)_updatePreferredColumnsToShowSplitViewControllerColumn:(void *)column layout:;
- (uint64_t)_updatePreferredColumnsToToggleSplitViewControllerColumnOnEdge:(void *)edge layout:;
- (uint64_t)_updatePreferredColumnsWithPreferredColumns:(void *)columns;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (void)_commonInit;
- (void)_designatedGlobalSearchColumn;
- (void)_didChangeChildModalViewControllers;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_dismantleContentViewInColumn:(uint64_t)column;
- (void)_dismantleEffectiveNavigationBarInColumn:(id *)WeakRetained;
- (void)_dismantleEffectiveToolbarInColumn:(id *)WeakRetained;
- (void)_dismantleViewControllerInColumn:(void *)column layout:;
- (void)_enableAppearanceTransitionsInViewController:(void *)controller;
- (void)_finalizeViewControllerInColumn:(void *)column layout:;
- (void)_handleColumnResizePanGestureRecognizer:(id)recognizer;
- (void)_handlePrimaryEdgeBarButtonItem:(id)item;
- (void)_handleResizeColumnToPreferredSizeTapGestureRecognizer:(id)recognizer;
- (void)_handleScreenEdgePanGestureRecognizer:(id)recognizer;
- (void)_handleSecondaryEdgeBarButtonItem:(id)item;
- (void)_handleSecondaryOnlyBarButtonItem:(id)item;
- (void)_initWithCoder:(id)coder;
- (void)_invalidateLayout;
- (void)_invalidateLayoutForColumnVisibilityChange;
- (void)_invalidateLayoutForSizeChange;
- (void)_invalidateLayoutPerformingTransitionAlongsideTransitionCoordinator:(uint64_t)coordinator;
- (void)_invalidateSplitViewControllerPreferences;
- (void)_marginInfoForChild:(id)child leftMargin:(double *)margin rightMargin:(double *)rightMargin;
- (void)_navigationControllerDidUpdateTopViewController:(id)controller;
- (void)_performAnimatedTransitionIfNeededAndInAnimationBlock;
- (void)_prepareLayout;
- (void)_prepareModelNavigationViewControllerInColumn:(void *)column;
- (void)_preparePresentationControllerForPresenting:(id)presenting;
- (void)_prepareViewControllerInColumn:(void *)column layout:;
- (void)_presentationControllerDidEndDismissalTransition:(id)transition completed:(BOOL)completed;
- (void)_presentationControllerDidEndPresentationTransition:(id)transition completed:(BOOL)completed;
- (void)_presentationControllerWillBeginDismissalTransition:(id)transition;
- (void)_presentationControllerWillBeginPresentationTransition:(id)transition;
- (void)_setAllowsSceneResizeToShowAdditionalColumns;
- (void)_setForceDisplayModeBarButtonHidden:(BOOL)hidden;
- (void)_setShowsSeparators:(BOOL)separators;
- (void)_setUsesExtraWidePrimaryColumn:(BOOL)column;
- (void)_setVisibleToggleButtonRequiresPresentsWithGesture:(BOOL)gesture;
- (void)_solveLayout;
- (void)_tabBarControllerDidChangeSelection:(id)selection;
- (void)_toggleSplitViewControllerColumnVisibility:(id *)visibility;
- (void)_triggerInspectorKeyCommandAction:(id)action;
- (void)_triggerSidebarKeyCommandAction:(id)action;
- (void)_triggerToolbarCustomizationCommandAction:(id)action;
- (void)_updateChildContentMargins;
- (void)_updateForReselectionInContainingTabBarController;
- (void)_updatePreferredColumnsToPreferredDisplayMode:(void *)result;
- (void)_updatePreferredDisplayModeForPreferredColumns;
- (void)_validateTriggerInspectorKeyCommand:(id)command;
- (void)_validateTriggerSidebarKeyCommand:(id)command;
- (void)_viewControllerChildViewControllersDidChange:(id)change;
- (void)encodeWithCoder:(id)coder;
- (void)hideColumn:(int64_t)column;
- (void)loadView;
- (void)navigationItemBarButtonItemGroupsDidChange:(id)change;
- (void)removeChildViewController:(id)controller;
- (void)setDelegate:(id)delegate;
- (void)setDisplayModeButtonVisibility:(int64_t)visibility;
- (void)setMaximumInspectorColumnWidth:(double)width;
- (void)setMaximumPrimaryColumnWidth:(double)width;
- (void)setMaximumSupplementaryColumnWidth:(double)width;
- (void)setMinimumInspectorColumnWidth:(double)width;
- (void)setMinimumPrimaryColumnWidth:(double)width;
- (void)setMinimumSecondaryColumnWidth:(double)width;
- (void)setMinimumSupplementaryColumnWidth:(double)width;
- (void)setPreferredDisplayMode:(int64_t)mode;
- (void)setPreferredInspectorColumnWidth:(double)width;
- (void)setPreferredInspectorColumnWidthFraction:(double)fraction;
- (void)setPreferredPrimaryColumnWidth:(double)width;
- (void)setPreferredPrimaryColumnWidthFraction:(double)fraction;
- (void)setPreferredSecondaryColumnWidth:(double)width;
- (void)setPreferredSecondaryColumnWidthFraction:(double)fraction;
- (void)setPreferredSplitBehavior:(int64_t)behavior;
- (void)setPreferredSupplementaryColumnWidth:(double)width;
- (void)setPreferredSupplementaryColumnWidthFraction:(double)fraction;
- (void)setPresentsWithGesture:(BOOL)gesture;
- (void)setPrimaryBackgroundStyle:(int64_t)style;
- (void)setPrimaryEdge:(int64_t)edge;
- (void)setPrimaryEdgeAdditionalBarButtonItemGroups:(id)groups;
- (void)setSecondaryEdgeAdditionalBarButtonItemGroups:(id)groups;
- (void)setShowsSecondaryOnlyButton:(BOOL)button;
- (void)setStyle:(int64_t)style;
- (void)setView:(id)view;
- (void)setViewController:(id)controller forColumn:(int64_t)column;
- (void)setViewControllers:(id)controllers;
- (void)showColumn:(int64_t)column;
- (void)showDetailViewController:(id)controller sender:(id)sender;
- (void)showViewController:(id)controller sender:(id)sender;
- (void)showViewControllerForGlobalSearchController:(id)controller completion:(id)completion;
- (void)splitViewControllerColumnDidRequestToBecomeVisible:(int64_t)visible;
- (void)splitViewControllerLayout:(id)layout didRequestToCollapseSplitViewControllerColumns:(id)columns inSplitViewControllerColumn:(int64_t)column;
- (void)splitViewControllerLayout:(id)layout didRequestToDismissSplitViewControllerColumn:(int64_t)column;
- (void)splitViewControllerLayout:(id)layout didRequestToPresentSplitViewControllerColumn:(int64_t)column;
- (void)traitCollectionDidChange:(id)change;
- (void)updateForGlobalSearchControllerChange;
- (void)viewDidLayoutSubviews;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation _UISplitViewControllerAdaptiveImpl

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __81___UISplitViewControllerAdaptiveImpl_preferredScreenEdgesDeferringSystemGestures__block_invoke;
  v36 = &unk_1E7125D00;
  v7 = v6;
  v37 = v7;
  selfCopy = self;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  primaryEdge = [v7 primaryEdge];
  if (self)
  {
    primaryEdge2 = [(_UISplitViewControllerAdaptiveImpl *)self primaryEdge];
    isRTL = [(_UISplitViewControllerAdaptiveImpl *)self isRTL];
    v11 = -1.0;
    if (!primaryEdge2)
    {
      v11 = 1.0;
    }

    if (primaryEdge2 != primaryEdge)
    {
      v11 = -v11;
    }

    if (isRTL)
    {
      v11 = -v11;
    }

    if (v11 >= 0.0)
    {
      v12 = 2;
    }

    else
    {
      v12 = 8;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 splitViewControllerColumnAtEdge:primaryEdge];
  if ((~v35(v34, v13) & v12) == 0)
  {
    v31[3] |= v12;
  }

  v14 = primaryEdge == 0;
  if (self)
  {
    primaryEdge3 = [(_UISplitViewControllerAdaptiveImpl *)self primaryEdge];
    isRTL2 = [(_UISplitViewControllerAdaptiveImpl *)self isRTL];
    v17 = -1.0;
    if (!primaryEdge3)
    {
      v17 = 1.0;
    }

    if (primaryEdge3 != v14)
    {
      v17 = -v17;
    }

    if (isRTL2)
    {
      v17 = -v17;
    }

    if (v17 >= 0.0)
    {
      v18 = 2;
    }

    else
    {
      v18 = 8;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = [v7 splitViewControllerColumnAtEdge:v14];
  if ((~v35(v34, v19) & v18) == 0)
  {
    v31[3] |= v18;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __81___UISplitViewControllerAdaptiveImpl_preferredScreenEdgesDeferringSystemGestures__block_invoke_2;
  v29[3] = &unk_1E7125D28;
  v29[4] = &v30;
  v29[5] = v34;
  [v7 enumerateDisplayOrder:v29];
  v20 = self->_leftScreenEdgePanGestureRecognizer;
  v21 = self->_rightScreenEdgePanGestureRecognizer;
  edges = [(UIScreenEdgePanGestureRecognizer *)v20 edges];
  if (([v7 isCollapsed] & 1) == 0 && -[_UISplitViewControllerAdaptiveImpl presentsWithGesture](self, "presentsWithGesture") && -[_UISplitViewControllerAdaptiveImpl _splitViewControllerColumnToShowWithInteractivePresentationGestureOnEdge:layout:](self, edges, v7) != 999)
  {
    v23 = v31[3];
    v24 = [(UIScreenEdgePanGestureRecognizer *)v20 edges]| v23;
    v31[3] = v24;
  }

  edges2 = [(UIScreenEdgePanGestureRecognizer *)v21 edges];
  if (([v7 isCollapsed] & 1) != 0 || !-[_UISplitViewControllerAdaptiveImpl presentsWithGesture](self, "presentsWithGesture"))
  {
    v27 = v31[3];
  }

  else
  {
    v26 = [(_UISplitViewControllerAdaptiveImpl *)self _splitViewControllerColumnToShowWithInteractivePresentationGestureOnEdge:edges2 layout:v7];
    v27 = v31[3];
    if (v26 != 999)
    {
      v27 |= [(UIScreenEdgePanGestureRecognizer *)v21 edges];
      v31[3] = v27;
    }
  }

  _Block_object_dispose(&v30, 8);
  return v27;
}

- (BOOL)isRTL
{
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  viewIfLoaded = [splitViewController viewIfLoaded];
  v4 = [viewIfLoaded effectiveUserInterfaceLayoutDirection] == 1;

  return v4;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68___UISplitViewControllerAdaptiveImpl_prefersHomeIndicatorAutoHidden__block_invoke;
  v10[3] = &unk_1E7125CB0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  v13 = &v14;
  [v7 enumerateDisplayInOrder:0 withBlock:v10];
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (_UISplitViewControllerStyle)visualStyle
{
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  _styleProvider = [splitViewController _styleProvider];

  return _styleProvider;
}

- (void)_setAllowsSceneResizeToShowAdditionalColumns
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    visualStyle = [self visualStyle];
    allowsSceneResize = [visualStyle allowsSceneResize];

    if (allowsSceneResize)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_setAllowsSceneResizeToShowAdditionalColumns___s_category);
      if (*CategoryCachedImpl)
      {
        v5 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = v5;
          splitViewController = [self splitViewController];
          v8 = 136315394;
          v9 = "[_UISplitViewControllerAdaptiveImpl _setAllowsSceneResizeToShowAdditionalColumns]";
          v10 = 2048;
          v11 = splitViewController;
          _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s svc = %p", &v8, 0x16u);
        }
      }

      self[39] |= 0x2000000000uLL;
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v38 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v23 viewWillLayoutSubviews];
  if ((*(&self->_implFlags + 4) & 8) == 0)
  {
    v3 = *(MEMORY[0x1E695F050] + 16);
    self->_boundsOverride.origin = *MEMORY[0x1E695F050];
    self->_boundsOverride.size = v3;
    self->_horizontalSizeClassOverride = 0;
    [(_UISplitViewControllerAdaptiveImpl *)self containerSize];
    if (self->_previousContainerSize.width != v5 || self->_previousContainerSize.height != v4)
    {
      [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutForSizeChange];
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _prepareLayout];
    v7 = self->_transitionController;
    scheduledTransition = [(_UISplitViewControllerAdaptiveLayoutTransitionController *)v7 scheduledTransition];
    v9 = scheduledTransition == 0;

    if (!v9)
    {
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__210;
      v33 = __Block_byref_object_dispose__210;
      v34 = 0;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __56___UISplitViewControllerAdaptiveImpl__performTransition__block_invoke;
      v24[3] = &unk_1E7125F30;
      v12 = layout;
      v25 = v12;
      selfCopy = self;
      v28 = &v29;
      v13 = v7;
      v27 = v13;
      [v12 enumerateDisplayInOrder:4 withBlock:v24];
      if (v30[5])
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9697F0);
        if (*CategoryCachedImpl)
        {
          v18 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            scheduledTransition2 = [(_UISplitViewControllerAdaptiveLayoutTransitionController *)v13 scheduledTransition];
            v20 = v30[5];
            *buf = 136315906;
            *&buf[4] = "[_UISplitViewControllerAdaptiveImpl _performTransition]";
            *&buf[12] = 2048;
            *&buf[14] = splitViewController;
            *&buf[22] = 2048;
            v36 = scheduledTransition2;
            *v37 = 2112;
            *&v37[2] = v20;
            _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "%s svc = %p; transition = %p; transitionCoordinator = %@", buf, 0x2Au);
          }
        }

        [(_UISplitViewControllerAdaptiveLayoutTransitionController *)v13 performTransitionAlongsideTransitionCoordinator:v30[5]];
      }

      else
      {
        _areAnimatedTransitionsPermitted = [(_UISplitViewControllerAdaptiveImpl *)self _areAnimatedTransitionsPermitted];
        if (_areAnimatedTransitionsPermitted)
        {
          _areAnimatedTransitionsEnabled = [(_UISplitViewControllerAdaptiveImpl *)self _areAnimatedTransitionsEnabled];
        }

        else
        {
          _areAnimatedTransitionsEnabled = 0;
        }

        v17 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9697F8);
        if (*v17)
        {
          v21 = *(v17 + 8);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            scheduledTransition3 = [(_UISplitViewControllerAdaptiveLayoutTransitionController *)v13 scheduledTransition];
            *buf = 136315906;
            *&buf[4] = "[_UISplitViewControllerAdaptiveImpl _performTransition]";
            *&buf[12] = 2048;
            *&buf[14] = splitViewController;
            *&buf[22] = 2048;
            v36 = scheduledTransition3;
            *v37 = 1024;
            *&v37[2] = _areAnimatedTransitionsEnabled;
            _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "%s svc = %p; transition = %p; animated = %d", buf, 0x26u);
          }
        }

        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __56___UISplitViewControllerAdaptiveImpl__performTransition__block_invoke_250;
        v36 = &unk_1E70F35E0;
        *v37 = v13;
        v37[8] = _areAnimatedTransitionsEnabled;
        [UIView _conditionallyPerformWithoutAnimation:!_areAnimatedTransitionsPermitted layout:buf];
      }

      self->_areAnimatedTransitionsEnabled = 0;

      _Block_object_dispose(&v29, 8);
    }
  }
}

- (void)_prepareLayout
{
  v240 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v2 = *(self + 312);
    if ((v2 & 0x800000000) == 0)
    {
      *(self + 312) = v2 | 0x800000000;
      v3 = *(self + 328);
      v4 = v3;
      v5 = selfCopy + 39;
      v6 = selfCopy[39];
      if ((v6 & 0x200000000) == 0)
      {
        v150 = selfCopy + 5;
        v148 = *(MEMORY[0x1E695F060] + 8);
        v149 = *MEMORY[0x1E695F060];
        v157 = *(MEMORY[0x1E695F050] + 8);
        v158 = *MEMORY[0x1E695F050];
        v155 = *(MEMORY[0x1E695F050] + 24);
        v156 = *(MEMORY[0x1E695F050] + 16);
        val = selfCopy;
        while (1)
        {
          *v5 = v6 | 0x200000000;
          _solveLayout = [(_UISplitViewControllerAdaptiveImpl *)selfCopy _solveLayout];

          splitViewController = [val splitViewController];
          if (([splitViewController isViewLoaded] & 1) == 0)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:sel__prepareTransitionToLayout_ object:val file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:2462 description:{@"UISplitViewController internal inconsistency: attempt to prepare transition before the split view controller's view has loaded. Split view controller: %@", splitViewController}];
          }

          v7 = val;
          v8 = val[39];
          if ((v8 & 0x40000000) == 0)
          {
            val[39] = v8 | 0x40000000;
            traitCollection = [val traitCollection];
            userInterfaceIdiom = [traitCollection userInterfaceIdiom];

            v7 = val;
            if (userInterfaceIdiom != 6)
            {
              break;
            }
          }

LABEL_47:
          if ((~v7[39] & 0x2200000000) == 0 && *(v150 + 424) == 1)
          {
            [_solveLayout minimumSize];
            v42 = v41;
            v44 = v43;
            [v7 containerSize];
            v47 = fmax(v44 - v46, 0.0);
            if (fmax(v42 - v45, 0.0) != v149 || v47 != v148)
            {
              splitViewController2 = [v7 splitViewController];
              _window = [splitViewController2 _window];
              windowScene = [_window windowScene];

              if (windowScene)
              {
                effectiveGeometry = [windowScene effectiveGeometry];
                isInteractivelyResizing = [effectiveGeometry isInteractivelyResizing];

                if ((isInteractivelyResizing & 1) == 0)
                {
                  v54 = val;
                  v55 = [(_UISplitViewControllerAdaptiveImpl *)val _updatePreferredColumnsEnforcingColumnPreferences:?];
                  if (!v55)
                  {
                    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
                    v54 = val;
                    [currentHandler2 handleFailureInMethod:sel__prepareSceneForLayout_ object:val file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3237 description:{@"UISplitViewController internal inconsistency: expected suspension of enforcing column preferences. Split view controller: %@", splitViewController2}];
                  }

                  v54[39] |= 0x80000000uLL;
                  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
                  v57 = val;
                  [currentHandler3 handleFailureInMethod:sel__prepareSceneForLayout_ object:val file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3251 description:{@"UISplitViewController internal inconsistency: scene resize is not supported. Split view controller: %@", splitViewController2}];

                  if ((*(val + 316) & 0x20) == 0)
                  {
                    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
                    v57 = val;
                    [currentHandler4 handleFailureInMethod:sel__prepareSceneForLayout_ object:val file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3254 description:{@"UISplitViewController internal inconsistency: scene resize is not permitted. Split view controller: %@", splitViewController2}];
                  }

                  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969858);
                  if (*CategoryCachedImpl)
                  {
                    v140 = *(CategoryCachedImpl + 8);
                    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                    {
                      v141 = v140;
                      v242.height = v148;
                      v242.width = v149;
                      v142 = NSStringFromCGSize(v242);
                      *location = 136316162;
                      *&location[4] = "[_UISplitViewControllerAdaptiveImpl _prepareSceneForLayout:]";
                      *&location[12] = 2048;
                      *&location[14] = splitViewController2;
                      *&location[22] = 2112;
                      v229 = _solveLayout;
                      v230 = 2112;
                      v231 = v142;
                      v232 = 1024;
                      v233 = v55;
                      _os_log_impl(&dword_188A29000, v141, OS_LOG_TYPE_ERROR, "%s svc = %p; layout = %@; requestSize = %@; updatedEnforcingColumnPreferences = %d", location, 0x30u);

                      v57 = val;
                    }
                  }

                  [(_UISplitViewControllerAdaptiveImpl *)v57 _invalidateLayout];
                  objc_initWeak(location, val);
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __61___UISplitViewControllerAdaptiveImpl__prepareSceneForLayout___block_invoke;
                  v235 = &unk_1E7125F58;
                  objc_copyWeak(&v236[16], location);
                  *v236 = splitViewController2;
                  *&v236[8] = _solveLayout;
                  *&v238[2] = v149;
                  v239 = v148;
                  [windowScene requestGeometryUpdateWithPreferences:0 errorHandler:buf];

                  objc_destroyWeak(&v236[16]);
                  objc_destroyWeak(location);
                }
              }

              v7 = val;
            }
          }

          if ((*(v7 + 316) & 2) != 0)
          {
            v153 = [v7[40] copy];
            WeakRetained = objc_loadWeakRetained(v7 + 72);
            v59 = v7[43];
            v152 = v7[77];
            v151 = v7[78];
            v162 = v59;
            previousLayout = [v59 previousLayout];
            [v59 prepareTransitionToLayout:_solveLayout];
            [v59 scheduleContainerView:v152];
            v61 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9697E0);
            if (*v61)
            {
              v133 = *(v61 + 8);
              if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
              {
                v134 = v133;
                scheduledTransition = [v59 scheduledTransition];
                scheduledTransition2 = [v59 scheduledTransition];
                previousLayout2 = [scheduledTransition2 previousLayout];
                *buf = 136316418;
                *&buf[4] = "[_UISplitViewControllerAdaptiveImpl _prepareTransitionToLayout:]";
                *&buf[12] = 2048;
                *&buf[14] = splitViewController;
                *&buf[22] = 2048;
                v235 = scheduledTransition;
                *v236 = 2112;
                *&v236[2] = previousLayout;
                *&v236[10] = 2112;
                *&v236[12] = _solveLayout;
                v237 = 2112;
                *v238 = previousLayout2;
                _os_log_impl(&dword_188A29000, v134, OS_LOG_TYPE_ERROR, "%s svc = %p; transition = %p; currentLayout = %@; proposedLayout = %@; originalLayout = %@", buf, 0x3Eu);
              }
            }

            objc_initWeak(&from, val);
            v62 = _solveLayout;
            if ((!previousLayout || (v63 = [previousLayout displayMode], v63 != objc_msgSend(_solveLayout, "displayMode"))) && (aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 3221225472, aBlock[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke, aBlock[3] = &unk_1E7125D78, objc_copyWeak(&v226, &from), v64 = splitViewController, v224 = v64, v65 = WeakRetained, v225 = v65, v66 = _Block_copy(aBlock), v219[0] = MEMORY[0x1E69E9820], v219[1] = 3221225472, v219[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_231, v219[3] = &unk_1E7125D78, objc_copyWeak(&v222, &from), v220 = v64, v221 = v65, v67 = _Block_copy(v219), objc_msgSend(v59, "scheduleDisplayModeWillChangeHandler:didChangeHandler:", v66, v67), v67, v221, v220, objc_destroyWeak(&v222), v66, v225, v224, objc_destroyWeak(&v226), v62 = _solveLayout, !previousLayout) && (objc_msgSend(_solveLayout, "isCollapsed") & 1) != 0 || (v68 = objc_msgSend(previousLayout, "isCollapsed"), v68 != objc_msgSend(v62, "isCollapsed")))
            {
              v216[0] = MEMORY[0x1E69E9820];
              v216[1] = 3221225472;
              v216[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_232;
              v216[3] = &unk_1E7125DA0;
              objc_copyWeak(&v218, &from);
              v69 = splitViewController;
              v217 = v69;
              v70 = _Block_copy(v216);
              v213[0] = MEMORY[0x1E69E9820];
              v213[1] = 3221225472;
              v213[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_233;
              v213[3] = &unk_1E7125DA0;
              objc_copyWeak(&v215, &from);
              v214 = v69;
              v71 = _Block_copy(v213);
              [v59 scheduleCollapsedWillChangeHandler:v70 didChangeHandler:v71];

              objc_destroyWeak(&v215);
              objc_destroyWeak(&v218);
              v62 = _solveLayout;
            }

            v212 = 0u;
            v211 = 0u;
            v210 = 0u;
            v209 = 0u;
            objectEnumerator = [v153 objectEnumerator];
            v73 = [objectEnumerator countByEnumeratingWithState:&v209 objects:buf count:16];
            if (v73)
            {
              obj = objectEnumerator;
              v161 = *v210;
              do
              {
                v163 = v73;
                for (i = 0; i != v163; ++i)
                {
                  if (*v210 != v161)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v75 = *(*(&v209 + 1) + 8 * i);
                  if (v75)
                  {
                    v76 = *(v75 + 144);
                    if (previousLayout)
                    {
                      goto LABEL_77;
                    }
                  }

                  else
                  {
                    v76 = 0;
                    if (previousLayout)
                    {
LABEL_77:
                      v77 = [previousLayout columnModeForSplitViewControllerColumn:v76];
                      goto LABEL_80;
                    }
                  }

                  v77 = 0;
LABEL_80:
                  v78 = [v62 columnModeForSplitViewControllerColumn:v76];
                  if (v77 != v78)
                  {
                    v205[0] = MEMORY[0x1E69E9820];
                    v205[1] = 3221225472;
                    v205[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_234;
                    v205[3] = &unk_1E7125DC8;
                    objc_copyWeak(v208, &from);
                    v79 = splitViewController;
                    v208[1] = v76;
                    v208[2] = v77;
                    v208[3] = v78;
                    v206 = v79;
                    v207 = v75;
                    v80 = _Block_copy(v205);
                    v201[0] = MEMORY[0x1E69E9820];
                    v201[1] = 3221225472;
                    v201[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_235;
                    v201[3] = &unk_1E7125DC8;
                    objc_copyWeak(v204, &from);
                    v81 = v79;
                    v204[1] = v76;
                    v204[2] = v77;
                    v204[3] = v78;
                    v202 = v81;
                    v203 = v75;
                    v82 = _Block_copy(v201);
                    [v162 scheduleSplitViewControllerColumnModeWillChangeHandler:v80 didChangeHandler:v82 splitViewControllerColumn:v76];

                    objc_destroyWeak(v204);
                    objc_destroyWeak(v208);
                    v62 = _solveLayout;
                  }

                  if (previousLayout)
                  {
                    v83 = [previousLayout columnVisibilityForSplitViewControllerColumn:v76];
                  }

                  else
                  {
                    v83 = 0;
                  }

                  v84 = [v62 columnVisibilityForSplitViewControllerColumn:v76];
                  if ((_UISplitViewControllerAdaptiveColumnVisibilityIsVisible(v83) & 1) == 0 && _UISplitViewControllerAdaptiveColumnVisibilityIsVisible(v84))
                  {
                    v197[0] = MEMORY[0x1E69E9820];
                    v197[1] = 3221225472;
                    v197[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_236;
                    v197[3] = &unk_1E7125DF0;
                    objc_copyWeak(v200, &from);
                    v85 = splitViewController;
                    v198 = v85;
                    v200[1] = v76;
                    v86 = WeakRetained;
                    v199 = v86;
                    v87 = _Block_copy(v197);
                    v193[0] = MEMORY[0x1E69E9820];
                    v193[1] = 3221225472;
                    v193[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_237;
                    v193[3] = &unk_1E7125DF0;
                    objc_copyWeak(v196, &from);
                    v194 = v85;
                    v196[1] = v76;
                    v195 = v86;
                    v88 = _Block_copy(v193);
                    [v162 scheduleSplitViewControllerColumnVisibilityWillChangeHandler:v87 didChangeHandler:v88 splitViewControllerColumn:v76];
                    v89 = &v195;
                    v90 = &v194;
                    v92 = v196;
                    v91 = v200;
                    v94 = &v199;
                    v93 = &v198;
LABEL_91:

                    objc_destroyWeak(v92);
                    objc_destroyWeak(v91);
                    v62 = _solveLayout;
                    continue;
                  }

                  if (_UISplitViewControllerAdaptiveColumnVisibilityIsVisible(v83) && (_UISplitViewControllerAdaptiveColumnVisibilityIsVisible(v84) & 1) == 0)
                  {
                    v189[0] = MEMORY[0x1E69E9820];
                    v189[1] = 3221225472;
                    v189[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_238;
                    v189[3] = &unk_1E7125DF0;
                    objc_copyWeak(v192, &from);
                    v95 = splitViewController;
                    v190 = v95;
                    v192[1] = v76;
                    v96 = WeakRetained;
                    v191 = v96;
                    v87 = _Block_copy(v189);
                    v185[0] = MEMORY[0x1E69E9820];
                    v185[1] = 3221225472;
                    v185[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_239;
                    v185[3] = &unk_1E7125DF0;
                    objc_copyWeak(v188, &from);
                    v186 = v95;
                    v188[1] = v76;
                    v187 = v96;
                    v88 = _Block_copy(v185);
                    [v162 scheduleSplitViewControllerColumnVisibilityWillChangeHandler:v87 didChangeHandler:v88 splitViewControllerColumn:v76];
                    v89 = &v187;
                    v90 = &v186;
                    v92 = v188;
                    v91 = v192;
                    v94 = &v191;
                    v93 = &v190;
                    goto LABEL_91;
                  }
                }

                objectEnumerator = obj;
                v73 = [obj countByEnumeratingWithState:&v209 objects:buf count:16];
              }

              while (v73);
            }

            v183 = 0u;
            v184 = 0u;
            v181 = 0u;
            v182 = 0u;
            objectEnumerator2 = [v153 objectEnumerator];
            v98 = [objectEnumerator2 countByEnumeratingWithState:&v181 objects:location count:16];
            if (v98)
            {
              v99 = *v182;
              do
              {
                v100 = 0;
                do
                {
                  if (*v182 != v99)
                  {
                    objc_enumerationMutation(objectEnumerator2);
                  }

                  v101 = *(*(&v181 + 1) + 8 * v100);
                  if (v101)
                  {
                    v102 = v101[18];
                  }

                  else
                  {
                    v102 = 0;
                  }

                  viewController = [(_UISplitViewControllerAdaptiveColumn *)*(*(&v181 + 1) + 8 * v100) viewController];
                  if (viewController)
                  {
                    v104 = viewController;
                    viewController2 = [(_UISplitViewControllerAdaptiveColumn *)v101 viewController];
                    parentViewController = [viewController2 parentViewController];
                    v107 = parentViewController == splitViewController;

                    if (v107)
                    {
                      v109 = v157;
                      v108 = v158;
                      v111 = v155;
                      v110 = v156;
                      if (previousLayout)
                      {
                        [previousLayout columnFrameForSplitViewControllerColumn:v102];
                        v108 = v112;
                        v109 = v113;
                        v110 = v114;
                        v111 = v115;
                      }

                      [_solveLayout columnFrameForSplitViewControllerColumn:v102];
                      v120 = v116;
                      v121 = v117;
                      v122 = v118;
                      v123 = v119;
                      if ((*&v110 != v118 || *&v111 != v119) && !CGRectIsNull(*&v116))
                      {
                        v177[0] = MEMORY[0x1E69E9820];
                        v177[1] = 3221225472;
                        v177[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_240;
                        v177[3] = &unk_1E7125E18;
                        objc_copyWeak(v180, &from);
                        v124 = splitViewController;
                        v178 = v124;
                        v179 = v101;
                        v180[1] = v102;
                        v180[2] = v108;
                        v180[3] = v109;
                        v180[4] = v110;
                        v180[5] = v111;
                        v180[6] = v120;
                        v180[7] = v121;
                        v180[8] = *&v122;
                        v180[9] = *&v123;
                        v125 = _Block_copy(v177);
                        v173[0] = MEMORY[0x1E69E9820];
                        v173[1] = 3221225472;
                        v173[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_241;
                        v173[3] = &unk_1E7125E18;
                        objc_copyWeak(v176, &from);
                        v174 = v124;
                        v175 = v101;
                        v176[1] = v102;
                        v176[2] = v108;
                        v176[3] = v109;
                        v176[4] = v110;
                        v176[5] = v111;
                        v176[6] = v120;
                        v176[7] = v121;
                        v176[8] = *&v122;
                        v176[9] = *&v123;
                        v126 = _Block_copy(v173);
                        [v162 scheduleSplitViewControllerColumnSizeWillChangeHandler:v125 didChangeHandler:v126 splitViewControllerColumn:v102];

                        objc_destroyWeak(v176);
                        objc_destroyWeak(v180);
                      }
                    }
                  }

                  ++v100;
                }

                while (v98 != v100);
                v127 = [objectEnumerator2 countByEnumeratingWithState:&v181 objects:location count:16];
                v98 = v127;
              }

              while (v127);
            }

            v169[0] = MEMORY[0x1E69E9820];
            v169[1] = 3221225472;
            v169[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_242;
            v169[3] = &unk_1E7125D78;
            objc_copyWeak(&v172, &from);
            v170 = splitViewController;
            v128 = v151;
            v171 = v128;
            v129 = _Block_copy(v169);
            [v162 scheduleAnimations:v129];
            v167[0] = MEMORY[0x1E69E9820];
            v167[1] = 3221225472;
            v167[2] = __65___UISplitViewControllerAdaptiveImpl__prepareTransitionToLayout___block_invoke_8;
            v167[3] = &unk_1E7125F08;
            objc_copyWeak(&v168, &from);
            v130 = _Block_copy(v167);
            [v162 scheduleCompletion:v130];
            if ((*(val + 316) & 2) != 0)
            {
              [_solveLayout prepareForDisplay];
            }

            objc_destroyWeak(&v168);
            objc_destroyWeak(&v172);
            objc_destroyWeak(&from);
          }

          selfCopy = val;
          v5 = val + 39;
          v6 = val[39];
          v131 = _solveLayout;
          v4 = _solveLayout;
          if ((v6 & 0x200000000) != 0)
          {
            goto LABEL_132;
          }
        }

        splitViewController3 = [val splitViewController];
        _window2 = [splitViewController3 _window];
        windowScene2 = [_window2 windowScene];

        if (!windowScene2 || ([windowScene2 _FBSScene], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isPersistable"), v14, !v15))
        {
LABEL_46:

          v7 = val;
          goto LABEL_47;
        }

        parentModalViewController = [splitViewController3 parentModalViewController];
        if (parentModalViewController)
        {

          goto LABEL_46;
        }

        splitViewController4 = [val splitViewController];
        _window3 = [splitViewController4 _window];
        rootViewController = [_window3 rootViewController];

        if (!rootViewController)
        {

          goto LABEL_46;
        }

        if (rootViewController == splitViewController4)
        {
        }

        else
        {
          *location = 0;
          *&location[8] = location;
          *&location[16] = 0x2020000000;
          LOBYTE(v229) = 0;
          childViewControllers = [rootViewController childViewControllers];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __64___UISplitViewControllerAdaptiveImpl__isRootSplitViewController__block_invoke;
          v235 = &unk_1E7125FF8;
          *&v236[8] = location;
          v21 = splitViewController4;
          *v236 = v21;
          _UITreeBreadthFirstTraversal(childViewControllers, sel_childViewControllers, buf);

          LOBYTE(childViewControllers) = *(*&location[8] + 24);
          _Block_object_dispose(location, 8);

          if ((childViewControllers & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        v22 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9698D0);
        if (*v22)
        {
          v143 = *(v22 + 8);
          if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "[_UISplitViewControllerAdaptiveImpl _restoreLayoutStateIfNeededWithProposedLayout:]";
            *&buf[12] = 2048;
            *&buf[14] = splitViewController3;
            _os_log_impl(&dword_188A29000, v143, OS_LOG_TYPE_ERROR, "%s svc = %p; enabling layout state restoration", buf, 0x16u);
          }
        }

        val[39] |= 0x400000000uLL;
        session = [windowScene2 session];
        v24 = [_UIHybridStateStore stateStoreForSceneSession:session];

        v25 = [(_UIHybridStateStore *)v24 objectForKey:?];
        if (!v25)
        {
LABEL_45:

          goto LABEL_46;
        }

        v26 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9698D8);
        if (*v26)
        {
          v144 = *(v26 + 8);
          if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "[_UISplitViewControllerAdaptiveImpl _restoreLayoutStateIfNeededWithProposedLayout:]";
            *&buf[12] = 2048;
            *&buf[14] = splitViewController3;
            _os_log_impl(&dword_188A29000, v144, OS_LOG_TYPE_ERROR, "%s svc = %p; restoring layout state", buf, 0x16u);
          }
        }

        v27 = [[_UISplitViewControllerLayoutState alloc] initWithDictionary:v25];
        v28 = v27;
        v29 = val[54];
        v30 = val[60];
        v31 = val[61];
        if (val[53] == 999 || v30 != 2)
        {
          v33 = v30 == 0;
        }

        else
        {
          if (v27)
          {
            v32 = v27[1];
          }

          else
          {
            v32 = 0;
          }

          v33 = [_solveLayout canShowSplitViewControllerColumn:v32 withSplitViewControllerColumn:?];
        }

        if (v29 == 999 || v31 != 2)
        {
          v35 = v31 == 0;
          if (!v33)
          {
LABEL_33:
            if (!v35)
            {
LABEL_44:

              goto LABEL_45;
            }

            v36 = 0;
            goto LABEL_39;
          }
        }

        else
        {
          if (v28)
          {
            v34 = v28[2];
          }

          else
          {
            v34 = 0;
          }

          v35 = [_solveLayout canShowSplitViewControllerColumn:v34 withSplitViewControllerColumn:v29];
          if (!v33)
          {
            goto LABEL_33;
          }
        }

        if (v28)
        {
          v37 = v28[1];
        }

        else
        {
          v37 = 0;
        }

        v38 = [(_UISplitViewControllerAdaptiveImpl *)val _updatePreferredColumnsPrimaryEdgeSplitViewControllerColumn:v37];
        v36 = v38 | [(_UISplitViewControllerAdaptiveImpl *)val _updatePreferredColumnsPrimaryEdgePreferenceMode:?];
        if ((v35 & 1) == 0)
        {
LABEL_42:
          if ((v36 | [(_UISplitViewControllerAdaptiveImpl *)val _updatePreferredColumnsEnforcingColumnPreferences:?]) == 1)
          {
            [(_UISplitViewControllerAdaptiveImpl *)val _setAllowsSceneResizeToShowAdditionalColumns];
            [(_UISplitViewControllerAdaptiveImpl *)val _invalidateLayout];
          }

          goto LABEL_44;
        }

LABEL_39:
        if (v28)
        {
          v39 = v28[2];
        }

        else
        {
          v39 = 0;
        }

        v40 = [(_UISplitViewControllerAdaptiveImpl *)val _updatePreferredColumnsSecondaryEdgeSplitViewControllerColumn:v39];
        v36 |= v40 | [(_UISplitViewControllerAdaptiveImpl *)val _updatePreferredColumnsSecondaryEdgePreferenceMode:?];
        goto LABEL_42;
      }

      v131 = v3;
LABEL_132:
      v145 = selfCopy[41];
      selfCopy[41] = v131;
      v166 = v131;

      selfCopy[39] &= 0xFFFFFFC7FFFFFFFFLL;
      [selfCopy containerSize];
      selfCopy[50] = v146;
      selfCopy[51] = v147;
    }
  }
}

- (void)_commonInit
{
  v5.receiver = self;
  v5.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v5 _commonInit];
  traitCollection = [(_UISplitViewControllerAdaptiveImpl *)self traitCollection];
  v4 = [traitCollection userInterfaceIdiom] != 2 && objc_msgSend(traitCollection, "userInterfaceIdiom") != 6;
  self->_presentsWithGesture = v4;
  [(_UISplitViewControllerAdaptiveImpl *)self setPrimaryBackgroundStyle:1];
}

- (UITraitCollection)traitCollection
{
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  _lastNotifiedTraitCollection = [splitViewController _lastNotifiedTraitCollection];
  v4 = _lastNotifiedTraitCollection;
  if (_lastNotifiedTraitCollection)
  {
    traitCollection = _lastNotifiedTraitCollection;
  }

  else
  {
    traitCollection = [splitViewController traitCollection];
  }

  v6 = traitCollection;

  return v6;
}

- (id)layout
{
  if (self)
  {
    selfCopy = self;
    self = self[41];
    if (!self)
    {
      v3 = [objc_alloc(_UISplitViewControllerAdaptiveLayoutClassCollapsed()) initWithDataSource:selfCopy delegate:selfCopy];
      v4 = selfCopy[41];
      selfCopy[41] = v3;

      self = 0;
    }

    v1 = vars8;
  }

  return self;
}

- (void)_solveLayout
{
  if (self)
  {
    selfCopy = self;
    if (!self[49])
    {
      traitCollection = [self traitCollection];
      [traitCollection horizontalSizeClass];
    }

    self = [objc_alloc(_UISplitViewControllerAdaptiveLayoutClassCollapsed()) initWithDataSource:selfCopy delegate:selfCopy];
    v1 = vars8;
  }

  return self;
}

- (UIEdgeInsets)containerInsets
{
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  [splitViewController _contentOverlayInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGSize)containerSize
{
  p_boundsOverride = &self->_boundsOverride;
  if (CGRectIsNull(self->_boundsOverride))
  {
    splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
    if ([splitViewController isViewLoaded])
    {
      view = [splitViewController view];
      [view bounds];
      width = v6;
      height = v8;
    }

    else
    {
      [splitViewController _defaultInitialViewFrame];
      width = v10;
      height = v11;
    }
  }

  else
  {
    width = p_boundsOverride->size.width;
    height = p_boundsOverride->size.height;
  }

  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_invalidateLayout
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    *(self + 312) &= ~0x200000000uLL;
    splitViewController = [self splitViewController];
    v3 = splitViewController;
    if ((*(self + 316) & 8) != 0)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9697C8);
      if (*CategoryCachedImpl)
      {
        v7 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v12 = 136315394;
          v13 = "[_UISplitViewControllerAdaptiveImpl _invalidateLayout]";
          v14 = 2048;
          v15 = v3;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s svc = %p; invalidated layout during preparation", &v12, 0x16u);
        }
      }
    }

    else if ([splitViewController isViewLoaded] && (objc_msgSend(*(self + 344), "scheduledTransition"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      v5 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9697D0);
      if (*v5)
      {
        v11 = *(v5 + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = 136315394;
          v13 = "[_UISplitViewControllerAdaptiveImpl _invalidateLayout]";
          v14 = 2048;
          v15 = v3;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s svc = %p; invalidated layout before a transition", &v12, 0x16u);
        }
      }

      [(_UISplitViewControllerAdaptiveImpl *)self _prepareLayout];
    }

    else
    {
      v8 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9697D8);
      if (*v8)
      {
        v10 = *(v8 + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v12 = 136315394;
          v13 = "[_UISplitViewControllerAdaptiveImpl _invalidateLayout]";
          v14 = 2048;
          v15 = v3;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; invalidated layout outside of a transition", &v12, 0x16u);
        }
      }

      viewIfLoaded = [v3 viewIfLoaded];
      [viewIfLoaded setNeedsLayout];
    }
  }
}

- (_UISplitViewControllerAdaptiveLayoutPreferredColumns)preferredColumns
{
  v3 = *&self[6].shouldEnforcePreferences;
  *&retstr->preferredEdge = *&self[6].presentedSplitViewControllerColumn;
  *&retstr->splitBehavior = v3;
  retstr->secondaryEdgePreferenceMode = self[6].primaryEdgePreferenceMode;
  v4 = *&self[6].secondaryEdgeSplitViewControllerColumn;
  *&retstr->primaryEdgeSplitViewControllerColumn = *&self[5].secondaryEdgePreferenceMode;
  *&retstr->collapsedSplitViewControllerColumn = v4;
  return self;
}

- (void)_performAnimatedTransitionIfNeededAndInAnimationBlock
{
  if (self && (self[316] & 8) == 0 && +[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    [(_UISplitViewControllerAdaptiveImpl *)self _setNeedsUpdateAnimatedTransitionsEnabled];
    splitViewController = [self splitViewController];
    viewIfLoaded = [splitViewController viewIfLoaded];
    [viewIfLoaded layoutIfNeeded];
  }
}

- (void)_updateChildContentMargins
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [(NSMapTable *)self->_columns objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        viewController = [(_UISplitViewControllerAdaptiveColumn *)v8 viewController];
        [(_UISplitViewControllerAdaptiveImpl *)self _contentMarginForChildViewController:viewController];
        v11 = v10;

        viewController2 = [(_UISplitViewControllerAdaptiveColumn *)v8 viewController];
        [viewController2 _setContentMargin:v11];
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v3 viewSafeAreaInsetsDidChange];
  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
}

- (id)scheduledLayout
{
  if (self)
  {
    self = [self[43] scheduledLayout];
    v1 = vars8;
  }

  return self;
}

- (void)loadView
{
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  v3 = [UIView alloc];
  [splitViewController _defaultInitialViewFrame];
  v4 = [(UIView *)v3 initWithFrame:?];
  [(UIView *)v4 setAutoresizingMask:18];
  visualStyle = [(_UISplitViewControllerAdaptiveImpl *)self visualStyle];
  primaryBackgroundColor = [visualStyle primaryBackgroundColor];
  [(UIView *)v4 setBackgroundColor:primaryBackgroundColor];

  [splitViewController setView:v4];
}

- (void)_invalidateSplitViewControllerPreferences
{
  if (self)
  {
    splitViewController = [self splitViewController];
    [splitViewController setNeedsStatusBarAppearanceUpdate];
    [splitViewController setNeedsUpdateOfPrefersPointerLocked];
    [splitViewController setNeedsUpdateOfPrefersInterfaceOrientationLocked];
    [splitViewController setNeedsUpdateOfHomeIndicatorAutoHidden];
    [splitViewController setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    self[39] &= ~0x100000000uLL;
  }
}

- (BOOL)_areAnimatedTransitionsPermitted
{
  if (result)
  {
    v1 = result;
    result = +[UIView areAnimationsEnabled];
    if (result)
    {
      splitViewController = [v1 splitViewController];
      _window = [splitViewController _window];

      result = 0;
      if (_window)
      {
        splitViewController2 = [v1 splitViewController];
        _appearState = [splitViewController2 _appearState];

        if (_appearState == 2)
        {
          if (!_UISceneLiveResizeSnapshotsEnabled())
          {
            return 1;
          }

          splitViewController3 = [v1 splitViewController];
          _window2 = [splitViewController3 _window];
          windowScene = [_window2 windowScene];
          effectiveGeometry = [windowScene effectiveGeometry];
          isInteractivelyResizing = [effectiveGeometry isInteractivelyResizing];

          if ((isInteractivelyResizing & 1) == 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

- (int64_t)preferredLeadingStatusBarStyle
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__210;
  v21 = __Block_byref_object_dispose__210;
  v22 = 0;
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68___UISplitViewControllerAdaptiveImpl_preferredLeadingStatusBarStyle__block_invoke;
  v13[3] = &unk_1E7125CB0;
  v7 = v6;
  v14 = v7;
  selfCopy = self;
  v16 = &v17;
  [v7 enumerateDisplayInOrder:2 withBlock:v13];
  v8 = v18[5];
  if (v8)
  {
    _effectiveStatusBarStyleViewController = [v8 _effectiveStatusBarStyleViewController];
    preferredStatusBarStyle = [_effectiveStatusBarStyleViewController preferredStatusBarStyle];
    if (preferredStatusBarStyle == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2 * (preferredStatusBarStyle == 3);
    }
  }

  else
  {
    v11 = 4;
  }

  _Block_object_dispose(&v17, 8);
  return v11;
}

- (int64_t)preferredTrailingStatusBarStyle
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__210;
  v21 = __Block_byref_object_dispose__210;
  v22 = 0;
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69___UISplitViewControllerAdaptiveImpl_preferredTrailingStatusBarStyle__block_invoke;
  v13[3] = &unk_1E7125CB0;
  v7 = v6;
  v14 = v7;
  selfCopy = self;
  v16 = &v17;
  [v7 enumerateDisplayInOrder:3 withBlock:v13];
  v8 = v18[5];
  if (v8)
  {
    _effectiveStatusBarStyleViewController = [v8 _effectiveStatusBarStyleViewController];
    preferredStatusBarStyle = [_effectiveStatusBarStyleViewController preferredStatusBarStyle];
    if (preferredStatusBarStyle == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2 * (preferredStatusBarStyle == 3);
    }
  }

  else
  {
    v11 = 4;
  }

  _Block_object_dispose(&v17, 8);
  return v11;
}

- (BOOL)prefersInterfaceOrientationLocked
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71___UISplitViewControllerAdaptiveImpl_prefersInterfaceOrientationLocked__block_invoke;
  v10[3] = &unk_1E7125CB0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  v13 = &v14;
  [v7 enumerateDisplayInOrder:0 withBlock:v10];
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (BOOL)isCollapsed
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  isCollapsed = [layout isCollapsed];

  return isCollapsed;
}

- (id)childViewControllerForStatusBarStyle
{
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  if ([v6 isCollapsed] && (v7 = objc_msgSend(v6, "splitViewControllerColumnAtEdge:", objc_msgSend(v6, "primaryEdge")), v7 != 999))
  {
    v9 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:v7];
    viewController = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
  }

  else
  {
    viewController = 0;
  }

  return viewController;
}

- (int64_t)displayModeButtonVisibility
{
  implFlags = self->_implFlags;
  v3 = 4;
  if ((*&implFlags & 0x30000000) == 0x30000000)
  {
    v3 = 1;
  }

  if ((*&implFlags & 0x10000000) == 0)
  {
    v3 = 3;
  }

  v4 = (*&implFlags & 0x30000000) == 0;
  v5 = 2 * (*&implFlags & 1);
  if (v4)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (id)viewControllers
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53___UISplitViewControllerAdaptiveImpl_viewControllers__block_invoke;
  v9[3] = &unk_1E71003B0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [layout enumerateDisplayOrder:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (BOOL)_isCollapsed
{
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    isCollapsed = [scheduledLayout isCollapsed];
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
    isCollapsed = [layout isCollapsed];
  }

  return isCollapsed;
}

- (void)_updatePreferredDisplayModeForPreferredColumns
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v2 = self[53];
  v3 = self[59];
  style = [self style];
  v5 = self[63];
  if (v2 != 1)
  {
    if (v2 == 999)
    {
      v6 = 0;
      goto LABEL_17;
    }

    if (v2 == 2)
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (style == 2 || v2)
    {
      v7 = 5;
      if (v3 != 2)
      {
        v7 = 6;
      }

      if (v3 >= 2)
      {
        v6 = v7;
      }

      else
      {
        v6 = 4;
      }

      goto LABEL_17;
    }
  }

  if (v3 == 2)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

LABEL_17:
  if (v5 != v6)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_updatePreferredDisplayModeForPreferredColumns___s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [self splitViewController];
        v12 = v5;
        v13 = splitViewController;
        v14 = 136315906;
        v15 = "[_UISplitViewControllerAdaptiveImpl _updatePreferredDisplayModeForPreferredColumns]";
        v16 = 2048;
        v17 = splitViewController;
        v18 = 2048;
        v19 = v12;
        v20 = 2048;
        v21 = v6;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; previouslyRequestedDisplayMode = %ld; preferredDisplayMode = %ld", &v14, 0x2Au);
      }
    }

    self[63] = v6;
  }
}

- (double)preferredPrimaryColumnWidth
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:0];
  if (v2)
  {
    v3 = v2[4];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (double)minimumPrimaryColumnWidth
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:0];
  if (v2)
  {
    v3 = v2[6];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (double)maximumPrimaryColumnWidth
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:0];
  if (v2)
  {
    v3 = v2[7];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (CGSize)_preferredContentSize
{
  v3 = self->_layout;
  if (!v3 || (*(&self->_implFlags + 4) & 2) == 0)
  {
    _solveLayout = [(_UISplitViewControllerAdaptiveImpl *)self _solveLayout];

    v3 = _solveLayout;
  }

  [(_UISplitViewControllerAdaptiveLayout *)v3 preferredSize];
  v6 = v5;
  v8 = v7;
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  _screen = [splitViewController _screen];
  [_screen bounds];
  [UIViewController defaultFormSheetSizeForScreenSize:v11, v12];
  v14 = v13;
  v16 = v15;

  if (v6 <= 0.0)
  {
    v6 = v14;
  }

  if (v8 <= 0.0)
  {
    v8 = v16;
  }

  v17 = v6;
  v18 = v8;
  result.height = v18;
  result.width = v17;
  return result;
}

- (int64_t)displayMode
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  displayMode = [layout displayMode];

  return displayMode;
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v2 viewDidLayoutSubviews];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UISplitViewControllerAdaptiveImpl)initWithSplitViewController:(id)controller
{
  v12.receiver = self;
  v12.super_class = _UISplitViewControllerAdaptiveImpl;
  v3 = [(_UISplitViewControllerBaseImpl *)&v12 initWithSplitViewController:controller];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:0 capacity:4];
    v5 = *(v3 + 40);
    *(v3 + 40) = v4;

    v6 = [[_UISplitViewControllerAdaptiveNavigationItemObserver alloc] initWithDelegate:v3];
    v7 = *(v3 + 42);
    *(v3 + 42) = v6;

    v8 = objc_alloc_init(_UISplitViewControllerAdaptiveLayoutTransitionController);
    v9 = *(v3 + 43);
    *(v3 + 43) = v8;

    v10 = *(MEMORY[0x1E695F050] + 16);
    *(v3 + 360) = *MEMORY[0x1E695F050];
    *(v3 + 376) = v10;
    *(v3 + 49) = 0;
    *(v3 + 25) = *MEMORY[0x1E695F060];
    *(v3 + 424) = xmmword_18A679E70;
    *(v3 + 440) = vdupq_n_s64(0x3E7uLL);
    *(v3 + 456) = 0u;
    *(v3 + 472) = 0u;
    *(v3 + 61) = 0;
    *(v3 + 62) = 999;
    *(v3 + 63) = 0;
    *(v3 + 64) = 999;
    *(v3 + 65) = 999;
  }

  return v3;
}

- (void)setDelegate:(id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegate)
  {
    objc_storeWeak(&self->_delegate, delegate);
    if (self)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v6 = 0;
    }

    v61 = v6;
    v7 = objc_opt_respondsToSelector();
    v8 = 2;
    if ((v7 & 1) == 0)
    {
      v8 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFFFFDLL | v8);
    v9 = objc_opt_respondsToSelector();
    v10 = 4;
    if ((v9 & 1) == 0)
    {
      v10 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFFFFBLL | v10);
    v11 = objc_opt_respondsToSelector();
    v12 = 8;
    if ((v11 & 1) == 0)
    {
      v12 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFFFF7 | v12);
    v13 = objc_opt_respondsToSelector();
    v14 = 16;
    if ((v13 & 1) == 0)
    {
      v14 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFFFEFLL | v14);
    v15 = objc_opt_respondsToSelector();
    v16 = 32;
    if ((v15 & 1) == 0)
    {
      v16 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFFFDFLL | v16);
    v17 = objc_opt_respondsToSelector();
    v18 = 64;
    if ((v17 & 1) == 0)
    {
      v18 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFFFBFLL | v18);
    v19 = objc_opt_respondsToSelector();
    v20 = 128;
    if ((v19 & 1) == 0)
    {
      v20 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFFF7FLL | v20);
    v21 = objc_opt_respondsToSelector();
    v22 = 256;
    if ((v21 & 1) == 0)
    {
      v22 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFFEFFLL | v22);
    v23 = objc_opt_respondsToSelector();
    v24 = 512;
    if ((v23 & 1) == 0)
    {
      v24 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFFDFFLL | v24);
    v25 = objc_opt_respondsToSelector();
    v26 = 1024;
    if ((v25 & 1) == 0)
    {
      v26 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFFBFFLL | v26);
    v27 = objc_opt_respondsToSelector();
    v28 = 2048;
    if ((v27 & 1) == 0)
    {
      v28 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFF7FFLL | v28);
    v29 = objc_opt_respondsToSelector();
    v30 = 4096;
    if ((v29 & 1) == 0)
    {
      v30 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFEFFFLL | v30);
    v31 = objc_opt_respondsToSelector();
    v32 = 0x2000;
    if ((v31 & 1) == 0)
    {
      v32 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFDFFFLL | v32);
    v33 = objc_opt_respondsToSelector();
    v34 = 0x4000;
    if ((v33 & 1) == 0)
    {
      v34 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFBFFFLL | v34);
    v35 = objc_opt_respondsToSelector();
    v36 = 0x8000;
    if ((v35 & 1) == 0)
    {
      v36 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFF7FFFLL | v36);
    v37 = objc_opt_respondsToSelector();
    v38 = 0x10000;
    if ((v37 & 1) == 0)
    {
      v38 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFEFFFFLL | v38);
    v39 = objc_opt_respondsToSelector();
    v40 = 0x20000;
    if ((v39 & 1) == 0)
    {
      v40 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFDFFFFLL | v40);
    v41 = objc_opt_respondsToSelector();
    v42 = 0x1000000;
    if ((v41 & 1) == 0)
    {
      v42 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFEFFFFFFLL | v42);
    v43 = objc_opt_respondsToSelector();
    v44 = 0x2000000;
    if ((v43 & 1) == 0)
    {
      v44 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFDFFFFFFLL | v44);
    v45 = objc_opt_respondsToSelector();
    v46 = 0x4000000;
    if ((v45 & 1) == 0)
    {
      v46 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFBFFFFFFLL | v46);
    v47 = objc_opt_respondsToSelector();
    v48 = 0x8000000;
    if ((v47 & 1) == 0)
    {
      v48 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFF7FFFFFFLL | v48);
    v49 = objc_opt_respondsToSelector();
    v50 = 0x40000;
    if ((v49 & 1) == 0)
    {
      v50 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFBFFFFLL | v50);
    v51 = objc_opt_respondsToSelector();
    v52 = 0x80000;
    if ((v51 & 1) == 0)
    {
      v52 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFF7FFFFLL | v52);
    v53 = objc_opt_respondsToSelector();
    v54 = 0x100000;
    if ((v53 & 1) == 0)
    {
      v54 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFEFFFFFLL | v54);
    v55 = objc_opt_respondsToSelector();
    v56 = 0x200000;
    if ((v55 & 1) == 0)
    {
      v56 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFDFFFFFLL | v56);
    v57 = objc_opt_respondsToSelector();
    v58 = 0x400000;
    if ((v57 & 1) == 0)
    {
      v58 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFBFFFFFLL | v58);
    v59 = objc_opt_respondsToSelector();
    v60 = 0x800000;
    if ((v59 & 1) == 0)
    {
      v60 = 0;
    }

    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFF7FFFFFLL | v60);
  }
}

- (void)setViewControllers:(id)controllers
{
  v5 = [controllers count];
  switch(v5)
  {
    case 2:
      v7 = [controllers objectAtIndexedSubscript:0];
      [(_UISplitViewControllerAdaptiveImpl *)self setViewController:v7 forColumn:0];

      v8 = [controllers objectAtIndexedSubscript:1];
      [(_UISplitViewControllerAdaptiveImpl *)self setViewController:v8 forColumn:2];

LABEL_8:
      if ([(_UISplitViewControllerAdaptiveImpl *)self style]== 2)
      {

        [(_UISplitViewControllerAdaptiveImpl *)self setViewController:0 forColumn:1];
      }

      return;
    case 1:
      v6 = [controllers objectAtIndexedSubscript:0];
      [(_UISplitViewControllerAdaptiveImpl *)self setViewController:v6 forColumn:0];

      goto LABEL_6;
    case 0:
      [(_UISplitViewControllerAdaptiveImpl *)self setViewController:0 forColumn:0];
LABEL_6:
      [(_UISplitViewControllerAdaptiveImpl *)self setViewController:0 forColumn:2];
      goto LABEL_8;
  }

  v9 = [controllers objectAtIndexedSubscript:0];
  [(_UISplitViewControllerAdaptiveImpl *)self setViewController:v9 forColumn:0];

  v10 = [controllers objectAtIndexedSubscript:2];
  [(_UISplitViewControllerAdaptiveImpl *)self setViewController:v10 forColumn:2];

  if ([(_UISplitViewControllerAdaptiveImpl *)self style]== 2)
  {
    v11 = [controllers objectAtIndexedSubscript:1];
    [(_UISplitViewControllerAdaptiveImpl *)self setViewController:v11 forColumn:1];
  }
}

- (void)setViewController:(id)controller forColumn:(int64_t)column
{
  v60[12] = *MEMORY[0x1E69E9840];
  v7 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:column];
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v10 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v12 = layout;

  if (!self)
  {
    goto LABEL_30;
  }

  if (column != 999)
  {
    if (!controller)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:sel__validateViewController_forSplitViewControllerColumn_ object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:4596 description:{@"Invalid parameter not satisfying: %@", @"splitViewControllerColumn != _UISplitViewControllerColumnUnspecified"}];

  if (controller)
  {
LABEL_7:
    if (column == 3)
    {
      goto LABEL_30;
    }

    v52 = v12;
    v53 = splitViewController;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    objectEnumerator = [(NSMapTable *)self->_columns objectEnumerator];
    v14 = [objectEnumerator countByEnumeratingWithState:&v54 objects:buf count:16];
    if (!v14)
    {
      goto LABEL_29;
    }

    v15 = v14;
    v16 = *v55;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v18 = *(*(&v54 + 1) + 8 * v17);
        if (v18)
        {
          v19 = *(v18 + 144);
          if (v19 == column || v19 == 3)
          {
            goto LABEL_20;
          }

          v21 = *(v18 + 24);
        }

        else
        {
          if (!column)
          {
            goto LABEL_20;
          }

          v21 = 0;
        }

        v22 = v21;

        if (v22 == controller)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          if (v18)
          {
            v23 = *(v18 + 144);
          }

          else
          {
            v23 = 0;
          }

          v51 = _UISplitViewControllerColumnDescription(v23);
          lowercaseString = [v51 lowercaseString];
          splitViewController2 = [(_UISplitViewControllerBaseImpl *)self splitViewController];
          [currentHandler2 handleFailureInMethod:sel__validateViewController_forSplitViewControllerColumn_ object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:4614 description:{@"%@ is already specified as the view controller for the %@ column. Split view controller: %@", controller, lowercaseString, splitViewController2}];
        }

LABEL_20:
        ++v17;
      }

      while (v15 != v17);
      v25 = [objectEnumerator countByEnumeratingWithState:&v54 objects:buf count:16];
      v15 = v25;
      if (!v25)
      {
LABEL_29:

        v12 = v52;
        splitViewController = v53;
        break;
      }
    }
  }

LABEL_30:
  if (v7)
  {
    v26 = *(v7 + 24);
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  if (v7)
  {
    v28 = *(v7 + 88);
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  v30 = 0;
  if (!self)
  {
    goto LABEL_43;
  }

  if (!controller)
  {
    goto LABEL_43;
  }

  _skipsConfiguringColumnNavigationController = [(_UISplitViewControllerBaseImpl *)self _skipsConfiguringColumnNavigationController];
  v30 = 0;
  if (column == 3 || _skipsConfiguringColumnNavigationController)
  {
    goto LABEL_43;
  }

  if (!-[_UISplitViewControllerAdaptiveImpl style](self, "style") || ([controller _isNavigationController] & 1) != 0 || (objc_msgSend(controller, "_isSplitViewController") & 1) != 0 || (objc_msgSend(controller, "_isTabBarController") & 1) != 0)
  {
    v30 = 0;
LABEL_43:
    [(_UISplitViewControllerAdaptiveImpl *)self _dismantleViewControllerInColumn:v7 layout:v12];
    [(_UISplitViewControllerAdaptiveImpl *)self _dismantleContentViewInColumn:v7];
    goto LABEL_44;
  }

  v30 = [controller _wrapsNavigationController:0] ^ 1;
  if (!v29 || (v30 & 1) == 0)
  {
    goto LABEL_43;
  }

  v30 = 1;
LABEL_44:
  if ((v27 != controller || (v29 != 0) != v30) && self)
  {
    splitViewController3 = [(_UISplitViewControllerBaseImpl *)self splitViewController];
    if (v7)
    {
      v33 = *(v7 + 88);
      if (v33)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969820);
        if (*CategoryCachedImpl)
        {
          v46 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = v46;
            v48 = *(v7 + 144);
            *buf = 136315650;
            *&buf[4] = "[_UISplitViewControllerAdaptiveImpl _dismantleModelNavigationViewControllerInColumn:]";
            *&buf[12] = 2048;
            *&buf[14] = splitViewController3;
            *&buf[22] = 2048;
            controllerCopy2 = v48;
            _os_log_impl(&dword_188A29000, v47, OS_LOG_TYPE_ERROR, "%s svc = %p; column = %ld; dismantling model navigation controller", buf, 0x20u);
          }
        }

        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __86___UISplitViewControllerAdaptiveImpl__dismantleModelNavigationViewControllerInColumn___block_invoke;
        controllerCopy2 = &unk_1E70F3590;
        v33 = v33;
        v60[0] = v33;
        [UIView performWithoutAnimation:buf];
      }
    }

    else
    {
      v33 = 0;
    }
  }

  if (v30)
  {
    v35 = __UILogGetCategoryCachedImpl("UISplitViewController", &_MergedGlobals_113);
    if (*v35)
    {
      v45 = *(v35 + 8);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "[_UISplitViewControllerAdaptiveImpl setViewController:forColumn:]";
        *&buf[12] = 2048;
        *&buf[14] = splitViewController;
        *&buf[22] = 2112;
        controllerCopy2 = controller;
        LOWORD(v60[0]) = 2048;
        *(v60 + 2) = column;
        _os_log_impl(&dword_188A29000, v45, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; column = %ld; preparing navigation controller for column", buf, 0x2Au);
      }
    }

    if (v7)
    {
      v36 = *(v7 + 88);
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;

    if (!v37)
    {
      v38 = objc_alloc_init(UINavigationController);
      [(UINavigationController *)v38 _setCreatedBySplitViewController:1];
      [(UIBackgroundConfiguration *)v7 _setStrokeColor:v38];
    }
  }

  else
  {
    [(UIBackgroundConfiguration *)v7 _setStrokeColor:?];
  }

  v39 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969768);
  if (*v39)
  {
    v43 = *(v39 + 8);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "[_UISplitViewControllerAdaptiveImpl setViewController:forColumn:]";
      *&buf[12] = 2048;
      *&buf[14] = splitViewController;
      *&buf[22] = 2112;
      controllerCopy2 = controller;
      LOWORD(v60[0]) = 2048;
      *(v60 + 2) = column;
      _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; column = %ld", buf, 0x2Au);
    }
  }

  [(_UIHomeAffordanceObservationRecord *)v7 setLegacyViewServiceSessionIdentifier:controller];
  v40 = [v12 columnModeForSplitViewControllerColumn:column];
  if (self)
  {
    v41 = v40;
    previousLayout = [(_UISplitViewControllerAdaptiveLayoutTransitionController *)self->_transitionController previousLayout];

    if (previousLayout)
    {
      if (v41)
      {
        [(_UISplitViewControllerAdaptiveImpl *)self _prepareViewControllerInColumn:v7 layout:v12];
      }
    }
  }

  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateSplitViewControllerPreferences];
}

- (void)_dismantleViewControllerInColumn:(void *)column layout:
{
  v38 = *MEMORY[0x1E69E9840];
  if (self)
  {
    viewController = [(_UISplitViewControllerAdaptiveColumn *)a2 viewController];
    splitViewController = [self splitViewController];
    v8 = [(_UISplitViewControllerAdaptiveImpl *)self _columnForViewController:viewController layout:column];
    if (v8 == 999 || (!a2 ? (v9 = 0) : (v9 = a2[18]), v8 == v9))
    {
      if (viewController)
      {
        parentViewController = [viewController parentViewController];

        if (parentViewController == splitViewController)
        {
          CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969810);
          if (*CategoryCachedImpl)
          {
            v25 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = v25;
              if (a2)
              {
                v27 = a2[18];
              }

              else
              {
                v27 = 0;
              }

              *buf = 136315906;
              v31 = "[_UISplitViewControllerAdaptiveImpl _dismantleViewControllerInColumn:layout:]";
              v32 = 2048;
              v33 = splitViewController;
              v34 = 2112;
              v35 = viewController;
              v36 = 2048;
              v37 = v27;
              _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; column = %ld", buf, 0x2Au);
            }
          }

          [viewController willMoveToParentViewController:0];
          [viewController removeFromParentViewController];
        }
      }

      parentModalViewController = [viewController parentModalViewController];

      if (parentModalViewController)
      {
        presentationController = [viewController presentationController];
        v14 = [(UIViewController *)splitViewController _modalPresenterForPresentationController:presentationController];

        parentModalViewController2 = [viewController parentModalViewController];

        if (parentModalViewController2 != v14)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          if (a2)
          {
            v18 = a2[18];
          }

          else
          {
            v18 = 0;
          }

          v19 = _UISplitViewControllerColumnDescription(v18);
          lowercaseString = [v19 lowercaseString];
          parentModalViewController3 = [viewController parentModalViewController];
          [currentHandler handleFailureInMethod:sel__dismantleViewControllerInColumn_layout_ object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:2846 description:{@"Unexpected presentation of the %@ column's view controller. Split view controller %@; view controller: %@; presenting view controller: %@", lowercaseString, splitViewController, viewController, parentModalViewController3}];
        }

        v16 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969818);
        if (*v16)
        {
          v22 = *(v16 + 8);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = v22;
            if (a2)
            {
              v24 = a2[18];
            }

            else
            {
              v24 = 0;
            }

            *buf = 136315906;
            v31 = "[_UISplitViewControllerAdaptiveImpl _dismantleViewControllerInColumn:layout:]";
            v32 = 2048;
            v33 = splitViewController;
            v34 = 2112;
            v35 = viewController;
            v36 = 2048;
            v37 = v24;
            _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; column = %ld; dismissing presented view controller", buf, 0x2Au);
          }
        }

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __78___UISplitViewControllerAdaptiveImpl__dismantleViewControllerInColumn_layout___block_invoke;
        v28[3] = &unk_1E70F3590;
        v29 = viewController;
        [UIView performWithoutAnimation:v28];
      }

      if ([viewController _isTabBarController])
      {
        [viewController _setNotifySplitViewControllerForSelectionChange:0];
      }

      [_UISplitViewControllerAdaptiveImpl _dismantleEffectiveNavigationBarInColumn:a2];
      [_UISplitViewControllerAdaptiveImpl _dismantleEffectiveToolbarInColumn:a2];
      [viewController _setAllowNestedNavigationControllers:0];
    }
  }
}

- (void)_dismantleContentViewInColumn:(uint64_t)column
{
  if (column)
  {
    if (a2)
    {
      v3 = *(a2 + 160);
      [v3 setContentView:0];

      v4 = *(a2 + 160);
    }

    else
    {
      [0 setContentView:0];
      v4 = 0;
    }

    v5 = v4;
    [v5 setInteractionDelegate:0];
  }
}

- (void)_prepareViewControllerInColumn:(void *)column layout:
{
  v53 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  splitViewController = [self splitViewController];
  viewController = [(_UISplitViewControllerAdaptiveColumn *)a2 viewController];
  if (a2)
  {
    v8 = a2[18];
  }

  else
  {
    v8 = 0;
  }

  v9 = [column columnModeForSplitViewControllerColumn:v8];
  v10 = v9 - 3;
  if (v9)
  {
    [(_UISplitViewControllerAdaptiveImpl *)self _prepareModelNavigationViewControllerInColumn:a2];
    if (v10 >= 0xFFFFFFFFFFFFFFFELL)
    {
      parentViewController = [viewController parentViewController];
      _isNavigationController = [parentViewController _isNavigationController];

      if (_isNavigationController)
      {
        parentViewController2 = [viewController parentViewController];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __76___UISplitViewControllerAdaptiveImpl__prepareViewControllerInColumn_layout___block_invoke;
        v41[3] = &unk_1E70F6228;
        v42 = parentViewController2;
        v43 = viewController;
        v44 = splitViewController;
        v15 = parentViewController2;
        [UIView performWithoutAnimation:v41];
      }

      isCollapsed = [column isCollapsed];
      goto LABEL_10;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__prepareViewControllerInColumn_layout_ object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:2735 description:{@"UISplitViewController internal inconsistency: unexpected column mode. Split view controller: %@", splitViewController}];

    [(_UISplitViewControllerAdaptiveImpl *)self _prepareModelNavigationViewControllerInColumn:a2];
  }

  isCollapsed = 0;
LABEL_10:
  navigationController = [(_UISplitViewControllerAdaptiveColumn *)a2 navigationController];
  [navigationController _setAllowNestedNavigationControllers:isCollapsed];

  if ([viewController _isTabBarController])
  {
    [viewController _setNotifySplitViewControllerForSelectionChange:1];
  }

  parentModalViewController = [viewController parentModalViewController];

  if (v9 != 3 && parentModalViewController)
  {
    presentationController = [viewController presentationController];
    v19 = [(UIViewController *)splitViewController _modalPresenterForPresentationController:presentationController];

    parentModalViewController2 = [viewController parentModalViewController];

    if (parentModalViewController2 != v19)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      if (a2)
      {
        v29 = a2[18];
      }

      else
      {
        v29 = 0;
      }

      v37 = _UISplitViewControllerColumnDescription(v29);
      lowercaseString = [v37 lowercaseString];
      [currentHandler2 handleFailureInMethod:sel__prepareViewControllerInColumn_layout_ object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:2768 description:{@"Unexpected presentation of the %@ column's view controller. Split view controller %@; view controller: %@; presenting view controller: %@", lowercaseString, splitViewController, viewController, v19}];
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969800);
    if (*CategoryCachedImpl)
    {
      v31 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = v31;
        if (a2)
        {
          v33 = a2[18];
        }

        else
        {
          v33 = 0;
        }

        *buf = 136315906;
        v46 = "[_UISplitViewControllerAdaptiveImpl _prepareViewControllerInColumn:layout:]";
        v47 = 2048;
        v48 = splitViewController;
        v49 = 2112;
        v50 = viewController;
        v51 = 2048;
        v52 = v33;
        _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; column = %ld; dismissing presented view controller", buf, 0x2Au);
      }
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __76___UISplitViewControllerAdaptiveImpl__prepareViewControllerInColumn_layout___block_invoke_259;
    v39[3] = &unk_1E70F3590;
    v40 = v19;
    v22 = v19;
    [UIView performWithoutAnimation:v39];
  }

  if (v10 >= 0xFFFFFFFFFFFFFFFELL)
  {
    if (viewController)
    {
      parentViewController3 = [viewController parentViewController];

      if (parentViewController3 != splitViewController)
      {
        v24 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969808);
        if (*v24)
        {
          v34 = *(v24 + 8);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = v34;
            if (a2)
            {
              v36 = a2[18];
            }

            else
            {
              v36 = 0;
            }

            *buf = 136315906;
            v46 = "[_UISplitViewControllerAdaptiveImpl _prepareViewControllerInColumn:layout:]";
            v47 = 2048;
            v48 = splitViewController;
            v49 = 2112;
            v50 = viewController;
            v51 = 2048;
            v52 = v36;
            _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; column = %ld; adding child view controller", buf, 0x2Au);
          }
        }

        viewIfLoaded = [viewController viewIfLoaded];
        superview = [viewIfLoaded superview];
        _viewControllerForAncestor = [superview _viewControllerForAncestor];

        while (1)
        {

          if (!_viewControllerForAncestor || _viewControllerForAncestor == splitViewController)
          {
            break;
          }

          viewIfLoaded = _viewControllerForAncestor;
          [_viewControllerForAncestor _stopTransitionsImmediately];
          _viewControllerForAncestor = [(UIViewController *)_viewControllerForAncestor _ancestorViewController];
        }

        [splitViewController addChildViewController:viewController];
        [viewController didMoveToParentViewController:splitViewController];
      }
    }
  }
}

- (void)showColumn:(int64_t)column
{
  v19 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &showColumn____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      v13 = 136315650;
      v14 = "[_UISplitViewControllerAdaptiveImpl showColumn:]";
      v15 = 2048;
      v16 = splitViewController;
      v17 = 2048;
      columnCopy = column;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s svc = %p; column = %ld", &v13, 0x20u);
    }
  }

  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v7 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v9 = layout;

  [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsToShowSplitViewControllerColumn:column layout:v9];
  [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredDisplayModeForPreferredColumns];
  if ([v9 columnVisibilityForSplitViewControllerColumn:column] != 2)
  {
    [(_UISplitViewControllerAdaptiveLayoutTransitionController *)self->_transitionController scheduleSplitViewControllerColumnSuspendingDelegateUpdates:column];
    [(_UISplitViewControllerAdaptiveImpl *)self _setAllowsSceneResizeToShowAdditionalColumns];
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutForColumnVisibilityChange];
  }
}

- (uint64_t)_updatePreferredColumnsToShowSplitViewControllerColumn:(void *)column layout:
{
  if (result)
  {
    v3 = result;
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    if (column)
    {
      v4 = *(result + 472);
      v8 = *(result + 456);
      v9 = v4;
      v10 = *(result + 488);
      v5 = *(result + 440);
      v6 = *(result + 424);
      v7 = v5;
      [column updatedPreferredColumns:&v6 toShowSplitViewControllerColumn:a2];
    }

    v8 = v13;
    v9 = v14;
    v10 = v15;
    v6 = v11;
    v7 = v12;
    return [(_UISplitViewControllerAdaptiveImpl *)v3 _updatePreferredColumnsWithPreferredColumns:?];
  }

  return result;
}

- (void)_invalidateLayoutForColumnVisibilityChange
{
  v10 = *MEMORY[0x1E69E9840];
  if (self)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_invalidateLayoutForColumnVisibilityChange___s_category);
    if (*CategoryCachedImpl)
    {
      v3 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = v3;
        splitViewController = [self splitViewController];
        v6 = 136315394;
        v7 = "[_UISplitViewControllerAdaptiveImpl _invalidateLayoutForColumnVisibilityChange]";
        v8 = 2048;
        v9 = splitViewController;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%s svc = %p", &v6, 0x16u);
      }
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _setNeedsUpdateAnimatedTransitionsEnabled];
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }
}

- (void)hideColumn:(int64_t)column
{
  v19 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &hideColumn____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      v13 = 136315650;
      v14 = "[_UISplitViewControllerAdaptiveImpl hideColumn:]";
      v15 = 2048;
      v16 = splitViewController;
      v17 = 2048;
      columnCopy = column;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s svc = %p; column = %ld", &v13, 0x20u);
    }
  }

  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v7 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v9 = layout;

  [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsToHideSplitViewControllerColumn:column layout:v9];
  [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredDisplayModeForPreferredColumns];
  if ([v9 columnVisibilityForSplitViewControllerColumn:column])
  {
    [(_UISplitViewControllerAdaptiveLayoutTransitionController *)self->_transitionController scheduleSplitViewControllerColumnSuspendingDelegateUpdates:column];
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutForColumnVisibilityChange];
  }
}

- (uint64_t)_updatePreferredColumnsToHideSplitViewControllerColumn:(void *)column layout:
{
  if (result)
  {
    v3 = result;
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    if (column)
    {
      v4 = *(result + 472);
      v8 = *(result + 456);
      v9 = v4;
      v10 = *(result + 488);
      v5 = *(result + 440);
      v6 = *(result + 424);
      v7 = v5;
      [column updatedPreferredColumns:&v6 toHideSplitViewControllerColumn:a2];
    }

    v8 = v13;
    v9 = v14;
    v10 = v15;
    v6 = v11;
    v7 = v12;
    return [(_UISplitViewControllerAdaptiveImpl *)v3 _updatePreferredColumnsWithPreferredColumns:?];
  }

  return result;
}

- (void)_toggleSplitViewControllerColumnVisibility:(id *)visibility
{
  v17 = *MEMORY[0x1E69E9840];
  if (visibility)
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)visibility layout];
    if ([layout columnVisibilityForSplitViewControllerColumn:a2])
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969778);
      if (*CategoryCachedImpl)
      {
        v7 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = v7;
          splitViewController = [visibility splitViewController];
          v13 = 136315394;
          v14 = "[_UISplitViewControllerAdaptiveImpl _toggleSplitViewControllerColumnVisibility:]";
          v15 = 2048;
          v16 = splitViewController;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%s svc = %p; hiding column", &v13, 0x16u);
        }
      }

      [(_UISplitViewControllerAdaptiveImpl *)visibility _updatePreferredColumnsToHideSplitViewControllerColumn:a2 layout:layout];
    }

    else
    {
      v6 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969770);
      if (*v6)
      {
        v10 = *(v6 + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = v10;
          splitViewController2 = [visibility splitViewController];
          v13 = 136315394;
          v14 = "[_UISplitViewControllerAdaptiveImpl _toggleSplitViewControllerColumnVisibility:]";
          v15 = 2048;
          v16 = splitViewController2;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s svc = %p; showing column", &v13, 0x16u);
        }
      }

      [(_UISplitViewControllerAdaptiveImpl *)visibility _updatePreferredColumnsToShowSplitViewControllerColumn:a2 layout:layout];
      [(_UISplitViewControllerAdaptiveImpl *)visibility _setAllowsSceneResizeToShowAdditionalColumns];
    }

    [(_UISplitViewControllerAdaptiveImpl *)visibility _invalidateLayoutForColumnVisibilityChange];
  }
}

- (void)showViewController:(id)controller sender:(id)sender
{
  v50 = *MEMORY[0x1E69E9840];
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  if (!controller)
  {
    goto LABEL_43;
  }

  if ([(_UISplitViewControllerAdaptiveImpl *)self style])
  {
    [(_UISplitViewControllerAdaptiveImpl *)self isCollapsed];
    v8 = [(_UISplitViewControllerAdaptiveImpl *)self _columnForViewController:controller];
    if (v8 != 999)
    {
      v9 = v8;
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969788);
      if (*CategoryCachedImpl)
      {
        v35 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v45 = "[_UISplitViewControllerAdaptiveImpl showViewController:sender:]";
          v46 = 2048;
          v47 = splitViewController;
          v48 = 2048;
          controllerCopy2 = v9;
          _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "%s svc = %p; column = %ld; showing view controller", buf, 0x20u);
        }
      }

      scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
      v12 = scheduledLayout;
      if (scheduledLayout)
      {
        layout = scheduledLayout;
      }

      else
      {
        layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
      }

      v28 = layout;

      [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsToShowSplitViewControllerColumn:v9 layout:v28];
      if ([v28 columnVisibilityForSplitViewControllerColumn:v9] != 2)
      {
        [(_UISplitViewControllerAdaptiveImpl *)self _setAllowsSceneResizeToShowAdditionalColumns];
        [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutForColumnVisibilityChange];
      }

      goto LABEL_43;
    }

    goto LABEL_13;
  }

  if ((*(&self->_implFlags + 2) & 4) != 0 && (WeakRetained = objc_loadWeakRetained(&self->_delegate), v15 = [WeakRetained splitViewController:splitViewController showViewController:controller sender:sender], WeakRetained, v15))
  {
    v16 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969780);
    if (*v16)
    {
      v17 = *(v16 + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v45 = "[_UISplitViewControllerAdaptiveImpl showViewController:sender:]";
        v46 = 2048;
        v47 = splitViewController;
        v48 = 2112;
        controllerCopy2 = controller;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; delegate handled", buf, 0x20u);
      }
    }
  }

  else
  {
    if ([(_UISplitViewControllerAdaptiveImpl *)self isCollapsed])
    {
LABEL_13:
      v18 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969790);
      if (*v18)
      {
        v34 = *(v18 + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v45 = "[_UISplitViewControllerAdaptiveImpl showViewController:sender:]";
          v46 = 2048;
          v47 = splitViewController;
          v48 = 2112;
          controllerCopy2 = controller;
          _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; presenting view controller", buf, 0x20u);
        }
      }

      [splitViewController presentViewController:controller animated:-[_UISplitViewControllerAdaptiveImpl _areAnimatedTransitionsPermitted](self) completion:0];
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      objectEnumerator = [(NSMapTable *)self->_columns objectEnumerator];
      v20 = [objectEnumerator countByEnumeratingWithState:&v37 objects:buf count:16];
      if (v20)
      {
        v21 = v20;
        v36 = splitViewController;
        v22 = *v38;
LABEL_19:
        v23 = 0;
        while (1)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v24 = *(*(&v37 + 1) + 8 * v23);
          viewController = [(_UISplitViewControllerAdaptiveColumn *)v24 viewController];
          v26 = [sender _isMemberOfViewControllerHierarchy:viewController];

          if (v26)
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [objectEnumerator countByEnumeratingWithState:&v37 objects:buf count:16];
            if (v21)
            {
              goto LABEL_19;
            }

            goto LABEL_25;
          }
        }

        if (!v24)
        {
LABEL_25:
          v27 = 1;
          goto LABEL_32;
        }

        v27 = v24[18] == 0;
LABEL_32:
        splitViewController = v36;
      }

      else
      {
        v27 = 1;
      }
    }

    else
    {
      v27 = 1;
    }

    viewControllers = [(_UISplitViewControllerAdaptiveImpl *)self viewControllers];
    if ([viewControllers count] == 1)
    {
      controllerCopy3 = controller;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&controllerCopy3 count:1];
      [splitViewController setViewControllers:v30];
    }

    else
    {
      if (v27)
      {
        v42[0] = controller;
        v30 = [viewControllers objectAtIndexedSubscript:1];
        v42[1] = v30;
        v31 = MEMORY[0x1E695DEC8];
        v32 = v42;
      }

      else
      {
        v30 = [viewControllers objectAtIndexedSubscript:0];
        v41[0] = v30;
        v41[1] = controller;
        v31 = MEMORY[0x1E695DEC8];
        v32 = v41;
      }

      v33 = [v31 arrayWithObjects:v32 count:2];
      [splitViewController setViewControllers:v33];
    }
  }

LABEL_43:
}

- (void)showDetailViewController:(id)controller sender:(id)sender
{
  v44[2] = *MEMORY[0x1E69E9840];
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  if (controller)
  {
    if ([(_UISplitViewControllerAdaptiveImpl *)self style])
    {
      isCollapsed = [(_UISplitViewControllerAdaptiveImpl *)self isCollapsed];
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9697C0);
      if (*CategoryCachedImpl)
      {
        v30 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v35 = 136315650;
          v36 = "[_UISplitViewControllerAdaptiveImpl showDetailViewController:sender:]";
          v37 = 2048;
          v38 = splitViewController;
          v39 = 2112;
          controllerCopy7 = controller;
          _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; updating and showing view controller in secondary column", &v35, 0x20u);
        }
      }

      v10 = [(_UISplitViewControllerAdaptiveImpl *)self viewControllerForColumn:2];

      if (v10 != controller)
      {
        [(_UISplitViewControllerAdaptiveImpl *)self setViewController:controller forColumn:2];
      }

      scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
      v12 = scheduledLayout;
      if (scheduledLayout)
      {
        layout = scheduledLayout;
      }

      else
      {
        layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
      }

      v22 = layout;

      [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsToShowSplitViewControllerColumn:v22 layout:?];
      if ([v22 columnVisibilityForSplitViewControllerColumn:2] == 2)
      {
        if (v10 != controller && isCollapsed)
        {
          [(_UISplitViewControllerAdaptiveImpl *)self _setNeedsUpdateAnimatedTransitionsEnabled];
        }
      }

      else
      {
        [(_UISplitViewControllerAdaptiveImpl *)self _setAllowsSceneResizeToShowAdditionalColumns];
        [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutForColumnVisibilityChange];
      }
    }

    else if ((*(&self->_implFlags + 2) & 8) != 0 && (WeakRetained = objc_loadWeakRetained(&self->_delegate), v15 = [WeakRetained splitViewController:splitViewController showDetailViewController:controller sender:sender], WeakRetained, v15))
    {
      v16 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969798);
      if (*v16)
      {
        v17 = *(v16 + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v35 = 136315650;
          v36 = "[_UISplitViewControllerAdaptiveImpl showDetailViewController:sender:]";
          v37 = 2048;
          v38 = splitViewController;
          v39 = 2112;
          controllerCopy7 = controller;
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; delegate handled", &v35, 0x20u);
        }
      }
    }

    else
    {
      isCollapsed2 = [(_UISplitViewControllerAdaptiveImpl *)self isCollapsed];
      v19 = [(_UISplitViewControllerAdaptiveImpl *)self viewControllerForColumn:0];
      v20 = v19;
      if (isCollapsed2)
      {
        if ([objc_opt_class() doesOverrideViewControllerMethod:sel_showViewController_sender_])
        {
          v21 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9697B0);
          if (*v21)
          {
            v32 = *(v21 + 8);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v35 = 136315906;
              v36 = "[_UISplitViewControllerAdaptiveImpl showDetailViewController:sender:]";
              v37 = 2048;
              v38 = splitViewController;
              v39 = 2112;
              controllerCopy7 = controller;
              v41 = 2112;
              v42 = v20;
              _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; secondaryViewController = %@; showing view controller from secondary", &v35, 0x2Au);
            }
          }

          [v20 _setAllowNestedNavigationControllers:1];
          [v20 showViewController:controller sender:sender];
        }

        else
        {
          v29 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9697B8);
          if (*v29)
          {
            v33 = *(v29 + 8);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v35 = 136315650;
              v36 = "[_UISplitViewControllerAdaptiveImpl showDetailViewController:sender:]";
              v37 = 2048;
              v38 = splitViewController;
              v39 = 2112;
              controllerCopy7 = controller;
              _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; presenting view controller", &v35, 0x20u);
            }
          }

          [splitViewController presentViewController:controller animated:-[_UISplitViewControllerAdaptiveImpl _areAnimatedTransitionsPermitted](self) completion:0];
        }
      }

      else
      {
        if (!v19 || v19 == controller)
        {
          v27 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9697A8);
          if (*v27)
          {
            v31 = *(v27 + 8);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v35 = 136315650;
              v36 = "[_UISplitViewControllerAdaptiveImpl showDetailViewController:sender:]";
              v37 = 2048;
              v38 = splitViewController;
              v39 = 2112;
              controllerCopy7 = controller;
              _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; updating primary view controller", &v35, 0x20u);
            }
          }

          controllerCopy6 = controller;
          v24 = MEMORY[0x1E695DEC8];
          v25 = &controllerCopy6;
          v26 = 1;
        }

        else
        {
          v23 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9697A0);
          if (*v23)
          {
            v34 = *(v23 + 8);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v35 = 136315650;
              v36 = "[_UISplitViewControllerAdaptiveImpl showDetailViewController:sender:]";
              v37 = 2048;
              v38 = splitViewController;
              v39 = 2112;
              controllerCopy7 = controller;
              _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; updating secondary view controller", &v35, 0x20u);
            }
          }

          v44[0] = v20;
          v44[1] = controller;
          v24 = MEMORY[0x1E695DEC8];
          v25 = v44;
          v26 = 2;
        }

        v28 = [v24 arrayWithObjects:v25 count:v26];
        [splitViewController setViewControllers:v28];
      }
    }
  }
}

- (BOOL)_setNeedsUpdateAnimatedTransitionsEnabled
{
  if (result)
  {
    v1 = result;
    result = +[UIView areAnimationsEnabled];
    if (result)
    {
      if (*(v1 + 352) != 1)
      {
        result = [(_UISplitViewControllerAdaptiveImpl *)v1 _areAnimatedTransitionsPermitted];
        v2 = 1;
        if (result)
        {
          v2 = 2;
        }

        *(v1 + 352) = v2;
      }
    }

    else
    {
      *(v1 + 352) = 1;
    }
  }

  return result;
}

- (void)setStyle:(int64_t)style
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_style != style)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setStyle____s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        *buf = 136315650;
        v10 = "[_UISplitViewControllerAdaptiveImpl setStyle:]";
        v11 = 2048;
        v12 = splitViewController;
        v13 = 2048;
        styleCopy = style;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s svc = %p; style = %ld", buf, 0x20u);
      }
    }

    self->_style = style;
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }
}

- (void)setPreferredPrimaryColumnWidth:(double)width
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:0];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 32);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, width) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPreferredPrimaryColumnWidth____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setPreferredPrimaryColumnWidth:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        widthCopy = width;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; preferredPrimaryColumnWidth = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[4] = width;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)preferredPrimaryColumnWidthFraction
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:0];
  if (v2)
  {
    v3 = v2[5];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)setPreferredPrimaryColumnWidthFraction:(double)fraction
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:0];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 40);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, fraction) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPreferredPrimaryColumnWidthFraction____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setPreferredPrimaryColumnWidthFraction:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        fractionCopy = fraction;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; preferredPrimaryColumnWidthFraction = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[5] = fraction;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)effectiveMinimumPrimaryColumnWidth
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  [layout minimumWidthForSplitViewControllerColumn:0];
  v4 = v3;

  return v4;
}

- (void)setMinimumPrimaryColumnWidth:(double)width
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:0];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 48);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, width) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setMinimumPrimaryColumnWidth____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setMinimumPrimaryColumnWidth:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        widthCopy = width;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; minimumPrimaryColumnWidth = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[6] = width;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (void)setMaximumPrimaryColumnWidth:(double)width
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:0];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 56);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, width) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setMaximumPrimaryColumnWidth____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setMaximumPrimaryColumnWidth:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        widthCopy = width;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; maximumPrimaryColumnWidth = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[7] = width;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)preferredSupplementaryColumnWidth
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:1];
  if (v2)
  {
    v3 = v2[4];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)setPreferredSupplementaryColumnWidth:(double)width
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:1];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 32);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, width) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPreferredSupplementaryColumnWidth____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setPreferredSupplementaryColumnWidth:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        widthCopy = width;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; preferredSupplementaryColumnWidth = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[4] = width;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)preferredSupplementaryColumnWidthFraction
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:1];
  if (v2)
  {
    v3 = v2[5];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)setPreferredSupplementaryColumnWidthFraction:(double)fraction
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:1];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 40);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, fraction) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPreferredSupplementaryColumnWidthFraction____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setPreferredSupplementaryColumnWidthFraction:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        fractionCopy = fraction;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; preferredSupplementaryColumnWidthFraction = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[5] = fraction;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)minimumSupplementaryColumnWidth
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:1];
  if (v2)
  {
    v3 = v2[6];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)setMinimumSupplementaryColumnWidth:(double)width
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:1];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 48);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, width) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setMinimumSupplementaryColumnWidth____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setMinimumSupplementaryColumnWidth:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        widthCopy = width;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; minimumSupplementaryColumnWidth = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[6] = width;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)maximumSupplementaryColumnWidth
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:1];
  if (v2)
  {
    v3 = v2[7];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)setMaximumSupplementaryColumnWidth:(double)width
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:1];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 56);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, width) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setMaximumSupplementaryColumnWidth____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setMaximumSupplementaryColumnWidth:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        widthCopy = width;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; maximumSupplementaryColumnWidth = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[7] = width;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)preferredSecondaryColumnWidth
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:2];
  if (v2)
  {
    v3 = v2[4];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)setPreferredSecondaryColumnWidth:(double)width
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:2];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 32);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, width) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPreferredSecondaryColumnWidth____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setPreferredSecondaryColumnWidth:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        widthCopy = width;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; preferredSecondaryColumnWidth = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[4] = width;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)preferredSecondaryColumnWidthFraction
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:2];
  if (v2)
  {
    v3 = v2[5];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)setPreferredSecondaryColumnWidthFraction:(double)fraction
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:2];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 40);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, fraction) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPreferredSecondaryColumnWidthFraction____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setPreferredSecondaryColumnWidthFraction:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        fractionCopy = fraction;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; preferredSecondaryColumnWidthFraction = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[5] = fraction;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)minimumSecondaryColumnWidth
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:2];
  if (v2)
  {
    v3 = v2[6];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)setMinimumSecondaryColumnWidth:(double)width
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:2];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 48);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, width) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setMinimumSecondaryColumnWidth____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setMinimumSecondaryColumnWidth:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        widthCopy = width;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; minimumSecondaryColumnWidth = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[6] = width;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)preferredInspectorColumnWidthFraction
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:4];
  if (v2)
  {
    v3 = v2[5];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)setPreferredInspectorColumnWidthFraction:(double)fraction
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:4];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 40);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, fraction) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPreferredInspectorColumnWidthFraction____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setPreferredInspectorColumnWidthFraction:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        fractionCopy = fraction;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; preferredInspectorColumnWidthFraction = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[5] = fraction;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)preferredInspectorColumnWidth
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:4];
  if (v2)
  {
    v3 = v2[4];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)setPreferredInspectorColumnWidth:(double)width
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:4];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 32);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, width) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPreferredInspectorColumnWidth____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setPreferredInspectorColumnWidth:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        widthCopy = width;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; preferredInspectorColumnWidth = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[4] = width;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)effectiveMinimumInspectorColumnWidth
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  [layout minimumWidthForSplitViewControllerColumn:4];
  v4 = v3;

  return v4;
}

- (double)minimumInspectorColumnWidth
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:4];
  if (v2)
  {
    v3 = v2[6];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)setMinimumInspectorColumnWidth:(double)width
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:4];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 48);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, width) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setMinimumInspectorColumnWidth____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setMinimumInspectorColumnWidth:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        widthCopy = width;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; minimumInspectorColumnWidth = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[6] = width;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (double)maximumInspectorColumnWidth
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:4];
  if (v2)
  {
    v3 = v2[7];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)setMaximumInspectorColumnWidth:(double)width
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:4];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 56);
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, width) > 2.22044605e-16)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setMaximumInspectorColumnWidth____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setMaximumInspectorColumnWidth:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        widthCopy = width;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; maximumInspectorColumnWidth = %g", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[7] = width;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
  }
}

- (void)setPreferredDisplayMode:(int64_t)mode
{
  v18 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPreferredDisplayMode____s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      previouslyRequestedDisplayMode = self->_previouslyRequestedDisplayMode;
      v10 = 136315906;
      v11 = "[_UISplitViewControllerAdaptiveImpl setPreferredDisplayMode:]";
      v12 = 2048;
      v13 = splitViewController;
      v14 = 2048;
      v15 = previouslyRequestedDisplayMode;
      v16 = 2048;
      modeCopy = mode;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s svc = %p; previouslyRequestedDisplayMode = %ld; preferredDisplayMode = %ld", &v10, 0x2Au);
    }
  }

  self->_previouslyRequestedDisplayMode = mode;
  [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsToPreferredDisplayMode:mode];
  [(_UISplitViewControllerAdaptiveImpl *)self _setAllowsSceneResizeToShowAdditionalColumns];
  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  [(_UISplitViewControllerAdaptiveImpl *)self _performAnimatedTransitionIfNeededAndInAnimationBlock];
}

- (void)_updatePreferredColumnsToPreferredDisplayMode:(void *)result
{
  if (result)
  {
    v3 = result;
    if ((a2 - 4) < 3)
    {
      v4 = 0;
    }

    else if ((a2 - 2) >= 2)
    {
      if (a2 == 1)
      {
        v5 = [(_UISplitViewControllerAdaptiveImpl *)result _updatePreferredColumnsPrimaryEdgeSplitViewControllerColumn:?];
        goto LABEL_20;
      }

      v4 = 999;
    }

    else
    {
      v4 = [result style] == 2;
    }

    v5 = [(_UISplitViewControllerAdaptiveImpl *)v3 _updatePreferredColumnsPrimaryEdgeSplitViewControllerColumn:v4];
    if (a2 > 3)
    {
      if (a2 == 6)
      {
        v6 = v3;
        v7 = 3;
        goto LABEL_19;
      }

      if (a2 != 5)
      {
        if (a2 != 4)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (a2 == 2)
    {
LABEL_17:
      v6 = v3;
      v7 = 1;
      goto LABEL_19;
    }

    if (a2 == 3)
    {
LABEL_16:
      v6 = v3;
      v7 = 2;
LABEL_19:
      v5 |= [(_UISplitViewControllerAdaptiveImpl *)v6 _updatePreferredColumnsSplitBehavior:v7];
    }

LABEL_20:
    v8 = v5 | [(_UISplitViewControllerAdaptiveImpl *)v3 _updatePreferredColumnsPrimaryEdgePreferenceMode:?];
    return (v8 | [(_UISplitViewControllerAdaptiveImpl *)v3 _updatePreferredColumnsEnforcingColumnPreferences:?]);
  }

  return result;
}

- (void)setPreferredSplitBehavior:(int64_t)behavior
{
  v18 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPreferredSplitBehavior____s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      splitBehavior = self->_preferredColumns.splitBehavior;
      v10 = 136315906;
      v11 = "[_UISplitViewControllerAdaptiveImpl setPreferredSplitBehavior:]";
      v12 = 2048;
      v13 = splitViewController;
      v14 = 2048;
      v15 = splitBehavior;
      v16 = 2048;
      behaviorCopy = behavior;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s svc = %p; previouslyRequestedSplitBehavior = %ld; preferredSplitBehavior = %ld", &v10, 0x2Au);
    }
  }

  if ([(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsSplitBehavior:behavior])
  {
    [(_UISplitViewControllerAdaptiveImpl *)self _setAllowsSceneResizeToShowAdditionalColumns];
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }

  [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredDisplayModeForPreferredColumns];
}

- (uint64_t)_updatePreferredColumnsSplitBehavior:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = &OBJC_IVAR____UITileLayer_maskPath;
    if (*(result + 472) == a2)
    {
      return 0;
    }

    else
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_updatePreferredColumnsSplitBehavior____s_category);
      if (*CategoryCachedImpl)
      {
        v6 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = v6;
          splitViewController = [v3 splitViewController];
          v9 = 136315650;
          v10 = "[_UISplitViewControllerAdaptiveImpl _updatePreferredColumnsSplitBehavior:]";
          v11 = 2048;
          v12 = splitViewController;
          v13 = 2048;
          v14 = a2;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s svc = %p; splitBehavior = %ld", &v9, 0x20u);

          v4 = &OBJC_IVAR____UITileLayer_maskPath;
        }
      }

      *&v3[v4[28] + 48] = a2;
      return 1;
    }
  }

  return result;
}

- (void)setShowsSecondaryOnlyButton:(BOOL)button
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsSecondaryOnlyButton != button)
  {
    buttonCopy = button;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setShowsSecondaryOnlyButton____s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        *buf = 136315650;
        v10 = "[_UISplitViewControllerAdaptiveImpl setShowsSecondaryOnlyButton:]";
        v11 = 2048;
        v12 = splitViewController;
        v13 = 1024;
        v14 = buttonCopy;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s svc = %p; showsSecondaryOnlyButton = %d", buf, 0x1Cu);
      }
    }

    self->_showsSecondaryOnlyButton = buttonCopy;
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }
}

- (void)setDisplayModeButtonVisibility:(int64_t)visibility
{
  v5 = visibility == 1;
  v6 = visibility == 4 || visibility == 1;
  v7 = !v6;
  v8 = 0x10000000;
  if (v7)
  {
    v8 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  if (visibility <= 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 + 1;
  }

  displayModeButtonVisibility = [(_UISplitViewControllerAdaptiveImpl *)self displayModeButtonVisibility];
  v11 = visibility == 3 || v5;
  v7 = v11 == 0;
  v12 = 0x20000000;
  if (v7)
  {
    v12 = 0;
  }

  self->_implFlags = (v9 | v12 | *&self->_implFlags & 0xFFFFFFFFCFFFFFFELL);
  if (displayModeButtonVisibility != visibility)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setDisplayModeButtonVisibility____s_category);
    if (*CategoryCachedImpl)
    {
      v14 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v17 = 136315650;
        v18 = "[_UISplitViewControllerAdaptiveImpl setDisplayModeButtonVisibility:]";
        v19 = 2048;
        v20 = splitViewController;
        v21 = 2048;
        visibilityCopy = visibility;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%s svc = %p; displayModeButtonVisibility = %ld", &v17, 0x20u);
      }
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }
}

- (void)setPresentsWithGesture:(BOOL)gesture
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_presentsWithGesture != gesture)
  {
    gestureCopy = gesture;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPresentsWithGesture____s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        *buf = 136315650;
        v10 = "[_UISplitViewControllerAdaptiveImpl setPresentsWithGesture:]";
        v11 = 2048;
        v12 = splitViewController;
        v13 = 1024;
        v14 = gestureCopy;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s svc = %p; presentsWithGesture = %d", buf, 0x1Cu);
      }
    }

    self->_presentsWithGesture = gestureCopy;
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }
}

- (void)setPrimaryEdge:(int64_t)edge
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_primaryEdge != edge)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPrimaryEdge____s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        *buf = 136315650;
        v10 = "[_UISplitViewControllerAdaptiveImpl setPrimaryEdge:]";
        v11 = 2048;
        v12 = splitViewController;
        v13 = 2048;
        edgeCopy = edge;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s svc = %p; primaryEdge = %ld", buf, 0x20u);
      }
    }

    self->_primaryEdge = edge;
    [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsPreferredEdge:edge];
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateSplitViewControllerPreferences];
  }
}

- (uint64_t)_updatePreferredColumnsPreferredEdge:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = &OBJC_IVAR____UITileLayer_maskPath;
    if (*(result + 456) == a2)
    {
      return 0;
    }

    else
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_updatePreferredColumnsPreferredEdge____s_category);
      if (*CategoryCachedImpl)
      {
        v6 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = v6;
          splitViewController = [v3 splitViewController];
          v9 = 136315650;
          v10 = "[_UISplitViewControllerAdaptiveImpl _updatePreferredColumnsPreferredEdge:]";
          v11 = 2048;
          v12 = splitViewController;
          v13 = 2048;
          v14 = a2;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s svc = %p; preferredEdge = %ld", &v9, 0x20u);

          v4 = &OBJC_IVAR____UITileLayer_maskPath;
        }
      }

      *&v3[v4[28] + 32] = a2;
      return 1;
    }
  }

  return result;
}

- (int64_t)primaryBackgroundStyle
{
  v2 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:0];
  if (v2)
  {
    v3 = v2[10];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPrimaryBackgroundStyle:(int64_t)style
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:0];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 80);
  }

  else
  {
    v7 = 0;
  }

  if (v7 != style)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPrimaryBackgroundStyle____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setPrimaryBackgroundStyle:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2048;
        styleCopy = style;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; primaryBackgroundStyle = %ld", &v12, 0x20u);
      }
    }

    if (v6)
    {
      v6[10] = style;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }
}

- (void)_setVisibleToggleButtonRequiresPresentsWithGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  v19 = *MEMORY[0x1E69E9840];
  displayModeButtonVisibility = [(_UISplitViewControllerAdaptiveImpl *)self displayModeButtonVisibility];
  if ((*&self->_implFlags & 1) == gestureCopy)
  {
    v6 = displayModeButtonVisibility;
    self->_implFlags = (*&self->_implFlags & 0xFFFFFFFFFFFFFFFELL | !gestureCopy);
    displayModeButtonVisibility2 = [(_UISplitViewControllerAdaptiveImpl *)self displayModeButtonVisibility];
    if (v6 != displayModeButtonVisibility2)
    {
      v8 = displayModeButtonVisibility2;
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_setVisibleToggleButtonRequiresPresentsWithGesture____s_category);
      if (*CategoryCachedImpl)
      {
        v10 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = v10;
          splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
          v13 = 136315650;
          v14 = "[_UISplitViewControllerAdaptiveImpl _setVisibleToggleButtonRequiresPresentsWithGesture:]";
          v15 = 2048;
          v16 = splitViewController;
          v17 = 2048;
          v18 = v8;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s svc = %p; displayModeButtonVisibility = %ld", &v13, 0x20u);
        }
      }

      [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    }
  }
}

- (void)_setForceDisplayModeBarButtonHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v21 = *MEMORY[0x1E69E9840];
  displayModeButtonVisibility = [(_UISplitViewControllerAdaptiveImpl *)self displayModeButtonVisibility];
  implFlags = self->_implFlags;
  if (((*&implFlags & 0x10000000) == 0) == hiddenCopy || ((((*&implFlags & 0x20000000) == 0) ^ hiddenCopy) & 1) == 0)
  {
    v7 = *&implFlags & 0xFFFFFFFFCFFFFFFFLL;
    v8 = 805306368;
    if (!hiddenCopy)
    {
      v8 = 0;
    }

    self->_implFlags = (v7 | v8);
    displayModeButtonVisibility2 = [(_UISplitViewControllerAdaptiveImpl *)self displayModeButtonVisibility];
    if (displayModeButtonVisibility != displayModeButtonVisibility2)
    {
      v10 = displayModeButtonVisibility2;
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_setForceDisplayModeBarButtonHidden____s_category);
      if (*CategoryCachedImpl)
      {
        v12 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = v12;
          splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
          v15 = 136315650;
          v16 = "[_UISplitViewControllerAdaptiveImpl _setForceDisplayModeBarButtonHidden:]";
          v17 = 2048;
          v18 = splitViewController;
          v19 = 2048;
          v20 = v10;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%s svc = %p; displayModeButtonVisibility = %ld", &v15, 0x20u);
        }
      }

      [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
    }
  }
}

- (BOOL)_showsSeparators
{
  visualStyle = [(_UISplitViewControllerAdaptiveImpl *)self visualStyle];
  showsSeparators = [visualStyle showsSeparators];

  return showsSeparators;
}

- (void)_setShowsSeparators:(BOOL)separators
{
  separatorsCopy = separators;
  v18 = *MEMORY[0x1E69E9840];
  visualStyle = [(_UISplitViewControllerAdaptiveImpl *)self visualStyle];
  showsSeparators = [visualStyle showsSeparators];

  if (showsSeparators != separatorsCopy)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_setShowsSeparators____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        v12 = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl _setShowsSeparators:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 1024;
        v17 = separatorsCopy;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p; showsSeparators = %d", &v12, 0x1Cu);
      }
    }

    visualStyle2 = [(_UISplitViewControllerAdaptiveImpl *)self visualStyle];
    [visualStyle2 setShowsSeparators:separatorsCopy];

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }
}

- (void)_setUsesExtraWidePrimaryColumn:(BOOL)column
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_usesExtraWidePrimaryColumn != column)
  {
    columnCopy = column;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_setUsesExtraWidePrimaryColumn____s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        *buf = 136315650;
        v10 = "[_UISplitViewControllerAdaptiveImpl _setUsesExtraWidePrimaryColumn:]";
        v11 = 2048;
        v12 = splitViewController;
        v13 = 1024;
        v14 = columnCopy;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s svc = %p; usesExtraWidePrimaryColumn = %d", buf, 0x1Cu);
      }
    }

    self->_usesExtraWidePrimaryColumn = columnCopy;
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }
}

- (double)primaryColumnWidth
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  [layout columnFrameForSplitViewControllerColumn:0];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetWidth(*&v11);
}

- (double)supplementaryColumnWidth
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  [layout columnFrameForSplitViewControllerColumn:1];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetWidth(*&v11);
}

- (int64_t)splitBehavior
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  splitBehavior = [layout splitBehavior];

  return splitBehavior;
}

- (double)_primaryDividerPosition
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  [layout separatorFrameForSplitViewControllerColumn:0];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetMinX(*&v11);
}

- (double)_supplementaryDividerPosition
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  [layout separatorFrameForSplitViewControllerColumn:1];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetMinX(*&v11);
}

- (double)_inspectorDividerPosition
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  [layout separatorFrameForSplitViewControllerColumn:4];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetMinX(*&v11);
}

- (id)displayModeButtonItem
{
  v2 = objc_alloc_init(UIBarButtonItem);

  return v2;
}

- (BOOL)canTileSidebarColumn:(int64_t)column
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  LOBYTE(column) = [layout canShowSplitViewControllerColumn:column withSplitViewControllerColumn:2];

  return column;
}

- (BOOL)isShowingColumn:(int64_t)column
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  v5 = [layout columnVisibilityForSplitViewControllerColumn:column];

  return _UISplitViewControllerAdaptiveColumnVisibilityIsVisible(v5);
}

- (id)viewControllerForColumn:(int64_t)column
{
  v3 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:column];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_topLevelViewControllerForColumn:(int64_t)column
{
  v3 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:column];
  viewController = [(_UISplitViewControllerAdaptiveColumn *)v3 viewController];

  return viewController;
}

- (int64_t)_columnForViewController:(id)controller
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  v6 = [(_UISplitViewControllerAdaptiveImpl *)self _columnForViewController:controller layout:layout];

  return v6;
}

- (uint64_t)_columnForViewController:(void *)controller layout:
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if (a2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    objectEnumerator = [*(self + 320) objectEnumerator];
    v6 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v6)
    {
      v9 = 999;
      goto LABEL_25;
    }

    v7 = v6;
    v8 = *v19;
    v9 = 999;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if (v11)
        {
          v12 = *(v11 + 24);
          v13 = v12;
          if (v12 == a2)
          {

            goto LABEL_16;
          }

          v14 = *(v11 + 88);
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        v15 = v14;

        if (v15 != a2)
        {
          goto LABEL_17;
        }

        if (!v11)
        {
          if ([controller columnModeForSplitViewControllerColumn:0])
          {
            v9 = 0;
            goto LABEL_25;
          }

          goto LABEL_17;
        }

LABEL_16:
        if ([controller columnModeForSplitViewControllerColumn:*(v11 + 144)])
        {
          v9 = *(v11 + 144);
          goto LABEL_25;
        }

LABEL_17:
        ++v10;
      }

      while (v7 != v10);
      v16 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
      v7 = v16;
      if (!v16)
      {
LABEL_25:

        return v9;
      }
    }
  }

  return 999;
}

- (void)setView:(id)view
{
  v19.receiver = self;
  v19.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v19 setView:view];
  if (self)
  {
    splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
    view = [splitViewController view];

    v6 = self->_containerView;
    if (!v6)
    {
      v7 = [_UISplitViewControllerAdaptiveColumnContainerView alloc];
      [view bounds];
      v6 = [(UIView *)v7 initWithFrame:?];
      [(UIView *)v6 setAutoresizingMask:18];
      objc_storeStrong(&self->_containerView, v6);
    }

    v8 = self->_transitionView;
    if (!v8)
    {
      v9 = [_UISplitViewControllerAdaptiveTransitionView alloc];
      [view bounds];
      v8 = [(_UISplitViewControllerAdaptiveTransitionView *)v9 initWithFrame:?];
      [(UIView *)v8 setAutoresizingMask:18];
      objc_storeStrong(&self->_transitionView, v8);
    }

    [view bounds];
    [(UIView *)v6 setFrame:?];
    [view bounds];
    [(UIView *)v8 setFrame:?];
    [view addSubview:v6];
    [view addSubview:v8];
    [view bounds];
    self->_previousContainerSize.width = v10;
    self->_previousContainerSize.height = v11;
    traitCollection = [(_UISplitViewControllerAdaptiveImpl *)self traitCollection];
    [traitCollection userInterfaceIdiom];

    v13 = self->_columnResizeDirectPanGestureRecognizer;
    if (!v13)
    {
      v13 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__handleColumnResizePanGestureRecognizer_];
      [(UIGestureRecognizer *)v13 setAllowedTouchTypes:&unk_1EFE2DB28];
      [(UIGestureRecognizer *)v13 setDelaysTouchesBegan:1];
      [(UIPanGestureRecognizer *)v13 setDelegate:self];
      [(UIPanGestureRecognizer *)v13 setMaximumNumberOfTouches:1];
      [(UIGestureRecognizer *)v13 setName:@"com.apple.UIKit.UISplitViewController.ColumnResizeDirectPanGestureRecognizer"];
      objc_storeStrong(&self->_columnResizeDirectPanGestureRecognizer, v13);
    }

    v14 = self->_columnResizeIndirectPanGestureRecognizer;
    if (!v14)
    {
      v14 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__handleColumnResizePanGestureRecognizer_];
      [(UIGestureRecognizer *)v14 setAllowedTouchTypes:&unk_1EFE2DB40];
      [(UIGestureRecognizer *)v14 setDelaysTouchesBegan:1];
      [(UIPanGestureRecognizer *)v14 setDelegate:self];
      [(UIPanGestureRecognizer *)v14 _setHysteresis:1.0];
      [(UIPanGestureRecognizer *)v14 setMaximumNumberOfTouches:1];
      [(UIGestureRecognizer *)v14 setName:@"com.apple.UIKit.UISplitViewController.ColumnResizeIndirectPanGestureRecognizer"];
      objc_storeStrong(&self->_columnResizeIndirectPanGestureRecognizer, v14);
    }

    v15 = self->_columnResizeTapGestureRecognizer;
    if (!v15)
    {
      v15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__handleResizeColumnToPreferredSizeTapGestureRecognizer_];
      [(UIGestureRecognizer *)v15 setAllowedTouchTypes:&unk_1EFE2DB58];
      [(UIGestureRecognizer *)v15 setDelaysTouchesBegan:1];
      [(UIGestureRecognizer *)v15 setDelegate:self];
      [(UIGestureRecognizer *)v15 setName:@"com.apple.UIKit.UISplitViewController.ColumnResizeTapGestureRecognizer"];
      [(UITapGestureRecognizer *)v15 setNumberOfTapsRequired:2];
      objc_storeStrong(&self->_columnResizeTapGestureRecognizer, v15);
    }

    v16 = self->_leftScreenEdgePanGestureRecognizer;
    if (!v16)
    {
      v16 = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:sel__handleScreenEdgePanGestureRecognizer_];
      [(UIGestureRecognizer *)v16 setAllowedTouchTypes:&unk_1EFE2DB70];
      [(UIPanGestureRecognizer *)v16 setDelegate:self];
      [(UIScreenEdgePanGestureRecognizer *)v16 setEdges:2];
      [(UIPanGestureRecognizer *)v16 setMaximumNumberOfTouches:1];
      objc_storeStrong(&self->_leftScreenEdgePanGestureRecognizer, v16);
    }

    v17 = self->_rightScreenEdgePanGestureRecognizer;
    if (!v17)
    {
      v17 = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:sel__handleScreenEdgePanGestureRecognizer_];
      [(UIGestureRecognizer *)v17 setAllowedTouchTypes:&unk_1EFE2DB88];
      [(UIPanGestureRecognizer *)v17 setDelegate:self];
      [(UIScreenEdgePanGestureRecognizer *)v17 setEdges:8];
      [(UIPanGestureRecognizer *)v17 setMaximumNumberOfTouches:1];
      objc_storeStrong(&self->_rightScreenEdgePanGestureRecognizer, v17);
    }

    v18 = self->_containerView;
    [(UIView *)v18 addGestureRecognizer:v13];
    [(UIView *)v18 addGestureRecognizer:v14];
    [(UIView *)v18 addGestureRecognizer:v15];
    [(UIView *)v18 addGestureRecognizer:v16];
    [(UIView *)v18 addGestureRecognizer:v17];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v3 viewWillDisappear:disappear];
}

- (void)_invalidateLayoutForSizeChange
{
  v19 = *MEMORY[0x1E69E9840];
  if (self)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_invalidateLayoutForSizeChange___s_category);
    if (*CategoryCachedImpl)
    {
      v12 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        splitViewController = [self splitViewController];
        v15 = 136315394;
        v16 = "[_UISplitViewControllerAdaptiveImpl _invalidateLayoutForSizeChange]";
        v17 = 2048;
        v18 = splitViewController;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%s svc = %p", &v15, 0x16u);
      }
    }

    scheduledLayout = [*(self + 344) scheduledLayout];
    v4 = scheduledLayout;
    if (scheduledLayout)
    {
      layout = scheduledLayout;
    }

    else
    {
      layout = [(_UISplitViewControllerAdaptiveImpl *)self layout];
    }

    v6 = layout;

    v7 = *(self + 312);
    if ((v7 & 0x80000000) != 0)
    {
      *(self + 312) = v7 & 0xFFFFFFFF7FFFFFFFLL;
      selfCopy2 = self;
      v11 = 1;
    }

    else
    {
      splitViewController2 = [self splitViewController];
      if (![splitViewController2 _hasAppeared])
      {

        goto LABEL_13;
      }

      splitBehavior = [v6 splitBehavior];

      if (splitBehavior != 1)
      {
LABEL_13:
        [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];

        return;
      }

      selfCopy2 = self;
      v11 = 0;
    }

    [(_UISplitViewControllerAdaptiveImpl *)selfCopy2 _updatePreferredColumnsEnforcingColumnPreferences:v11];
    goto LABEL_13;
  }
}

- (void)removeChildViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v4 removeChildViewController:controller];
  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
}

- (void)_preparePresentationControllerForPresenting:(id)presenting
{
  v29 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v22 _preparePresentationControllerForPresenting:?];
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v8 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v10 = layout;

  presentedViewController = [presenting presentedViewController];
  v12 = [(_UISplitViewControllerAdaptiveImpl *)self _columnForViewController:presentedViewController layout:v10];

  if (v12 != 999)
  {
    if ([v10 columnModeForSplitViewControllerColumn:v12] != 3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = _UISplitViewControllerColumnDescription(v12);
      lowercaseString = [v19 lowercaseString];
      presentedViewController2 = [presenting presentedViewController];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:1130 description:{@"Unexpected presentation of the %@ column's view controller. Split view controller %@; view controller: %@", lowercaseString, splitViewController, presentedViewController2}];
    }

    if ([(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsPresentedSplitViewControllerColumn:v12])
    {
      v13 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &_preparePresentationControllerForPresenting____s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = _UISplitViewControllerColumnDescription(v12);
        lowercaseString2 = [v15 lowercaseString];
        presentedViewController3 = [presenting presentedViewController];
        *buf = 138412802;
        v24 = lowercaseString2;
        v25 = 2112;
        v26 = splitViewController;
        v27 = 2112;
        v28 = presentedViewController3;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Unexpected presentation of the %@ column's view controller. To present a column's view controller, use [UISplitViewController showColumn:]. Split view controller: %@; view controller: %@", buf, 0x20u);
      }
    }

    [presenting _setTransitionDelegate:self];
  }
}

- (uint64_t)_updatePreferredColumnsPresentedSplitViewControllerColumn:(uint64_t)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (a2 == 3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__updatePreferredColumnsPresentedSplitViewControllerColumn_ object:v3 file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3505 description:{@"Invalid parameter not satisfying: %@", @"presentedSplitViewControllerColumn != UISplitViewControllerColumnCompact"}];
    }

    v4 = &OBJC_IVAR____UITileLayer_maskPath;
    if (v3[56] == a2)
    {
      return 0;
    }

    else
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_updatePreferredColumnsPresentedSplitViewControllerColumn____s_category);
      if (*CategoryCachedImpl)
      {
        v7 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = v7;
          splitViewController = [v3 splitViewController];
          *buf = 136315650;
          v11 = "[_UISplitViewControllerAdaptiveImpl _updatePreferredColumnsPresentedSplitViewControllerColumn:]";
          v12 = 2048;
          v13 = splitViewController;
          v14 = 2048;
          v15 = a2;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%s svc = %p; presentedSplitViewControllerColumn = %ld", buf, 0x20u);

          v4 = &OBJC_IVAR____UITileLayer_maskPath;
        }
      }

      *(v3 + v4[28] + 24) = a2;
      return 1;
    }
  }

  return result;
}

- (void)_viewControllerChildViewControllersDidChange:(id)change
{
  v28 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v26 _viewControllerChildViewControllersDidChange:?];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  objectEnumerator = [(NSMapTable *)self->_columns objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        if (v10)
        {
          v11 = *(v10 + 24);
          if (v11 != change)
          {
            goto LABEL_8;
          }

          v12 = *(v10 + 24);
        }

        else
        {
          v11 = 0;
          v12 = 0;
          if (change)
          {
LABEL_8:

            goto LABEL_11;
          }
        }

        v13 = v12;
        _isNavigationController = [v13 _isNavigationController];

        if ((_isNavigationController & 1) == 0)
        {
          if (v10)
          {
            v18 = *(v10 + 24);
            v20 = *(v10 + 144);
          }

          else
          {
            v18 = 0;
            v20 = 0;
          }

          [(_UISplitViewControllerAdaptiveImpl *)self setViewController:v18 forColumn:v20];
          goto LABEL_20;
        }

LABEL_11:
        if (v10)
        {
          v15 = *(v10 + 88);
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if (v16 == change)
        {
          if (v10)
          {
            v17 = *(v10 + 88);
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          bottomViewController = [v18 bottomViewController];
          [(_UIHomeAffordanceObservationRecord *)v10 setLegacyViewServiceSessionIdentifier:bottomViewController];

LABEL_20:
        }

        ++v9;
      }

      while (v7 != v9);
      v21 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v27 count:16];
      v7 = v21;
    }

    while (v21);
  }
}

- (void)_didChangeChildModalViewControllers
{
  v2.receiver = self;
  v2.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v2 _didChangeChildModalViewControllers];
}

- (void)_tabBarControllerDidChangeSelection:(id)selection
{
  v4.receiver = self;
  v4.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v4 _tabBarControllerDidChangeSelection:selection];
  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
}

- (void)_navigationControllerDidUpdateTopViewController:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v14 _navigationControllerDidUpdateTopViewController:?];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_navigationControllerDidUpdateTopViewController____s_category);
  if (*CategoryCachedImpl)
  {
    v11 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      *buf = 136315394;
      v16 = "[_UISplitViewControllerAdaptiveImpl _navigationControllerDidUpdateTopViewController:]";
      v17 = 2048;
      v18 = splitViewController;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s svc = %p", buf, 0x16u);
    }
  }

  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v7 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v9 = layout;

  if ([v9 isCollapsed])
  {
    if ((*(&self->_implFlags + 4) & 8) == 0)
    {
      [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsCollapsedSplitViewControllerColumn:?];
    }

    transitionCoordinator = [controller transitionCoordinator];
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutPerformingTransitionAlongsideTransitionCoordinator:transitionCoordinator];
  }

  else
  {
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }
}

- (uint64_t)_updatePreferredColumnsCollapsedSplitViewControllerColumn:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = &OBJC_IVAR____UITileLayer_maskPath;
    if (*(result + 440) == a2)
    {
      return 0;
    }

    else
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_updatePreferredColumnsCollapsedSplitViewControllerColumn____s_category);
      if (*CategoryCachedImpl)
      {
        v6 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = v6;
          splitViewController = [v3 splitViewController];
          v9 = 136315650;
          v10 = "[_UISplitViewControllerAdaptiveImpl _updatePreferredColumnsCollapsedSplitViewControllerColumn:]";
          v11 = 2048;
          v12 = splitViewController;
          v13 = 2048;
          v14 = a2;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s svc = %p; collapsedSplitViewControllerColumn = %ld", &v9, 0x20u);

          v4 = &OBJC_IVAR____UITileLayer_maskPath;
        }
      }

      *&v3[v4[28] + 16] = a2;
      return 1;
    }
  }

  return result;
}

- (void)_invalidateLayoutPerformingTransitionAlongsideTransitionCoordinator:(uint64_t)coordinator
{
  v14 = *MEMORY[0x1E69E9840];
  if (coordinator)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_invalidateLayoutPerformingTransitionAlongsideTransitionCoordinator____s_category);
    if (*CategoryCachedImpl)
    {
      v7 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        splitViewController = [coordinator splitViewController];
        v10 = 136315394;
        v11 = "[_UISplitViewControllerAdaptiveImpl _invalidateLayoutPerformingTransitionAlongsideTransitionCoordinator:]";
        v12 = 2048;
        v13 = splitViewController;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%s svc = %p", &v10, 0x16u);
      }
    }

    [(_UISplitViewControllerAdaptiveImpl *)coordinator _invalidateLayout];
    if (a2 && (*(coordinator + 316) & 8) == 0)
    {
      splitViewController2 = [coordinator splitViewController];
      isViewLoaded = [splitViewController2 isViewLoaded];

      if (isViewLoaded)
      {
        [(_UISplitViewControllerAdaptiveImpl *)coordinator _prepareLayout];
        [*(coordinator + 344) performTransitionAlongsideTransitionCoordinator:a2];
        *(coordinator + 352) = 0;
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = _UISplitViewControllerAdaptiveImpl;
  [_UISplitViewControllerBaseImpl viewWillTransitionToSize:sel_viewWillTransitionToSize_withTransitionCoordinator_ withTransitionCoordinator:?];
  [(_UISplitViewControllerAdaptiveImpl *)self containerSize];
  if (v9 != width || v8 != height)
  {
    self->_boundsOverride.origin = *MEMORY[0x1E695EFF8];
    self->_boundsOverride.size.width = width;
    self->_boundsOverride.size.height = height;
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutForSizeChange];
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutPerformingTransitionAlongsideTransitionCoordinator:coordinator];
  }
}

- (id)navigationControllerForColumn:(int64_t)column
{
  v3 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:column];
  navigationController = [(_UISplitViewControllerAdaptiveColumn *)v3 navigationController];

  return navigationController;
}

- (void)_updateForReselectionInContainingTabBarController
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__210;
  v18 = __Block_byref_object_dispose__210;
  v19 = 0;
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87___UISplitViewControllerAdaptiveImpl__updateForReselectionInContainingTabBarController__block_invoke;
  v10[3] = &unk_1E7125CB0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  v13 = &v14;
  [v7 enumerateDisplayInOrder:4 withBlock:v10];
  v8 = v15[5];
  if (v8)
  {
    v9 = [v8 popToRootViewControllerAnimated:1];
  }

  _Block_object_dispose(&v14, 8);
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  viewIfLoaded = [splitViewController viewIfLoaded];

  if (viewIfLoaded)
  {
    if (([container __isKindOfUIViewController] & 1) != 0 && (v10 = -[_UISplitViewControllerAdaptiveImpl _columnForViewController:](self, "_columnForViewController:", container), v10 != 999))
    {
      v15 = v10;
      p_boundsOverride = &self->_boundsOverride;
      origin = self->_boundsOverride.origin;
      size = self->_boundsOverride.size;
      self->_boundsOverride.origin = *MEMORY[0x1E695EFF8];
      self->_boundsOverride.size.width = width;
      self->_boundsOverride.size.height = height;
      _solveLayout = [(_UISplitViewControllerAdaptiveImpl *)self _solveLayout];
      p_boundsOverride->origin = origin;
      p_boundsOverride->size = size;
      [_solveLayout columnFrameForSplitViewControllerColumn:v15];
      v12 = v18;
      v14 = v19;
    }

    else
    {
      [viewIfLoaded bounds];
      v12 = v11;
      v14 = v13;
    }
  }

  else
  {
    v12 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
  }

  v20 = v12;
  v21 = v14;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGRect)_frameForChildContentContainer:(id)container
{
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  viewIfLoaded = [splitViewController viewIfLoaded];

  if (viewIfLoaded)
  {
    if (([container __isKindOfUIViewController] & 1) != 0 && -[_UISplitViewControllerAdaptiveImpl _columnForViewController:](self, "_columnForViewController:", container) == 999)
    {
      layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
      [layout columnFrameForSplitViewControllerColumn:999];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
    }

    else
    {
      [viewIfLoaded bounds];
      v9 = v16;
      v11 = v17;
      v13 = v18;
      v15 = v19;
    }
  }

  else
  {
    v9 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  v7 = [(_UISplitViewControllerAdaptiveImpl *)self _columnForViewController:?];
  if (v7 == 999)
  {
    v22.receiver = self;
    v22.super_class = _UISplitViewControllerAdaptiveImpl;
    [(_UISplitViewControllerBaseImpl *)&v22 _edgeInsetsForChildViewController:controller insetsAreAbsolute:absolute];
  }

  else
  {
    v12 = v7;
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
    [layout contentInsetsForSplitViewControllerColumn:v12];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    *absolute = 1;
    v8 = v15;
    v9 = v17;
    v10 = v19;
    v11 = v21;
  }

  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)_marginInfoForChild:(id)child leftMargin:(double *)margin rightMargin:(double *)rightMargin
{
  [(_UISplitViewControllerAdaptiveImpl *)self _contentMarginForChildViewController:child];
  *margin = v7;
  *rightMargin = v7;
}

- (double)_contentMarginForChildViewController:(id)controller
{
  viewIfLoaded = [controller viewIfLoaded];
  [UIViewController _horizontalContentMarginForView:viewIfLoaded];
  v5 = v4;

  return v5;
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  v5 = +[UITraitCollection _emptyTraitCollection];
  if (([environment __isKindOfUIViewController] & 1) == 0)
  {
    v9 = v5;
    goto LABEL_14;
  }

  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v7 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v10 = layout;

  v11 = [(_UISplitViewControllerAdaptiveImpl *)self _columnForViewController:environment layout:v10];
  if (v11 != 999)
  {
    v13 = v11;
    isCollapsed = [v10 isCollapsed];
    style = [(_UISplitViewControllerAdaptiveImpl *)self style];
    v16 = 1;
    if (isCollapsed)
    {
      v16 = 2;
    }

    if ((isCollapsed & 1) == 0)
    {
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v17 = 4;
          goto LABEL_12;
        }

        if (v13 == 4)
        {
          v17 = 5;
          goto LABEL_12;
        }
      }

      else
      {
        if (!v13)
        {
          v17 = 1;
          if (style == 2)
          {
            v17 = 2;
          }

          goto LABEL_12;
        }

        if (v13 == 1)
        {
          v17 = 3;
          goto LABEL_12;
        }
      }
    }

    v17 = 0;
LABEL_12:
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74___UISplitViewControllerAdaptiveImpl__traitCollectionForChildEnvironment___block_invoke;
    v20[3] = &unk_1E7125CD8;
    v21 = isCollapsed;
    v20[4] = self;
    v20[5] = v16;
    v20[6] = v17;
    v20[7] = v13;
    v18 = [v5 traitCollectionByModifyingTraits:v20];

    v12 = v18;
    goto LABEL_13;
  }

  v12 = v5;
LABEL_13:
  v9 = v12;

LABEL_14:

  return v9;
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v12.receiver = self;
  v12.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v12 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
  horizontalSizeClassOverride = self->_horizontalSizeClassOverride;
  if (!horizontalSizeClassOverride)
  {
    traitCollection = [(_UISplitViewControllerAdaptiveImpl *)self traitCollection];
    horizontalSizeClassOverride = [traitCollection horizontalSizeClass];
  }

  horizontalSizeClass = [collection horizontalSizeClass];
  if (horizontalSizeClassOverride != horizontalSizeClass)
  {
    self->_horizontalSizeClassOverride = horizontalSizeClass;
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }

  v9 = objc_opt_class();
  [collection horizontalSizeClass];
  v10 = _UISplitViewControllerAdaptiveLayoutClassCollapsed();
  if (v9 && ([v9 isEqual:v10] & 1) == 0)
  {
    v11 = [(UIView *)self->_containerView snapshotViewAfterScreenUpdates:0];
    if (v11)
    {
      [(_UISplitViewControllerAdaptiveLayoutTransitionController *)self->_transitionController scheduleSnapshot:v11];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v11 traitCollectionDidChange:?];
  traitCollection = [(_UISplitViewControllerAdaptiveImpl *)self traitCollection];
  horizontalSizeClass = [change horizontalSizeClass];
  if (horizontalSizeClass != [traitCollection horizontalSizeClass] || (objc_msgSend(change, "displayScale"), v8 = v7, objc_msgSend(traitCollection, "displayScale"), v8 != v9) || (v10 = objc_msgSend(change, "layoutDirection"), v10 != objc_msgSend(traitCollection, "layoutDirection")))
  {
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }
}

- (void)_triggerSidebarKeyCommandAction:(id)action
{
  if ((*(&self->_implFlags + 4) & 0x40) != 0)
  {
    [(_UISplitViewControllerAdaptiveImpl *)self _handlePrimaryEdgeBarButtonItem:action];
  }
}

- (void)_triggerInspectorKeyCommandAction:(id)action
{
  implFlags = self->_implFlags;
  if ((*&implFlags & 0x10000000000) != 0)
  {
    [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa _toggleSplitViewControllerColumnVisibility:?];
  }

  else if ((*&implFlags & 0x8000000000) != 0)
  {
    [(_UISplitViewControllerAdaptiveImpl *)self _handleSecondaryEdgeBarButtonItem:action];
  }
}

- (void)_triggerToolbarCustomizationCommandAction:(id)action
{
  v3 = [(_UISplitViewControllerAdaptiveImpl *)self _navigationControllerForTriggeringToolbarCustomizationWithSender:action];
  [v3 _beginCustomizingBar];
}

- (BOOL)_allowsTriggeringToolbarCustomizationCommandActionWithSender:(id)sender
{
  v3 = [(_UISplitViewControllerAdaptiveImpl *)self _navigationControllerForTriggeringToolbarCustomizationWithSender:sender];
  v4 = v3 != 0;

  return v4;
}

- (id)_navigationControllerForTriggeringToolbarCustomizationWithSender:(id)sender
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__210;
  v18 = __Block_byref_object_dispose__210;
  v19 = 0;
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __103___UISplitViewControllerAdaptiveImpl__navigationControllerForTriggeringToolbarCustomizationWithSender___block_invoke;
  v9[3] = &unk_1E7125F30;
  v6 = layout;
  v10 = v6;
  selfCopy = self;
  senderCopy = sender;
  v13 = &v14;
  [v6 enumerateDisplayInOrder:4 withBlock:v9];
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v7;
}

- (void)_validateTriggerSidebarKeyCommand:(id)command
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self _accessibilityLabelForTogglingSidebarWithLayout:layout];
  [command setTitle:v5];

  v6 = -[_UISplitViewControllerAdaptiveImpl _systemImageForTogglingEdge:](self, [layout edgeForSplitViewControllerColumn:0]);
  [command setImage:v6];
}

- (id)_accessibilityLabelForTogglingSidebarWithLayout:(void *)layout
{
  if (layout)
  {
    if ([a2 columnVisibilityForSplitViewControllerColumn:0] == 2)
    {
      v3 = @"Hide Sidebar";
    }

    else
    {
      v3 = @"Show Sidebar";
    }

    layout = _UINSLocalizedStringWithDefaultValue(v3, v3);
    v2 = vars8;
  }

  return layout;
}

- (id)_systemImageForTogglingEdge:(void *)edge
{
  if (edge)
  {
    if (a2)
    {
      v3 = @"sidebar.trailing";
    }

    else
    {
      v3 = @"sidebar.leading";
    }

    edge = [UIImage systemImageNamed:v3];
    v2 = vars8;
  }

  return edge;
}

- (void)_validateTriggerInspectorKeyCommand:(id)command
{
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)self _accessibilityLabelForTogglingInspectorWithLayout:layout];
  [command setTitle:v5];

  v6 = -[_UISplitViewControllerAdaptiveImpl _systemImageForTogglingEdge:](self, [layout edgeForSplitViewControllerColumn:4]);
  [command setImage:v6];
}

- (id)_accessibilityLabelForTogglingInspectorWithLayout:(void *)layout
{
  if (layout)
  {
    if ([a2 columnVisibilityForSplitViewControllerColumn:4] == 2)
    {
      v3 = @"Hide Inspector";
    }

    else
    {
      v3 = @"Show Inspector";
    }

    layout = _UINSLocalizedStringWithDefaultValue(v3, v3);
    v2 = vars8;
  }

  return layout;
}

- (void)_initWithCoder:(id)coder
{
  if ([coder containsValueForKey:@"UISplitViewControllerPreferredDisplayMode"])
  {
    -[_UISplitViewControllerAdaptiveImpl setPreferredDisplayMode:](self, "setPreferredDisplayMode:", [coder decodeIntegerForKey:@"UISplitViewControllerPreferredDisplayMode"]);
  }

  if ([coder containsValueForKey:@"UISplitViewControllerPreferredSplitBehavior"])
  {
    -[_UISplitViewControllerAdaptiveImpl setPreferredSplitBehavior:](self, "setPreferredSplitBehavior:", [coder decodeIntegerForKey:@"UISplitViewControllerPreferredSplitBehavior"]);
  }

  if ([coder containsValueForKey:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction"])
  {
    [coder decodeDoubleForKey:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction"];
    [(_UISplitViewControllerAdaptiveImpl *)self setPreferredPrimaryColumnWidthFraction:?];
  }

  if ([coder containsValueForKey:@"UISplitViewControllerPreferredPrimaryColumnWidth"])
  {
    [coder decodeDoubleForKey:@"UISplitViewControllerPreferredPrimaryColumnWidth"];
    [(_UISplitViewControllerAdaptiveImpl *)self setPreferredPrimaryColumnWidth:?];
  }

  if ([coder containsValueForKey:@"UISplitViewControllerMaximumPrimaryColumnWidth"])
  {
    [coder decodeDoubleForKey:@"UISplitViewControllerMaximumPrimaryColumnWidth"];
    [(_UISplitViewControllerAdaptiveImpl *)self setMaximumPrimaryColumnWidth:?];
  }

  if ([coder containsValueForKey:@"UISplitViewControllerMinimumPrimaryColumnWidth"])
  {
    [coder decodeDoubleForKey:@"UISplitViewControllerMinimumPrimaryColumnWidth"];
    [(_UISplitViewControllerAdaptiveImpl *)self setMinimumPrimaryColumnWidth:?];
  }

  if ([coder containsValueForKey:@"UISplitViewControllerPreferredSupplementaryColumnWidthFraction"])
  {
    [coder decodeDoubleForKey:@"UISplitViewControllerPreferredSupplementaryColumnWidthFraction"];
    [(_UISplitViewControllerAdaptiveImpl *)self setPreferredSupplementaryColumnWidthFraction:?];
  }

  if ([coder containsValueForKey:@"UISplitViewControllerPreferredSupplementaryColumnWidth"])
  {
    [coder decodeDoubleForKey:@"UISplitViewControllerPreferredSupplementaryColumnWidth"];
    [(_UISplitViewControllerAdaptiveImpl *)self setPreferredSupplementaryColumnWidth:?];
  }

  if ([coder containsValueForKey:@"UISplitViewControllerMaximumSupplementaryColumnWidth"])
  {
    [coder decodeDoubleForKey:@"UISplitViewControllerMaximumSupplementaryColumnWidth"];
    [(_UISplitViewControllerAdaptiveImpl *)self setMaximumSupplementaryColumnWidth:?];
  }

  if ([coder containsValueForKey:@"UISplitViewControllerMinimumSupplementaryColumnWidth"])
  {
    [coder decodeDoubleForKey:@"UISplitViewControllerMinimumSupplementaryColumnWidth"];
    [(_UISplitViewControllerAdaptiveImpl *)self setMinimumSupplementaryColumnWidth:?];
  }

  if ([coder containsValueForKey:@"UISplitViewControllerPrimaryEdge"])
  {
    -[_UISplitViewControllerAdaptiveImpl setPrimaryEdge:](self, "setPrimaryEdge:", [coder decodeIntegerForKey:@"UISplitViewControllerPrimaryEdge"]);
  }

  if ([coder containsValueForKey:@"UISplitViewControllerPresentsWithGesture"])
  {
    -[_UISplitViewControllerAdaptiveImpl setPresentsWithGesture:](self, "setPresentsWithGesture:", [coder decodeBoolForKey:@"UISplitViewControllerPresentsWithGesture"]);
  }

  if ([coder containsValueForKey:@"UISplitViewControllerShowsSecondaryOnlyButton"])
  {
    -[_UISplitViewControllerAdaptiveImpl setShowsSecondaryOnlyButton:](self, "setShowsSecondaryOnlyButton:", [coder decodeBoolForKey:@"UISplitViewControllerShowsSecondaryOnlyButton"]);
  }

  if ([coder containsValueForKey:@"UISplitViewControllerUsesExtraWidePrimaryColumn"])
  {
    -[_UISplitViewControllerAdaptiveImpl _setUsesExtraWidePrimaryColumn:](self, "_setUsesExtraWidePrimaryColumn:", [coder decodeBoolForKey:@"UISplitViewControllerUsesExtraWidePrimaryColumn"]);
  }

  if ([coder containsValueForKey:@"UISplitViewControllerPrimaryBackgroundStyle"])
  {
    -[_UISplitViewControllerAdaptiveImpl setPrimaryBackgroundStyle:](self, "setPrimaryBackgroundStyle:", [coder decodeIntegerForKey:@"UISplitViewControllerPrimaryBackgroundStyle"]);
  }

  if ([coder containsValueForKey:@"UISplitViewControllerStyle"])
  {
    -[_UISplitViewControllerAdaptiveImpl setStyle:](self, "setStyle:", [coder decodeIntegerForKey:@"UISplitViewControllerStyle"]);
  }

  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  childViewControllers = [splitViewController childViewControllers];
  [(_UISplitViewControllerAdaptiveImpl *)self setViewControllers:childViewControllers];

  if ([coder containsValueForKey:@"UISplitViewControllerCompactColumnVC"])
  {
    v7 = [coder decodeObjectForKey:@"UISplitViewControllerCompactColumnVC"];
    [(_UISplitViewControllerAdaptiveImpl *)self setViewController:v7 forColumn:3];
  }
}

- (void)encodeWithCoder:(id)coder
{
  if ([(_UISplitViewControllerAdaptiveImpl *)self preferredDisplayMode])
  {
    [coder encodeInteger:-[_UISplitViewControllerAdaptiveImpl preferredDisplayMode](self forKey:{"preferredDisplayMode"), @"UISplitViewControllerPreferredDisplayMode"}];
  }

  if ([(_UISplitViewControllerAdaptiveImpl *)self preferredSplitBehavior])
  {
    [coder encodeInteger:-[_UISplitViewControllerAdaptiveImpl preferredSplitBehavior](self forKey:{"preferredSplitBehavior"), @"UISplitViewControllerPreferredSplitBehavior"}];
  }

  [(_UISplitViewControllerAdaptiveImpl *)self preferredPrimaryColumnWidthFraction];
  if (v5 != -3.40282347e38)
  {
    [(_UISplitViewControllerAdaptiveImpl *)self preferredPrimaryColumnWidthFraction];
    [coder encodeDouble:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction" forKey:?];
  }

  [(_UISplitViewControllerAdaptiveImpl *)self preferredPrimaryColumnWidth];
  if (v6 != -3.40282347e38)
  {
    [(_UISplitViewControllerAdaptiveImpl *)self preferredPrimaryColumnWidth];
    [coder encodeDouble:@"UISplitViewControllerPreferredPrimaryColumnWidth" forKey:?];
  }

  [(_UISplitViewControllerAdaptiveImpl *)self maximumPrimaryColumnWidth];
  if (v7 != -3.40282347e38)
  {
    [(_UISplitViewControllerAdaptiveImpl *)self maximumPrimaryColumnWidth];
    [coder encodeDouble:@"UISplitViewControllerMaximumPrimaryColumnWidth" forKey:?];
  }

  [(_UISplitViewControllerAdaptiveImpl *)self minimumPrimaryColumnWidth];
  if (v8 != -3.40282347e38)
  {
    [(_UISplitViewControllerAdaptiveImpl *)self minimumPrimaryColumnWidth];
    [coder encodeDouble:@"UISplitViewControllerMinimumPrimaryColumnWidth" forKey:?];
  }

  [(_UISplitViewControllerAdaptiveImpl *)self preferredSupplementaryColumnWidthFraction];
  if (v9 != -3.40282347e38)
  {
    [(_UISplitViewControllerAdaptiveImpl *)self preferredSupplementaryColumnWidthFraction];
    [coder encodeDouble:@"UISplitViewControllerPreferredSupplementaryColumnWidthFraction" forKey:?];
  }

  [(_UISplitViewControllerAdaptiveImpl *)self preferredSupplementaryColumnWidth];
  if (v10 != -3.40282347e38)
  {
    [(_UISplitViewControllerAdaptiveImpl *)self preferredSupplementaryColumnWidth];
    [coder encodeDouble:@"UISplitViewControllerPreferredSupplementaryColumnWidth" forKey:?];
  }

  [(_UISplitViewControllerAdaptiveImpl *)self maximumSupplementaryColumnWidth];
  if (v11 != -3.40282347e38)
  {
    [(_UISplitViewControllerAdaptiveImpl *)self maximumSupplementaryColumnWidth];
    [coder encodeDouble:@"UISplitViewControllerMaximumSupplementaryColumnWidth" forKey:?];
  }

  [(_UISplitViewControllerAdaptiveImpl *)self minimumSupplementaryColumnWidth];
  if (v12 != -3.40282347e38)
  {
    [(_UISplitViewControllerAdaptiveImpl *)self minimumSupplementaryColumnWidth];
    [coder encodeDouble:@"UISplitViewControllerMinimumSupplementaryColumnWidth" forKey:?];
  }

  [coder encodeInteger:-[_UISplitViewControllerAdaptiveImpl primaryEdge](self forKey:{"primaryEdge"), @"UISplitViewControllerPrimaryEdge"}];
  [coder encodeBool:-[_UISplitViewControllerAdaptiveImpl presentsWithGesture](self forKey:{"presentsWithGesture"), @"UISplitViewControllerPresentsWithGesture"}];
  [coder encodeBool:-[_UISplitViewControllerAdaptiveImpl showsSecondaryOnlyButton](self forKey:{"showsSecondaryOnlyButton"), @"UISplitViewControllerShowsSecondaryOnlyButton"}];
  [coder encodeBool:-[_UISplitViewControllerAdaptiveImpl _usesExtraWidePrimaryColumn](self forKey:{"_usesExtraWidePrimaryColumn"), @"UISplitViewControllerUsesExtraWidePrimaryColumn"}];
  [coder encodeInteger:-[_UISplitViewControllerAdaptiveImpl style](self forKey:{"style"), @"UISplitViewControllerStyle"}];
  if ([(_UISplitViewControllerAdaptiveImpl *)self primaryBackgroundStyle])
  {
    [coder encodeInteger:-[_UISplitViewControllerAdaptiveImpl primaryBackgroundStyle](self forKey:{"primaryBackgroundStyle"), @"UISplitViewControllerPrimaryBackgroundStyle"}];
  }

  v13 = [(_UISplitViewControllerAdaptiveImpl *)self viewControllerForColumn:3];
  if (v13)
  {
    v14 = v13;
    [coder encodeObject:v13 forKey:@"UISplitViewControllerCompactColumnVC"];
    v13 = v14;
  }
}

- (id)preferredFocusEnvironments
{
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  previouslyFocusedSplitViewControllerColumn = self->_previouslyFocusedSplitViewControllerColumn;
  if (previouslyFocusedSplitViewControllerColumn != 999)
  {
    v9 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:self->_previouslyFocusedSplitViewControllerColumn];
    viewController = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
    if (viewController)
    {
      v11 = viewController;
      v12 = [v6 columnVisibilityForSplitViewControllerColumn:previouslyFocusedSplitViewControllerColumn];

      if (v12 == 2)
      {
        viewController2 = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
        [v7 addObject:viewController2];
      }
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64___UISplitViewControllerAdaptiveImpl_preferredFocusEnvironments__block_invoke;
  v20[3] = &unk_1E70FF628;
  v21 = v6;
  selfCopy = self;
  v23 = v7;
  v14 = v7;
  v15 = v6;
  [v15 enumerateDisplayOrder:v20];
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  _super_preferredFocusEnvironments = [splitViewController _super_preferredFocusEnvironments];
  [v14 addObjectsFromArray:_super_preferredFocusEnvironments];

  v18 = _UIFocusEnvironmentCombinedPreferredFocusEnvironments(splitViewController, v14, [splitViewController _subclassPreferredFocusedViewPrioritizationType] != 0);

  return v18;
}

- (void)_didUpdateFocusInContext:(id)context
{
  v14.receiver = self;
  v14.super_class = _UISplitViewControllerAdaptiveImpl;
  [(_UISplitViewControllerBaseImpl *)&v14 _didUpdateFocusInContext:?];
  nextFocusedView = [context nextFocusedView];

  if (nextFocusedView)
  {
    nextFocusedView2 = [context nextFocusedView];
    v7 = nextFocusedView2;
    if (self)
    {
      if (nextFocusedView2)
      {
        _viewControllerForAncestor = [nextFocusedView2 _viewControllerForAncestor];
        v9 = _viewControllerForAncestor;
        if (_viewControllerForAncestor)
        {
          parentViewController = _viewControllerForAncestor;
          splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
          do
          {
            v12 = parentViewController;
            v13 = [(_UISplitViewControllerAdaptiveImpl *)self _columnForViewController:parentViewController];
            parentViewController = [parentViewController parentViewController];
          }

          while (parentViewController && v13 == 999);
        }

        else
        {
          v13 = 999;
        }
      }

      else
      {
        v13 = 999;
      }
    }

    else
    {
      v13 = 0;
    }

    self->_previouslyFocusedSplitViewControllerColumn = v13;
  }
}

- (int64_t)preferredTrafficLightStyle
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__210;
  v20 = __Block_byref_object_dispose__210;
  v21 = 0;
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64___UISplitViewControllerAdaptiveImpl_preferredTrafficLightStyle__block_invoke;
  v12[3] = &unk_1E7125CB0;
  v7 = v6;
  v13 = v7;
  selfCopy = self;
  v15 = &v16;
  [v7 enumerateDisplayInOrder:2 withBlock:v12];
  v8 = v17[5];
  if (v8)
  {
    _effectiveStatusBarStyleViewController = [v8 _effectiveStatusBarStyleViewController];
    preferredTrafficLightStyle = [_effectiveStatusBarStyleViewController preferredTrafficLightStyle];
  }

  else
  {
    preferredTrafficLightStyle = 0;
  }

  _Block_object_dispose(&v16, 8);
  return preferredTrafficLightStyle;
}

- (BOOL)prefersPointerLocked
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58___UISplitViewControllerAdaptiveImpl_prefersPointerLocked__block_invoke;
  v10[3] = &unk_1E7125CB0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  v13 = &v14;
  [v7 enumerateDisplayInOrder:0 withBlock:v10];
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (id)_effectiveActivityItemsConfiguration
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__210;
  v18 = __Block_byref_object_dispose__210;
  v19 = 0;
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74___UISplitViewControllerAdaptiveImpl__effectiveActivityItemsConfiguration__block_invoke;
  v10[3] = &unk_1E7125CB0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  v13 = &v14;
  [v7 enumerateDisplayInOrder:4 withBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)_childViewControllerForSpokenContent
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__210;
  v18 = __Block_byref_object_dispose__210;
  v19 = 0;
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74___UISplitViewControllerAdaptiveImpl__childViewControllerForSpokenContent__block_invoke;
  v10[3] = &unk_1E7125CB0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  v13 = &v14;
  [v7 enumerateDisplayInOrder:4 withBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (void)splitViewControllerColumnDidRequestToBecomeVisible:(int64_t)visible
{
  v16 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &splitViewControllerColumnDidRequestToBecomeVisible____s_category);
  if (*CategoryCachedImpl)
  {
    v7 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      v10 = 136315650;
      v11 = "[_UISplitViewControllerAdaptiveImpl splitViewControllerColumnDidRequestToBecomeVisible:]";
      v12 = 2048;
      v13 = splitViewController;
      v14 = 2048;
      visibleCopy = visible;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%s svc = %p; column = %ld", &v10, 0x20u);
    }
  }

  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsToShowSplitViewControllerColumn:visible layout:layout];
  if ([layout columnVisibilityForSplitViewControllerColumn:visible] != 2)
  {
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutForColumnVisibilityChange];
  }
}

- (uint64_t)_splitViewControllerColumnToShowWithInteractivePresentationGestureOnEdge:(void *)edge layout:
{
  primaryEdge = [edge primaryEdge];
  primaryEdge2 = [self primaryEdge];
  isRTL = [self isRTL];
  v9 = -1.0;
  if (!primaryEdge2)
  {
    v9 = 1.0;
  }

  if (primaryEdge2 != primaryEdge)
  {
    v9 = -v9;
  }

  if (isRTL)
  {
    v9 = -v9;
  }

  v10 = -3;
  if (v9 < 0.0)
  {
    v10 = -9;
  }

  if ((v10 & a2) != 0)
  {
    return 999;
  }

  v12 = [edge splitViewControllerColumnAtEdge:{objc_msgSend(edge, "primaryEdge")}];

  return [edge splitViewControllerColumnDisplayedBeforeSplitViewControllerColumn:v12];
}

- (void)_handleColumnResizePanGestureRecognizer:(id)recognizer
{
  resizingSplitViewControllerColumn = self->_resizingSplitViewControllerColumn;
  if (resizingSplitViewControllerColumn == 999)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:2249 description:@"UISplitViewController internal inconsistency: expected split view controller column for resizing"];
  }

  state = [recognizer state];
  if (state > 2)
  {
    if (state == 3)
    {
      v38 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:resizingSplitViewControllerColumn];
      v39 = v38;
      if (v38)
      {
        *(v38 + 72) = 0xC7EFFFFFE0000000;
      }

      if ((*(&self->_implFlags + 2) & 2) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        [WeakRetained _splitViewController:splitViewController didEndResizingColumn:resizingSplitViewControllerColumn];
      }
    }

    else if (state != 4)
    {
      return;
    }

    self->_resizingSplitViewControllerColumn = 999;
    return;
  }

  if (state != 1)
  {
    if (state != 2)
    {
      return;
    }

    [recognizer translationInView:0];
    v8 = v7;
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
    v10 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:resizingSplitViewControllerColumn];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v47 = __95___UISplitViewControllerAdaptiveImpl__updateResizingSplitViewControllerColumn_withTranslation___block_invoke;
    v48 = &unk_1E7125D50;
    v49 = layout;
    v50 = resizingSplitViewControllerColumn;
    v11 = layout;
    v12 = [v11 edgeForSplitViewControllerColumn:resizingSplitViewControllerColumn];
    primaryEdge = [(_UISplitViewControllerAdaptiveImpl *)self primaryEdge];
    isRTL = [(_UISplitViewControllerAdaptiveImpl *)self isRTL];
    v15 = -1.0;
    if (!primaryEdge)
    {
      v15 = 1.0;
    }

    if (primaryEdge != v12)
    {
      v15 = -v15;
    }

    if (isRTL)
    {
      v15 = -v15;
    }

    if (v10)
    {
      v16 = *(v10 + 72);
    }

    else
    {
      v16 = 0.0;
    }

    if (v15 < 0.0)
    {
      v17 = -v8;
    }

    else
    {
      v17 = v8;
    }

    v18 = (v47)(v46, v17 + v16);
    if (resizingSplitViewControllerColumn == 1)
    {
      if ((*(&self->_implFlags + 1) & 0x80) != 0)
      {
        v19 = objc_loadWeakRetained(&self->_delegate);
        splitViewController2 = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        [v19 _splitViewController:splitViewController2 constrainSupplementaryColumnWidthForResizeWidth:v18];
        goto LABEL_39;
      }
    }

    else if (!resizingSplitViewControllerColumn && (*(&self->_implFlags + 1) & 0x40) != 0)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      splitViewController2 = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      [v19 _splitViewController:splitViewController2 constrainPrimaryColumnWidthForResizeWidth:v18];
LABEL_39:
      v42 = v21;

      v18 = (v47)(v46, v42);
    }

    if (v10)
    {
      *(v10 + 64) = v18;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];

    return;
  }

  layout2 = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  v22 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:resizingSplitViewControllerColumn];
  [layout2 columnFrameForSplitViewControllerColumn:resizingSplitViewControllerColumn];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [layout2 contentInsetsForSplitViewControllerColumn:resizingSplitViewControllerColumn];
  v32 = v31;
  v34 = v33;
  v52.origin.x = v24;
  v52.origin.y = v26;
  v52.size.width = v28;
  v52.size.height = v30;
  Width = CGRectGetWidth(v52);
  if (v22)
  {
    v22[9] = Width - v32 - v34;
  }

  if (*(&self->_implFlags + 2))
  {
    v36 = objc_loadWeakRetained(&self->_delegate);
    splitViewController3 = [(_UISplitViewControllerBaseImpl *)self splitViewController];
    [v36 _splitViewController:splitViewController3 willBeginResizingColumn:resizingSplitViewControllerColumn];
  }
}

- (void)_handleResizeColumnToPreferredSizeTapGestureRecognizer:(id)recognizer
{
  if ([recognizer state] == 3)
  {
    resizingSplitViewControllerColumn = self->_resizingSplitViewControllerColumn;
    if (resizingSplitViewControllerColumn == 999)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:2279 description:@"UISplitViewController internal inconsistency: expected split view controller column for resizing"];
    }

    v6 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:resizingSplitViewControllerColumn];
    if (v6)
    {
      v6[4] = vdupq_n_s64(0xC7EFFFFFE0000000);
    }

    v8 = v6;
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutForColumnVisibilityChange];
  }
}

- (void)_handleScreenEdgePanGestureRecognizer:(id)recognizer
{
  state = [recognizer state];
  if ((state - 3) >= 2)
  {
    if (state != 1)
    {
      return;
    }

    edges = [recognizer edges];
    if (!self)
    {
      return;
    }

    v8 = edges;
    splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
    v9 = [(_UISplitViewControllerAdaptiveImpl *)self _splitViewControllerColumnToShowWithInteractivePresentationGestureOnEdge:v8 layout:layout];
    if (v9 == 999)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__beginInteractivePresentationOnEdge_ object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:2148 description:{@"UISplitViewController internal inconsistency: expected split view controller column for interactive presentation gesture. Split view controller: %@", splitViewController}];
    }

    if ((*(&self->_implFlags + 3) & 2) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained splitViewControllerInteractivePresentationGestureWillBegin:splitViewController];
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsToShowSplitViewControllerColumn:v9 layout:layout];
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutForColumnVisibilityChange];
  }

  else
  {
    if (!self || (*(&self->_implFlags + 3) & 4) == 0)
    {
      return;
    }

    splitViewController = objc_loadWeakRetained(&self->_delegate);
    layout = [(_UISplitViewControllerBaseImpl *)self splitViewController];
    [splitViewController splitViewControllerInteractivePresentationGestureDidEnd:layout];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v39 = *MEMORY[0x1E69E9840];
  if (self->_columnResizeDirectPanGestureRecognizer == recognizer || self->_columnResizeIndirectPanGestureRecognizer == recognizer || self->_columnResizeTapGestureRecognizer == recognizer)
  {
    if (![(_UISplitViewControllerAdaptiveImpl *)self isCollapsed])
    {
      _isPointerTouch = [touch _isPointerTouch];
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      view = [splitViewController view];
      [touch locationInView:view];
      v13 = v12;
      v15 = v14;

      v16 = *MEMORY[0x1E695F060];
      v17 = *(MEMORY[0x1E695F060] + 8);
      if (_isPointerTouch)
      {
        +[_UISplitViewControllerAdaptiveColumnSeparatorView pointerHitTargetWidth];
      }

      else
      {
        +[_UISplitViewControllerAdaptiveColumnSeparatorView touchHitTargetWidth];
      }

      v19 = -v18;
      v40.origin.x = v13;
      v40.origin.y = v15;
      v40.size.width = v16;
      v40.size.height = v17;
      v41 = CGRectInset(v40, v19, 0.0);
      x = v41.origin.x;
      y = v41.origin.y;
      width = v41.size.width;
      height = v41.size.height;
      layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      objectEnumerator = [(NSMapTable *)self->_columns objectEnumerator];
      v26 = [objectEnumerator countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v35;
        while (2)
        {
          v29 = 0;
          do
          {
            if (*v35 != v28)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            v30 = *(*(&v34 + 1) + 8 * v29);
            if (v30)
            {
              v31 = *(v30 + 144);
            }

            else
            {
              v31 = 0;
            }

            if ([layout canResizeSplitViewControllerColumn:v31])
            {
              [layout separatorFrameForSplitViewControllerColumn:v31];
              v43.origin.x = x;
              v43.origin.y = y;
              v43.size.width = width;
              v43.size.height = height;
              if (CGRectIntersectsRect(v42, v43))
              {

                if (v31 == 999)
                {
                  return 0;
                }

                self->_resizingSplitViewControllerColumn = v31;
                return 1;
              }
            }

            ++v29;
          }

          while (v27 != v29);
          v32 = [objectEnumerator countByEnumeratingWithState:&v34 objects:v38 count:16];
          v27 = v32;
          if (v32)
          {
            continue;
          }

          break;
        }
      }
    }

    return 0;
  }

  else if (self->_leftScreenEdgePanGestureRecognizer == recognizer || self->_rightScreenEdgePanGestureRecognizer == recognizer)
  {
    edges = [recognizer edges];
    layout2 = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
    v8 = ([layout2 isCollapsed] & 1) == 0 && -[_UISplitViewControllerAdaptiveImpl presentsWithGesture](self, "presentsWithGesture") && -[_UISplitViewControllerAdaptiveImpl _splitViewControllerColumnToShowWithInteractivePresentationGestureOnEdge:layout:](self, edges, layout2) != 999;
  }

  else
  {
    return 1;
  }

  return v8;
}

- (BOOL)_updatePreferredColumnsEnforcingColumnPreferences:(uint64_t)preferences
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = &OBJC_IVAR____UITileLayer_maskPath;
  if (*(preferences + 464) == a2)
  {
    return 0;
  }

  v5 = *(preferences + 312);
  if ((v5 & 0x80000000) != 0 && a2)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969860);
    if ((*CategoryCachedImpl & 1) == 0)
    {
      return 0;
    }

    v14 = *(CategoryCachedImpl + 8);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v15 = v14;
      splitViewController = [preferences splitViewController];
      v20 = 136315394;
      v21 = "[_UISplitViewControllerAdaptiveImpl _updatePreferredColumnsEnforcingColumnPreferences:]";
      v22 = 2048;
      v23 = splitViewController;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%s svc = %p; ignoring as enforcing column preferences has been suspended for scene resize", &v20, 0x16u);

      return 0;
    }
  }

  else
  {
    if ((v5 & 0x80000000) != 0 && (a2 & 1) == 0)
    {
      v8 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969868);
      if (*v8)
      {
        v17 = *(v8 + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = v17;
          splitViewController2 = [preferences splitViewController];
          v20 = 136315394;
          v21 = "[_UISplitViewControllerAdaptiveImpl _updatePreferredColumnsEnforcingColumnPreferences:]";
          v22 = 2048;
          v23 = splitViewController2;
          _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "%s svc = %p; ending suspension of enforcing column preferences for scene resize", &v20, 0x16u);

          v2 = &OBJC_IVAR____UITileLayer_maskPath;
        }
      }

      *(preferences + 312) &= ~0x80000000uLL;
    }

    v9 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969870);
    if (*v9)
    {
      v10 = *(v9 + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        [preferences splitViewController];
        v13 = v12 = v2;
        v20 = 136315650;
        v21 = "[_UISplitViewControllerAdaptiveImpl _updatePreferredColumnsEnforcingColumnPreferences:]";
        v22 = 2048;
        v23 = v13;
        v24 = 1024;
        v25 = a2;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s svc = %p; shouldEnforcePreferences = %d", &v20, 0x1Cu);

        v2 = v12;
      }
    }

    *(preferences + v2[28] + 40) = a2;
    return 1;
  }

  return result;
}

- (void)_finalizeViewControllerInColumn:(void *)column layout:
{
  v23 = *MEMORY[0x1E69E9840];
  if (self)
  {
    viewController = [(_UISplitViewControllerAdaptiveColumn *)a2 viewController];
    splitViewController = [self splitViewController];
    if (a2)
    {
      v8 = a2[18];
    }

    else
    {
      v8 = 0;
    }

    v9 = [column columnModeForSplitViewControllerColumn:v8];
    if (v9)
    {
      if (v9 >= 3)
      {
        if (viewController)
        {
          parentViewController = [viewController parentViewController];

          if (parentViewController == splitViewController)
          {
            CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_finalizeViewControllerInColumn_layout____s_category);
            if (*CategoryCachedImpl)
            {
              v12 = *(CategoryCachedImpl + 8);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                v13 = v12;
                if (a2)
                {
                  v14 = a2[18];
                }

                else
                {
                  v14 = 0;
                }

                v15 = 136315906;
                v16 = "[_UISplitViewControllerAdaptiveImpl _finalizeViewControllerInColumn:layout:]";
                v17 = 2048;
                v18 = splitViewController;
                v19 = 2112;
                v20 = viewController;
                v21 = 2048;
                v22 = v14;
                _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; column = %ld; removing child view controller", &v15, 0x2Au);
              }
            }

            [viewController willMoveToParentViewController:0];
            [viewController removeFromParentViewController];
          }
        }
      }
    }

    else
    {
      [(_UISplitViewControllerAdaptiveImpl *)self _dismantleViewControllerInColumn:a2 layout:column];
    }
  }
}

- (uint64_t)_areAnimatedTransitionsEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_7:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  v1 = *(self + 352);
  if (v1 >= 3)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = 134217984;
        v7 = v1;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Found an invalid tri state of %tu. This is an indication of corrupted memory.", &v6, 0xCu);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &_UITriStateToBool___s_category_2) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v6 = 134217984;
        v7 = v1;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Found an invalid tri state of %tu. This is an indication of corrupted memory.", &v6, 0xCu);
      }
    }

    goto LABEL_7;
  }

  v2 = 4u >> (v1 & 7);
  return v2 & 1;
}

- (void)_prepareModelNavigationViewControllerInColumn:(void *)column
{
  v28 = *MEMORY[0x1E69E9840];
  splitViewController = [column splitViewController];
  if (a2)
  {
    v5 = *(a2 + 24);
    v6 = *(a2 + 88);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    parentViewController = [v5 parentViewController];

    if (v7 != parentViewController)
    {
      viewControllers = [v7 viewControllers];
      v11 = [viewControllers count];

      if (v11)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__prepareModelNavigationViewControllerInColumn_ object:column file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:2883 description:{@"UISplitViewController internal inconsistency: unexpected view controllers in navigation controller. Split view controller: %@", splitViewController}];
      }

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_prepareModelNavigationViewControllerInColumn____s_category);
      if (*CategoryCachedImpl)
      {
        v14 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = v14;
          if (a2)
          {
            v16 = *(a2 + 144);
          }

          else
          {
            v16 = 0;
          }

          *buf = 136315906;
          v21 = "[_UISplitViewControllerAdaptiveImpl _prepareModelNavigationViewControllerInColumn:]";
          v22 = 2048;
          v23 = splitViewController;
          v24 = 2112;
          v25 = v5;
          v26 = 2048;
          v27 = v16;
          _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; column = %ld; wrapping client view controller in navigation controller", buf, 0x2Au);
        }
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __84___UISplitViewControllerAdaptiveImpl__prepareModelNavigationViewControllerInColumn___block_invoke;
      v17[3] = &unk_1E70F35B8;
      v18 = v7;
      v19 = v5;
      [UIView performWithoutAnimation:v17];
    }
  }
}

- (void)_dismantleEffectiveNavigationBarInColumn:(id *)WeakRetained
{
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WeakRetained = objc_loadWeakRetained(WeakRetained + 12);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      [WeakRetained _setStaticLeadingItemGroups:0 trailingItemGroups:0 animated:0];
      [v3 _setEdgesRequiringContentMargin:0];
      [v3 _setAdjacentBarEdges:0];
      objc_storeWeak(v2 + 12, 0);
      WeakRetained = v3;
    }

    v1 = vars8;
  }
}

- (void)_dismantleEffectiveToolbarInColumn:(id *)WeakRetained
{
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WeakRetained = objc_loadWeakRetained(WeakRetained + 13);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      [WeakRetained _setEdgesRequiringContentMargin:0];
      [v3 _setAdjacentBarEdges:0];
      objc_storeWeak(v2 + 13, 0);
      WeakRetained = v3;
    }

    v1 = vars8;
  }
}

- (id)_suspendAppearanceTransitionsInSplitViewController
{
  splitViewController = [self splitViewController];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88___UISplitViewControllerAdaptiveImpl__suspendAppearanceTransitionsInSplitViewController__block_invoke;
  v10[3] = &unk_1E7102F90;
  v11 = splitViewController;
  v3 = v2;
  v12 = v3;
  v4 = splitViewController;
  childViewControllers = [v4 childViewControllers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88___UISplitViewControllerAdaptiveImpl__suspendAppearanceTransitionsInSplitViewController__block_invoke_418;
  v9[3] = &__block_descriptor_40_e30_B24__0__UIViewController_8_B16lu32l8;
  v9[4] = v10;
  _UITreeBreadthFirstTraversal(childViewControllers, sel_childViewControllers, v9);

  v6 = v12;
  v7 = v3;

  return v3;
}

- (void)_enableAppearanceTransitionsInViewController:(void *)controller
{
  v20 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9698A8);
  if (*CategoryCachedImpl)
  {
    v8 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      splitViewController = [controller splitViewController];
      v14 = 136315650;
      v15 = "[_UISplitViewControllerAdaptiveImpl _enableAppearanceTransitionsInViewController:]";
      v16 = 2048;
      v17 = splitViewController;
      v18 = 2112;
      v19 = a2;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; restoring appearance transitions", &v14, 0x20u);
    }
  }

  [a2 setAppearanceTransitionsAreDisabled:0];
  if (a2)
  {
    if ((a2[94] & 3u) - 1 <= 1)
    {
      _existingView = [a2 _existingView];
      window = [_existingView window];

      if (!window)
      {
        v7 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9698B0);
        if (*v7)
        {
          v11 = *(v7 + 8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = v11;
            splitViewController2 = [controller splitViewController];
            v14 = 136315650;
            v15 = "[_UISplitViewControllerAdaptiveImpl _enableAppearanceTransitionsInViewController:]";
            v16 = 2048;
            v17 = splitViewController2;
            v18 = 2112;
            v19 = a2;
            _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s svc = %p; viewController = %@; manually setting disappeared state", &v14, 0x20u);
          }
        }

        [(UIViewController *)a2 __viewWillDisappear:?];
        [(UIViewController *)a2 __viewDidDisappear:?];
      }
    }
  }
}

- (uint64_t)_updatePreferredColumnsWithPreferredColumns:(void *)columns
{
  v4 = [(_UISplitViewControllerAdaptiveImpl *)columns _updatePreferredColumnsPrimaryEdgeSplitViewControllerColumn:?];
  v5 = [(_UISplitViewControllerAdaptiveImpl *)columns _updatePreferredColumnsSecondaryEdgeSplitViewControllerColumn:?];
  v6 = [(_UISplitViewControllerAdaptiveImpl *)columns _updatePreferredColumnsCollapsedSplitViewControllerColumn:?];
  v7 = [(_UISplitViewControllerAdaptiveImpl *)columns _updatePreferredColumnsPresentedSplitViewControllerColumn:?];
  v8 = [(_UISplitViewControllerAdaptiveImpl *)columns _updatePreferredColumnsEnforcingColumnPreferences:?];
  v9 = [(_UISplitViewControllerAdaptiveImpl *)columns _updatePreferredColumnsPreferredEdge:?];
  v10 = [(_UISplitViewControllerAdaptiveImpl *)columns _updatePreferredColumnsSplitBehavior:?];
  v11 = [(_UISplitViewControllerAdaptiveImpl *)columns _updatePreferredColumnsPrimaryEdgePreferenceMode:?];
  return ((v4 || v5) | v6 | v7 | v8 | v9 | v10 | v11 | [(_UISplitViewControllerAdaptiveImpl *)columns _updatePreferredColumnsSecondaryEdgePreferenceMode:?]) & 1;
}

- (uint64_t)_updatePreferredColumnsToToggleSplitViewControllerColumnOnEdge:(void *)edge layout:
{
  if (result)
  {
    v5 = result;
    if ([edge isCollapsed])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      splitViewController = [v5 splitViewController];
      [currentHandler handleFailureInMethod:sel__updatePreferredColumnsToToggleSplitViewControllerColumnOnEdge_layout_ object:v5 file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3337 description:{@"UISplitViewController internal inconsistency: unexpected attempt to toggle column in a collapsed layout. Split view controller: %@", splitViewController}];
    }

    v6 = [edge splitViewControllerColumnAtEdge:a2];
    if ([edge primaryEdge] == a2)
    {
      v7 = [edge splitViewControllerColumnDisplayedBeforeSplitViewControllerColumn:v6];
    }

    else
    {
      v7 = [edge splitViewControllerColumnDisplayedAfterSplitViewControllerColumn:v6];
    }

    v8 = v7;
    if (v7 == 999 || ([v5 columnForSplitViewControllerColumn:v7], v9 = objc_claimAutoreleasedReturnValue(), -[_UISplitViewControllerAdaptiveColumn viewController](v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
    {

      return [(_UISplitViewControllerAdaptiveImpl *)v5 _updatePreferredColumnsToHideSplitViewControllerColumn:v6 layout:edge];
    }

    else
    {

      return [(_UISplitViewControllerAdaptiveImpl *)v5 _updatePreferredColumnsToShowSplitViewControllerColumn:v8 layout:edge];
    }
  }

  return result;
}

- (BOOL)_updatePreferredColumnsPrimaryEdgeSplitViewControllerColumn:(void *)column
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 == 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__updatePreferredColumnsPrimaryEdgeSplitViewControllerColumn_ object:column file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3473 description:{@"Invalid parameter not satisfying: %@", @"primaryEdgeSplitViewControllerColumn != UISplitViewControllerColumnCompact"}];
  }

  v4 = column[53];
  if (v4 != a2)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_updatePreferredColumnsPrimaryEdgeSplitViewControllerColumn____s_category);
    if (*CategoryCachedImpl)
    {
      v8 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        [column splitViewController];
        v10 = v11 = v4;
        *buf = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl _updatePreferredColumnsPrimaryEdgeSplitViewControllerColumn:]";
        v14 = 2048;
        v15 = v10;
        v16 = 2048;
        v17 = a2;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s svc = %p; primaryEdgeSplitViewControllerColumn = %ld", buf, 0x20u);

        v4 = v11;
      }
    }

    column[53] = a2;
  }

  return v4 != a2;
}

- (BOOL)_updatePreferredColumnsPrimaryEdgePreferenceMode:(void *)mode
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = mode[60];
  if (v3 != a2)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_updatePreferredColumnsPrimaryEdgePreferenceMode____s_category);
    if (*CategoryCachedImpl)
    {
      v7 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        [mode splitViewController];
        v9 = v10 = v3;
        *buf = 136315650;
        v12 = "[_UISplitViewControllerAdaptiveImpl _updatePreferredColumnsPrimaryEdgePreferenceMode:]";
        v13 = 2048;
        v14 = v9;
        v15 = 2048;
        v16 = a2;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%s svc = %p; primaryEdgePreferenceMode = %ld", buf, 0x20u);

        v3 = v10;
      }
    }

    mode[60] = a2;
  }

  return v3 != a2;
}

- (BOOL)_updatePreferredColumnsSecondaryEdgeSplitViewControllerColumn:(void *)column
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 == 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__updatePreferredColumnsSecondaryEdgeSplitViewControllerColumn_ object:column file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3484 description:{@"Invalid parameter not satisfying: %@", @"secondaryEdgeSplitViewControllerColumn != UISplitViewControllerColumnCompact"}];
  }

  v4 = column[54];
  if (v4 != a2)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_updatePreferredColumnsSecondaryEdgeSplitViewControllerColumn____s_category);
    if (*CategoryCachedImpl)
    {
      v8 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        [column splitViewController];
        v10 = v11 = v4;
        *buf = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl _updatePreferredColumnsSecondaryEdgeSplitViewControllerColumn:]";
        v14 = 2048;
        v15 = v10;
        v16 = 2048;
        v17 = a2;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s svc = %p; secondaryEdgeSplitViewControllerColumn = %ld", buf, 0x20u);

        v4 = v11;
      }
    }

    column[54] = a2;
  }

  return v4 != a2;
}

- (BOOL)_updatePreferredColumnsSecondaryEdgePreferenceMode:(void *)mode
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = mode[61];
  if (v3 != a2)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_updatePreferredColumnsSecondaryEdgePreferenceMode____s_category);
    if (*CategoryCachedImpl)
    {
      v7 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        [mode splitViewController];
        v9 = v10 = v3;
        *buf = 136315650;
        v12 = "[_UISplitViewControllerAdaptiveImpl _updatePreferredColumnsSecondaryEdgePreferenceMode:]";
        v13 = 2048;
        v14 = v9;
        v15 = 2048;
        v16 = a2;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%s svc = %p; secondaryEdgePreferenceMode = %ld", buf, 0x20u);

        v3 = v10;
      }
    }

    mode[61] = a2;
  }

  return v3 != a2;
}

- (void)splitViewControllerLayout:(id)layout didRequestToCollapseSplitViewControllerColumns:(id)columns inSplitViewControllerColumn:(int64_t)column
{
  v83 = *MEMORY[0x1E69E9840];
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  if (([layout isCollapsed] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3622 description:{@"UISplitViewController internal inconsistency: expected collapsed layout. Split view controller: %@", splitViewController}];
  }

  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];

  if (scheduledLayout != layout)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3623 description:{@"UISplitViewController internal inconsistency: unexpected layout requesting collapse. Split view controller: %@", splitViewController}];
  }

  v12 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:column];
  navigationController = [(_UISplitViewControllerAdaptiveColumn *)v12 navigationController];
  v14 = navigationController;
  if (!navigationController)
  {
    goto LABEL_44;
  }

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v70 = __139___UISplitViewControllerAdaptiveImpl_splitViewControllerLayout_didRequestToCollapseSplitViewControllerColumns_inSplitViewControllerColumn___block_invoke;
  v71 = &unk_1E7125F80;
  v75 = a2;
  selfCopy = self;
  v15 = navigationController;
  v73 = v15;
  v16 = splitViewController;
  v74 = v16;
  columnCopy = column;
  [(_UISplitViewControllerAdaptiveImpl *)self _prepareViewControllerInColumn:v12 layout:layout];
  _areAnimatedTransitionsEnabled = [(_UISplitViewControllerAdaptiveImpl *)self _areAnimatedTransitionsEnabled];
  if (![columns count])
  {
    viewControllers = [v15 viewControllers];
    v49 = [viewControllers count];

    if (v49 < 2)
    {
      goto LABEL_43;
    }

    viewControllers2 = [v15 viewControllers];
    firstObject = [viewControllers2 firstObject];
    goto LABEL_37;
  }

  v62 = a2;
  v64 = v16;
  v68 = v15;
  lastObject = [columns lastObject];
  integerValue = [lastObject integerValue];

  columnCopy2 = column;
  if (integerValue == column)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v57 = _UISplitViewControllerColumnDescription(column);
    [v57 lowercaseString];
    v59 = v58 = v14;
    [currentHandler3 handleFailureInMethod:v62 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3680 description:{@"UISplitViewController internal inconsistency: unexpected attempt to collapse %@ column into itself. Split view controller: %@", v59, v64}];

    v14 = v58;
    column = columnCopy2;
  }

  v65 = splitViewController;
  v19 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:integerValue];
  viewController = [(_UISplitViewControllerAdaptiveColumn *)v19 viewController];
  parentViewController = [viewController parentViewController];

  if (parentViewController == v68)
  {
    viewController2 = [(_UISplitViewControllerAdaptiveColumn *)v19 viewController];
    topViewController = [v68 topViewController];

    v52 = viewController2 == topViewController;
    viewControllers2 = v19;
    if (v52)
    {
LABEL_39:
      splitViewController = v65;
      goto LABEL_42;
    }

    firstObject = [(_UISplitViewControllerAdaptiveColumn *)v19 viewController];
    splitViewController = v65;
LABEL_37:
    v70(v69, firstObject, 0, _areAnimatedTransitionsEnabled);
    goto LABEL_41;
  }

  v63 = v19;
  if (![columns count])
  {
    viewControllers2 = v19;
    goto LABEL_39;
  }

  v60 = v14;
  v61 = v12;
  v22 = 0;
  v23 = v68;
  while (1)
  {
    v24 = [columns objectAtIndexedSubscript:v22];
    integerValue2 = [v24 integerValue];

    if (integerValue2 == column)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v43 = _UISplitViewControllerColumnDescription(column);
      lowercaseString = [v43 lowercaseString];
      [currentHandler4 handleFailureInMethod:v62 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3693 description:{@"UISplitViewController internal inconsistency: unexpected attempt to collapse %@ column into itself. Split view controller: %@", lowercaseString, v64}];
    }

    if ([layout columnModeForSplitViewControllerColumn:integerValue2] != 4)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v46 = _UISplitViewControllerColumnDescription(integerValue2);
      lowercaseString2 = [v46 lowercaseString];
      [currentHandler5 handleFailureInMethod:v62 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3694 description:{@"UISplitViewController internal inconsistency: unexpected attempt to collapse %@ column. Split view controller: %@", lowercaseString2, v64}];
    }

    v26 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:integerValue2];
    firstObject = v26;
    v28 = v26 ? *(v26 + 24) : 0;
    v29 = v28;

    if (!v29)
    {
      break;
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _prepareViewControllerInColumn:firstObject layout:layout];
    viewController3 = [(_UISplitViewControllerAdaptiveColumn *)firstObject viewController];
    parentViewController2 = [viewController3 parentViewController];

    if (parentViewController2 != v23)
    {
      viewController4 = [(_UISplitViewControllerAdaptiveColumn *)firstObject viewController];
      if (([viewController4 _isNavigationController] & 1) == 0)
      {

LABEL_25:
        if (_areAnimatedTransitionsEnabled)
        {
          v41 = v22 == [columns count] - 1;
        }

        else
        {
          v41 = 0;
        }

        v23 = v68;
        viewController5 = [(_UISplitViewControllerAdaptiveColumn *)firstObject viewController];
        v70(v69, viewController5, 1, v41);
LABEL_29:

        goto LABEL_30;
      }

      navigationController2 = [(_UISplitViewControllerAdaptiveColumn *)firstObject navigationController];
      viewControllers3 = [navigationController2 viewControllers];
      v35 = [viewControllers3 count];

      column = columnCopy2;
      if (v35)
      {
        goto LABEL_25;
      }

      v36 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &splitViewControllerLayout_didRequestToCollapseSplitViewControllerColumns_inSplitViewControllerColumn____s_category) + 8);
      v23 = v68;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = v36;
        viewController5 = _UISplitViewControllerColumnDescription(integerValue2);
        lowercaseString3 = [viewController5 lowercaseString];
        viewController6 = [(_UISplitViewControllerAdaptiveColumn *)firstObject viewController];
        *buf = 138412802;
        v78 = lowercaseString3;
        v79 = 2112;
        v80 = v64;
        v81 = 2112;
        v82 = viewController6;
        _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "Ignoring request to collapse %@ column as its navigation controller has no root view controller. Split view controller: %@; view controller: %@", buf, 0x20u);

        v23 = v68;
        goto LABEL_29;
      }
    }

LABEL_30:

    if (++v22 >= [columns count])
    {
      splitViewController = v65;
      v14 = v60;
      v12 = v61;
      viewControllers2 = v63;
      goto LABEL_42;
    }
  }

  splitViewController = v65;
  v14 = v60;
  v12 = v61;
  viewControllers2 = v63;
LABEL_41:

LABEL_42:
LABEL_43:

LABEL_44:
}

- (void)splitViewControllerLayout:(id)layout didRequestToPresentSplitViewControllerColumn:(int64_t)column
{
  v31 = *MEMORY[0x1E69E9840];
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];

  if (scheduledLayout == layout)
  {
    if (!self)
    {
      return;
    }

LABEL_3:
    v9 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:column];
    viewController = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
    if (!viewController)
    {
      goto LABEL_16;
    }

    v11 = viewController;
    viewController2 = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
    parentModalViewController = [viewController2 parentModalViewController];

    if (parentModalViewController)
    {
      goto LABEL_16;
    }

    splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
    _window = [splitViewController _window];

    if (_window)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9698C0);
      if (*CategoryCachedImpl)
      {
        v24 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = v24;
          viewController3 = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
          *buf = 136315906;
          *&buf[4] = "[_UISplitViewControllerAdaptiveImpl _presentSplitViewControllerColumn:layout:]";
          *&buf[12] = 2048;
          *&buf[14] = splitViewController;
          *&buf[22] = 2048;
          columnCopy = column;
          LOWORD(v30) = 2112;
          *(&v30 + 2) = viewController3;
          _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "%s svc = %p; column = %ld; viewController = %@", buf, 0x2Au);
        }
      }

      if ([layout columnModeForSplitViewControllerColumn:column] != 3)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__presentSplitViewControllerColumn_layout_ object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:4702 description:{@"UISplitViewController internal inconsistency: unexpected column presentation. Split view controller: %@", splitViewController}];
      }

      [(_UISplitViewControllerAdaptiveImpl *)self _prepareViewControllerInColumn:v9 layout:layout];
      [(_UISplitViewControllerAdaptiveImpl *)self _finalizeViewControllerInColumn:v9 layout:layout];
      if ((*(&self->_implFlags + 4) & 0x10) != 0)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __79___UISplitViewControllerAdaptiveImpl__presentSplitViewControllerColumn_layout___block_invoke;
        columnCopy = &unk_1E70F35B8;
        *&v30 = splitViewController;
        *(&v30 + 1) = v9;
        [UIView performWithoutAnimation:buf];

        goto LABEL_15;
      }

      _areAnimatedTransitionsEnabled = [(_UISplitViewControllerAdaptiveImpl *)self _areAnimatedTransitionsEnabled];
      viewController4 = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
      [splitViewController presentViewController:viewController4 animated:_areAnimatedTransitionsEnabled completion:0];
    }

    else
    {
      v19 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9698B8) + 8);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_15:

LABEL_16:
        return;
      }

      v20 = v19;
      viewController4 = _UISplitViewControllerColumnDescription(column);
      lowercaseString = [viewController4 lowercaseString];
      *buf = 138412546;
      *&buf[4] = lowercaseString;
      *&buf[12] = 2112;
      *&buf[14] = splitViewController;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Ignoring request to present the view controller of the %@ column as the split view controller's view is not in a window. Split view controller: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  splitViewController2 = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3723 description:{@"UISplitViewController internal inconsistency: unexpected layout requesting column presentation. Split view controller: %@", splitViewController2}];

  if (self)
  {
    goto LABEL_3;
  }
}

- (void)splitViewControllerLayout:(id)layout didRequestToDismissSplitViewControllerColumn:(int64_t)column
{
  v30[3] = *MEMORY[0x1E69E9840];
  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];

  if (scheduledLayout == layout)
  {
    if (!self)
    {
      return;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:3728 description:{@"UISplitViewController internal inconsistency: unexpected layout requesting column dismissal. Split view controller: %@", splitViewController}];

    if (!self)
    {
      return;
    }
  }

  v9 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:column];
  viewController = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
  if (viewController)
  {
    v11 = viewController;
    viewController2 = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
    parentModalViewController = [viewController2 parentModalViewController];

    if (parentModalViewController)
    {
      splitViewController2 = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      viewController3 = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
      presentationController = [viewController3 presentationController];
      v17 = [(UIViewController *)splitViewController2 _modalPresenterForPresentationController:presentationController];

      viewController4 = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
      parentModalViewController2 = [viewController4 parentModalViewController];

      if (parentModalViewController2 == v17)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_dismissSplitViewControllerColumn_layout____s_category);
        if (*CategoryCachedImpl)
        {
          v25 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = v25;
            viewController5 = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
            *buf = 136315906;
            *&buf[4] = "[_UISplitViewControllerAdaptiveImpl _dismissSplitViewControllerColumn:layout:]";
            *&buf[12] = 2048;
            *&buf[14] = splitViewController2;
            *&buf[22] = 2048;
            columnCopy = column;
            LOWORD(v30[0]) = 2112;
            *(v30 + 2) = viewController5;
            _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "%s svc = %p; column = %ld; viewController = %@", buf, 0x2Au);
          }
        }

        if ((*(&self->_implFlags + 4) & 0x10) != 0)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __79___UISplitViewControllerAdaptiveImpl__dismissSplitViewControllerColumn_layout___block_invoke;
          columnCopy = &unk_1E70F3590;
          v30[0] = v9;
          [UIView performWithoutAnimation:buf];
          viewController6 = v30[0];
        }

        else
        {
          _areAnimatedTransitionsEnabled = [(_UISplitViewControllerAdaptiveImpl *)self _areAnimatedTransitionsEnabled];
          viewController6 = [(_UISplitViewControllerAdaptiveColumn *)v9 viewController];
          [viewController6 dismissViewControllerAnimated:_areAnimatedTransitionsEnabled completion:0];
        }
      }
    }
  }
}

- (void)navigationItemBarButtonItemGroupsDidChange:(id)change
{
  v12 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &navigationItemBarButtonItemGroupsDidChange____s_category);
  if (*CategoryCachedImpl)
  {
    v5 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      v8 = 136315394;
      v9 = "[_UISplitViewControllerAdaptiveImpl navigationItemBarButtonItemGroupsDidChange:]";
      v10 = 2048;
      v11 = splitViewController;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s svc = %p; updating bar button items", &v8, 0x16u);
    }
  }

  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
}

- (void)_presentationControllerWillBeginPresentationTransition:(id)transition
{
  v15 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_presentationControllerWillBeginPresentationTransition____s_category);
  if (*CategoryCachedImpl)
  {
    v8 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      v11 = 136315394;
      v12 = "[_UISplitViewControllerAdaptiveImpl _presentationControllerWillBeginPresentationTransition:]";
      v13 = 2048;
      v14 = splitViewController;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s svc = %p", &v11, 0x16u);
    }
  }

  presentedViewController = [transition presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutPerformingTransitionAlongsideTransitionCoordinator:transitionCoordinator];
}

- (void)_presentationControllerDidEndPresentationTransition:(id)transition completed:(BOOL)completed
{
  v16 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_presentationControllerDidEndPresentationTransition_completed____s_category);
  if (*CategoryCachedImpl)
  {
    v9 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      v12 = 136315394;
      v13 = "[_UISplitViewControllerAdaptiveImpl _presentationControllerDidEndPresentationTransition:completed:]";
      v14 = 2048;
      v15 = splitViewController;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s svc = %p", &v12, 0x16u);
    }
  }

  presentedViewController = [transition presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutPerformingTransitionAlongsideTransitionCoordinator:transitionCoordinator];
}

- (void)_presentationControllerWillBeginDismissalTransition:(id)transition
{
  v15 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_presentationControllerWillBeginDismissalTransition____s_category);
  if (*CategoryCachedImpl)
  {
    v8 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      v11 = 136315394;
      v12 = "[_UISplitViewControllerAdaptiveImpl _presentationControllerWillBeginDismissalTransition:]";
      v13 = 2048;
      v14 = splitViewController;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s svc = %p", &v11, 0x16u);
    }
  }

  presentedViewController = [transition presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutPerformingTransitionAlongsideTransitionCoordinator:transitionCoordinator];
}

- (void)_presentationControllerDidEndDismissalTransition:(id)transition completed:(BOOL)completed
{
  completedCopy = completed;
  v17 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_presentationControllerDidEndDismissalTransition_completed____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      v13 = 136315394;
      v14 = "[_UISplitViewControllerAdaptiveImpl _presentationControllerDidEndDismissalTransition:completed:]";
      v15 = 2048;
      v16 = splitViewController;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s svc = %p", &v13, 0x16u);
    }
  }

  if (completedCopy)
  {
    [transition _setTransitionDelegate:0];
    [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsPresentedSplitViewControllerColumn:?];
  }

  presentedViewController = [transition presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutPerformingTransitionAlongsideTransitionCoordinator:transitionCoordinator];
}

- (void)_handlePrimaryEdgeBarButtonItem:(id)item
{
  v19 = *MEMORY[0x1E69E9840];
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  if ([layout isCollapsed])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:4002 description:{@"UISplitViewController internal inconsistency: unexpected attempt to toggle primary edge in a collapsed layout. Split view controller: %@", splitViewController}];
  }

  primaryEdge = [layout primaryEdge];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_handlePrimaryEdgeBarButtonItem____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      splitViewController2 = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      *buf = 136315650;
      v14 = "[_UISplitViewControllerAdaptiveImpl _handlePrimaryEdgeBarButtonItem:]";
      v15 = 2048;
      v16 = splitViewController2;
      v17 = 2048;
      v18 = primaryEdge;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s svc = %p; primaryEdge = %ld", buf, 0x20u);
    }
  }

  [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsToToggleSplitViewControllerColumnOnEdge:primaryEdge layout:layout];
  [(_UISplitViewControllerAdaptiveImpl *)self _setAllowsSceneResizeToShowAdditionalColumns];
  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutForColumnVisibilityChange];
}

- (void)_handleSecondaryEdgeBarButtonItem:(id)item
{
  v19 = *MEMORY[0x1E69E9840];
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  if ([layout isCollapsed])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:4014 description:{@"UISplitViewController internal inconsistency: unexpected attempt to toggle secondary only in a collapsed layout. Split view controller: %@", splitViewController}];
  }

  v6 = [layout primaryEdge] == 0;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &_handleSecondaryEdgeBarButtonItem____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      splitViewController2 = [(_UISplitViewControllerBaseImpl *)self splitViewController];
      *buf = 136315650;
      v14 = "[_UISplitViewControllerAdaptiveImpl _handleSecondaryEdgeBarButtonItem:]";
      v15 = 2048;
      v16 = splitViewController2;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s svc = %p; secondaryEdge = %ld", buf, 0x20u);
    }
  }

  [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsToToggleSplitViewControllerColumnOnEdge:v6 layout:layout];
  [(_UISplitViewControllerAdaptiveImpl *)self _setAllowsSceneResizeToShowAdditionalColumns];
  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutForColumnVisibilityChange];
}

- (void)_handleSecondaryOnlyBarButtonItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  if ([layout isCollapsed])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:4026 description:{@"UISplitViewController internal inconsistency: unexpected attempt to toggle secondary only in a collapsed layout. Split view controller: %@", splitViewController}];
  }

  primaryEdge = [layout primaryEdge];
  if ([layout splitViewControllerColumnAtEdge:primaryEdge] == 2)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA9698A0);
    if (*CategoryCachedImpl)
    {
      v11 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        splitViewController2 = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        *buf = 136315394;
        v18 = "[_UISplitViewControllerAdaptiveImpl _handleSecondaryOnlyBarButtonItem:]";
        v19 = 2048;
        v20 = splitViewController2;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s svc = %p; toggling column visibility on primary edge", buf, 0x16u);
      }
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsToToggleSplitViewControllerColumnOnEdge:primaryEdge layout:layout];
  }

  else
  {
    v8 = __UILogGetCategoryCachedImpl("UISplitViewController", &qword_1EA969898);
    if (*v8)
    {
      v14 = *(v8 + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        splitViewController3 = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        *buf = 136315394;
        v18 = "[_UISplitViewControllerAdaptiveImpl _handleSecondaryOnlyBarButtonItem:]";
        v19 = 2048;
        v20 = splitViewController3;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%s svc = %p; updating preferred display mode to secondary only", buf, 0x16u);
      }
    }

    [(_UISplitViewControllerAdaptiveImpl *)self _updatePreferredColumnsToPreferredDisplayMode:?];
  }

  [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayoutForColumnVisibilityChange];
}

- (void)setPrimaryEdgeAdditionalBarButtonItemGroups:(id)groups
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = self->_primaryEdgeAdditionalBarButtonItemGroups;
  groupsCopy = groups;
  if (v11 == groupsCopy)
  {
  }

  else
  {
    if (groupsCopy && v11)
    {
      v6 = [(NSArray *)v11 isEqual:groupsCopy];

      if (v6)
      {
        return;
      }
    }

    else
    {
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setPrimaryEdgeAdditionalBarButtonItemGroups____s_category);
    if (*CategoryCachedImpl)
    {
      v8 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        *buf = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setPrimaryEdgeAdditionalBarButtonItemGroups:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2112;
        v17 = groupsCopy;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s svc = %p; primaryEdgeAdditionalBarButtonItemGroups = %@", buf, 0x20u);
      }
    }

    objc_storeStrong(&self->_primaryEdgeAdditionalBarButtonItemGroups, groups);
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }
}

- (void)setSecondaryEdgeAdditionalBarButtonItemGroups:(id)groups
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = self->_secondaryEdgeAdditionalBarButtonItemGroups;
  groupsCopy = groups;
  if (v11 == groupsCopy)
  {
  }

  else
  {
    if (groupsCopy && v11)
    {
      v6 = [(NSArray *)v11 isEqual:groupsCopy];

      if (v6)
      {
        return;
      }
    }

    else
    {
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISplitViewController", &setSecondaryEdgeAdditionalBarButtonItemGroups____s_category);
    if (*CategoryCachedImpl)
    {
      v8 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
        *buf = 136315650;
        v13 = "[_UISplitViewControllerAdaptiveImpl setSecondaryEdgeAdditionalBarButtonItemGroups:]";
        v14 = 2048;
        v15 = splitViewController;
        v16 = 2112;
        v17 = groupsCopy;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s svc = %p; secondaryEdgeAdditionalBarButtonItemGroups = %@", buf, 0x20u);
      }
    }

    objc_storeStrong(&self->_secondaryEdgeAdditionalBarButtonItemGroups, groups);
    [(_UISplitViewControllerAdaptiveImpl *)self _invalidateLayout];
  }
}

- (BOOL)hasAppeared
{
  splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
  _hasAppeared = [splitViewController _hasAppeared];

  return _hasAppeared;
}

- (id)columnForSplitViewControllerColumn:(int64_t)column
{
  if (column == 999)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    splitViewController = [(_UISplitViewControllerBaseImpl *)self splitViewController];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:4144 description:{@"UISplitViewController internal inconsistency: unexpected column. Split view controller: %@", splitViewController}];
  }

  else
  {
    if ((column & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    splitViewController = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UISplitViewControllerAdaptiveColumnKey  _Nonnull _UISplitViewControllerAdaptiveColumnKeyForSplitViewControllerColumn(UISplitViewControllerColumn)"];
    [currentHandler handleFailureInFunction:splitViewController file:@"_UISplitViewControllerAdaptiveImpl.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"splitViewControllerColumn >= 0"}];
  }

LABEL_3:
  v5 = NSMapGet(self->_columns, (column + 1));
  if (!v5)
  {
    v5 = [[_UISplitViewControllerAdaptiveColumn alloc] initWithSplitViewControllerColumn:column];
    NSMapInsert(self->_columns, (column + 1), v5);
  }

  v6 = v5;

  return v6;
}

- (UIEdgeInsets)additionalContainerContentInsetsForSplitViewControllerColumn:(int64_t)column
{
  tabBarHostedView = [(_UISplitViewControllerBaseImpl *)self tabBarHostedView];

  if (tabBarHostedView)
  {
    v6 = [(_UISplitViewControllerAdaptiveImpl *)self columnForSplitViewControllerColumn:column];
    viewController = [(_UISplitViewControllerAdaptiveColumn *)v6 viewController];
    tabBarHostedView2 = [(_UISplitViewControllerBaseImpl *)self tabBarHostedView];
    [tabBarHostedView2 floatingTabBarTopInsetForViewController:viewController];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = v10;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v14;
  return result;
}

- (int64_t)_trailingmostColumnForGlobalSearchItems
{
  if ([(_UISplitViewControllerAdaptiveImpl *)self _isCollapsed])
  {
    return 999;
  }

  result = [(_UISplitViewControllerAdaptiveImpl *)self _designatedGlobalSearchColumn];
  if (result != 4)
  {
    return 2;
  }

  return result;
}

- (void)_designatedGlobalSearchColumn
{
  selfCopy = self;
  if (self)
  {
    v2 = *(self + 312);
    if ((v2 & 0x1000000) != 0)
    {
      WeakRetained = objc_loadWeakRetained((self + 576));
      splitViewController = [selfCopy splitViewController];
      v8 = [WeakRetained _preferredSearchColumnForSplitViewController:splitViewController];

      return v8;
    }

    if ((v2 & 0x100000000) != 0)
    {
      return *(self + 520);
    }

    else
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 999;
      scheduledLayout = [*(self + 344) scheduledLayout];
      v4 = scheduledLayout;
      if (scheduledLayout)
      {
        layout = scheduledLayout;
      }

      else
      {
        layout = [(_UISplitViewControllerAdaptiveImpl *)selfCopy layout];
      }

      v10 = layout;

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __67___UISplitViewControllerAdaptiveImpl__designatedGlobalSearchColumn__block_invoke;
      v13[3] = &unk_1E7125CB0;
      v11 = v10;
      v14 = v11;
      v15 = selfCopy;
      v16 = &v17;
      [v11 enumerateDisplayInOrder:1 withBlock:v13];
      v12 = v18;
      selfCopy[65] = v18[3];
      selfCopy[39] |= 0x100000000uLL;
      selfCopy = v12[3];

      _Block_object_dispose(&v17, 8);
    }
  }

  return selfCopy;
}

- (BOOL)isGlobalSearchDonor:(id)donor
{
  LODWORD(_designatedGlobalSearchColumn) = [(_UISplitViewControllerAdaptiveImpl *)self supportsGlobalSearchHosting];
  if (_designatedGlobalSearchColumn)
  {
    v6 = [(_UISplitViewControllerAdaptiveImpl *)self _columnForViewController:donor];
    if (self)
    {
      if ([(_UISplitViewControllerAdaptiveImpl *)self supportsGlobalSearchHosting])
      {
        _designatedGlobalSearchColumn = [(_UISplitViewControllerAdaptiveImpl *)self _designatedGlobalSearchColumn];
      }

      else
      {
        _designatedGlobalSearchColumn = 999;
      }
    }

    else
    {
      _designatedGlobalSearchColumn = 0;
    }

    LOBYTE(_designatedGlobalSearchColumn) = v6 == _designatedGlobalSearchColumn;
  }

  return _designatedGlobalSearchColumn;
}

- (BOOL)isGlobalSearchRecipient:(id)recipient
{
  supportsGlobalSearchHosting = [(_UISplitViewControllerAdaptiveImpl *)self supportsGlobalSearchHosting];
  if (supportsGlobalSearchHosting)
  {
    _trailingmostColumnForGlobalSearchItems = [(_UISplitViewControllerAdaptiveImpl *)self _trailingmostColumnForGlobalSearchItems];
    LOBYTE(supportsGlobalSearchHosting) = _trailingmostColumnForGlobalSearchItems != 999 && [(_UISplitViewControllerAdaptiveImpl *)self _columnForViewController:recipient]== _trailingmostColumnForGlobalSearchItems;
  }

  return supportsGlobalSearchHosting;
}

- (id)globalSearchDonorViewController
{
  if ([(_UISplitViewControllerAdaptiveImpl *)self supportsGlobalSearchHosting])
  {
    if (self)
    {
      if ([(_UISplitViewControllerAdaptiveImpl *)self supportsGlobalSearchHosting])
      {
        _designatedGlobalSearchColumn = [(_UISplitViewControllerAdaptiveImpl *)self _designatedGlobalSearchColumn];
      }

      else
      {
        _designatedGlobalSearchColumn = 999;
      }
    }

    else
    {
      _designatedGlobalSearchColumn = 0;
    }

    v5 = [(_UISplitViewControllerAdaptiveImpl *)self navigationControllerForColumn:_designatedGlobalSearchColumn];
    topViewController = [v5 topViewController];
  }

  else
  {
    topViewController = 0;
  }

  return topViewController;
}

- (id)globalSearchController
{
  if ([(_UISplitViewControllerAdaptiveImpl *)self supportsGlobalSearchHosting])
  {
    globalSearchDonorViewController = [(_UISplitViewControllerAdaptiveImpl *)self globalSearchDonorViewController];
    navigationItem = [globalSearchDonorViewController navigationItem];
    _searchControllerIfAllowed = [navigationItem _searchControllerIfAllowed];
  }

  else
  {
    _searchControllerIfAllowed = 0;
  }

  return _searchControllerIfAllowed;
}

- (void)updateForGlobalSearchControllerChange
{
  if (self)
  {
    *&self->_implFlags &= ~0x100000000uLL;
  }

  scheduledLayout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa scheduledLayout];
  v4 = scheduledLayout;
  if (scheduledLayout)
  {
    layout = scheduledLayout;
  }

  else
  {
    layout = [(_UISplitViewControllerAdaptiveImpl *)&self->super.super.isa layout];
  }

  v6 = layout;

  if (([v6 isCollapsed] & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75___UISplitViewControllerAdaptiveImpl_updateForGlobalSearchControllerChange__block_invoke;
    v7[3] = &unk_1E710E630;
    v8 = v6;
    selfCopy = self;
    [v8 enumerateDisplayInOrder:1 withBlock:v7];
  }
}

- (void)showViewControllerForGlobalSearchController:(id)controller completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(_UISplitViewControllerAdaptiveImpl *)self _isCollapsed])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v14 = "[_UISplitViewControllerAdaptiveImpl showViewControllerForGlobalSearchController:completion:]";
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "%s incorrectly sent to a collapsed split view controller. Ignoring.", buf, 0xCu);
      }
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &showViewControllerForGlobalSearchController_completion____s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v14 = "[_UISplitViewControllerAdaptiveImpl showViewControllerForGlobalSearchController:completion:]";
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s incorrectly sent to a collapsed split view controller. Ignoring.", buf, 0xCu);
      }
    }

    (*(completion + 2))(completion, 0);
  }

  else
  {
    _designatedGlobalSearchColumn = [(_UISplitViewControllerAdaptiveImpl *)self _designatedGlobalSearchColumn];
    if (_designatedGlobalSearchColumn == 999)
    {
      v8 = *(completion + 2);

      v8(completion, 0);
    }

    else
    {
      [(_UISplitViewControllerAdaptiveImpl *)self showColumn:_designatedGlobalSearchColumn];
      transitionCoordinator = [(_UISplitViewControllerAdaptiveImpl *)self transitionCoordinator];
      v10 = transitionCoordinator;
      if (transitionCoordinator)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __93___UISplitViewControllerAdaptiveImpl_showViewControllerForGlobalSearchController_completion___block_invoke;
        v12[3] = &unk_1E70F3770;
        v12[4] = completion;
        [transitionCoordinator animateAlongsideTransition:0 completion:v12];
      }

      else
      {
        (*(completion + 2))(completion, 1);
      }
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p layout = %@; columns = %@>", v5, self, self->_layout, self->_columns];;

  return v6;
}

@end