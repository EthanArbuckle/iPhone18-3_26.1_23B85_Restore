@interface _UIPointerInteractionPencilHoverDriver
- (BOOL)isActive;
- (CAPoint3D)locationInView:(id)view;
- (UIView)view;
- (_UIPointerInteractionPencilHoverDriver)initWithSink:(id)sink;
- (void)_handleHoverGesture:(id)gesture;
- (void)_installToView:(id)view;
- (void)_updateHover:(id)hover forced:(BOOL)forced;
- (void)invalidate;
- (void)setView:(id)view;
@end

@implementation _UIPointerInteractionPencilHoverDriver

- (_UIPointerInteractionPencilHoverDriver)initWithSink:(id)sink
{
  sinkCopy = sink;
  v8.receiver = self;
  v8.super_class = _UIPointerInteractionPencilHoverDriver;
  v5 = [(_UIPointerInteractionPencilHoverDriver *)&v8 init];
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
  v3[2] = __52___UIPointerInteractionPencilHoverDriver_invalidate__block_invoke;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPointerInteractionPencilHoverDriver.m" lineNumber:94 description:@"Received updates from an unknown hover gesture recognizer."];
  }

  self->_flags.invalid = 0;

  [_UIPointerInteractionPencilHoverDriver _updateHover:"_updateHover:forced:" forced:?];
}

- (void)_updateHover:(id)hover forced:(BOOL)forced
{
  forcedCopy = forced;
  hoverCopy = hover;
  if ([hoverCopy state] == 3 || objc_msgSend(hoverCopy, "state") == 4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sink);
    [WeakRetained driverDidExit:self];
  }

  else if ([hoverCopy state] >= 1)
  {
    view = [hoverCopy view];
    [hoverCopy _location3DInView:view];
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = forcedCopy;
    memset(v23, 0, sizeof(v23));
    [hoverCopy _maximumHoverHeight];
    v17 = v16;
    modifierFlags = [hoverCopy modifierFlags];
    LOBYTE(view) = _UIPlasmaEnabled();
    _trackpadFingerDownCount = [hoverCopy _trackpadFingerDownCount];
    v20 = objc_loadWeakRetained(&self->_sink);
    v21[0] = v10;
    v21[1] = v12;
    v21[2] = v14;
    v21[3] = v17;
    v21[4] = modifierFlags;
    v21[5] = 0;
    v21[6] = v15;
    v22 = view;
    v24 = 0;
    v25 = _trackpadFingerDownCount;
    [v20 driver:self didIssueUpdate:v21];
  }
}

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [(_UIPointerInteractionPencilHoverDriver *)self _uninstallFromView:WeakRetained];

  v5 = objc_storeWeak(&self->_view, obj);
  v6 = v5;
  if (obj)
  {
    v7 = objc_loadWeakRetained(&self->_view);
    [(_UIPointerInteractionPencilHoverDriver *)self _installToView:v7];
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

    [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer _setAllowedTouchTypes:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_sink);
  [WeakRetained driver:self willAttachHoverGestureRecognizer:self->_hoverGestureRecognizer toView:viewCopy];

  [viewCopy addGestureRecognizer:self->_hoverGestureRecognizer];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end