@interface UITapRecognizer
- (BOOL)activeTouchesExceedAllowableSeparation;
- (CGPoint)_locationInSceneReferenceSpace;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)locationInView:(id)a3 focusSystem:(id)a4;
- (CGPoint)locationInViewNotTrackingTouches:(id)a3;
- (UITapRecognizer)init;
- (UITapRecognizer)initWithCoder:(id)a3;
- (UITapRecognizerDelegate)delegate;
- (double)_effectiveAllowableMovement;
- (void)_beginInteraction;
- (void)_interactionEndedTouch:(BOOL)a3;
- (void)_reset;
- (void)clearMultitouchTimer;
- (void)clearTapTimer;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)multitouchExpired:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)startMultitouchTimer:(double)a3;
- (void)startTapTimer:(double)a3;
- (void)tooSlow:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UITapRecognizer

- (UITapRecognizer)init
{
  v3.receiver = self;
  v3.super_class = UITapRecognizer;
  result = [(UITapRecognizer *)&v3 init];
  if (result)
  {
    *&result->_numberOfTouchesRequired = vdupq_n_s64(1uLL);
    result->_buttonMaskRequired = 1;
    *(result + 164) &= 0xF8u;
    *&result->_allowableMovement = xmmword_18A67BC70;
    *&result->_allowableTouchTimeSeparation = xmmword_18A67BC80;
    result->_startTime = 0.0;
    result->_maximumIntervalBetweenSuccessiveTaps = 0.35;
    result->_minimumTapDuration = 0.0;
    *&result->_countsOnlyActiveTouches = 1;
    result->_strongestDirectionalAxis = -1;
    result->_strongestDirectionalForce = 0.0;
    result->_exclusiveDirectionalAxis = -1;
  }

  return result;
}

- (void)_reset
{
  [(UITapRecognizer *)self clearTapTimer];
  [(UITapRecognizer *)self clearMultitouchTimer];
  self->_numberOfTouchesForCurrentTap = 0;
  self->_startPoint = *MEMORY[0x1E695EFF8];
  *(self + 164) &= ~4u;
  self->_strongestDirectionalAxis = -1;
  *&self->_strongestDirectionalForce = 0u;
  [(NSMutableSet *)self->_activeTouches removeAllObjects];
  touches = self->_touches;

  [(NSMutableArray *)touches removeAllObjects];
}

- (void)clearTapTimer
{
  v3 = *(self + 164);
  if (v3)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_tooSlow_ object:0];
    v3 = *(self + 164);
  }

  *(self + 164) = v3 & 0xFE;
}

- (void)clearMultitouchTimer
{
  v3 = *(self + 164);
  if ((v3 & 2) != 0)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_multitouchExpired_ object:0];
    v3 = *(self + 164);
  }

  *(self + 164) = v3 & 0xFD;
}

- (void)dealloc
{
  [(UITapRecognizer *)self clearTapTimer];
  [(UITapRecognizer *)self clearMultitouchTimer];
  v3.receiver = self;
  v3.super_class = UITapRecognizer;
  [(UITapRecognizer *)&v3 dealloc];
}

- (BOOL)activeTouchesExceedAllowableSeparation
{
  v3 = _BoundingRectForTouches(self->_activeTouches, 0);
  v5 = v4;
  v7 = v6;
  allowableSeparation = self->_allowableSeparation;
  v9 = [(UITapRecognizer *)self delegate];
  [v9 _touchSloppinessFactor];
  v11 = allowableSeparation * v10 < sqrt(v5 * v5 + v7 * v7);

  return v11;
}

- (void)_beginInteraction
{
  [(UITapRecognizer *)self maximumTapDuration];
  [(UITapRecognizer *)self startTapTimer:?];
  if ([(UITapRecognizer *)self numberOfTouchesRequired]>= 2)
  {
    [(UITapRecognizer *)self allowableTouchTimeSeparation];
    v4 = v3;
    [(UITapRecognizer *)self maximumTapDuration];
    if (v4 < v5)
    {
      [(UITapRecognizer *)self allowableTouchTimeSeparation];

      [(UITapRecognizer *)self startMultitouchTimer:?];
    }
  }
}

- (UITapRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)_locationInSceneReferenceSpace
{
  v2 = _CentroidOfTouches(self->_touches, 0);
  result.y = v3;
  result.x = v2;
  return result;
}

