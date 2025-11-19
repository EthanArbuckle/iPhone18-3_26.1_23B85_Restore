@interface _UIMultiSelectOneFingerPanGesture
- (BOOL)_preventsDragInteractionGestures;
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (BOOL)canPreventGestureRecognizer:(id)a3;
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3;
- (_UIMultiSelectOneFingerPanGestureDelegate)oneFingerPanDelegate;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation _UIMultiSelectOneFingerPanGesture

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UIMultiSelectOneFingerPanGesture;
  [(UIPanGestureRecognizer *)&v11 touchesBegan:v6 withEvent:v7];
  if (!self->_activeTouch)
  {
    v8 = [v6 anyObject];
    activeTouch = self->_activeTouch;
    self->_activeTouch = v8;

    objc_storeStrong(&self->_activeEvent, a4);
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
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_oneFingerPanDelegate);
  LOBYTE(v2) = [WeakRetained multiSelectOneFingerPanGestureShouldPreventDragInteractionGesture:v2];

  return v2;
}

- (BOOL)canPreventGestureRecognizer:(id)a3
{
  v4 = a3;
  if (-[UIGestureRecognizer state](self, "state") <= UIGestureRecognizerStateBegan && [v4 _isGestureType:8])
  {
    v5 = MEMORY[0x1E695DFD8];
    activeTouch = self->_activeTouch;
    v7 = v4;
    v8 = [v5 setWithObject:activeTouch];
    [(UIPanGestureRecognizer *)v7 _ignoreTouches:v8 forEvent:self->_activeEvent];
  }

  return 0;
}

- (BOOL)canBePreventedByGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = ![(_UIMultiSelectOneFingerPanGesture *)self _preventsDragInteractionGestures]&& (_isDragInteractionGestureRecognizer(v4) & 1) != 0;

  return v5;
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(_UIMultiSelectOneFingerPanGesture *)self _preventsDragInteractionGestures]&& (_isDragInteractionGestureRecognizer(v4) & 1) != 0;

  return v5;
}

- (_UIMultiSelectOneFingerPanGestureDelegate)oneFingerPanDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_oneFingerPanDelegate);

  return WeakRetained;
}

@end