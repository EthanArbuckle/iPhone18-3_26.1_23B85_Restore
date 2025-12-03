@interface UITransformEvent
- (CGAffineTransform)transform;
- (CGPoint)locationInView:(id)view;
- (CGPoint)translation;
- (double)scale;
- (id)_allWindows;
- (id)_gestureRecognizersForWindow:(id)window;
- (id)_init;
- (id)_initWithEvent:(__GSEvent *)event touches:(id)touches;
- (id)_windowServerHitTestWindow;
- (int64_t)weightedDominantComponentForScaleWeight:(double)weight rotationWeight:(double)rotationWeight translationWeight:(double)translationWeight;
- (void)_removeGestureRecognizer:(id)recognizer fromComponents:(id)components;
- (void)_removeGestureRecognizersFromWindows;
- (void)_reset;
- (void)_setHIDEvent:(__IOHIDEvent *)event;
@end

@implementation UITransformEvent

- (id)_init
{
  v5.receiver = self;
  v5.super_class = UITransformEvent;
  _init = [(UIEvent *)&v5 _init];
  v3 = _init;
  if (_init)
  {
    _UITransformEventCommonInit(_init);
  }

  return v3;
}

- (id)_initWithEvent:(__GSEvent *)event touches:(id)touches
{
  v7.receiver = self;
  v7.super_class = UITransformEvent;
  v4 = [(UIEvent *)&v7 _init:event];
  v5 = v4;
  if (v4)
  {
    _UITransformEventCommonInit(v4);
  }

  return v5;
}

- (void)_reset
{
  self->_scale = 0.0;
  self->_scaleDelta = 0.0;
  self->_rotation = 0.0;
  self->_rotationDelta = 0.0;
  self->_translation = *MEMORY[0x1E695EFF8];
  self->_translationMagDelta = 0.0;
  self->_scalePhase = 0;
  self->_rotationPhase = 0;
  self->_translationPhase = 0;
}

- (void)_setHIDEvent:(__IOHIDEvent *)event
{
  if (event && ([(UITransformEvent *)self phase]== 3 || [(UITransformEvent *)self phase]== 4 || ![(UITransformEvent *)self phase]))
  {
    [(UITransformEvent *)self _reset];
  }

  v30.receiver = self;
  v30.super_class = UITransformEvent;
  [(UIEvent *)&v30 _setHIDEvent:event];
  if ([(UIEvent *)self _hidEvent])
  {
    v5 = BKSHIDEventGetPointerAttributes();
    pointerAttributes = self->_pointerAttributes;
    self->_pointerAttributes = v5;

    v7 = _UIEventHIDUIWindowForHIDEvent();
    if (v7)
    {
      [v7 _convertPointToSceneReferenceSpace:{_UIEventHIDConvertPointerLocation3DToWindow(event, v7)}];
      self->_sceneReferenceLocation.x = v8;
      self->_sceneReferenceLocation.y = v9;
    }

    else
    {
      self->_sceneReferenceLocation = *MEMORY[0x1E695EFF8];
    }

    v28 = 0;
    v29 = 0;
    v27 = 0;
    _UIEventHIDGetTransformEventComponents(event, &v29, &v28, &v27);
    if (v29)
    {
      IOHIDEventGetDoubleValue();
      self->_scaleDelta = v10;
      self->_scale = v10 + self->_scale;
      self->_scalePhase = _UIEventHIDTransformPhaseForComponentEvent(v29);
    }

    if (v28)
    {
      IOHIDEventGetDoubleValue();
      self->_rotationDelta = v11;
      self->_rotation = v11 + self->_rotation;
      self->_rotationPhase = _UIEventHIDTransformPhaseForComponentEvent(v28);
    }

    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v12 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1 || (v26 = _UIInternalPreference_ShouldIncludeTranslationHIDEvent, _UIInternalPreferencesRevisionVar == _UIInternalPreference_ShouldIncludeTranslationHIDEvent))
    {
      v13 = 1;
    }

    else
    {
      do
      {
        v13 = v12 >= v26;
        if (v12 < v26)
        {
          break;
        }

        _UIInternalPreferenceSync(v12, &_UIInternalPreference_ShouldIncludeTranslationHIDEvent, @"ShouldIncludeTranslationHIDEvent", _UIInternalPreferenceUpdateBool);
        v26 = _UIInternalPreference_ShouldIncludeTranslationHIDEvent;
      }

      while (v12 != _UIInternalPreference_ShouldIncludeTranslationHIDEvent);
    }

    if (byte_1ED48A8D4)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    if (v14 == 1 && v27 != 0)
    {
      IOHIDEventGetDoubleValue();
      v17 = v16;
      IOHIDEventGetDoubleValue();
      v19 = v18;
      v20 = _UIEventHIDGetInterfaceOrientationForEvent(self->super._hidEvent);
      v21 = -v19;
      if (v20 == 2)
      {
        v22 = -v19;
      }

      else
      {
        v22 = v19;
      }

      if (v20 == 2)
      {
        v23 = -v17;
      }

      else
      {
        v23 = v17;
      }

      if (v20 == 3)
      {
        v22 = v17;
      }

      else
      {
        v21 = v23;
      }

      if (v20 == 4)
      {
        v24 = -v17;
      }

      else
      {
        v24 = v22;
      }

      if (v20 != 4)
      {
        v19 = v21;
      }

      self->_translationMagDelta = hypot(v19, v24);
      v25 = v24 + self->_translation.y;
      self->_translation.x = v19 + self->_translation.x;
      self->_translation.y = v25;
      self->_translationPhase = _UIEventHIDTransformPhaseForComponentEvent(v27);
    }
  }
}

