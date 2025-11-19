@interface _UIContentConstraintsLayoutGuide
- (CGSize)maximumSize;
- (CGSize)minimumSize;
- (UIEdgeInsets)edgeInsets;
- (_UIContentConstraintsLayoutGuide)init;
- (void)_clearConstraints;
- (void)_setAllMarginConstraintsActive:(BOOL)a3;
- (void)_setAllSizeConstraintsActive:(BOOL)a3;
- (void)_updateAllMarginConstraintConstants;
- (void)_updateAllSizeConstraints;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setMaximumSize:(CGSize)a3;
- (void)setMinimumSize:(CGSize)a3;
- (void)setOwningView:(id)a3;
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

- (void)setOwningView:(id)a3
{
  v4 = a3;
  v5 = [(UILayoutGuide *)self owningView];

  if (v5 != v4)
  {
    [(_UIContentConstraintsLayoutGuide *)self _clearConstraints];
    v40.receiver = self;
    v40.super_class = _UIContentConstraintsLayoutGuide;
    [(UILayoutGuide *)&v40 setOwningView:v4];
    if (v4)
    {
      v6 = [(UILayoutGuide *)self leadingAnchor];
      v7 = [v4 leadingAnchor];
      v8 = [v6 constraintEqualToAnchor:v7 constant:0.0];
      leadingConstraint = self->_leadingConstraint;
      self->_leadingConstraint = v8;

      v10 = [(UILayoutGuide *)self trailingAnchor];
      v11 = [v4 trailingAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];
      trailingConstraint = self->_trailingConstraint;
      self->_trailingConstraint = v12;

      v14 = [(UILayoutGuide *)self topAnchor];
      v15 = [v4 topAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];
      topConstraint = self->_topConstraint;
      self->_topConstraint = v16;

      LODWORD(v18) = 1144750080;
      [(NSLayoutConstraint *)self->_topConstraint setPriority:v18];
      v19 = [(UILayoutGuide *)self bottomAnchor];
      v20 = [v4 bottomAnchor];
      v21 = [v19 constraintEqualToAnchor:v20 constant:0.0];
      bottomConstraint = self->_bottomConstraint;
      self->_bottomConstraint = v21;

      LODWORD(v23) = 1144750080;
      [(NSLayoutConstraint *)self->_bottomConstraint setPriority:v23];
      v24 = [(UILayoutGuide *)self widthAnchor];
      v25 = [v24 constraintLessThanOrEqualToConstant:0.0];
      maximumWidthConstraint = self->_maximumWidthConstraint;
      self->_maximumWidthConstraint = v25;

      v27 = [(UILayoutGuide *)self heightAnchor];
      v28 = [v27 constraintLessThanOrEqualToConstant:0.0];
      maximumHeightConstraint = self->_maximumHeightConstraint;
      self->_maximumHeightConstraint = v28;

      v30 = [(UILayoutGuide *)self widthAnchor];
      v31 = [v30 constraintGreaterThanOrEqualToConstant:0.0];
      minimumWidthConstraint = self->_minimumWidthConstraint;
      self->_minimumWidthConstraint = v31;

      v33 = [(UILayoutGuide *)self heightAnchor];
      v34 = [v33 constraintGreaterThanOrEqualToConstant:0.0];
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

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v3), vceqq_f64(*&self->_edgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_edgeInsets = a3;
    [(_UIContentConstraintsLayoutGuide *)self _updateAllMarginConstraintConstants];
  }
}

- (void)setMaximumSize:(CGSize)a3
{
  if (fabs(a3.width) >= 0.5)
  {
    width = a3.width;
  }

  else
  {
    width = 1.79769313e308;
  }

  if (fabs(a3.height) >= 0.5)
  {
    height = a3.height;
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

- (void)setMinimumSize:(CGSize)a3
{
  if (fabs(a3.width) >= 0.5)
  {
    width = a3.width;
  }

  else
  {
    width = 0.0;
  }

  if (fabs(a3.height) >= 0.5)
  {
    height = a3.height;
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

- (void)_setAllMarginConstraintsActive:(BOOL)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69977A0];
  v5 = [(_UIContentConstraintsLayoutGuide *)self _allMarginConstraints];
  if (v3)
  {
    [v4 activateConstraints:v5];
  }

  else
  {
    [v4 deactivateConstraints:v5];
  }
}

- (void)_setAllSizeConstraintsActive:(BOOL)a3
{
  self->_wantsMaximumSizeConstraintsActive = a3;
  self->_wantsMinimumSizeConstraintsActive = a3;
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
  v10 = [MEMORY[0x1E695DF70] array];
  if (self->_maximumSize.width < 1.79769313e308)
  {
    [(NSLayoutConstraint *)self->_maximumWidthConstraint setConstant:?];
    if (self->_wantsMaximumSizeConstraintsActive)
    {
      [v10 addObject:self->_maximumWidthConstraint];
    }
  }

  if (self->_maximumSize.height < 1.79769313e308)
  {
    [(NSLayoutConstraint *)self->_maximumHeightConstraint setConstant:?];
    if (self->_wantsMaximumSizeConstraintsActive)
    {
      [v10 addObject:self->_maximumHeightConstraint];
    }
  }

  if (self->_minimumSize.width > 0.00000011920929)
  {
    [(NSLayoutConstraint *)self->_minimumWidthConstraint setConstant:?];
    if (self->_wantsMinimumSizeConstraintsActive)
    {
      [v10 addObject:self->_minimumWidthConstraint];
    }
  }

  if (self->_minimumSize.height > 0.00000011920929)
  {
    [(NSLayoutConstraint *)self->_minimumHeightConstraint setConstant:?];
    if (self->_wantsMinimumSizeConstraintsActive)
    {
      [v10 addObject:self->_minimumHeightConstraint];
    }
  }

  v3 = [MEMORY[0x1E695DF70] arrayWithObjects:{self->_maximumWidthConstraint, self->_maximumHeightConstraint, self->_minimumWidthConstraint, self->_minimumHeightConstraint, 0}];
  [v3 removeObjectsInArray:v10];
  v4 = MEMORY[0x1E69977A0];
  v6 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v10, v5);
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