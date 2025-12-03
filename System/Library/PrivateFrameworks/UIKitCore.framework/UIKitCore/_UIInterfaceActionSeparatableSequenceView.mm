@interface _UIInterfaceActionSeparatableSequenceView
- (CGRect)_stackViewFrameForViewBounds:(CGRect)bounds;
- (CGRect)_viewBoundsForStackViewFrame:(CGRect)frame;
- (CGSize)_systemLayoutSizeFittingStackView:(CGSize)view;
- (CGSize)intrinsicContentSize;
- (_UIInterfaceActionSeparatableSequenceView)initWithVisualStyle:(id)style;
- (double)fittingWidthForLayoutAxis:(int64_t)axis;
- (int64_t)_dimensionAttributeToConstrainEqual;
- (void)_addSeparatorToStackAndMutableArray:(id)array preferSectionStyle:(BOOL)style;
- (void)_markRoundedCornerPositionOnLeadingEdgeOfView:(id)view;
- (void)_markRoundedCornerPositionOnTrailingEdgeOfView:(id)view;
- (void)_reloadContentDistributionConstraintsForArrangedContentViews;
- (void)_reloadStackViewArrangement;
- (void)_setLayoutDebuggingIdentifier:(id)identifier;
- (void)_setRoundedCornersOfView:(id)view toCornerPosition:(unint64_t)position;
- (void)_updateActionRepresentationViewsCanRemoveContentFromHierarchyWhenNotVisibleSetting;
- (void)_updateActionSpacing;
- (void)_updateLayoutWithStackFrameForActionSequenceEdgeInsets;
- (void)_updateRoundedCornerPositionForActionRepViews;
- (void)_updateSeparatorConstantSizedAxis;
- (void)_withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:(id)exists;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)reloadDisplayedContentVisualStyle;
- (void)setArrangedContentViews:(id)views;
- (void)setAxis:(int64_t)axis;
- (void)setDistribution:(int64_t)distribution;
- (void)setVisualCornerForcedOverride:(BOOL)override;
- (void)setVisualCornerPosition:(unint64_t)position;
- (void)setVisualStyle:(id)style;
- (void)updateConstraints;
- (void)updateContentLayoutGuideConstraints;
@end

@implementation _UIInterfaceActionSeparatableSequenceView

- (_UIInterfaceActionSeparatableSequenceView)initWithVisualStyle:(id)style
{
  styleCopy = style;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v27.receiver = self;
  v27.super_class = _UIInterfaceActionSeparatableSequenceView;
  v15 = [(UIView *)&v27 initWithFrame:v8, v10, v12, v14];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_visualStyle, style);
    arrangedContentViews = v16->_arrangedContentViews;
    v18 = MEMORY[0x1E695E0F0];
    v16->_arrangedContentViews = MEMORY[0x1E695E0F0];

    arrangedContentSeparatorViews = v16->_arrangedContentSeparatorViews;
    v16->_arrangedContentSeparatorViews = v18;

    arrangedContentViewsDistributionConstraints = v16->_arrangedContentViewsDistributionConstraints;
    v16->_arrangedContentViewsDistributionConstraints = v18;

    v16->_axis = 1;
    v21 = [UIStackView alloc];
    [(UIView *)v16 bounds];
    v22 = [(UIStackView *)v21 initWithFrame:?];
    stackView = v16->_stackView;
    v16->_stackView = v22;

    [(UIStackView *)v16->_stackView setAxis:v16->_axis];
    [(UIStackView *)v16->_stackView setDistribution:0];
    [(UIStackView *)v16->_stackView setAlignment:0];
    v24 = objc_alloc_init(UILayoutGuide);
    actionSequenceViewLayoutGuide = v16->_actionSequenceViewLayoutGuide;
    v16->_actionSequenceViewLayoutGuide = v24;

    [(UIView *)v16 addLayoutGuide:v16->_actionSequenceViewLayoutGuide];
    [(UIView *)v16 addSubview:v16->_stackView];
    [(_UIInterfaceActionSeparatableSequenceView *)v16 reloadDisplayedContentVisualStyle];
  }

  return v16;
}

