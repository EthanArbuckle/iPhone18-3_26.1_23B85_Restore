@interface UIStatusBarReturnToCallItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (double)neededSizeForImageSet:(id)set;
- (void)layoutSubviews;
@end

@implementation UIStatusBarReturnToCallItemView

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  v4 = *&actions;
  dataCopy = data;
  doubleHeightStatus = [dataCopy doubleHeightStatus];
  text = [(UILabel *)self->_textLabel text];
  v9 = [text isEqualToString:doubleHeightStatus];

  if ((v9 & 1) == 0)
  {
    textLabel = self->_textLabel;
    if (!doubleHeightStatus || textLabel)
    {
      [(UILabel *)textLabel setText:doubleHeightStatus];
    }

    else
    {
      v11 = objc_alloc_init(UILabel);
      v12 = self->_textLabel;
      self->_textLabel = v11;

      foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
      v14 = [foregroundStyle textFontForStyle:4];
      [(UILabel *)self->_textLabel setFont:v14];

      v15 = +[UIColor whiteColor];
      [(UILabel *)self->_textLabel setTextColor:v15];

      [(UILabel *)self->_textLabel setTextAlignment:1];
      [(UIView *)self addSubview:self->_textLabel];
      [(UILabel *)self->_textLabel setText:doubleHeightStatus];
      layoutManager = [(UIStatusBarItemView *)self layoutManager];
      [(UIStatusBarButtonActionItemView *)self updateContentsAndWidth];
      [layoutManager itemView:self sizeChangedBy:?];
    }
  }

  v19.receiver = self;
  v19.super_class = UIStatusBarReturnToCallItemView;
  v17 = [(UIStatusBarItemView *)&v19 updateForNewData:dataCopy actions:v4];

  return v17;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = UIStatusBarReturnToCallItemView;
  [(UIStatusBarButtonActionItemView *)&v19 layoutSubviews];
  [(UIView *)self bounds];
  if (self->_textLabel)
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
    [foregroundStyle height];
    v11 = v10;

    v12 = v6 + (v7 - v11) * 0.5;
    [(UILabel *)self->_textLabel sizeThatFits:v11, v8];
    v14 = v13;
    contentsImage = [(UIStatusBarAppIconItemView *)self contentsImage];
    image = [contentsImage image];
    [image size];
    v18 = v17 + 8.0;

    [(UILabel *)self->_textLabel setFrame:v12, v18, v11, v14];
  }
}

- (double)neededSizeForImageSet:(id)set
{
  v9.receiver = self;
  v9.super_class = UIStatusBarReturnToCallItemView;
  [(UIStatusBarItemView *)&v9 neededSizeForImageSet:set];
  v5 = v4;
  [(UIView *)self bounds];
  [(UILabel *)self->_textLabel sizeThatFits:v6, 1.79769313e308];
  result = v5 + v7 + 8.0;
  if (v7 <= 0.0)
  {
    return v5;
  }

  return result;
}

@end