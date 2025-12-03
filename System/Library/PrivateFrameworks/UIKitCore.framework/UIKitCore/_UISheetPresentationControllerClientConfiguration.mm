@interface _UISheetPresentationControllerClientConfiguration
- (BOOL)isEqual:(id)equal;
- (CGRect)keyboardFrame;
- (NSString)description;
- (_UISheetPresentationControllerClientConfiguration)initWithBSXPCCoder:(id)coder;
- (_UISheetPresentationControllerClientConfiguration)initWithCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UISheetPresentationControllerClientConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    containsFirstResponder = [(_UISheetPresentationControllerClientConfiguration *)self containsFirstResponder];
    if (containsFirstResponder == [v5 containsFirstResponder] && (v7 = -[_UISheetPresentationControllerClientConfiguration firstResponderRequiresKeyboard](self, "firstResponderRequiresKeyboard"), v7 == objc_msgSend(v5, "firstResponderRequiresKeyboard")) && (-[_UISheetPresentationControllerClientConfiguration keyboardFrame](self, "keyboardFrame"), v9 = v8, v11 = v10, v13 = v12, v15 = v14, objc_msgSend(v5, "keyboardFrame"), v26.origin.x = v16, v26.origin.y = v17, v26.size.width = v18, v26.size.height = v19, v25.origin.x = v9, v25.origin.y = v11, v25.size.width = v13, v25.size.height = v15, CGRectEqualToRect(v25, v26)))
    {
      [(_UISheetPresentationControllerClientConfiguration *)self proposedDepthLevel];
      v21 = v20;
      [v5 proposedDepthLevel];
      v23 = v21 == v22;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (NSString)description
{
  v11[4] = *MEMORY[0x1E69E9840];
  v3 = [UIDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = NSStringFromSelector(sel_containsFirstResponder);
  v11[0] = v4;
  v5 = NSStringFromSelector(sel_firstResponderRequiresKeyboard);
  v11[1] = v5;
  v6 = NSStringFromSelector(sel_keyboardFrame);
  v11[2] = v6;
  v7 = NSStringFromSelector(sel_proposedDepthLevel);
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v9 = [UIDescriptionBuilder descriptionForObject:self keys:v8];

  return v9;
}

- (_UISheetPresentationControllerClientConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _UISheetPresentationControllerClientConfiguration;
  v5 = [(_UISheetPresentationControllerClientConfiguration *)&v11 init];
  if (v5)
  {
    -[_UISheetPresentationControllerClientConfiguration setContainsFirstResponder:](v5, "setContainsFirstResponder:", [coderCopy decodeBoolForKey:@"_UISheetPresentationControllerClientConfigurationCodingKeyContainsFirstResponder"]);
    -[_UISheetPresentationControllerClientConfiguration setFirstResponderRequiresKeyboard:](v5, "setFirstResponderRequiresKeyboard:", [coderCopy decodeBoolForKey:@"_UISheetPresentationControllerClientConfigurationCodingKeyFirstResponderRequiresKeyboard"]);
    if ([coderCopy containsValueForKey:@"_UISheetPresentationControllerClientConfigurationCodingKeyKeyboardFrame"])
    {
      [coderCopy decodeCGRectForKey:@"_UISheetPresentationControllerClientConfigurationCodingKeyKeyboardFrame"];
    }

    else
    {
      v6 = *MEMORY[0x1E695F050];
      v7 = *(MEMORY[0x1E695F050] + 8);
      v8 = *(MEMORY[0x1E695F050] + 16);
      v9 = *(MEMORY[0x1E695F050] + 24);
    }

    [(_UISheetPresentationControllerClientConfiguration *)v5 setKeyboardFrame:v6, v7, v8, v9];
    [coderCopy decodeDoubleForKey:@"_UISheetPresentationControllerClientConfigurationCodingKeyProposedDepthLevel"];
    [(_UISheetPresentationControllerClientConfiguration *)v5 setProposedDepthLevel:?];
  }

  return v5;
}

- (_UISheetPresentationControllerClientConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _UISheetPresentationControllerClientConfiguration;
  v5 = [(_UISheetPresentationControllerClientConfiguration *)&v11 init];
  if (v5)
  {
    -[_UISheetPresentationControllerClientConfiguration setContainsFirstResponder:](v5, "setContainsFirstResponder:", [coderCopy decodeBoolForKey:@"_UISheetPresentationControllerClientConfigurationCodingKeyContainsFirstResponder"]);
    -[_UISheetPresentationControllerClientConfiguration setFirstResponderRequiresKeyboard:](v5, "setFirstResponderRequiresKeyboard:", [coderCopy decodeBoolForKey:@"_UISheetPresentationControllerClientConfigurationCodingKeyFirstResponderRequiresKeyboard"]);
    if ([coderCopy containsValueForKey:@"_UISheetPresentationControllerClientConfigurationCodingKeyKeyboardFrame"])
    {
      [coderCopy decodeCGRectForKey:@"_UISheetPresentationControllerClientConfigurationCodingKeyKeyboardFrame"];
    }

    else
    {
      v6 = *MEMORY[0x1E695F050];
      v7 = *(MEMORY[0x1E695F050] + 8);
      v8 = *(MEMORY[0x1E695F050] + 16);
      v9 = *(MEMORY[0x1E695F050] + 24);
    }

    [(_UISheetPresentationControllerClientConfiguration *)v5 setKeyboardFrame:v6, v7, v8, v9];
    [coderCopy decodeDoubleForKey:@"_UISheetPresentationControllerClientConfigurationCodingKeyProposedDepthLevel"];
    [(_UISheetPresentationControllerClientConfiguration *)v5 setProposedDepthLevel:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[_UISheetPresentationControllerClientConfiguration containsFirstResponder](self forKey:{"containsFirstResponder"), @"_UISheetPresentationControllerClientConfigurationCodingKeyContainsFirstResponder"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerClientConfiguration firstResponderRequiresKeyboard](self forKey:{"firstResponderRequiresKeyboard"), @"_UISheetPresentationControllerClientConfigurationCodingKeyFirstResponderRequiresKeyboard"}];
  [(_UISheetPresentationControllerClientConfiguration *)self keyboardFrame];
  if (!CGRectIsNull(v7))
  {
    [(_UISheetPresentationControllerClientConfiguration *)self keyboardFrame];
    [coderCopy encodeCGRect:@"_UISheetPresentationControllerClientConfigurationCodingKeyKeyboardFrame" forKey:?];
  }

  [(_UISheetPresentationControllerClientConfiguration *)self proposedDepthLevel];
  *&v4 = v4;
  [coderCopy encodeFloat:@"_UISheetPresentationControllerClientConfigurationCodingKeyProposedDepthLevel" forKey:v4];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[_UISheetPresentationControllerClientConfiguration containsFirstResponder](self forKey:{"containsFirstResponder"), @"_UISheetPresentationControllerClientConfigurationCodingKeyContainsFirstResponder"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerClientConfiguration firstResponderRequiresKeyboard](self forKey:{"firstResponderRequiresKeyboard"), @"_UISheetPresentationControllerClientConfigurationCodingKeyFirstResponderRequiresKeyboard"}];
  [(_UISheetPresentationControllerClientConfiguration *)self keyboardFrame];
  if (!CGRectIsNull(v6))
  {
    [(_UISheetPresentationControllerClientConfiguration *)self keyboardFrame];
    [coderCopy encodeCGRect:@"_UISheetPresentationControllerClientConfigurationCodingKeyKeyboardFrame" forKey:?];
  }

  [(_UISheetPresentationControllerClientConfiguration *)self proposedDepthLevel];
  [coderCopy encodeDouble:@"_UISheetPresentationControllerClientConfigurationCodingKeyProposedDepthLevel" forKey:?];
}

- (CGRect)keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end