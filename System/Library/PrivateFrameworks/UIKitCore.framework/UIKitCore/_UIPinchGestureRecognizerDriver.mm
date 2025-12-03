@interface _UIPinchGestureRecognizerDriver
- (_UIPinchGestureRecognizerDriver)init;
- (void)_applyScale:(CGFloat)scale atLocation:(double)location touchDistance:(double)distance withEvent:(double)event;
- (void)reset;
- (void)setScale:(double *)scale;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)transformChangedWithEvent:(id)event;
@end

@implementation _UIPinchGestureRecognizerDriver

- (_UIPinchGestureRecognizerDriver)init
{
  v9.receiver = self;
  v9.super_class = _UIPinchGestureRecognizerDriver;
  v2 = [(_UIGestureRecognizerDriver *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695EFD0];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&v2->_transform.a = *MEMORY[0x1E695EFD0];
    *&v2->_transform.c = v5;
    *&v2->_transform.tx = *(v4 + 32);
    v2->_scaleThreshold = 1.0;
    v2->_hysteresis = 8.0;
    v6 = objc_alloc_init(_UIGestureRecognizerTransformAnalyzer);
    transformAnalyzer = v3->_transformAnalyzer;
    v3->_transformAnalyzer = v6;

    [(_UIGestureRecognizerTransformAnalyzer *)v3->_transformAnalyzer setPinchingWeight:4.0];
    [(_UIGestureRecognizerTransformAnalyzer *)v3->_transformAnalyzer setRotationWeight:0.5];
    [(_UIGestureRecognizerTransformAnalyzer *)v3->_transformAnalyzer setTranslationWeight:0.5];
  }

  return v3;
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = _UIPinchGestureRecognizerDriver;
  [(_UIGestureRecognizerDriver *)&v5 reset];
  [(_UIGestureRecognizerTransformAnalyzer *)self->_transformAnalyzer reset];
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&self->_transform.a = *MEMORY[0x1E695EFD0];
  *&self->_transform.c = v4;
  *&self->_transform.tx = *(v3 + 32);
  self->_previousVelocity = 0.0;
  self->_velocity = 0.0;
  self->_lastNonZeroTimestampDelta = 0.0;
  *&self->_flags &= ~2u;
}

