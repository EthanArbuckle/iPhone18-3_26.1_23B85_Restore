@interface ImmediatePanGestureRecognizer
- (PUCleanupGestureTouchTypeDelegate)touchTypeDelegate;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation ImmediatePanGestureRecognizer

- (PUCleanupGestureTouchTypeDelegate)touchTypeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_touchTypeDelegate);

  return WeakRetained;
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = ImmediatePanGestureRecognizer;
  [(ImmediatePanGestureRecognizer *)&v4 touchesMoved:moved withEvent:event];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  anyObject = [beganCopy anyObject];
  touchTypeDelegate = [(ImmediatePanGestureRecognizer *)self touchTypeDelegate];

  if (touchTypeDelegate)
  {
    touchTypeDelegate2 = [(ImmediatePanGestureRecognizer *)self touchTypeDelegate];
    [touchTypeDelegate2 setTouchType:{objc_msgSend(anyObject, "type")}];
  }

  v11.receiver = self;
  v11.super_class = ImmediatePanGestureRecognizer;
  [(ImmediatePanGestureRecognizer *)&v11 touchesBegan:beganCopy withEvent:eventCopy];
}

@end