- (double)_effectiveAllowableMovement
{
  allowableMovement = self->_allowableMovement;
  v3 = [(UITapRecognizer *)self delegate];
  [v3 _touchSloppinessFactor];
  v5 = allowableMovement * v4;

  return v5;
}

- (UITapRecognizer)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = UITapRecognizer;
  v4 = [(UITapRecognizer *)&v11 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = vdupq_n_s64(1uLL);
    *(v4 + 3) = 1;
    v4[164] &= 0xF8u;
    *(v4 + 72) = xmmword_18A67BC70;
    *(v4 + 88) = xmmword_18A67BC80;
    *(v4 + 14) = 0;
    *(v4 + 15) = 0x3FD6666666666666;
    *(v4 + 13) = 0;
    *(v4 + 165) = 1;
    *(v4 + 17) = -1;
    *(v4 + 18) = 0;
    *(v4 + 22) = -1;
    if ([a3 containsValueForKey:@"UITapRecognizer.numberOfTapsRequired"])
    {
      v5->_numberOfTapsRequired = [a3 decodeIntegerForKey:@"UITapRecognizer.numberOfTapsRequired"];
    }

    if ([a3 containsValueForKey:@"UITapRecognizer.continuousTapRecognition"])
    {
      v5->_continuousTapRecognition = [a3 decodeBoolForKey:@"UITapRecognizer.continuousTapRecognition"];
    }

    if ([a3 containsValueForKey:@"UITapRecognizer.numberOfTouchesRequired"])
    {
      v5->_numberOfTouchesRequired = [a3 decodeIntegerForKey:@"UITapRecognizer.numberOfTouchesRequired"];
    }

    if ([a3 containsValueForKey:@"UITapRecognizer.buttonMaskRequired"])
    {
      v5->_buttonMaskRequired = [a3 decodeIntegerForKey:@"UITapRecognizer.buttonMaskRequired"];
    }

    if ([a3 containsValueForKey:@"UITapRecognizer.allowableMovement"])
    {
      [a3 decodeFloatForKey:@"UITapRecognizer.allowableMovement"];
      v5->_allowableMovement = v6;
    }

    if ([a3 containsValueForKey:@"UITapRecognizer.allowableSeparation"])
    {
      [a3 decodeFloatForKey:@"UITapRecognizer.allowableSeparation"];
      v5->_allowableSeparation = v7;
    }

    if ([a3 containsValueForKey:@"UITapRecognizer.maximumIntervalBetweenSuccessiveTaps"])
    {
      [a3 decodeFloatForKey:@"UITapRecognizer.maximumIntervalBetweenSuccessiveTaps"];
      v5->_maximumIntervalBetweenSuccessiveTaps = v8;
    }

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  numberOfTapsRequired = self->_numberOfTapsRequired;
  if (numberOfTapsRequired != 1)
  {
    [a3 encodeInteger:numberOfTapsRequired forKey:@"UITapRecognizer.numberOfTapsRequired"];
  }

  if (self->_continuousTapRecognition)
  {
    [a3 encodeBool:1 forKey:@"UITapRecognizer.continuousTapRecognition"];
  }

  numberOfTouchesRequired = self->_numberOfTouchesRequired;
  if (numberOfTouchesRequired != 1)
  {
    [a3 encodeInteger:numberOfTouchesRequired forKey:@"UITapRecognizer.numberOfTouchesRequired"];
  }

  buttonMaskRequired = self->_buttonMaskRequired;
  if (buttonMaskRequired != 1)
  {
    [a3 encodeInteger:buttonMaskRequired forKey:@"UITapRecognizer.buttonMaskRequired"];
  }

  allowableMovement = self->_allowableMovement;
  if (allowableMovement != 45.0)
  {
    *&allowableMovement = allowableMovement;
    [a3 encodeFloat:@"UITapRecognizer.allowableMovement" forKey:allowableMovement];
  }

  allowableSeparation = self->_allowableSeparation;
  if (allowableSeparation != 1.79769313e308)
  {
    *&allowableSeparation = allowableSeparation;
    [a3 encodeFloat:@"UITapRecognizer.allowableSeparation" forKey:allowableSeparation];
  }

  maximumIntervalBetweenSuccessiveTaps = self->_maximumIntervalBetweenSuccessiveTaps;
  if (maximumIntervalBetweenSuccessiveTaps != 0.35)
  {
    *&maximumIntervalBetweenSuccessiveTaps = maximumIntervalBetweenSuccessiveTaps;

    [a3 encodeFloat:@"UITapRecognizer.maximumIntervalBetweenSuccessiveTaps" forKey:maximumIntervalBetweenSuccessiveTaps];
  }
}

