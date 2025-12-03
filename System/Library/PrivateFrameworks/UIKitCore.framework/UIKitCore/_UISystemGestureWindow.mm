@interface _UISystemGestureWindow
- (_UISystemGestureWindow)initWithDisplay:(id)display;
- (_UISystemGestureWindow)initWithDisplayConfiguration:(id)configuration;
- (_UISystemGestureWindow)initWithScreen:(id)screen;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _UISystemGestureWindow

- (_UISystemGestureWindow)initWithDisplay:(id)display
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISystemGestureWindow.m" lineNumber:72 description:@"you can't call this"];

  return [(_UISystemGestureWindow *)self initWithDisplayConfiguration:display];
}

- (_UISystemGestureWindow)initWithScreen:(id)screen
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISystemGestureWindow.m" lineNumber:77 description:@"you can't call this"];

  displayConfiguration = [screen displayConfiguration];
  v8 = [(_UISystemGestureWindow *)self initWithDisplayConfiguration:displayConfiguration];

  return v8;
}

- (_UISystemGestureWindow)initWithDisplayConfiguration:(id)configuration
{
  v9.receiver = self;
  v9.super_class = _UISystemGestureWindow;
  v3 = [(_UIRootWindow *)&v9 initWithDisplay:configuration];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = _UISystemGestureWindow;
  _systemGestureView = [(UIView *)&v10 hitTest:event withEvent:test.x, test.y];
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1ED49E448 == -1)
    {
      if (_systemGestureView)
      {
LABEL_13:
        _UIApplicationProcessIsSpringBoard();
        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_1ED49E448, &__block_literal_global_286);
      if (_systemGestureView)
      {
        goto LABEL_13;
      }
    }

    if (_MergedGlobals_1129 == 1)
    {
      _systemGestureView = [(_UISystemGestureWindow *)self _systemGestureView];
    }

    else
    {
      _systemGestureView = 0;
    }
  }

  if (_UIApplicationProcessIsSpringBoard() && !_systemGestureView)
  {
    [(_UIRootWindow *)self _additionalRootLayerAffineTransform];
    if (CGAffineTransformIsIdentity(&v9))
    {
      _systemGestureView = 0;
    }

    else
    {
      _systemGestureView = [(_UISystemGestureWindow *)self _systemGestureView];
    }
  }

LABEL_7:
  if (_systemGestureView == self)
  {
    v6 = 0;
  }

  else
  {
    v6 = _systemGestureView;
  }

  v7 = v6;

  return v6;
}

@end