@interface UIStatusBarElectronicTollCollectionItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (double)alphaForAvailable:(BOOL)a3;
- (void)setVisible:(BOOL)a3;
@end

@implementation UIStatusBarElectronicTollCollectionItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = *([a3 rawData] + 3149) & 1;
  if (v5 != self->_available)
  {
    self->_available = v5;
    [(UIStatusBarElectronicTollCollectionItemView *)self setVisible:[(UIStatusBarItemView *)self isVisible]];
  }

  return 0;
}

- (void)setVisible:(BOOL)a3
{
  v3 = a3;
  [(UIStatusBarItemView *)self setVisible:a3 settingAlpha:0];
  v5 = 0.0;
  if (v3)
  {
    [(UIStatusBarElectronicTollCollectionItemView *)self alphaForAvailable:self->_available, 0.0];
  }

  [(UIView *)self setAlpha:v5];
}

- (double)alphaForAvailable:(BOOL)a3
{
  result = 0.4;
  if (a3)
  {
    return 1.0;
  }

  return result;
}

@end