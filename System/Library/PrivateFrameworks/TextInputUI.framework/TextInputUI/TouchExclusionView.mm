@interface TouchExclusionView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (TouchExclusionView)initWithFrame:(CGRect)a3 excludingView:(id)a4;
@end

@implementation TouchExclusionView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(UIView *)self->_excludingView convertPoint:self fromView:x, y];
  if ([(UIView *)self->_excludingView pointInside:v7 withEvent:?])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TouchExclusionView;
    v8 = [(TouchExclusionView *)&v10 pointInside:v7 withEvent:x, y];
  }

  return v8;
}

- (TouchExclusionView)initWithFrame:(CGRect)a3 excludingView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TouchExclusionView;
  v11 = [(TouchExclusionView *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_excludingView, a4);
  }

  return v12;
}

@end