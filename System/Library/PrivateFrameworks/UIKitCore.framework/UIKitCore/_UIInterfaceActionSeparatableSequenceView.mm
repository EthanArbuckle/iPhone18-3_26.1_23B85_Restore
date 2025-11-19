@interface _UIInterfaceActionSeparatableSequenceView
- (CGRect)_stackViewFrameForViewBounds:(CGRect)a3;
- (CGRect)_viewBoundsForStackViewFrame:(CGRect)a3;
- (CGSize)_systemLayoutSizeFittingStackView:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (_UIInterfaceActionSeparatableSequenceView)initWithVisualStyle:(id)a3;
- (double)fittingWidthForLayoutAxis:(int64_t)a3;
- (int64_t)_dimensionAttributeToConstrainEqual;
- (void)_addSeparatorToStackAndMutableArray:(id)a3 preferSectionStyle:(BOOL)a4;
- (void)_markRoundedCornerPositionOnLeadingEdgeOfView:(id)a3;
- (void)_markRoundedCornerPositionOnTrailingEdgeOfView:(id)a3;
- (void)_reloadContentDistributionConstraintsForArrangedContentViews;
- (void)_reloadStackViewArrangement;
- (void)_setLayoutDebuggingIdentifier:(id)a3;
- (void)_setRoundedCornersOfView:(id)a3 toCornerPosition:(unint64_t)a4;
- (void)_updateActionRepresentationViewsCanRemoveContentFromHierarchyWhenNotVisibleSetting;
- (void)_updateActionSpacing;
- (void)_updateLayoutWithStackFrameForActionSequenceEdgeInsets;
- (void)_updateRoundedCornerPositionForActionRepViews;
- (void)_updateSeparatorConstantSizedAxis;
- (void)_withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:(id)a3;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)reloadDisplayedContentVisualStyle;
- (void)setArrangedContentViews:(id)a3;
- (void)setAxis:(int64_t)a3;
- (void)setDistribution:(int64_t)a3;
- (void)setVisualCornerForcedOverride:(BOOL)a3;
- (void)setVisualCornerPosition:(unint64_t)a3;
- (void)setVisualStyle:(id)a3;
- (void)updateConstraints;
- (void)updateContentLayoutGuideConstraints;
@end

@implementation _UIInterfaceActionSeparatableSequenceView

- (_UIInterfaceActionSeparatableSequenceView)initWithVisualStyle:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_self() mainScreen];
  [v6 bounds];
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
    objc_storeStrong(&v15->_visualStyle, a3);
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

- (void)setVisualStyle:(id)a3
{
  v11 = a3;
  if (([v11 isEqual:self->_visualStyle] & 1) == 0)
  {
    v5 = [(UIInterfaceActionVisualStyle *)self->_visualStyle visualStyleOverride];
    v6 = [v5 customSeparatorAttributes];

    objc_storeStrong(&self->_visualStyle, a3);
    [(_UIInterfaceActionSeparatableSequenceView *)self reloadDisplayedContentVisualStyle];
    v7 = [(UIInterfaceActionVisualStyle *)self->_visualStyle visualStyleOverride];
    v8 = [v7 customSeparatorAttributes];

    v9 = [(_UIInterfaceActionSeparatableSequenceView *)self arrangedContentViews];
    if (![v9 count] || v6 == v8)
    {
    }

    else
    {
      v10 = [v6 isEqual:v8];

      if ((v10 & 1) == 0)
      {
        [(_UIInterfaceActionSeparatableSequenceView *)self _reloadStackViewArrangement];
      }
    }
  }
}

- (void)setAxis:(int64_t)a3
{
  if ([(_UIInterfaceActionSeparatableSequenceView *)self axis]!= a3)
  {
    self->_axis = a3;
    [(UIStackView *)self->_stackView setAxis:a3];
    [(_UIInterfaceActionSeparatableSequenceView *)self _updateActionSpacing];
    [(_UIInterfaceActionSeparatableSequenceView *)self _updateSeparatorConstantSizedAxis];

    [(_UIInterfaceActionSeparatableSequenceView *)self _reloadStackViewArrangement];
  }
}

