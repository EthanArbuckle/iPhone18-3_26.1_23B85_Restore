@interface UIKBUndoHUDContainerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation UIKBUndoHUDContainerView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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