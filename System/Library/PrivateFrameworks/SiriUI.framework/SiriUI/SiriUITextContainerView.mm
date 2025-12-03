@interface SiriUITextContainerView
+ (CGRect)_textBoundingRectWithSize:(CGSize)size text:(id)text font:(id)font textContainerStyle:(id *)style;
+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text font:(id)font textContainerStyle:(id *)style;
+ (double)_distanceFromBaselineToBottomWithFont:(id)font textContainerStyle:(id *)style;
+ (double)_distanceFromTopToBaselineWithFont:(id)font textContainerStyle:(id *)style;
- ($131113AABFBD927EF350151908AA1243)textContainerStyle;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriUITextContainerView)initWithText:(id)text visualEffect:(id)effect;
- (void)layoutSubviews;
- (void)setFont:(id)font;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextContainerStyle:(id *)style;
@end

@implementation SiriUITextContainerView

+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text font:(id)font textContainerStyle:(id *)style
{
  height = fits.height;
  width = fits.width;
  v11 = *&style->var2;
  v19 = *&style->var0;
  v20 = v11;
  v21 = *&style->var3.left;
  right = style->var3.right;
  fontCopy = font;
  [self _textBoundingRectWithSize:text text:fontCopy font:&v19 textContainerStyle:{width, height}];
  MaxY = CGRectGetMaxY(v24);
  v14 = *&style->var2;
  v19 = *&style->var0;
  v20 = v14;
  v21 = *&style->var3.left;
  right = style->var3.right;
  [self _distanceFromBaselineToBottomWithFont:fontCopy textContainerStyle:&v19];
  v16 = v15;

  v17 = MaxY + v16 + style->var3.top + style->var3.bottom;
  v18 = width;
  result.height = v17;
  result.width = v18;
  return result;
}

