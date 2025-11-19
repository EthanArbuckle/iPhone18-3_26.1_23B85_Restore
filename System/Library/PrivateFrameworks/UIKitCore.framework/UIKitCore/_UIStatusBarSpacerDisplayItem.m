@interface _UIStatusBarSpacerDisplayItem
- (CGSize)size;
- (_UIStatusBarSpacerDisplayItem)initWithIdentifier:(id)a3 item:(id)a4;
- (void)_applyConstraintsIfNeeded;
- (void)applyUpdate:(id)a3;
- (void)setContainerView:(id)a3;
@end

@implementation _UIStatusBarSpacerDisplayItem

- (_UIStatusBarSpacerDisplayItem)initWithIdentifier:(id)a3 item:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarSpacerDisplayItem;
  result = [(_UIStatusBarDisplayItem *)&v5 initWithIdentifier:a3 item:a4];
  result->_size = vdupq_n_s64(0x7FF0000000000000uLL);
  return result;
}

- (void)applyUpdate:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = [a3 placementInfo];
  v5 = [v4 objectForKeyedSubscript:@"size"];

  if (v5)
  {
    [v5 CGSizeValue];
    v8 = v6;
    v9 = v7;
    if (v6 != self->_size.width || v7 != self->_size.height)
    {
      self->_size.width = v6;
      self->_size.height = v7;
      if (self->_constraints)
      {
        [MEMORY[0x1E69977A0] deactivateConstraints:?];
      }

      v11 = [(UILayoutGuide *)self->_layoutGuide widthAnchor];
      v12 = [v11 constraintEqualToConstant:v8];
      v17[0] = v12;
      v13 = [(UILayoutGuide *)self->_layoutGuide heightAnchor];
      v14 = [v13 constraintEqualToConstant:v9];
      v17[1] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      constraints = self->_constraints;
      self->_constraints = v15;

      [(_UIStatusBarSpacerDisplayItem *)self _applyConstraintsIfNeeded];
    }
  }
}

- (void)setContainerView:(id)a3
{
  v4 = a3;
  v5 = [(_UIStatusBarDisplayItem *)self containerView];

  if (v5 != v4)
  {
    v6 = [(_UIStatusBarDisplayItem *)self containerView];

    if (v6)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:self->_constraints];
    }

    v7.receiver = self;
    v7.super_class = _UIStatusBarSpacerDisplayItem;
    [(_UIStatusBarDisplayItem *)&v7 setContainerView:v4];
    [(_UIStatusBarSpacerDisplayItem *)self _applyConstraintsIfNeeded];
  }
}

- (void)_applyConstraintsIfNeeded
{
  if (self->_constraints)
  {
    v3 = [(_UIStatusBarDisplayItem *)self containerView];

    if (v3)
    {
      v4 = MEMORY[0x1E69977A0];
      constraints = self->_constraints;

      [v4 activateConstraints:constraints];
    }
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end