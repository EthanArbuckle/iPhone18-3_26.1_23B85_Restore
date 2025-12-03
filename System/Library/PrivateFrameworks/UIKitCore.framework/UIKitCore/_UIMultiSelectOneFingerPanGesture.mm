@interface _UIMultiSelectOneFingerPanGesture
- (BOOL)_preventsDragInteractionGestures;
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer;
- (_UIMultiSelectOneFingerPanGestureDelegate)oneFingerPanDelegate;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation _UIMultiSelectOneFingerPanGesture

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = _UIMultiSelectOneFingerPanGesture;
  [(UIPanGestureRecognizer *)&v11 touchesBegan:beganCopy withEvent:eventCopy];
  if (!self->_activeTouch)
  {
    anyObject = [beganCopy anyObject];
    activeTouch = self->_activeTouch;
    self->_activeTouch = anyObject;

    objc_storeStrong(&self->_activeEvent, event);
  }

  [(UIPanGestureRecognizer *)self _hysteresis];
  if (v10 < 0.00000011920929 || [(_UIMultiSelectOneFingerPanGesture *)self _preventsDragInteractionGestures])
  {
    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)reset
{
  activeTouch = self->_activeTouch;
  self->_activeTouch = 0;

  activeEvent = self->_activeEvent;
  self->_activeEvent = 0;
}

- (BOOL)_preventsDragInteractionGestures
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_oneFingerPanDelegate);
  LOBYTE(selfCopy) = [WeakRetained multiSelectOneFingerPanGestureShouldPreventDragInteractionGesture:selfCopy];

  return selfCopy;
}

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (-[UIGestureRecognizer state](self, "state") <= UIGestureRecognizerStateBegan && [recognizerCopy _isGestureType:8])
  {
    v5 = MEMORY[0x1E695DFD8];
    activeTouch = self->_activeTouch;
    v7 = recognizerCopy;
    v8 = [v5 setWithObject:activeTouch];
    [(UIPanGestureRecognizer *)v7 _ignoreTouches:v8 forEvent:self->_activeEvent];
  }

  return 0;
}

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v5 = ![(_UIMultiSelectOneFingerPanGesture *)self _preventsDragInteractionGestures]&& (_isDragInteractionGestureRecognizer(recognizerCopy) & 1) != 0;

  return v5;
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v5 = [(_UIMultiSelectOneFingerPanGesture *)self _preventsDragInteractionGestures]&& (_isDragInteractionGestureRecognizer(recognizerCopy) & 1) != 0;

  return v5;
}

- (_UIMultiSelectOneFingerPanGestureDelegate)oneFingerPanDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_oneFingerPanDelegate);

  return WeakRetained;
}

@end