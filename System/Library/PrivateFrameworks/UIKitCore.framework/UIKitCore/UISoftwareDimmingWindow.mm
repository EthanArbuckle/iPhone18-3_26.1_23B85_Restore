@interface UISoftwareDimmingWindow
- (UISoftwareDimmingWindow)initWithFrame:(CGRect)frame;
- (void)setOverlayLevel:(float)level;
- (void)updateOverlayColor;
@end

@implementation UISoftwareDimmingWindow

- (UISoftwareDimmingWindow)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UISoftwareDimmingWindow;
  v3 = [(UIWindow *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setOverlayLevel:(float)level
{
  levelCopy = level;
  if (level < -1.0 || level >= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScreen.m" lineNumber:336 description:{@"%f is not a valid overlay level value", *&levelCopy}];
  }

  self->_overlayLevel = level;

  [(UIView *)self setAlpha:-levelCopy];
}

@end