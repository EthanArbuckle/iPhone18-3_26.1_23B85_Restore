@interface UICheckeredPatternView
- (UICheckeredPatternView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)setCheckerColor:(id)a3;
- (void)updatePatternColor;
@end

@implementation UICheckeredPatternView

- (UICheckeredPatternView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = UICheckeredPatternView;
  v3 = [(UIView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_opt_self() mainScreen];
    [v4 scale];
    v3->_scale = v5;

    [(UIView *)v3 setUserInteractionEnabled:0];
    [(UICheckeredPatternView *)v3 updatePatternColor];
    v6 = v3;
  }

  return v3;
}

- (void)didMoveToWindow
{
  v3 = [(UIView *)self window];
  v4 = [v3 screen];
  [v4 scale];
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
  v5 = [(UIColor *)self->_checkerColor CGColor];
  CGColorRetain(v5);
  *v4 = v5;
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
  v12 = [(UIView *)self layer];
  [v12 setBackgroundColor:{-[UIColor CGColor](self->_patternColor, "CGColor")}];
}

- (void)setCheckerColor:(id)a3
{
  v5 = a3;
  checkerColor = self->_checkerColor;
  if (checkerColor != v5)
  {
    v8 = v5;
    v7 = [(UIColor *)checkerColor isEqual:v5];
    v5 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_checkerColor, a3);
      [(UICheckeredPatternView *)self updatePatternColor];
      v5 = v8;
    }
  }
}

@end