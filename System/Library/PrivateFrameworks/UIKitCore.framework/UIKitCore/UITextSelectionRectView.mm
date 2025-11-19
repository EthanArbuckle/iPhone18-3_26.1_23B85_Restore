@interface UITextSelectionRectView
- (BOOL)hasPath;
- (id)path;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)setPath:(id)a3;
- (void)setSelectionBorderColor:(id)a3;
- (void)setSelectionBorderWidth:(double)a3;
- (void)setSelectionColor:(id)a3;
- (void)setSelectionCornerRadius:(double)a3;
@end

@implementation UITextSelectionRectView

- (BOOL)hasPath
{
  v2 = [(UITextSelectionRectView *)self pathLayer];
  v3 = [v2 path] != 0;

  return v3;
}

- (void)setPath:(id)a3
{
  v4 = a3;
  v7 = [(UITextSelectionRectView *)self pathLayer];
  v5 = [v4 CGPath];

  [v7 setPath:v5];
  if (!v4)
  {
    v6 = [(UITextSelectionRectView *)self selectionColor];
    [(UIView *)self setBackgroundColor:v6];
  }

  [(UITextSelectionRectView *)self setSelectionColor:self->_selectionColor];
  [(UITextSelectionRectView *)self setSelectionBorderColor:self->_selectionBorderColor];
  [(UITextSelectionRectView *)self setSelectionBorderWidth:self->_selectionBorderWidth];
}

- (id)path
{
  v2 = [(UITextSelectionRectView *)self pathLayer];
  v3 = [v2 path];

  if (v3)
  {
    v4 = [UIBezierPath bezierPathWithCGPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSelectionColor:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_selectionColor, a3);
  if ([(UITextSelectionRectView *)self hasPath])
  {
    v5 = [v8 CGColor];
    v6 = [(UITextSelectionRectView *)self pathLayer];
    [v6 setFillColor:v5];

    [(UIView *)self setBackgroundColor:0];
  }

  else
  {
    [(UIView *)self setBackgroundColor:v8];
    v7 = [(UITextSelectionRectView *)self pathLayer];
    [v7 setFillColor:0];
  }
}

- (void)setSelectionCornerRadius:(double)a3
{
  self->_selectionCornerRadius = a3;
  v4 = [(UIView *)self layer];
  [v4 setCornerRadius:a3];
}

- (void)setSelectionBorderColor:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_selectionBorderColor, a3);
  v5 = [(UITextSelectionRectView *)self hasPath];
  v6 = v9;
  v7 = [v9 CGColor];
  if (v5)
  {
    v8 = [(UITextSelectionRectView *)self pathLayer];
    [v8 setStrokeColor:v7];
  }

  else
  {
    v8 = [(UIView *)self layer];
    [v8 setBorderColor:v7];
  }
}

- (void)setSelectionBorderWidth:(double)a3
{
  self->_selectionBorderWidth = a3;
  if ([(UITextSelectionRectView *)self hasPath])
  {
    v5 = [(UITextSelectionRectView *)self pathLayer];
    [v5 setLineWidth:a3];
  }

  else
  {
    v5 = [(UIView *)self layer];
    [v5 setBorderWidth:a3];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v9.receiver = self;
  v9.super_class = UITextSelectionRectView;
  [(UIView *)&v9 _dynamicUserInterfaceTraitDidChange];
  if ([(UITextSelectionRectView *)self hasPath])
  {
    v3 = [(UITextSelectionRectView *)self selectionColor];
    v4 = [v3 CGColor];
    v5 = [(UITextSelectionRectView *)self pathLayer];
    [v5 setFillColor:v4];

    v6 = [(UITextSelectionRectView *)self selectionBorderColor];
    v7 = [v6 CGColor];
    v8 = [(UITextSelectionRectView *)self pathLayer];
    [v8 setStrokeColor:v7];
  }
}

@end