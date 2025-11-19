@interface _UIKeyboardPasscodeObscuringInteraction
- (UIPointerInteraction)pointerInteraction;
- (UIView)view;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)didMoveToView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIKeyboardPasscodeObscuringInteraction

- (UIPointerInteraction)pointerInteraction
{
  pointerInteraction = self->_pointerInteraction;
  if (!pointerInteraction)
  {
    v4 = [[UIPointerInteraction alloc] initWithDelegate:self];
    v5 = self->_pointerInteraction;
    self->_pointerInteraction = v4;

    pointerInteraction = self->_pointerInteraction;
  }

  return pointerInteraction;
}

- (void)willMoveToView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v5 = [WeakRetained layer];
  [v5 setDisableUpdateMask:0];

  if (self->_pointerInteraction)
  {
    v6 = objc_loadWeakRetained(&self->_view);
    [v6 removeInteraction:self->_pointerInteraction];
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)a3
{
  v4 = objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v6 = [WeakRetained layer];
    [v6 setDisableUpdateMask:18];

    v7 = objc_loadWeakRetained(&self->_view);
    v8 = [(_UIKeyboardPasscodeObscuringInteraction *)self pointerInteraction];
    [v7 addInteraction:v8];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a5;
  v7 = [a3 view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v6 identifier];

  v17 = [UIPointerRegion regionWithRect:v16 identifier:v9, v11, v13, v15];

  return v17;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = [UIPointerStyle systemPointerStyle:a3];
  [v4 set_suppressesMirroring:1];

  return v4;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end