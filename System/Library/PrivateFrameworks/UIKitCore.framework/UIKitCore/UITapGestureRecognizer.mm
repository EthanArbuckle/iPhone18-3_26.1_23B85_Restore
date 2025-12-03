@interface UITapGestureRecognizer
- (BOOL)_shouldFailInResponseToPresses:(id)presses withEvent:(id)event;
- (BOOL)_shouldReceivePress:(id)press;
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (BOOL)shouldRequireFailureOfGestureRecognizer:(id)recognizer;
- (BOOL)tapIsPossibleForTapRecognizer:(id)recognizer;
- (CGPoint)_digitizerLocation;
- (CGPoint)centroid;
- (CGPoint)location;
- (CGPoint)locationInView:(id)view;
- (CGPoint)locationOfTouch:(unint64_t)touch inView:(id)view;
- (UITapGestureRecognizer)initWithCoder:(id)coder;
- (UITapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (double)_touchSloppinessFactor;
- (int64_t)_buttonType;
- (int64_t)_finalStateForRecognitionWithNumberOfTaps:(unint64_t)taps;
- (unint64_t)numberOfTouches;
- (void)_appendSubclassDescription:(id)description;
- (void)_resetGestureRecognizer;
- (void)_setButtonType:(int64_t)type;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)resetTapCountForTapRecognizer:(id)recognizer;
- (void)setAllowedPressTypes:(id)types;
- (void)setButtonMaskRequired:(UIEventButtonMask)buttonMaskRequired;
- (void)tapRecognizerRecognizedTap:(id)tap;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UITapGestureRecognizer

- (void)_resetGestureRecognizer
{
  [(UITapRecognizer *)self->_imp _reset];
  v3.receiver = self;
  v3.super_class = UITapGestureRecognizer;
  [(UIGestureRecognizer *)&v3 _resetGestureRecognizer];
}

- (void)dealloc
{
  [(UITapRecognizer *)self->_imp setDelegate:0];
  v3.receiver = self;
  v3.super_class = UITapGestureRecognizer;
  [(UIGestureRecognizer *)&v3 dealloc];
}

