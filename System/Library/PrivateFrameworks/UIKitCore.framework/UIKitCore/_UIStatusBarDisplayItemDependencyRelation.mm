@interface _UIStatusBarDisplayItemDependencyRelation
- (BOOL)isFulfilled;
- (_UIStatusBarDisplayItemState)itemState;
- (id)_ui_descriptionBuilder;
- (id)itemStates;
- (id)type;
@end

@implementation _UIStatusBarDisplayItemDependencyRelation

- (BOOL)isFulfilled
{
  WeakRetained = objc_loadWeakRetained(&self->_itemState);
  v4 = [WeakRetained isCurrentPlacement:self->_placement];

  return ((v4 ^ self->_requirement) & 1) == 0;
}

- (id)itemStates
{
  v5[1] = *MEMORY[0x1E69E9840];
  itemState = [(_UIStatusBarDisplayItemDependencyRelation *)self itemState];
  v5[0] = itemState;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)type
{
  if (self->_requirement)
  {
    return @"requirement";
  }

  else
  {
    return @"exclusion";
  }
}

- (id)_ui_descriptionBuilder
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIStatusBarDisplayItemDependencyRelation;
  _ui_descriptionBuilder = [(_UIStatusBarDisplayItemRelation *)&v8 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_itemState);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_placement);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [_ui_descriptionBuilder appendKeys:v5];

  return v6;
}

- (_UIStatusBarDisplayItemState)itemState
{
  WeakRetained = objc_loadWeakRetained(&self->_itemState);

  return WeakRetained;
}

@end