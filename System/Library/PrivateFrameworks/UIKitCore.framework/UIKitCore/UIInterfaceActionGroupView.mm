@interface UIInterfaceActionGroupView
- (BOOL)_hasLoadedStackViewContents;
- (BOOL)_shouldAllowPassthroughToLayersBehindUsForTouches:(id)touches;
- (BOOL)_shouldShowSeparatorAboveActionsSequenceView;
- (CGRect)_actionSequenceVisibleRectForMakingCenteredAction:(id)action;
- (CGRect)_contentEdgeFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)arrangedHeaderViews;
- (UIEdgeInsets)_buttonEdgeInsetsFromGroupViewEdge;
- (UIInterfaceActionGroupView)initWithActionGroup:(id)group actionHandlerInvocationDelegate:(id)delegate;
- (UIInterfaceActionHandlerInvocationDelegate)actionHandlerInvocationDelegate;
- (UIInterfaceActionRepresentationView)preferredActionRepresentation;
- (UIInterfaceActionSelectionTrackingController)actionSelectionController;
- (UIInterfaceActionVisualStyleProviding)visualStyleProvider;
- (id)_actionRepresentationViewForAction:(id)action;
- (id)_constraintsToPinView:(id)view toObject:(id)object identifier:(id)identifier;
- (id)_currentlyFocusedActionView;
- (id)_defaultOrderingForActionRepresentationViews:(id)views;
- (id)_initWithActionGroup:(id)group visualStyleProvider:(id)provider actionHandlerInvocationDelegate:(id)delegate;
- (id)_interfaceActionGroupViewState;
- (id)_interfaceActionOfFocusedRepresentationView;
- (id)_loadVisualStyleForTraitCollection:(id)collection;
- (id)_newActionGroupBackgroundView;
- (id)_newSeparatorViewForSeparatingTitleAndButtons;
- (id)_orderedTopLevelViews;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_visualStyleByApplyingOurTraitsToVisualStyle:(id)style traitCollection:(id)collection;
- (id)_widthAnchoredToContentGuideConstraintForTopLevelView:(id)view;
- (int64_t)_actionLayoutAxisUnknowDisallowed;
- (void)_addBackgroudViewToViewHierarchy:(id)hierarchy;
- (void)_addConstraintToActiveTopLevelViewArrangementConstraints:(id)constraints;
- (void)_applyVisualStyle;
- (void)_applyVisualStyleCornerRadius;
- (void)_applyVisualStyleToActionsViewScrollView;
- (void)_applyVisualStyleToBackgroundViewDisplay;
- (void)_arrangeActionViewsInActionSequenceView;
- (void)_arrangeTopLevelViews;
- (void)_associateWeakSimultaneouslyPresentedGroupViews:(id)views bidirectional:(BOOL)bidirectional;
- (void)_commonInitWithActionGroup:(id)group visualStyleProvider:(id)provider actionHandlerInvocationDelegate:(id)delegate;
- (void)_determineActualLayoutAxis;
- (void)_installContentGuideConstraints;
- (void)_loadActionSequenceView;
- (void)_loadTopLevelItemsView;
- (void)_loadViewsIfNeeded;
- (void)_reloadStackViewContentsIfNeeded;
- (void)_reloadTopSeparatorView;
- (void)_reloadVisualStyleTrackingTraitUsage;
- (void)_removeConstraintToActiveTopLevelViewArrangementConstraints:(id)constraints;
- (void)_removeUsAsThePresentingViewControllerForAllActions;
- (void)_scrollActionRepresentationViewToVisibleForAction:(id)action animated:(BOOL)animated;
- (void)_scrollPreferredActionRepresentationViewToVisibleAnimated:(BOOL)animated;
- (void)_setAlignActionSeparatorLeadingEdgeWithContent:(BOOL)content;
- (void)_setAndApplyVisualStyle:(id)style;
- (void)_setDrawsBackground:(BOOL)background;
- (void)_setLayoutDebuggingIdentifier:(id)identifier;
- (void)_setSelectionHighlightContinuousCornerRadius:(double)radius;
- (void)_setUsAsThePresentingViewControllerForAllActions;
- (void)_setVisualStyleOverrideActionHighlightAttributes:(id)attributes;
- (void)_setVisualStyleOverrideSeparatorAttributes:(id)attributes;
- (void)_setVisualStyleOverrideTitleLabelFont:(id)font;
- (void)_updateActionSequenceScrollability;
- (void)_updateActionSequenceViewActionLayoutAxis;
- (void)_updateActionSequenceViewDebugLayoutIdentifier;
- (void)_updateRequiredActionRepresentationSizeConstraints;
- (void)_updateRoundedCornerPositionForSubviews;
- (void)configureForDismissAlongsideTransitionCoordinator:(id)coordinator;
- (void)configureForPresentAlongsideTransitionCoordinator:(id)coordinator;
- (void)dealloc;
- (void)insertArrangedHeaderView:(id)view atIndex:(unint64_t)index scrollable:(BOOL)scrollable;
- (void)interfaceAction:(id)action invokeActionHandler:(id)handler completion:(id)completion;
- (void)interfaceActionGroup:(id)group reloadDisplayedContentActionGroupProperties:(id)properties;
- (void)interfaceActionGroup:(id)group reloadDisplayedContentVisualStyle:(id)style;
- (void)layoutSubviews;
- (void)removeArrangedHeaderView:(id)view;
- (void)scrollToCenterForInterfaceAction:(id)action;
- (void)setActionGroup:(id)group;
- (void)setActionLayoutAxis:(int64_t)axis;
- (void)setActiveTestingVisualStyle:(id)style;
- (void)setAllowedActionLayoutAxisByPriority:(id)priority;
- (void)setFrame:(CGRect)frame;
- (void)setPresentationStyle:(int64_t)style;
- (void)setRequiredActionRepresentationWidth:(double)width;
- (void)setScrubbingEnabled:(BOOL)enabled;
- (void)setSimultaneouslyPresentedGroupViews:(id)views;
- (void)setSpringLoaded:(BOOL)loaded;
- (void)setVisualStyleProvider:(id)provider;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateConstraints;
@end

@implementation UIInterfaceActionGroupView

