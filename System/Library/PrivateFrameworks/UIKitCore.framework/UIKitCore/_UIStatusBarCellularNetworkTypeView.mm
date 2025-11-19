@interface _UIStatusBarCellularNetworkTypeView
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (_UIStatusBarCellularNetworkTypeView)initWithFrame:(CGRect)a3;
- (void)_animateUpdateToText:(id)a3 prefixLength:(int64_t)a4 styleAttributes:(id)a5 attributedText:(id)a6 type:(int64_t)a7;
- (void)setAttributedText:(id)a3 prefixLength:(int64_t)a4 forType:(int64_t)a5 animated:(BOOL)a6;
- (void)setFixedWidth:(double)a3;
- (void)setText:(id)a3 prefixLength:(int64_t)a4 withStyleAttributes:(id)a5 forType:(int64_t)a6 animated:(BOOL)a7;
@end

@implementation _UIStatusBarCellularNetworkTypeView

- (_UIStatusBarCellularNetworkTypeView)initWithFrame:(CGRect)a3
{
  v55[12] = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = _UIStatusBarCellularNetworkTypeView;
  v3 = [(UIView *)&v54 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(UILayoutGuide);
  [(UIView *)v3 addLayoutGuide:?];
  v5 = [_UIStatusBarStringView alloc];
  [(UIView *)v3 bounds];
  v6 = [(_UIStatusBarStringView *)v5 initWithFrame:?];
  stringView = v3->_stringView;
  v3->_stringView = v6;

  [(UIView *)v3->_stringView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v3->_stringView setLineBreakMode:2];
  [(UIView *)v3 addSubview:v3->_stringView];
  v8 = [UIVectorLabel alloc];
  [(UIView *)v3 bounds];
  v9 = [(UIVectorLabel *)v8 initWithFrame:?];
  prefixLabel = v3->_prefixLabel;
  v3->_prefixLabel = v9;

  [(UIVectorLabel *)v3->_prefixLabel setText:&stru_1EFB14550];
  [(UIView *)v3->_prefixLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v3->_prefixLabel setHidden:1];
  [(UIView *)v3 addSubview:v3->_prefixLabel];
  v11 = [UIVectorLabel alloc];
  [(UIView *)v3 bounds];
  v12 = [(UIVectorLabel *)v11 initWithFrame:?];
  accessoryLabel = v3->_accessoryLabel;
  v3->_accessoryLabel = v12;

  [(UIVectorLabel *)v3->_accessoryLabel setText:&stru_1EFB14550];
  [(UIView *)v3->_accessoryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v3->_accessoryLabel setHidden:1];
  [(UIView *)v3 addSubview:v3->_accessoryLabel];
  v14 = [(UIView *)v3 widthAnchor];
  v15 = [v14 constraintEqualToConstant:0.0];
  widthConstraint = v3->_widthConstraint;
  v3->_widthConstraint = v15;

  v53 = [(UILayoutGuide *)v4 leadingAnchor];
  v52 = [(UIView *)v3->_stringView leadingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v55[0] = v51;
  v50 = [(UILayoutGuide *)v4 trailingAnchor];
  v49 = [(UIView *)v3->_stringView trailingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v55[1] = v48;
  v47 = [(UILayoutGuide *)v4 topAnchor];
  v46 = [(UIView *)v3->_stringView topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v55[2] = v45;
  v44 = [(UILayoutGuide *)v4 bottomAnchor];
  v43 = [(UIView *)v3->_stringView bottomAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v55[3] = v42;
  v41 = [(UILayoutGuide *)v4 leadingAnchor];
  v39 = [(UIView *)v3->_prefixLabel leadingAnchor];
  v38 = [v41 constraintEqualToAnchor:v39];
  v55[4] = v38;
  v37 = [(UIView *)v3->_prefixLabel trailingAnchor];
  v36 = [(UIView *)v3->_accessoryLabel leadingAnchor];
  v34 = [v37 constraintEqualToAnchor:v36];
  v55[5] = v34;
  v33 = [(UIView *)v3->_stringView lastBaselineAnchor];
  v32 = [(UIView *)v3->_prefixLabel lastBaselineAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v55[6] = v31;
  v30 = [(UIView *)v3->_stringView lastBaselineAnchor];
  v29 = [(UIView *)v3->_accessoryLabel lastBaselineAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v55[7] = v28;
  v17 = v4;
  v18 = [(UILayoutGuide *)v4 centerXAnchor];
  v19 = [(UIView *)v3 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v55[8] = v20;
  v21 = [(UIView *)v3 topAnchor];
  v35 = v17;
  v22 = [(UILayoutGuide *)v17 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v55[9] = v23;
  v24 = [(UIView *)v3 bottomAnchor];
  v25 = [(UILayoutGuide *)v17 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v55[10] = v26;
  v55[11] = v3->_widthConstraint;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:12];

  [MEMORY[0x1E69977A0] activateConstraints:v40];
  return v3;
}

- (void)setFixedWidth:(double)a3
{
  v5 = [(_UIStatusBarCellularNetworkTypeView *)self widthConstraint];
  [v5 constant];
  v7 = vabdd_f64(a3, v6);

  if (v7 > 0.00000011920929)
  {
    if (a3 <= 0.0 || (-[_UIStatusBarCellularNetworkTypeView widthConstraint](self, "widthConstraint"), v8 = objc_claimAutoreleasedReturnValue(), [v8 constant], v10 = v9, v8, v10 <= 0.0))
    {
      v11 = [(_UIStatusBarCellularNetworkTypeView *)self widthConstraint];
      [v11 setConstant:a3];

      v12 = [(UIView *)self superview];
      [v12 layoutSubviews];
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __53___UIStatusBarCellularNetworkTypeView_setFixedWidth___block_invoke;
      v13[3] = &unk_1E70F32F0;
      v13[4] = self;
      *&v13[5] = a3;
      [UIApp _performBlockAfterCATransactionCommits:v13];
    }
  }
}

- (void)_animateUpdateToText:(id)a3 prefixLength:(int64_t)a4 styleAttributes:(id)a5 attributedText:(id)a6 type:(int64_t)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __109___UIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke;
  v29[3] = &unk_1E7101EC8;
  v15 = a4 != 0x7FFFFFFFFFFFFFFFLL;
  v29[4] = self;
  v34 = a4 != 0x7FFFFFFFFFFFFFFFLL;
  v16 = v12;
  v30 = v16;
  v33 = a4;
  v17 = v14;
  v31 = v17;
  v18 = v13;
  v32 = v18;
  [UIView performWithoutAnimation:v29];
  v19 = UIApp;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __109___UIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke_2;
  v23[3] = &unk_1E7101EC8;
  v23[4] = self;
  v24 = v17;
  v25 = v16;
  v26 = v18;
  v28 = v15;
  v27 = a7;
  v20 = v18;
  v21 = v16;
  v22 = v17;
  [v19 _performBlockAfterCATransactionCommits:v23];
}

- (void)setAttributedText:(id)a3 prefixLength:(int64_t)a4 forType:(int64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  v33[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = v10;
  if (v6 && !self->_animatingUpdate)
  {
    self->_animatingUpdate = 1;
    v28 = [v10 string];
    [(_UIStatusBarCellularNetworkTypeView *)self _animateUpdateToText:v28 prefixLength:a4 styleAttributes:0 attributedText:v11 type:a5];
  }

  else
  {
    v31 = a5;
    [(UILabel *)self->_stringView setAttributedText:v10];
    [(UIView *)self->_prefixLabel setHidden:1];
    [(UIView *)self->_accessoryLabel setHidden:1];
    [(UIView *)self->_stringView setAlpha:1.0];
    v12 = [v11 string];
    v13 = v12;
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v12 substringToIndex:a4];
    }

    v15 = [v11 attributesAtIndex:0 effectiveRange:0];
    v16 = *off_1E70EC918;
    v17 = [v15 objectForKeyedSubscript:*off_1E70EC918];
    v18 = *off_1E70EC920;
    v29 = v15;
    v19 = [v15 objectForKeyedSubscript:*off_1E70EC920];
    v20 = objc_alloc(MEMORY[0x1E696AAB0]);
    v32[0] = *off_1E70EC950;
    v32[1] = v16;
    v33[0] = &unk_1EFE2EFD8;
    v33[1] = v17;
    v30 = v17;
    v32[2] = v18;
    v33[2] = v19;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
    v22 = [v20 initWithString:v14 attributes:v21];
    [(UIVectorLabel *)self->_prefixLabel _setAttributedText:v22];

    [(UIView *)self->_prefixLabel setNeedsLayout];
    if (a4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = [v11 string];
      v24 = [v23 substringFromIndex:a4];
      [(UIVectorLabel *)self->_accessoryLabel setText:v24];

      v25 = [v11 attributesAtIndex:a4 effectiveRange:0];
      v26 = [v25 objectForKeyedSubscript:v16];
      [(UIVectorLabel *)self->_accessoryLabel setFont:v26];

      v27 = [v25 objectForKeyedSubscript:v18];
      [(UIVectorLabel *)self->_accessoryLabel setTextColor:v27];

      [(UIView *)self->_accessoryLabel setNeedsLayout];
    }

    self->_type = v31;
    self->_animatingUpdate = 0;
  }
}

- (void)setText:(id)a3 prefixLength:(int64_t)a4 withStyleAttributes:(id)a5 forType:(int64_t)a6 animated:(BOOL)a7
{
  v7 = a7;
  v27[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  if (v7 && !self->_animatingUpdate)
  {
    self->_animatingUpdate = 1;
    [(_UIStatusBarCellularNetworkTypeView *)self _animateUpdateToText:v12 prefixLength:a4 styleAttributes:v13 attributedText:0 type:a6];
  }

  else
  {
    [(_UIStatusBarStringView *)self->_stringView setText:v12];
    [(_UIStatusBarStringView *)self->_stringView applyStyleAttributes:v13];
    [(UIView *)self->_prefixLabel setHidden:1];
    [(UIView *)self->_accessoryLabel setHidden:1];
    [(UIView *)self->_stringView setAlpha:1.0];
    v23 = v12;
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v12 substringToIndex:a4];
    }

    v15 = v14;
    v16 = [v13 fontForStyle:{-[_UIStatusBarStringView fontStyle](self->_stringView, "fontStyle", v23)}];
    v17 = [v13 textColor];
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = *off_1E70EC918;
    v26[0] = *off_1E70EC950;
    v26[1] = v19;
    v27[0] = &unk_1EFE2EFD8;
    v27[1] = v16;
    v26[2] = *off_1E70EC920;
    v27[2] = v17;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v25 = v15;
    v21 = [v18 initWithString:v15 attributes:v20];
    [(UIVectorLabel *)self->_prefixLabel _setAttributedText:v21];

    [(UIView *)self->_prefixLabel setNeedsLayout];
    v12 = v24;
    if (a4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = [v24 substringFromIndex:a4];
      [(UIVectorLabel *)self->_accessoryLabel setText:v22];

      [(UIVectorLabel *)self->_accessoryLabel setFont:v16];
      [(UIVectorLabel *)self->_accessoryLabel setTextColor:v17];
      [(UIView *)self->_accessoryLabel setNeedsLayout];
    }

    self->_type = a6;
    self->_animatingUpdate = 0;
  }
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  v3 = [UIAccessibilityHUDItem alloc];
  v4 = [(UILabel *)self->_stringView text];
  v5 = [(UIAccessibilityHUDItem *)v3 initWithTitle:v4 image:0 imageInsets:0.0, 0.0, 0.0, 0.0];

  return v5;
}

@end