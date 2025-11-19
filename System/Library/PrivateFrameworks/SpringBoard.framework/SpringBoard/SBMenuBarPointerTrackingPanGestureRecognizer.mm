@interface SBMenuBarPointerTrackingPanGestureRecognizer
- (SBMenuBarPointerTrackingPanGestureRecognizer)initWithMenuBarViewController:(id)a3;
- (SBMenuBarViewController)menuBarViewController;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation SBMenuBarPointerTrackingPanGestureRecognizer

- (SBMenuBarPointerTrackingPanGestureRecognizer)initWithMenuBarViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBMenuBarPointerTrackingPanGestureRecognizer;
  v5 = [(SBMenuBarPointerTrackingPanGestureRecognizer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_menuBarViewController, v4);
  }

  return v6;
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBMenuBarPointerTrackingPanGestureRecognizer;
  v6 = a3;
  [(SBMenuBarPointerTrackingPanGestureRecognizer *)&v10 touchesMoved:v6 withEvent:a4];
  v7 = [v6 anyObject];

  v8 = [v7 _isPointerTouch];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_menuBarViewController);
    [WeakRetained _handleMenuPanGesture:self];
  }
}

- (SBMenuBarViewController)menuBarViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_menuBarViewController);

  return WeakRetained;
}

@end