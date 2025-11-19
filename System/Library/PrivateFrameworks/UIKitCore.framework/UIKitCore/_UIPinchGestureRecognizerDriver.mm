@interface _UIPinchGestureRecognizerDriver
- (_UIPinchGestureRecognizerDriver)init;
- (void)_applyScale:(CGFloat)a3 atLocation:(double)a4 touchDistance:(double)a5 withEvent:(double)a6;
- (void)reset;
- (void)setScale:(double *)a1;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)transformChangedWithEvent:(id)a3;
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

- (void)setScale:(double *)a1
{
  if (a1)
  {
    v4 = [a1 context];
    v5 = [v4 activeEventOfType:0];

    if (v5)
    {
      a1[5] = a1[12] * a1[5] / a2;
    }

    a1[6] = a2;
    a1[12] = a2;
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = [(_UIGestureRecognizerDriver *)self context];
  v12 = [v6 activeComponentsForEvent:a4];

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
    v8 = [v12 allObjects];
    _UIGestureRecognizerDistanceBetweenTouches(v8);
    self->_initialTouchDistance = v9 / self->_initialScale;

    [a4 timestamp];
    self->_lastEventTime = v10;
    self->_anchorPoint.x = _CentroidOfTouches(v12, 1);
    self->_anchorPoint.y = v11;
    self->_initialAnchorPoint = self->_anchorPoint;
    *&self->_flags |= 2u;
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = [(_UIGestureRecognizerDriver *)self context];
  v7 = [v6 activeComponentsForEvent:a4];

  if ([v7 count] == 2)
  {
    v8 = [v7 allObjects];
    _UIGestureRecognizerDistanceBetweenTouches(v8);
    v10 = v9;

    [(_UIGestureRecognizerTransformAnalyzer *)self->_transformAnalyzer analyzeTouches:v7];
    if ([(_UIGestureRecognizerDriver *)self state])
    {
      initialTouchDistance = self->_initialTouchDistance;
LABEL_4:
      v12 = v10 / initialTouchDistance;
      v13 = _CentroidOfTouches(v7, 1);
      [(_UIPinchGestureRecognizerDriver *)self _applyScale:a4 atLocation:v12 touchDistance:v13 withEvent:v14, v10];
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
      v22 = [(_UIGestureRecognizerDriver *)self context];
      v23 = [v22 eventReceivingWindow];
      [v23 _usableBounds];
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
        v41 = v22;
        v35 = *v43;
        while (2)
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v43 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v48.x = [(UITouch *)*(*(&v42 + 1) + 8 * j) _locationInWindow:v23];
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

        v22 = v41;
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

- (void)_applyScale:(CGFloat)a3 atLocation:(double)a4 touchDistance:(double)a5 withEvent:(double)a6
{
  if (!a1)
  {
    return;
  }

  v12 = *(a1 + 96);
  [a2 timestamp];
  v14 = v13;
  v15 = *(a1 + 88);
  if (v15 == 1.0)
  {
    v16 = 0;
  }

  else
  {
    v17 = v15 <= 1.0 || v15 >= a3;
    v16 = (v15 >= 1.0 || v15 <= a3) && v17;
  }

  v19 = *(a1 + 56);
  *(a1 + 168) = a4;
  *(a1 + 176) = a5;
  *(a1 + 72) = *(a1 + 64);
  [a2 timestamp];
  *(a1 + 56) = v20;
  if ([a2 type] || objc_msgSend(*(a1 + 152), "dominantComponent") == 2)
  {
    v21 = v14 - v19;
    CGAffineTransformMakeScale(&v30, a3, a3);
    v22 = *&v30.c;
    *(a1 + 96) = *&v30.a;
    *(a1 + 112) = v22;
    *(a1 + 128) = *&v30.tx;
    if ([a2 type])
    {
      v23 = [a2 type];
      v24 = a3 - v12;
      if (a3 - v12 < 0.0)
      {
        v24 = -(a3 - v12);
      }

      v25 = v23 == 14 && v24 > 0.0;
    }

    else
    {
      v25 = 1;
    }

    if (v21 <= 0.0)
    {
      if (v21 != 0.0 || (v21 = *(a1 + 80), v21 <= 0.0))
      {
        v26 = [objc_opt_self() mainScreen];
        [v26 _refreshRate];
        v21 = v27;
      }
    }

    else
    {
      *(a1 + 80) = v21;
    }

    if (!v25)
    {
      goto LABEL_31;
    }

    v28 = (a3 - v12) / v21;
  }

  else
  {
    *(a1 + 40) = a6 / *(a1 + 96);
    v28 = 0.0;
  }

  *(a1 + 64) = v28;
LABEL_31:
  if ([a1 state])
  {
    v29 = 1;
  }

  else
  {
    v29 = v16;
  }

  if ((v29 & 1) == 0)
  {
    [(_UIGestureRecognizerDriver *)a1 _setState:1 notifyDelegate:?];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = [(_UIGestureRecognizerDriver *)self context];
  v10 = [v6 activeComponentsForEvent:a4];

  v7 = [v10 count];
  if (v7)
  {
    if (v7 == 1 && (*&self->_flags & 1) != 0)
    {
      v8 = [(_UIGestureRecognizerDriver *)self state];
LABEL_6:
      if (v8 == 1)
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
    v8 = [(_UIGestureRecognizerDriver *)self state];
    if (self)
    {
      goto LABEL_6;
    }
  }

LABEL_10:
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = [(_UIGestureRecognizerDriver *)self context];
  v8 = [v6 activeComponentsForEvent:a4];

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

- (void)transformChangedWithEvent:(id)a3
{
  v5 = [(_UIGestureRecognizerDriver *)self context];
  [a3 locationInView:0];
  v7 = v6;
  v9 = v8;
  v10 = [a3 _allWindows];
  v11 = [v10 anyObject];
  [v5 convertPoint:v11 toSceneReferenceCoordinatesFromView:{v7, v9}];
  v13 = v12;
  v15 = v14;

  v16 = [a3 phase];
  if (v16 > 2)
  {
    if (v16 == 3)
    {
      v23 = [(_UIGestureRecognizerDriver *)self state];
      if (!self)
      {
        return;
      }

      if (v23 == 1)
      {
        v20 = 2;
      }

      else
      {
        v20 = 3;
      }

      v19 = self;
    }

    else
    {
      if (v16 != 4 || !self)
      {
        return;
      }

      v19 = self;
      v20 = 3;
    }

    [(_UIGestureRecognizerDriver *)v19 _setState:v20 notifyDelegate:1];
  }

  else if (v16 == 1)
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
    [a3 timestamp];
    self->_lastEventTime = v22;
    self->_anchorPoint.x = v13;
    self->_anchorPoint.y = v15;
    self->_initialAnchorPoint.x = v13;
    self->_initialAnchorPoint.y = v15;
  }

  else if (v16 == 2)
  {
    [a3 scale];
    v18 = v17 * self->_initialScale;

    [(_UIPinchGestureRecognizerDriver *)self _applyScale:a3 atLocation:v18 touchDistance:v13 withEvent:v15, 0.0];
  }
}

@end