- (id)_gestureRecognizersForWindow:(id)window
{
  windowCopy = window;
  v5 = [(NSMapTable *)self->_gestureRecognizersByWindow objectForKey:windowCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if ([(UITransformEvent *)self phase]== 1)
  {
    _windowServerHitTestWindow = [(UITransformEvent *)self _windowServerHitTestWindow];
    v7 = _UINonComponentEventHitTestGestureRecognizers(self, _windowServerHitTestWindow, _windowServerHitTestWindow, self->_sceneReferenceLocation.x, self->_sceneReferenceLocation.y);
    gestureRecognizersByWindow = self->_gestureRecognizersByWindow;
    v10 = [v7 mutableCopy];
    [(NSMapTable *)gestureRecognizersByWindow setObject:v10 forKey:windowCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_removeGestureRecognizersFromWindows
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _allWindows = [(UITransformEvent *)self _allWindows];
  v4 = [_allWindows countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(_allWindows);
        }

        [(NSMapTable *)self->_gestureRecognizersByWindow removeObjectForKey:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [_allWindows countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_removeGestureRecognizer:(id)recognizer fromComponents:(id)components
{
  v17 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _allWindows = [(UITransformEvent *)self _allWindows];
  v7 = [_allWindows countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(_allWindows);
        }

        v11 = [(NSMapTable *)self->_gestureRecognizersByWindow objectForKey:*(*(&v12 + 1) + 8 * v10)];
        [v11 removeObject:recognizerCopy];

        ++v10;
      }

      while (v8 != v10);
      v8 = [_allWindows countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)_allWindows
{
  _windowServerHitTestWindow = [(UITransformEvent *)self _windowServerHitTestWindow];
  if (_windowServerHitTestWindow)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:_windowServerHitTestWindow];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_windowServerHitTestWindow
{
  [(UIEvent *)self _hidEvent];

  return _UIEventHIDUIWindowForHIDEvent();
}

- (int64_t)weightedDominantComponentForScaleWeight:(double)weight rotationWeight:(double)rotationWeight translationWeight:(double)translationWeight
{
  scaleDelta = self->_scaleDelta;
  rotationDelta = self->_rotationDelta;
  translationMagDelta = self->_translationMagDelta;
  if (translationMagDelta < 0.0)
  {
    translationMagDelta = -translationMagDelta;
  }

  v8 = translationMagDelta * translationWeight;
  if (scaleDelta < 0.0)
  {
    scaleDelta = -scaleDelta;
  }

  v9 = scaleDelta * weight;
  v10 = -rotationDelta;
  if (rotationDelta >= 0.0)
  {
    v10 = self->_rotationDelta;
  }

  v11 = v10 * rotationWeight;
  v12 = v8 / v9;
  if (v9 <= 0.0)
  {
    v12 = v8;
  }

  if (v9 != 0.0 && v12 <= 1.4)
  {
    goto LABEL_15;
  }

  v13 = v8 / v11;
  if (v11 <= 0.0)
  {
    v13 = v8;
  }

  result = 3;
  if (v11 != 0.0 && v13 <= 1.4)
  {
LABEL_15:
    v15 = v9 / v8;
    if (v8 <= 0.0)
    {
      v15 = v9;
    }

    if (v8 != 0.0 && v15 <= 1.4)
    {
      goto LABEL_23;
    }

    v16 = v9 / v11;
    if (v11 <= 0.0)
    {
      v16 = v9;
    }

    result = 1;
    if (v11 != 0.0 && v16 <= 1.4)
    {
LABEL_23:
      v17 = v8 == 0.0;
      if (v8 <= 0.0)
      {
        v18 = v11;
      }

      else
      {
        v18 = v11 / v8;
      }

      if (v17 || v18 > 1.4)
      {
        if (v9 > 0.0)
        {
          v11 = v11 / v9;
        }

        if (v11 > 1.4 || v9 == 0.0)
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    anyObject = viewCopy;
  }

  else
  {
    _allWindows = [(UITransformEvent *)self _allWindows];
    anyObject = [_allWindows anyObject];
  }

  _window = [anyObject _window];
  v9 = _window;
  if (_window)
  {
    [_window _convertPointFromSceneReferenceSpace:{self->_sceneReferenceLocation.x, self->_sceneReferenceLocation.y}];
  }

  [anyObject convertPoint:0 fromView:?];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGAffineTransform)transform
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  [(UITransformEvent *)self scale];
  v6 = v5;
  [(UITransformEvent *)self scale];
  CGAffineTransformMakeScale(retstr, v6, v7);
  rotation = self->_rotation;
  v9 = *&retstr->c;
  *&v15.a = *&retstr->a;
  *&v15.c = v9;
  *&v15.tx = *&retstr->tx;
  CGAffineTransformRotate(&v16, &v15, rotation);
  v10 = *&v16.c;
  *&retstr->a = *&v16.a;
  *&retstr->c = v10;
  *&retstr->tx = *&v16.tx;
  x = self->_translation.x;
  *&v10 = self->_translation.y;
  v12 = *&retstr->c;
  *&v15.a = *&retstr->a;
  *&v15.c = v12;
  *&v15.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v16, &v15, x, *&v10);
  v14 = *&v16.c;
  *&retstr->a = *&v16.a;
  *&retstr->c = v14;
  *&retstr->tx = *&v16.tx;
  return result;
}

- (double)scale
{
  scale = self->_scale;
  if (scale < 0.0)
  {
    scale = 1.0 / (pow(-scale, 1.1) * 1.9 + 1.0) + -1.0;
  }

  return scale + 1.0;
}

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end