- (int64_t)_buttonType
{
  allowedPressTypes = [(UIGestureRecognizer *)self allowedPressTypes];
  if ([allowedPressTypes count])
  {
    firstObject = [allowedPressTypes firstObject];
    integerValue = [firstObject integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (double)_touchSloppinessFactor
{
  view = [(UIGestureRecognizer *)self view];
  [view _touchSloppinessFactor];
  v4 = v3;

  return v4;
}

- (UITapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = UITapGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithTarget:target action:action];
  if (v4)
  {
    v5 = objc_alloc_init(UITapRecognizer);
    imp = v4->_imp;
    v4->_imp = v5;

    [(UITapRecognizer *)v4->_imp setDelegate:v4];
    v4->_buttonType = -1;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UITapGestureRecognizer;
  [(UIGestureRecognizer *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_imp forKey:@"UITapGestureRecognizer._imp"];
}

- (UITapGestureRecognizer)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = UITapGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v10 initWithCoder:?];
  v5 = v4;
  if (v4)
  {
    v4->_buttonType = -1;
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"UITapGestureRecognizer._imp"];
    imp = v5->_imp;
    v5->_imp = v6;

    [(UITapRecognizer *)v5->_imp setDelegate:v5];
    v8 = v5;
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([(UITapGestureRecognizer *)self _canHandleTouches])
  {
    imp = self->_imp;

    [(UITapRecognizer *)imp touchesBegan:began withEvent:event];
  }

  else
  {

    [(UIGestureRecognizer *)self _failWithReason:@"unexpectedButton"];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if ([(UITapGestureRecognizer *)self _canHandleTouches])
  {
    imp = self->_imp;

    [(UITapRecognizer *)imp touchesMoved:moved withEvent:event];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(UITapGestureRecognizer *)self _canHandleTouches])
  {
    imp = self->_imp;

    [(UITapRecognizer *)imp touchesEnded:ended withEvent:event];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(UITapGestureRecognizer *)self _canHandleTouches])
  {
    imp = self->_imp;

    [(UITapRecognizer *)imp touchesCancelled:cancelled withEvent:event];
  }
}

- (BOOL)shouldRequireFailureOfGestureRecognizer:(id)recognizer
{
  if (self->_delaysRecognitionForGreaterTapCounts)
  {
    if ([recognizer _isGestureType:0])
    {
      numberOfTouchesRequired = [recognizer numberOfTouchesRequired];
      if (numberOfTouchesRequired == [(UITapGestureRecognizer *)self numberOfTouchesRequired])
      {
        buttonMaskRequired = [recognizer buttonMaskRequired];
        if (buttonMaskRequired == [(UITapGestureRecognizer *)self buttonMaskRequired])
        {
          numberOfTapsRequired = [recognizer numberOfTapsRequired];
          if (numberOfTapsRequired > [(UITapGestureRecognizer *)self numberOfTapsRequired])
          {
            return 1;
          }
        }
      }
    }
  }

  v9.receiver = self;
  v9.super_class = UITapGestureRecognizer;
  return [(UIGestureRecognizer *)&v9 shouldRequireFailureOfGestureRecognizer:recognizer];
}

- (void)setAllowedPressTypes:(id)types
{
  v20 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = UITapGestureRecognizer;
  [(UIGestureRecognizer *)&v14 setAllowedPressTypes:types];
  imp = self->_imp;
  allowedPressTypes = [(UIGestureRecognizer *)self allowedPressTypes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [allowedPressTypes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = -1;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(allowedPressTypes);
      }

      integerValue = [*(*(&v15 + 1) + 8 * v10) integerValue];
      if (integerValue != v9 && integerValue <= 3)
      {
        v13 = v9 == -1;
        v9 = integerValue;
        if (!v13)
        {
          break;
        }
      }

      if (v7 == ++v10)
      {
        v7 = [allowedPressTypes countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }
  }

  v9 = -1;
LABEL_16:
  [(UITapRecognizer *)imp setExclusiveDirectionalAxis:v9];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  if ([UITapGestureRecognizer _shouldFailInResponseToPresses:"_shouldFailInResponseToPresses:withEvent:" withEvent:?])
  {

    [(UIGestureRecognizer *)self _failWithReason:@"disallowedPresses"];
  }

  else
  {
    imp = self->_imp;

    [(UITapRecognizer *)imp pressesBegan:began withEvent:event];
  }
}

- (BOOL)_shouldReceivePress:(id)press
{
  v10.receiver = self;
  v10.super_class = UITapGestureRecognizer;
  if ([(UIGestureRecognizer *)&v10 _shouldReceivePress:?])
  {
    v5 = 1;
  }

  else
  {
    _buttonType = [(UITapGestureRecognizer *)self _buttonType];
    v5 = _buttonType == [press type];
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObject:press];
  v8 = [(UITapGestureRecognizer *)self _shouldFailInResponseToPresses:v7 withEvent:0];

  return v5 || v8;
}

- (BOOL)_shouldFailInResponseToPresses:(id)presses withEvent:(id)event
{
  if (self->_isSingleKeyPressGesture && (-[UIGestureRecognizer allowedPressTypes](self, "allowedPressTypes", presses, event), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7))
  {
    allowedPressTypes = [(UIGestureRecognizer *)self allowedPressTypes];
    v9 = _UIPressesOnlyContainsPressTypes(presses, allowedPressTypes) ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (int64_t)_finalStateForRecognitionWithNumberOfTaps:(unint64_t)taps
{
  continuousTapRecognition = [(UITapGestureRecognizer *)self continuousTapRecognition];
  allowedPressTypes = [(UIGestureRecognizer *)self allowedPressTypes];
  v7 = [allowedPressTypes count];

  if (v7)
  {
    view = [(UIGestureRecognizer *)self view];
    if ([UIApp isFrontBoard])
    {
      _window = [view _window];
      v10 = [_window _isSystemGestureWindow] ^ 1;
    }

    else
    {
      v10 = 1;
    }

    _focusSystem = [view _focusSystem];
    focusedItem = [_focusSystem focusedItem];
    v13 = _UIFocusEnvironmentContainingView(focusedItem);

    if (v10 && v13 && ([v13 isDescendantOfView:view] & 1) == 0)
    {
      [(UIGestureRecognizer *)self _failWithReason:@"unrelatedFocusView"];
    }
  }

  v14 = 2;
  if (!taps)
  {
    v14 = 3;
  }

  if (taps == 1)
  {
    v14 = 1;
  }

  if (continuousTapRecognition)
  {
    return v14;
  }

  else
  {
    return 3;
  }
}

- (BOOL)tapIsPossibleForTapRecognizer:(id)recognizer
{
  continuousTapRecognition = [(UITapGestureRecognizer *)self continuousTapRecognition];
  state = [(UIGestureRecognizer *)self state];
  if (continuousTapRecognition)
  {
    return state < UIGestureRecognizerStateEnded;
  }

  else
  {
    return state == UIGestureRecognizerStatePossible;
  }
}

- (void)tapRecognizerRecognizedTap:(id)tap
{
  p_locationInView = &self->_locationInView;
  view = [(UIGestureRecognizer *)self view];
  [tap locationInView:view];
  p_locationInView->x = v7;
  p_locationInView->y = v8;

  v9 = -[UITapGestureRecognizer _finalStateForRecognitionWithNumberOfTaps:](self, "_finalStateForRecognitionWithNumberOfTaps:", [tap currentNumberOfTaps]);

  [(UIGestureRecognizer *)self setState:v9];
}

- (void)resetTapCountForTapRecognizer:(id)recognizer
{
  if ([(UITapGestureRecognizer *)self continuousTapRecognition])
  {

    [(UIGestureRecognizer *)self _failWithReason:@"tapCountReset"];
  }
}

- (void)setButtonMaskRequired:(UIEventButtonMask)buttonMaskRequired
{
  if (buttonMaskRequired <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITapGestureRecognizer.m" lineNumber:955 description:@"buttonMaskRequired must be greater than 0"];
  }

  imp = self->_imp;

  [(UITapRecognizer *)imp setButtonMaskRequired:buttonMaskRequired];
}

- (void)_setButtonType:(int64_t)type
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(UITapGestureRecognizer *)self _buttonType]!= type)
  {
    view = [(UIGestureRecognizer *)self view];

    if (view)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITapGestureRecognizer.m" lineNumber:1042 description:@"_buttonType can't be changed after a gesture recognizer is added to a view"];
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(UITapGestureRecognizer *)self setAllowedPressTypes:v8];
  }
}

