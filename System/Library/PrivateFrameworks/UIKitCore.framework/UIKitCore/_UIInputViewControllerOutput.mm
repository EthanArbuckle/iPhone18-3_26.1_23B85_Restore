@interface _UIInputViewControllerOutput
- (BOOL)isEqual:(id)a3;
- (CGPoint)inputModeListFromLocation;
- (CGPoint)inputModeListUpdatePoint;
- (_NSRange)selectedRange;
- (_UIInputViewControllerOutput)initWithCoder:(id)a3;
- (id)_currentKeyboardOutput;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_pushNewKeyboardOutput;
- (void)adjustTextPositionByCharacterOffset:(int64_t)a3;
- (void)deleteBackward;
- (void)encodeWithCoder:(id)a3;
- (void)insertText:(id)a3;
- (void)setInputModeList:(int64_t)a3 touchBegan:(double)a4 fromLocation:(CGPoint)a5 updatePoint:(CGPoint)a6;
@end

@implementation _UIInputViewControllerOutput

- (void)_pushNewKeyboardOutput
{
  v3 = [(_UIInputViewControllerOutput *)self keyboardOutputs];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    [(_UIInputViewControllerOutput *)self setKeyboardOutputs:v4];
  }

  v6 = [(_UIInputViewControllerOutput *)self keyboardOutputs];
  v5 = objc_alloc_init(_UIInputViewKeyboardOutput);
  [v6 addObject:v5];
}

- (id)_currentKeyboardOutput
{
  v3 = [(_UIInputViewControllerOutput *)self keyboardOutputs];
  v4 = [v3 count];

  if (!v4)
  {
    [(_UIInputViewControllerOutput *)self _pushNewKeyboardOutput];
  }

  v5 = [(_UIInputViewControllerOutput *)self keyboardOutputs];
  v6 = [v5 lastObject];

  return v6;
}

- (void)insertText:(id)a3
{
  v4 = a3;
  v5 = [(_UIInputViewControllerOutput *)self _currentKeyboardOutput];
  [v5 insertText:v4];
}

- (void)deleteBackward
{
  v7 = [(_UIInputViewControllerOutput *)self _currentKeyboardOutput];
  v3 = [v7 insertionText];
  v4 = [v3 length];

  if (v4)
  {
    [(_UIInputViewControllerOutput *)self _pushNewKeyboardOutput];
    v5 = [(_UIInputViewControllerOutput *)self _currentKeyboardOutput];

    v6 = v5;
  }

  else
  {
    v6 = v7;
  }

  v8 = v6;
  [v6 deleteBackward];
}

- (void)adjustTextPositionByCharacterOffset:(int64_t)a3
{
  v9 = [(_UIInputViewControllerOutput *)self _currentKeyboardOutput];
  v5 = [v9 insertionText];
  if ([v5 length])
  {

LABEL_4:
    [(_UIInputViewControllerOutput *)self _pushNewKeyboardOutput];
    v7 = [(_UIInputViewControllerOutput *)self _currentKeyboardOutput];

    v8 = v7;
    goto LABEL_5;
  }

  v6 = [v9 deletionCount];

  if (v6)
  {
    goto LABEL_4;
  }

  v8 = v9;
LABEL_5:
  v10 = v8;
  [v8 setPositionOffset:{objc_msgSend(v8, "positionOffset") + a3}];
}

- (void)setInputModeList:(int64_t)a3 touchBegan:(double)a4 fromLocation:(CGPoint)a5 updatePoint:(CGPoint)a6
{
  self->_inputModeListTouchPhase = a3;
  self->_inputModeListTouchBegan = a4;
  self->_inputModeListFromLocation = a5;
  self->_inputModeListUpdatePoint = a6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_UIInputViewControllerOutput);
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_keyboardOutputs copyItems:1];
    keyboardOutputs = v4->_keyboardOutputs;
    v4->_keyboardOutputs = v5;

    v4->_shouldDismiss = self->_shouldDismiss;
    v4->_proceedShouldReturn = self->_proceedShouldReturn;
    objc_storeStrong(&v4->_hasDictation, self->_hasDictation);
    v4->_shouldAdvanceInputMode = self->_shouldAdvanceInputMode;
    v4->_inputModeListTouchPhase = self->_inputModeListTouchPhase;
    v4->_inputModeListTouchBegan = self->_inputModeListTouchBegan;
    v4->_inputModeListFromLocation = self->_inputModeListFromLocation;
    v4->_inputModeListUpdatePoint = self->_inputModeListUpdatePoint;
    v7 = [(NSString *)self->_primaryLanguage copy];
    primaryLanguage = v4->_primaryLanguage;
    v4->_primaryLanguage = v7;

    v4->_setMarkedText = self->_setMarkedText;
    v9 = [(NSString *)self->_markedText copy];
    markedText = v4->_markedText;
    v4->_markedText = v9;

    v4->_selectedRange = self->_selectedRange;
    v4->_unmarkText = self->_unmarkText;
    v4->_source = self->_source;
  }

  return v4;
}

