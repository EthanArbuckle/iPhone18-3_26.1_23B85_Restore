@interface _SKUIClickThroughWindow
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _SKUIClickThroughWindow

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_SKUIClickThroughWindow *)self interactionView];

  if (v8)
  {
    v9 = [(_SKUIClickThroughWindow *)self interactionView];
    [(_SKUIClickThroughWindow *)self convertPoint:v9 toView:x, y];
    v11 = v10;
    v13 = v12;

    v14 = [(_SKUIClickThroughWindow *)self interactionView];
    v15 = [v14 pointInside:v7 withEvent:{v11, v13}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = _SKUIClickThroughWindow;
  v5 = [(_SKUIClickThroughWindow *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end