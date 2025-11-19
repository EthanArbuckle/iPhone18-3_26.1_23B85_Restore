@interface _UIInterfaceActionRepresentationsSequenceView
- (CGSize)_sizeByApplyingLayoutMarginsAsOutsetToSize:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (_UIInterfaceActionRepresentationsSequenceView)initWithVisualStyle:(id)a3;
- (double)_minimumNumberOfRowsRequiredVisible;
- (id)_systemDefaultFocusGroupIdentifier;
- (void)_applyVisualStyleToSeparatedContentSequenceView;
- (void)_loadDefaultSizingConstraints;
- (void)_notifyDidScroll;
- (void)_temporarilySkipSizingSeparatedContentSequenceViewToFit;
- (void)_updateBackgroundView;
- (void)_updateMinimumHeightConstraint;
- (void)_updateSeparatedContentSequenceViewToFitSizeIfPossible;
- (void)layoutSubviews;
- (void)setActionLayoutAxis:(int64_t)a3;
- (void)setArrangedActionRepresentationViews:(id)a3;
- (void)setBackgroundView:(id)a3;
- (void)setVisualCornerForcedOverride:(BOOL)a3;
- (void)setVisualCornerPosition:(unint64_t)a3;
- (void)setVisualStyle:(id)a3;
- (void)updateConstraints;
@end

@implementation _UIInterfaceActionRepresentationsSequenceView

- (_UIInterfaceActionRepresentationsSequenceView)initWithVisualStyle:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _UIInterfaceActionRepresentationsSequenceView;
  v6 = [(UIScrollView *)&v14 initWithFrame:0.0, 0.0, 100.0, 100.0];
  v7 = v6;
  if (v6)
  {
    [(UIScrollView *)v6 setContentInsetAdjustmentBehavior:2];
    [(UIView *)v7 setEdgesInsettingLayoutMarginsFromSafeArea:0];
    v7->_sizingSeparatedContentSequenceViewToFitDisabledCount = 0;
    objc_storeStrong(&v7->_visualStyle, a3);
    v7->_actionLayoutAxis = 1;
    arrangedActionRepresentationViews = v7->_arrangedActionRepresentationViews;
    v7->_arrangedActionRepresentationViews = MEMORY[0x1E695E0F0];

    [(UIView *)v7 setLayoutMargins:0.0, 0.0, 0.0, 0.0];
    v9 = [_UIInterfaceActionSeparatableSequenceView alloc];
    v10 = [(_UIInterfaceActionRepresentationsSequenceView *)v7 visualStyle];
    v11 = [(_UIInterfaceActionSeparatableSequenceView *)v9 initWithVisualStyle:v10];
    separatedContentSequenceView = v7->_separatedContentSequenceView;
    v7->_separatedContentSequenceView = v11;

    [(_UIInterfaceActionSeparatableSequenceView *)v7->_separatedContentSequenceView _setLayoutDebuggingIdentifier:@"actions-separatableSequenceView"];
    [(_UIInterfaceActionSeparatableSequenceView *)v7->_separatedContentSequenceView setDistribution:1];
    [(_UIInterfaceActionSeparatableSequenceView *)v7->_separatedContentSequenceView setAxis:1];
    [(UIView *)v7 addSubview:v7->_separatedContentSequenceView];
    [(_UIInterfaceActionRepresentationsSequenceView *)v7 _loadDefaultSizingConstraints];
    [(_UIInterfaceActionRepresentationsSequenceView *)v7 reloadDisplayedContentVisualStyle];
    [(UIView *)v7 setPreservesSuperviewLayoutMargins:0];
  }

  return v7;
}

- (void)setVisualStyle:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_visualStyle] & 1) == 0)
  {
    objc_storeStrong(&self->_visualStyle, a3);
    [(_UIInterfaceActionRepresentationsSequenceView *)self reloadDisplayedContentVisualStyle];
  }
}

