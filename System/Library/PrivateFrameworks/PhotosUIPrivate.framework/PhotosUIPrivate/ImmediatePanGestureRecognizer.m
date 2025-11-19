@interface ImmediatePanGestureRecognizer
- (PUCleanupGestureTouchTypeDelegate)touchTypeDelegate;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation ImmediatePanGestureRecognizer

- (PUCleanupGestureTouchTypeDelegate)touchTypeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_touchTypeDelegate);

  return WeakRetained;
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = ImmediatePanGestureRecognizer;
  [(ImmediatePanGestureRecognizer *)&v4 touchesMoved:a3 withEvent:a4];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 anyObject];
  v9 = [(ImmediatePanGestureRecognizer *)self touchTypeDelegate];

  if (v9)
  {
    v10 = [(ImmediatePanGestureRecognizer *)self touchTypeDelegate];
    [v10 setTouchType:{objc_msgSend(v8, "type")}];
  }

  v11.receiver = self;
  v11.super_class = ImmediatePanGestureRecognizer;
  [(ImmediatePanGestureRecognizer *)&v11 touchesBegan:v6 withEvent:v7];
}

@end