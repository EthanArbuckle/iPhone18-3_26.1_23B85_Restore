@interface SBUIPresentableCancelSystemDragGestureRecognizer
- (SBUIPresentableCancelSystemDragGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (SBUIPresentableCancelSystemDragGestureRecognizerDelegate)delegate;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation SBUIPresentableCancelSystemDragGestureRecognizer

- (SBUIPresentableCancelSystemDragGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = SBUIPresentableCancelSystemDragGestureRecognizer;
  v4 = [(SBUIPresentableCancelSystemDragGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(SBUIPresentableCancelSystemDragGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(SBUIPresentableCancelSystemDragGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(SBUIPresentableCancelSystemDragGestureRecognizer *)v5 setAllowedPressTypes:MEMORY[0x1E695E0F0]];
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(SBUIPresentableCancelSystemDragGestureRecognizer *)self state])
  {
    v7 = 5;
  }

  else
  {
    delegate = [(SBUIPresentableCancelSystemDragGestureRecognizer *)self delegate];
    v9 = [delegate gestureRecognizer:self shouldBeginWithTouches:beganCopy event:eventCopy];

    if (v9)
    {
      v7 = 3;
    }

    else
    {
      v7 = 5;
    }
  }

  [(SBUIPresentableCancelSystemDragGestureRecognizer *)self setState:v7];
}

- (SBUIPresentableCancelSystemDragGestureRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end