- (void)setActionLayoutAxis:(int64_t)a3
{
  if (self->_actionLayoutAxis != a3)
  {
    self->_actionLayoutAxis = a3;
    [(_UIInterfaceActionSeparatableSequenceView *)self->_separatedContentSequenceView setAxis:?];
    [(UIView *)self setNeedsUpdateConstraints];

    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setVisualCornerPosition:(unint64_t)a3
{
  if (self->_visualCornerPosition != a3)
  {
    self->_visualCornerPosition = a3;
    [(_UIInterfaceActionSeparatableSequenceView *)self->_separatedContentSequenceView setVisualCornerPosition:?];
  }
}

- (void)setVisualCornerForcedOverride:(BOOL)a3
{
  if (self->_visualCornerForcedOverride != a3)
  {
    self->_visualCornerForcedOverride = a3;
    [(_UIInterfaceActionSeparatableSequenceView *)self->_separatedContentSequenceView setVisualCornerForcedOverride:?];
  }
}

- (void)setArrangedActionRepresentationViews:(id)a3
{
  v5 = a3;
  if (([(NSArray *)self->_arrangedActionRepresentationViews isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_arrangedActionRepresentationViews, a3);
    [(_UIInterfaceActionSeparatableSequenceView *)self->_separatedContentSequenceView setArrangedContentViews:self->_arrangedActionRepresentationViews];
    [(UIView *)self setNeedsUpdateConstraints];
    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if ((v4 & 0x10) != 0)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIInterfaceActionRepresentationsSequenceView;
    v5 = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionRepresentationsSequenceView;
  [(UIScrollView *)&v3 layoutSubviews];
  [(_UIInterfaceActionRepresentationsSequenceView *)self _updateBackgroundView];
  [(_UIInterfaceActionRepresentationsSequenceView *)self _updateSeparatedContentSequenceViewToFitSizeIfPossible];
}

- (void)_notifyDidScroll
{
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionRepresentationsSequenceView;
  [(UIScrollView *)&v3 _notifyDidScroll];
  [(_UIInterfaceActionRepresentationsSequenceView *)self _temporarilySkipSizingSeparatedContentSequenceViewToFit];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionRepresentationsSequenceView;
  [(UIView *)&v3 updateConstraints];
  [(_UIInterfaceActionRepresentationsSequenceView *)self _updateMinimumHeightConstraint];
}

- (void)_loadDefaultSizingConstraints
{
  v3 = [(UIView *)self heightAnchor];
  v4 = [v3 constraintGreaterThanOrEqualToConstant:0.0];
  minimumHeightConstraint = self->_minimumHeightConstraint;
  self->_minimumHeightConstraint = v4;

  v6 = self->_minimumHeightConstraint;

  [(NSLayoutConstraint *)v6 setActive:1];
}

- (void)_updateMinimumHeightConstraint
{
  v3 = [(_UIInterfaceActionRepresentationsSequenceView *)self arrangedActionRepresentationViews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(_UIInterfaceActionRepresentationsSequenceView *)self visualStyle];
    [v5 minimumActionContentSize];
    v7 = v6;

    if (v7 <= 0.0)
    {
      v8 = [(_UIInterfaceActionRepresentationsSequenceView *)self arrangedActionRepresentationViews];
      v9 = [v8 firstObject];
      [v9 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v7 = v10;
    }

    [(_UIInterfaceActionRepresentationsSequenceView *)self _minimumNumberOfRowsRequiredVisible];
    v12 = v7 * v11;
  }

  else
  {
    v12 = 0.0;
  }

  minimumHeightConstraint = self->_minimumHeightConstraint;

  [(NSLayoutConstraint *)minimumHeightConstraint setConstant:v12];
}

- (double)_minimumNumberOfRowsRequiredVisible
{
  v3 = [(_UIInterfaceActionRepresentationsSequenceView *)self _isHorizontalLayout];
  v4 = [(_UIInterfaceActionRepresentationsSequenceView *)self arrangedActionRepresentationViews];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    v7 = [v4 count];

    return fmin(v7, 1.5);
  }

  return v6;
}

- (CGSize)_sizeByApplyingLayoutMarginsAsOutsetToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIView *)self layoutMargins];
  v7 = width + v5 + v6;
  v10 = height + v8 + v9;
  v11 = v7;
  result.height = v10;
  result.width = v11;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(_UIInterfaceActionSeparatableSequenceView *)self->_separatedContentSequenceView systemLayoutSizeFittingSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  [(_UIInterfaceActionRepresentationsSequenceView *)self _sizeByApplyingLayoutMarginsAsOutsetToSize:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  [(_UIInterfaceActionSeparatableSequenceView *)self->_separatedContentSequenceView systemLayoutSizeFittingSize:a3.width, a3.height];

  [(_UIInterfaceActionRepresentationsSequenceView *)self _sizeByApplyingLayoutMarginsAsOutsetToSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_updateSeparatedContentSequenceViewToFitSizeIfPossible
{
  if (self->_sizingSeparatedContentSequenceViewToFitDisabledCount < 1 || ([(UIScrollView *)self contentSize], v4 == 0.0) || v3 == 0.0)
  {
    [(UIView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIView *)self layoutMargins];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v29.origin.x = v6;
    v29.origin.y = v8;
    v29.size.width = v10;
    v29.size.height = v12;
    v19 = CGRectGetWidth(v29) - (v16 + v18);
    [(_UIInterfaceActionRepresentationsSequenceView *)self systemLayoutSizeFittingSize:v10, 0.0];
    v21 = v20;
    [(UIScrollView *)self accessoryInsets];
    v24 = v19 - (v22 + v23);
    v27 = v21 - (v25 + v26);
    [(UIView *)self->_separatedContentSequenceView setFrame:v16 + v22, v14 + v25, v24, v27];

    [(UIScrollView *)self setContentSize:v24, v27];
  }
}

- (void)_temporarilySkipSizingSeparatedContentSequenceViewToFit
{
  [(_UIInterfaceActionRepresentationsSequenceView *)self _disableSeparatedContentSequenceViewToFit];
  v3 = dispatch_time(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104___UIInterfaceActionRepresentationsSequenceView__temporarilySkipSizingSeparatedContentSequenceViewToFit__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

- (void)_applyVisualStyleToSeparatedContentSequenceView
{
  v3 = [(_UIInterfaceActionRepresentationsSequenceView *)self visualStyle];
  [(_UIInterfaceActionSeparatableSequenceView *)self->_separatedContentSequenceView setVisualStyle:v3];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)_updateBackgroundView
{
  [(UIView *)self bounds];
  [(UIView *)self->_backgroundView setFrame:?];
  if (self->_backgroundView)
  {

    [UIScrollView _moveContentSubview:"_moveContentSubview:toBack:" toBack:?];
  }
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v5)
  {
    v7 = v5;
    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, a3);
    [(UIView *)self bounds];
    [(UIView *)self->_backgroundView setFrame:?];
    [(UIScrollView *)self _addContentSubview:self->_backgroundView atBack:1];
    v5 = v7;
  }
}

@end