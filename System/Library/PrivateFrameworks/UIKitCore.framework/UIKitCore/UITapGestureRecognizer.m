@interface UITapGestureRecognizer
- (BOOL)_shouldFailInResponseToPresses:(id)a3 withEvent:(id)a4;
- (BOOL)_shouldReceivePress:(id)a3;
- (BOOL)canPreventGestureRecognizer:(id)a3;
- (BOOL)shouldRequireFailureOfGestureRecognizer:(id)a3;
- (BOOL)tapIsPossibleForTapRecognizer:(id)a3;
- (CGPoint)_digitizerLocation;
- (CGPoint)centroid;
- (CGPoint)location;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)locationOfTouch:(unint64_t)a3 inView:(id)a4;
- (UITapGestureRecognizer)initWithCoder:(id)a3;
- (UITapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)_touchSloppinessFactor;
- (int64_t)_buttonType;
- (int64_t)_finalStateForRecognitionWithNumberOfTaps:(unint64_t)a3;
- (unint64_t)numberOfTouches;
- (void)_appendSubclassDescription:(id)a3;
- (void)_resetGestureRecognizer;
- (void)_setButtonType:(int64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)resetTapCountForTapRecognizer:(id)a3;
- (void)setAllowedPressTypes:(id)a3;
- (void)setButtonMaskRequired:(UIEventButtonMask)buttonMaskRequired;
- (void)tapRecognizerRecognizedTap:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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
  v2 = [(UIGestureRecognizer *)self allowedPressTypes];
  if ([v2 count])
  {
    v3 = [v2 firstObject];
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (double)_touchSloppinessFactor
{
  v2 = [(UIGestureRecognizer *)self view];
  [v2 _touchSloppinessFactor];
  v4 = v3;

  return v4;
}

- (UITapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = UITapGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithTarget:a3 action:a4];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITapGestureRecognizer;
  [(UIGestureRecognizer *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_imp forKey:@"UITapGestureRecognizer._imp"];
}

- (UITapGestureRecognizer)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = UITapGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v10 initWithCoder:?];
  v5 = v4;
  if (v4)
  {
    v4->_buttonType = -1;
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"UITapGestureRecognizer._imp"];
    imp = v5->_imp;
    v5->_imp = v6;

    [(UITapRecognizer *)v5->_imp setDelegate:v5];
    v8 = v5;
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if ([(UITapGestureRecognizer *)self _canHandleTouches])
  {
    imp = self->_imp;

    [(UITapRecognizer *)imp touchesBegan:a3 withEvent:a4];
  }

  else
  {

    [(UIGestureRecognizer *)self _failWithReason:@"unexpectedButton"];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if ([(UITapGestureRecognizer *)self _canHandleTouches])
  {
    imp = self->_imp;

    [(UITapRecognizer *)imp touchesMoved:a3 withEvent:a4];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(UITapGestureRecognizer *)self _canHandleTouches])
  {
    imp = self->_imp;

    [(UITapRecognizer *)imp touchesEnded:a3 withEvent:a4];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if ([(UITapGestureRecognizer *)self _canHandleTouches])
  {
    imp = self->_imp;

    [(UITapRecognizer *)imp touchesCancelled:a3 withEvent:a4];
  }
}

- (BOOL)shouldRequireFailureOfGestureRecognizer:(id)a3
{
  if (self->_delaysRecognitionForGreaterTapCounts)
  {
    if ([a3 _isGestureType:0])
    {
      v5 = [a3 numberOfTouchesRequired];
      if (v5 == [(UITapGestureRecognizer *)self numberOfTouchesRequired])
      {
        v6 = [a3 buttonMaskRequired];
        if (v6 == [(UITapGestureRecognizer *)self buttonMaskRequired])
        {
          v7 = [a3 numberOfTapsRequired];
          if (v7 > [(UITapGestureRecognizer *)self numberOfTapsRequired])
          {
            return 1;
          }
        }
      }
    }
  }

  v9.receiver = self;
  v9.super_class = UITapGestureRecognizer;
  return [(UIGestureRecognizer *)&v9 shouldRequireFailureOfGestureRecognizer:a3];
}

