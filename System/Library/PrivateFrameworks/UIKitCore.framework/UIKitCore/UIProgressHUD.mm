@interface UIProgressHUD
- (UIProgressHUD)initWithFrame:(CGRect)frame;
- (UIProgressHUD)initWithWindow:(id)window;
- (void)dealloc;
- (void)done;
- (void)drawRect:(CGRect)rect;
- (void)hide;
- (void)layoutSubviews;
- (void)setFontSize:(int)size;
- (void)setShowsText:(BOOL)text;
- (void)setText:(id)text;
- (void)show:(BOOL)show;
- (void)showInView:(id)view;
@end

@implementation UIProgressHUD

- (UIProgressHUD)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v19.receiver = self;
  v19.super_class = UIProgressHUD;
  v7 = [(UIView *)&v19 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(UIView *)v7 setOpaque:0];
    [(UIView *)v8 setNeedsDisplayOnBoundsChange:1];
    v9 = *MEMORY[0x1E695EFF8];
    v10 = *(MEMORY[0x1E695EFF8] + 8);
    [UIActivityIndicatorView defaultSizeForStyle:101];
    v13 = [[UIActivityIndicatorView alloc] initWithFrame:v9, v10, v11, v12];
    v8->_progressIndicator = v13;
    [(UIActivityIndicatorView *)v13 setActivityIndicatorViewStyle:101];
    [(UIActivityIndicatorView *)v8->_progressIndicator setColor:+[UIColor whiteColor]];
    [(UIView *)v8 addSubview:v8->_progressIndicator];
    v14 = [UILabel alloc];
    v15 = [(UILabel *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v8->_progressMessage = v15;
    [(UILabel *)v15 setTextColor:+[UIColor whiteColor]];
    [(UIView *)v8->_progressMessage setBackgroundColor:0];
    [(UIView *)v8->_progressMessage setOpaque:0];
    [(UILabel *)v8->_progressMessage setNumberOfLines:0];
    [(UILabel *)v8->_progressMessage setTextAlignment:1];
    [(UILabel *)v8->_progressMessage setLineBreakMode:0];
    [(UIView *)v8 addSubview:v8->_progressMessage];
    [(UIProgressHUD *)v8 setText:0];
    [(UIProgressHUD *)v8 setFontSize:24];
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    IsEmpty = CGRectIsEmpty(v20);
    v17 = 6;
    if (IsEmpty)
    {
      v17 = 2;
    }

    v8->_progressHUDFlags = (*&v8->_progressHUDFlags & 0xFFFFFFFFFFFFFFF9 | v17);
  }

  return v8;
}

- (void)setText:(id)text
{
  progressMessage = self->_progressMessage;
  if (!text)
  {
    text = _UINSLocalizedStringWithDefaultValue(@"Loading", @"Loading");
  }

  [(UILabel *)progressMessage setText:text];

  [(UIView *)self setNeedsLayout];
}

- (void)setShowsText:(BOOL)text
{
  textCopy = text;
  [(UIView *)self->_progressMessage setHidden:!text];
  v5 = 2;
  if (!textCopy)
  {
    v5 = 0;
  }

  self->_progressHUDFlags = (*&self->_progressHUDFlags & 0xFFFFFFFFFFFFFFFDLL | v5);

  [(UIView *)self setNeedsLayout];
}

- (void)setFontSize:(int)size
{
  -[UILabel setFont:](self->_progressMessage, "setFont:", [off_1E70ECC18 boldSystemFontOfSize:{*&size, 24.0}]);

  [(UIView *)self setNeedsLayout];
}

