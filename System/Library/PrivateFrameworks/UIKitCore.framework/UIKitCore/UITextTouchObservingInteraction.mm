@interface UITextTouchObservingInteraction
- (UIView)view;
- (void)_addGestureRecognizers;
- (void)_createGestureRecognizersIfNecessary;
- (void)_removeGestureRecognizers;
- (void)didMoveToView:(id)a3;
- (void)longPressObserved:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation UITextTouchObservingInteraction

- (void)willMoveToView:(id)a3
{
  if (!a3)
  {
    [(UITextTouchObservingInteraction *)self _removeGestureRecognizers];
  }
}

- (void)didMoveToView:(id)a3
{
  objc_storeWeak(&self->_view, a3);
  if (a3)
  {

    [(UITextTouchObservingInteraction *)self _addGestureRecognizers];
  }
}

- (void)_addGestureRecognizers
{
  [(UITextTouchObservingInteraction *)self _createGestureRecognizersIfNecessary];
  v4 = [(UITextTouchObservingInteraction *)self view];
  v3 = [(UITextTouchObservingInteraction *)self longPressGesture];
  [v4 addGestureRecognizer:v3];
}

- (void)_removeGestureRecognizers
{
  v4 = [(UITextTouchObservingInteraction *)self view];
  v3 = [(UITextTouchObservingInteraction *)self longPressGesture];
  [v4 removeGestureRecognizer:v3];
}

- (void)_createGestureRecognizersIfNecessary
{
  v3 = [(UITextTouchObservingInteraction *)self longPressGesture];

  if (!v3)
  {
    v5 = [(UILongPressGestureRecognizer *)[_UITouchObservingLongPress alloc] initWithTarget:self action:sel_longPressObserved_];
    [(UIGestureRecognizer *)v5 setEnabled:1];
    [(UIGestureRecognizer *)v5 setDelegate:self];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(UILongPressGestureRecognizer *)v5 setMinimumPressDuration:0.0];
    [(UILongPressGestureRecognizer *)v5 setNumberOfTouchesRequired:3];
    v4 = +[_UITextSelectionSettings sharedInstance];
    [v4 allowableSeparation];
    [(UILongPressGestureRecognizer *)v5 _setAllowableSeparation:?];

    [(UILongPressGestureRecognizer *)v5 _setAllowableTouchTimeSeparation:0.06];
    [(UITextTouchObservingInteraction *)self setLongPressGesture:v5];
  }
}

- (void)longPressObserved:(id)a3
{
  v3 = [a3 state];
  if ((v3 - 3) >= 3)
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = +[UIKeyboardImpl sharedInstance];
    v6 = v4;
    v5 = 1;
  }

  else
  {
    v4 = +[UIKeyboardImpl activeInstance];
    v6 = v4;
    v5 = 0;
  }

  [v4 set_mimicShiftBeingHeld:v5];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end