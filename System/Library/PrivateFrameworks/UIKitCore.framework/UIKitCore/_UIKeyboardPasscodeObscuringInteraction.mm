@interface _UIKeyboardPasscodeObscuringInteraction
- (UIPointerInteraction)pointerInteraction;
- (UIView)view;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
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

- (void)willMoveToView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  layer = [WeakRetained layer];
  [layer setDisableUpdateMask:0];

  if (self->_pointerInteraction)
  {
    v6 = objc_loadWeakRetained(&self->_view);
    [v6 removeInteraction:self->_pointerInteraction];
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  v4 = objc_storeWeak(&self->_view, view);
  if (view)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    layer = [WeakRetained layer];
    [layer setDisableUpdateMask:18];

    v7 = objc_loadWeakRetained(&self->_view);
    pointerInteraction = [(_UIKeyboardPasscodeObscuringInteraction *)self pointerInteraction];
    [v7 addInteraction:pointerInteraction];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  view = [interaction view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  identifier = [regionCopy identifier];

  v17 = [UIPointerRegion regionWithRect:identifier identifier:v9, v11, v13, v15];

  return v17;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = [UIPointerStyle systemPointerStyle:interaction];
  [v4 set_suppressesMirroring:1];

  return v4;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end