- (void)startTapTimer:(double)a3
{
  [(UITapRecognizer *)self clearTapTimer];
  *(self + 164) |= 1u;

  [(UITapRecognizer *)self performSelector:sel_tooSlow_ withObject:0 afterDelay:a3];
}

- (void)tooSlow:(id)a3
{
  [(UITapRecognizer *)self clearTapTimer];
  [(UITapRecognizer *)self clearMultitouchTimer];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tapRecognizerFailedToRecognizeTap:self];
}

- (void)startMultitouchTimer:(double)a3
{
  [(UITapRecognizer *)self clearMultitouchTimer];
  *(self + 164) |= 2u;

  [(UITapRecognizer *)self performSelector:sel_multitouchExpired_ withObject:0 afterDelay:a3];
}

- (void)multitouchExpired:(id)a3
{
  numberOfTouchesForCurrentTap = self->_numberOfTouchesForCurrentTap;
  if ([(UITapRecognizer *)self numberOfTouchesRequired]> numberOfTouchesForCurrentTap)
  {
    [(UITapRecognizer *)self clearTapTimer];
    [(UITapRecognizer *)self clearMultitouchTimer];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tapRecognizerFailedToRecognizeTap:self];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  self->_startTime = CACurrentMediaTime();
  [a4 _digitizerLocation];
  self->_digitizerLocation.x = v7;
  self->_digitizerLocation.y = v8;
  activeTouches = self->_activeTouches;
  if (!activeTouches)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = self->_activeTouches;
    self->_activeTouches = v10;

    activeTouches = self->_activeTouches;
  }

  [(NSMutableSet *)activeTouches unionSet:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!self->_countsOnlyActiveTouches)
  {
    v13 = [a4 allTouches];
    v14 = [v13 count];
    numberOfTouchesRequired = self->_numberOfTouchesRequired;

    if (v14 <= numberOfTouchesRequired)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([(NSMutableSet *)self->_activeTouches count]> self->_numberOfTouchesRequired)
  {
LABEL_7:
    [(UITapRecognizer *)self clearTapTimer];
    [(UITapRecognizer *)self clearMultitouchTimer];
    [WeakRetained tapRecognizerFailedToRecognizeTap:self];
  }

LABEL_8:
  if (self->_allowableSeparation != 1.79769313e308 && [(UITapRecognizer *)self activeTouchesExceedAllowableSeparation])
  {
    [(UITapRecognizer *)self clearTapTimer];
    [(UITapRecognizer *)self clearMultitouchTimer];
    [WeakRetained tapRecognizerFailedToRecognizeTap:self];
  }

  if ((*(self + 164) & 4) != 0)
  {
    goto LABEL_23;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = self->_activeTouches;
  v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if ([*(*(&v44 + 1) + 8 * i) _isPointerTouch])
        {
          *(self + 164) |= 4u;
          goto LABEL_22;
        }
      }

      v18 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  if ((*(self + 164) & 4) != 0)
  {
LABEL_23:
    v21 = [a4 _buttonMask];
    v22 = [a4 _modifierFlags];
    v23 = v21 & 0xFFFFFFFFFFFFFFFCLL | 2;
    if ((v22 & 0x40000) == 0)
    {
      v23 = v21;
    }

    if ((v23 & self->_buttonMaskRequired) == 0)
    {
      [(UITapRecognizer *)self clearTapTimer];
      [(UITapRecognizer *)self clearMultitouchTimer];
      [WeakRetained tapRecognizerFailedToRecognizeTap:self];
    }
  }

  if ([WeakRetained tapIsPossibleForTapRecognizer:self])
  {
    if (!self->_currentNumberOfTouches)
    {
      [(UITapRecognizer *)self _beginInteraction];
    }

    self->_currentNumberOfTouches = [(NSMutableSet *)self->_activeTouches count];
    self->_numberOfTouchesForCurrentTap += [a3 count];
    if (self->_numberOfTouchesRequired == self->_currentNumberOfTouches)
    {
      [(NSMutableArray *)self->_touches removeAllObjects];
      if (!self->_touches)
      {
        v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
        touches = self->_touches;
        self->_touches = v24;
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v26 = self->_activeTouches;
      v27 = [(NSMutableSet *)v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v41;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v41 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [(NSMutableArray *)self->_touches addObject:*(*(&v40 + 1) + 8 * j), v40];
          }

          v28 = [(NSMutableSet *)v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v28);
      }

      [(UITapRecognizer *)self clearMultitouchTimer];
      if (!self->_currentNumberOfTaps)
      {
LABEL_47:
        [(UITapRecognizer *)self _locationInSceneReferenceSpace];
        self->_startPoint.x = v38;
        self->_startPoint.y = v39;
        goto LABEL_48;
      }

      if (self->_allowableMovement != 1.79769313e308)
      {
        [(UITapRecognizer *)self _locationInSceneReferenceSpace];
        v33 = sqrt((self->_startPoint.x - v31) * (self->_startPoint.x - v31) + (self->_startPoint.y - v32) * (self->_startPoint.y - v32));
        [(UITapRecognizer *)self _effectiveAllowableMovement];
        if (v33 > v34)
        {
          if (!self->_continuousTapRecognition)
          {
            [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
            [(UITapRecognizer *)self clearTapTimer];
            [(UITapRecognizer *)self clearMultitouchTimer];
            [WeakRetained tapRecognizerFailedToRecognizeTap:self];
            goto LABEL_48;
          }

          v35 = objc_loadWeakRetained(&self->_delegate);
          v36 = objc_opt_respondsToSelector();

          if (v36)
          {
            v37 = objc_loadWeakRetained(&self->_delegate);
            [v37 resetTapCountForTapRecognizer:self];
          }

          self->_currentNumberOfTaps = 0;
          goto LABEL_47;
        }
      }
    }
  }

LABEL_48:
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  WeakRetained = a3;
  v7 = [WeakRetained countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(WeakRetained);
      }

      v11 = *(*(&v24 + 1) + 8 * v10);
      [v11 locationInView:{0, v24}];
      v13 = v12;
      v15 = v14;
      [v11 previousLocationInView:0];
      if (sqrt((v16 - v13) * (v16 - v13) + (v17 - v15) * (v17 - v15)) != 0.0)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [WeakRetained countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    [a4 _digitizerLocation];
    self->_digitizerLocation.x = v18;
    self->_digitizerLocation.y = v19;
    if (self->_allowableMovement != 1.79769313e308)
    {
      [(UITapRecognizer *)self _locationInSceneReferenceSpace];
      v22 = sqrt((self->_startPoint.x - v20) * (self->_startPoint.x - v20) + (self->_startPoint.y - v21) * (self->_startPoint.y - v21));
      [(UITapRecognizer *)self _effectiveAllowableMovement];
      if (v22 > v23)
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained tapRecognizerFailedToRecognizeTap:self];
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  [a4 _digitizerLocation];
  self->_digitizerLocation.x = v6;
  self->_digitizerLocation.y = v7;
  [(NSMutableSet *)self->_activeTouches minusSet:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained tapIsPossibleForTapRecognizer:self])
  {
    if (self->_numberOfTouchesRequired == self->_currentNumberOfTouches)
    {
      v8 = CACurrentMediaTime();
      startTime = self->_startTime;
      if (![(NSMutableSet *)self->_activeTouches count]&& v8 - startTime > self->_minimumTapDuration)
      {
        [(UITapRecognizer *)self _interactionEndedTouch:1, v8 - startTime];
      }
    }

    else
    {
      [WeakRetained tapRecognizerFailedToRecognizeTap:self];
    }
  }
}

- (void)_interactionEndedTouch:(BOOL)a3
{
  v4 = self->_currentNumberOfTaps + 1;
  self->_currentNumberOfTaps = v4;
  exclusiveDirectionalAxis = self->_exclusiveDirectionalAxis;
  if (exclusiveDirectionalAxis == -1 || ((strongestDirectionalAxis = self->_strongestDirectionalAxis, strongestDirectionalAxis != -1) ? (v7 = exclusiveDirectionalAxis == strongestDirectionalAxis) : (v7 = 1), v7))
  {
    numberOfTapsRequired = self->_numberOfTapsRequired;
    v9 = numberOfTapsRequired > v4;
    v10 = numberOfTapsRequired == v4;
    v11 = !v9;
    if (self->_continuousTapRecognition)
    {
      v10 = v11;
    }

    if (v10)
    {
      [(UITapRecognizer *)self clearTapTimer];
      [(UITapRecognizer *)self clearMultitouchTimer];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained tapRecognizerRecognizedTap:self];

      if (!self->_continuousTapRecognition)
      {
        return;
      }
    }

    else if (a3)
    {
      self->_currentNumberOfTouches = 0;
      self->_numberOfTouchesForCurrentTap = 0;
    }

    maximumIntervalBetweenSuccessiveTaps = self->_maximumIntervalBetweenSuccessiveTaps;

    [(UITapRecognizer *)self startTapTimer:maximumIntervalBetweenSuccessiveTaps];
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 tapRecognizerFailedToRecognizeTap:self];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  self->_numberOfTouchesForCurrentTap -= [a3 count];
  [(NSMutableSet *)self->_activeTouches minusSet:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tapRecognizerFailedToRecognizeTap:self];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained tapIsPossibleForTapRecognizer:self];

  if (v6)
  {

    [(UITapRecognizer *)self _beginInteraction];
  }
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  if (self->_exclusiveDirectionalAxis != -1)
  {
    v8 = [a4 _directionalPressWithStrongestForce];
    [v8 force];
    if (v6 > self->_strongestDirectionalForce)
    {
      [v8 force];
      self->_strongestDirectionalForce = v7;
      self->_strongestDirectionalAxis = [v8 type];
    }
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained tapIsPossibleForTapRecognizer:self];

  if (v6)
  {

    [(UITapRecognizer *)self _interactionEndedTouch:0];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tapRecognizerFailedToRecognizeTap:self];
}

