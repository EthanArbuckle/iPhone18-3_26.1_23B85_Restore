@interface _UIFocusEffectManager
- (UIFocusItem)focusedItem;
- (_UIFocusHaloView)haloView;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_observeFocusedItemGeometryForItem:(id)a3;
- (void)moveFocusToItem:(id)a3;
@end

@implementation _UIFocusEffectManager

- (void)moveFocusToItem:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = _UIFocusEnvironmentContainingView(v5);
  v8 = [v7 _window];
  if (!v8)
  {

    goto LABEL_12;
  }

  v9 = v8;
  v10 = _UIFocusItemHaloEffect(v6);

  if (!v10)
  {
LABEL_12:
    [(_UIFocusEffectManager *)self _observeFocusedItemGeometryForItem:0];
    v19 = [(_UIFocusEffectManager *)self haloView];
    [v19 removeFromSuperview];

    goto LABEL_13;
  }

  v11 = [v10 _shape];
  if (!v11)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UIFocusEffectManager.m" lineNumber:39 description:@"Expected a nonnull shape for a resolved focus effect."];
  }

  v12 = [v10 containerView];
  if (!v12)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_UIFocusEffectManager.m" lineNumber:42 description:@"Expected a nonnull container view for a resolved focus effect."];
  }

  v13 = [v10 _shapeCoordinateSpace];
  if (!v13)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UIFocusEffectManager.m" lineNumber:45 description:@"Expected a nonnull shape coordinate space for a resolved focus effect."];
  }

  v14 = [v11 shapeConvertedFromCoordinateSpace:v13 toCoordinateSpace:v12];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __41___UIFocusEffectManager_moveFocusToItem___block_invoke;
  v23[3] = &unk_1E70F8868;
  v23[4] = self;
  v24 = v10;
  v15 = v6;
  v25 = v15;
  v26 = v12;
  v27 = v14;
  v16 = v14;
  v17 = v12;
  v18 = v10;
  [UIView performWithoutAnimation:v23];
  [(_UIFocusEffectManager *)self _observeFocusedItemGeometryForItem:v15];

LABEL_13:
}

- (void)_observeFocusedItemGeometryForItem:(id)a3
{
  obj = a3;
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

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  v5 = [(_UIFocusEffectManager *)self focusedItem:a3];
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