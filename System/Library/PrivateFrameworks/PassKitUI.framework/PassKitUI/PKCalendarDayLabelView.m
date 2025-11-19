@interface PKCalendarDayLabelView
- (CGRect)labelFrameForBounds:(CGRect)a3;
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKCalendarDayLabelView)initWithDayString:(id)a3;
- (double)totalSpacingBetweenTextAndLabel;
- (id)_dayLabelFont;
- (void)_updateTextColor;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation PKCalendarDayLabelView

- (PKCalendarDayLabelView)initWithDayString:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKCalendarDayLabelView;
  v5 = [(PKCalendarDayLabelView *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    highlightView = v5->_highlightView;
    v5->_highlightView = v6;

    [(PKCalendarDayLabelView *)v5 addSubview:v5->_highlightView];
    v5->_highlightPadding = 10.0;
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dayLabel = v5->_dayLabel;
    v5->_dayLabel = v8;

    [(UILabel *)v5->_dayLabel setTextAlignment:1];
    v10 = v5->_dayLabel;
    v11 = [(PKCalendarDayLabelView *)v5 _dayLabelFont];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)v5->_dayLabel setText:v4];
    v12 = v5->_dayLabel;
    v13 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v12 setTextColor:v13];

    [(PKCalendarDayLabelView *)v5 addSubview:v5->_dayLabel];
  }

  return v5;
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(PKCalendarDayLabelView *)self _updateTextColor];
  }
}

- (void)_updateTextColor
{
  highlightBackgroundColor = self->_highlightBackgroundColor;
  if (highlightBackgroundColor)
  {
    v4 = highlightBackgroundColor;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] redColor];
  }

  highlightView = self->_highlightView;
  v14 = v4;
  if (self->_selected)
  {
    [(UIView *)highlightView setBackgroundColor:v4];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)highlightView setBackgroundColor:v6];
  }

  highlightTextColor = self->_highlightTextColor;
  if (highlightTextColor)
  {
    v8 = highlightTextColor;
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v9 = v8;
  dayLabel = self->_dayLabel;
  if (self->_selected)
  {
    [(UILabel *)self->_dayLabel setTextColor:v8];
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)dayLabel setTextColor:v11];
  }

  v12 = self->_dayLabel;
  v13 = [(PKCalendarDayLabelView *)self _dayLabelFont];
  [(UILabel *)v12 setFont:v13];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PKCalendarDayLabelView;
  [(PKCalendarDayLabelView *)&v5 setUserInteractionEnabled:?];
  [(UILabel *)self->_dayLabel setUserInteractionEnabled:v3];
  [(UIView *)self->_highlightView setUserInteractionEnabled:v3];
  if (self->_disabledTextColor)
  {
    if (v3)
    {
      [(PKCalendarDayLabelView *)self _updateTextColor];
    }

    else
    {
      [(UILabel *)self->_dayLabel setTextColor:?];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKCalendarDayLabelView;
  [(PKCalendarDayLabelView *)&v3 layoutSubviews];
  [(PKCalendarDayLabelView *)self bounds];
  [(PKCalendarDayLabelView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKCalendarDayLabelView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  v4 = a4;
  [(PKCalendarDayLabelView *)self labelFrameForBounds:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  PKRectCenteredXInRect();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (!v4)
  {
    [(UILabel *)self->_dayLabel setFrame:v7, v9, v11, v13];
    [(UIView *)self->_highlightView setFrame:v15, 0.0, v17, v19];
    v20 = [(UIView *)self->_highlightView layer];
    [v20 setCornerRadius:v17 * 0.5];
  }

  v24.origin.x = v15;
  v24.origin.y = 0.0;
  v24.size.width = v17;
  v24.size.height = v19;
  MaxY = CGRectGetMaxY(v24);
  v22 = v17;
  result.height = MaxY;
  result.width = v22;
  return result;
}

- (CGRect)labelFrameForBounds:(CGRect)a3
{
  [(UILabel *)self->_dayLabel sizeThatFits:a3.size.width, 3.40282347e38];

  PKRectCenteredIntegralRect();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)_dayLabelFont
{
  if (self->_selected)
  {
    v2 = MEMORY[0x1E69DB958];
  }

  else
  {
    v2 = MEMORY[0x1E69DB978];
  }

  v3 = PKDefaultSystemFontOfSizeAndWeight(19.0, *v2);
  v4 = [v3 pk_fixedWidthFont];

  return v4;
}

- (double)totalSpacingBetweenTextAndLabel
{
  [(UILabel *)self->_dayLabel frame];
  v4 = v3;
  v6 = v5;
  v7 = [(UILabel *)self->_dayLabel attributedText];
  v8 = CTFramesetterCreateWithAttributedString(v7);
  v9 = 0.0;
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v4;
  v18.size.height = v6;
  v10 = CGPathCreateWithRect(v18, 0);
  v17.length = [(__CFAttributedString *)v7 length];
  v17.location = 0;
  Frame = CTFramesetterCreateFrame(v8, v17, v10, 0);
  Lines = CTFrameGetLines(Frame);
  if (Lines)
  {
    v13 = Lines;
    Count = CFArrayGetCount(Lines);
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v13, Count - 1);
      ImageBounds = CTLineGetImageBounds(ValueAtIndex, 0);
      v9 = ImageBounds.origin.x + v4 - (ImageBounds.origin.x + ImageBounds.size.width);
    }
  }

  CFRelease(Frame);
  CFRelease(v10);
  CFRelease(v8);

  return v9;
}

@end