- (void)setScale:(double *)scale
{
  if (scale)
  {
    context = [scale context];
    v5 = [context activeEventOfType:0];

    if (v5)
    {
      scale[5] = scale[12] * scale[5] / a2;
    }

    scale[6] = a2;
    scale[12] = a2;
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  context = [(_UIGestureRecognizerDriver *)self context];
  v12 = [context activeComponentsForEvent:event];

  if ([v12 count] == 2)
  {
    if (self)
    {
      a = self->_transform.a;
    }

    else
    {
      a = 0.0;
    }

    self->_initialScale = a;
    allObjects = [v12 allObjects];
    _UIGestureRecognizerDistanceBetweenTouches(allObjects);
    self->_initialTouchDistance = v9 / self->_initialScale;

    [event timestamp];
    self->_lastEventTime = v10;
    self->_anchorPoint.x = _CentroidOfTouches(v12, 1);
    self->_anchorPoint.y = v11;
    self->_initialAnchorPoint = self->_anchorPoint;
    *&self->_flags |= 2u;
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v47 = *MEMORY[0x1E69E9840];
  context = [(_UIGestureRecognizerDriver *)self context];
  v7 = [context activeComponentsForEvent:event];

  if ([v7 count] == 2)
  {
    allObjects = [v7 allObjects];
    _UIGestureRecognizerDistanceBetweenTouches(allObjects);
    v10 = v9;

    [(_UIGestureRecognizerTransformAnalyzer *)self->_transformAnalyzer analyzeTouches:v7];
    if ([(_UIGestureRecognizerDriver *)self state])
    {
      initialTouchDistance = self->_initialTouchDistance;
LABEL_4:
      v12 = v10 / initialTouchDistance;
      v13 = _CentroidOfTouches(v7, 1);
      [(_UIPinchGestureRecognizerDriver *)self _applyScale:event atLocation:v12 touchDistance:v13 withEvent:v14, v10];
      goto LABEL_29;
    }

    hysteresis = self->_hysteresis;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v43;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if ([*(*(&v42 + 1) + 8 * i) _isPointerTouch])
          {

            if (fabs(hysteresis + -8.0) <= 2.22044605e-16)
            {
              if (_UIInternalPreferencesRevisionOnce != -1)
              {
                dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
              }

              v21 = _UIInternalPreferencesRevisionVar;
              hysteresis = 2.0;
              if (_UIInternalPreferencesRevisionVar >= 1)
              {
                v40 = _UIInternalPreference_PinchPointerTouchHysteresis;
                if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_PinchPointerTouchHysteresis)
                {
                  while (v21 >= v40)
                  {
                    _UIInternalPreferenceSync(v21, &_UIInternalPreference_PinchPointerTouchHysteresis, @"PinchPointerTouchHysteresis", _UIInternalPreferenceUpdateDouble);
                    v40 = _UIInternalPreference_PinchPointerTouchHysteresis;
                    if (v21 == _UIInternalPreference_PinchPointerTouchHysteresis)
                    {
                      goto LABEL_18;
                    }
                  }

                  hysteresis = *&qword_1EA95E348;
                }
              }
            }

            goto LABEL_18;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
    if (vabdd_f64(self->_initialTouchDistance * self->_initialScale, v10) > hysteresis)
    {
      context2 = [(_UIGestureRecognizerDriver *)self context];
      eventReceivingWindow = [context2 eventReceivingWindow];
      [eventReceivingWindow _usableBounds];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v32 = v16;
      v33 = [v32 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v33)
      {
        v34 = v33;
        v41 = context2;
        v35 = *v43;
        while (2)
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v43 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v48.x = [(UITouch *)*(*(&v42 + 1) + 8 * j) _locationInWindow:eventReceivingWindow];
            v48.y = v37;
            v49.origin.x = v25;
            v49.origin.y = v27;
            v49.size.width = v29;
            v49.size.height = v31;
            if (!CGRectContainsPoint(v49, v48))
            {

              goto LABEL_29;
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v34)
          {
            continue;
          }

          break;
        }

        context2 = v41;
      }

      else
      {
      }

      v38 = self->_initialTouchDistance;
      v39 = -hysteresis;
      if (v38 > v10)
      {
        v39 = hysteresis;
      }

      initialTouchDistance = v38 - v39 / self->_initialScale;
      self->_initialTouchDistance = initialTouchDistance;
      goto LABEL_4;
    }
  }

LABEL_29:
}

- (void)_applyScale:(CGFloat)scale atLocation:(double)location touchDistance:(double)distance withEvent:(double)event
{
  if (!self)
  {
    return;
  }

  v12 = *(self + 96);
  [a2 timestamp];
  v14 = v13;
  v15 = *(self + 88);
  if (v15 == 1.0)
  {
    v16 = 0;
  }

  else
  {
    v17 = v15 <= 1.0 || v15 >= scale;
    v16 = (v15 >= 1.0 || v15 <= scale) && v17;
  }

  v19 = *(self + 56);
  *(self + 168) = location;
  *(self + 176) = distance;
  *(self + 72) = *(self + 64);
  [a2 timestamp];
  *(self + 56) = v20;
  if ([a2 type] || objc_msgSend(*(self + 152), "dominantComponent") == 2)
  {
    v21 = v14 - v19;
    CGAffineTransformMakeScale(&v30, scale, scale);
    v22 = *&v30.c;
    *(self + 96) = *&v30.a;
    *(self + 112) = v22;
    *(self + 128) = *&v30.tx;
    if ([a2 type])
    {
      type = [a2 type];
      v24 = scale - v12;
      if (scale - v12 < 0.0)
      {
        v24 = -(scale - v12);
      }

      v25 = type == 14 && v24 > 0.0;
    }

    else
    {
      v25 = 1;
    }

    if (v21 <= 0.0)
    {
      if (v21 != 0.0 || (v21 = *(self + 80), v21 <= 0.0))
      {
        mainScreen = [objc_opt_self() mainScreen];
        [mainScreen _refreshRate];
        v21 = v27;
      }
    }

    else
    {
      *(self + 80) = v21;
    }

    if (!v25)
    {
      goto LABEL_31;
    }

    v28 = (scale - v12) / v21;
  }

  else
  {
    *(self + 40) = event / *(self + 96);
    v28 = 0.0;
  }

  *(self + 64) = v28;
LABEL_31:
  if ([self state])
  {
    v29 = 1;
  }

  else
  {
    v29 = v16;
  }

  if ((v29 & 1) == 0)
  {
    [(_UIGestureRecognizerDriver *)self _setState:1 notifyDelegate:?];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  context = [(_UIGestureRecognizerDriver *)self context];
  v10 = [context activeComponentsForEvent:event];

  v7 = [v10 count];
  if (v7)
  {
    if (v7 == 1 && (*&self->_flags & 1) != 0)
    {
      state = [(_UIGestureRecognizerDriver *)self state];
LABEL_6:
      if (state == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      [(_UIGestureRecognizerDriver *)self _setState:v9 notifyDelegate:1];
      goto LABEL_10;
    }

    if (v7 == 1)
    {
      *&self->_flags &= ~2u;
    }
  }

  else
  {
    state = [(_UIGestureRecognizerDriver *)self state];
    if (self)
    {
      goto LABEL_6;
    }
  }

LABEL_10:
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  context = [(_UIGestureRecognizerDriver *)self context];
  v8 = [context activeComponentsForEvent:event];

  v7 = [v8 count];
  if (!v7)
  {
    if (!self)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v7 == 1 && (*&self->_flags & 1) != 0)
  {
LABEL_6:
    [(_UIGestureRecognizerDriver *)self _setState:1 notifyDelegate:?];
  }

LABEL_7:
}

- (void)transformChangedWithEvent:(id)event
{
  context = [(_UIGestureRecognizerDriver *)self context];
  [event locationInView:0];
  v7 = v6;
  v9 = v8;
  _allWindows = [event _allWindows];
  anyObject = [_allWindows anyObject];
  [context convertPoint:anyObject toSceneReferenceCoordinatesFromView:{v7, v9}];
  v13 = v12;
  v15 = v14;

  phase = [event phase];
  if (phase > 2)
  {
    if (phase == 3)
    {
      state = [(_UIGestureRecognizerDriver *)self state];
      if (!self)
      {
        return;
      }

      if (state == 1)
      {
        v20 = 2;
      }

      else
      {
        v20 = 3;
      }

      selfCopy2 = self;
    }

    else
    {
      if (phase != 4 || !self)
      {
        return;
      }

      selfCopy2 = self;
      v20 = 3;
    }

    [(_UIGestureRecognizerDriver *)selfCopy2 _setState:v20 notifyDelegate:1];
  }

  else if (phase == 1)
  {
    if (self)
    {
      a = self->_transform.a;
    }

    else
    {
      a = 0.0;
    }

    self->_initialScale = a;
    [event timestamp];
    self->_lastEventTime = v22;
    self->_anchorPoint.x = v13;
    self->_anchorPoint.y = v15;
    self->_initialAnchorPoint.x = v13;
    self->_initialAnchorPoint.y = v15;
  }

  else if (phase == 2)
  {
    [event scale];
    v18 = v17 * self->_initialScale;

    [(_UIPinchGestureRecognizerDriver *)self _applyScale:event atLocation:v18 touchDistance:v13 withEvent:v15, 0.0];
  }
}

@end