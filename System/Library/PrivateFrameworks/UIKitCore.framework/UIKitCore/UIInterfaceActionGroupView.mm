@interface UIInterfaceActionGroupView
- (BOOL)_hasLoadedStackViewContents;
- (BOOL)_shouldAllowPassthroughToLayersBehindUsForTouches:(id)a3;
- (BOOL)_shouldShowSeparatorAboveActionsSequenceView;
- (CGRect)_actionSequenceVisibleRectForMakingCenteredAction:(id)a3;
- (CGRect)_contentEdgeFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)arrangedHeaderViews;
- (UIEdgeInsets)_buttonEdgeInsetsFromGroupViewEdge;
- (UIInterfaceActionGroupView)initWithActionGroup:(id)a3 actionHandlerInvocationDelegate:(id)a4;
- (UIInterfaceActionHandlerInvocationDelegate)actionHandlerInvocationDelegate;
- (UIInterfaceActionRepresentationView)preferredActionRepresentation;
- (UIInterfaceActionSelectionTrackingController)actionSelectionController;
- (UIInterfaceActionVisualStyleProviding)visualStyleProvider;
- (id)_actionRepresentationViewForAction:(id)a3;
- (id)_constraintsToPinView:(id)a3 toObject:(id)a4 identifier:(id)a5;
- (id)_currentlyFocusedActionView;
- (id)_defaultOrderingForActionRepresentationViews:(id)a3;
- (id)_initWithActionGroup:(id)a3 visualStyleProvider:(id)a4 actionHandlerInvocationDelegate:(id)a5;
- (id)_interfaceActionGroupViewState;
- (id)_interfaceActionOfFocusedRepresentationView;
- (id)_loadVisualStyleForTraitCollection:(id)a3;
- (id)_newActionGroupBackgroundView;
- (id)_newSeparatorViewForSeparatingTitleAndButtons;
- (id)_orderedTopLevelViews;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_visualStyleByApplyingOurTraitsToVisualStyle:(id)a3 traitCollection:(id)a4;
- (id)_widthAnchoredToContentGuideConstraintForTopLevelView:(id)a3;
- (int64_t)_actionLayoutAxisUnknowDisallowed;
- (void)_addBackgroudViewToViewHierarchy:(id)a3;
- (void)_addConstraintToActiveTopLevelViewArrangementConstraints:(id)a3;
- (void)_applyVisualStyle;
- (void)_applyVisualStyleCornerRadius;
- (void)_applyVisualStyleToActionsViewScrollView;
- (void)_applyVisualStyleToBackgroundViewDisplay;
- (void)_arrangeActionViewsInActionSequenceView;
- (void)_arrangeTopLevelViews;
- (void)_associateWeakSimultaneouslyPresentedGroupViews:(id)a3 bidirectional:(BOOL)a4;
- (void)_commonInitWithActionGroup:(id)a3 visualStyleProvider:(id)a4 actionHandlerInvocationDelegate:(id)a5;
- (void)_determineActualLayoutAxis;
- (void)_installContentGuideConstraints;
- (void)_loadActionSequenceView;
- (void)_loadTopLevelItemsView;
- (void)_loadViewsIfNeeded;
- (void)_reloadStackViewContentsIfNeeded;
- (void)_reloadTopSeparatorView;
- (void)_reloadVisualStyleTrackingTraitUsage;
- (void)_removeConstraintToActiveTopLevelViewArrangementConstraints:(id)a3;
- (void)_removeUsAsThePresentingViewControllerForAllActions;
- (void)_scrollActionRepresentationViewToVisibleForAction:(id)a3 animated:(BOOL)a4;
- (void)_scrollPreferredActionRepresentationViewToVisibleAnimated:(BOOL)a3;
- (void)_setAlignActionSeparatorLeadingEdgeWithContent:(BOOL)a3;
- (void)_setAndApplyVisualStyle:(id)a3;
- (void)_setDrawsBackground:(BOOL)a3;
- (void)_setLayoutDebuggingIdentifier:(id)a3;
- (void)_setSelectionHighlightContinuousCornerRadius:(double)a3;
- (void)_setUsAsThePresentingViewControllerForAllActions;
- (void)_setVisualStyleOverrideActionHighlightAttributes:(id)a3;
- (void)_setVisualStyleOverrideSeparatorAttributes:(id)a3;
- (void)_setVisualStyleOverrideTitleLabelFont:(id)a3;
- (void)_updateActionSequenceScrollability;
- (void)_updateActionSequenceViewActionLayoutAxis;
- (void)_updateActionSequenceViewDebugLayoutIdentifier;
- (void)_updateRequiredActionRepresentationSizeConstraints;
- (void)_updateRoundedCornerPositionForSubviews;
- (void)configureForDismissAlongsideTransitionCoordinator:(id)a3;
- (void)configureForPresentAlongsideTransitionCoordinator:(id)a3;
- (void)dealloc;
- (void)insertArrangedHeaderView:(id)a3 atIndex:(unint64_t)a4 scrollable:(BOOL)a5;
- (void)interfaceAction:(id)a3 invokeActionHandler:(id)a4 completion:(id)a5;
- (void)interfaceActionGroup:(id)a3 reloadDisplayedContentActionGroupProperties:(id)a4;
- (void)interfaceActionGroup:(id)a3 reloadDisplayedContentVisualStyle:(id)a4;
- (void)layoutSubviews;
- (void)removeArrangedHeaderView:(id)a3;
- (void)scrollToCenterForInterfaceAction:(id)a3;
- (void)setActionGroup:(id)a3;
- (void)setActionLayoutAxis:(int64_t)a3;
- (void)setActiveTestingVisualStyle:(id)a3;
- (void)setAllowedActionLayoutAxisByPriority:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPresentationStyle:(int64_t)a3;
- (void)setRequiredActionRepresentationWidth:(double)a3;
- (void)setScrubbingEnabled:(BOOL)a3;
- (void)setSimultaneouslyPresentedGroupViews:(id)a3;
- (void)setSpringLoaded:(BOOL)a3;
- (void)setVisualStyleProvider:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateConstraints;
@end

@implementation UIInterfaceActionGroupView

- (void)setFrame:(CGRect)a3
{
  v30.receiver = self;
  v30.super_class = UIInterfaceActionGroupView;
  [(UIView *)&v30 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(UIView *)self superview];
  if (v4 && dyld_program_sdk_at_least() && [(UIView *)self _usesAutoresizingConstraints])
  {
    v5 = [(UIView *)self _autoresizingConstraints];
    if ([v5 count] == 4)
    {
      [v4 bounds];
      [(UIView *)self _alignmentRectForBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      rect = v12;
      [(UIView *)self _alignmentFrame];
      v15 = v14;
      v28 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v5 objectAtIndexedSubscript:0];
      v31.origin.x = v15;
      v31.origin.y = v17;
      v31.size.width = v19;
      v31.size.height = v21;
      MinX = CGRectGetMinX(v31);
      v32.origin.x = v7;
      v32.origin.y = v9;
      v32.size.width = v11;
      v32.size.height = v13;
      [v22 setConstant:MinX - CGRectGetMinX(v32)];

      v24 = [v5 objectAtIndexedSubscript:1];
      v33.origin.x = v28;
      v33.origin.y = v17;
      v33.size.width = v19;
      v33.size.height = v21;
      [v24 setConstant:CGRectGetWidth(v33)];

      v25 = [v5 objectAtIndexedSubscript:2];
      v34.origin.x = v28;
      v34.origin.y = v17;
      v34.size.width = v19;
      v34.size.height = v21;
      MinY = CGRectGetMinY(v34);
      v35.origin.x = v7;
      v35.origin.y = v9;
      v35.size.width = v11;
      v35.size.height = rect;
      [v25 setConstant:MinY - CGRectGetMinY(v35)];

      v27 = [v5 objectAtIndexedSubscript:3];
      v36.origin.x = v28;
      v36.origin.y = v17;
      v36.size.width = v19;
      v36.size.height = v21;
      [v27 setConstant:CGRectGetHeight(v36)];
    }

    else
    {
      [(UIView *)self _invalidateAutoresizingConstraints];
    }
  }
}

