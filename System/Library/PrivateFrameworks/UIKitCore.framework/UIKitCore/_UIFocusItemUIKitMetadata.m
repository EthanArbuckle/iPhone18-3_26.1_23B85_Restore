@interface _UIFocusItemUIKitMetadata
- (BOOL)isFocusMovementFlippedHorizontally;
- (CGSize)itemSizeInCoordinateSpace:(id)a3;
- (_UIFocusItemUIKitMetadata)initWithItem:(id)a3;
- (int64_t)focusTouchSensitivityStyle;
- (int64_t)inheritedFocusMovementStyle;
@end

@implementation _UIFocusItemUIKitMetadata

- (_UIFocusItemUIKitMetadata)initWithItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIFocusItemUIKitMetadata;
  v6 = [(_UIFocusItemUIKitMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

- (int64_t)focusTouchSensitivityStyle
{
  if ((*&self->_flags & 1) == 0)
  {
    v3 = [(_UIFocusItemUIKitMetadata *)self item];
    if (_UIFocusItemIsViewOrRespondsToSelector(v3))
    {
      v4 = [v3 _focusTouchSensitivityStyle];
    }

    else
    {
      v4 = 0;
    }

    self->_focusTouchSensitivityStyle = v4;
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
    v3 = [(_UIFocusItemUIKitMetadata *)self item];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63___UIFocusItemUIKitMetadata_isFocusMovementFlippedHorizontally__block_invoke;
    v5[3] = &unk_1E71080D8;
    v5[4] = &v6;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(v3, v5);

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
    v4 = [(_UIFocusItemUIKitMetadata *)self item];

    if (v4)
    {
      v5 = [(_UIFocusItemUIKitMetadata *)self item];
      self->_inheritedFocusMovementStyle = _UIFocusEnvironmentInheritedFocusMovementStyle(v5);

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

- (CGSize)itemSizeInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusItemUIKitMetadata *)self item];
  _UIFocusItemFrameInCoordinateSpace(v5, v4);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end