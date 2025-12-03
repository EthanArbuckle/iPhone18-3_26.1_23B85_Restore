@interface _UIStatusBarCellularNetworkTypeView
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (_UIStatusBarCellularNetworkTypeView)initWithFrame:(CGRect)frame;
- (void)_animateUpdateToText:(id)text prefixLength:(int64_t)length styleAttributes:(id)attributes attributedText:(id)attributedText type:(int64_t)type;
- (void)setAttributedText:(id)text prefixLength:(int64_t)length forType:(int64_t)type animated:(BOOL)animated;
- (void)setFixedWidth:(double)width;
- (void)setText:(id)text prefixLength:(int64_t)length withStyleAttributes:(id)attributes forType:(int64_t)type animated:(BOOL)animated;
@end

@implementation _UIStatusBarCellularNetworkTypeView

- (_UIStatusBarCellularNetworkTypeView)initWithFrame:(CGRect)frame
{
  v55[12] = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = _UIStatusBarCellularNetworkTypeView;
  v3 = [(UIView *)&v54 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  widthAnchor = [(UIView *)v3 widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:0.0];
  widthConstraint = v3->_widthConstraint;
  v3->_widthConstraint = v15;

  leadingAnchor = [(UILayoutGuide *)v4 leadingAnchor];
  leadingAnchor2 = [(UIView *)v3->_stringView leadingAnchor];
  v51 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v55[0] = v51;
  trailingAnchor = [(UILayoutGuide *)v4 trailingAnchor];
  trailingAnchor2 = [(UIView *)v3->_stringView trailingAnchor];
  v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v55[1] = v48;
  topAnchor = [(UILayoutGuide *)v4 topAnchor];
  topAnchor2 = [(UIView *)v3->_stringView topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v55[2] = v45;
  bottomAnchor = [(UILayoutGuide *)v4 bottomAnchor];
  bottomAnchor2 = [(UIView *)v3->_stringView bottomAnchor];
  v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v55[3] = v42;
  leadingAnchor3 = [(UILayoutGuide *)v4 leadingAnchor];
  leadingAnchor4 = [(UIView *)v3->_prefixLabel leadingAnchor];
  v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v55[4] = v38;
  trailingAnchor3 = [(UIView *)v3->_prefixLabel trailingAnchor];
  leadingAnchor5 = [(UIView *)v3->_accessoryLabel leadingAnchor];
  v34 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
  v55[5] = v34;
  lastBaselineAnchor = [(UIView *)v3->_stringView lastBaselineAnchor];
  lastBaselineAnchor2 = [(UIView *)v3->_prefixLabel lastBaselineAnchor];
  v31 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  v55[6] = v31;
  lastBaselineAnchor3 = [(UIView *)v3->_stringView lastBaselineAnchor];
  lastBaselineAnchor4 = [(UIView *)v3->_accessoryLabel lastBaselineAnchor];
  v28 = [lastBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor4];
  v55[7] = v28;
  v17 = v4;
  centerXAnchor = [(UILayoutGuide *)v4 centerXAnchor];
  centerXAnchor2 = [(UIView *)v3 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v55[8] = v20;
  topAnchor3 = [(UIView *)v3 topAnchor];
  v35 = v17;
  topAnchor4 = [(UILayoutGuide *)v17 topAnchor];
  v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v55[9] = v23;
  bottomAnchor3 = [(UIView *)v3 bottomAnchor];
  bottomAnchor4 = [(UILayoutGuide *)v17 bottomAnchor];
  v26 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v55[10] = v26;
  v55[11] = v3->_widthConstraint;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:12];

  [MEMORY[0x1E69977A0] activateConstraints:v40];
  return v3;
}

- (void)setFixedWidth:(double)width
{
  widthConstraint = [(_UIStatusBarCellularNetworkTypeView *)self widthConstraint];
  [widthConstraint constant];
  v7 = vabdd_f64(width, v6);

  if (v7 > 0.00000011920929)
  {
    if (width <= 0.0 || (-[_UIStatusBarCellularNetworkTypeView widthConstraint](self, "widthConstraint"), v8 = objc_claimAutoreleasedReturnValue(), [v8 constant], v10 = v9, v8, v10 <= 0.0))
    {
      widthConstraint2 = [(_UIStatusBarCellularNetworkTypeView *)self widthConstraint];
      [widthConstraint2 setConstant:width];

      superview = [(UIView *)self superview];
      [superview layoutSubviews];
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __53___UIStatusBarCellularNetworkTypeView_setFixedWidth___block_invoke;
      v13[3] = &unk_1E70F32F0;
      v13[4] = self;
      *&v13[5] = width;
      [UIApp _performBlockAfterCATransactionCommits:v13];
    }
  }
}

- (void)_animateUpdateToText:(id)text prefixLength:(int64_t)length styleAttributes:(id)attributes attributedText:(id)attributedText type:(int64_t)type
{
  textCopy = text;
  attributesCopy = attributes;
  attributedTextCopy = attributedText;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __109___UIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke;
  v29[3] = &unk_1E7101EC8;
  v15 = length != 0x7FFFFFFFFFFFFFFFLL;
  v29[4] = self;
  v34 = length != 0x7FFFFFFFFFFFFFFFLL;
  v16 = textCopy;
  v30 = v16;
  lengthCopy = length;
  v17 = attributedTextCopy;
  v31 = v17;
  v18 = attributesCopy;
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
  typeCopy = type;
  v20 = v18;
  v21 = v16;
  v22 = v17;
  [v19 _performBlockAfterCATransactionCommits:v23];
}

- (void)setAttributedText:(id)text prefixLength:(int64_t)length forType:(int64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  v33[3] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v11 = textCopy;
  if (animatedCopy && !self->_animatingUpdate)
  {
    self->_animatingUpdate = 1;
    string = [textCopy string];
    [(_UIStatusBarCellularNetworkTypeView *)self _animateUpdateToText:string prefixLength:length styleAttributes:0 attributedText:v11 type:type];
  }

  else
  {
    typeCopy = type;
    [(UILabel *)self->_stringView setAttributedText:textCopy];
    [(UIView *)self->_prefixLabel setHidden:1];
    [(UIView *)self->_accessoryLabel setHidden:1];
    [(UIView *)self->_stringView setAlpha:1.0];
    string2 = [v11 string];
    v13 = string2;
    if (length == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = string2;
    }

    else
    {
      v14 = [string2 substringToIndex:length];
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
    if (length != 0x7FFFFFFFFFFFFFFFLL)
    {
      string3 = [v11 string];
      v24 = [string3 substringFromIndex:length];
      [(UIVectorLabel *)self->_accessoryLabel setText:v24];

      v25 = [v11 attributesAtIndex:length effectiveRange:0];
      v26 = [v25 objectForKeyedSubscript:v16];
      [(UIVectorLabel *)self->_accessoryLabel setFont:v26];

      v27 = [v25 objectForKeyedSubscript:v18];
      [(UIVectorLabel *)self->_accessoryLabel setTextColor:v27];

      [(UIView *)self->_accessoryLabel setNeedsLayout];
    }

    self->_type = typeCopy;
    self->_animatingUpdate = 0;
  }
}

- (void)setText:(id)text prefixLength:(int64_t)length withStyleAttributes:(id)attributes forType:(int64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  v27[3] = *MEMORY[0x1E69E9840];
  textCopy = text;
  attributesCopy = attributes;
  if (animatedCopy && !self->_animatingUpdate)
  {
    self->_animatingUpdate = 1;
    [(_UIStatusBarCellularNetworkTypeView *)self _animateUpdateToText:textCopy prefixLength:length styleAttributes:attributesCopy attributedText:0 type:type];
  }

  else
  {
    [(_UIStatusBarStringView *)self->_stringView setText:textCopy];
    [(_UIStatusBarStringView *)self->_stringView applyStyleAttributes:attributesCopy];
    [(UIView *)self->_prefixLabel setHidden:1];
    [(UIView *)self->_accessoryLabel setHidden:1];
    [(UIView *)self->_stringView setAlpha:1.0];
    v23 = textCopy;
    if (length == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = textCopy;
    }

    else
    {
      v14 = [textCopy substringToIndex:length];
    }

    v15 = v14;
    v16 = [attributesCopy fontForStyle:{-[_UIStatusBarStringView fontStyle](self->_stringView, "fontStyle", v23)}];
    textColor = [attributesCopy textColor];
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = *off_1E70EC918;
    v26[0] = *off_1E70EC950;
    v26[1] = v19;
    v27[0] = &unk_1EFE2EFD8;
    v27[1] = v16;
    v26[2] = *off_1E70EC920;
    v27[2] = textColor;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v25 = v15;
    v21 = [v18 initWithString:v15 attributes:v20];
    [(UIVectorLabel *)self->_prefixLabel _setAttributedText:v21];

    [(UIView *)self->_prefixLabel setNeedsLayout];
    textCopy = v24;
    if (length != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = [v24 substringFromIndex:length];
      [(UIVectorLabel *)self->_accessoryLabel setText:v22];

      [(UIVectorLabel *)self->_accessoryLabel setFont:v16];
      [(UIVectorLabel *)self->_accessoryLabel setTextColor:textColor];
      [(UIView *)self->_accessoryLabel setNeedsLayout];
    }

    self->_type = type;
    self->_animatingUpdate = 0;
  }
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  v3 = [UIAccessibilityHUDItem alloc];
  text = [(UILabel *)self->_stringView text];
  v5 = [(UIAccessibilityHUDItem *)v3 initWithTitle:text image:0 imageInsets:0.0, 0.0, 0.0, 0.0];

  return v5;
}

@end