- (void)_commonInitWithActionGroup:(id)a3 visualStyleProvider:(id)a4 actionHandlerInvocationDelegate:(id)a5
{
  v17 = a3;
  v9 = a4;
  objc_storeStrong(&self->_actionGroup, a3);
  v10 = a5;
  [(UIInterfaceActionGroup *)self->_actionGroup _addActionGroupDisplayPropertyObserver:self];
  [(UIInterfaceActionGroupView *)self _setUsAsThePresentingViewControllerForAllActions];
  v11 = [MEMORY[0x1E695DF70] array];
  arrangedScrollableHeaderViews = self->_arrangedScrollableHeaderViews;
  self->_arrangedScrollableHeaderViews = v11;

  objc_storeWeak(&self->_actionHandlerInvocationDelegate, v10);
  self->_presentationStyle = 0;
  self->_actionLayoutAxis = -1;
  allowedActionLayoutAxisByPriority = self->_allowedActionLayoutAxisByPriority;
  self->_allowedActionLayoutAxisByPriority = &unk_1EFE2B2C0;

  self->_focusAvoidsNonDefaultActionsIfPossible = 0;
  self->_drawsBackground = 1;
  self->_needsUpdateTopLevelViewsArrangement = 1;
  self->_needsUpdateActionSequenceViewArrangement = 1;
  self->_needsInitialViewLoading = 1;
  objc_storeStrong(&self->_cachedSizeCategory, @"_UICTContentSizeCategoryUnspecified");
  self->_scrubbingEnabled = 1;
  v14 = objc_alloc_init(_UIContentConstraintsLayoutGuide);
  contentGuide = self->_contentGuide;
  self->_contentGuide = v14;

  [(UIView *)self addLayoutGuide:self->_contentGuide];
  [(UIInterfaceActionGroupView *)self _installContentGuideConstraints];
  [(UIView *)self setOpaque:0];
  v16 = +[UIColor clearColor];
  [(UIView *)self setBackgroundColor:v16];

  [(UIView *)self setNeedsUpdateConstraints];
  [(UIInterfaceActionGroupView *)self _loadTopLevelItemsView];
  [(UIInterfaceActionGroupView *)self _loadActionSequenceView];
  if (v9)
  {
    [(UIInterfaceActionGroupView *)self setVisualStyleProvider:v9];
  }

  else
  {
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (UIInterfaceActionGroupView)initWithActionGroup:(id)a3 actionHandlerInvocationDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UIInterfaceActionGroupView;
  v8 = [(UIView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(UIInterfaceActionGroupView *)v8 _commonInitWithActionGroup:v6 visualStyleProvider:0 actionHandlerInvocationDelegate:v7];
  }

  return v9;
}

- (id)_initWithActionGroup:(id)a3 visualStyleProvider:(id)a4 actionHandlerInvocationDelegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = UIInterfaceActionGroupView;
  v11 = [(UIView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    [(UIInterfaceActionGroupView *)v11 _commonInitWithActionGroup:v8 visualStyleProvider:v9 actionHandlerInvocationDelegate:v10];
  }

  return v12;
}

- (void)dealloc
{
  [(UIInterfaceActionGroupView *)self _removeUsAsThePresentingViewControllerForAllActions];
  v3.receiver = self;
  v3.super_class = UIInterfaceActionGroupView;
  [(UIView *)&v3 dealloc];
}

- (void)setActionGroup:(id)a3
{
  v7 = a3;
  if (([v7 isEqual:self->_actionGroup] & 1) == 0)
  {
    [(UIInterfaceActionGroupView *)self _removeUsAsThePresentingViewControllerForAllActions];
    v5 = [v7 _visualStyle];

    if (!v5)
    {
      v6 = [(UIInterfaceActionGroup *)self->_actionGroup _visualStyle];
      [v7 _setVisualStyle:v6];
    }

    [(UIInterfaceActionGroup *)self->_actionGroup _removeActionGroupDisplayPropertyObserver:self];
    objc_storeStrong(&self->_actionGroup, a3);
    [(UIInterfaceActionGroup *)self->_actionGroup _addActionGroupDisplayPropertyObserver:self];
    [(UIInterfaceActionGroupView *)self _setUsAsThePresentingViewControllerForAllActions];
    [(UIInterfaceActionGroupView *)self _setNeedsUpdateTopLevelViewsArrangement];
    [(UIInterfaceActionGroupView *)self _setNeedsUpdateActionSequenceViewArrangement];
  }
}

- (void)setActionLayoutAxis:(int64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_actionLayoutAxis != a3)
  {
    self->_actionLayoutAxis = a3;
    [(UIInterfaceActionGroupView *)self _updateActionSequenceViewActionLayoutAxis];
    actionLayoutAxis = self->_actionLayoutAxis;
    v5 = [(UIInterfaceActionGroupView *)self _allActionViews];
    v6 = [v5 count];

    if (v6 == 1)
    {
      v7 = -1;
    }

    else
    {
      v7 = actionLayoutAxis;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(UIInterfaceActionGroupView *)self _allActionViews];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 actionViewStateContext];
          v15 = objc_opt_respondsToSelector();

          if (v15)
          {
            v16 = [v13 actionViewStateContext];
            [v16 setActionLayoutAxis:v7];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)setAllowedActionLayoutAxisByPriority:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_allowedActionLayoutAxisByPriority] & 1) == 0)
  {
    objc_storeStrong(&self->_allowedActionLayoutAxisByPriority, a3);
    [(UIInterfaceActionGroupView *)self setActionLayoutAxis:-1];
    [(UIView *)self setNeedsLayout];
    [(UIView *)self setNeedsUpdateConstraints];
  }
}

- (void)insertArrangedHeaderView:(id)a3 atIndex:(unint64_t)a4 scrollable:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [[_UIInterfaceActionGroupHeaderScrollView alloc] initWithContentView:v7];

  [(UIScrollView *)v8 setScrollEnabled:v5];
  [(NSMutableArray *)self->_arrangedScrollableHeaderViews addObject:v8];
  [(UIInterfaceActionGroupView *)self _arrangeTopLevelViews];
}

- (void)removeArrangedHeaderView:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionGroupView *)self arrangedHeaderViews];
  v6 = [v5 indexOfObjectIdenticalTo:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_arrangedScrollableHeaderViews removeObjectAtIndex:v6];

    [(UIInterfaceActionGroupView *)self _arrangeTopLevelViews];
  }
}

- (NSArray)arrangedHeaderViews
{
  v3 = [MEMORY[0x1E695DF70] array];
  arrangedScrollableHeaderViews = self->_arrangedScrollableHeaderViews;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__UIInterfaceActionGroupView_arrangedHeaderViews__block_invoke;
  v7[3] = &unk_1E70F3A38;
  v5 = v3;
  v8 = v5;
  [(NSMutableArray *)arrangedScrollableHeaderViews enumerateObjectsUsingBlock:v7];

  return v5;
}

void __49__UIInterfaceActionGroupView_arrangedHeaderViews__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 contentView];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 contentView];
    [v4 addObject:v5];
  }
}

- (void)setPresentationStyle:(int64_t)a3
{
  if (self->_presentationStyle != a3)
  {
    self->_presentationStyle = a3;
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (void)setScrubbingEnabled:(BOOL)a3
{
  if (self->_scrubbingEnabled != a3)
  {
    self->_scrubbingEnabled = a3;
    [(UIInterfaceActionSelectionTrackingController *)self->_actionSelectionController setScrubbingEnabled:?];
  }
}

- (void)scrollToCenterForInterfaceAction:(id)a3
{
  v4 = a3;
  [(UIInterfaceActionGroupView *)self _scrollActionRepresentationViewToVisibleForAction:v4 animated:+[UIView areAnimationsEnabled]];
}

- (void)configureForPresentAlongsideTransitionCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionGroupView *)self visualStyle];
  [v5 configureForPresentingGroupView:self alongsideTransitionCoordinator:v4];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__UIInterfaceActionGroupView_configureForPresentAlongsideTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__UIInterfaceActionGroupView_configureForPresentAlongsideTransitionCoordinator___block_invoke_2;
    v8[3] = &unk_1E70F3770;
    v9 = v6;
    [v4 animateAlongsideTransition:v8 completion:0];
  }

  else
  {
    v6[2](v6);
  }
}

- (void)configureForDismissAlongsideTransitionCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionGroupView *)self visualStyle];
  [v5 configureForDismissingGroupView:self alongsideTransitionCoordinator:v4];
}

- (void)setRequiredActionRepresentationWidth:(double)a3
{
  if (self->_requiredActionRepresentationWidth != a3)
  {
    self->_requiredActionRepresentationWidth = a3;
    [(UIInterfaceActionGroupView *)self _updateRequiredActionRepresentationSizeConstraints];
  }
}

- (UIEdgeInsets)_buttonEdgeInsetsFromGroupViewEdge
{
  v3 = [(UIInterfaceActionGroupView *)self visualStyle];
  [v3 actionSequenceEdgeInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(UIInterfaceActionGroupView *)self actionSequenceView];
  [v12 layoutMargins];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v5 + v14;
  v22 = v7 + v16;
  v23 = v9 + v18;
  v24 = v11 + v20;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (void)_updateRequiredActionRepresentationSizeConstraints
{
  if (self->_requiredActionRepresentationWidth <= 0.0)
  {
    [(UIInterfaceActionGroupView *)self _removeConstraintToActiveTopLevelViewArrangementConstraints:self->_actionSequenceViewWidthAnchoredToConstantConstraint];
    actionSequenceViewWidthAnchoredToContentGuideConstraint = self->_actionSequenceViewWidthAnchoredToContentGuideConstraint;

    [(UIInterfaceActionGroupView *)self _addConstraintToActiveTopLevelViewArrangementConstraints:actionSequenceViewWidthAnchoredToContentGuideConstraint];
  }

  else
  {
    [(UIInterfaceActionGroupView *)self _buttonEdgeInsetsFromGroupViewEdge];
    [(NSLayoutConstraint *)self->_actionSequenceViewWidthAnchoredToConstantConstraint setConstant:v4 + self->_requiredActionRepresentationWidth + v3];
    [(UIInterfaceActionGroupView *)self _addConstraintToActiveTopLevelViewArrangementConstraints:self->_actionSequenceViewWidthAnchoredToConstantConstraint];
    v5 = self->_actionSequenceViewWidthAnchoredToContentGuideConstraint;

    [(UIInterfaceActionGroupView *)self _removeConstraintToActiveTopLevelViewArrangementConstraints:v5];
  }
}

- (void)_addConstraintToActiveTopLevelViewArrangementConstraints:(id)a3
{
  v4 = a3;
  [v4 setActive:1];
  v8 = [(NSArray *)self->_topLevelViewArrangementConstraints mutableCopy];
  [v8 addObject:v4];

  v6 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v8, v5);
  topLevelViewArrangementConstraints = self->_topLevelViewArrangementConstraints;
  self->_topLevelViewArrangementConstraints = v6;
}

- (void)_removeConstraintToActiveTopLevelViewArrangementConstraints:(id)a3
{
  v4 = a3;
  [v4 setActive:0];
  v5 = [(NSArray *)self->_topLevelViewArrangementConstraints mutableCopy];
  [(NSArray *)v5 removeObject:v4];

  topLevelViewArrangementConstraints = self->_topLevelViewArrangementConstraints;
  self->_topLevelViewArrangementConstraints = v5;
}

- (id)_currentlyFocusedActionView
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView arrangedActionRepresentationViews];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isFocused])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (UIInterfaceActionRepresentationView)preferredActionRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(UIInterfaceActionGroupView *)self _currentlyFocusedActionView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__4;
    v30 = __Block_byref_object_dispose__4;
    v31 = 0;
    v6 = [(UIInterfaceActionGroupView *)self actionGroup];
    v7 = [v6 preferredAction];

    if ([v7 isEnabled])
    {
      v8 = v27;
      v9 = v7;
      v10 = v8[5];
      v8[5] = v9;
    }

    else if ([(UIInterfaceActionGroupView *)self focusAvoidsNonDefaultActionsIfPossible])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = [(UIInterfaceActionGroupView *)self actionGroup];
      v12 = [v11 actions];

      v13 = [v12 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v13)
      {
        v10 = 0;
        v14 = *v23;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            if ([v16 isEnabled])
            {
              if ([v16 type] != 2 && objc_msgSend(v16, "type") != 1)
              {
                v5 = [(UIInterfaceActionGroupView *)self _actionRepresentationViewForAction:v16];

                goto LABEL_24;
              }

              if (!v10)
              {
                if ([v16 type] == 1)
                {
                  v10 = v16;
                }

                else
                {
                  v10 = 0;
                }
              }
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v22 objects:v32 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

        if (v10)
        {
          v17 = 0;
          v18 = v10;
          goto LABEL_31;
        }
      }

      else
      {
      }

      v12 = [(UIInterfaceActionGroupView *)self actionGroup];
      v13 = [v12 actions];
      v18 = [v13 firstObject];
      v10 = 0;
      v17 = 1;
LABEL_31:
      objc_storeStrong(v27 + 5, v18);
      if (v17)
      {
      }
    }

    else
    {
      v10 = [(UIInterfaceActionGroupView *)self actionGroup];
      v19 = [v10 actions];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __59__UIInterfaceActionGroupView_preferredActionRepresentation__block_invoke;
      v21[3] = &unk_1E70F3A60;
      v21[4] = &v26;
      [v19 enumerateObjectsUsingBlock:v21];
    }

    v5 = [(UIInterfaceActionGroupView *)self _actionRepresentationViewForAction:v27[5]];
LABEL_24:

    _Block_object_dispose(&v26, 8);
  }

  return v5;
}

void __59__UIInterfaceActionGroupView_preferredActionRepresentation__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isEnabled])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if ((v4 & 0x10) != 0)
  {
    v5 = _UIFocusGroupIdentifierForInstance(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIInterfaceActionGroupView;
    v5 = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

- (void)interfaceActionGroup:(id)a3 reloadDisplayedContentActionGroupProperties:(id)a4
{
  v8 = a4;
  if ([UIInterfaceAction changedProperties:"changedProperties:containsAny:" containsAny:?])
  {
    [(UIView *)self setNeedsFocusUpdate];
  }

  if ([UIInterfaceAction changedProperties:v8 containsAny:&unk_1EFE2B2F0])
  {
    [(UIInterfaceActionGroupView *)self _setNeedsUpdateActionSequenceViewArrangement];
  }

  v5 = [(UIInterfaceActionGroupView *)self visualStyle];
  v6 = [v5 actionGroupPropertiesAffectingActionsScrollViewStyling];
  v7 = [UIInterfaceActionGroup changedProperties:v8 containsAny:v6];

  if (v7)
  {
    [(UIInterfaceActionGroupView *)self _applyVisualStyleToActionsViewScrollView];
  }
}

- (void)interfaceActionGroup:(id)a3 reloadDisplayedContentVisualStyle:(id)a4
{
  v5 = a4;
  v7 = [(UIView *)self traitCollection];
  v6 = [(UIInterfaceActionGroupView *)self _visualStyleByApplyingOurTraitsToVisualStyle:v5 traitCollection:v7];

  [(UIInterfaceActionGroupView *)self _setAndApplyVisualStyle:v6];
}

- (void)setActiveTestingVisualStyle:(id)a3
{
  objc_storeStrong(&self->_activeTestingVisualStyle, a3);

  [(UIInterfaceActionGroupView *)self reloadVisualStyle];
}

- (void)setVisualStyleProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_visualStyleProvider);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_visualStyleProvider, obj);
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
    v5 = obj;
  }
}

- (void)_setAndApplyVisualStyle:(id)a3
{
  v4 = a3;
  if (!self->_isSettingVisualStyle)
  {
    self->_isSettingVisualStyle = 1;
    v7 = v4;
    v5 = [(UIInterfaceActionGroup *)self->_actionGroup _visualStyle];
    v6 = [v5 isEqual:v7];

    if ((v6 & 1) == 0)
    {
      [(UIInterfaceActionGroup *)self->_actionGroup _setVisualStyle:v7];
      [(UIInterfaceActionGroupView *)self _applyVisualStyle];
    }

    self->_isSettingVisualStyle = 0;
    v4 = v7;
  }
}

