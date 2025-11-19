@interface _UIFocusEnginePanGestureRecognizer
- (_UIFocusEnginePanGestureTouchObserver)touchObserver;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIFocusEnginePanGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v16.receiver = self;
  v16.super_class = _UIFocusEnginePanGestureRecognizer;
  v6 = a4;
  [(UIPanGestureRecognizer *)&v16 touchesBegan:a3 withEvent:v6];
  v7 = [(UIGestureRecognizer *)self delegate:v16.receiver];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UIGestureRecognizer *)self delegate];
    v10 = [v9 focusEnginePanGestureRecognizerShouldRecognizeImmediately:self];

    if (v10)
    {
      [(UIGestureRecognizer *)self setState:1];
    }
  }

  v11 = [(_UIFocusEnginePanGestureRecognizer *)self touchObserver];
  [v6 _digitizerLocation];
  v13 = v12;
  v15 = v14;

  [v11 focusEnginePanGesture:self touchBeganAtDigitizerLocation:{v13, v15}];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v12.receiver = self;
  v12.super_class = _UIFocusEnginePanGestureRecognizer;
  v6 = a4;
  [(UIPanGestureRecognizer *)&v12 touchesMoved:a3 withEvent:v6];
  v7 = [(_UIFocusEnginePanGestureRecognizer *)self touchObserver:v12.receiver];
  [v6 _digitizerLocation];
  v9 = v8;
  v11 = v10;

  [v7 focusEnginePanGesture:self touchMovedToDigitizerLocation:{v9, v11}];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v12.receiver = self;
  v12.super_class = _UIFocusEnginePanGestureRecognizer;
  v6 = a4;
  [(UIPanGestureRecognizer *)&v12 touchesEnded:a3 withEvent:v6];
  v7 = [(_UIFocusEnginePanGestureRecognizer *)self touchObserver:v12.receiver];
  [v6 _digitizerLocation];
  v9 = v8;
  v11 = v10;

  [v7 focusEnginePanGesture:self touchEndedAtDigitizerLocation:{v9, v11}];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v12.receiver = self;
  v12.super_class = _UIFocusEnginePanGestureRecognizer;
  v6 = a4;
  [(UIPanGestureRecognizer *)&v12 touchesCancelled:a3 withEvent:v6];
  v7 = [(_UIFocusEnginePanGestureRecognizer *)self touchObserver:v12.receiver];
  [v6 _digitizerLocation];
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