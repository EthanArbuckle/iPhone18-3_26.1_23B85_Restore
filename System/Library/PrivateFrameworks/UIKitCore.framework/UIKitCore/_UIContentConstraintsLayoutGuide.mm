@interface _UIContentConstraintsLayoutGuide
- (CGSize)maximumSize;
- (CGSize)minimumSize;
- (UIEdgeInsets)edgeInsets;
- (_UIContentConstraintsLayoutGuide)init;
- (void)_clearConstraints;
- (void)_setAllMarginConstraintsActive:(BOOL)active;
- (void)_setAllSizeConstraintsActive:(BOOL)active;
- (void)_updateAllMarginConstraintConstants;
- (void)_updateAllSizeConstraints;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)setMaximumSize:(CGSize)size;
- (void)setMinimumSize:(CGSize)size;
- (void)setOwningView:(id)view;
@end

@implementation _UIContentConstraintsLayoutGuide

- (_UIContentConstraintsLayoutGuide)init
{
  v3.receiver = self;
  v3.super_class = _UIContentConstraintsLayoutGuide;
  result = [(UILayoutGuide *)&v3 init];
  if (result)
  {
    result->_maximumSize = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    result->_minimumSize = *MEMORY[0x1E695F060];
  }

  return result;
}

- (void)setOwningView:(id)view
{
  viewCopy = view;
  owningView = [(UILayoutGuide *)self owningView];

  if (owningView != viewCopy)
  {
    [(_UIContentConstraintsLayoutGuide *)self _clearConstraints];
    v40.receiver = self;
    v40.super_class = _UIContentConstraintsLayoutGuide;
    [(UILayoutGuide *)&v40 setOwningView:viewCopy];
    if (viewCopy)
    {
      leadingAnchor = [(UILayoutGuide *)self leadingAnchor];
      leadingAnchor2 = [viewCopy leadingAnchor];
      v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
      leadingConstraint = self->_leadingConstraint;
      self->_leadingConstraint = v8;

      trailingAnchor = [(UILayoutGuide *)self trailingAnchor];
      trailingAnchor2 = [viewCopy trailingAnchor];
      v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
      trailingConstraint = self->_trailingConstraint;
      self->_trailingConstraint = v12;

      topAnchor = [(UILayoutGuide *)self topAnchor];
      topAnchor2 = [viewCopy topAnchor];
      v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      topConstraint = self->_topConstraint;
      self->_topConstraint = v16;

      LODWORD(v18) = 1144750080;
      [(NSLayoutConstraint *)self->_topConstraint setPriority:v18];
      bottomAnchor = [(UILayoutGuide *)self bottomAnchor];
      bottomAnchor2 = [viewCopy bottomAnchor];
      v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
      bottomConstraint = self->_bottomConstraint;
      self->_bottomConstraint = v21;

      LODWORD(v23) = 1144750080;
      [(NSLayoutConstraint *)self->_bottomConstraint setPriority:v23];
      widthAnchor = [(UILayoutGuide *)self widthAnchor];
      v25 = [widthAnchor constraintLessThanOrEqualToConstant:0.0];
      maximumWidthConstraint = self->_maximumWidthConstraint;
      self->_maximumWidthConstraint = v25;

      heightAnchor = [(UILayoutGuide *)self heightAnchor];
      v28 = [heightAnchor constraintLessThanOrEqualToConstant:0.0];
      maximumHeightConstraint = self->_maximumHeightConstraint;
      self->_maximumHeightConstraint = v28;

      widthAnchor2 = [(UILayoutGuide *)self widthAnchor];
      v31 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:0.0];
      minimumWidthConstraint = self->_minimumWidthConstraint;
      self->_minimumWidthConstraint = v31;

      heightAnchor2 = [(UILayoutGuide *)self heightAnchor];
      v34 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:0.0];
      minimumHeightConstraint = self->_minimumHeightConstraint;
      self->_minimumHeightConstraint = v34;

      LODWORD(v36) = 1148829696;
      [(NSLayoutConstraint *)self->_maximumWidthConstraint setPriority:v36];
      LODWORD(v37) = 1148829696;
      [(NSLayoutConstraint *)self->_maximumHeightConstraint setPriority:v37];
      LODWORD(v38) = 1148829696;
      [(NSLayoutConstraint *)self->_minimumWidthConstraint setPriority:v38];
      LODWORD(v39) = 1148829696;
      [(NSLayoutConstraint *)self->_minimumHeightConstraint setPriority:v39];
      [(_UIContentConstraintsLayoutGuide *)self _updateAllMarginConstraintConstants];
      [(_UIContentConstraintsLayoutGuide *)self _setAllMarginConstraintsActive:1];
      [(_UIContentConstraintsLayoutGuide *)self _updateAllSizeConstraints];
      [(_UIContentConstraintsLayoutGuide *)self _setAllSizeConstraintsActive:1];
    }
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v3), vceqq_f64(*&self->_edgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_edgeInsets = insets;
    [(_UIContentConstraintsLayoutGuide *)self _updateAllMarginConstraintConstants];
  }
}