- (void)_reloadVisualStyleTrackingTraitUsage
{
  v3 = [(UIView *)self traitCollection];
  v6 = [(UIInterfaceActionGroupView *)self _loadVisualStyleForTraitCollection:v3];

  v4 = [(UIInterfaceActionGroup *)self->_actionGroup _visualStyle];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(UIInterfaceActionGroupView *)self _setAndApplyVisualStyle:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v23 = *MEMORY[0x1E69E9840];
  if (self->_presentationStyle == 2)
  {
    [(UIView *)self updateConstraintsIfNeeded:a3.width];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(UIView *)self->_topLevelItemsView subviews];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v18 + 1) + 8 * i) systemLayoutSizeFittingSize:{width, v9}];
          v9 = v9 + v11;
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }

    v14 = [(UIInterfaceActionGroupView *)self visualStyle];
    [v14 maximumActionGroupContentSize];
    v16 = v15;

    if (v9 >= v16)
    {
      v12 = v16;
    }

    else
    {
      v12 = v9;
    }
  }

  else
  {
    [(UIView *)self systemLayoutSizeFittingSize:a3.width, a3.height];
    width = v13;
  }

  v17 = width;
  result.height = v12;
  result.width = v17;
  return result;
}

- (void)updateConstraints
{
  [(UIInterfaceActionGroupView *)self _reloadStackViewContentsIfNeeded];
  v3.receiver = self;
  v3.super_class = UIInterfaceActionGroupView;
  [(UIView *)&v3 updateConstraints];
}

- (void)layoutSubviews
{
  [(UIInterfaceActionGroupView *)self _reloadStackViewContentsIfNeeded];
  [(UIInterfaceActionGroupView *)self _determineActualLayoutAxis];
  v4.receiver = self;
  v4.super_class = UIInterfaceActionGroupView;
  [(UIView *)&v4 layoutSubviews];
  [(UIView *)self sendSubviewToBack:self->_backgroundView];
  backgroundView = self->_backgroundView;
  [(UIInterfaceActionGroupView *)self _contentEdgeFrame];
  [(UIView *)backgroundView setFrame:?];
}

- (BOOL)_shouldAllowPassthroughToLayersBehindUsForTouches:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__UIInterfaceActionGroupView__shouldAllowPassthroughToLayersBehindUsForTouches___block_invoke;
  v6[3] = &unk_1E70F3A88;
  v6[4] = self;
  v3 = [a3 objectsPassingTest:v6];
  v4 = [v3 count] == 0;

  return v4;
}

uint64_t __80__UIInterfaceActionGroupView__shouldAllowPassthroughToLayersBehindUsForTouches___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  [a2 locationInView:*(a1 + 32)];
  result = [*(a1 + 32) pointInside:0 withEvent:?];
  *a3 = result;
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIInterfaceActionGroupView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:v6])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionGroupView;
    [(UIResponder *)&v8 touchesBegan:v6 withEvent:v7];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIInterfaceActionGroupView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:v6])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionGroupView;
    [(UIResponder *)&v8 touchesMoved:v6 withEvent:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIInterfaceActionGroupView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:v6])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionGroupView;
    [(UIResponder *)&v8 touchesEnded:v6 withEvent:v7];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIInterfaceActionGroupView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:v6])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionGroupView;
    [(UIResponder *)&v8 touchesCancelled:v6 withEvent:v7];
  }
}

- (void)setSpringLoaded:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  self->_springLoaded = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView arrangedActionRepresentationViews];
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

        [*(*(&v9 + 1) + 8 * v8++) setSpringLoaded:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)interfaceAction:(id)a3 invokeActionHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_actionHandlerInvocationDelegate);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained interfaceAction:v8 invokeActionHandler:v9 completion:v10];
  }

  else
  {
    if (v8)
    {
      v13 = 0;
      v9[2](v9, v8, &v13);
    }

    if (v10)
    {
      v10[2](v10);
    }
  }
}

- (void)setSimultaneouslyPresentedGroupViews:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addPointer:{*(*(&v11 + 1) + 8 * v10++), v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(UIInterfaceActionGroupView *)self _associateWeakSimultaneouslyPresentedGroupViews:v5 bidirectional:1];
}

- (void)_associateWeakSimultaneouslyPresentedGroupViews:(id)a3 bidirectional:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  [v7 compact];
  if (([(NSPointerArray *)self->_weakSimultaneouslyPresentedGroupViews isEqual:v7]& 1) == 0)
  {
    objc_storeStrong(&self->_weakSimultaneouslyPresentedGroupViews, a3);
    v8 = v7;
    [v8 compact];
    v9 = [MEMORY[0x1E695DF70] array];
    if ([v8 count])
    {
      v10 = 0;
      do
      {
        v11 = [objc_msgSend(v8 pointerAtIndex:{v10), "actionSelectionController"}];
        if (v11)
        {
          [v9 addObject:v11];
        }

        ++v10;
      }

      while (v10 < [v8 count]);
    }

    [(UIInterfaceActionSelectionTrackingController *)self->_actionSelectionController setCooperatingSelectionTrackingControllers:v9];
    if (v4)
    {
      v12 = [(NSPointerArray *)self->_weakSimultaneouslyPresentedGroupViews allObjects];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __92__UIInterfaceActionGroupView__associateWeakSimultaneouslyPresentedGroupViews_bidirectional___block_invoke;
      v13[3] = &unk_1E70F3AB0;
      v14 = v8;
      v15 = self;
      [v12 enumerateObjectsUsingBlock:v13];
    }
  }
}

void __92__UIInterfaceActionGroupView__associateWeakSimultaneouslyPresentedGroupViews_bidirectional___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) copy];
  [v4 compact];
  v5 = [MEMORY[0x1E696AD50] indexSet];
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      if ([v4 pointerAtIndex:v6] == v3)
      {
        [v5 addIndex:v6];
      }

      ++v6;
    }

    while (v6 < [v4 count]);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___pointerArrayRemovePointer_block_invoke;
  v8[3] = &unk_1E70F3B48;
  v9 = v4;
  v7 = v4;
  [v5 enumerateIndexesWithOptions:2 usingBlock:v8];

  [v7 addPointer:*(a1 + 40)];
  [v3 _associateWeakSimultaneouslyPresentedGroupViews:v7 bidirectional:0];
}

- (id)_newActionGroupBackgroundView
{
  v3 = [(UIInterfaceActionGroupView *)self visualStyle];
  v4 = [(UIInterfaceActionGroupView *)self visualStyle];
  v5 = [v4 groupViewState];
  v6 = [v3 newGroupBackgroundViewWithGroupViewState:v5];

  return v6;
}

