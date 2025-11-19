@interface SiriUITextContainerView
+ (CGRect)_textBoundingRectWithSize:(CGSize)a3 text:(id)a4 font:(id)a5 textContainerStyle:(id *)a6;
+ (CGSize)sizeThatFits:(CGSize)a3 text:(id)a4 font:(id)a5 textContainerStyle:(id *)a6;
+ (double)_distanceFromBaselineToBottomWithFont:(id)a3 textContainerStyle:(id *)a4;
+ (double)_distanceFromTopToBaselineWithFont:(id)a3 textContainerStyle:(id *)a4;
- ($131113AABFBD927EF350151908AA1243)textContainerStyle;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriUITextContainerView)initWithText:(id)a3 visualEffect:(id)a4;
- (void)layoutSubviews;
- (void)setFont:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextContainerStyle:(id *)a3;
@end

@implementation SiriUITextContainerView

+ (CGSize)sizeThatFits:(CGSize)a3 text:(id)a4 font:(id)a5 textContainerStyle:(id *)a6
{
  height = a3.height;
  width = a3.width;
  v11 = *&a6->var2;
  v19 = *&a6->var0;
  v20 = v11;
  v21 = *&a6->var3.left;
  right = a6->var3.right;
  v12 = a5;
  [a1 _textBoundingRectWithSize:a4 text:v12 font:&v19 textContainerStyle:{width, height}];
  MaxY = CGRectGetMaxY(v24);
  v14 = *&a6->var2;
  v19 = *&a6->var0;
  v20 = v14;
  v21 = *&a6->var3.left;
  right = a6->var3.right;
  [a1 _distanceFromBaselineToBottomWithFont:v12 textContainerStyle:&v19];
  v16 = v15;

  v17 = MaxY + v16 + a6->var3.top + a6->var3.bottom;
  v18 = width;
  result.height = v17;
  result.width = v18;
  return result;
}

- (SiriUITextContainerView)initWithText:(id)a3 visualEffect:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = SiriUITextContainerView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [(SiriUITextContainerView *)&v20 initWithFrame:*MEMORY[0x277CBF3A0], v9, v10, v11];
  if (v12)
  {
    v13 = [MEMORY[0x277D60108] label];
    label = v12->_label;
    v12->_label = v13;

    if (v7)
    {
      v15 = [[SiriUIVisualEffectView alloc] initWithEffect:v7];
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
    [(SiriUITextContainerView *)v12 setText:v6];
  }

  return v12;
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = SiriUITextContainerView;
  [(SiriUITextContainerView *)&v35 layoutSubviews];
  v3 = [(SiriSharedUIContentLabel *)self->_label font];
  v4 = [(SiriSharedUIContentLabel *)self->_label text];
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
  [v13 _textBoundingRectWithSize:v4 text:v3 font:&v27 textContainerStyle:{v14, 1.79769313e308}];
  v15 = CGRectGetHeight(v38);
  UICeilToViewScale();
  v17 = v16;
  v18 = *(&v32 + 1);
  v19 = objc_opt_class();
  v27 = v31;
  v28 = v32;
  v29 = v33;
  v30 = v34;
  [v19 _distanceFromBaselineToBottomWithFont:v3 textContainerStyle:&v27];
  v21 = v15 + v20;
  [(SiriSharedUIContentLabel *)self->_label setFrame:v17, v18, v26, v15];
  label = self->_label;
  v23 = objc_opt_class();
  v27 = v31;
  v28 = v32;
  v29 = v33;
  v30 = v34;
  [v23 _distanceFromTopToBaselineWithFont:v3 textContainerStyle:&v27];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_opt_class();
  v7 = [(SiriSharedUIContentLabel *)self->_label text];
  v8 = [(SiriSharedUIContentLabel *)self->_label font];
  [(SiriUITextContainerView *)self textContainerStyle];
  [v6 sizeThatFits:v7 text:v8 font:v15 textContainerStyle:{width, height}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setText:(id)a3
{
  [(SiriSharedUIContentLabel *)self->_label setText:a3];

  [(SiriUITextContainerView *)self setNeedsLayout];
}

- (void)setFont:(id)a3
{
  [(SiriSharedUIContentLabel *)self->_label setFont:a3];

  [(SiriUITextContainerView *)self setNeedsLayout];
}

- (void)setTextAlignment:(int64_t)a3
{
  if ([(SiriSharedUIContentLabel *)self->_label textAlignment]!= a3)
  {
    label = self->_label;

    [(SiriSharedUIContentLabel *)label setTextAlignment:a3];
  }
}

- (void)setTextContainerStyle:(id *)a3
{
  v6 = *&a3->var2;
  v5 = *&a3->var3.left;
  v7 = *&a3->var0;
  self->_textContainerStyle.edgeInsets.right = a3->var3.right;
  *&self->_textContainerStyle.distanceFromBaselineToBottom = v6;
  *&self->_textContainerStyle.edgeInsets.left = v5;
  *&self->_textContainerStyle.numberOfLines = v7;
  [(SiriSharedUIContentLabel *)self->_label setNumberOfLines:a3->var0];
  [(SiriSharedUIContentLabel *)self->_label setLineBreakMode:4 * (a3->var0 == 1)];

  [(SiriUITextContainerView *)self setNeedsLayout];
}

+ (CGRect)_textBoundingRectWithSize:(CGSize)a3 text:(id)a4 font:(id)a5 textContainerStyle:(id *)a6
{
  width = a3.width;
  v27[1] = *MEMORY[0x277D85DE8];
  v26 = *MEMORY[0x277D740A8];
  v27[0] = a5;
  v9 = MEMORY[0x277CBEAC0];
  v10 = a5;
  v11 = a4;
  v12 = [v9 dictionaryWithObjects:v27 forKeys:&v26 count:1];

  if (a6->var0 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  [v11 boundingRectWithSize:v13 options:v12 attributes:0 context:{width - (a6->var3.left + a6->var3.right), 1.79769313e308}];
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

+ (double)_distanceFromBaselineToBottomWithFont:(id)a3 textContainerStyle:(id *)a4
{
  [a3 _scaledValueForValue:a4->var2];

  UIRoundToViewScale();
  return result;
}

+ (double)_distanceFromTopToBaselineWithFont:(id)a3 textContainerStyle:(id *)a4
{
  [a3 _scaledValueForValue:a4->var1];

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