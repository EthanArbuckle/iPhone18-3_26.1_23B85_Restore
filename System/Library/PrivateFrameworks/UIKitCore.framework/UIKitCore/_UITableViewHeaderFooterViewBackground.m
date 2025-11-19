@interface _UITableViewHeaderFooterViewBackground
- (_UITableViewHeaderFooterViewBackground)initWithFrame:(CGRect)a3;
- (void)applyBackgroundConfiguration:(id)a3;
@end

@implementation _UITableViewHeaderFooterViewBackground

- (_UITableViewHeaderFooterViewBackground)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UITableViewHeaderFooterViewBackground;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setAutoresizingMask:18];
  }

  return v4;
}

- (void)applyBackgroundConfiguration:(id)a3
{
  v4 = a3;
  systemBackgroundView = self->_systemBackgroundView;
  v9 = v4;
  if (!v4 || systemBackgroundView)
  {
    [(UIView *)systemBackgroundView setHidden:v4 == 0];
    if (v9)
    {
      [(_UISystemBackgroundView *)self->_systemBackgroundView setConfiguration:v9];
    }

    else
    {
      v8 = +[UIBackgroundConfiguration clearConfiguration];
      [(_UISystemBackgroundView *)self->_systemBackgroundView setConfiguration:v8];
    }
  }

  else
  {
    v6 = [[_UISystemBackgroundView alloc] initWithConfiguration:v4 containerView:self];
    v7 = self->_systemBackgroundView;
    self->_systemBackgroundView = v6;

    [(UIView *)self->_systemBackgroundView setAutoresizingMask:18];
    [(UIView *)self insertSubview:self->_systemBackgroundView atIndex:0];
  }
}

@end