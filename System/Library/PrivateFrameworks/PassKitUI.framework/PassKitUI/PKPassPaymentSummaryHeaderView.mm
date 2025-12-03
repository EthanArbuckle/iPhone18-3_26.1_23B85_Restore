@interface PKPassPaymentSummaryHeaderView
+ (CGSize)_sizeForLabelWithText:(id)text font:(id)font maximumNumberOfLines:(int64_t)lines width:(double)width;
+ (double)preferredHeight;
+ (id)_titleFont;
- (PKPassPaymentSummaryHeaderView)init;
- (PKPassPaymentSummaryHeaderView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setColor:(id)color;
@end

@implementation PKPassPaymentSummaryHeaderView

- (PKPassPaymentSummaryHeaderView)init
{
  +[PKPassPaymentSummaryHeaderView preferredHeight];

  return [(PKPassPaymentSummaryHeaderView *)self initWithFrame:0.0, 0.0, 0.0, v3];
}

- (PKPassPaymentSummaryHeaderView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = PKPassPaymentSummaryHeaderView;
  v3 = [(PKPassPaymentSummaryHeaderView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    v7 = v3->_titleLabel;
    v8 = +[PKPassPaymentSummaryHeaderView _titleFont];
    [(UILabel *)v7 setFont:v8];

    [(UILabel *)v3->_titleLabel setTextColor:secondaryLabelColor];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryTitleLabel = v3->_secondaryTitleLabel;
    v3->_secondaryTitleLabel = v9;

    v11 = v3->_secondaryTitleLabel;
    v12 = +[PKPassPaymentSummaryHeaderView _titleFont];
    [(UILabel *)v11 setFont:v12];

    [(UILabel *)v3->_secondaryTitleLabel setTextColor:secondaryLabelColor];
    [(PKPassPaymentSummaryHeaderView *)v3 addSubview:v3->_titleLabel];
    [(PKPassPaymentSummaryHeaderView *)v3 addSubview:v3->_secondaryTitleLabel];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPassPaymentSummaryHeaderView;
  [(PKPassPaymentSummaryHeaderView *)&v2 dealloc];
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = PKPassPaymentSummaryHeaderView;
  [(PKPassPaymentSummaryHeaderView *)&v37 layoutSubviews];
  [(PKPassPaymentSummaryHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memset(&slice, 0, sizeof(slice));
  _shouldReverseLayoutDirection = [(PKPassPaymentSummaryHeaderView *)self _shouldReverseLayoutDirection];
  if (PKUIGetMinScreenWidthType())
  {
    v12 = 4.0;
  }

  else
  {
    v12 = 20.0;
  }

  v38.origin.x = v4;
  v38.origin.y = v6;
  v38.size.width = v8;
  v38.size.height = v10;
  remainder = CGRectInset(v38, v12, 12.0);
  text = [(UILabel *)self->_secondaryTitleLabel text];
  v14 = [text length];

  if (v14)
  {
    if (_shouldReverseLayoutDirection)
    {
      v15 = CGRectMinXEdge;
    }

    else
    {
      v15 = CGRectMaxXEdge;
    }

    font = [(UILabel *)self->_secondaryTitleLabel font];
    [font lineHeight];
    v18 = v17;

    v19 = *(MEMORY[0x1E695F058] + 16);
    v34.origin = *MEMORY[0x1E695F058];
    v34.size = v19;
    text2 = [(UILabel *)self->_secondaryTitleLabel text];
    v21 = +[PKPassPaymentSummaryHeaderView _titleFont];
    [PKPassPaymentSummaryHeaderView _sizeForLabelWithText:text2 font:v21 maximumNumberOfLines:1 width:remainder.size.width * 0.5];
    v23 = v22;

    v24.n128_u64[0] = v23;
    PKFloatCeilToPixel(v24, v25);
    CGRectDivide(remainder, &v34, &remainder, v26, v15);
    CGRectDivide(remainder, &slice, &remainder, 5.0, v15);
    v34.size.height = v18;
    [(UILabel *)self->_secondaryTitleLabel setFrame:*&v34.origin, v34.size.width, v18];
  }

  else
  {
    [(UILabel *)self->_secondaryTitleLabel removeFromSuperview];
  }

  [(PKPassPaymentSummaryHeaderView *)self bounds];
  Width = CGRectGetWidth(v39);
  if (PKUIGetMinScreenWidthType())
  {
    v28 = 4.0;
  }

  else
  {
    v28 = 20.0;
  }

  v29 = Width + v28 * -2.0;
  font2 = [(UILabel *)self->_titleLabel font];
  [font2 lineHeight];
  v32 = v31;

  if (PKUIGetMinScreenWidthType())
  {
    v33 = 4.0;
  }

  else
  {
    v33 = 20.0;
  }

  v34.origin.x = v33;
  v34.origin.y = 12.0;
  v34.size.width = v29;
  v34.size.height = v32;
  CGRectDivide(remainder, &v34, &remainder, v32, CGRectMinYEdge);
  v34.size.height = v32;
  [(UILabel *)self->_titleLabel setFrame:*&v34.origin, v34.size.width, v32];
}

- (void)setColor:(id)color
{
  titleLabel = self->_titleLabel;
  colorCopy = color;
  [(UILabel *)titleLabel setTextColor:colorCopy];
  [(UILabel *)self->_secondaryTitleLabel setTextColor:colorCopy];
}

+ (double)preferredHeight
{
  _titleFont = [self _titleFont];
  [_titleFont lineHeight];
  v4 = v3 + 7.0 + 12.0;

  return v4;
}

+ (id)_titleFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = PKScaledValueForValueWithMaximumContentSizeCategory(*MEMORY[0x1E69DDC38], 13.0);

  return [v2 systemFontOfSize:v3];
}

+ (CGSize)_sizeForLabelWithText:(id)text font:(id)font maximumNumberOfLines:(int64_t)lines width:(double)width
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  if (text && font && lines >= 1)
  {
    v11 = MEMORY[0x1E69DB7E0];
    fontCopy = font;
    textCopy = text;
    v14 = objc_alloc_init(v11);
    [v14 setMaximumNumberOfLines:lines];
    v20 = *MEMORY[0x1E69DB648];
    v21[0] = fontCopy;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

    [textCopy boundingRectWithSize:33 options:v15 attributes:v14 context:{width, 1.79769313e308}];
    v6 = v16;
    v7 = v17;
  }

  v18 = v6;
  v19 = v7;
  result.height = v19;
  result.width = v18;
  return result;
}

@end