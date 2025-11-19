@interface _UINavigationBarModernPromptView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (_UINavigationBarModernPromptView)initWithFrame:(CGRect)a3;
- (void)_updatePromptLabel;
- (void)setPrompt:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation _UINavigationBarModernPromptView

- (_UINavigationBarModernPromptView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _UINavigationBarModernPromptView;
  v3 = [(UIView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    prompt = v3->_prompt;
    v3->_prompt = &stru_1EFB14550;

    v6 = +[UIColor labelColor];
    textColor = v4->_textColor;
    v4->_textColor = v6;

    [(UIView *)v4 _setHostsLayoutEngine:1];
  }

  return v4;
}

- (void)_updatePromptLabel
{
  v34[6] = *MEMORY[0x1E69E9840];
  if (!self->_promptLabel && [(NSString *)self->_prompt length])
  {
    v3 = objc_alloc_init(UILabel);
    promptLabel = self->_promptLabel;
    self->_promptLabel = v3;

    [(UILabel *)self->_promptLabel setAdjustsFontSizeToFitWidth:1];
    [(UIView *)self addSubview:self->_promptLabel];
    [(UIView *)self->_promptLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [UIViewLayoutRegion safeAreaLayoutRegionWithCornerAdaptation:1];
    v6 = [(UIView *)self layoutGuideForLayoutRegion:v5];

    v25 = MEMORY[0x1E69977A0];
    v33 = [(UIView *)self->_promptLabel lastBaselineAnchor];
    v32 = [(UIView *)self topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32 constant:22.0];
    v34[0] = v31;
    v29 = [(UIView *)self->_promptLabel centerXAnchor];
    v30 = [(UIView *)self layoutMarginsGuide];
    v28 = [v30 centerXAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v34[1] = v27;
    v24 = [(UIView *)self->_promptLabel leadingAnchor];
    v26 = [(UIView *)self layoutMarginsGuide];
    v23 = [v26 leadingAnchor];
    v22 = [v24 constraintGreaterThanOrEqualToAnchor:v23];
    v34[2] = v22;
    v19 = [(UIView *)self->_promptLabel trailingAnchor];
    v20 = [(UIView *)self layoutMarginsGuide];
    v18 = [v20 trailingAnchor];
    v7 = [v19 constraintLessThanOrEqualToAnchor:v18];
    v34[3] = v7;
    v8 = [(UIView *)self->_promptLabel leadingAnchor];
    v21 = v6;
    v9 = [v6 leadingAnchor];
    v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9];
    v34[4] = v10;
    v11 = [(UIView *)self->_promptLabel trailingAnchor];
    v12 = [v6 trailingAnchor];
    v13 = [v11 constraintLessThanOrEqualToAnchor:v12];
    v34[5] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:6];
    [v25 activateConstraints:v14];
  }

  [(UILabel *)self->_promptLabel setTextColor:self->_textColor];
  if (self->_prompt)
  {
    prompt = self->_prompt;
  }

  else
  {
    prompt = &stru_1EFB14550;
  }

  [(UILabel *)self->_promptLabel setText:prompt];
  v16 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:@"UICTContentSizeCategoryL"];
  v17 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote" compatibleWithTraitCollection:v16];
  [(UILabel *)self->_promptLabel setFont:v17];
}

- (void)setPrompt:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1EFB14550;
  }

  obj = v5;
  if (![(NSString *)self->_prompt isEqualToString:?])
  {
    objc_storeStrong(&self->_prompt, obj);
    [(_UINavigationBarModernPromptView *)self _updatePromptLabel];
  }
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[UIColor labelColor];
  }

  obj = v4;
  if (![(UIColor *)self->_textColor isEqual:v4])
  {
    objc_storeStrong(&self->_textColor, obj);
    [(_UINavigationBarModernPromptView *)self _updatePromptLabel];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 34.0;
  v3 = -1.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 34.0;
  result.height = v3;
  return result;
}

@end