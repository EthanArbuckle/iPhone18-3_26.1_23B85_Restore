@interface _UIStatusBarItemUpdate
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation _UIStatusBarItemUpdate

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_UIStatusBarItemUpdate);
  [(_UIStatusBarItemUpdate *)v4 setEnabilityChanged:self->_enabilityChanged];
  [(_UIStatusBarItemUpdate *)v4 setEnabled:self->_enabled];
  [(_UIStatusBarItemUpdate *)v4 setDataChanged:self->_dataChanged];
  [(_UIStatusBarItemUpdate *)v4 setData:self->_data];
  [(_UIStatusBarItemUpdate *)v4 setStyleAttributesChanged:self->_styleAttributesChanged];
  [(_UIStatusBarItemUpdate *)v4 setStyleAttributes:self->_styleAttributes];
  [(_UIStatusBarItemUpdate *)v4 setPlacementInfo:self->_placementInfo];
  return v4;
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_enabilityChanged);
  v13 = v3;
  v4 = NSStringFromSelector(sel_styleAttributesChanged);
  v14 = v4;
  v5 = NSStringFromSelector(sel_dataChanged);
  v15 = v5;
  v6 = NSStringFromSelector(sel_enabled);
  v16 = v6;
  v7 = NSStringFromSelector(sel_data);
  v17 = v7;
  v8 = NSStringFromSelector(sel_styleAttributes);
  v18 = v8;
  v9 = NSStringFromSelector(sel_placementInfo);
  v19 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:7];
  v11 = [UIDescriptionBuilder descriptionForObject:self keys:v10, v13, v14, v15, v16, v17, v18];

  return v11;
}

@end