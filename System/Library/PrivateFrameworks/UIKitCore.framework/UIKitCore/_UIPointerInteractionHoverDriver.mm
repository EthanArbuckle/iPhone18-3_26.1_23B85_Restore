@interface _UIPointerInteractionHoverDriver
- (BOOL)isActive;
- (CAPoint3D)locationInView:(id)view;
- (UIView)view;
- (_UIPointerInteractionHoverDriver)initWithSink:(id)sink;
- (double)_currentTouchForce;
- (int64_t)_currentButtonMask;
- (void)_handleHoverGesture:(id)gesture;
- (void)_handlePressGesture:(id)gesture;
- (void)_installToView:(id)view;
- (void)_pointerStateDidChange:(id)change;
- (void)_uninstallFromView:(id)view;
- (void)_updateHover:(id)hover forced:(BOOL)forced;
- (void)invalidate;
- (void)setView:(id)view;
@end

@implementation _UIPointerInteractionHoverDriver

- (_UIPointerInteractionHoverDriver)initWithSink:(id)sink
{
  sinkCopy = sink;
  v8.receiver = self;
  v8.super_class = _UIPointerInteractionHoverDriver;
  v5 = [(_UIPointerInteractionHoverDriver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sink, sinkCopy);
  }

  return v6;
}

- (CAPoint3D)locationInView:(id)view
{
  [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer _location3DInView:view];
  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)isActive
{
  state = [(UIGestureRecognizer *)self->_hoverGestureRecognizer state];
  if (state != UIGestureRecognizerStateBegan)
  {
    LOBYTE(state) = [(UIGestureRecognizer *)self->_hoverGestureRecognizer state]== UIGestureRecognizerStateChanged;
  }

  return state;
}

- (void)invalidate
{
  self->_flags.invalid = 1;
  objc_initWeak(&location, self);
  v2 = UIApp;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46___UIPointerInteractionHoverDriver_invalidate__block_invoke;
  v3[3] = &unk_1E70F5A28;
  objc_copyWeak(&v4, &location);
  [v2 _performBlockAfterCATransactionCommits:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_handleHoverGesture:(id)gesture
{
  if (self->_hoverGestureRecognizer != gesture)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPointerInteractionHoverDriver.m" lineNumber:187 description:@"Received updates from an unknown hover gesture recognizer."];
  }

  self->_flags.invalid = 0;

  [_UIPointerInteractionHoverDriver _updateHover:"_updateHover:forced:" forced:?];
}

- (void)_updateHover:(id)hover forced:(BOOL)forced
{
  forcedCopy = forced;
  hoverCopy = hover;
  self->_flags.receivedUpdateWhilePointerDisabled = 0;
  if ([hoverCopy state] == 3 || objc_msgSend(hoverCopy, "state") == 4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sink);
    [WeakRetained driverDidExit:self];

    goto LABEL_4;
  }

  v8 = +[_UIPointerArbiter sharedArbiter];
  pointerState = [v8 pointerState];

  switch(pointerState)
  {
    case 0:
LABEL_10:
      self->_flags.receivedUpdateWhilePointerDisabled = 1;
      break;
    case 3:
      v24 = objc_loadWeakRetained(&self->_sink);
      [v24 driverDidExit:self];

      goto LABEL_10;
    case 1:
      view = [hoverCopy view];
      [hoverCopy _location3DInView:view];
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = forcedCopy;
      memset(v27, 0, sizeof(v27));
      modifierFlags = [hoverCopy modifierFlags];
      _currentButtonMask = [(_UIPointerInteractionHoverDriver *)self _currentButtonMask];
      [(_UIPointerInteractionHoverDriver *)self _currentTouchForce];
      v21 = v20;
      _trackpadFingerDownCount = [(_UIPointerInteractionHoverDriver *)self _trackpadFingerDownCount];
      v23 = objc_loadWeakRetained(&self->_sink);
      v25[0] = v12;
      v25[1] = v14;
      v25[2] = v16;
      v25[3] = 0;
      v25[4] = modifierFlags;
      v25[5] = _currentButtonMask;
      v25[6] = v17;
      v26 = 1;
      v28 = v21;
      v29 = _trackpadFingerDownCount;
      [v23 driver:self didIssueUpdate:v25];

      break;
  }

LABEL_4:
}

