@interface SBUIPresentableCancelSystemDragGestureRecognizer
- (SBUIPresentableCancelSystemDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (SBUIPresentableCancelSystemDragGestureRecognizerDelegate)delegate;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SBUIPresentableCancelSystemDragGestureRecognizer

- (SBUIPresentableCancelSystemDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = SBUIPresentableCancelSystemDragGestureRecognizer;
  v4 = [(SBUIPresentableCancelSystemDragGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(SBUIPresentableCancelSystemDragGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(SBUIPresentableCancelSystemDragGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(SBUIPresentableCancelSystemDragGestureRecognizer *)v5 setAllowedPressTypes:MEMORY[0x1E695E0F0]];
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([(SBUIPresentableCancelSystemDragGestureRecognizer *)self state])
  {
    v7 = 5;
  }

  else
  {
    v8 = [(SBUIPresentableCancelSystemDragGestureRecognizer *)self delegate];
    v9 = [v8 gestureRecognizer:self shouldBeginWithTouches:v10 event:v6];

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