- (void)setMaximumSize:(CGSize)size
{
  if (fabs(size.width) >= 0.5)
  {
    width = size.width;
  }

  else
  {
    width = 1.79769313e308;
  }

  if (fabs(size.height) >= 0.5)
  {
    height = size.height;
  }

  else
  {
    height = 1.79769313e308;
  }

  [(_UIContentConstraintsLayoutGuide *)self maximumSize];
  if (width != v7 || height != v6)
  {
    self->_maximumSize.width = width;
    self->_maximumSize.height = height;

    [(_UIContentConstraintsLayoutGuide *)self _updateAllSizeConstraints];
  }
}

- (void)setMinimumSize:(CGSize)size
{
  if (fabs(size.width) >= 0.5)
  {
    width = size.width;
  }

  else
  {
    width = 0.0;
  }

  if (fabs(size.height) >= 0.5)
  {
    height = size.height;
  }

  else
  {
    height = 0.0;
  }

  [(_UIContentConstraintsLayoutGuide *)self minimumSize];
  if (width != v7 || height != v6)
  {
    self->_minimumSize.width = width;
    self->_minimumSize.height = height;

    [(_UIContentConstraintsLayoutGuide *)self _updateAllSizeConstraints];
  }
}

- (void)_setAllMarginConstraintsActive:(BOOL)active
{
  activeCopy = active;
  v4 = MEMORY[0x1E69977A0];
  _allMarginConstraints = [(_UIContentConstraintsLayoutGuide *)self _allMarginConstraints];
  if (activeCopy)
  {
    [v4 activateConstraints:_allMarginConstraints];
  }

  else
  {
    [v4 deactivateConstraints:_allMarginConstraints];
  }
}

- (void)_setAllSizeConstraintsActive:(BOOL)active
{
  self->_wantsMaximumSizeConstraintsActive = active;
  self->_wantsMinimumSizeConstraintsActive = active;
  [(_UIContentConstraintsLayoutGuide *)self _updateAllSizeConstraints];
}

- (void)_updateAllMarginConstraintConstants
{
  p_edgeInsets = &self->_edgeInsets;
  [(NSLayoutConstraint *)self->_leadingConstraint setConstant:self->_edgeInsets.left];
  [(NSLayoutConstraint *)self->_trailingConstraint setConstant:-p_edgeInsets->right];
  [(NSLayoutConstraint *)self->_topConstraint setConstant:p_edgeInsets->top];
  v4 = -p_edgeInsets->bottom;
  bottomConstraint = self->_bottomConstraint;

  [(NSLayoutConstraint *)bottomConstraint setConstant:v4];
}

- (void)_updateAllSizeConstraints
{
  array = [MEMORY[0x1E695DF70] array];
  if (self->_maximumSize.width < 1.79769313e308)
  {
    [(NSLayoutConstraint *)self->_maximumWidthConstraint setConstant:?];
    if (self->_wantsMaximumSizeConstraintsActive)
    {
      [array addObject:self->_maximumWidthConstraint];
    }
  }

  if (self->_maximumSize.height < 1.79769313e308)
  {
    [(NSLayoutConstraint *)self->_maximumHeightConstraint setConstant:?];
    if (self->_wantsMaximumSizeConstraintsActive)
    {
      [array addObject:self->_maximumHeightConstraint];
    }
  }

  if (self->_minimumSize.width > 0.00000011920929)
  {
    [(NSLayoutConstraint *)self->_minimumWidthConstraint setConstant:?];
    if (self->_wantsMinimumSizeConstraintsActive)
    {
      [array addObject:self->_minimumWidthConstraint];
    }
  }

  if (self->_minimumSize.height > 0.00000011920929)
  {
    [(NSLayoutConstraint *)self->_minimumHeightConstraint setConstant:?];
    if (self->_wantsMinimumSizeConstraintsActive)
    {
      [array addObject:self->_minimumHeightConstraint];
    }
  }

  v3 = [MEMORY[0x1E695DF70] arrayWithObjects:{self->_maximumWidthConstraint, self->_maximumHeightConstraint, self->_minimumWidthConstraint, self->_minimumHeightConstraint, 0}];
  [v3 removeObjectsInArray:array];
  v4 = MEMORY[0x1E69977A0];
  v6 = _UIConstraintsBySortingConstraintsForInsertionPerformance(array, v5);
  [v4 activateConstraints:v6];

  v7 = MEMORY[0x1E69977A0];
  v9 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v3, v8);
  [v7 deactivateConstraints:v9];
}

- (void)_clearConstraints
{
  [(_UIContentConstraintsLayoutGuide *)self _setAllMarginConstraintsActive:0];
  leadingConstraint = self->_leadingConstraint;
  self->_leadingConstraint = 0;

  trailingConstraint = self->_trailingConstraint;
  self->_trailingConstraint = 0;

  topConstraint = self->_topConstraint;
  self->_topConstraint = 0;

  bottomConstraint = self->_bottomConstraint;
  self->_bottomConstraint = 0;

  [(_UIContentConstraintsLayoutGuide *)self _setAllSizeConstraintsActive:0];
  maximumWidthConstraint = self->_maximumWidthConstraint;
  self->_maximumWidthConstraint = 0;

  maximumHeightConstraint = self->_maximumHeightConstraint;
  self->_maximumHeightConstraint = 0;

  minimumWidthConstraint = self->_minimumWidthConstraint;
  self->_minimumWidthConstraint = 0;

  minimumHeightConstraint = self->_minimumHeightConstraint;
  self->_minimumHeightConstraint = 0;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minimumSize
{
  width = self->_minimumSize.width;
  height = self->_minimumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end