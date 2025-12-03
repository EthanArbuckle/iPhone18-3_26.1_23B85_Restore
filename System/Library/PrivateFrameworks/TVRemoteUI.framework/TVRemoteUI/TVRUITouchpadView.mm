@interface TVRUITouchpadView
- (TVRUITouchpadDelegate)touchDelegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation TVRUITouchpadView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  touchDelegate = [(TVRUITouchpadView *)self touchDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    touchDelegate2 = [(TVRUITouchpadView *)self touchDelegate];
    v11 = [touchDelegate2 hitTest:eventCopy withEvent:self forTouchpadView:{x, y}];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v16.receiver = self;
      v16.super_class = TVRUITouchpadView;
      v12 = [(TVRUITouchpadView *)&v16 hitTest:eventCopy withEvent:x, y];
    }

    v13 = v12;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TVRUITouchpadView;
    v13 = [(TVRUITouchpadView *)&v15 hitTest:eventCopy withEvent:x, y];
  }

  return v13;
}

- (TVRUITouchpadDelegate)touchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_touchDelegate);

  return WeakRetained;
}

@end