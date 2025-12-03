@interface _UITextSelectionRangeView
- (CGPath)path;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)setPath:(CGPath *)path;
- (void)setSelectionBorderColor:(id)color;
- (void)setSelectionBorderWidth:(double)width;
- (void)setSelectionColor:(id)color;
@end

@implementation _UITextSelectionRangeView

- (void)_dynamicUserInterfaceTraitDidChange
{
  v9.receiver = self;
  v9.super_class = _UITextSelectionRangeView;
  [(UIView *)&v9 _dynamicUserInterfaceTraitDidChange];
  selectionColor = [(_UITextSelectionRangeView *)self selectionColor];
  cGColor = [selectionColor CGColor];
  pathLayer = [(_UITextSelectionRangeView *)self pathLayer];
  [pathLayer setFillColor:cGColor];

  selectionBorderColor = [(_UITextSelectionRangeView *)self selectionBorderColor];
  cGColor2 = [selectionBorderColor CGColor];
  pathLayer2 = [(_UITextSelectionRangeView *)self pathLayer];
  [pathLayer2 setStrokeColor:cGColor2];
}

- (void)setPath:(CGPath *)path
{
  pathLayer = [(_UITextSelectionRangeView *)self pathLayer];
  [pathLayer setPath:path];
}

- (CGPath)path
{
  pathLayer = [(_UITextSelectionRangeView *)self pathLayer];
  path = [pathLayer path];

  return path;
}

- (void)setSelectionColor:(id)color
{
  objc_storeStrong(&self->_selectionColor, color);
  colorCopy = color;
  cGColor = [colorCopy CGColor];

  pathLayer = [(_UITextSelectionRangeView *)self pathLayer];
  [pathLayer setFillColor:cGColor];
}

- (void)setSelectionBorderColor:(id)color
{
  objc_storeStrong(&self->_selectionBorderColor, color);
  colorCopy = color;
  cGColor = [colorCopy CGColor];

  pathLayer = [(_UITextSelectionRangeView *)self pathLayer];
  [pathLayer setStrokeColor:cGColor];
}

- (void)setSelectionBorderWidth:(double)width
{
  self->_selectionBorderWidth = width;
  pathLayer = [(_UITextSelectionRangeView *)self pathLayer];
  [pathLayer setLineWidth:width];
}

@end