- (id)_interfaceActionOfFocusedRepresentationView
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(UIInterfaceActionGroupView *)self _allActionViews];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isFocused])
        {
          v3 = [v6 action];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_installContentGuideConstraints
{
  v19[4] = *MEMORY[0x1E69E9840];
  [(UIInterfaceActionGroupView *)self _topLevelItemsMargin];
  v4 = v3;
  if ([(UIInterfaceActionGroupView *)self _shouldInstallContentGuideConstraints])
  {
    v18 = [(UIView *)self topAnchor];
    v17 = [(UILayoutGuide *)self->_contentGuide topAnchor];
    v16 = [v18 constraintEqualToAnchor:v17 constant:-v4];
    v19[0] = v16;
    v5 = [(UIView *)self bottomAnchor];
    v6 = [(UILayoutGuide *)self->_contentGuide bottomAnchor];
    v7 = [v5 constraintEqualToAnchor:v6 constant:v4];
    v19[1] = v7;
    v8 = [(UIView *)self leadingAnchor];
    v9 = [(UILayoutGuide *)self->_contentGuide leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:-v4];
    v19[2] = v10;
    v11 = [(UIView *)self trailingAnchor];
    v12 = [(UILayoutGuide *)self->_contentGuide trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:v4];
    v19[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];

    [MEMORY[0x1E69977A0] activateConstraints:v14];
  }

  else
  {
    contentGuide = self->_contentGuide;

    [(_UIContentConstraintsLayoutGuide *)contentGuide setEdgeInsets:v4, v4, v4, v4];
  }
}

- (void)_reloadStackViewContentsIfNeeded
{
  v3 = [(UIInterfaceActionGroupView *)self visualStyle];

  if (v3)
  {
    [(UIInterfaceActionGroupView *)self _loadViewsIfNeeded];
    [(UIInterfaceActionGroupView *)self _reloadTopSeparatorView];
    if (self->_needsUpdateTopLevelViewsArrangement)
    {
      [(UIInterfaceActionGroupView *)self _arrangeTopLevelViews];
    }

    if (self->_needsUpdateActionSequenceViewArrangement)
    {
      [(UIInterfaceActionGroupView *)self _arrangeActionViewsInActionSequenceView];
    }

    [(UIInterfaceActionGroupView *)self _updateRoundedCornerPositionForSubviews];
  }
}

- (void)_updateRoundedCornerPositionForSubviews
{
  if ([(UIInterfaceActionGroupView *)self _shouldShowSeparatorAboveActionsSequenceView])
  {
    v3 = 12;
  }

  else
  {
    v3 = 15;
  }

  actionSequenceView = self->_actionSequenceView;

  [(_UIInterfaceActionRepresentationsSequenceView *)actionSequenceView setVisualCornerPosition:v3];
}

- (void)_loadTopLevelItemsView
{
  v3 = objc_opt_new();
  topLevelItemsView = self->_topLevelItemsView;
  self->_topLevelItemsView = v3;

  [(UIView *)self->_topLevelItemsView setClipsToBounds:1];
  [(UIView *)self->_topLevelItemsView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self addSubview:self->_topLevelItemsView];
  v5 = MEMORY[0x1E69977A0];
  v6 = [(UIInterfaceActionGroupView *)self _constraintsToPinView:self->_topLevelItemsView toObject:self->_contentGuide identifier:@"topLevelItemsFrame"];
  [v5 activateConstraints:v6];
}

- (void)_loadActionSequenceView
{
  v3 = [_UIInterfaceActionRepresentationsSequenceView alloc];
  v4 = [(UIInterfaceActionGroupView *)self visualStyle];
  v5 = [(_UIInterfaceActionRepresentationsSequenceView *)v3 initWithVisualStyle:v4];
  actionSequenceView = self->_actionSequenceView;
  self->_actionSequenceView = v5;

  [(UIInterfaceActionGroupView *)self _updateActionSequenceViewDebugLayoutIdentifier];
  [(UIView *)self->_actionSequenceView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1144733696;
  [(UIView *)self->_actionSequenceView setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [(UIView *)self->_actionSequenceView setContentHuggingPriority:1 forAxis:v8];
  v9 = [(UIView *)self->_actionSequenceView widthAnchor];
  v10 = [v9 constraintEqualToConstant:0.0];
  actionSequenceViewWidthAnchoredToConstantConstraint = self->_actionSequenceViewWidthAnchoredToConstantConstraint;
  self->_actionSequenceViewWidthAnchoredToConstantConstraint = v10;

  v15 = [(UIView *)self->_actionSequenceView widthAnchor];
  v12 = [(UILayoutGuide *)self->_contentGuide widthAnchor];
  v13 = [v15 constraintEqualToAnchor:v12];
  actionSequenceViewWidthAnchoredToContentGuideConstraint = self->_actionSequenceViewWidthAnchoredToContentGuideConstraint;
  self->_actionSequenceViewWidthAnchoredToContentGuideConstraint = v13;
}

- (void)_setLayoutDebuggingIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIInterfaceActionGroupView;
  [(UIView *)&v4 _setLayoutDebuggingIdentifier:a3];
  [(UIInterfaceActionGroupView *)self _updateActionSequenceViewDebugLayoutIdentifier];
}

- (void)_updateActionSequenceViewDebugLayoutIdentifier
{
  actionSequenceView = self->_actionSequenceView;
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UIView *)self _layoutDebuggingIdentifier];
  v5 = @"groupView";
  if (v4)
  {
    v5 = v4;
  }

  v7 = v4;
  v6 = [v3 stringWithFormat:@"%@.actionsSequenceView", v5];
  [(UIView *)actionSequenceView _setLayoutDebuggingIdentifier:v6];
}

- (void)_loadViewsIfNeeded
{
  if (self->_needsInitialViewLoading)
  {
    self->_needsInitialViewLoading = 0;
    v4 = [[UIInterfaceActionSelectionTrackingController alloc] initWithTrackableContainerView:self actionsScrollView:self->_actionSequenceView];
    actionSelectionController = self->_actionSelectionController;
    self->_actionSelectionController = v4;

    [(UIInterfaceActionSelectionTrackingController *)self->_actionSelectionController setScrubbingEnabled:[(UIInterfaceActionGroupView *)self scrubbingEnabled]];
    [(UIInterfaceActionGroupView *)self _arrangeTopLevelViews];

    [(UIInterfaceActionGroupView *)self _applyVisualStyle];
  }
}

- (UIInterfaceActionSelectionTrackingController)actionSelectionController
{
  [(UIInterfaceActionGroupView *)self _loadViewsIfNeeded];
  actionSelectionController = self->_actionSelectionController;

  return actionSelectionController;
}

- (void)_arrangeTopLevelViews
{
  v73 = *MEMORY[0x1E69E9840];
  self->_needsUpdateTopLevelViewsArrangement = 0;
  [(UIInterfaceActionGroupView *)self _loadViewsIfNeeded];
  v57 = [(UIInterfaceActionGroupView *)self _viewContainingTopLevelItems];
  v3 = [v57 subviews];
  v4 = [v3 mutableCopy];

  v5 = [(UIInterfaceActionGroupView *)self _orderedTopLevelViews];
  v6 = [v5 mutableCopy];

  v7 = [(UIView *)self traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (![v4 isEqual:v6] || v8 != self->_cachedSizeCategory)
  {
    objc_storeStrong(&self->_cachedSizeCategory, v8);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v66 objects:v72 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v67;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v67 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v66 + 1) + 8 * i);
          if (([v6 containsObject:v14] & 1) == 0)
          {
            [v14 removeFromSuperview];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v66 objects:v72 count:16];
      }

      while (v11);
    }

    if ([v6 count])
    {
      v53 = v8;
      v55 = v4;
      v15 = [MEMORY[0x1E695DF70] array];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v54 = v6;
      obj = v6;
      v16 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = *v63;
        do
        {
          v20 = 0;
          v21 = v18;
          do
          {
            if (*v63 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v62 + 1) + 8 * v20);
            [v57 addSubview:v22];
            if (v21)
            {
              v23 = [v22 topAnchor];
              v24 = [v21 bottomAnchor];
              v25 = [v23 constraintEqualToAnchor:v24];
              [v15 addObject:v25];
            }

            v26 = [v22 centerXAnchor];
            v27 = [(UILayoutGuide *)self->_contentGuide centerXAnchor];
            v28 = [v26 constraintEqualToAnchor:v27];
            [v15 addObject:v28];

            v29 = [(UIInterfaceActionGroupView *)self _widthAnchoredToContentGuideConstraintForTopLevelView:v22];
            [v15 addObject:v29];

            v18 = v22;
            ++v20;
            v21 = v18;
          }

          while (v17 != v20);
          v17 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
        }

        while (v17);
      }

      else
      {
        v18 = 0;
      }

      v30 = [obj firstObject];
      v31 = [v30 topAnchor];
      v32 = [(UILayoutGuide *)self->_contentGuide topAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      [v15 addObject:v33];

      v34 = [obj lastObject];
      v35 = [v34 bottomAnchor];
      v36 = [(UILayoutGuide *)self->_contentGuide bottomAnchor];
      v37 = [v35 constraintEqualToAnchor:v36];
      [v15 addObject:v37];

      if (UIContentSizeCategoryIsAccessibilityCategory(self->_cachedSizeCategory))
      {
        v38 = [(UIView *)self->_actionSequenceView heightAnchor];
        v39 = [(UILayoutGuide *)self->_contentGuide heightAnchor];
        v40 = [v38 constraintEqualToAnchor:v39 multiplier:0.5];

        LODWORD(v41) = 1132003328;
        [(NSMutableArray *)v40 setPriority:v41];
        [v15 addObject:v40];
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v40 = self->_arrangedScrollableHeaderViews;
        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v58 objects:v70 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v59;
          do
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v59 != v44)
              {
                objc_enumerationMutation(v40);
              }

              v46 = [*(*(&v58 + 1) + 8 * j) heightAnchor];
              v47 = [(UIView *)self->_actionSequenceView heightAnchor];
              v48 = [v46 constraintGreaterThanOrEqualToAnchor:v47 multiplier:1.5];

              LODWORD(v49) = 1132003328;
              [v48 setPriority:v49];
              [v15 addObject:v48];
            }

            v43 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v58 objects:v70 count:16];
          }

          while (v43);
        }
      }

      [MEMORY[0x1E69977A0] deactivateConstraints:self->_topLevelViewArrangementConstraints];
      v51 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v15, v50);
      topLevelViewArrangementConstraints = self->_topLevelViewArrangementConstraints;
      self->_topLevelViewArrangementConstraints = v51;

      [MEMORY[0x1E69977A0] activateConstraints:v15];
      [(UIView *)self setNeedsLayout];

      v6 = v54;
      v4 = v55;
      v8 = v53;
    }
  }
}

