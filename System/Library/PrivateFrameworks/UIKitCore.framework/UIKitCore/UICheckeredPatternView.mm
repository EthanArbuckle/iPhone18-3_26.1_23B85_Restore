@interface UICheckeredPatternView
- (UICheckeredPatternView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)setCheckerColor:(id)color;
- (void)updatePatternColor;
@end

@implementation UICheckeredPatternView

- (UICheckeredPatternView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = UICheckeredPatternView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    v3->_scale = v5;

    [(UIView *)v3 setUserInteractionEnabled:0];
    [(UICheckeredPatternView *)v3 updatePatternColor];
    v6 = v3;
  }

  return v3;
}

- (void)didMoveToWindow
{
  window = [(UIView *)self window];
  screen = [window screen];
  [screen scale];
  v6 = v5;

  if (v6 != self->_scale)
  {
    self->_scale = v6;

    [(UICheckeredPatternView *)self updatePatternColor];
  }
}

- (void)updatePatternColor
{
  v3 = self->_scale * 96.0;
  *&callbacks.version = 0;
  callbacks.drawPattern = DrawCheckeredPattern;
  v4 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  callbacks.releaseInfo = ReleasePatternInfo;
  cGColor = [(UIColor *)self->_checkerColor CGColor];
  CGColorRetain(cGColor);
  *v4 = cGColor;
  scale = self->_scale;
  v4[1] = scale;
  CGAffineTransformMakeScale(&matrix, 1.0 / scale, 1.0 / scale);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v3;
  v15.size.height = v3;
  v7 = CGPatternCreate(v4, v15, &matrix, v3, v3, kCGPatternTilingConstantSpacing, 1, &callbacks);
  Pattern = CGColorSpaceCreatePattern(0);
  v9 = CGColorCreateWithPattern(Pattern, v7, &updatePatternColor_alpha);
  v10 = [[UIColor alloc] initWithCGColor:v9];
  patternColor = self->_patternColor;
  self->_patternColor = v10;

  CGColorRelease(v9);
  CFRelease(Pattern);
  CFRelease(v7);
  layer = [(UIView *)self layer];
  [layer setBackgroundColor:{-[UIColor CGColor](self->_patternColor, "CGColor")}];
}

- (void)setCheckerColor:(id)color
{
  colorCopy = color;
  checkerColor = self->_checkerColor;
  if (checkerColor != colorCopy)
  {
    v8 = colorCopy;
    v7 = [(UIColor *)checkerColor isEqual:colorCopy];
    colorCopy = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_checkerColor, color);
      [(UICheckeredPatternView *)self updatePatternColor];
      colorCopy = v8;
    }
  }
}

@end