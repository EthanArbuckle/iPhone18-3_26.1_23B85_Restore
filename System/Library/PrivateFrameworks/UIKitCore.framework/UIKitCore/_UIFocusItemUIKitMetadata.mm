@interface _UIFocusItemUIKitMetadata
- (BOOL)isFocusMovementFlippedHorizontally;
- (CGSize)itemSizeInCoordinateSpace:(id)space;
- (_UIFocusItemUIKitMetadata)initWithItem:(id)item;
- (int64_t)focusTouchSensitivityStyle;
- (int64_t)inheritedFocusMovementStyle;
@end

@implementation _UIFocusItemUIKitMetadata

- (_UIFocusItemUIKitMetadata)initWithItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = _UIFocusItemUIKitMetadata;
  v6 = [(_UIFocusItemUIKitMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
  }

  return v7;
}

- (int64_t)focusTouchSensitivityStyle
{
  if ((*&self->_flags & 1) == 0)
  {
    item = [(_UIFocusItemUIKitMetadata *)self item];
    if (_UIFocusItemIsViewOrRespondsToSelector(item))
    {
      _focusTouchSensitivityStyle = [item _focusTouchSensitivityStyle];
    }

    else
    {
      _focusTouchSensitivityStyle = 0;
    }

    self->_focusTouchSensitivityStyle = _focusTouchSensitivityStyle;
    *&self->_flags |= 1u;
  }

  return self->_focusTouchSensitivityStyle;
}

- (BOOL)isFocusMovementFlippedHorizontally
{
  if ((*&self->_flags & 2) == 0)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    item = [(_UIFocusItemUIKitMetadata *)self item];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63___UIFocusItemUIKitMetadata_isFocusMovementFlippedHorizontally__block_invoke;
    v5[3] = &unk_1E71080D8;
    v5[4] = &v6;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(item, v5);

    *(&self->_flags + 1) = *(v7 + 24);
    *&self->_flags |= 2u;
    _Block_object_dispose(&v6, 8);
  }

  return *(&self->_flags + 1);
}

- (int64_t)inheritedFocusMovementStyle
{
  result = self->_inheritedFocusMovementStyle;
  if (!result)
  {
    item = [(_UIFocusItemUIKitMetadata *)self item];

    if (item)
    {
      item2 = [(_UIFocusItemUIKitMetadata *)self item];
      self->_inheritedFocusMovementStyle = _UIFocusEnvironmentInheritedFocusMovementStyle(item2);

      return self->_inheritedFocusMovementStyle;
    }

    else
    {
      result = 1;
      self->_inheritedFocusMovementStyle = 1;
    }
  }

  return result;
}

- (CGSize)itemSizeInCoordinateSpace:(id)space
{
  spaceCopy = space;
  item = [(_UIFocusItemUIKitMetadata *)self item];
  _UIFocusItemFrameInCoordinateSpace(item, spaceCopy);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end