- (void)setDistribution:(int64_t)a3
{
  if (self->_distribution != a3)
  {
    self->_distribution = a3;
    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setVisualCornerPosition:(unint64_t)a3
{
  if (self->_visualCornerPosition != a3)
  {
    self->_visualCornerPosition = a3;
    [(_UIInterfaceActionSeparatableSequenceView *)self _updateRoundedCornerPositionForActionRepViews];
  }
}

- (void)setVisualCornerForcedOverride:(BOOL)a3
{
  if (self->_visualCornerForcedOverride != a3)
  {
    self->_visualCornerForcedOverride = a3;
    [(_UIInterfaceActionSeparatableSequenceView *)self _updateRoundedCornerPositionForActionRepViews];
  }
}

- (void)setArrangedContentViews:(id)a3
{
  v5 = a3;
  if (([(NSArray *)self->_arrangedContentViews isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_arrangedContentViews, a3);
    [(_UIInterfaceActionSeparatableSequenceView *)self _updateActionRepresentationViewsCanRemoveContentFromHierarchyWhenNotVisibleSetting];
    [(_UIInterfaceActionSeparatableSequenceView *)self _reloadStackViewArrangement];
  }
}

- (void)_updateActionRepresentationViewsCanRemoveContentFromHierarchyWhenNotVisibleSetting
{
  if ([(_UIInterfaceActionSeparatableSequenceView *)self _isVerticalLayout])
  {
    v3 = [(_UIInterfaceActionSeparatableSequenceView *)self arrangedContentViews];
    v4 = [v3 count];

    if (v4 < 6)
    {
      v6 = 0;
    }

    else
    {
      v5 = [(NSArray *)self->_arrangedContentViews firstObject];
      if ([(NSArray *)self->_arrangedContentViews count]>= 2)
      {
        v7 = 1;
        do
        {
          v8 = [(NSArray *)self->_arrangedContentViews objectAtIndexedSubscript:v7];
          v6 = [v5 hasLayoutHeightConstraintsIdenticalToRepresentationView:v8];

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

  v9 = [(NSArray *)self->_arrangedContentViews firstObject];
  [v9 setCanRemoveContentFromHierarchyWhenNotVisible:0];

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

- (double)fittingWidthForLayoutAxis:(int64_t)a3
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
    v16 = [(_UIInterfaceActionSeparatableSequenceView *)self visualStyle];
    v17 = [v16 groupViewState];
    v18 = [v16 newActionSeparatorViewForGroupViewState:v17];
    [v18 setConstantSizedAxis:{-[_UIInterfaceActionSeparatableSequenceView _separatorConstantSizedAxis](self, "_separatorConstantSizedAxis")}];
    [v18 setNeedsUpdateConstraints];
    [v18 updateConstraintsIfNeeded];
    [v18 systemLayoutSizeFittingSize:{v5, v6}];
    v20 = v19;
    v22 = v21;
    v23 = [(NSArray *)self->_arrangedContentSeparatorViews count];
    if (a3)
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
  if (a3)
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

- (CGRect)_viewBoundsForStackViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UIInterfaceActionSeparatableSequenceView *)self visualStyle];
  [v8 actionSequenceEdgeInsets];
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

- (CGRect)_stackViewFrameForViewBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(_UIInterfaceActionSeparatableSequenceView *)self visualStyle];
  [v7 actionSequenceEdgeInsets];
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

- (void)_setLayoutDebuggingIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIInterfaceActionSeparatableSequenceView;
  [(UIView *)&v7 _setLayoutDebuggingIdentifier:a3];
  stackView = self->_stackView;
  v5 = [(UIView *)self _layoutDebuggingIdentifier];
  v6 = [v5 stringByAppendingString:@".stack"];
  [(UIView *)stackView _setLayoutDebuggingIdentifier:v6];
}

- (void)_withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __113___UIInterfaceActionSeparatableSequenceView__withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _UIInterfaceActionSeparatableSequenceView;
  v5 = v4;
  [(UIView *)&v6 _withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:v7];
}

- (void)updateContentLayoutGuideConstraints
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (self->_layoutGuideConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
  }

  v16 = [(UIView *)self->_stackView trailingAnchor];
  v15 = [(UILayoutGuide *)self->_actionSequenceViewLayoutGuide trailingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v17[0] = v14;
  v13 = [(UIView *)self->_stackView leadingAnchor];
  v3 = [(UILayoutGuide *)self->_actionSequenceViewLayoutGuide leadingAnchor];
  v4 = [v13 constraintEqualToAnchor:v3];
  v17[1] = v4;
  v5 = [(UIView *)self->_stackView topAnchor];
  v6 = [(UILayoutGuide *)self->_actionSequenceViewLayoutGuide topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v17[2] = v7;
  v8 = [(UIView *)self->_stackView bottomAnchor];
  v9 = [(UILayoutGuide *)self->_actionSequenceViewLayoutGuide bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
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

- (void)layoutSublayersOfLayer:(id)a3
{
  [(_UIInterfaceActionSeparatableSequenceView *)self _updateLayoutWithStackFrameForActionSequenceEdgeInsets];
  v5.receiver = self;
  v5.super_class = _UIInterfaceActionSeparatableSequenceView;
  [(UIView *)&v5 layoutSublayersOfLayer:a3];
}

- (CGSize)intrinsicContentSize
{
  [(_UIInterfaceActionSeparatableSequenceView *)self _systemLayoutSizeFittingStackView:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_systemLayoutSizeFittingStackView:(CGSize)a3
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

  v14 = [MEMORY[0x1E695DF70] array];
  v4 = [(_UIInterfaceActionSeparatableSequenceView *)self _dimensionAttributeToConstrainEqual];
  if (v4)
  {
    v6 = v4;
    v7 = [(NSArray *)self->_arrangedContentViews firstObject];
    if ([(NSArray *)self->_arrangedContentViews count]>= 2)
    {
      v8 = 1;
      do
      {
        v9 = MEMORY[0x1E69977A0];
        v10 = [(NSArray *)self->_arrangedContentViews objectAtIndexedSubscript:v8];
        v11 = [v9 constraintWithItem:v10 attribute:v6 relatedBy:0 toItem:v7 attribute:v6];
        [v14 addObject:v11];

        ++v8;
      }

      while (v8 < [(NSArray *)self->_arrangedContentViews count]);
    }
  }

  v12 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v14, v5);
  v13 = self->_arrangedContentViewsDistributionConstraints;
  self->_arrangedContentViewsDistributionConstraints = v12;

  [MEMORY[0x1E69977A0] activateConstraints:self->_arrangedContentViewsDistributionConstraints];
}

- (int64_t)_dimensionAttributeToConstrainEqual
{
  distribution = self->_distribution;
  v4 = [(_UIInterfaceActionSeparatableSequenceView *)self _isVerticalLayout];
  if (distribution == 1)
  {
    if (v4)
    {
      v5 = [(_UIInterfaceActionSeparatableSequenceView *)self visualStyle];
      [v5 minimumActionContentSize];
      v7 = 8 * (v6 <= 0.0);
    }

    else
    {
      return 7;
    }
  }

  else if (v4)
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
  v4 = [(UIStackView *)self->_stackView arrangedSubviews];
  v5 = [v4 mutableCopy];

  [v5 removeObjectsInArray:v3];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72___UIInterfaceActionSeparatableSequenceView__reloadStackViewArrangement__block_invoke;
  v21[3] = &unk_1E70F3F18;
  v21[4] = self;
  [v5 enumerateObjectsUsingBlock:v21];
  v6 = [MEMORY[0x1E695DF70] array];
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
  v14 = self;
  v18 = v7;
  v8 = v3;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v17 = v19;
  [v8 enumerateObjectsWithOptions:0 usingBlock:&v10];
  [(_UIInterfaceActionSeparatableSequenceView *)self _updateRoundedCornerPositionForActionRepViews:v10];
  objc_storeStrong(&self->_arrangedContentSeparatorViews, v6);
  [(UIView *)self setNeedsUpdateConstraints];
  [(UIView *)self invalidateIntrinsicContentSize];

  _Block_object_dispose(v19, 8);
}

- (void)_addSeparatorToStackAndMutableArray:(id)a3 preferSectionStyle:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(_UIInterfaceActionSeparatableSequenceView *)self visualStyle];
  v7 = [v6 groupViewState];
  if (v4 && (v8 = [v6 newSectionSeparatorViewForGroupViewState:v7]) != 0 || (v8 = objc_msgSend(v6, "newActionSeparatorViewForGroupViewState:", v7)) != 0)
  {
    v9 = v8;
    [v8 setConstantSizedAxis:{-[_UIInterfaceActionSeparatableSequenceView _separatorConstantSizedAxis](self, "_separatorConstantSizedAxis")}];
    [(UIStackView *)self->_stackView addArrangedSubview:v9];
    [v10 addObject:v9];
  }
}

- (void)_updateActionSpacing
{
  v4 = [(_UIInterfaceActionSeparatableSequenceView *)self visualStyle];
  v3 = [v4 groupViewState];
  [v4 actionSpacingForGroupViewState:v3];
  [(UIStackView *)self->_stackView setSpacing:?];
}

- (void)_updateSeparatorConstantSizedAxis
{
  v3 = [(_UIInterfaceActionSeparatableSequenceView *)self _separatorConstantSizedAxis];
  arrangedContentSeparatorViews = self->_arrangedContentSeparatorViews;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78___UIInterfaceActionSeparatableSequenceView__updateSeparatorConstantSizedAxis__block_invoke;
  v5[3] = &__block_descriptor_40_e46_v32__0__UIView_UISeparatorDisplaying__8Q16_B24l;
  v5[4] = v3;
  [(NSArray *)arrangedContentSeparatorViews enumerateObjectsUsingBlock:v5];
}

- (void)_updateRoundedCornerPositionForActionRepViews
{
  v3 = self->_arrangedContentViews;
  if ([(NSArray *)v3 count]<= 1)
  {
    v4 = [(NSArray *)v3 firstObject];
    [(_UIInterfaceActionSeparatableSequenceView *)self _markRoundedCornerPositionOnAllCornersOfView:v4];
LABEL_6:

    goto LABEL_7;
  }

  if (!self->_visualCornerForcedOverride)
  {
    v5 = [(NSArray *)v3 firstObject];
    [(_UIInterfaceActionSeparatableSequenceView *)self _markRoundedCornerPositionOnLeadingEdgeOfView:v5];

    v6 = [(NSArray *)v3 subarrayWithRange:1, [(NSArray *)v3 count]- 2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90___UIInterfaceActionSeparatableSequenceView__updateRoundedCornerPositionForActionRepViews__block_invoke_2;
    v7[3] = &unk_1E70F3BE8;
    v7[4] = self;
    [v6 enumerateObjectsUsingBlock:v7];

    v4 = [(NSArray *)v3 lastObject];
    [(_UIInterfaceActionSeparatableSequenceView *)self _markRoundedCornerPositionOnTrailingEdgeOfView:v4];
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

- (void)_markRoundedCornerPositionOnLeadingEdgeOfView:(id)a3
{
  v5 = a3;
  if ([(_UIInterfaceActionSeparatableSequenceView *)self _isVerticalLayout])
  {
    v4 = 3;
  }

  else
  {
    v4 = 5;
  }

  [(_UIInterfaceActionSeparatableSequenceView *)self _setRoundedCornersOfView:v5 toCornerPosition:v4];
}

- (void)_markRoundedCornerPositionOnTrailingEdgeOfView:(id)a3
{
  v5 = a3;
  if ([(_UIInterfaceActionSeparatableSequenceView *)self _isVerticalLayout])
  {
    v4 = 12;
  }

  else
  {
    v4 = 10;
  }

  [(_UIInterfaceActionSeparatableSequenceView *)self _setRoundedCornersOfView:v5 toCornerPosition:v4];
}

- (void)_setRoundedCornersOfView:(id)a3 toCornerPosition:(unint64_t)a4
{
  v6 = a3;
  [v6 setVisualCornerPosition:{-[_UIInterfaceActionSeparatableSequenceView visualCornerPosition](self, "visualCornerPosition") & a4}];
}

@end