@interface UIStatusBarElectronicTollCollectionItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (double)alphaForAvailable:(BOOL)available;
- (void)setVisible:(BOOL)visible;
@end

@implementation UIStatusBarElectronicTollCollectionItemView

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  v5 = *([data rawData] + 3149) & 1;
  if (v5 != self->_available)
  {
    self->_available = v5;
    [(UIStatusBarElectronicTollCollectionItemView *)self setVisible:[(UIStatusBarItemView *)self isVisible]];
  }

  return 0;
}

- (void)setVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(UIStatusBarItemView *)self setVisible:visible settingAlpha:0];
  v5 = 0.0;
  if (visibleCopy)
  {
    [(UIStatusBarElectronicTollCollectionItemView *)self alphaForAvailable:self->_available, 0.0];
  }

  [(UIView *)self setAlpha:v5];
}

- (double)alphaForAvailable:(BOOL)available
{
  result = 0.4;
  if (available)
  {
    return 1.0;
  }

  return result;
}

@end