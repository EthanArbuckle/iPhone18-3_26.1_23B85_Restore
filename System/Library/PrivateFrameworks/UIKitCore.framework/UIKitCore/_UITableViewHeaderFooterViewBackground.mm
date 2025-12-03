@interface _UITableViewHeaderFooterViewBackground
- (_UITableViewHeaderFooterViewBackground)initWithFrame:(CGRect)frame;
- (void)applyBackgroundConfiguration:(id)configuration;
@end

@implementation _UITableViewHeaderFooterViewBackground

- (_UITableViewHeaderFooterViewBackground)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UITableViewHeaderFooterViewBackground;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setAutoresizingMask:18];
  }

  return v4;
}

- (void)applyBackgroundConfiguration:(id)configuration
{
  configurationCopy = configuration;
  systemBackgroundView = self->_systemBackgroundView;
  v9 = configurationCopy;
  if (!configurationCopy || systemBackgroundView)
  {
    [(UIView *)systemBackgroundView setHidden:configurationCopy == 0];
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
    v6 = [[_UISystemBackgroundView alloc] initWithConfiguration:configurationCopy containerView:self];
    v7 = self->_systemBackgroundView;
    self->_systemBackgroundView = v6;

    [(UIView *)self->_systemBackgroundView setAutoresizingMask:18];
    [(UIView *)self insertSubview:self->_systemBackgroundView atIndex:0];
  }
}

@end