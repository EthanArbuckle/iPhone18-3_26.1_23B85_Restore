@interface UIKBUndoHUDContainerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation UIKBUndoHUDContainerView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self bounds];
  v7 = v6 + -20.0;
  v9 = v8 + 40.0;
  v11 = v10 + -20.0;
  v13 = v12 + 40.0;
  v14 = x;
  v15 = y;

  return CGRectContainsPoint(*&v7, *&v14);
}

@end