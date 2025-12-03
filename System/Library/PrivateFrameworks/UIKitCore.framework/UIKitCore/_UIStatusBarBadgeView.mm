@interface _UIStatusBarBadgeView
- (_UIStatusBarBadgeView)initWithFrame:(CGRect)frame;
- (void)applyStyleAttributes:(id)attributes;
@end

@implementation _UIStatusBarBadgeView

- (_UIStatusBarBadgeView)initWithFrame:(CGRect)frame
{
  v31[2] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = _UIStatusBarBadgeView;
  v3 = [(UIView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    [layer setBorderWidth:1.0];
    v5 = objc_alloc_init(UILabel);
    label = v4->_label;
    v4->_label = v5;

    [(UILabel *)v4->_label setTextAlignment:1];
    [(UIView *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:v4->_label];
    leadingAnchor = [(UIView *)v4->_label leadingAnchor];
    leadingAnchor2 = [(UIView *)v4 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[0] = v9;
    bottomAnchor = [(UIView *)v4 bottomAnchor];
    lastBaselineAnchor = [(UIView *)v4->_label lastBaselineAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];
    v31[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    constraintsWithConstant = v4->_constraintsWithConstant;
    v4->_constraintsWithConstant = v13;

    v15 = v4->_constraintsWithConstant;
    centerXAnchor = [(UIView *)v4->_label centerXAnchor];
    centerXAnchor2 = [(UIView *)v4 centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v30[0] = v16;
    widthAnchor = [(UIView *)v4 widthAnchor];
    heightAnchor = [(UIView *)v4 heightAnchor];
    v19 = [widthAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor];
    v30[1] = v19;
    centerYAnchor = [(UIView *)v4->_label centerYAnchor];
    centerYAnchor2 = [(UIView *)v4 centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v30[2] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    v24 = [(NSArray *)v15 arrayByAddingObjectsFromArray:v23];

    [MEMORY[0x1E69977A0] activateConstraints:v24];
  }

  return v4;
}

- (void)applyStyleAttributes:(id)attributes
{
  v26 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v5 = [attributesCopy iconSize] - 5;
  v6 = 0.0;
  v7 = 0.0;
  if (v5 <= 8)
  {
    v6 = dbl_18A681AE0[v5];
    v7 = dbl_18A681B28[v5];
  }

  v8 = [off_1E70ECC18 monospacedSystemFontOfSize:v7 weight:*off_1E70ECD10];
  [(UILabel *)self->_label setFont:v8];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_constraintsWithConstant;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v21 + 1) + 8 * v13++) setConstant:{v6, v21}];
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  isRounded = [attributesCopy isRounded];
  layer = [(UIView *)self layer];
  v16 = layer;
  v17 = 2.5;
  if (isRounded)
  {
    v17 = 4.0;
  }

  [layer setCornerRadius:{v17, v21}];

  textColor = [attributesCopy textColor];
  [(UILabel *)self->_label setTextColor:textColor];
  cGColor = [textColor CGColor];
  layer2 = [(UIView *)self layer];
  [layer2 setBorderColor:cGColor];
}

@end