- (CGPoint)locationInView:(id)a3
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  if (![(NSMutableArray *)self->_touches count])
  {
    [(UITapRecognizer *)self locationInViewNotTrackingTouches:a3];
    x = v7;
    y = v8;
  }

  if (a3)
  {
    v9 = [a3 _window];
    [v9 _convertPointFromSceneReferenceSpace:{x, y}];
    [a3 convertPoint:0 fromView:?];
    x = v10;
    y = v11;
  }

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)locationInViewNotTrackingTouches:(id)a3
{
  v4 = [(UITapRecognizer *)self delegate];
  v5 = [v4 view];

  v6 = [v5 _window];
  if (v5)
  {
    v7 = [UIFocusSystem focusSystemForEnvironment:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 focusedItem];
  if (v8)
  {
    v9 = [_UIFocusItemInfo infoWithItem:v8];
    [v9 focusedRectInCoordinateSpace:v6];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v5 _window];
    [v18 _convertPointToSceneReferenceSpace:{v11 + v15 * 0.5, v13 + v17 * 0.5}];
    v20 = v19;
    v22 = v21;
  }

  else
  {
    if (v5)
    {
      [v5 bounds];
      [v5 convertPoint:v6 toView:{v24 + v23 * 0.5, v26 + v25 * 0.5}];
      [v6 _convertPointToSceneReferenceSpace:?];
      v20 = v27;
      v22 = v28;
      goto LABEL_9;
    }

    v9 = [a3 _window];
    [v9 center];
    [v9 _convertPointToSceneReferenceSpace:?];
    v20 = v31;
    v22 = v32;
  }

LABEL_9:
  v29 = v20;
  v30 = v22;
  result.y = v30;
  result.x = v29;
  return result;
}

- (CGPoint)locationInView:(id)a3 focusSystem:(id)a4
{
  v5 = [a4 focusedItem];
  if (v5)
  {
    v6 = [_UIFocusItemInfo infoWithItem:v5];
    [v6 focusedRectInCoordinateSpace:a3];
    v9 = v8 + v7 * 0.5;
    v12 = v11 + v10 * 0.5;
  }

  else
  {
    v6 = [a3 _window];
    [v6 center];
    v9 = v13;
    v12 = v14;
  }

  v15 = v9;
  v16 = v12;
  result.y = v16;
  result.x = v15;
  return result;
}

@end