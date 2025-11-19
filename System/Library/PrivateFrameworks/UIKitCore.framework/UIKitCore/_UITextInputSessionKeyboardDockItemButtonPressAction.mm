@interface _UITextInputSessionKeyboardDockItemButtonPressAction
- (CGPoint)touchDownPoint;
- (CGPoint)touchUpPoint;
- (CGSize)buttonSize;
- (id)description;
- (int64_t)inputActionCount;
@end

@implementation _UITextInputSessionKeyboardDockItemButtonPressAction

- (id)description
{
  v15.receiver = self;
  v15.super_class = _UITextInputSessionKeyboardDockItemButtonPressAction;
  v3 = [(_UITextInputSessionAction *)&v15 description];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [UITextInputSessionActionAnalytics stringForKeyboardDockItemButtonType:[(_UITextInputSessionKeyboardDockItemButtonPressAction *)self buttonType]];
  v7 = [v5 stringWithFormat:@"buttonType=%@", v6];
  [v4 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [UITextInputSessionActionAnalytics stringForKeyboardDockItemButtonPressResult:[(_UITextInputSessionKeyboardDockItemButtonPressAction *)self buttonPressResult]];
  v10 = [v8 stringWithFormat:@"buttonPressResult=%@", v9];
  [v4 addObject:v10];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uiOrientation=%lu", -[_UITextInputSessionKeyboardDockItemButtonPressAction uiOrientation](self, "uiOrientation")];
  [v4 addObject:v11];

  v12 = [v4 componentsJoinedByString:{@", "}];
  v13 = [v3 stringByAppendingFormat:@", %@", v12];

  return v13;
}

- (int64_t)inputActionCount
{
  v3 = [(_UITextInputSessionKeyboardDockItemButtonPressAction *)self buttonPressResult];
  result = [(_UITextInputSessionAction *)self inputActionCountFromMergedActions];
  if (v3 != 2)
  {
    ++result;
  }

  return result;
}

- (CGSize)buttonSize
{
  width = self->_buttonSize.width;
  height = self->_buttonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)touchDownPoint
{
  x = self->_touchDownPoint.x;
  y = self->_touchDownPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)touchUpPoint
{
  x = self->_touchUpPoint.x;
  y = self->_touchUpPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end