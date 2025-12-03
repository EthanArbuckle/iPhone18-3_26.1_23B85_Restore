@interface _UIFocusEffectManager
- (UIFocusItem)focusedItem;
- (_UIFocusHaloView)haloView;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_observeFocusedItemGeometryForItem:(id)item;
- (void)moveFocusToItem:(id)item;
@end

@implementation _UIFocusEffectManager

- (void)moveFocusToItem:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  if (!itemCopy)
  {
    goto LABEL_12;
  }

  v7 = _UIFocusEnvironmentContainingView(itemCopy);
  _window = [v7 _window];
  if (!_window)
  {

    goto LABEL_12;
  }

  v9 = _window;
  v10 = _UIFocusItemHaloEffect(v6);

  if (!v10)
  {
LABEL_12:
    [(_UIFocusEffectManager *)self _observeFocusedItemGeometryForItem:0];
    haloView = [(_UIFocusEffectManager *)self haloView];
    [haloView removeFromSuperview];

    goto LABEL_13;
  }

  _shape = [v10 _shape];
  if (!_shape)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEffectManager.m" lineNumber:39 description:@"Expected a nonnull shape for a resolved focus effect."];
  }

  containerView = [v10 containerView];
  if (!containerView)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusEffectManager.m" lineNumber:42 description:@"Expected a nonnull container view for a resolved focus effect."];
  }

  _shapeCoordinateSpace = [v10 _shapeCoordinateSpace];
  if (!_shapeCoordinateSpace)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIFocusEffectManager.m" lineNumber:45 description:@"Expected a nonnull shape coordinate space for a resolved focus effect."];
  }

  v14 = [_shape shapeConvertedFromCoordinateSpace:_shapeCoordinateSpace toCoordinateSpace:containerView];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __41___UIFocusEffectManager_moveFocusToItem___block_invoke;
  v23[3] = &unk_1E70F8868;
  v23[4] = self;
  v24 = v10;
  v15 = v6;
  v25 = v15;
  v26 = containerView;
  v27 = v14;
  v16 = v14;
  v17 = containerView;
  v18 = v10;
  [UIView performWithoutAnimation:v23];
  [(_UIFocusEffectManager *)self _observeFocusedItemGeometryForItem:v15];

LABEL_13:
}

- (void)_observeFocusedItemGeometryForItem:(id)item
{
  obj = item;
  WeakRetained = objc_loadWeakRetained(&self->_focusedItem);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_focusedItem);
    IsKindOfUIView = _IsKindOfUIView(v6);

    if (IsKindOfUIView)
    {
      v8 = objc_loadWeakRetained(&self->_focusedItem);
      [(UIView *)v8 _removeGeometryChangeObserver:?];
    }

    objc_storeWeak(&self->_focusedItem, obj);
    v9 = _IsKindOfUIView(obj);
    v5 = obj;
    if (v9)
    {
      [(UIView *)obj _addGeometryChangeObserver:?];
      v5 = obj;
    }
  }
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  v5 = [(_UIFocusEffectManager *)self focusedItem:changed];
  [(_UIFocusEffectManager *)self moveFocusToItem:v5];
}

- (_UIFocusHaloView)haloView
{
  haloView = self->_haloView;
  if (!haloView)
  {
    v4 = objc_opt_new();
    v5 = self->_haloView;
    self->_haloView = v4;

    haloView = self->_haloView;
  }

  return haloView;
}

- (UIFocusItem)focusedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusedItem);

  return WeakRetained;
}

@end