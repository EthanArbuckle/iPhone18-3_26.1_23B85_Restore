@interface UITextSelectionRectView
- (BOOL)hasPath;
- (id)path;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)setPath:(id)path;
- (void)setSelectionBorderColor:(id)color;
- (void)setSelectionBorderWidth:(double)width;
- (void)setSelectionColor:(id)color;
- (void)setSelectionCornerRadius:(double)radius;
@end

@implementation UITextSelectionRectView

- (BOOL)hasPath
{
  pathLayer = [(UITextSelectionRectView *)self pathLayer];
  v3 = [pathLayer path] != 0;

  return v3;
}

- (void)setPath:(id)path
{
  pathCopy = path;
  pathLayer = [(UITextSelectionRectView *)self pathLayer];
  cGPath = [pathCopy CGPath];

  [pathLayer setPath:cGPath];
  if (!pathCopy)
  {
    selectionColor = [(UITextSelectionRectView *)self selectionColor];
    [(UIView *)self setBackgroundColor:selectionColor];
  }

  [(UITextSelectionRectView *)self setSelectionColor:self->_selectionColor];
  [(UITextSelectionRectView *)self setSelectionBorderColor:self->_selectionBorderColor];
  [(UITextSelectionRectView *)self setSelectionBorderWidth:self->_selectionBorderWidth];
}

- (id)path
{
  pathLayer = [(UITextSelectionRectView *)self pathLayer];
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

- (void)setSelectionColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_selectionColor, color);
  if ([(UITextSelectionRectView *)self hasPath])
  {
    cGColor = [colorCopy CGColor];
    pathLayer = [(UITextSelectionRectView *)self pathLayer];
    [pathLayer setFillColor:cGColor];

    [(UIView *)self setBackgroundColor:0];
  }

  else
  {
    [(UIView *)self setBackgroundColor:colorCopy];
    pathLayer2 = [(UITextSelectionRectView *)self pathLayer];
    [pathLayer2 setFillColor:0];
  }
}

- (void)setSelectionCornerRadius:(double)radius
{
  self->_selectionCornerRadius = radius;
  layer = [(UIView *)self layer];
  [layer setCornerRadius:radius];
}

- (void)setSelectionBorderColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_selectionBorderColor, color);
  hasPath = [(UITextSelectionRectView *)self hasPath];
  v6 = colorCopy;
  cGColor = [colorCopy CGColor];
  if (hasPath)
  {
    pathLayer = [(UITextSelectionRectView *)self pathLayer];
    [pathLayer setStrokeColor:cGColor];
  }

  else
  {
    pathLayer = [(UIView *)self layer];
    [pathLayer setBorderColor:cGColor];
  }
}

- (void)setSelectionBorderWidth:(double)width
{
  self->_selectionBorderWidth = width;
  if ([(UITextSelectionRectView *)self hasPath])
  {
    pathLayer = [(UITextSelectionRectView *)self pathLayer];
    [pathLayer setLineWidth:width];
  }

  else
  {
    pathLayer = [(UIView *)self layer];
    [pathLayer setBorderWidth:width];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v9.receiver = self;
  v9.super_class = UITextSelectionRectView;
  [(UIView *)&v9 _dynamicUserInterfaceTraitDidChange];
  if ([(UITextSelectionRectView *)self hasPath])
  {
    selectionColor = [(UITextSelectionRectView *)self selectionColor];
    cGColor = [selectionColor CGColor];
    pathLayer = [(UITextSelectionRectView *)self pathLayer];
    [pathLayer setFillColor:cGColor];

    selectionBorderColor = [(UITextSelectionRectView *)self selectionBorderColor];
    cGColor2 = [selectionBorderColor CGColor];
    pathLayer2 = [(UITextSelectionRectView *)self pathLayer];
    [pathLayer2 setStrokeColor:cGColor2];
  }
}

@end