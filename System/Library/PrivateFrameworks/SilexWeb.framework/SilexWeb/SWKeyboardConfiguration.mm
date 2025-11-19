@interface SWKeyboardConfiguration
- (BOOL)isEqual:(id)a3;
- (CGRect)inputAccessoryViewFrame;
- (CGRect)keyboardFrame;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SWKeyboardConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SWKeyboardConfiguration alloc];
  isKeyboardSplit = self->_isKeyboardSplit;
  isKeyboardFloating = self->_isKeyboardFloating;
  isHardwareKeyboard = self->_isHardwareKeyboard;
  isKeyboardVisible = self->_isKeyboardVisible;
  isPencilInputExpected = self->_isPencilInputExpected;
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  v14 = self->_inputAccessoryViewFrame.origin.x;
  v15 = self->_inputAccessoryViewFrame.origin.y;
  v16 = self->_inputAccessoryViewFrame.size.width;
  v17 = self->_inputAccessoryViewFrame.size.height;

  return [(SWKeyboardConfiguration *)v4 initWithKeyboardFrame:isKeyboardSplit inputAccessoryViewFrame:isKeyboardFloating isKeyboardSplit:isHardwareKeyboard isKeyboardFloating:isKeyboardVisible isHardwareKeyboard:isPencilInputExpected isKeyboardVisible:x isPencilInputExpected:y, width, height, v14, v15, v16, v17];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (!v5)
    {
      goto LABEL_9;
    }

    [(SWKeyboardConfiguration *)self keyboardFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 keyboardFrame];
    v39.origin.x = v14;
    v39.origin.y = v15;
    v39.size.width = v16;
    v39.size.height = v17;
    v37.origin.x = v7;
    v37.origin.y = v9;
    v37.size.width = v11;
    v37.size.height = v13;
    if (!CGRectEqualToRect(v37, v39))
    {
      goto LABEL_9;
    }

    [(SWKeyboardConfiguration *)self inputAccessoryViewFrame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [v5 inputAccessoryViewFrame];
    v40.origin.x = v26;
    v40.origin.y = v27;
    v40.size.width = v28;
    v40.size.height = v29;
    v38.origin.x = v19;
    v38.origin.y = v21;
    v38.size.width = v23;
    v38.size.height = v25;
    if (!CGRectEqualToRect(v38, v40))
    {
      goto LABEL_9;
    }

    v30 = [(SWKeyboardConfiguration *)self isKeyboardSplit];
    if (v30 == [v5 isKeyboardSplit] && (v31 = -[SWKeyboardConfiguration isKeyboardFloating](self, "isKeyboardFloating"), v31 == objc_msgSend(v5, "isKeyboardFloating")) && (v32 = -[SWKeyboardConfiguration isHardwareKeyboard](self, "isHardwareKeyboard"), v32 == objc_msgSend(v5, "isHardwareKeyboard")) && (v33 = -[SWKeyboardConfiguration isKeyboardVisible](self, "isKeyboardVisible"), v33 == objc_msgSend(v5, "isKeyboardVisible")))
    {
      v36 = [(SWKeyboardConfiguration *)self isPencilInputExpected];
      v34 = v36 ^ [v5 isPencilInputExpected] ^ 1;
    }

    else
    {
LABEL_9:
      LOBYTE(v34) = 0;
    }
  }

  else
  {
    LOBYTE(v34) = 0;
  }

  return v34;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [(SWKeyboardConfiguration *)self keyboardFrame];
  v4 = NSStringFromCGRect(v8);
  [v3 appendFormat:@"; keyboardFrame: %@", v4];

  [(SWKeyboardConfiguration *)self inputAccessoryViewFrame];
  v5 = NSStringFromCGRect(v9);
  [v3 appendFormat:@"; inputAccessoryViewFrame: %@", v5];

  [v3 appendFormat:@"; isKeyboardSplit: %d", -[SWKeyboardConfiguration isKeyboardSplit](self, "isKeyboardSplit")];
  [v3 appendFormat:@"; isKeyboardFloating: %d", -[SWKeyboardConfiguration isKeyboardFloating](self, "isKeyboardFloating")];
  [v3 appendFormat:@"; isHardwareKeyboard: %d", -[SWKeyboardConfiguration isHardwareKeyboard](self, "isHardwareKeyboard")];
  [v3 appendFormat:@"; isKeyboardVisible: %d", -[SWKeyboardConfiguration isKeyboardVisible](self, "isKeyboardVisible")];
  [v3 appendFormat:@"; isPencilInputExpected: %d", -[SWKeyboardConfiguration isPencilInputExpected](self, "isPencilInputExpected")];
  [v3 appendString:@">"];

  return v3;
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

- (CGRect)inputAccessoryViewFrame
{
  x = self->_inputAccessoryViewFrame.origin.x;
  y = self->_inputAccessoryViewFrame.origin.y;
  width = self->_inputAccessoryViewFrame.size.width;
  height = self->_inputAccessoryViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end