- (id)_widthAnchoredToContentGuideConstraintForTopLevelView:(id)a3
{
  if (self->_actionSequenceView == a3)
  {
    v6 = self->_actionSequenceViewWidthAnchoredToContentGuideConstraint;
  }

  else
  {
    v4 = [a3 widthAnchor];
    v5 = [(UILayoutGuide *)self->_contentGuide widthAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];
  }

  return v6;
}

- (id)_orderedTopLevelViews
{
  v3 = [(UIInterfaceActionGroupView *)self arrangedScrollableHeaderViews];
  v4 = v3;
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v5 = [v3 mutableCopy];

  if (self->_actionSequenceView)
  {
    if (self->_actionSequenceTopSeparatorView)
    {
      v6 = [(UIInterfaceActionGroup *)self->_actionGroup actions];
      v7 = [v6 count];

      if (v7)
      {
        [v5 addObject:self->_actionSequenceTopSeparatorView];
      }
    }

    [v5 addObject:self->_actionSequenceView];
  }

  return v5;
}

- (BOOL)_hasLoadedStackViewContents
{
  v2 = [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView arrangedActionRepresentationViews];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_arrangeActionViewsInActionSequenceView
{
  v55 = *MEMORY[0x1E69E9840];
  self->_needsUpdateActionSequenceViewArrangement = 0;
  v34 = [(UIInterfaceActionGroupView *)self visualStyle];
  v3 = [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView arrangedActionRepresentationViews];
  v36 = [v3 mutableCopy];

  v37 = [MEMORY[0x1E695DF70] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v4 = self;
  obj = [(UIInterfaceActionGroup *)self->_actionGroup actionsBySection];
  v32 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v32)
  {
    v31 = *v47;
    do
    {
      v5 = 0;
      do
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v5;
        v6 = *(*(&v46 + 1) + 8 * v5);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v35 = [v6 actions];
        v7 = [v35 countByEnumeratingWithState:&v42 objects:v53 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v43;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v43 != v9)
              {
                objc_enumerationMutation(v35);
              }

              v11 = *(*(&v42 + 1) + 8 * i);
              v12 = v36;
              v13 = v11;
              v50[0] = MEMORY[0x1E69E9820];
              v50[1] = 3221225472;
              v50[2] = ___dequeueRepresentationViewWithIdenticalAction_block_invoke;
              v50[3] = &unk_1E70F3B70;
              v51 = v13;
              v14 = v13;
              v15 = [v12 indexOfObjectPassingTest:v50];
              if (v15 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v16 = 0;
              }

              else
              {
                v17 = v15;
                v16 = [v12 objectAtIndexedSubscript:v15];
                [v12 removeObjectAtIndex:v17];
              }

              if (!v16)
              {
                v18 = [v34 concreteVisualStyle];
                v16 = [v18 newRepresentationViewForAction:v14];
              }

              [v16 setOwnsActionContent:1];
              [v16 setSpringLoaded:{-[UIInterfaceActionGroupView isSpringLoaded](v4, "isSpringLoaded")}];
              [v37 addObject:v16];
              v19 = [v6 sectionID];
              [v16 setSectionID:v19];
            }

            v8 = [v35 countByEnumeratingWithState:&v42 objects:v53 count:16];
          }

          while (v8);
        }

        v5 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v32);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v36;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v38 + 1) + 8 * j) setOwnsActionContent:0];
      }

      v22 = [v20 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v22);
  }

  v25 = [(UIInterfaceActionGroupView *)v4 _defaultOrderingForActionRepresentationViews:v37];
  v26 = [(_UIInterfaceActionRepresentationsSequenceView *)v4->_actionSequenceView arrangedActionRepresentationViews];
  v27 = [v26 isEqual:v25];

  if ((v27 & 1) == 0)
  {
    [(_UIInterfaceActionRepresentationsSequenceView *)v4->_actionSequenceView setArrangedActionRepresentationViews:v25];
    actionSelectionController = v4->_actionSelectionController;
    v29 = [(_UIInterfaceActionRepresentationsSequenceView *)v4->_actionSequenceView arrangedActionRepresentationViews];
    [(UIInterfaceActionSelectionTrackingController *)actionSelectionController setRepresentationViews:v29];

    [(UIInterfaceActionGroupView *)v4 _actionSequenceViewContentSizeDidChange];
  }

  [(UIInterfaceActionGroupView *)v4 _updateActionSequenceScrollability];
}

- (void)_updateActionSequenceScrollability
{
  v3 = [(UIInterfaceActionGroupView *)self actionGroup];
  v4 = [v3 actions];
  v5 = [v4 count] >= 2 && -[UIInterfaceActionGroupView _actionLayoutAxisUnknownDisallowedIsVertical](self, "_actionLayoutAxisUnknownDisallowedIsVertical");

  actionSequenceView = self->_actionSequenceView;

  [(UIScrollView *)actionSequenceView setScrollEnabled:v5];
}

- (void)_determineActualLayoutAxis
{
  v29 = *MEMORY[0x1E69E9840];
  [(UIInterfaceActionGroupView *)self _loadViewsIfNeeded];
  [(UIInterfaceActionGroupView *)self _reloadStackViewContentsIfNeeded];
  v3 = [(UIInterfaceActionGroupView *)self actionLayoutAxis];
  v4 = [(UIInterfaceActionGroupView *)self allowedActionLayoutAxisByPriority];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [(UIInterfaceActionGroupView *)self allowedActionLayoutAxisByPriority];
    v7 = [(NSArray *)v6 firstObject];
    v3 = [v7 integerValue];
  }

  else
  {
    v8 = [(UIInterfaceActionGroupView *)self visualStyle];
    [v8 maximumActionGroupContentSize];
    v10 = v9;

    v11 = [(UIView *)self window];

    if (v11)
    {
      v12 = [(UIView *)self window];
      [v12 frame];
      v14 = v13;

      if (v10 >= v14)
      {
        v10 = v14;
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = self->_allowedActionLayoutAxisByPriority;
    v15 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v6);
          }

          v19 = [*(*(&v24 + 1) + 8 * i) integerValue];
          [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView fittingWidthForLayoutAxis:v19];
          if (v20 < v10)
          {
            v3 = v19;
            goto LABEL_16;
          }
        }

        v16 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_16:

  v21 = [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView arrangedActionRepresentationViews];
  actionSequenceView = self->_actionSequenceView;
  v23 = [(UIInterfaceActionGroupView *)self _defaultOrderingForActionRepresentationViews:v21];
  [(_UIInterfaceActionRepresentationsSequenceView *)actionSequenceView setArrangedActionRepresentationViews:v23];

  [(UIInterfaceActionGroupView *)self setActionLayoutAxis:v3];
}

