@interface _UISystemGestureWindow
- (_UISystemGestureWindow)initWithDisplay:(id)a3;
- (_UISystemGestureWindow)initWithDisplayConfiguration:(id)a3;
- (_UISystemGestureWindow)initWithScreen:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _UISystemGestureWindow

- (_UISystemGestureWindow)initWithDisplay:(id)a3
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"_UISystemGestureWindow.m" lineNumber:72 description:@"you can't call this"];

  return [(_UISystemGestureWindow *)self initWithDisplayConfiguration:a3];
}

- (_UISystemGestureWindow)initWithScreen:(id)a3
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"_UISystemGestureWindow.m" lineNumber:77 description:@"you can't call this"];

  v7 = [a3 displayConfiguration];
  v8 = [(_UISystemGestureWindow *)self initWithDisplayConfiguration:v7];

  return v8;
}

- (_UISystemGestureWindow)initWithDisplayConfiguration:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UISystemGestureWindow;
  v3 = [(_UIRootWindow *)&v9 initWithDisplay:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIRootWindow *)v3 setHidden:0];
    [(UIWindow *)v4 setLevel:0.0];
    v5 = [UISystemGestureView alloc];
    [(UIView *)v4 bounds];
    v6 = [(UIView *)v5 initWithFrame:?];
    systemGestureView = v4->_systemGestureView;
    v4->_systemGestureView = v6;

    [(UIView *)v4->_systemGestureView setAutoresizingMask:18];
    [(UIView *)v4->_systemGestureView setMultipleTouchEnabled:1];
    [(UIView *)v4 addSubview:v4->_systemGestureView];
  }

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = _UISystemGestureWindow;
  v5 = [(UIView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1ED49E448 == -1)
    {
      if (v5)
      {
LABEL_13:
        _UIApplicationProcessIsSpringBoard();
        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_1ED49E448, &__block_literal_global_286);
      if (v5)
      {
        goto LABEL_13;
      }
    }

    if (_MergedGlobals_1129 == 1)
    {
      v5 = [(_UISystemGestureWindow *)self _systemGestureView];
    }

    else
    {
      v5 = 0;
    }
  }

  if (_UIApplicationProcessIsSpringBoard() && !v5)
  {
    [(_UIRootWindow *)self _additionalRootLayerAffineTransform];
    if (CGAffineTransformIsIdentity(&v9))
    {
      v5 = 0;
    }

    else
    {
      v5 = [(_UISystemGestureWindow *)self _systemGestureView];
    }
  }

LABEL_7:
  if (v5 == self)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v6;
}

@end