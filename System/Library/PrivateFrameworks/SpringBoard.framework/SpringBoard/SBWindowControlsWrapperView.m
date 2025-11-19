@interface SBWindowControlsWrapperView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (SBWindowControlsWrapperView)initWithWindowControlsView:(id)a3;
@end

@implementation SBWindowControlsWrapperView

- (SBWindowControlsWrapperView)initWithWindowControlsView:(id)a3
{
  v5 = a3;
  [v5 bounds];
  v9.receiver = self;
  v9.super_class = SBWindowControlsWrapperView;
  v6 = [(SBWindowControlsWrapperView *)&v9 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_windowControlsView, a3);
    [(SBWindowControlsWrapperView *)v7 addSubview:v5];
  }

  return v7;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = self;
  v8 = self->_windowControlsView;
  v9 = a4;
  [(UIView *)v8 convertPoint:v7 fromView:x, y];
  LOBYTE(v7) = [(UIView *)v8 pointInside:v9 withEvent:?];

  return v7;
}

@end