- (void)_appendSubclassDescription:(id)description
{
  if ([(UITapRecognizer *)self->_imp numberOfTapsRequired]!= 1)
  {
    [description appendFormat:@"; numberOfTapsRequired = %ld", -[UITapRecognizer numberOfTapsRequired](self->_imp, "numberOfTapsRequired")];
  }

  if ([(UITapRecognizer *)self->_imp numberOfTouchesRequired]!= 1)
  {
    [description appendFormat:@"; numberOfTouchesRequired = %ld", -[UITapRecognizer numberOfTouchesRequired](self->_imp, "numberOfTouchesRequired")];
  }

  if ([(UITapRecognizer *)self->_imp buttonMaskRequired]!= 1)
  {
    [description appendFormat:@"; buttonMaskRequired = %ld", -[UITapRecognizer buttonMaskRequired](self->_imp, "buttonMaskRequired")];
  }
}

- (CGPoint)centroid
{
  x = self->_locationInView.x;
  y = self->_locationInView.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)location
{
  x = self->_locationInView.x;
  y = self->_locationInView.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)locationInView:(id)view
{
  [(UITapRecognizer *)self->_imp locationInView:view];
  result.y = v4;
  result.x = v3;
  return result;
}

- (unint64_t)numberOfTouches
{
  touches = [(UITapRecognizer *)self->_imp touches];
  v3 = [touches count];

  return v3;
}

- (CGPoint)locationOfTouch:(unint64_t)touch inView:(id)view
{
  touches = [(UITapRecognizer *)self->_imp touches];
  v9 = [touches count];

  if (v9 <= touch)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    touches3 = [v16 stringWithFormat:@"-[%@ %@]", v18, v19];

    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695DA20];
    touches2 = [(UITapRecognizer *)self->_imp touches];
    [v20 raise:v21 format:{@"%@: index (%ld) beyond bounds (%ld).", touches3, touch, objc_msgSend(touches2, "count")}];

    v13 = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    touches3 = [(UITapRecognizer *)self->_imp touches];
    v11 = [touches3 objectAtIndex:touch];
    [v11 locationInView:view];
    v13 = v12;
    v15 = v14;
  }

  v23 = v13;
  v24 = v15;
  result.y = v24;
  result.x = v23;
  return result;
}

- (CGPoint)_digitizerLocation
{
  imp = self->_imp;
  if (imp)
  {
    x = imp->_digitizerLocation.x;
    y = imp->_digitizerLocation.y;
  }

  else
  {
    y = 0.0;
    x = 0.0;
  }

  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  if ([recognizer _isGestureType:0])
  {
    recognizerCopy2 = recognizer;
    numberOfTouchesRequired = [recognizerCopy2 numberOfTouchesRequired];
    if (numberOfTouchesRequired == [(UITapGestureRecognizer *)self numberOfTouchesRequired])
    {
      buttonMaskRequired = [recognizerCopy2 buttonMaskRequired];
      if (buttonMaskRequired == [(UITapGestureRecognizer *)self buttonMaskRequired])
      {
        numberOfTapsRequired = [recognizerCopy2 numberOfTapsRequired];
        v9 = numberOfTapsRequired > [(UITapGestureRecognizer *)self numberOfTapsRequired];
LABEL_9:

        return !v9;
      }
    }

    goto LABEL_8;
  }

  if ([recognizer _isGestureType:1])
  {
    recognizerCopy2 = recognizer;
    numberOfTouchesRequired2 = [recognizerCopy2 numberOfTouchesRequired];
    if (numberOfTouchesRequired2 == [(UITapGestureRecognizer *)self numberOfTouchesRequired])
    {
      numberOfTapsRequired2 = [recognizerCopy2 numberOfTapsRequired];
      v9 = numberOfTapsRequired2 >= [(UITapGestureRecognizer *)self numberOfTapsRequired];
      goto LABEL_9;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    numberOfFullTaps = [recognizer numberOfFullTaps];
    v9 = [(UITapGestureRecognizer *)self numberOfTapsRequired]<= numberOfFullTaps;
  }

  else
  {
    v9 = 0;
  }

  return !v9;
}

@end