- (void)_reloadTopSeparatorView
{
  obj = [(UIInterfaceActionGroupView *)self _newSeparatorViewForSeparatingTitleAndButtons];
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    objc_storeStrong(&self->_actionSequenceTopSeparatorView, obj);
    [(UISeparatorDisplaying *)self->_actionSequenceTopSeparatorView setConstantSizedAxis:1];
    [(UIInterfaceActionGroupView *)self _arrangeTopLevelViews];
  }
}

- (id)_newSeparatorViewForSeparatingTitleAndButtons
{
  if (![(UIInterfaceActionGroupView *)self _shouldShowSeparatorAboveActionsSequenceView])
  {
    return 0;
  }

  v3 = [(UIInterfaceActionGroupView *)self visualStyle];
  v4 = [(UIInterfaceActionGroupView *)self _interfaceActionGroupViewState];
  v5 = [v3 newActionSeparatorViewForGroupViewState:v4];

  return v5;
}

- (id)_interfaceActionGroupViewState
{
  v2 = [(UIInterfaceActionGroupView *)self visualStyle];
  v3 = [v2 groupViewState];

  return v3;
}

- (id)_loadVisualStyleForTraitCollection:(id)a3
{
  v4 = a3;
  activeTestingVisualStyle = self->_activeTestingVisualStyle;
  if (activeTestingVisualStyle)
  {
    v6 = activeTestingVisualStyle;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_visualStyleProvider);

    if (!WeakRetained || (v8 = objc_loadWeakRetained(&self->_visualStyleProvider), [v8 visualStyleForTraitCollection:v4], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
    {
      v9 = [(UIInterfaceActionGroupView *)self defaultVisualStyleForTraitCollection:v4 presentationStyle:self->_presentationStyle];
    }

    v6 = [(UIInterfaceActionGroupView *)self _visualStyleByApplyingOurTraitsToVisualStyle:v9 traitCollection:v4];
  }

  return v6;
}

- (id)_visualStyleByApplyingOurTraitsToVisualStyle:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = +[UIInterfaceActionOverrideVisualStyle styleOverride];
  v9 = [(UIInterfaceActionGroupView *)self _visualStyleOverrideSeparatorAttributes];
  [v8 setCustomSeparatorAttributes:v9];

  v10 = [(UIInterfaceActionGroupView *)self visualStyleOverrideActionHighlightAttributes];
  [v8 setCustomActionHighlightAttributes:v10];

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __91__UIInterfaceActionGroupView__visualStyleByApplyingOurTraitsToVisualStyle_traitCollection___block_invoke;
  v23 = &unk_1E70F3AD8;
  objc_copyWeak(&v24, &location);
  [v8 setCustomTitleLabelFontProviderForViewState:&v20];
  [(UIInterfaceActionGroupView *)self _selectionHighlightContinuousCornerRadius:v20];
  [v8 setCustomSelectionHighlightContinuousCornerRadius:?];
  [v8 setAlignActionSeparatorLeadingEdgeWithContent:{-[UIInterfaceActionGroupView _alignActionSeparatorLeadingEdgeWithContent](self, "_alignActionSeparatorLeadingEdgeWithContent")}];
  v11 = [v6 groupViewState];
  v12 = [v11 copyWithTraitCollection:v7];

  v13 = [(UIView *)self window];
  v14 = [v13 screen];
  v15 = [v12 copyWithScreen:v14];

  v16 = [v15 copyWithVerticalLayoutAxis:{-[UIInterfaceActionGroupView _actionLayoutAxisUnknownDisallowedIsVertical](self, "_actionLayoutAxisUnknownDisallowedIsVertical")}];
  v17 = [v16 copyWithResolvedPresentationStyle:self->_presentationStyle];

  v18 = [v6 copyWithGroupViewState:v17];
  [v18 setVisualStyleOverride:v8];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v18;
}

id __91__UIInterfaceActionGroupView__visualStyleByApplyingOurTraitsToVisualStyle_traitCollection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _visualStyleOverrideTitleLabelFont];

  return v2;
}

- (void)_applyVisualStyle
{
  obj = [(UIInterfaceActionGroupView *)self visualStyle];
  if (![(UIInterfaceActionVisualStyle *)self->_appliedVisualStyle isEqual:?])
  {
    [obj maximumActionGroupContentSize];
    [(_UIContentConstraintsLayoutGuide *)self->_contentGuide setMaximumSize:?];
    [obj contentCornerRadius];
    [(_UIContentConstraintsLayoutGuide *)self->_contentGuide setMinimumSize:v3 * 3.0, 0.0];
    [(UIInterfaceActionGroupView *)self _applyVisualStyleToActionsViewScrollView];
    [(UIInterfaceActionGroupView *)self _applyVisualStyleToBackgroundViewDisplay];
    -[UIInterfaceActionSelectionTrackingController setSelectByPressGestureEnabled:](self->_actionSelectionController, "setSelectByPressGestureEnabled:", [obj selectByPressGestureRequired]);
    -[UIInterfaceActionSelectionTrackingController setSelectionFeedbackEnabled:](self->_actionSelectionController, "setSelectionFeedbackEnabled:", [obj selectionFeedbackEnabled]);
    -[UIInterfaceActionSelectionTrackingController setSelectByIndirectPointerTouchEnabled:](self->_actionSelectionController, "setSelectByIndirectPointerTouchEnabled:", [obj selectByIndirectPointerTouchRequired]);
    objc_storeStrong(&self->_appliedVisualStyle, obj);
  }
}

- (void)_applyVisualStyleToActionsViewScrollView
{
  v5 = [(UIInterfaceActionGroupView *)self visualStyle];
  [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView setVisualStyle:v5];
  actionSequenceView = self->_actionSequenceView;
  v4 = [(UIInterfaceActionGroupView *)self _interfaceActionGroupViewState];
  [v5 configureAttributesForActionScrollView:actionSequenceView groupViewState:v4];
}

- (void)_applyVisualStyleToBackgroundViewDisplay
{
  v3 = [(UIInterfaceActionGroupView *)self visualStyle];
  v4 = [(UIInterfaceActionGroupView *)self _interfaceActionGroupViewState];
  if (!-[UIInterfaceActionGroupView _drawsBackground](self, "_drawsBackground") || (v5 = [v3 newGroupBackgroundViewWithGroupViewState:v4]) == 0)
  {
    v5 = objc_opt_new();
  }

  v7 = v5;
  v6 = objc_opt_class();
  if (v6 != objc_opt_class())
  {
    [(UIInterfaceActionGroupView *)self _addBackgroudViewToViewHierarchy:v7];
  }

  [(UIInterfaceActionGroupView *)self _applyVisualStyleCornerRadius];
  [(UIView *)self->_backgroundView setClipsToBounds:1];
  [(UIInterfaceActionGroupView *)self _arrangeTopLevelViews];
}

- (void)_applyVisualStyleCornerRadius
{
  v3 = 0.0;
  if ([(UIInterfaceActionGroupView *)self _isCornerRadiusDisplayEnabled])
  {
    v4 = [(UIInterfaceActionGroupView *)self visualStyle];
    [v4 contentCornerRadius];
    v3 = v5;
  }

  [(UIInterfaceActionGroupView *)self _topLevelItemsMargin];
  if (v6 == 0.0)
  {
    v7 = [(UIInterfaceActionGroupView *)self _viewContainingTopLevelItems];
    [v7 _setContinuousCornerRadius:v3];
  }

  v8 = objc_opt_respondsToSelector();
  backgroundView = self->_backgroundView;
  if (v8)
  {

    [(UIView *)backgroundView setCornerRadius:v3];
  }

  else
  {

    [(UIView *)backgroundView _setContinuousCornerRadius:v3];
  }
}

