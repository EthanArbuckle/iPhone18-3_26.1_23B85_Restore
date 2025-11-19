@interface _UIPointerInteractionPencilHoverDriver
- (BOOL)isActive;
- (CAPoint3D)locationInView:(id)a3;
- (UIView)view;
- (_UIPointerInteractionPencilHoverDriver)initWithSink:(id)a3;
- (void)_handleHoverGesture:(id)a3;
- (void)_installToView:(id)a3;
- (void)_updateHover:(id)a3 forced:(BOOL)a4;
- (void)invalidate;
- (void)setView:(id)a3;
@end

@implementation _UIPointerInteractionPencilHoverDriver

- (_UIPointerInteractionPencilHoverDriver)initWithSink:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIPointerInteractionPencilHoverDriver;
  v5 = [(_UIPointerInteractionPencilHoverDriver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sink, v4);
  }

  return v6;
}

- (CAPoint3D)locationInView:(id)a3
{
  [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer _location3DInView:a3];
  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)isActive
{
  v3 = [(UIGestureRecognizer *)self->_hoverGestureRecognizer state];
  if (v3 != UIGestureRecognizerStateBegan)
  {
    LOBYTE(v3) = [(UIGestureRecognizer *)self->_hoverGestureRecognizer state]== UIGestureRecognizerStateChanged;
  }

  return v3;
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

- (void)_handleHoverGesture:(id)a3
{
  if (self->_hoverGestureRecognizer != a3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UIPointerInteractionPencilHoverDriver.m" lineNumber:94 description:@"Received updates from an unknown hover gesture recognizer."];
  }

  self->_flags.invalid = 0;

  [_UIPointerInteractionPencilHoverDriver _updateHover:"_updateHover:forced:" forced:?];
}

- (void)_updateHover:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 state] == 3 || objc_msgSend(v6, "state") == 4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sink);
    [WeakRetained driverDidExit:self];
  }

  else if ([v6 state] >= 1)
  {
    v8 = [v6 view];
    [v6 _location3DInView:v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = v4;
    memset(v23, 0, sizeof(v23));
    [v6 _maximumHoverHeight];
    v17 = v16;
    v18 = [v6 modifierFlags];
    LOBYTE(v8) = _UIPlasmaEnabled();
    v19 = [v6 _trackpadFingerDownCount];
    v20 = objc_loadWeakRetained(&self->_sink);
    v21[0] = v10;
    v21[1] = v12;
    v21[2] = v14;
    v21[3] = v17;
    v21[4] = v18;
    v21[5] = 0;
    v21[6] = v15;
    v22 = v8;
    v24 = 0;
    v25 = v19;
    [v20 driver:self didIssueUpdate:v21];
  }
}

- (void)setView:(id)a3
{
  obj = a3;
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

- (void)_installToView:(id)a3
{
  v7 = a3;
  if (!self->_hoverGestureRecognizer)
  {
    v4 = [(UIHoverGestureRecognizer *)[_UIPointerInteractionHoverGestureRecognizer alloc] initWithTarget:self action:sel__handleHoverGesture_];
    hoverGestureRecognizer = self->_hoverGestureRecognizer;
    self->_hoverGestureRecognizer = v4;

    [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer _setAllowedTouchTypes:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_sink);
  [WeakRetained driver:self willAttachHoverGestureRecognizer:self->_hoverGestureRecognizer toView:v7];

  [v7 addGestureRecognizer:self->_hoverGestureRecognizer];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end