- (void)drawRect:(CGRect)rect
{
  [(UIView *)self bounds:rect.origin.x];
  v3 = [UIBezierPath roundedRectBezierPath:"roundedRectBezierPath:withRoundedCorners:withCornerRadius:" withRoundedCorners:-1 withCornerRadius:?];
  [+[UIColor colorWithWhite:alpha:](UIColor set:0.0];

  [v3 fill];
}

- (void)layoutSubviews
{
  [UIActivityIndicatorView defaultSizeForStyle:101];
  v4 = v3;
  [(UIView *)self frame];
  if ((*&self->_progressHUDFlags & 4) != 0)
  {
    v15 = v5;
    v16 = v6;
    [(UILabel *)self->_progressMessage textSizeForWidth:v5 + -20.0];
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v30 = v4;
    [[(UIView *)self superview] bounds];
    v33 = CGRectInset(v32, 20.0, 20.0);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    [(UILabel *)self->_progressMessage textSizeForWidth:v33.size.width + -20.0];
    v13 = v11;
    v14 = v12;
    if ((*&self->_progressHUDFlags & 2) != 0)
    {
      v19 = v11 + 20.0;
      if (width < v13 + 20.0)
      {
        v19 = width;
      }

      v15 = fmax(v19, 156.0);
      v20 = v30 + 26.0 + 8.0 + v12 + 25.0;
      if (height < v20)
      {
        v20 = height;
      }

      v16 = fmax(v20, 124.0);
    }

    else
    {
      v15 = 156.0;
      v16 = 124.0;
    }

    [(UIView *)self setFrame:round(x + (width - v15) * 0.5), round(y + (height - v16) * 0.5), v15, v16];
    v4 = v30;
  }

  p_progressIndicator = &self->_progressIndicator;
  progressIndicator = self->_progressIndicator;
  if (progressIndicator || (p_progressIndicator = &self->_doneView, (progressIndicator = self->_doneView) != 0))
  {
    [progressIndicator frame];
    v24 = round((v15 - v23) * 0.5);
    v26 = round((v16 - v25) * 0.5);
    if ((*&self->_progressHUDFlags & 2) != 0)
    {
      v26 = 26.0;
    }

    [*p_progressIndicator setFrame:{v24, v26}];
  }

  v27 = round((v15 - v13) * 0.5);
  v28 = v15 + -20.0;
  progressMessage = self->_progressMessage;
  if (v13 < v15 + -20.0)
  {
    v28 = v13;
  }

  [(UILabel *)progressMessage setFrame:v27, v4 + 26.0 + 8.0, v28, v14];
}

- (void)showInView:(id)view
{
  *&self->_progressHUDFlags |= 1uLL;
  [view addSubview:self];
  progressIndicator = self->_progressIndicator;

  [(UIActivityIndicatorView *)progressIndicator startAnimating];
}

- (void)hide
{
  *&self->_progressHUDFlags &= ~1uLL;
  [(UIActivityIndicatorView *)self->_progressIndicator stopAnimating];

  [(UIView *)self removeFromSuperview];
}

- (void)done
{
  [(UIView *)self->_progressIndicator removeFromSuperview];

  self->_progressIndicator = 0;
  v3 = [[UIImageView alloc] initWithImage:_UIImageWithName(@"UIProgressHUDCheck.png")];
  self->_doneView = v3;
  [(UIView *)self addSubview:v3];
  if (*&self->_progressHUDFlags)
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)dealloc
{
  if (*&self->_progressHUDFlags)
  {
    [(UIProgressHUD *)self hide];
  }

  [(UIView *)self->_progressIndicator removeFromSuperview];

  [(UIView *)self->_doneView removeFromSuperview];
  [(UIView *)self->_progressMessage removeFromSuperview];

  v3.receiver = self;
  v3.super_class = UIProgressHUD;
  [(UIView *)&v3 dealloc];
}

- (UIProgressHUD)initWithWindow:(id)window
{
  v4 = [(UIView *)self init];
  if (v4)
  {
    v4->_parentWindow = window;
  }

  return v4;
}

- (void)show:(BOOL)show
{
  if (show)
  {
    [(UIProgressHUD *)self showInView:self->_parentWindow];
  }

  else
  {
    [(UIProgressHUD *)self hide];
  }
}

@end