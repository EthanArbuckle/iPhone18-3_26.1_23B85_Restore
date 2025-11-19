@interface _UITextSelectionRangeView
- (CGPath)path;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)setPath:(CGPath *)a3;
- (void)setSelectionBorderColor:(id)a3;
- (void)setSelectionBorderWidth:(double)a3;
- (void)setSelectionColor:(id)a3;
@end

@implementation _UITextSelectionRangeView

- (void)_dynamicUserInterfaceTraitDidChange
{
  v9.receiver = self;
  v9.super_class = _UITextSelectionRangeView;
  [(UIView *)&v9 _dynamicUserInterfaceTraitDidChange];
  v3 = [(_UITextSelectionRangeView *)self selectionColor];
  v4 = [v3 CGColor];
  v5 = [(_UITextSelectionRangeView *)self pathLayer];
  [v5 setFillColor:v4];

  v6 = [(_UITextSelectionRangeView *)self selectionBorderColor];
  v7 = [v6 CGColor];
  v8 = [(_UITextSelectionRangeView *)self pathLayer];
  [v8 setStrokeColor:v7];
}

- (void)setPath:(CGPath *)a3
{
  v4 = [(_UITextSelectionRangeView *)self pathLayer];
  [v4 setPath:a3];
}

- (CGPath)path
{
  v2 = [(_UITextSelectionRangeView *)self pathLayer];
  v3 = [v2 path];

  return v3;
}

- (void)setSelectionColor:(id)a3
{
  objc_storeStrong(&self->_selectionColor, a3);
  v5 = a3;
  v6 = [v5 CGColor];

  v7 = [(_UITextSelectionRangeView *)self pathLayer];
  [v7 setFillColor:v6];
}

- (void)setSelectionBorderColor:(id)a3
{
  objc_storeStrong(&self->_selectionBorderColor, a3);
  v5 = a3;
  v6 = [v5 CGColor];

  v7 = [(_UITextSelectionRangeView *)self pathLayer];
  [v7 setStrokeColor:v6];
}

- (void)setSelectionBorderWidth:(double)a3
{
  self->_selectionBorderWidth = a3;
  v4 = [(_UITextSelectionRangeView *)self pathLayer];
  [v4 setLineWidth:a3];
}

@end