- (void)setAllowedPressTypes:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = UITapGestureRecognizer;
  [(UIGestureRecognizer *)&v14 setAllowedPressTypes:a3];
  imp = self->_imp;
  v5 = [(UIGestureRecognizer *)self allowedPressTypes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(v5);
      }

      v11 = [*(*(&v15 + 1) + 8 * v10) integerValue];
      if (v11 != v9 && v11 <= 3)
      {
        v13 = v9 == -1;
        v9 = v11;
        if (!v13)
        {
          break;
        }
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  if ([UITapGestureRecognizer _shouldFailInResponseToPresses:"_shouldFailInResponseToPresses:withEvent:" withEvent:?])
  {

    [(UIGestureRecognizer *)self _failWithReason:@"disallowedPresses"];
  }

  else
  {
    imp = self->_imp;

    [(UITapRecognizer *)imp pressesBegan:a3 withEvent:a4];
  }
}

- (BOOL)_shouldReceivePress:(id)a3
{
  v10.receiver = self;
  v10.super_class = UITapGestureRecognizer;
  if ([(UIGestureRecognizer *)&v10 _shouldReceivePress:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(UITapGestureRecognizer *)self _buttonType];
    v5 = v6 == [a3 type];
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v8 = [(UITapGestureRecognizer *)self _shouldFailInResponseToPresses:v7 withEvent:0];

  return v5 || v8;
}

- (BOOL)_shouldFailInResponseToPresses:(id)a3 withEvent:(id)a4
{
  if (self->_isSingleKeyPressGesture && (-[UIGestureRecognizer allowedPressTypes](self, "allowedPressTypes", a3, a4), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7))
  {
    v8 = [(UIGestureRecognizer *)self allowedPressTypes];
    v9 = _UIPressesOnlyContainsPressTypes(a3, v8) ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (int64_t)_finalStateForRecognitionWithNumberOfTaps:(unint64_t)a3
{
  v5 = [(UITapGestureRecognizer *)self continuousTapRecognition];
  v6 = [(UIGestureRecognizer *)self allowedPressTypes];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(UIGestureRecognizer *)self view];
    if ([UIApp isFrontBoard])
    {
      v9 = [v8 _window];
      v10 = [v9 _isSystemGestureWindow] ^ 1;
    }

    else
    {
      v10 = 1;
    }

    v11 = [v8 _focusSystem];
    v12 = [v11 focusedItem];
    v13 = _UIFocusEnvironmentContainingView(v12);

    if (v10 && v13 && ([v13 isDescendantOfView:v8] & 1) == 0)
    {
      [(UIGestureRecognizer *)self _failWithReason:@"unrelatedFocusView"];
    }
  }

  v14 = 2;
  if (!a3)
  {
    v14 = 3;
  }

  if (a3 == 1)
  {
    v14 = 1;
  }

  if (v5)
  {
    return v14;
  }

  else
  {
    return 3;
  }
}

- (BOOL)tapIsPossibleForTapRecognizer:(id)a3
{
  v4 = [(UITapGestureRecognizer *)self continuousTapRecognition];
  v5 = [(UIGestureRecognizer *)self state];
  if (v4)
  {
    return v5 < UIGestureRecognizerStateEnded;
  }

  else
  {
    return v5 == UIGestureRecognizerStatePossible;
  }
}

- (void)tapRecognizerRecognizedTap:(id)a3
{
  p_locationInView = &self->_locationInView;
  v6 = [(UIGestureRecognizer *)self view];
  [a3 locationInView:v6];
  p_locationInView->x = v7;
  p_locationInView->y = v8;

  v9 = -[UITapGestureRecognizer _finalStateForRecognitionWithNumberOfTaps:](self, "_finalStateForRecognitionWithNumberOfTaps:", [a3 currentNumberOfTaps]);

  [(UIGestureRecognizer *)self setState:v9];
}

- (void)resetTapCountForTapRecognizer:(id)a3
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
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UITapGestureRecognizer.m" lineNumber:955 description:@"buttonMaskRequired must be greater than 0"];
  }

  imp = self->_imp;

  [(UITapRecognizer *)imp setButtonMaskRequired:buttonMaskRequired];
}

