@interface _UIDocumentLaunchView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _UIDocumentLaunchView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v15.receiver = self;
  v15.super_class = _UIDocumentLaunchView;
  v8 = [UIView hitTest:sel_hitTest_withEvent_ withEvent:?];
  __viewDelegate = [(UIView *)&self->super.super.super.isa __viewDelegate];
  v10 = __viewDelegate;
  if (__viewDelegate && (*(__viewDelegate + 1112) & 1) != 0)
  {
    if (v8 && (*(__viewDelegate + 1016) == v8 || *(__viewDelegate + 1008) == v8))
    {
      v12 = *(__viewDelegate + 1000);
      view = [__viewDelegate view];
      [view convertPoint:v10[125] toView:{x, y}];
      v11 = [v12 hitTest:event withEvent:?];
    }

    else
    {
      v11 = v8;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end