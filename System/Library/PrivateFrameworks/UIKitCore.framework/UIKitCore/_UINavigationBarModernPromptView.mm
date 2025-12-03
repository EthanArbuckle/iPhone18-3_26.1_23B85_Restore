@interface _UINavigationBarModernPromptView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (_UINavigationBarModernPromptView)initWithFrame:(CGRect)frame;
- (void)_updatePromptLabel;
- (void)setPrompt:(id)prompt;
- (void)setTextColor:(id)color;
@end

@implementation _UINavigationBarModernPromptView

- (_UINavigationBarModernPromptView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _UINavigationBarModernPromptView;
  v3 = [(UIView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    lastBaselineAnchor = [(UIView *)self->_promptLabel lastBaselineAnchor];
    topAnchor = [(UIView *)self topAnchor];
    v31 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:22.0];
    v34[0] = v31;
    centerXAnchor = [(UIView *)self->_promptLabel centerXAnchor];
    layoutMarginsGuide = [(UIView *)self layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v34[1] = v27;
    leadingAnchor = [(UIView *)self->_promptLabel leadingAnchor];
    layoutMarginsGuide2 = [(UIView *)self layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v22 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v34[2] = v22;
    trailingAnchor = [(UIView *)self->_promptLabel trailingAnchor];
    layoutMarginsGuide3 = [(UIView *)self layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    v7 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v34[3] = v7;
    leadingAnchor3 = [(UIView *)self->_promptLabel leadingAnchor];
    v21 = v6;
    leadingAnchor4 = [v6 leadingAnchor];
    v10 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
    v34[4] = v10;
    trailingAnchor3 = [(UIView *)self->_promptLabel trailingAnchor];
    trailingAnchor4 = [v6 trailingAnchor];
    v13 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
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

- (void)setPrompt:(id)prompt
{
  promptCopy = prompt;
  if (promptCopy)
  {
    v5 = promptCopy;
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

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = +[UIColor labelColor];
  }

  obj = colorCopy;
  if (![(UIColor *)self->_textColor isEqual:colorCopy])
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