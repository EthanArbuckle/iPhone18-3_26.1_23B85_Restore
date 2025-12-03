@interface UITextTouchObservingInteraction
- (UIView)view;
- (void)_addGestureRecognizers;
- (void)_createGestureRecognizersIfNecessary;
- (void)_removeGestureRecognizers;
- (void)didMoveToView:(id)view;
- (void)longPressObserved:(id)observed;
- (void)willMoveToView:(id)view;
@end

@implementation UITextTouchObservingInteraction

- (void)willMoveToView:(id)view
{
  if (!view)
  {
    [(UITextTouchObservingInteraction *)self _removeGestureRecognizers];
  }
}

- (void)didMoveToView:(id)view
{
  objc_storeWeak(&self->_view, view);
  if (view)
  {

    [(UITextTouchObservingInteraction *)self _addGestureRecognizers];
  }
}

- (void)_addGestureRecognizers
{
  [(UITextTouchObservingInteraction *)self _createGestureRecognizersIfNecessary];
  view = [(UITextTouchObservingInteraction *)self view];
  longPressGesture = [(UITextTouchObservingInteraction *)self longPressGesture];
  [view addGestureRecognizer:longPressGesture];
}

- (void)_removeGestureRecognizers
{
  view = [(UITextTouchObservingInteraction *)self view];
  longPressGesture = [(UITextTouchObservingInteraction *)self longPressGesture];
  [view removeGestureRecognizer:longPressGesture];
}

- (void)_createGestureRecognizersIfNecessary
{
  longPressGesture = [(UITextTouchObservingInteraction *)self longPressGesture];

  if (!longPressGesture)
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

- (void)longPressObserved:(id)observed
{
  state = [observed state];
  if ((state - 3) >= 3)
  {
    if (state != 1)
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