- (_UIInputViewControllerOutput)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = _UIInputViewControllerOutput;
  v5 = [(_UIInputViewControllerOutput *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"keyboardOutputs"];
    keyboardOutputs = v5->_keyboardOutputs;
    v5->_keyboardOutputs = v9;

    v5->_shouldDismiss = [v4 decodeBoolForKey:@"shouldDismiss"];
    v5->_proceedShouldReturn = [v4 decodeBoolForKey:@"proceedShouldReturn"];
    v5->_shouldAdvanceInputMode = [v4 decodeBoolForKey:@"shouldAdvanceInputMode"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasDictation"];
    hasDictation = v5->_hasDictation;
    v5->_hasDictation = v11;

    v5->_inputModeListTouchPhase = [v4 decodeIntegerForKey:@"setInputModeListTouchPhase"];
    [v4 decodeFloatForKey:@"setInputModeListTouchBegan"];
    v5->_inputModeListTouchBegan = v13;
    [v4 decodeFloatForKey:@"setInputModeListFromLocationX"];
    v5->_inputModeListFromLocation.x = v14;
    [v4 decodeFloatForKey:@"setInputModeListFromLocationY"];
    v5->_inputModeListFromLocation.y = v15;
    [v4 decodeFloatForKey:@"setInputModeUpdatePointX"];
    v5->_inputModeListUpdatePoint.x = v16;
    [v4 decodeFloatForKey:@"setInputModeUpdatePointY"];
    v5->_inputModeListUpdatePoint.y = v17;
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryLanguage"];
    primaryLanguage = v5->_primaryLanguage;
    v5->_primaryLanguage = v18;

    v5->_setMarkedText = [v4 decodeBoolForKey:@"setMarkedText"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"markedText"];
    markedText = v5->_markedText;
    v5->_markedText = v20;

    v5->_selectedRange.location = [v4 decodeIntegerForKey:@"selectedRangeLocation"];
    v5->_selectedRange.length = [v4 decodeIntegerForKey:@"selectedRangeLength"];
    v5->_unmarkText = [v4 decodeBoolForKey:@"unmarkText"];
    v5->_source = [v4 decodeIntegerForKey:@"source"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  keyboardOutputs = self->_keyboardOutputs;
  v14 = v4;
  if (keyboardOutputs)
  {
    [v4 encodeObject:keyboardOutputs forKey:@"keyboardOutputs"];
    v4 = v14;
  }

  if (self->_shouldDismiss)
  {
    [v14 encodeBool:1 forKey:@"shouldDismiss"];
    v4 = v14;
  }

  if (self->_proceedShouldReturn)
  {
    [v14 encodeBool:1 forKey:@"proceedShouldReturn"];
    v4 = v14;
  }

  hasDictation = self->_hasDictation;
  if (hasDictation)
  {
    [v14 encodeObject:hasDictation forKey:@"hasDictation"];
    v4 = v14;
  }

  if (self->_shouldAdvanceInputMode)
  {
    [v14 encodeBool:1 forKey:@"shouldAdvanceInputMode"];
    v4 = v14;
  }

  if (self->_inputModeListTouchBegan != 0.0)
  {
    [v14 encodeInteger:self->_inputModeListTouchPhase forKey:@"setInputModeListTouchPhase"];
    inputModeListTouchBegan = self->_inputModeListTouchBegan;
    *&inputModeListTouchBegan = inputModeListTouchBegan;
    [v14 encodeFloat:@"setInputModeListTouchBegan" forKey:inputModeListTouchBegan];
    x = self->_inputModeListFromLocation.x;
    *&x = x;
    [v14 encodeFloat:@"setInputModeListFromLocationX" forKey:x];
    y = self->_inputModeListFromLocation.y;
    *&y = y;
    [v14 encodeFloat:@"setInputModeListFromLocationY" forKey:y];
    v10 = self->_inputModeListUpdatePoint.x;
    *&v10 = v10;
    [v14 encodeFloat:@"setInputModeUpdatePointX" forKey:v10];
    v11 = self->_inputModeListUpdatePoint.y;
    *&v11 = v11;
    [v14 encodeFloat:@"setInputModeUpdatePointY" forKey:v11];
    v4 = v14;
  }

  primaryLanguage = self->_primaryLanguage;
  if (primaryLanguage)
  {
    [v14 encodeObject:primaryLanguage forKey:@"primaryLanguage"];
    v4 = v14;
  }

  if (self->_setMarkedText)
  {
    [v14 encodeBool:1 forKey:@"setMarkedText"];
    [v14 encodeObject:self->_markedText forKey:@"markedText"];
    [v14 encodeInteger:self->_selectedRange.location forKey:@"selectedRangeLocation"];
    [v14 encodeInteger:self->_selectedRange.length forKey:@"selectedRangeLength"];
    v4 = v14;
  }

  if (self->_unmarkText)
  {
    [v14 encodeBool:1 forKey:@"unmarkText"];
    v4 = v14;
  }

  source = self->_source;
  if (source)
  {
    [v14 encodeInteger:source forKey:@"source"];
    v4 = v14;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(_UIInputViewControllerOutput *)self keyboardOutputs];
    v7 = [v5 keyboardOutputs];
    v8 = [v6 isEqual:v7];

    if (!v8)
    {
      goto LABEL_27;
    }

    v9 = [(_UIInputViewControllerOutput *)self shouldDismiss];
    if (v9 != [v5 shouldDismiss])
    {
      goto LABEL_27;
    }

    v10 = [(_UIInputViewControllerOutput *)self proceedShouldReturn];
    if (v10 != [v5 proceedShouldReturn])
    {
      goto LABEL_27;
    }

    v11 = [(_UIInputViewControllerOutput *)self hasDictation];
    v12 = [v5 hasDictation];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_27;
    }

    v14 = [(_UIInputViewControllerOutput *)self shouldAdvanceInputMode];
    if (v14 != [v5 shouldAdvanceInputMode])
    {
      goto LABEL_27;
    }

    [(_UIInputViewControllerOutput *)self inputModeListTouchBegan];
    v16 = v15;
    [v5 inputModeListTouchBegan];
    if (v16 != v17)
    {
      goto LABEL_27;
    }

    [(_UIInputViewControllerOutput *)self inputModeListTouchBegan];
    if (v18 != 0.0)
    {
      v19 = [(_UIInputViewControllerOutput *)self inputModeListTouchPhase];
      if (v19 != [v5 inputModeListTouchPhase])
      {
        goto LABEL_27;
      }

      [(_UIInputViewControllerOutput *)self inputModeListFromLocation];
      v21 = v20;
      v23 = v22;
      [v5 inputModeListFromLocation];
      v25 = 0;
      if (v21 != v26)
      {
        goto LABEL_28;
      }

      if (v23 != v24)
      {
        goto LABEL_28;
      }

      [(_UIInputViewControllerOutput *)self inputModeListUpdatePoint];
      v28 = v27;
      v30 = v29;
      [v5 inputModeListUpdatePoint];
      v25 = 0;
      if (v28 != v32 || v30 != v31)
      {
        goto LABEL_28;
      }
    }

    v33 = [(_UIInputViewControllerOutput *)self primaryLanguage];
    v34 = [v5 primaryLanguage];
    v35 = v34;
    if (v33 == v34)
    {
    }

    else
    {
      v36 = [(_UIInputViewControllerOutput *)self primaryLanguage];
      v37 = [v5 primaryLanguage];
      v38 = [v36 isEqualToString:v37];

      if (!v38)
      {
        goto LABEL_27;
      }
    }

    v39 = [(_UIInputViewControllerOutput *)self setMarkedText];
    if (v39 == [v5 setMarkedText])
    {
      v40 = [(_UIInputViewControllerOutput *)self markedText];
      v41 = [v5 markedText];
      v42 = v41;
      if (v40 == v41)
      {
      }

      else
      {
        v43 = [(_UIInputViewControllerOutput *)self markedText];
        v44 = [v5 markedText];
        v45 = [v43 isEqualToString:v44];

        if (!v45)
        {
          goto LABEL_27;
        }
      }

      v46 = [(_UIInputViewControllerOutput *)self selectedRange];
      v48 = v47;
      v25 = 0;
      if (v46 != [v5 selectedRange] || v48 != v49)
      {
        goto LABEL_28;
      }

      v50 = [(_UIInputViewControllerOutput *)self unmarkText];
      if (v50 == [v5 unmarkText])
      {
        v52 = [(_UIInputViewControllerOutput *)self source];
        v25 = v52 == [v5 source];
        goto LABEL_28;
      }
    }

LABEL_27:
    v25 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v25 = 0;
LABEL_29:

  return v25;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(_UIInputViewControllerOutput *)self keyboardOutputs];
  [v3 appendFormat:@"; keyboardOutputs = %@", v4];

  if ([(_UIInputViewControllerOutput *)self shouldDismiss])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  [v3 appendFormat:@"; shouldDismiss = %s", v5];
  if ([(_UIInputViewControllerOutput *)self proceedShouldReturn])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  [v3 appendFormat:@"; proceedShouldReturn = %s", v6];
  v7 = [(_UIInputViewControllerOutput *)self hasDictation];
  if ([v7 BOOLValue])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  [v3 appendFormat:@"; hasDictation = %s", v8];

  if ([(_UIInputViewControllerOutput *)self shouldAdvanceInputMode])
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [v3 appendFormat:@"; shouldAdvanceInputMode = %s", v9];
  [v3 appendFormat:@"; inputModeListTouchPhase = %ld", -[_UIInputViewControllerOutput inputModeListTouchPhase](self, "inputModeListTouchPhase")];
  [(_UIInputViewControllerOutput *)self inputModeListTouchBegan];
  [v3 appendFormat:@"; inputModeListTouchBegan = %f", v10];
  [(_UIInputViewControllerOutput *)self inputModeListFromLocation];
  v12 = v11;
  [(_UIInputViewControllerOutput *)self inputModeListFromLocation];
  [v3 appendFormat:@"; inputModeListFromLocation = %f:%f", v12, v13];
  [(_UIInputViewControllerOutput *)self inputModeListUpdatePoint];
  v15 = v14;
  [(_UIInputViewControllerOutput *)self inputModeListUpdatePoint];
  [v3 appendFormat:@"; inputModeListUpdatePoint = %f:%f", v15, v16];
  v17 = [(_UIInputViewControllerOutput *)self primaryLanguage];
  [v3 appendFormat:@"; primaryLanguage = %@", v17];

  if ([(_UIInputViewControllerOutput *)self setMarkedText])
  {
    v18 = "YES";
  }

  else
  {
    v18 = "NO";
  }

  [v3 appendFormat:@"; setMarkedText = %s", v18];
  v19 = [(_UIInputViewControllerOutput *)self markedText];
  [v3 appendFormat:@"; markedText = %@", v19];

  v20 = [(_UIInputViewControllerOutput *)self selectedRange];
  [(_UIInputViewControllerOutput *)self selectedRange];
  [v3 appendFormat:@"; selectedRange location = %ld length = %ld", v20, v21];
  if ([(_UIInputViewControllerOutput *)self unmarkText])
  {
    v22 = "YES";
  }

  else
  {
    v22 = "NO";
  }

  [v3 appendFormat:@"; unmarkText = %s", v22];
  [v3 appendFormat:@"; source = %ld", -[_UIInputViewControllerOutput source](self, "source")];
  [v3 appendString:@">"];

  return v3;
}

- (_NSRange)selectedRange
{
  length = self->_selectedRange.length;
  location = self->_selectedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGPoint)inputModeListFromLocation
{
  x = self->_inputModeListFromLocation.x;
  y = self->_inputModeListFromLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)inputModeListUpdatePoint
{
  x = self->_inputModeListUpdatePoint.x;
  y = self->_inputModeListUpdatePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end