- (void)_handlePressGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [gestureCopy view];
  [gestureCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  memset(v18, 0, sizeof(v18));
  modifierFlags = [gestureCopy modifierFlags];

  _currentButtonMask = [(_UIPointerInteractionHoverDriver *)self _currentButtonMask];
  [(_UIPointerInteractionHoverDriver *)self _currentTouchForce];
  v13 = v12;
  _trackpadFingerDownCount = [(_UIPointerInteractionHoverDriver *)self _trackpadFingerDownCount];
  WeakRetained = objc_loadWeakRetained(&self->_sink);
  v16[0] = v7;
  v16[1] = v9;
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = modifierFlags;
  v16[5] = _currentButtonMask;
  v16[6] = 0;
  v17 = 1;
  v19 = v13;
  v20 = _trackpadFingerDownCount;
  [WeakRetained driver:self didIssueUpdate:v16];
}

- (int64_t)_currentButtonMask
{
  buttonMask = [(UIGestureRecognizer *)self->_pressGestureRecognizer buttonMask];
  if ([(UIGestureRecognizer *)self->_pressGestureRecognizer state]<= UIGestureRecognizerStateChanged)
  {
    return buttonMask;
  }

  else
  {
    return 0;
  }
}

- (double)_currentTouchForce
{
  _allActiveTouches = [(UIGestureRecognizer *)self->_hoverGestureRecognizer _allActiveTouches];
  anyObject = [_allActiveTouches anyObject];

  [anyObject force];
  v5 = v4;

  return v5;
}

- (void)_pointerStateDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = changeCopy;
  if (isKindOfClass)
  {
    object2 = [changeCopy object];
    v8 = object2;
    if (self->_flags.receivedUpdateWhilePointerDisabled && [object2 pointerState] == 1)
    {
      [(_UIPointerInteractionHoverDriver *)self _updateHover:self->_hoverGestureRecognizer forced:0];
    }

    v6 = changeCopy;
  }
}

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [(_UIPointerInteractionHoverDriver *)self _uninstallFromView:WeakRetained];

  v5 = objc_storeWeak(&self->_view, obj);
  v6 = v5;
  if (obj)
  {
    v7 = objc_loadWeakRetained(&self->_view);
    [(_UIPointerInteractionHoverDriver *)self _installToView:v7];
  }
}

- (void)_uninstallFromView:(id)view
{
  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  viewCopy = view;
  [viewCopy removeGestureRecognizer:hoverGestureRecognizer];
  [viewCopy removeGestureRecognizer:self->_pressGestureRecognizer];

  if (self->_flags.observing)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = +[_UIPointerArbiter sharedArbiter];
    [defaultCenter removeObserver:self name:0x1EFB7E670 object:v7];

    self->_flags.observing = 0;
  }
}

- (void)_installToView:(id)view
{
  viewCopy = view;
  if (!self->_hoverGestureRecognizer)
  {
    v4 = [(UIHoverGestureRecognizer *)[_UIPointerInteractionHoverGestureRecognizer alloc] initWithTarget:self action:sel__handleHoverGesture_];
    hoverGestureRecognizer = self->_hoverGestureRecognizer;
    self->_hoverGestureRecognizer = v4;

    [(UIGestureRecognizer *)self->_hoverGestureRecognizer setDelegate:self];
    [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer _setAllowedTouchTypes:?];
  }

  if (!self->_pressGestureRecognizer)
  {
    v6 = [(UILongPressGestureRecognizer *)[_UIPointerInteractionPressGestureRecognizer alloc] initWithTarget:self action:sel__handlePressGesture_];
    pressGestureRecognizer = self->_pressGestureRecognizer;
    self->_pressGestureRecognizer = v6;

    [(UIGestureRecognizer *)self->_pressGestureRecognizer setDelegate:self];
    [(UILongPressGestureRecognizer *)self->_pressGestureRecognizer setButtonMaskRequired:3];
    [(UILongPressGestureRecognizer *)self->_pressGestureRecognizer setMinimumPressDuration:0.0];
    [(UIGestureRecognizer *)self->_pressGestureRecognizer setAllowedTouchTypes:&unk_1EFE2BEF0];
    [(UIGestureRecognizer *)self->_pressGestureRecognizer setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)self->_pressGestureRecognizer setDelaysTouchesEnded:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_sink);
  [WeakRetained driver:self willAttachHoverGestureRecognizer:self->_hoverGestureRecognizer toView:viewCopy];

  [viewCopy addGestureRecognizer:self->_hoverGestureRecognizer];
  [viewCopy addGestureRecognizer:self->_pressGestureRecognizer];
  if (!self->_flags.observing)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = +[_UIPointerArbiter sharedArbiter];
    [defaultCenter addObserver:self selector:sel__pointerStateDidChange_ name:0x1EFB7E670 object:v10];

    self->_flags.observing = 1;
  }
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end