- (SiriUITextContainerView)initWithText:(id)text visualEffect:(id)effect
{
  textCopy = text;
  effectCopy = effect;
  v20.receiver = self;
  v20.super_class = SiriUITextContainerView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [(SiriUITextContainerView *)&v20 initWithFrame:*MEMORY[0x277CBF3A0], v9, v10, v11];
  if (v12)
  {
    label = [MEMORY[0x277D60108] label];
    label = v12->_label;
    v12->_label = label;

    if (effectCopy)
    {
      v15 = [[SiriUIVisualEffectView alloc] initWithEffect:effectCopy];
      [(SiriUIVisualEffectView *)v15 setCustomView:v12->_label];
      containerView = v12->_containerView;
      v12->_containerView = &v15->super.super;
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v8, v9, v10, v11}];
      v18 = v12->_containerView;
      v12->_containerView = v17;

      [(UIView *)v12->_containerView addSubview:v12->_label];
    }

    [(SiriUITextContainerView *)v12 addSubview:v12->_containerView];
    [(SiriUITextContainerView *)v12 setText:textCopy];
  }

  return v12;
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = SiriUITextContainerView;
  [(SiriUITextContainerView *)&v35 layoutSubviews];
  font = [(SiriSharedUIContentLabel *)self->_label font];
  text = [(SiriSharedUIContentLabel *)self->_label text];
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  [(SiriUITextContainerView *)self textContainerStyle];
  [(SiriUITextContainerView *)self frame];
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  v9 = CGRectGetWidth(v36);
  UICeilToViewScale();
  v11 = v10;
  UICeilToViewScale();
  v26 = v9 - (v11 + v12);
  v13 = objc_opt_class();
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v14 = CGRectGetWidth(v37);
  v27 = v31;
  v28 = v32;
  v29 = v33;
  v30 = v34;
  [v13 _textBoundingRectWithSize:text text:font font:&v27 textContainerStyle:{v14, 1.79769313e308}];
  v15 = CGRectGetHeight(v38);
  UICeilToViewScale();
  v17 = v16;
  v18 = *(&v32 + 1);
  v19 = objc_opt_class();
  v27 = v31;
  v28 = v32;
  v29 = v33;
  v30 = v34;
  [v19 _distanceFromBaselineToBottomWithFont:font textContainerStyle:&v27];
  v21 = v15 + v20;
  [(SiriSharedUIContentLabel *)self->_label setFrame:v17, v18, v26, v15];
  label = self->_label;
  v23 = objc_opt_class();
  v27 = v31;
  v28 = v32;
  v29 = v33;
  v30 = v34;
  [v23 _distanceFromTopToBaselineWithFont:font textContainerStyle:&v27];
  [(SiriSharedUIContentLabel *)label _setFirstLineBaselineFrameOriginY:?];
  containerView = self->_containerView;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v25 = *(&v32 + 1) + (CGRectGetHeight(v39) - *(&v32 + 1) - *(&v33 + 1) - v21) * 0.5;
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  [(UIView *)containerView setFrame:0.0, v25, CGRectGetWidth(v40), v21];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = objc_opt_class();
  text = [(SiriSharedUIContentLabel *)self->_label text];
  font = [(SiriSharedUIContentLabel *)self->_label font];
  [(SiriUITextContainerView *)self textContainerStyle];
  [v6 sizeThatFits:text text:font font:v15 textContainerStyle:{width, height}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setText:(id)text
{
  [(SiriSharedUIContentLabel *)self->_label setText:text];

  [(SiriUITextContainerView *)self setNeedsLayout];
}

- (void)setFont:(id)font
{
  [(SiriSharedUIContentLabel *)self->_label setFont:font];

  [(SiriUITextContainerView *)self setNeedsLayout];
}

- (void)setTextAlignment:(int64_t)alignment
{
  if ([(SiriSharedUIContentLabel *)self->_label textAlignment]!= alignment)
  {
    label = self->_label;

    [(SiriSharedUIContentLabel *)label setTextAlignment:alignment];
  }
}

- (void)setTextContainerStyle:(id *)style
{
  v6 = *&style->var2;
  v5 = *&style->var3.left;
  v7 = *&style->var0;
  self->_textContainerStyle.edgeInsets.right = style->var3.right;
  *&self->_textContainerStyle.distanceFromBaselineToBottom = v6;
  *&self->_textContainerStyle.edgeInsets.left = v5;
  *&self->_textContainerStyle.numberOfLines = v7;
  [(SiriSharedUIContentLabel *)self->_label setNumberOfLines:style->var0];
  [(SiriSharedUIContentLabel *)self->_label setLineBreakMode:4 * (style->var0 == 1)];

  [(SiriUITextContainerView *)self setNeedsLayout];
}

+ (CGRect)_textBoundingRectWithSize:(CGSize)size text:(id)text font:(id)font textContainerStyle:(id *)style
{
  width = size.width;
  v27[1] = *MEMORY[0x277D85DE8];
  v26 = *MEMORY[0x277D740A8];
  v27[0] = font;
  v9 = MEMORY[0x277CBEAC0];
  fontCopy = font;
  textCopy = text;
  v12 = [v9 dictionaryWithObjects:v27 forKeys:&v26 count:1];

  if (style->var0 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  [textCopy boundingRectWithSize:v13 options:v12 attributes:0 context:{width - (style->var3.left + style->var3.right), 1.79769313e308}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

+ (double)_distanceFromBaselineToBottomWithFont:(id)font textContainerStyle:(id *)style
{
  [font _scaledValueForValue:style->var2];

  UIRoundToViewScale();
  return result;
}

+ (double)_distanceFromTopToBaselineWithFont:(id)font textContainerStyle:(id *)style
{
  [font _scaledValueForValue:style->var1];

  UIRoundToViewScale();
  return result;
}

- ($131113AABFBD927EF350151908AA1243)textContainerStyle
{
  v3 = *&self[7].var3.right;
  *&retstr->var0 = *&self[7].var3.left;
  *&retstr->var2 = v3;
  *&retstr->var3.left = *&self[8].var1;
  retstr->var3.right = self[8].var3.top;
  return self;
}

@end