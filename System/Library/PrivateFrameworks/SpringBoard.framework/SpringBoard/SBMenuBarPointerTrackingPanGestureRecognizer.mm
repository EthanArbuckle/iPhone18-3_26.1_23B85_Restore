@interface SBMenuBarPointerTrackingPanGestureRecognizer
- (SBMenuBarPointerTrackingPanGestureRecognizer)initWithMenuBarViewController:(id)controller;
- (SBMenuBarViewController)menuBarViewController;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SBMenuBarPointerTrackingPanGestureRecognizer

- (SBMenuBarPointerTrackingPanGestureRecognizer)initWithMenuBarViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SBMenuBarPointerTrackingPanGestureRecognizer;
  v5 = [(SBMenuBarPointerTrackingPanGestureRecognizer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_menuBarViewController, controllerCopy);
  }

  return v6;
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBMenuBarPointerTrackingPanGestureRecognizer;
  movedCopy = moved;
  [(SBMenuBarPointerTrackingPanGestureRecognizer *)&v10 touchesMoved:movedCopy withEvent:event];
  anyObject = [movedCopy anyObject];

  _isPointerTouch = [anyObject _isPointerTouch];
  if (_isPointerTouch)
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