@interface _UIWTCUnderlineDrawingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIBezierPath)path;
- (void)setColor:(id)color;
- (void)setPath:(id)path;
@end

@implementation _UIWTCUnderlineDrawingView

- (void)setPath:(id)path
{
  pathCopy = path;
  cGPath = [path CGPath];
  pathLayer = [(_UIWTCUnderlineDrawingView *)self pathLayer];
  [pathLayer setPath:cGPath];
}

- (UIBezierPath)path
{
  pathLayer = [(_UIWTCUnderlineDrawingView *)self pathLayer];
  path = [pathLayer path];

  if (path)
  {
    v4 = [UIBezierPath bezierPathWithCGPath:path];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setColor:(id)color
{
  objc_storeStrong(&self->_color, color);
  colorCopy = color;
  cGColor = [colorCopy CGColor];

  pathLayer = [(_UIWTCUnderlineDrawingView *)self pathLayer];
  [pathLayer setFillColor:cGColor];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  path = [(_UIWTCUnderlineDrawingView *)self path];
  v7 = path;
  if (path)
  {
    [path bounds];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = _UIWTCUnderlineDrawingView;
    [(UIView *)&v16 sizeThatFits:width, height];
    v9 = v12;
    v11 = v13;
  }

  v14 = v9;
  v15 = v11;
  result.height = v15;
  result.width = v14;
  return result;
}

@end