- (void)setVisualStyle:(id)style
{
  styleCopy = style;
  if (([styleCopy isEqual:self->_visualStyle] & 1) == 0)
  {
    visualStyleOverride = [(UIInterfaceActionVisualStyle *)self->_visualStyle visualStyleOverride];
    customSeparatorAttributes = [visualStyleOverride customSeparatorAttributes];

    objc_storeStrong(&self->_visualStyle, style);
    [(_UIInterfaceActionSeparatableSequenceView *)self reloadDisplayedContentVisualStyle];
    visualStyleOverride2 = [(UIInterfaceActionVisualStyle *)self->_visualStyle visualStyleOverride];
    customSeparatorAttributes2 = [visualStyleOverride2 customSeparatorAttributes];

    arrangedContentViews = [(_UIInterfaceActionSeparatableSequenceView *)self arrangedContentViews];
    if (![arrangedContentViews count] || customSeparatorAttributes == customSeparatorAttributes2)
    {
    }

    else
    {
      v10 = [customSeparatorAttributes isEqual:customSeparatorAttributes2];

      if ((v10 & 1) == 0)
      {
        [(_UIInterfaceActionSeparatableSequenceView *)self _reloadStackViewArrangement];
      }
    }
  }
}

- (void)setAxis:(int64_t)axis
{
  if ([(_UIInterfaceActionSeparatableSequenceView *)self axis]!= axis)
  {
    self->_axis = axis;
    [(UIStackView *)self->_stackView setAxis:axis];
    [(_UIInterfaceActionSeparatableSequenceView *)self _updateActionSpacing];
    [(_UIInterfaceActionSeparatableSequenceView *)self _updateSeparatorConstantSizedAxis];

    [(_UIInterfaceActionSeparatableSequenceView *)self _reloadStackViewArrangement];
  }
}

