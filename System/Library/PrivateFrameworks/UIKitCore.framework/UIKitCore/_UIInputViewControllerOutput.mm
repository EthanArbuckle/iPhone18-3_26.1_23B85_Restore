@interface _UIInputViewControllerOutput
- (BOOL)isEqual:(id)equal;
- (CGPoint)inputModeListFromLocation;
- (CGPoint)inputModeListUpdatePoint;
- (_NSRange)selectedRange;
- (_UIInputViewControllerOutput)initWithCoder:(id)coder;
- (id)_currentKeyboardOutput;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_pushNewKeyboardOutput;
- (void)adjustTextPositionByCharacterOffset:(int64_t)offset;
- (void)deleteBackward;
- (void)encodeWithCoder:(id)coder;
- (void)insertText:(id)text;
- (void)setInputModeList:(int64_t)list touchBegan:(double)began fromLocation:(CGPoint)location updatePoint:(CGPoint)point;
@end

@implementation _UIInputViewControllerOutput

- (void)_pushNewKeyboardOutput
{
  keyboardOutputs = [(_UIInputViewControllerOutput *)self keyboardOutputs];

  if (!keyboardOutputs)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(_UIInputViewControllerOutput *)self setKeyboardOutputs:array];
  }

  keyboardOutputs2 = [(_UIInputViewControllerOutput *)self keyboardOutputs];
  v5 = objc_alloc_init(_UIInputViewKeyboardOutput);
  [keyboardOutputs2 addObject:v5];
}

- (id)_currentKeyboardOutput
{
  keyboardOutputs = [(_UIInputViewControllerOutput *)self keyboardOutputs];
  v4 = [keyboardOutputs count];

  if (!v4)
  {
    [(_UIInputViewControllerOutput *)self _pushNewKeyboardOutput];
  }

  keyboardOutputs2 = [(_UIInputViewControllerOutput *)self keyboardOutputs];
  lastObject = [keyboardOutputs2 lastObject];

  return lastObject;
}

- (void)insertText:(id)text
{
  textCopy = text;
  _currentKeyboardOutput = [(_UIInputViewControllerOutput *)self _currentKeyboardOutput];
  [_currentKeyboardOutput insertText:textCopy];
}

- (void)deleteBackward
{
  _currentKeyboardOutput = [(_UIInputViewControllerOutput *)self _currentKeyboardOutput];
  insertionText = [_currentKeyboardOutput insertionText];
  v4 = [insertionText length];

  if (v4)
  {
    [(_UIInputViewControllerOutput *)self _pushNewKeyboardOutput];
    _currentKeyboardOutput2 = [(_UIInputViewControllerOutput *)self _currentKeyboardOutput];

    v6 = _currentKeyboardOutput2;
  }

  else
  {
    v6 = _currentKeyboardOutput;
  }

  v8 = v6;
  [v6 deleteBackward];
}

- (void)adjustTextPositionByCharacterOffset:(int64_t)offset
{
  _currentKeyboardOutput = [(_UIInputViewControllerOutput *)self _currentKeyboardOutput];
  insertionText = [_currentKeyboardOutput insertionText];
  if ([insertionText length])
  {

LABEL_4:
    [(_UIInputViewControllerOutput *)self _pushNewKeyboardOutput];
    _currentKeyboardOutput2 = [(_UIInputViewControllerOutput *)self _currentKeyboardOutput];

    v8 = _currentKeyboardOutput2;
    goto LABEL_5;
  }

  deletionCount = [_currentKeyboardOutput deletionCount];

  if (deletionCount)
  {
    goto LABEL_4;
  }

  v8 = _currentKeyboardOutput;
LABEL_5:
  v10 = v8;
  [v8 setPositionOffset:{objc_msgSend(v8, "positionOffset") + offset}];
}

