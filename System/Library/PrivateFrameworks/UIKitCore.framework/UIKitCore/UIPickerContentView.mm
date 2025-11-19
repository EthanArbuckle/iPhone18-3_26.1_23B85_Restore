@interface UIPickerContentView
- (UILabel)titleLabel;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation UIPickerContentView

- (void)setChecked:(BOOL)a3
{
  *&self->_pickerContentViewFlags = *&self->_pickerContentViewFlags & 0xFE | a3;
  checkView = self->_checkView;
  if (a3)
  {
    if (!checkView)
    {
      v5 = [UIImageView alloc];
      v6 = [(UIImageView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v7 = self->_checkView;
      self->_checkView = v6;

      v8 = _UIImageWithName(@"UIPreferencesBlueCheck.png");
      v9 = [(UIView *)self tintColor];
      v10 = [v8 _flatImageWithColor:v9];

      [(UIImageView *)self->_checkView setImage:v10];
      v11 = +[UIColor clearColor];
      [(UIImageView *)self->_checkView setBackgroundColor:v11];

      [(UIView *)self addSubview:self->_checkView];
      [(UIView *)self setNeedsLayout];

      checkView = self->_checkView;
    }

    [(UIImageView *)checkView setHidden:0];
    v12 = [(UIPickerContentView *)self checkedColor];
  }

  else
  {
    [(UIImageView *)checkView setHidden:1];
    v12 = +[UIColor labelColor];
  }

  v14 = v12;
  v13 = [(UIPickerContentView *)self titleLabel];
  [v13 setTextColor:v14];
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = [(UIView *)self traitCollection];
    v5 = +[UIPickerView _styleForIdiom:](UIPickerView, "_styleForIdiom:", [v4 userInterfaceIdiom]);

    [(UIView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [UILabel alloc];
    v25.origin.x = v7;
    v25.origin.y = v9;
    v25.size.width = v11;
    v25.size.height = v13;
    v15 = CGRectGetMaxX(v25) + -43.0;
    v26.origin.x = v7;
    v26.origin.y = v9;
    v26.size.width = v11;
    v26.size.height = v13;
    v16 = [(UILabel *)v14 initWithFrame:43.0, 0.0, v15, CGRectGetHeight(v26)];
    v17 = self->_titleLabel;
    self->_titleLabel = v16;

    if (*&self->_pickerContentViewFlags)
    {
      [(UIPickerContentView *)self checkedColor];
    }

    else
    {
      +[UIColor labelColor];
    }
    v18 = ;
    [(UILabel *)self->_titleLabel setTextColor:v18];

    v19 = +[UIColor clearColor];
    [(UIView *)self->_titleLabel setBackgroundColor:v19];

    v20 = [(UIView *)self traitCollection];
    v21 = [v5 nonCenterCellFontWithTraitCollection:v20];
    [(UILabel *)self->_titleLabel setFont:v21];

    [(UILabel *)self->_titleLabel setHighlighted:(*&self->_pickerContentViewFlags >> 1) & 1];
    v22 = +[UIColor clearColor];
    [(UIView *)self->_titleLabel setBackgroundColor:v22];

    [(UILabel *)self->_titleLabel setBaselineAdjustment:1];
    [(UIView *)self addSubview:self->_titleLabel];
    [(UIView *)self setNeedsLayout];

    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (void)layoutSubviews
{
  checkView = self->_checkView;
  if (checkView)
  {
    v4 = [(UIImageView *)checkView image];
    [v4 size];
    v6 = v5;
    v8 = v7;

    [(UIView *)self bounds];
    [(UIImageView *)self->_checkView setFrame:15.0, round(v10 + (v9 - v8) * 0.5), v6, v8];
  }

  if (self->_titleLabel)
  {
    [(UIView *)self bounds];
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
    v15 = CGRectGetMaxX(v19) + -43.0;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v16 = CGRectGetHeight(v20);
    titleLabel = self->_titleLabel;

    [(UILabel *)titleLabel setFrame:43.0, 0.0, v15, v16];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_pickerContentViewFlags = *&self->_pickerContentViewFlags & 0xFD | v3;
}

@end