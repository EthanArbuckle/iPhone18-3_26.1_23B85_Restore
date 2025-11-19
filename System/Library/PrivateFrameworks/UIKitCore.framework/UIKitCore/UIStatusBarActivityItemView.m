@interface UIStatusBarActivityItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (double)shadowPadding;
- (double)updateContentsAndWidth;
- (id)accessibilityHUDRepresentation;
- (int64_t)_activityIndicatorStyle;
- (void)_startAnimating;
- (void)_stopAnimating;
- (void)setVisible:(BOOL)a3;
@end

@implementation UIStatusBarActivityItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = [a3 rawData];
  slowActivity = self->_slowActivity;
  v7 = *(v5 + 2272);
  v8 = (v7 >> 1) & 1;
  result = slowActivity != v8;
  if (slowActivity != v8)
  {
    self->_slowActivity = (v7 & 2) != 0;
    v7 = *(v5 + 2272);
  }

  v10 = (v7 >> 2) & 1;
  if (self->_syncActivity != v10)
  {
    self->_syncActivity = v10;
    return 1;
  }

  return result;
}

- (int64_t)_activityIndicatorStyle
{
  v3 = [(UIStatusBarItemView *)self foregroundStyle];
  v4 = [v3 activityIndicatorStyleWithSyncActivity:self->_syncActivity];

  return v4;
}

- (void)_startAnimating
{
  if ([(UIStatusBarItemView *)self isVisible]&& ![(UIActivityIndicatorView *)self->_activityIndicator isAnimating])
  {
    [(UIStatusBarItemView *)self beginDisablingRasterization];
    activityIndicator = self->_activityIndicator;

    [(UIActivityIndicatorView *)activityIndicator startAnimating];
  }
}

- (void)_stopAnimating
{
  if (![(UIStatusBarItemView *)self isVisible]&& [(UIActivityIndicatorView *)self->_activityIndicator isAnimating])
  {
    [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
    [(UIActivityIndicatorView *)self->_accessibilityHUDIndicator stopAnimating];

    [(UIStatusBarItemView *)self endDisablingRasterization];
  }
}

- (void)setVisible:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UIStatusBarActivityItemView;
  [(UIStatusBarItemView *)&v5 setVisible:?];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__stopAnimating object:0];
  if (v3)
  {
    [(UIStatusBarActivityItemView *)self _startAnimating];
  }

  else
  {
    +[UIView _currentAnimationDuration];
    [(UIStatusBarActivityItemView *)self performSelector:sel__stopAnimating withObject:0 afterDelay:?];
  }
}

- (double)updateContentsAndWidth
{
  v3 = [(UIStatusBarActivityItemView *)self _activityIndicatorStyle];
  activityIndicator = self->_activityIndicator;
  if (activityIndicator)
  {
    v5 = 0.0;
    if ([(UIActivityIndicatorView *)activityIndicator activityIndicatorViewStyle]== v3)
    {
      goto LABEL_7;
    }

    activityIndicator = self->_activityIndicator;
  }

  [(UIView *)activityIndicator removeFromSuperview];
  v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:v3];
  v7 = self->_activityIndicator;
  self->_activityIndicator = v6;

  [(UIView *)self->_activityIndicator frame];
  v9 = v8;
  v11 = v10;
  [(UIView *)self bounds];
  [(UIActivityIndicatorView *)self->_activityIndicator setFrame:0.0, floor((v12 - v11) * 0.5), v9, v11];
  [(UIView *)self addSubview:self->_activityIndicator];
  v13 = [(UIStatusBarItemView *)self foregroundStyle];
  if ([v13 usesVerticalLayout])
  {
    v9 = v11;
  }

  [(UIStatusBarItemView *)self adjustFrameToNewSize:v9];
  v5 = v14;
LABEL_7:
  v15 = [(UIStatusBarItemView *)self foregroundStyle];
  v16 = [v15 tintColor];

  [(UIActivityIndicatorView *)self->_activityIndicator setColor:v16];
  v17 = 1.2;
  if (self->_slowActivity)
  {
    v17 = 4.8;
  }

  v18 = 1.06666667;
  if (self->_slowActivity)
  {
    v18 = 5.33333333;
  }

  if (!self->_syncActivity)
  {
    v17 = v18;
  }

  [(UIActivityIndicatorView *)self->_activityIndicator setAnimationDuration:v17];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__stopAnimating object:0];
  [(UIStatusBarActivityItemView *)self _startAnimating];

  return v5;
}

- (double)shadowPadding
{
  result = 0.0;
  if (!self->_syncActivity)
  {
    v3.receiver = self;
    v3.super_class = UIStatusBarActivityItemView;
    [(UIStatusBarItemView *)&v3 shadowPadding];
  }

  return result;
}

- (id)accessibilityHUDRepresentation
{
  if ([(UIStatusBarActivityItemView *)self _activityIndicatorStyle]== 6)
  {
    accessibilityHUDIndicator = self->_accessibilityHUDIndicator;
    if (!accessibilityHUDIndicator)
    {
      v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
      v5 = self->_accessibilityHUDIndicator;
      self->_accessibilityHUDIndicator = v4;

      v6 = self->_accessibilityHUDIndicator;
      v7 = [UIColor colorWithWhite:0.25 alpha:1.0];
      [(UIActivityIndicatorView *)v6 setColor:v7];

      accessibilityHUDIndicator = self->_accessibilityHUDIndicator;
    }

    v8 = 1.06666667;
    if (self->_slowActivity)
    {
      v8 = 5.33333333;
    }

    [(UIActivityIndicatorView *)accessibilityHUDIndicator setAnimationDuration:v8];
    if ([(UIActivityIndicatorView *)self->_activityIndicator isAnimating]&& ![(UIActivityIndicatorView *)self->_accessibilityHUDIndicator isAnimating])
    {
      [(UIActivityIndicatorView *)self->_accessibilityHUDIndicator startAnimating];
    }

    v9 = [[UIAccessibilityHUDItem alloc] initWithCustomView:self->_accessibilityHUDIndicator];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end