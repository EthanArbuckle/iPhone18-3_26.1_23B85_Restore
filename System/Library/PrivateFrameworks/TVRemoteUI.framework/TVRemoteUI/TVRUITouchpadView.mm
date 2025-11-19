@interface TVRUITouchpadView
- (TVRUITouchpadDelegate)touchDelegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation TVRUITouchpadView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(TVRUITouchpadView *)self touchDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TVRUITouchpadView *)self touchDelegate];
    v11 = [v10 hitTest:v7 withEvent:self forTouchpadView:{x, y}];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v16.receiver = self;
      v16.super_class = TVRUITouchpadView;
      v12 = [(TVRUITouchpadView *)&v16 hitTest:v7 withEvent:x, y];
    }

    v13 = v12;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TVRUITouchpadView;
    v13 = [(TVRUITouchpadView *)&v15 hitTest:v7 withEvent:x, y];
  }

  return v13;
}

- (TVRUITouchpadDelegate)touchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_touchDelegate);

  return WeakRetained;
}

@end