- (void)setDistribution:(int64_t)distribution
{
  if (self->_distribution != distribution)
  {
    self->_distribution = distribution;
    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setVisualCornerPosition:(unint64_t)position
{
  if (self->_visualCornerPosition != position)
  {
    self->_visualCornerPosition = position;
    [(_UIInterfaceActionSeparatableSequenceView *)self _updateRoundedCornerPositionForActionRepViews];
  }
}

- (void)setVisualCornerForcedOverride:(BOOL)override
{
  if (self->_visualCornerForcedOverride != override)
  {
    self->_visualCornerForcedOverride = override;
    [(_UIInterfaceActionSeparatableSequenceView *)self _updateRoundedCornerPositionForActionRepViews];
  }
}

- (void)setArrangedContentViews:(id)views
{
  viewsCopy = views;
  if (([(NSArray *)self->_arrangedContentViews isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_arrangedContentViews, views);
    [(_UIInterfaceActionSeparatableSequenceView *)self _updateActionRepresentationViewsCanRemoveContentFromHierarchyWhenNotVisibleSetting];
    [(_UIInterfaceActionSeparatableSequenceView *)self _reloadStackViewArrangement];
  }
}

- (void)_updateActionRepresentationViewsCanRemoveContentFromHierarchyWhenNotVisibleSetting
{
  if ([(_UIInterfaceActionSeparatableSequenceView *)self _isVerticalLayout])
  {
    arrangedContentViews = [(_UIInterfaceActionSeparatableSequenceView *)self arrangedContentViews];
    v4 = [arrangedContentViews count];

    if (v4 < 6)
    {
      v6 = 0;
    }

    else
    {
      firstObject = [(NSArray *)self->_arrangedContentViews firstObject];
      if ([(NSArray *)self->_arrangedContentViews count]>= 2)
      {
        v7 = 1;
        do
        {
          v8 = [(NSArray *)self->_arrangedContentViews objectAtIndexedSubscript:v7];
          v6 = [firstObject hasLayoutHeightConstraintsIdenticalToRepresentationView:v8];

          if ((v6 & 1) == 0)
          {
            break;
          }

          ++v7;
        }

        while (v7 < [(NSArray *)self->_arrangedContentViews count]);
      }

      else
      {
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  firstObject2 = [(NSArray *)self->_arrangedContentViews firstObject];
  [firstObject2 setCanRemoveContentFromHierarchyWhenNotVisible:0];

  if ([(NSArray *)self->_arrangedContentViews count]>= 2)
  {
    v10 = 1;
    do
    {
      v11 = [(NSArray *)self->_arrangedContentViews objectAtIndexedSubscript:v10];
      [v11 setCanRemoveContentFromHierarchyWhenNotVisible:v6];

      ++v10;
    }

    while (v10 < [(NSArray *)self->_arrangedContentViews count]);
  }
}

- (double)fittingWidthForLayoutAxis:(int64_t)axis
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = self->_arrangedContentViews;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  v9 = v6;
  v10 = v5;
  if (v8)
  {
    v11 = v8;
    v12 = *v30;
    v9 = v6;
    v10 = v5;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v29 + 1) + 8 * v13) systemLayoutSizeFittingSize:{v5, v6, v29}];
        if (v10 < v14)
        {
          v10 = v14;
        }

        if (v9 < v15)
        {
          v9 = v15;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  if ([(NSArray *)self->_arrangedContentSeparatorViews count])
  {
    visualStyle = [(_UIInterfaceActionSeparatableSequenceView *)self visualStyle];
    groupViewState = [visualStyle groupViewState];
    v18 = [visualStyle newActionSeparatorViewForGroupViewState:groupViewState];
    [v18 setConstantSizedAxis:{-[_UIInterfaceActionSeparatableSequenceView _separatorConstantSizedAxis](self, "_separatorConstantSizedAxis")}];
    [v18 setNeedsUpdateConstraints];
    [v18 updateConstraintsIfNeeded];
    [v18 systemLayoutSizeFittingSize:{v5, v6}];
    v20 = v19;
    v22 = v21;
    v23 = [(NSArray *)self->_arrangedContentSeparatorViews count];
    if (axis)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    v25 = v24 * v23;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = [(NSArray *)self->_arrangedContentViews count];
  if (axis)
  {
    v27 = v9;
  }

  else
  {
    v27 = v10;
  }

  return v25 + v27 * v26;
}

- (void)reloadDisplayedContentVisualStyle
{
  [(_UIInterfaceActionSeparatableSequenceView *)self _updateActionSpacing];
  [(_UIInterfaceActionSeparatableSequenceView *)self _updateLayoutWithStackFrameForActionSequenceEdgeInsets];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)_updateLayoutWithStackFrameForActionSequenceEdgeInsets
{
  [(UIView *)self bounds];
  [(_UIInterfaceActionSeparatableSequenceView *)self _stackViewFrameForViewBounds:?];
  stackView = self->_stackView;

  [(UIView *)stackView setFrame:?];
}

- (CGRect)_viewBoundsForStackViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  visualStyle = [(_UIInterfaceActionSeparatableSequenceView *)self visualStyle];
  [visualStyle actionSequenceEdgeInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(NSArray *)self->_arrangedContentViews count];
  if (v17)
  {
    v18 = -v10;
  }

  else
  {
    v18 = -0.0;
  }

  if (v17)
  {
    v19 = -v14;
  }

  else
  {
    v19 = -0.0;
  }

  v20 = x - v12;
  v21 = width - (-v12 - v16);
  v22 = y + v18;
  v23 = height - (v18 + v19);
  result.size.height = v23;
  result.size.width = v21;
  result.origin.y = v22;
  result.origin.x = v20;
  return result;
}

- (CGRect)_stackViewFrameForViewBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  visualStyle = [(_UIInterfaceActionSeparatableSequenceView *)self visualStyle];
  [visualStyle actionSequenceEdgeInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = x + v11;
  v17 = width - (v15 + v11);
  v18 = y + v9;
  v19 = height - (v9 + v13);
  result.size.height = v19;
  result.size.width = v17;
  result.origin.y = v18;
  result.origin.x = v16;
  return result;
}

- (void)_setLayoutDebuggingIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = _UIInterfaceActionSeparatableSequenceView;
  [(UIView *)&v7 _setLayoutDebuggingIdentifier:identifier];
  stackView = self->_stackView;
  _layoutDebuggingIdentifier = [(UIView *)self _layoutDebuggingIdentifier];
  v6 = [_layoutDebuggingIdentifier stringByAppendingString:@".stack"];
  [(UIView *)stackView _setLayoutDebuggingIdentifier:v6];
}

- (void)_withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:(id)exists
{
  existsCopy = exists;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __113___UIInterfaceActionSeparatableSequenceView__withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = existsCopy;
  v6.receiver = self;
  v6.super_class = _UIInterfaceActionSeparatableSequenceView;
  v5 = existsCopy;
  [(UIView *)&v6 _withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:v7];
}

- (void)updateContentLayoutGuideConstraints
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (self->_layoutGuideConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
  }

  trailingAnchor = [(UIView *)self->_stackView trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self->_actionSequenceViewLayoutGuide trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v17[0] = v14;
  leadingAnchor = [(UIView *)self->_stackView leadingAnchor];
  leadingAnchor2 = [(UILayoutGuide *)self->_actionSequenceViewLayoutGuide leadingAnchor];
  v4 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v17[1] = v4;
  topAnchor = [(UIView *)self->_stackView topAnchor];
  topAnchor2 = [(UILayoutGuide *)self->_actionSequenceViewLayoutGuide topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v17[2] = v7;
  bottomAnchor = [(UIView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [(UILayoutGuide *)self->_actionSequenceViewLayoutGuide bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v17[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  layoutGuideConstraints = self->_layoutGuideConstraints;
  self->_layoutGuideConstraints = v11;

  [MEMORY[0x1E69977A0] activateConstraints:self->_layoutGuideConstraints];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionSeparatableSequenceView;
  [(UIView *)&v3 updateConstraints];
  [(_UIInterfaceActionSeparatableSequenceView *)self updateContentLayoutGuideConstraints];
  [(_UIInterfaceActionSeparatableSequenceView *)self _reloadContentDistributionConstraintsForArrangedContentViews];
}

- (void)layoutSublayersOfLayer:(id)layer
{
  [(_UIInterfaceActionSeparatableSequenceView *)self _updateLayoutWithStackFrameForActionSequenceEdgeInsets];
  v5.receiver = self;
  v5.super_class = _UIInterfaceActionSeparatableSequenceView;
  [(UIView *)&v5 layoutSublayersOfLayer:layer];
}

- (CGSize)intrinsicContentSize
{
  [(_UIInterfaceActionSeparatableSequenceView *)self _systemLayoutSizeFittingStackView:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_systemLayoutSizeFittingStackView:(CGSize)view
{
  [UIView systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
  v5 = v4;
  v7 = v6;
  if (v6 <= 0.0)
  {
    [(UIStackView *)self->_stackView _calculatedIntrinsicHeight];
    v7 = v8;
  }

  [(_UIInterfaceActionSeparatableSequenceView *)self _viewBoundsForStackViewFrame:0.0, 0.0, v5, v7];
  v10 = v9;
  v12 = v11;
  result.height = v12;
  result.width = v10;
  return result;
}

- (void)_reloadContentDistributionConstraintsForArrangedContentViews
{
  [MEMORY[0x1E69977A0] deactivateConstraints:self->_arrangedContentViewsDistributionConstraints];
  arrangedContentViewsDistributionConstraints = self->_arrangedContentViewsDistributionConstraints;
  self->_arrangedContentViewsDistributionConstraints = MEMORY[0x1E695E0F0];

  array = [MEMORY[0x1E695DF70] array];
  _dimensionAttributeToConstrainEqual = [(_UIInterfaceActionSeparatableSequenceView *)self _dimensionAttributeToConstrainEqual];
  if (_dimensionAttributeToConstrainEqual)
  {
    v6 = _dimensionAttributeToConstrainEqual;
    firstObject = [(NSArray *)self->_arrangedContentViews firstObject];
    if ([(NSArray *)self->_arrangedContentViews count]>= 2)
    {
      v8 = 1;
      do
      {
        v9 = MEMORY[0x1E69977A0];
        v10 = [(NSArray *)self->_arrangedContentViews objectAtIndexedSubscript:v8];
        v11 = [v9 constraintWithItem:v10 attribute:v6 relatedBy:0 toItem:firstObject attribute:v6];
        [array addObject:v11];

        ++v8;
      }

      while (v8 < [(NSArray *)self->_arrangedContentViews count]);
    }
  }

  v12 = _UIConstraintsBySortingConstraintsForInsertionPerformance(array, v5);
  v13 = self->_arrangedContentViewsDistributionConstraints;
  self->_arrangedContentViewsDistributionConstraints = v12;

  [MEMORY[0x1E69977A0] activateConstraints:self->_arrangedContentViewsDistributionConstraints];
}

- (int64_t)_dimensionAttributeToConstrainEqual
{
  distribution = self->_distribution;
  _isVerticalLayout = [(_UIInterfaceActionSeparatableSequenceView *)self _isVerticalLayout];
  if (distribution == 1)
  {
    if (_isVerticalLayout)
    {
      visualStyle = [(_UIInterfaceActionSeparatableSequenceView *)self visualStyle];
      [visualStyle minimumActionContentSize];
      v7 = 8 * (v6 <= 0.0);
    }

    else
    {
      return 7;
    }
  }

  else if (_isVerticalLayout)
  {
    return 8;
  }

  else
  {
    return 7;
  }

  return v7;
}

- (void)_reloadStackViewArrangement
{
  v3 = [(NSArray *)self->_arrangedContentViews copy];
  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  v5 = [arrangedSubviews mutableCopy];

  [v5 removeObjectsInArray:v3];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72___UIInterfaceActionSeparatableSequenceView__reloadStackViewArrangement__block_invoke;
  v21[3] = &unk_1E70F3F18;
  v21[4] = self;
  [v5 enumerateObjectsUsingBlock:v21];
  array = [MEMORY[0x1E695DF70] array];
  v7 = [v3 count];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__6;
  v19[4] = __Block_byref_object_dispose__6;
  v20 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __72___UIInterfaceActionSeparatableSequenceView__reloadStackViewArrangement__block_invoke_16;
  v13 = &unk_1E70F3F40;
  selfCopy = self;
  v18 = v7;
  v8 = v3;
  v15 = v8;
  v9 = array;
  v16 = v9;
  v17 = v19;
  [v8 enumerateObjectsWithOptions:0 usingBlock:&v10];
  [(_UIInterfaceActionSeparatableSequenceView *)self _updateRoundedCornerPositionForActionRepViews:v10];
  objc_storeStrong(&self->_arrangedContentSeparatorViews, array);
  [(UIView *)self setNeedsUpdateConstraints];
  [(UIView *)self invalidateIntrinsicContentSize];

  _Block_object_dispose(v19, 8);
}

- (void)_addSeparatorToStackAndMutableArray:(id)array preferSectionStyle:(BOOL)style
{
  styleCopy = style;
  arrayCopy = array;
  visualStyle = [(_UIInterfaceActionSeparatableSequenceView *)self visualStyle];
  groupViewState = [visualStyle groupViewState];
  if (styleCopy && (v8 = [visualStyle newSectionSeparatorViewForGroupViewState:groupViewState]) != 0 || (v8 = objc_msgSend(visualStyle, "newActionSeparatorViewForGroupViewState:", groupViewState)) != 0)
  {
    v9 = v8;
    [v8 setConstantSizedAxis:{-[_UIInterfaceActionSeparatableSequenceView _separatorConstantSizedAxis](self, "_separatorConstantSizedAxis")}];
    [(UIStackView *)self->_stackView addArrangedSubview:v9];
    [arrayCopy addObject:v9];
  }
}

- (void)_updateActionSpacing
{
  visualStyle = [(_UIInterfaceActionSeparatableSequenceView *)self visualStyle];
  groupViewState = [visualStyle groupViewState];
  [visualStyle actionSpacingForGroupViewState:groupViewState];
  [(UIStackView *)self->_stackView setSpacing:?];
}

- (void)_updateSeparatorConstantSizedAxis
{
  _separatorConstantSizedAxis = [(_UIInterfaceActionSeparatableSequenceView *)self _separatorConstantSizedAxis];
  arrangedContentSeparatorViews = self->_arrangedContentSeparatorViews;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78___UIInterfaceActionSeparatableSequenceView__updateSeparatorConstantSizedAxis__block_invoke;
  v5[3] = &__block_descriptor_40_e46_v32__0__UIView_UISeparatorDisplaying__8Q16_B24l;
  v5[4] = _separatorConstantSizedAxis;
  [(NSArray *)arrangedContentSeparatorViews enumerateObjectsUsingBlock:v5];
}

- (void)_updateRoundedCornerPositionForActionRepViews
{
  v3 = self->_arrangedContentViews;
  if ([(NSArray *)v3 count]<= 1)
  {
    firstObject = [(NSArray *)v3 firstObject];
    [(_UIInterfaceActionSeparatableSequenceView *)self _markRoundedCornerPositionOnAllCornersOfView:firstObject];
LABEL_6:

    goto LABEL_7;
  }

  if (!self->_visualCornerForcedOverride)
  {
    firstObject2 = [(NSArray *)v3 firstObject];
    [(_UIInterfaceActionSeparatableSequenceView *)self _markRoundedCornerPositionOnLeadingEdgeOfView:firstObject2];

    v6 = [(NSArray *)v3 subarrayWithRange:1, [(NSArray *)v3 count]- 2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90___UIInterfaceActionSeparatableSequenceView__updateRoundedCornerPositionForActionRepViews__block_invoke_2;
    v7[3] = &unk_1E70F3BE8;
    v7[4] = self;
    [v6 enumerateObjectsUsingBlock:v7];

    firstObject = [(NSArray *)v3 lastObject];
    [(_UIInterfaceActionSeparatableSequenceView *)self _markRoundedCornerPositionOnTrailingEdgeOfView:firstObject];
    goto LABEL_6;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90___UIInterfaceActionSeparatableSequenceView__updateRoundedCornerPositionForActionRepViews__block_invoke;
  v8[3] = &unk_1E70F3BE8;
  v8[4] = self;
  [(NSArray *)v3 enumerateObjectsUsingBlock:v8];
LABEL_7:
}

- (void)_markRoundedCornerPositionOnLeadingEdgeOfView:(id)view
{
  viewCopy = view;
  if ([(_UIInterfaceActionSeparatableSequenceView *)self _isVerticalLayout])
  {
    v4 = 3;
  }

  else
  {
    v4 = 5;
  }

  [(_UIInterfaceActionSeparatableSequenceView *)self _setRoundedCornersOfView:viewCopy toCornerPosition:v4];
}

- (void)_markRoundedCornerPositionOnTrailingEdgeOfView:(id)view
{
  viewCopy = view;
  if ([(_UIInterfaceActionSeparatableSequenceView *)self _isVerticalLayout])
  {
    v4 = 12;
  }

  else
  {
    v4 = 10;
  }

  [(_UIInterfaceActionSeparatableSequenceView *)self _setRoundedCornersOfView:viewCopy toCornerPosition:v4];
}

- (void)_setRoundedCornersOfView:(id)view toCornerPosition:(unint64_t)position
{
  viewCopy = view;
  [viewCopy setVisualCornerPosition:{-[_UIInterfaceActionSeparatableSequenceView visualCornerPosition](self, "visualCornerPosition") & position}];
}

@end