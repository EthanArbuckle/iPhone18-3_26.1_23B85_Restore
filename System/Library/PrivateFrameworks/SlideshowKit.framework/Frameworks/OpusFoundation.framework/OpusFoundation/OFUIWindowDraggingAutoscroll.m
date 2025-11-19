@interface OFUIWindowDraggingAutoscroll
- (OFUIWindowDraggingAutoscroll)init;
- (id)_hitAutoscrollViewInSuperview:(id)a3;
- (id)_hitAutoscrollViewWithDraggingSession:(id)a3;
- (void)_autoscrollTimerFired:(id)a3;
- (void)dealloc;
- (void)maybeStartAutoscrollForDraggingSession:(id)a3;
- (void)stopAutoscroll;
@end

@implementation OFUIWindowDraggingAutoscroll

- (OFUIWindowDraggingAutoscroll)init
{
  v3.receiver = self;
  v3.super_class = OFUIWindowDraggingAutoscroll;
  result = [(OFUIWindowDraggingAutoscroll *)&v3 init];
  if (result)
  {
    result->_autoscrollView = 0;
    result->_autoscrollTimer = 0;
    result->_autoscrollDistance = 0.0;
  }

  return result;
}

- (void)dealloc
{
  autoscrollView = self->_autoscrollView;
  if (autoscrollView)
  {

    self->_autoscrollView = 0;
  }

  autoscrollTimer = self->_autoscrollTimer;
  if (autoscrollTimer)
  {
    if ([(NSTimer *)autoscrollTimer isValid])
    {
      [(NSTimer *)self->_autoscrollTimer invalidate];
    }

    self->_autoscrollTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = OFUIWindowDraggingAutoscroll;
  [(OFUIWindowDraggingAutoscroll *)&v5 dealloc];
}

- (id)_hitAutoscrollViewInSuperview:(id)a3
{
  if (!a3 || [a3 conformsToProtocol:&unk_287AE7D20] && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(a3, "canAutoscroll") & 1) != 0))
  {
    return a3;
  }

  v6 = [a3 superview];

  return [(OFUIWindowDraggingAutoscroll *)self _hitAutoscrollViewInSuperview:v6];
}

- (id)_hitAutoscrollViewWithDraggingSession:(id)a3
{
  v5 = [a3 window];
  [a3 position];
  v6 = [v5 hitTest:0 withEvent:?];
  v7 = v6;
  if (!v6 || [v6 conformsToProtocol:&unk_287AE7D20] && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v7, "canAutoscroll") & 1) != 0))
  {
    return v7;
  }

  v9 = [v7 superview];

  return [(OFUIWindowDraggingAutoscroll *)self _hitAutoscrollViewInSuperview:v9];
}

- (void)_autoscrollTimerFired:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [(OFUIWindowDraggingAutoscroll *)self autoscrollView];
  [(OFUIWindowDraggingAutoscroll *)self autoscrollDistance];
  [(OFUIWindowDraggingAutoscroll *)v5 autoscroll:?];
  if (v4)
  {

    [v4 updateDragging];
  }
}

- (void)maybeStartAutoscrollForDraggingSession:(id)a3
{
  v5 = [(OFUIWindowDraggingAutoscroll *)self _hitAutoscrollViewWithDraggingSession:?];
  if (v5)
  {
    v6 = v5;
    [(OFUIWindowDraggingAutoscroll *)self setAutoscrollView:v5];
    [objc_msgSend(a3 "presentationView")];
    [v6 convertRect:objc_msgSend(objc_msgSend(a3 fromView:{"presentationView"), "superview"), v7, v8, v9, v10}];
    [v6 autoscrollDistance:?];
    [(OFUIWindowDraggingAutoscroll *)self setAutoscrollDistance:?];
    [(OFUIWindowDraggingAutoscroll *)self autoscrollDistance];
    autoscrollTimer = self->_autoscrollTimer;
    if (v12 == 0.0)
    {
      if (autoscrollTimer)
      {
        if ([(NSTimer *)autoscrollTimer isValid])
        {
          [(NSTimer *)self->_autoscrollTimer invalidate];
        }

        self->_autoscrollTimer = 0;
      }
    }

    else if (!autoscrollTimer)
    {
      v13 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__autoscrollTimerFired_ selector:a3 userInfo:1 repeats:0.0166666675];

      [(OFUIWindowDraggingAutoscroll *)self setAutoscrollTimer:v13];
    }
  }

  else
  {

    [(OFUIWindowDraggingAutoscroll *)self stopAutoscroll];
  }
}

- (void)stopAutoscroll
{
  autoscrollTimer = self->_autoscrollTimer;
  if (autoscrollTimer)
  {
    if ([(NSTimer *)autoscrollTimer isValid])
    {
      [(NSTimer *)self->_autoscrollTimer invalidate];
    }

    self->_autoscrollTimer = 0;
  }
}

@end