@interface UISoftwareDimmingWindow
- (UISoftwareDimmingWindow)initWithFrame:(CGRect)a3;
- (void)setOverlayLevel:(float)a3;
- (void)updateOverlayColor;
@end

@implementation UISoftwareDimmingWindow

- (UISoftwareDimmingWindow)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UISoftwareDimmingWindow;
  v3 = [(UIWindow *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIWindow *)v3 setWindowLevel:2150.0];
    [(UIView *)v4 setAlpha:0.0];
    [(UIView *)v4 setUserInteractionEnabled:0];
    [(UISoftwareDimmingWindow *)v4 updateOverlayColor];
  }

  return v4;
}

- (void)updateOverlayColor
{
  v3 = _AXSInvertColorsEnabled();
  v4 = 1.0;
  if (!v3)
  {
    v4 = 0.0;
  }

  v5 = [UIColor colorWithWhite:v4 alpha:1.0];
  [(UIView *)self setBackgroundColor:v5];
}

- (void)setOverlayLevel:(float)a3
{
  v6 = a3;
  if (a3 < -1.0 || a3 >= 0.0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIScreen.m" lineNumber:336 description:{@"%f is not a valid overlay level value", *&v6}];
  }

  self->_overlayLevel = a3;

  [(UIView *)self setAlpha:-v6];
}

@end