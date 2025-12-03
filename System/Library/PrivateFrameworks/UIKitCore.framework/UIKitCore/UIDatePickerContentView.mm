@interface UIDatePickerContentView
- (UIDatePickerContentView)initWithFrame:(CGRect)frame;
- (UIDatePickerContentView)initWithMode:(id)mode;
- (void)layoutSubviews;
- (void)setTitleAlignment:(int64_t)alignment;
- (void)setUseDigitFont:(BOOL)font;
@end

@implementation UIDatePickerContentView

- (UIDatePickerContentView)initWithMode:(id)mode
{
  modeCopy = mode;
  v9.receiver = self;
  v9.super_class = UIDatePickerContentView;
  v5 = [(UIView *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(UIDatePickerContentView *)v5 setMode:modeCopy];
    v7 = v6;
  }

  return v6;
}

- (UIDatePickerContentView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = UIDatePickerContentView;
  v3 = [(UIView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];

    v3->_titleLabelMaxX = -1.0;
    v5 = [UILabel alloc];
    v6 = [(UILabel *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    v8 = +[UIColor whiteColor];
    [(UILabel *)v3->_titleLabel setShadowColor:v8];

    [(UILabel *)v3->_titleLabel setShadowOffset:0.0, 1.0];
    v9 = +[UIColor clearColor];
    [(UIView *)v3->_titleLabel setBackgroundColor:v9];

    [(UIView *)v3 addSubview:v3->_titleLabel];
    v10 = v3;
  }

  return v3;
}

- (void)setUseDigitFont:(BOOL)font
{
  if (font)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_datePickerContentViewFlags = *&self->_datePickerContentViewFlags & 0xFD | v3;
}

- (void)setTitleAlignment:(int64_t)alignment
{
  self->_titleAlignment = alignment;
  [(UILabel *)self->_titleLabel setTextAlignment:?];

  [(UIView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v35[1] = *MEMORY[0x1E69E9840];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_titleLabel textRectForBounds:1 limitedToNumberOfLines:?];
  v12 = v11;
  v14 = v13;
  titleAlignment = self->_titleAlignment;
  if (titleAlignment == 2)
  {
    v34 = *off_1E70EC918;
    font = [(UILabel *)self->_titleLabel font];
    v35[0] = font;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    [@"00" sizeWithAttributes:v19];
    v21 = v20;

    text = [(UILabel *)self->_titleLabel text];
    v23 = [text length];

    if (v21 > v12 && v23 < 3)
    {
      v12 = v21;
    }

    v17 = 0.0;
    if ((*(&self->super._viewFlags + 18) & 0x40) != 0)
    {
      mode = [(UIDatePickerContentView *)self mode];
      isTimeIntervalMode = [mode isTimeIntervalMode];

      if (isTimeIntervalMode)
      {
        v17 = v8 - v12 + 0.0;
      }

      else
      {
        v17 = 0.0;
      }
    }
  }

  else if (titleAlignment)
  {
    v17 = round(v4 + (v8 - v11) * 0.5);
  }

  else
  {
    titleLabelMaxX = self->_titleLabelMaxX;
    if (titleLabelMaxX == -1.0)
    {
      v36.origin.x = v4;
      v36.origin.y = v6;
      v36.size.width = v8;
      v36.size.height = v10;
      titleLabelMaxX = CGRectGetMaxX(v36);
    }

    v17 = 9.0;
    v12 = fmax(titleLabelMaxX, 9.0) + -9.0;
  }

  font2 = [(UILabel *)self->_titleLabel font];
  [font2 capHeight];
  v29 = v28;

  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  v30 = v29 * 0.5 + CGRectGetMidY(v37);
  [(UILabel *)self->_titleLabel _baselineOffsetFromBottom];
  v32 = v30 + v31 - v14;
  [(UIView *)self _currentScreenScale];
  [(UILabel *)self->_titleLabel setFrame:UIRectIntegralWithScale(v17, v32, v12, v14, v33)];
}

@end