- (void)setInputModeList:(int64_t)list touchBegan:(double)began fromLocation:(CGPoint)location updatePoint:(CGPoint)point
{
  self->_inputModeListTouchPhase = list;
  self->_inputModeListTouchBegan = began;
  self->_inputModeListFromLocation = location;
  self->_inputModeListUpdatePoint = point;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (_UIInputViewControllerOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = _UIInputViewControllerOutput;
  v5 = [(_UIInputViewControllerOutput *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"keyboardOutputs"];
    keyboardOutputs = v5->_keyboardOutputs;
    v5->_keyboardOutputs = v9;

    v5->_shouldDismiss = [coderCopy decodeBoolForKey:@"shouldDismiss"];
    v5->_proceedShouldReturn = [coderCopy decodeBoolForKey:@"proceedShouldReturn"];
    v5->_shouldAdvanceInputMode = [coderCopy decodeBoolForKey:@"shouldAdvanceInputMode"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasDictation"];
    hasDictation = v5->_hasDictation;
    v5->_hasDictation = v11;

    v5->_inputModeListTouchPhase = [coderCopy decodeIntegerForKey:@"setInputModeListTouchPhase"];
    [coderCopy decodeFloatForKey:@"setInputModeListTouchBegan"];
    v5->_inputModeListTouchBegan = v13;
    [coderCopy decodeFloatForKey:@"setInputModeListFromLocationX"];
    v5->_inputModeListFromLocation.x = v14;
    [coderCopy decodeFloatForKey:@"setInputModeListFromLocationY"];
    v5->_inputModeListFromLocation.y = v15;
    [coderCopy decodeFloatForKey:@"setInputModeUpdatePointX"];
    v5->_inputModeListUpdatePoint.x = v16;
    [coderCopy decodeFloatForKey:@"setInputModeUpdatePointY"];
    v5->_inputModeListUpdatePoint.y = v17;
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryLanguage"];
    primaryLanguage = v5->_primaryLanguage;
    v5->_primaryLanguage = v18;

    v5->_setMarkedText = [coderCopy decodeBoolForKey:@"setMarkedText"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"markedText"];
    markedText = v5->_markedText;
    v5->_markedText = v20;

    v5->_selectedRange.location = [coderCopy decodeIntegerForKey:@"selectedRangeLocation"];
    v5->_selectedRange.length = [coderCopy decodeIntegerForKey:@"selectedRangeLength"];
    v5->_unmarkText = [coderCopy decodeBoolForKey:@"unmarkText"];
    v5->_source = [coderCopy decodeIntegerForKey:@"source"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  keyboardOutputs = self->_keyboardOutputs;
  v14 = coderCopy;
  if (keyboardOutputs)
  {
    [coderCopy encodeObject:keyboardOutputs forKey:@"keyboardOutputs"];
    coderCopy = v14;
  }

  if (self->_shouldDismiss)
  {
    [v14 encodeBool:1 forKey:@"shouldDismiss"];
    coderCopy = v14;
  }

  if (self->_proceedShouldReturn)
  {
    [v14 encodeBool:1 forKey:@"proceedShouldReturn"];
    coderCopy = v14;
  }

  hasDictation = self->_hasDictation;
  if (hasDictation)
  {
    [v14 encodeObject:hasDictation forKey:@"hasDictation"];
    coderCopy = v14;
  }

  if (self->_shouldAdvanceInputMode)
  {
    [v14 encodeBool:1 forKey:@"shouldAdvanceInputMode"];
    coderCopy = v14;
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
    coderCopy = v14;
  }

  primaryLanguage = self->_primaryLanguage;
  if (primaryLanguage)
  {
    [v14 encodeObject:primaryLanguage forKey:@"primaryLanguage"];
    coderCopy = v14;
  }

  if (self->_setMarkedText)
  {
    [v14 encodeBool:1 forKey:@"setMarkedText"];
    [v14 encodeObject:self->_markedText forKey:@"markedText"];
    [v14 encodeInteger:self->_selectedRange.location forKey:@"selectedRangeLocation"];
    [v14 encodeInteger:self->_selectedRange.length forKey:@"selectedRangeLength"];
    coderCopy = v14;
  }

  if (self->_unmarkText)
  {
    [v14 encodeBool:1 forKey:@"unmarkText"];
    coderCopy = v14;
  }

  source = self->_source;
  if (source)
  {
    [v14 encodeInteger:source forKey:@"source"];
    coderCopy = v14;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    keyboardOutputs = [(_UIInputViewControllerOutput *)self keyboardOutputs];
    keyboardOutputs2 = [v5 keyboardOutputs];
    v8 = [keyboardOutputs isEqual:keyboardOutputs2];

    if (!v8)
    {
      goto LABEL_27;
    }

    shouldDismiss = [(_UIInputViewControllerOutput *)self shouldDismiss];
    if (shouldDismiss != [v5 shouldDismiss])
    {
      goto LABEL_27;
    }

    proceedShouldReturn = [(_UIInputViewControllerOutput *)self proceedShouldReturn];
    if (proceedShouldReturn != [v5 proceedShouldReturn])
    {
      goto LABEL_27;
    }

    hasDictation = [(_UIInputViewControllerOutput *)self hasDictation];
    hasDictation2 = [v5 hasDictation];
    v13 = [hasDictation isEqual:hasDictation2];

    if (!v13)
    {
      goto LABEL_27;
    }

    shouldAdvanceInputMode = [(_UIInputViewControllerOutput *)self shouldAdvanceInputMode];
    if (shouldAdvanceInputMode != [v5 shouldAdvanceInputMode])
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
      inputModeListTouchPhase = [(_UIInputViewControllerOutput *)self inputModeListTouchPhase];
      if (inputModeListTouchPhase != [v5 inputModeListTouchPhase])
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

    primaryLanguage = [(_UIInputViewControllerOutput *)self primaryLanguage];
    primaryLanguage2 = [v5 primaryLanguage];
    v35 = primaryLanguage2;
    if (primaryLanguage == primaryLanguage2)
    {
    }

    else
    {
      primaryLanguage3 = [(_UIInputViewControllerOutput *)self primaryLanguage];
      primaryLanguage4 = [v5 primaryLanguage];
      v38 = [primaryLanguage3 isEqualToString:primaryLanguage4];

      if (!v38)
      {
        goto LABEL_27;
      }
    }

    setMarkedText = [(_UIInputViewControllerOutput *)self setMarkedText];
    if (setMarkedText == [v5 setMarkedText])
    {
      markedText = [(_UIInputViewControllerOutput *)self markedText];
      markedText2 = [v5 markedText];
      v42 = markedText2;
      if (markedText == markedText2)
      {
      }

      else
      {
        markedText3 = [(_UIInputViewControllerOutput *)self markedText];
        markedText4 = [v5 markedText];
        v45 = [markedText3 isEqualToString:markedText4];

        if (!v45)
        {
          goto LABEL_27;
        }
      }

      selectedRange = [(_UIInputViewControllerOutput *)self selectedRange];
      v48 = v47;
      v25 = 0;
      if (selectedRange != [v5 selectedRange] || v48 != v49)
      {
        goto LABEL_28;
      }

      unmarkText = [(_UIInputViewControllerOutput *)self unmarkText];
      if (unmarkText == [v5 unmarkText])
      {
        source = [(_UIInputViewControllerOutput *)self source];
        v25 = source == [v5 source];
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
  keyboardOutputs = [(_UIInputViewControllerOutput *)self keyboardOutputs];
  [v3 appendFormat:@"; keyboardOutputs = %@", keyboardOutputs];

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
  hasDictation = [(_UIInputViewControllerOutput *)self hasDictation];
  if ([hasDictation BOOLValue])
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
  primaryLanguage = [(_UIInputViewControllerOutput *)self primaryLanguage];
  [v3 appendFormat:@"; primaryLanguage = %@", primaryLanguage];

  if ([(_UIInputViewControllerOutput *)self setMarkedText])
  {
    v18 = "YES";
  }

  else
  {
    v18 = "NO";
  }

  [v3 appendFormat:@"; setMarkedText = %s", v18];
  markedText = [(_UIInputViewControllerOutput *)self markedText];
  [v3 appendFormat:@"; markedText = %@", markedText];

  selectedRange = [(_UIInputViewControllerOutput *)self selectedRange];
  [(_UIInputViewControllerOutput *)self selectedRange];
  [v3 appendFormat:@"; selectedRange location = %ld length = %ld", selectedRange, v21];
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