- (void)_addBackgroudViewToViewHierarchy:(id)a3
{
  v4 = a3;
  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;
  v6 = v4;

  [(UIView *)self addSubview:self->_backgroundView];
  [(UIView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = MEMORY[0x1E69977A0];
  v8 = [(UIInterfaceActionGroupView *)self _constraintsToPinView:self->_backgroundView toObject:self identifier:@"backgroundViewFrame"];
  [v7 activateConstraints:v8];
}

- (int64_t)_actionLayoutAxisUnknowDisallowed
{
  if (self->_actionLayoutAxis != -1)
  {
    return self->_actionLayoutAxis;
  }

  v3 = [(NSArray *)self->_allowedActionLayoutAxisByPriority firstObject];
  v4 = [v3 integerValue];

  return v4;
}

- (id)_constraintsToPinView:(id)a3 toObject:(id)a4 identifier:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [v7 leadingAnchor];
  v12 = [v8 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v10 addObject:v13];

  v14 = [v7 trailingAnchor];
  v15 = [v8 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v10 addObject:v16];

  v17 = [v7 topAnchor];
  v18 = [v8 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v10 addObject:v19];

  v20 = [v10 lastObject];
  LODWORD(v21) = 1144750080;
  [v20 setPriority:v21];

  v22 = [v7 bottomAnchor];
  v23 = [v8 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v10 addObject:v24];

  v25 = [v10 lastObject];
  LODWORD(v26) = 1144750080;
  [v25 setPriority:v26];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = v10;
  v28 = [v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [*(*(&v35 + 1) + 8 * i) setIdentifier:{v9, v35}];
      }

      v29 = [v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v29);
  }

  v33 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v27, v32);

  return v33;
}

- (void)_updateActionSequenceViewActionLayoutAxis
{
  actionLayoutAxis = self->_actionLayoutAxis;
  if (actionLayoutAxis != -1)
  {
    v4 = actionLayoutAxis == 1;
    if ([(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView actionLayoutAxis]!= v4)
    {
      [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView setActionLayoutAxis:v4];
      [(UIInterfaceActionGroupView *)self reloadVisualStyle];
      [(UIInterfaceActionGroupView *)self _updateActionSequenceScrollability];
      [(UIInterfaceActionGroupView *)self _setNeedsUpdateActionSequenceViewArrangement];

      [(UIInterfaceActionGroupView *)self _actionSequenceViewContentSizeDidChange];
    }
  }
}

- (id)_defaultOrderingForActionRepresentationViews:(id)a3
{
  v4 = a3;
  v5 = [v4 indexesOfObjectsPassingTest:&__block_literal_global_10];
  v6 = [v4 objectsAtIndexes:v5];

  v7 = [v4 mutableCopy];
  [v7 removeObjectsInArray:v6];
  if (self->_actionLayoutAxis)
  {
    v8 = v7;
    v9 = v6;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  return v10;
}

BOOL __75__UIInterfaceActionGroupView__defaultOrderingForActionRepresentationViews___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 action];
  v3 = [v2 type] == 1;

  return v3;
}

- (id)_actionRepresentationViewForAction:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView arrangedActionRepresentationViews];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 action];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_scrollPreferredActionRepresentationViewToVisibleAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(UIInterfaceActionGroupView *)self actionGroup];
  v5 = [v6 preferredAction];
  [(UIInterfaceActionGroupView *)self _scrollActionRepresentationViewToVisibleForAction:v5 animated:v3];
}

- (void)_scrollActionRepresentationViewToVisibleForAction:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    [(UIInterfaceActionGroupView *)self _actionSequenceVisibleRectForMakingCenteredAction:v6];
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    if (!CGRectIsEmpty(v12))
    {
      if (a4)
      {
        [(UIScrollView *)self->_actionSequenceView scrollRectToVisible:1 animated:x, y, width, height];
      }

      else
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __89__UIInterfaceActionGroupView__scrollActionRepresentationViewToVisibleForAction_animated___block_invoke;
        v11[3] = &unk_1E70F3B20;
        v11[4] = self;
        *&v11[5] = x;
        *&v11[6] = y;
        *&v11[7] = width;
        *&v11[8] = height;
        [UIView performWithoutAnimation:v11];
      }
    }
  }
}

- (CGRect)_actionSequenceVisibleRectForMakingCenteredAction:(id)a3
{
  v4 = [(UIInterfaceActionGroupView *)self _actionRepresentationViewForAction:a3];
  v5 = v4;
  if (v4)
  {
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UIScrollView *)self->_actionSequenceView visibleBounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(UIInterfaceActionGroupView *)self _actionLayoutAxisUnknownDisallowedIsVertical];
    [(UIScrollView *)self->_actionSequenceView contentSize];
    if (v22)
    {
      v25 = v9 - fmax((v21 - v13) * 0.5, 0.0);
      v26 = v24 - v21;
      if (v25 >= v26)
      {
        v25 = v26;
      }

      if (v25 >= 0.0)
      {
        v17 = v25;
      }

      else
      {
        v17 = 0.0;
      }
    }

    else
    {
      v27 = v7 - fmax((v19 - v11) * 0.5, 0.0);
      v28 = v23 - v19;
      if (v27 < v28)
      {
        v28 = v27;
      }

      if (v28 >= 0.0)
      {
        v15 = v28;
      }

      else
      {
        v15 = 0.0;
      }
    }
  }

  else
  {
    v15 = *MEMORY[0x1E695F058];
    v17 = *(MEMORY[0x1E695F058] + 8);
    v19 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
  }

  v29 = v15;
  v30 = v17;
  v31 = v19;
  v32 = v21;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)_setUsAsThePresentingViewControllerForAllActions
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(UIInterfaceActionGroup *)self->_actionGroup actions];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) _setPresentingController:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_removeUsAsThePresentingViewControllerForAllActions
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(UIInterfaceActionGroup *)self->_actionGroup actions];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v8 _presentingController];

        if (v9 == self)
        {
          [v8 _setPresentingController:0];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (BOOL)_shouldShowSeparatorAboveActionsSequenceView
{
  v3 = [(UIInterfaceActionGroup *)self->_actionGroup actions];
  if ([v3 count])
  {
    v4 = [(NSMutableArray *)self->_arrangedScrollableHeaderViews count]!= 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)_contentEdgeFrame
{
  [(UILayoutGuide *)self->_contentGuide layoutFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_setDrawsBackground:(BOOL)a3
{
  if (self->_drawsBackground != a3)
  {
    self->_drawsBackground = a3;
    [(UIInterfaceActionGroupView *)self _applyVisualStyleToBackgroundViewDisplay];
  }
}

- (void)_setSelectionHighlightContinuousCornerRadius:(double)a3
{
  if (self->_selectionHighlightContinuousCornerRadius != a3)
  {
    self->_selectionHighlightContinuousCornerRadius = a3;
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (void)_setAlignActionSeparatorLeadingEdgeWithContent:(BOOL)a3
{
  if (self->_alignActionSeparatorLeadingEdgeWithContent != a3)
  {
    self->_alignActionSeparatorLeadingEdgeWithContent = a3;
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (void)_setVisualStyleOverrideSeparatorAttributes:(id)a3
{
  v5 = a3;
  if (![(UIInterfaceActionSeparatorAttributes *)self->_visualStyleOverrideSeparatorAttributes isEqual:?])
  {
    objc_storeStrong(&self->_visualStyleOverrideSeparatorAttributes, a3);
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (void)_setVisualStyleOverrideActionHighlightAttributes:(id)a3
{
  v5 = a3;
  if (![(UIInterfaceActionHighlightAttributes *)self->_visualStyleOverrideActionHighlightAttributes isEqual:?])
  {
    objc_storeStrong(&self->_visualStyleOverrideActionHighlightAttributes, a3);
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (void)_setVisualStyleOverrideTitleLabelFont:(id)a3
{
  v5 = a3;
  if (([(UIFont *)self->_visualStyleOverrideTitleLabelFont isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_visualStyleOverrideTitleLabelFont, a3);
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (UIInterfaceActionVisualStyleProviding)visualStyleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_visualStyleProvider);

  return WeakRetained;
}

- (UIInterfaceActionHandlerInvocationDelegate)actionHandlerInvocationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandlerInvocationDelegate);

  return WeakRetained;
}

@end