@interface _UIFocusEnginePanGestureRecognizer
- (_UIFocusEnginePanGestureTouchObserver)touchObserver;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIFocusEnginePanGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v16.receiver = self;
  v16.super_class = _UIFocusEnginePanGestureRecognizer;
  eventCopy = event;
  [(UIPanGestureRecognizer *)&v16 touchesBegan:began withEvent:eventCopy];
  v7 = [(UIGestureRecognizer *)self delegate:v16.receiver];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate = [(UIGestureRecognizer *)self delegate];
    v10 = [delegate focusEnginePanGestureRecognizerShouldRecognizeImmediately:self];

    if (v10)
    {
      [(UIGestureRecognizer *)self setState:1];
    }
  }

  touchObserver = [(_UIFocusEnginePanGestureRecognizer *)self touchObserver];
  [eventCopy _digitizerLocation];
  v13 = v12;
  v15 = v14;

  [touchObserver focusEnginePanGesture:self touchBeganAtDigitizerLocation:{v13, v15}];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = _UIFocusEnginePanGestureRecognizer;
  eventCopy = event;
  [(UIPanGestureRecognizer *)&v12 touchesMoved:moved withEvent:eventCopy];
  v7 = [(_UIFocusEnginePanGestureRecognizer *)self touchObserver:v12.receiver];
  [eventCopy _digitizerLocation];
  v9 = v8;
  v11 = v10;

  [v7 focusEnginePanGesture:self touchMovedToDigitizerLocation:{v9, v11}];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = _UIFocusEnginePanGestureRecognizer;
  eventCopy = event;
  [(UIPanGestureRecognizer *)&v12 touchesEnded:ended withEvent:eventCopy];
  v7 = [(_UIFocusEnginePanGestureRecognizer *)self touchObserver:v12.receiver];
  [eventCopy _digitizerLocation];
  v9 = v8;
  v11 = v10;

  [v7 focusEnginePanGesture:self touchEndedAtDigitizerLocation:{v9, v11}];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = _UIFocusEnginePanGestureRecognizer;
  eventCopy = event;
  [(UIPanGestureRecognizer *)&v12 touchesCancelled:cancelled withEvent:eventCopy];
  v7 = [(_UIFocusEnginePanGestureRecognizer *)self touchObserver:v12.receiver];
  [eventCopy _digitizerLocation];
  v9 = v8;
  v11 = v10;

  [v7 focusEnginePanGesture:self touchCancelledAtDigitizerLocation:{v9, v11}];
}

- (_UIFocusEnginePanGestureTouchObserver)touchObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_touchObserver);

  return WeakRetained;
}

@end