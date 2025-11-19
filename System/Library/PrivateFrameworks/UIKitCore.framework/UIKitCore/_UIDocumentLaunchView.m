@interface _UIDocumentLaunchView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _UIDocumentLaunchView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v15.receiver = self;
  v15.super_class = _UIDocumentLaunchView;
  v8 = [UIView hitTest:sel_hitTest_withEvent_ withEvent:?];
  v9 = [(UIView *)&self->super.super.super.isa __viewDelegate];
  v10 = v9;
  if (v9 && (*(v9 + 1112) & 1) != 0)
  {
    if (v8 && (*(v9 + 1016) == v8 || *(v9 + 1008) == v8))
    {
      v12 = *(v9 + 1000);
      v13 = [v9 view];
      [v13 convertPoint:v10[125] toView:{x, y}];
      v11 = [v12 hitTest:a4 withEvent:?];
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