- (void)_setButtonType:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(UITapGestureRecognizer *)self _buttonType]!= a3)
  {
    v6 = [(UIGestureRecognizer *)self view];

    if (v6)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"UITapGestureRecognizer.m" lineNumber:1042 description:@"_buttonType can't be changed after a gesture recognizer is added to a view"];
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(UITapGestureRecognizer *)self setAllowedPressTypes:v8];
  }
}

- (void)_appendSubclassDescription:(id)a3
{
  if ([(UITapRecognizer *)self->_imp numberOfTapsRequired]!= 1)
  {
    [a3 appendFormat:@"; numberOfTapsRequired = %ld", -[UITapRecognizer numberOfTapsRequired](self->_imp, "numberOfTapsRequired")];
  }

  if ([(UITapRecognizer *)self->_imp numberOfTouchesRequired]!= 1)
  {
    [a3 appendFormat:@"; numberOfTouchesRequired = %ld", -[UITapRecognizer numberOfTouchesRequired](self->_imp, "numberOfTouchesRequired")];
  }

  if ([(UITapRecognizer *)self->_imp buttonMaskRequired]!= 1)
  {
    [a3 appendFormat:@"; buttonMaskRequired = %ld", -[UITapRecognizer buttonMaskRequired](self->_imp, "buttonMaskRequired")];
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

- (CGPoint)locationInView:(id)a3
{
  [(UITapRecognizer *)self->_imp locationInView:a3];
  result.y = v4;
  result.x = v3;
  return result;
}

- (unint64_t)numberOfTouches
{
  v2 = [(UITapRecognizer *)self->_imp touches];
  v3 = [v2 count];

  return v3;
}

- (CGPoint)locationOfTouch:(unint64_t)a3 inView:(id)a4
{
  v8 = [(UITapRecognizer *)self->_imp touches];
  v9 = [v8 count];

  if (v9 <= a3)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    v10 = [v16 stringWithFormat:@"-[%@ %@]", v18, v19];

    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695DA20];
    v22 = [(UITapRecognizer *)self->_imp touches];
    [v20 raise:v21 format:{@"%@: index (%ld) beyond bounds (%ld).", v10, a3, objc_msgSend(v22, "count")}];

    v13 = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v10 = [(UITapRecognizer *)self->_imp touches];
    v11 = [v10 objectAtIndex:a3];
    [v11 locationInView:a4];
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

- (BOOL)canPreventGestureRecognizer:(id)a3
{
  if ([a3 _isGestureType:0])
  {
    v5 = a3;
    v6 = [v5 numberOfTouchesRequired];
    if (v6 == [(UITapGestureRecognizer *)self numberOfTouchesRequired])
    {
      v7 = [v5 buttonMaskRequired];
      if (v7 == [(UITapGestureRecognizer *)self buttonMaskRequired])
      {
        v8 = [v5 numberOfTapsRequired];
        v9 = v8 > [(UITapGestureRecognizer *)self numberOfTapsRequired];
LABEL_9:

        return !v9;
      }
    }

    goto LABEL_8;
  }

  if ([a3 _isGestureType:1])
  {
    v5 = a3;
    v10 = [v5 numberOfTouchesRequired];
    if (v10 == [(UITapGestureRecognizer *)self numberOfTouchesRequired])
    {
      v11 = [v5 numberOfTapsRequired];
      v9 = v11 >= [(UITapGestureRecognizer *)self numberOfTapsRequired];
      goto LABEL_9;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [a3 numberOfFullTaps];
    v9 = [(UITapGestureRecognizer *)self numberOfTapsRequired]<= v13;
  }

  else
  {
    v9 = 0;
  }

  return !v9;
}

@end