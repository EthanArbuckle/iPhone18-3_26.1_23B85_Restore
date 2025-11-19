@interface _UIStatusBarBadgeView
- (_UIStatusBarBadgeView)initWithFrame:(CGRect)a3;
- (void)applyStyleAttributes:(id)a3;
@end

@implementation _UIStatusBarBadgeView

- (_UIStatusBarBadgeView)initWithFrame:(CGRect)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = _UIStatusBarBadgeView;
  v3 = [(UIView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v28 = [(UIView *)v3 layer];
    [v28 setBorderWidth:1.0];
    v5 = objc_alloc_init(UILabel);
    label = v4->_label;
    v4->_label = v5;

    [(UILabel *)v4->_label setTextAlignment:1];
    [(UIView *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:v4->_label];
    v7 = [(UIView *)v4->_label leadingAnchor];
    v8 = [(UIView *)v4 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v31[0] = v9;
    v10 = [(UIView *)v4 bottomAnchor];
    v11 = [(UIView *)v4->_label lastBaselineAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v31[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    constraintsWithConstant = v4->_constraintsWithConstant;
    v4->_constraintsWithConstant = v13;

    v15 = v4->_constraintsWithConstant;
    v27 = [(UIView *)v4->_label centerXAnchor];
    v26 = [(UIView *)v4 centerXAnchor];
    v16 = [v27 constraintEqualToAnchor:v26];
    v30[0] = v16;
    v17 = [(UIView *)v4 widthAnchor];
    v18 = [(UIView *)v4 heightAnchor];
    v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18];
    v30[1] = v19;
    v20 = [(UIView *)v4->_label centerYAnchor];
    v21 = [(UIView *)v4 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v30[2] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    v24 = [(NSArray *)v15 arrayByAddingObjectsFromArray:v23];

    [MEMORY[0x1E69977A0] activateConstraints:v24];
  }

  return v4;
}

- (void)applyStyleAttributes:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 iconSize] - 5;
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

  v14 = [v4 isRounded];
  v15 = [(UIView *)self layer];
  v16 = v15;
  v17 = 2.5;
  if (v14)
  {
    v17 = 4.0;
  }

  [v15 setCornerRadius:{v17, v21}];

  v18 = [v4 textColor];
  [(UILabel *)self->_label setTextColor:v18];
  v19 = [v18 CGColor];
  v20 = [(UIView *)self layer];
  [v20 setBorderColor:v19];
}

@end