- (void)setFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = UIInterfaceActionGroupView;
  [(UIView *)&v30 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  superview = [(UIView *)self superview];
  if (superview && dyld_program_sdk_at_least() && [(UIView *)self _usesAutoresizingConstraints])
  {
    _autoresizingConstraints = [(UIView *)self _autoresizingConstraints];
    if ([_autoresizingConstraints count] == 4)
    {
      [superview bounds];
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
      v22 = [_autoresizingConstraints objectAtIndexedSubscript:0];
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

      v24 = [_autoresizingConstraints objectAtIndexedSubscript:1];
      v33.origin.x = v28;
      v33.origin.y = v17;
      v33.size.width = v19;
      v33.size.height = v21;
      [v24 setConstant:CGRectGetWidth(v33)];

      v25 = [_autoresizingConstraints objectAtIndexedSubscript:2];
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

      v27 = [_autoresizingConstraints objectAtIndexedSubscript:3];
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

- (void)_commonInitWithActionGroup:(id)group visualStyleProvider:(id)provider actionHandlerInvocationDelegate:(id)delegate
{
  groupCopy = group;
  providerCopy = provider;
  objc_storeStrong(&self->_actionGroup, group);
  delegateCopy = delegate;
  [(UIInterfaceActionGroup *)self->_actionGroup _addActionGroupDisplayPropertyObserver:self];
  [(UIInterfaceActionGroupView *)self _setUsAsThePresentingViewControllerForAllActions];
  array = [MEMORY[0x1E695DF70] array];
  arrangedScrollableHeaderViews = self->_arrangedScrollableHeaderViews;
  self->_arrangedScrollableHeaderViews = array;

  objc_storeWeak(&self->_actionHandlerInvocationDelegate, delegateCopy);
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
  if (providerCopy)
  {
    [(UIInterfaceActionGroupView *)self setVisualStyleProvider:providerCopy];
  }

  else
  {
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (UIInterfaceActionGroupView)initWithActionGroup:(id)group actionHandlerInvocationDelegate:(id)delegate
{
  groupCopy = group;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = UIInterfaceActionGroupView;
  v8 = [(UIView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(UIInterfaceActionGroupView *)v8 _commonInitWithActionGroup:groupCopy visualStyleProvider:0 actionHandlerInvocationDelegate:delegateCopy];
  }

  return v9;
}

- (id)_initWithActionGroup:(id)group visualStyleProvider:(id)provider actionHandlerInvocationDelegate:(id)delegate
{
  groupCopy = group;
  providerCopy = provider;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = UIInterfaceActionGroupView;
  v11 = [(UIView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    [(UIInterfaceActionGroupView *)v11 _commonInitWithActionGroup:groupCopy visualStyleProvider:providerCopy actionHandlerInvocationDelegate:delegateCopy];
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

- (void)setActionGroup:(id)group
{
  groupCopy = group;
  if (([groupCopy isEqual:self->_actionGroup] & 1) == 0)
  {
    [(UIInterfaceActionGroupView *)self _removeUsAsThePresentingViewControllerForAllActions];
    _visualStyle = [groupCopy _visualStyle];

    if (!_visualStyle)
    {
      _visualStyle2 = [(UIInterfaceActionGroup *)self->_actionGroup _visualStyle];
      [groupCopy _setVisualStyle:_visualStyle2];
    }

    [(UIInterfaceActionGroup *)self->_actionGroup _removeActionGroupDisplayPropertyObserver:self];
    objc_storeStrong(&self->_actionGroup, group);
    [(UIInterfaceActionGroup *)self->_actionGroup _addActionGroupDisplayPropertyObserver:self];
    [(UIInterfaceActionGroupView *)self _setUsAsThePresentingViewControllerForAllActions];
    [(UIInterfaceActionGroupView *)self _setNeedsUpdateTopLevelViewsArrangement];
    [(UIInterfaceActionGroupView *)self _setNeedsUpdateActionSequenceViewArrangement];
  }
}

- (void)setActionLayoutAxis:(int64_t)axis
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_actionLayoutAxis != axis)
  {
    self->_actionLayoutAxis = axis;
    [(UIInterfaceActionGroupView *)self _updateActionSequenceViewActionLayoutAxis];
    actionLayoutAxis = self->_actionLayoutAxis;
    _allActionViews = [(UIInterfaceActionGroupView *)self _allActionViews];
    v6 = [_allActionViews count];

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
    _allActionViews2 = [(UIInterfaceActionGroupView *)self _allActionViews];
    v9 = [_allActionViews2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(_allActionViews2);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          actionViewStateContext = [v13 actionViewStateContext];
          v15 = objc_opt_respondsToSelector();

          if (v15)
          {
            actionViewStateContext2 = [v13 actionViewStateContext];
            [actionViewStateContext2 setActionLayoutAxis:v7];
          }
        }

        v10 = [_allActionViews2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)setAllowedActionLayoutAxisByPriority:(id)priority
{
  priorityCopy = priority;
  if (([priorityCopy isEqual:self->_allowedActionLayoutAxisByPriority] & 1) == 0)
  {
    objc_storeStrong(&self->_allowedActionLayoutAxisByPriority, priority);
    [(UIInterfaceActionGroupView *)self setActionLayoutAxis:-1];
    [(UIView *)self setNeedsLayout];
    [(UIView *)self setNeedsUpdateConstraints];
  }
}

- (void)insertArrangedHeaderView:(id)view atIndex:(unint64_t)index scrollable:(BOOL)scrollable
{
  scrollableCopy = scrollable;
  viewCopy = view;
  v8 = [[_UIInterfaceActionGroupHeaderScrollView alloc] initWithContentView:viewCopy];

  [(UIScrollView *)v8 setScrollEnabled:scrollableCopy];
  [(NSMutableArray *)self->_arrangedScrollableHeaderViews addObject:v8];
  [(UIInterfaceActionGroupView *)self _arrangeTopLevelViews];
}

- (void)removeArrangedHeaderView:(id)view
{
  viewCopy = view;
  arrangedHeaderViews = [(UIInterfaceActionGroupView *)self arrangedHeaderViews];
  v6 = [arrangedHeaderViews indexOfObjectIdenticalTo:viewCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_arrangedScrollableHeaderViews removeObjectAtIndex:v6];

    [(UIInterfaceActionGroupView *)self _arrangeTopLevelViews];
  }
}

- (NSArray)arrangedHeaderViews
{
  array = [MEMORY[0x1E695DF70] array];
  arrangedScrollableHeaderViews = self->_arrangedScrollableHeaderViews;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__UIInterfaceActionGroupView_arrangedHeaderViews__block_invoke;
  v7[3] = &unk_1E70F3A38;
  v5 = array;
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

- (void)setPresentationStyle:(int64_t)style
{
  if (self->_presentationStyle != style)
  {
    self->_presentationStyle = style;
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (void)setScrubbingEnabled:(BOOL)enabled
{
  if (self->_scrubbingEnabled != enabled)
  {
    self->_scrubbingEnabled = enabled;
    [(UIInterfaceActionSelectionTrackingController *)self->_actionSelectionController setScrubbingEnabled:?];
  }
}

- (void)scrollToCenterForInterfaceAction:(id)action
{
  actionCopy = action;
  [(UIInterfaceActionGroupView *)self _scrollActionRepresentationViewToVisibleForAction:actionCopy animated:+[UIView areAnimationsEnabled]];
}

- (void)configureForPresentAlongsideTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
  [visualStyle configureForPresentingGroupView:self alongsideTransitionCoordinator:coordinatorCopy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__UIInterfaceActionGroupView_configureForPresentAlongsideTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (coordinatorCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__UIInterfaceActionGroupView_configureForPresentAlongsideTransitionCoordinator___block_invoke_2;
    v8[3] = &unk_1E70F3770;
    v9 = v6;
    [coordinatorCopy animateAlongsideTransition:v8 completion:0];
  }

  else
  {
    v6[2](v6);
  }
}

- (void)configureForDismissAlongsideTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
  [visualStyle configureForDismissingGroupView:self alongsideTransitionCoordinator:coordinatorCopy];
}

- (void)setRequiredActionRepresentationWidth:(double)width
{
  if (self->_requiredActionRepresentationWidth != width)
  {
    self->_requiredActionRepresentationWidth = width;
    [(UIInterfaceActionGroupView *)self _updateRequiredActionRepresentationSizeConstraints];
  }
}

- (UIEdgeInsets)_buttonEdgeInsetsFromGroupViewEdge
{
  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
  [visualStyle actionSequenceEdgeInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  actionSequenceView = [(UIInterfaceActionGroupView *)self actionSequenceView];
  [actionSequenceView layoutMargins];
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

- (void)_addConstraintToActiveTopLevelViewArrangementConstraints:(id)constraints
{
  constraintsCopy = constraints;
  [constraintsCopy setActive:1];
  v8 = [(NSArray *)self->_topLevelViewArrangementConstraints mutableCopy];
  [v8 addObject:constraintsCopy];

  v6 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v8, v5);
  topLevelViewArrangementConstraints = self->_topLevelViewArrangementConstraints;
  self->_topLevelViewArrangementConstraints = v6;
}

- (void)_removeConstraintToActiveTopLevelViewArrangementConstraints:(id)constraints
{
  constraintsCopy = constraints;
  [constraintsCopy setActive:0];
  v5 = [(NSArray *)self->_topLevelViewArrangementConstraints mutableCopy];
  [(NSArray *)v5 removeObject:constraintsCopy];

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
  arrangedActionRepresentationViews = [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView arrangedActionRepresentationViews];
  v3 = [arrangedActionRepresentationViews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(arrangedActionRepresentationViews);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isFocused])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [arrangedActionRepresentationViews countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  _currentlyFocusedActionView = [(UIInterfaceActionGroupView *)self _currentlyFocusedActionView];
  v4 = _currentlyFocusedActionView;
  if (_currentlyFocusedActionView)
  {
    v5 = _currentlyFocusedActionView;
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__4;
    v30 = __Block_byref_object_dispose__4;
    v31 = 0;
    actionGroup = [(UIInterfaceActionGroupView *)self actionGroup];
    preferredAction = [actionGroup preferredAction];

    if ([preferredAction isEnabled])
    {
      v8 = v27;
      v9 = preferredAction;
      actionGroup3 = v8[5];
      v8[5] = v9;
    }

    else if ([(UIInterfaceActionGroupView *)self focusAvoidsNonDefaultActionsIfPossible])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      actionGroup2 = [(UIInterfaceActionGroupView *)self actionGroup];
      actions = [actionGroup2 actions];

      v12Actions = [actions countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v12Actions)
      {
        actionGroup3 = 0;
        v14 = *v23;
        while (2)
        {
          for (i = 0; i != v12Actions; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(actions);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            if ([v16 isEnabled])
            {
              if ([v16 type] != 2 && objc_msgSend(v16, "type") != 1)
              {
                v5 = [(UIInterfaceActionGroupView *)self _actionRepresentationViewForAction:v16];

                goto LABEL_24;
              }

              if (!actionGroup3)
              {
                if ([v16 type] == 1)
                {
                  actionGroup3 = v16;
                }

                else
                {
                  actionGroup3 = 0;
                }
              }
            }
          }

          v12Actions = [actions countByEnumeratingWithState:&v22 objects:v32 count:16];
          if (v12Actions)
          {
            continue;
          }

          break;
        }

        if (actionGroup3)
        {
          v17 = 0;
          firstObject = actionGroup3;
          goto LABEL_31;
        }
      }

      else
      {
      }

      actions = [(UIInterfaceActionGroupView *)self actionGroup];
      v12Actions = [actions actions];
      firstObject = [v12Actions firstObject];
      actionGroup3 = 0;
      v17 = 1;
LABEL_31:
      objc_storeStrong(v27 + 5, firstObject);
      if (v17)
      {
      }
    }

    else
    {
      actionGroup3 = [(UIInterfaceActionGroupView *)self actionGroup];
      actions2 = [actionGroup3 actions];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __59__UIInterfaceActionGroupView_preferredActionRepresentation__block_invoke;
      v21[3] = &unk_1E70F3A60;
      v21[4] = &v26;
      [actions2 enumerateObjectsUsingBlock:v21];
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
  _focusBehavior = [(UIView *)self _focusBehavior];
  focusGroupContainmentBehavior = [_focusBehavior focusGroupContainmentBehavior];

  if ((focusGroupContainmentBehavior & 0x10) != 0)
  {
    _systemDefaultFocusGroupIdentifier = _UIFocusGroupIdentifierForInstance(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIInterfaceActionGroupView;
    _systemDefaultFocusGroupIdentifier = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return _systemDefaultFocusGroupIdentifier;
}

- (void)interfaceActionGroup:(id)group reloadDisplayedContentActionGroupProperties:(id)properties
{
  propertiesCopy = properties;
  if ([UIInterfaceAction changedProperties:"changedProperties:containsAny:" containsAny:?])
  {
    [(UIView *)self setNeedsFocusUpdate];
  }

  if ([UIInterfaceAction changedProperties:propertiesCopy containsAny:&unk_1EFE2B2F0])
  {
    [(UIInterfaceActionGroupView *)self _setNeedsUpdateActionSequenceViewArrangement];
  }

  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
  actionGroupPropertiesAffectingActionsScrollViewStyling = [visualStyle actionGroupPropertiesAffectingActionsScrollViewStyling];
  v7 = [UIInterfaceActionGroup changedProperties:propertiesCopy containsAny:actionGroupPropertiesAffectingActionsScrollViewStyling];

  if (v7)
  {
    [(UIInterfaceActionGroupView *)self _applyVisualStyleToActionsViewScrollView];
  }
}

- (void)interfaceActionGroup:(id)group reloadDisplayedContentVisualStyle:(id)style
{
  styleCopy = style;
  traitCollection = [(UIView *)self traitCollection];
  v6 = [(UIInterfaceActionGroupView *)self _visualStyleByApplyingOurTraitsToVisualStyle:styleCopy traitCollection:traitCollection];

  [(UIInterfaceActionGroupView *)self _setAndApplyVisualStyle:v6];
}

- (void)setActiveTestingVisualStyle:(id)style
{
  objc_storeStrong(&self->_activeTestingVisualStyle, style);

  [(UIInterfaceActionGroupView *)self reloadVisualStyle];
}

- (void)setVisualStyleProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_visualStyleProvider);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_visualStyleProvider, obj);
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
    v5 = obj;
  }
}

- (void)_setAndApplyVisualStyle:(id)style
{
  styleCopy = style;
  if (!self->_isSettingVisualStyle)
  {
    self->_isSettingVisualStyle = 1;
    v7 = styleCopy;
    _visualStyle = [(UIInterfaceActionGroup *)self->_actionGroup _visualStyle];
    v6 = [_visualStyle isEqual:v7];

    if ((v6 & 1) == 0)
    {
      [(UIInterfaceActionGroup *)self->_actionGroup _setVisualStyle:v7];
      [(UIInterfaceActionGroupView *)self _applyVisualStyle];
    }

    self->_isSettingVisualStyle = 0;
    styleCopy = v7;
  }
}

- (void)_reloadVisualStyleTrackingTraitUsage
{
  traitCollection = [(UIView *)self traitCollection];
  v6 = [(UIInterfaceActionGroupView *)self _loadVisualStyleForTraitCollection:traitCollection];

  _visualStyle = [(UIInterfaceActionGroup *)self->_actionGroup _visualStyle];
  v5 = [_visualStyle isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(UIInterfaceActionGroupView *)self _setAndApplyVisualStyle:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v23 = *MEMORY[0x1E69E9840];
  if (self->_presentationStyle == 2)
  {
    [(UIView *)self updateConstraintsIfNeeded:fits.width];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    subviews = [(UIView *)self->_topLevelItemsView subviews];
    v6 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(subviews);
          }

          [*(*(&v18 + 1) + 8 * i) systemLayoutSizeFittingSize:{width, v9}];
          v9 = v9 + v11;
        }

        v7 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }

    visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
    [visualStyle maximumActionGroupContentSize];
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
    [(UIView *)self systemLayoutSizeFittingSize:fits.width, fits.height];
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

- (BOOL)_shouldAllowPassthroughToLayersBehindUsForTouches:(id)touches
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__UIInterfaceActionGroupView__shouldAllowPassthroughToLayersBehindUsForTouches___block_invoke;
  v6[3] = &unk_1E70F3A88;
  v6[4] = self;
  v3 = [touches objectsPassingTest:v6];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(UIInterfaceActionGroupView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:beganCopy])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionGroupView;
    [(UIResponder *)&v8 touchesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if ([(UIInterfaceActionGroupView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:movedCopy])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionGroupView;
    [(UIResponder *)&v8 touchesMoved:movedCopy withEvent:eventCopy];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([(UIInterfaceActionGroupView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:endedCopy])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionGroupView;
    [(UIResponder *)&v8 touchesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if ([(UIInterfaceActionGroupView *)self _shouldAllowPassthroughToLayersBehindUsForTouches:cancelledCopy])
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionGroupView;
    [(UIResponder *)&v8 touchesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)setSpringLoaded:(BOOL)loaded
{
  loadedCopy = loaded;
  v14 = *MEMORY[0x1E69E9840];
  self->_springLoaded = loaded;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  arrangedActionRepresentationViews = [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView arrangedActionRepresentationViews];
  v5 = [arrangedActionRepresentationViews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(arrangedActionRepresentationViews);
        }

        [*(*(&v9 + 1) + 8 * v8++) setSpringLoaded:loadedCopy];
      }

      while (v6 != v8);
      v6 = [arrangedActionRepresentationViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)interfaceAction:(id)action invokeActionHandler:(id)handler completion:(id)completion
{
  actionCopy = action;
  handlerCopy = handler;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_actionHandlerInvocationDelegate);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained interfaceAction:actionCopy invokeActionHandler:handlerCopy completion:completionCopy];
  }

  else
  {
    if (actionCopy)
    {
      v13 = 0;
      handlerCopy[2](handlerCopy, actionCopy, &v13);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)setSimultaneouslyPresentedGroupViews:(id)views
{
  v16 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = viewsCopy;
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

        [weakObjectsPointerArray addPointer:{*(*(&v11 + 1) + 8 * v10++), v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(UIInterfaceActionGroupView *)self _associateWeakSimultaneouslyPresentedGroupViews:weakObjectsPointerArray bidirectional:1];
}

- (void)_associateWeakSimultaneouslyPresentedGroupViews:(id)views bidirectional:(BOOL)bidirectional
{
  bidirectionalCopy = bidirectional;
  viewsCopy = views;
  [viewsCopy compact];
  if (([(NSPointerArray *)self->_weakSimultaneouslyPresentedGroupViews isEqual:viewsCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_weakSimultaneouslyPresentedGroupViews, views);
    v8 = viewsCopy;
    [v8 compact];
    array = [MEMORY[0x1E695DF70] array];
    if ([v8 count])
    {
      v10 = 0;
      do
      {
        v11 = [objc_msgSend(v8 pointerAtIndex:{v10), "actionSelectionController"}];
        if (v11)
        {
          [array addObject:v11];
        }

        ++v10;
      }

      while (v10 < [v8 count]);
    }

    [(UIInterfaceActionSelectionTrackingController *)self->_actionSelectionController setCooperatingSelectionTrackingControllers:array];
    if (bidirectionalCopy)
    {
      allObjects = [(NSPointerArray *)self->_weakSimultaneouslyPresentedGroupViews allObjects];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __92__UIInterfaceActionGroupView__associateWeakSimultaneouslyPresentedGroupViews_bidirectional___block_invoke;
      v13[3] = &unk_1E70F3AB0;
      v14 = v8;
      selfCopy = self;
      [allObjects enumerateObjectsUsingBlock:v13];
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
  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
  visualStyle2 = [(UIInterfaceActionGroupView *)self visualStyle];
  groupViewState = [visualStyle2 groupViewState];
  v6 = [visualStyle newGroupBackgroundViewWithGroupViewState:groupViewState];

  return v6;
}

- (id)_interfaceActionOfFocusedRepresentationView
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _allActionViews = [(UIInterfaceActionGroupView *)self _allActionViews];
  action = [_allActionViews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (action)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != action; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(_allActionViews);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isFocused])
        {
          action = [v6 action];
          goto LABEL_11;
        }
      }

      action = [_allActionViews countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (action)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return action;
}

- (void)_installContentGuideConstraints
{
  v19[4] = *MEMORY[0x1E69E9840];
  [(UIInterfaceActionGroupView *)self _topLevelItemsMargin];
  v4 = v3;
  if ([(UIInterfaceActionGroupView *)self _shouldInstallContentGuideConstraints])
  {
    topAnchor = [(UIView *)self topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_contentGuide topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v4];
    v19[0] = v16;
    bottomAnchor = [(UIView *)self bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_contentGuide bottomAnchor];
    v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v4];
    v19[1] = v7;
    leadingAnchor = [(UIView *)self leadingAnchor];
    leadingAnchor2 = [(UILayoutGuide *)self->_contentGuide leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-v4];
    v19[2] = v10;
    trailingAnchor = [(UIView *)self trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_contentGuide trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v4];
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
  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];

  if (visualStyle)
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
  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
  v5 = [(_UIInterfaceActionRepresentationsSequenceView *)v3 initWithVisualStyle:visualStyle];
  actionSequenceView = self->_actionSequenceView;
  self->_actionSequenceView = v5;

  [(UIInterfaceActionGroupView *)self _updateActionSequenceViewDebugLayoutIdentifier];
  [(UIView *)self->_actionSequenceView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1144733696;
  [(UIView *)self->_actionSequenceView setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [(UIView *)self->_actionSequenceView setContentHuggingPriority:1 forAxis:v8];
  widthAnchor = [(UIView *)self->_actionSequenceView widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:0.0];
  actionSequenceViewWidthAnchoredToConstantConstraint = self->_actionSequenceViewWidthAnchoredToConstantConstraint;
  self->_actionSequenceViewWidthAnchoredToConstantConstraint = v10;

  widthAnchor2 = [(UIView *)self->_actionSequenceView widthAnchor];
  widthAnchor3 = [(UILayoutGuide *)self->_contentGuide widthAnchor];
  v13 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  actionSequenceViewWidthAnchoredToContentGuideConstraint = self->_actionSequenceViewWidthAnchoredToContentGuideConstraint;
  self->_actionSequenceViewWidthAnchoredToContentGuideConstraint = v13;
}

- (void)_setLayoutDebuggingIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = UIInterfaceActionGroupView;
  [(UIView *)&v4 _setLayoutDebuggingIdentifier:identifier];
  [(UIInterfaceActionGroupView *)self _updateActionSequenceViewDebugLayoutIdentifier];
}

- (void)_updateActionSequenceViewDebugLayoutIdentifier
{
  actionSequenceView = self->_actionSequenceView;
  v3 = MEMORY[0x1E696AEC0];
  _layoutDebuggingIdentifier = [(UIView *)self _layoutDebuggingIdentifier];
  v5 = @"groupView";
  if (_layoutDebuggingIdentifier)
  {
    v5 = _layoutDebuggingIdentifier;
  }

  v7 = _layoutDebuggingIdentifier;
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
  _viewContainingTopLevelItems = [(UIInterfaceActionGroupView *)self _viewContainingTopLevelItems];
  subviews = [_viewContainingTopLevelItems subviews];
  v4 = [subviews mutableCopy];

  _orderedTopLevelViews = [(UIInterfaceActionGroupView *)self _orderedTopLevelViews];
  v6 = [_orderedTopLevelViews mutableCopy];

  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (![v4 isEqual:v6] || preferredContentSizeCategory != self->_cachedSizeCategory)
  {
    objc_storeStrong(&self->_cachedSizeCategory, preferredContentSizeCategory);
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
      v53 = preferredContentSizeCategory;
      v55 = v4;
      array = [MEMORY[0x1E695DF70] array];
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
            [_viewContainingTopLevelItems addSubview:v22];
            if (v21)
            {
              topAnchor = [v22 topAnchor];
              bottomAnchor = [v21 bottomAnchor];
              v25 = [topAnchor constraintEqualToAnchor:bottomAnchor];
              [array addObject:v25];
            }

            centerXAnchor = [v22 centerXAnchor];
            centerXAnchor2 = [(UILayoutGuide *)self->_contentGuide centerXAnchor];
            v28 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
            [array addObject:v28];

            v29 = [(UIInterfaceActionGroupView *)self _widthAnchoredToContentGuideConstraintForTopLevelView:v22];
            [array addObject:v29];

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

      firstObject = [obj firstObject];
      topAnchor2 = [firstObject topAnchor];
      topAnchor3 = [(UILayoutGuide *)self->_contentGuide topAnchor];
      v33 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
      [array addObject:v33];

      lastObject = [obj lastObject];
      bottomAnchor2 = [lastObject bottomAnchor];
      bottomAnchor3 = [(UILayoutGuide *)self->_contentGuide bottomAnchor];
      v37 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      [array addObject:v37];

      if (UIContentSizeCategoryIsAccessibilityCategory(self->_cachedSizeCategory))
      {
        heightAnchor = [(UIView *)self->_actionSequenceView heightAnchor];
        heightAnchor2 = [(UILayoutGuide *)self->_contentGuide heightAnchor];
        v40 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.5];

        LODWORD(v41) = 1132003328;
        [(NSMutableArray *)v40 setPriority:v41];
        [array addObject:v40];
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

              heightAnchor3 = [*(*(&v58 + 1) + 8 * j) heightAnchor];
              heightAnchor4 = [(UIView *)self->_actionSequenceView heightAnchor];
              v48 = [heightAnchor3 constraintGreaterThanOrEqualToAnchor:heightAnchor4 multiplier:1.5];

              LODWORD(v49) = 1132003328;
              [v48 setPriority:v49];
              [array addObject:v48];
            }

            v43 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v58 objects:v70 count:16];
          }

          while (v43);
        }
      }

      [MEMORY[0x1E69977A0] deactivateConstraints:self->_topLevelViewArrangementConstraints];
      v51 = _UIConstraintsBySortingConstraintsForInsertionPerformance(array, v50);
      topLevelViewArrangementConstraints = self->_topLevelViewArrangementConstraints;
      self->_topLevelViewArrangementConstraints = v51;

      [MEMORY[0x1E69977A0] activateConstraints:array];
      [(UIView *)self setNeedsLayout];

      v6 = v54;
      v4 = v55;
      preferredContentSizeCategory = v53;
    }
  }
}

- (id)_widthAnchoredToContentGuideConstraintForTopLevelView:(id)view
{
  if (self->_actionSequenceView == view)
  {
    v6 = self->_actionSequenceViewWidthAnchoredToContentGuideConstraint;
  }

  else
  {
    widthAnchor = [view widthAnchor];
    widthAnchor2 = [(UILayoutGuide *)self->_contentGuide widthAnchor];
    v6 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  }

  return v6;
}

- (id)_orderedTopLevelViews
{
  arrangedScrollableHeaderViews = [(UIInterfaceActionGroupView *)self arrangedScrollableHeaderViews];
  v4 = arrangedScrollableHeaderViews;
  if (!arrangedScrollableHeaderViews)
  {
    arrangedScrollableHeaderViews = MEMORY[0x1E695E0F0];
  }

  v5 = [arrangedScrollableHeaderViews mutableCopy];

  if (self->_actionSequenceView)
  {
    if (self->_actionSequenceTopSeparatorView)
    {
      actions = [(UIInterfaceActionGroup *)self->_actionGroup actions];
      v7 = [actions count];

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
  arrangedActionRepresentationViews = [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView arrangedActionRepresentationViews];
  v3 = [arrangedActionRepresentationViews count] != 0;

  return v3;
}

- (void)_arrangeActionViewsInActionSequenceView
{
  v55 = *MEMORY[0x1E69E9840];
  self->_needsUpdateActionSequenceViewArrangement = 0;
  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
  arrangedActionRepresentationViews = [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView arrangedActionRepresentationViews];
  v36 = [arrangedActionRepresentationViews mutableCopy];

  array = [MEMORY[0x1E695DF70] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  selfCopy = self;
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
        actions = [v6 actions];
        v7 = [actions countByEnumeratingWithState:&v42 objects:v53 count:16];
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
                objc_enumerationMutation(actions);
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
                concreteVisualStyle = [visualStyle concreteVisualStyle];
                v16 = [concreteVisualStyle newRepresentationViewForAction:v14];
              }

              [v16 setOwnsActionContent:1];
              [v16 setSpringLoaded:{-[UIInterfaceActionGroupView isSpringLoaded](selfCopy, "isSpringLoaded")}];
              [array addObject:v16];
              sectionID = [v6 sectionID];
              [v16 setSectionID:sectionID];
            }

            v8 = [actions countByEnumeratingWithState:&v42 objects:v53 count:16];
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

  v25 = [(UIInterfaceActionGroupView *)selfCopy _defaultOrderingForActionRepresentationViews:array];
  arrangedActionRepresentationViews2 = [(_UIInterfaceActionRepresentationsSequenceView *)selfCopy->_actionSequenceView arrangedActionRepresentationViews];
  v27 = [arrangedActionRepresentationViews2 isEqual:v25];

  if ((v27 & 1) == 0)
  {
    [(_UIInterfaceActionRepresentationsSequenceView *)selfCopy->_actionSequenceView setArrangedActionRepresentationViews:v25];
    actionSelectionController = selfCopy->_actionSelectionController;
    arrangedActionRepresentationViews3 = [(_UIInterfaceActionRepresentationsSequenceView *)selfCopy->_actionSequenceView arrangedActionRepresentationViews];
    [(UIInterfaceActionSelectionTrackingController *)actionSelectionController setRepresentationViews:arrangedActionRepresentationViews3];

    [(UIInterfaceActionGroupView *)selfCopy _actionSequenceViewContentSizeDidChange];
  }

  [(UIInterfaceActionGroupView *)selfCopy _updateActionSequenceScrollability];
}

- (void)_updateActionSequenceScrollability
{
  actionGroup = [(UIInterfaceActionGroupView *)self actionGroup];
  actions = [actionGroup actions];
  v5 = [actions count] >= 2 && -[UIInterfaceActionGroupView _actionLayoutAxisUnknownDisallowedIsVertical](self, "_actionLayoutAxisUnknownDisallowedIsVertical");

  actionSequenceView = self->_actionSequenceView;

  [(UIScrollView *)actionSequenceView setScrollEnabled:v5];
}

- (void)_determineActualLayoutAxis
{
  v29 = *MEMORY[0x1E69E9840];
  [(UIInterfaceActionGroupView *)self _loadViewsIfNeeded];
  [(UIInterfaceActionGroupView *)self _reloadStackViewContentsIfNeeded];
  actionLayoutAxis = [(UIInterfaceActionGroupView *)self actionLayoutAxis];
  allowedActionLayoutAxisByPriority = [(UIInterfaceActionGroupView *)self allowedActionLayoutAxisByPriority];
  v5 = [allowedActionLayoutAxisByPriority count];

  if (v5 == 1)
  {
    allowedActionLayoutAxisByPriority2 = [(UIInterfaceActionGroupView *)self allowedActionLayoutAxisByPriority];
    firstObject = [(NSArray *)allowedActionLayoutAxisByPriority2 firstObject];
    actionLayoutAxis = [firstObject integerValue];
  }

  else
  {
    visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
    [visualStyle maximumActionGroupContentSize];
    v10 = v9;

    window = [(UIView *)self window];

    if (window)
    {
      window2 = [(UIView *)self window];
      [window2 frame];
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
    allowedActionLayoutAxisByPriority2 = self->_allowedActionLayoutAxisByPriority;
    v15 = [(NSArray *)allowedActionLayoutAxisByPriority2 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(allowedActionLayoutAxisByPriority2);
          }

          integerValue = [*(*(&v24 + 1) + 8 * i) integerValue];
          [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView fittingWidthForLayoutAxis:integerValue];
          if (v20 < v10)
          {
            actionLayoutAxis = integerValue;
            goto LABEL_16;
          }
        }

        v16 = [(NSArray *)allowedActionLayoutAxisByPriority2 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_16:

  arrangedActionRepresentationViews = [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView arrangedActionRepresentationViews];
  actionSequenceView = self->_actionSequenceView;
  v23 = [(UIInterfaceActionGroupView *)self _defaultOrderingForActionRepresentationViews:arrangedActionRepresentationViews];
  [(_UIInterfaceActionRepresentationsSequenceView *)actionSequenceView setArrangedActionRepresentationViews:v23];

  [(UIInterfaceActionGroupView *)self setActionLayoutAxis:actionLayoutAxis];
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

  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
  _interfaceActionGroupViewState = [(UIInterfaceActionGroupView *)self _interfaceActionGroupViewState];
  v5 = [visualStyle newActionSeparatorViewForGroupViewState:_interfaceActionGroupViewState];

  return v5;
}

- (id)_interfaceActionGroupViewState
{
  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
  groupViewState = [visualStyle groupViewState];

  return groupViewState;
}

- (id)_loadVisualStyleForTraitCollection:(id)collection
{
  collectionCopy = collection;
  activeTestingVisualStyle = self->_activeTestingVisualStyle;
  if (activeTestingVisualStyle)
  {
    v6 = activeTestingVisualStyle;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_visualStyleProvider);

    if (!WeakRetained || (v8 = objc_loadWeakRetained(&self->_visualStyleProvider), [v8 visualStyleForTraitCollection:collectionCopy], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
    {
      v9 = [(UIInterfaceActionGroupView *)self defaultVisualStyleForTraitCollection:collectionCopy presentationStyle:self->_presentationStyle];
    }

    v6 = [(UIInterfaceActionGroupView *)self _visualStyleByApplyingOurTraitsToVisualStyle:v9 traitCollection:collectionCopy];
  }

  return v6;
}

- (id)_visualStyleByApplyingOurTraitsToVisualStyle:(id)style traitCollection:(id)collection
{
  styleCopy = style;
  collectionCopy = collection;
  objc_initWeak(&location, self);
  v8 = +[UIInterfaceActionOverrideVisualStyle styleOverride];
  _visualStyleOverrideSeparatorAttributes = [(UIInterfaceActionGroupView *)self _visualStyleOverrideSeparatorAttributes];
  [v8 setCustomSeparatorAttributes:_visualStyleOverrideSeparatorAttributes];

  visualStyleOverrideActionHighlightAttributes = [(UIInterfaceActionGroupView *)self visualStyleOverrideActionHighlightAttributes];
  [v8 setCustomActionHighlightAttributes:visualStyleOverrideActionHighlightAttributes];

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __91__UIInterfaceActionGroupView__visualStyleByApplyingOurTraitsToVisualStyle_traitCollection___block_invoke;
  v23 = &unk_1E70F3AD8;
  objc_copyWeak(&v24, &location);
  [v8 setCustomTitleLabelFontProviderForViewState:&v20];
  [(UIInterfaceActionGroupView *)self _selectionHighlightContinuousCornerRadius:v20];
  [v8 setCustomSelectionHighlightContinuousCornerRadius:?];
  [v8 setAlignActionSeparatorLeadingEdgeWithContent:{-[UIInterfaceActionGroupView _alignActionSeparatorLeadingEdgeWithContent](self, "_alignActionSeparatorLeadingEdgeWithContent")}];
  groupViewState = [styleCopy groupViewState];
  v12 = [groupViewState copyWithTraitCollection:collectionCopy];

  window = [(UIView *)self window];
  screen = [window screen];
  v15 = [v12 copyWithScreen:screen];

  v16 = [v15 copyWithVerticalLayoutAxis:{-[UIInterfaceActionGroupView _actionLayoutAxisUnknownDisallowedIsVertical](self, "_actionLayoutAxisUnknownDisallowedIsVertical")}];
  v17 = [v16 copyWithResolvedPresentationStyle:self->_presentationStyle];

  v18 = [styleCopy copyWithGroupViewState:v17];
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
  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
  [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView setVisualStyle:visualStyle];
  actionSequenceView = self->_actionSequenceView;
  _interfaceActionGroupViewState = [(UIInterfaceActionGroupView *)self _interfaceActionGroupViewState];
  [visualStyle configureAttributesForActionScrollView:actionSequenceView groupViewState:_interfaceActionGroupViewState];
}

- (void)_applyVisualStyleToBackgroundViewDisplay
{
  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
  _interfaceActionGroupViewState = [(UIInterfaceActionGroupView *)self _interfaceActionGroupViewState];
  if (!-[UIInterfaceActionGroupView _drawsBackground](self, "_drawsBackground") || (v5 = [visualStyle newGroupBackgroundViewWithGroupViewState:_interfaceActionGroupViewState]) == 0)
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
    visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
    [visualStyle contentCornerRadius];
    v3 = v5;
  }

  [(UIInterfaceActionGroupView *)self _topLevelItemsMargin];
  if (v6 == 0.0)
  {
    _viewContainingTopLevelItems = [(UIInterfaceActionGroupView *)self _viewContainingTopLevelItems];
    [_viewContainingTopLevelItems _setContinuousCornerRadius:v3];
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

- (void)_addBackgroudViewToViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = hierarchyCopy;
  v6 = hierarchyCopy;

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

  firstObject = [(NSArray *)self->_allowedActionLayoutAxisByPriority firstObject];
  integerValue = [firstObject integerValue];

  return integerValue;
}

- (id)_constraintsToPinView:(id)view toObject:(id)object identifier:(id)identifier
{
  v40 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  objectCopy = object;
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [objectCopy leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v13];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [objectCopy trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v16];

  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [objectCopy topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v19];

  lastObject = [array lastObject];
  LODWORD(v21) = 1144750080;
  [lastObject setPriority:v21];

  bottomAnchor = [viewCopy bottomAnchor];
  bottomAnchor2 = [objectCopy bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v24];

  lastObject2 = [array lastObject];
  LODWORD(v26) = 1144750080;
  [lastObject2 setPriority:v26];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = array;
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

        [*(*(&v35 + 1) + 8 * i) setIdentifier:{identifierCopy, v35}];
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

- (id)_defaultOrderingForActionRepresentationViews:(id)views
{
  viewsCopy = views;
  v5 = [viewsCopy indexesOfObjectsPassingTest:&__block_literal_global_10];
  v6 = [viewsCopy objectsAtIndexes:v5];

  v7 = [viewsCopy mutableCopy];
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

- (id)_actionRepresentationViewForAction:(id)action
{
  v18 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  arrangedActionRepresentationViews = [(_UIInterfaceActionRepresentationsSequenceView *)self->_actionSequenceView arrangedActionRepresentationViews];
  v6 = [arrangedActionRepresentationViews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(arrangedActionRepresentationViews);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        action = [v9 action];
        v11 = [action isEqual:actionCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [arrangedActionRepresentationViews countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_scrollPreferredActionRepresentationViewToVisibleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  actionGroup = [(UIInterfaceActionGroupView *)self actionGroup];
  preferredAction = [actionGroup preferredAction];
  [(UIInterfaceActionGroupView *)self _scrollActionRepresentationViewToVisibleForAction:preferredAction animated:animatedCopy];
}

- (void)_scrollActionRepresentationViewToVisibleForAction:(id)action animated:(BOOL)animated
{
  actionCopy = action;
  if (actionCopy)
  {
    [(UIInterfaceActionGroupView *)self _actionSequenceVisibleRectForMakingCenteredAction:actionCopy];
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    if (!CGRectIsEmpty(v12))
    {
      if (animated)
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

- (CGRect)_actionSequenceVisibleRectForMakingCenteredAction:(id)action
{
  v4 = [(UIInterfaceActionGroupView *)self _actionRepresentationViewForAction:action];
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
    _actionLayoutAxisUnknownDisallowedIsVertical = [(UIInterfaceActionGroupView *)self _actionLayoutAxisUnknownDisallowedIsVertical];
    [(UIScrollView *)self->_actionSequenceView contentSize];
    if (_actionLayoutAxisUnknownDisallowedIsVertical)
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
  actions = [(UIInterfaceActionGroup *)self->_actionGroup actions];
  v4 = [actions countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(actions);
        }

        [*(*(&v8 + 1) + 8 * v7++) _setPresentingController:self];
      }

      while (v5 != v7);
      v5 = [actions countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  actions = [(UIInterfaceActionGroup *)self->_actionGroup actions];
  v4 = [actions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(actions);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        _presentingController = [v8 _presentingController];

        if (_presentingController == self)
        {
          [v8 _setPresentingController:0];
        }
      }

      v5 = [actions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (BOOL)_shouldShowSeparatorAboveActionsSequenceView
{
  actions = [(UIInterfaceActionGroup *)self->_actionGroup actions];
  if ([actions count])
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

- (void)_setDrawsBackground:(BOOL)background
{
  if (self->_drawsBackground != background)
  {
    self->_drawsBackground = background;
    [(UIInterfaceActionGroupView *)self _applyVisualStyleToBackgroundViewDisplay];
  }
}

- (void)_setSelectionHighlightContinuousCornerRadius:(double)radius
{
  if (self->_selectionHighlightContinuousCornerRadius != radius)
  {
    self->_selectionHighlightContinuousCornerRadius = radius;
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (void)_setAlignActionSeparatorLeadingEdgeWithContent:(BOOL)content
{
  if (self->_alignActionSeparatorLeadingEdgeWithContent != content)
  {
    self->_alignActionSeparatorLeadingEdgeWithContent = content;
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (void)_setVisualStyleOverrideSeparatorAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (![(UIInterfaceActionSeparatorAttributes *)self->_visualStyleOverrideSeparatorAttributes isEqual:?])
  {
    objc_storeStrong(&self->_visualStyleOverrideSeparatorAttributes, attributes);
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (void)_setVisualStyleOverrideActionHighlightAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (![(UIInterfaceActionHighlightAttributes *)self->_visualStyleOverrideActionHighlightAttributes isEqual:?])
  {
    objc_storeStrong(&self->_visualStyleOverrideActionHighlightAttributes, attributes);
    [(UIInterfaceActionGroupView *)self reloadVisualStyle];
  }
}

- (void)_setVisualStyleOverrideTitleLabelFont:(id)font
{
  fontCopy = font;
  if (([(UIFont *)self->_visualStyleOverrideTitleLabelFont isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_visualStyleOverrideTitleLabelFont, font);
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