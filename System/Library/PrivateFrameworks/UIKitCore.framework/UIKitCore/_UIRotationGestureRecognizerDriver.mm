@interface _UIRotationGestureRecognizerDriver
- (_UIRotationGestureRecognizerDriver)init;
- (uint64_t)_setPostRecognitionWeight:(uint64_t)result;
- (uint64_t)_setPreRecognitionWeight:(uint64_t)result;
- (uint64_t)setRotation:(uint64_t)result;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)transformChangedWithEvent:(id)event;
@end

@implementation _UIRotationGestureRecognizerDriver

- (_UIRotationGestureRecognizerDriver)init
{
  v9.receiver = self;
  v9.super_class = _UIRotationGestureRecognizerDriver;
  v2 = [(_UIGestureRecognizerDriver *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_hysteresisEnabled = 1;
    v2->_preRecognitionWeight = 1.0;
    v2->_postRecognitionWeight = 1.0;
    v4 = objc_alloc_init(_UIGestureRecognizerTransformAnalyzer);
    transformAnalyzer = v3->_transformAnalyzer;
    v3->_transformAnalyzer = v4;

    v6 = v3->_transformAnalyzer;
    if (([(_UIGestureRecognizerDriver *)v3 state]- 1) >= 2)
    {
      v7 = &OBJC_IVAR____UIRotationGestureRecognizerDriver__preRecognitionWeight;
    }

    else
    {
      v7 = &OBJC_IVAR____UIRotationGestureRecognizerDriver__postRecognitionWeight;
    }

    [(_UIGestureRecognizerTransformAnalyzer *)v6 setRotationWeight:*(&v3->super.super.isa + *v7)];
    [(_UIGestureRecognizerTransformAnalyzer *)v3->_transformAnalyzer setPinchingWeight:0.25];
    [(_UIGestureRecognizerTransformAnalyzer *)v3->_transformAnalyzer setTranslationWeight:0.25];
  }

  return v3;
}

- (void)reset
{
  v6.receiver = self;
  v6.super_class = _UIRotationGestureRecognizerDriver;
  [(_UIGestureRecognizerDriver *)&v6 reset];
  [(_UIGestureRecognizerTransformAnalyzer *)self->_transformAnalyzer reset];
  transformAnalyzer = self->_transformAnalyzer;
  if (([(_UIGestureRecognizerDriver *)self state]- 1) >= 2)
  {
    v4 = &OBJC_IVAR____UIRotationGestureRecognizerDriver__preRecognitionWeight;
  }

  else
  {
    v4 = &OBJC_IVAR____UIRotationGestureRecognizerDriver__postRecognitionWeight;
  }

  [(_UIGestureRecognizerTransformAnalyzer *)transformAnalyzer setRotationWeight:*(&self->super.super.isa + *v4)];
  self->_initialTouchAngle = 0.0;
  self->_currentTouchAngle = 0.0;
  self->_previousVelocity = 0.0;
  self->_velocity = 0.0;
  self->_currentRotationCount = 0;
  touches = self->_touches;
  self->_touches = 0;

  *&self->_flags &= ~1u;
}

- (uint64_t)setRotation:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 56) + a2;
    *(result + 48) = v2;
    *(result + 64) = 0;
    v3 = 0;
    if (v2 > 3.14159265)
    {
      do
      {
        ++v3;
        v2 = v2 + -6.28318531;
      }

      while (v2 > 3.14159265);
      *(result + 64) = v3;
      *(result + 48) = v2;
    }

    if (v2 < -3.14159265)
    {
      do
      {
        --v3;
        v2 = v2 + 6.28318531;
      }

      while (v2 < -3.14159265);
      *(result + 64) = v3;
      *(result + 48) = v2;
    }
  }

  return result;
}

- (uint64_t)_setPreRecognitionWeight:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 112) != a2)
    {
      v3 = a2;
      *(result + 112) = v3;
      v4 = *(result + 96);
      if (([result state] - 1) >= 2)
      {
        v5 = &OBJC_IVAR____UIRotationGestureRecognizerDriver__preRecognitionWeight;
      }

      else
      {
        v5 = &OBJC_IVAR____UIRotationGestureRecognizerDriver__postRecognitionWeight;
      }

      v6 = *(v2 + *v5);

      return [v4 setRotationWeight:v6];
    }
  }

  return result;
}

- (uint64_t)_setPostRecognitionWeight:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 116) != a2)
    {
      v3 = a2;
      *(result + 116) = v3;
      v4 = *(result + 96);
      if (([result state] - 1) >= 2)
      {
        v5 = &OBJC_IVAR____UIRotationGestureRecognizerDriver__preRecognitionWeight;
      }

      else
      {
        v5 = &OBJC_IVAR____UIRotationGestureRecognizerDriver__postRecognitionWeight;
      }

      v6 = *(v2 + *v5);

      return [v4 setRotationWeight:v6];
    }
  }

  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  context = [(_UIGestureRecognizerDriver *)self context];
  v28 = [context activeComponentsForEvent:event];

  v7 = [v28 count] == 2;
  v8 = v28;
  if (v7)
  {
    [event timestamp];
    self->_lastTouchTime = v9;
    self->_anchorPoint.x = _CentroidOfTouches(v28, 1);
    self->_anchorPoint.y = v10;
    self->_initialAnchorPoint = self->_anchorPoint;
    allObjects = [v28 allObjects];
    touches = self->_touches;
    self->_touches = allObjects;

    *&self->_flags |= 1u;
    _UIGestureRecognizerDistanceBetweenTouches(self->_touches);
    self->_initialTouchDistance = v13;
    v14 = [(NSArray *)self->_touches objectAtIndexedSubscript:0];
    [v14 locationInView:0];
    v16 = v15;
    v18 = v17;

    v19 = [(NSArray *)self->_touches objectAtIndexedSubscript:1];
    [v19 locationInView:0];
    v21 = v20;
    v23 = v22;

    v24 = atan2(v18 - v23, v21 - v16);
    self->_initialTouchAngle = v24 + self->_initialTouchAngle - self->_currentTouchAngle;
    self->_currentTouchAngle = v24;
    initialTouchAngle = self->_initialTouchAngle;
    if (initialTouchAngle > 3.14159265)
    {
      currentRotationCount = self->_currentRotationCount;
      do
      {
        ++currentRotationCount;
        initialTouchAngle = initialTouchAngle + -6.28318531;
      }

      while (initialTouchAngle > 3.14159265);
      self->_currentRotationCount = currentRotationCount;
      self->_initialTouchAngle = initialTouchAngle;
    }

    v8 = v28;
    if (initialTouchAngle < -3.14159265)
    {
      v27 = self->_currentRotationCount;
      do
      {
        --v27;
        initialTouchAngle = initialTouchAngle + 6.28318531;
      }

      while (initialTouchAngle < -3.14159265);
      self->_currentRotationCount = v27;
      self->_initialTouchAngle = initialTouchAngle;
      v8 = v28;
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v55 = *MEMORY[0x1E69E9840];
  context = [(_UIGestureRecognizerDriver *)self context];
  v8 = [context activeComponentsForEvent:event];

  if ([v8 count] != 2)
  {
    goto LABEL_39;
  }

  v9 = [(NSArray *)self->_touches objectAtIndexedSubscript:0];
  [v9 locationInView:0];
  v11 = v10;
  v13 = v12;

  v14 = [(NSArray *)self->_touches objectAtIndexedSubscript:1];
  [v14 locationInView:0];
  v16 = v15;
  v18 = v17;

  v19 = atan2(v13 - v18, v16 - v11);
  currentTouchAngle = self->_currentTouchAngle;
  v21 = 64;
  currentRotationCount = self->_currentRotationCount;
  v23 = v19 - currentTouchAngle;
  [event timestamp];
  v25 = v24;
  v26 = 72;
  lastTouchTime = self->_lastTouchTime;
  [(_UIGestureRecognizerTransformAnalyzer *)self->_transformAnalyzer analyzeTouches:v8];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  movedCopy = moved;
  v29 = [movedCopy countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v29)
  {
    v48 = 72;
    v49 = 64;
    v30 = currentRotationCount;
    v31 = *v51;
    while (2)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(movedCopy);
        }

        if ([*(*(&v50 + 1) + 8 * i) _isPointerTouch])
        {
          LOBYTE(v29) = 1;
          goto LABEL_12;
        }
      }

      v29 = [movedCopy countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }

LABEL_12:
    currentRotationCount = v30;
    v26 = v48;
    v21 = v49;
  }

  if (fabs(v23) > 1.57079633)
  {
    v33 = *(&self->super.super.isa + v21);
    if (v23 >= 0.0)
    {
      v34 = (v33 + 1);
    }

    else
    {
      v34 = (v33 - 1);
    }

    *(&self->super.super.isa + v21) = v34;
  }

  if ([(_UIGestureRecognizerDriver *)self state]|| !self->_hysteresisEnabled)
  {
    goto LABEL_29;
  }

  allObjects = [v8 allObjects];
  _UIGestureRecognizerDistanceBetweenTouches(allObjects);
  v37 = v36;

  if (v29)
  {
    v38 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_PointerTouchRotationHysteresis, @"PointerTouchRotationHysteresis");
    v39 = *&qword_1EA95E500;
    if (v38)
    {
      v39 = 1.0;
    }
  }

  else
  {
    v39 = sqrt(fmin(fabs((v37 - self->_initialTouchDistance) / self->_initialTouchDistance), 1.0)) * 5.0 + 5.0;
  }

  v40 = v39;
  v41 = (v40 * 0.017453);
  initialTouchAngle = self->_initialTouchAngle;
  if (vabdd_f64(initialTouchAngle, v19) > v41)
  {
    if (initialTouchAngle <= v19)
    {
      v41 = -v41;
    }

    self->_initialTouchAngle = initialTouchAngle - v41;
LABEL_29:
    self->_anchorPoint.x = _CentroidOfTouches(v8, 1);
    self->_anchorPoint.y = v43;
    self->_previousVelocity = self->_velocity;
    [event timestamp];
    *(&self->super.super.isa + v26) = v44;
    self->_currentTouchAngle = v19;
    if ((v29 & 1) != 0 || [(_UIGestureRecognizerTransformAnalyzer *)self->_transformAnalyzer dominantComponent]== 3)
    {
      v45 = v25 - lastTouchTime;
      if (v25 - lastTouchTime > 0.0)
      {
        v45 = (currentTouchAngle - self->_currentTouchAngle + (*(&self->super.super.isa + v21) - currentRotationCount) * 6.28318531) / v45;
        self->_velocity = v45;
      }

      if (![(_UIGestureRecognizerDriver *)self state])
      {
        [(_UIGestureRecognizerDriver *)self _setState:1 notifyDelegate:?];
        transformAnalyzer = self->_transformAnalyzer;
        if (([(_UIGestureRecognizerDriver *)self state]- 1) >= 2)
        {
          v47 = &OBJC_IVAR____UIRotationGestureRecognizerDriver__preRecognitionWeight;
        }

        else
        {
          v47 = &OBJC_IVAR____UIRotationGestureRecognizerDriver__postRecognitionWeight;
        }

        [(_UIGestureRecognizerTransformAnalyzer *)transformAnalyzer setRotationWeight:*(&self->super.super.isa + *v47)];
      }
    }

    else
    {
      self->_initialTouchAngle = v23 + self->_initialTouchAngle;
      self->_velocity = 0.0;
    }
  }

LABEL_39:
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  context = [(_UIGestureRecognizerDriver *)self context];
  v9 = [context activeComponentsForEvent:event];

  if ([v9 count])
  {
    if ([v9 count] == 1)
    {
      *&self->_flags &= ~1u;
    }
  }

  else
  {
    state = [(_UIGestureRecognizerDriver *)self state];
    if (self)
    {
      if (state == 1)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }

      [(_UIGestureRecognizerDriver *)self _setState:v8 notifyDelegate:1];
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if (self)
  {
    [(_UIGestureRecognizerDriver *)self _setState:1 notifyDelegate:?];
  }
}

- (void)transformChangedWithEvent:(id)event
{
  p_anchorPoint = &self->_anchorPoint;
  context = [(_UIGestureRecognizerDriver *)self context];
  [event locationInView:0];
  v8 = v7;
  v10 = v9;
  _allWindows = [event _allWindows];
  anyObject = [_allWindows anyObject];
  [context convertPoint:anyObject toSceneReferenceCoordinatesFromView:{v8, v10}];
  p_anchorPoint->x = v13;
  p_anchorPoint->y = v14;

  phase = [event phase];
  if (phase > 2)
  {
    if (phase == 3)
    {
      if ([(_UIGestureRecognizerDriver *)self state]== 1)
      {
        v34 = 2;
      }

      else
      {
        v34 = 3;
      }

      selfCopy3 = self;
    }

    else
    {
      if (phase != 4)
      {
        return;
      }

      selfCopy3 = self;
      v34 = 3;
    }

    goto LABEL_31;
  }

  if (phase == 1)
  {
    self->_initialTouchAngle = 0.0;
    self->_initialAnchorPoint = *p_anchorPoint;
    [event timestamp];
    self->_lastTouchTime = v35;
    return;
  }

  if (phase == 2)
  {
    self->_previousVelocity = self->_velocity;
    currentRotationCount = self->_currentRotationCount;
    [event rotation];
    v18 = v17;
    currentTouchAngle = self->_currentTouchAngle;
    [event timestamp];
    v21 = v20;
    lastTouchTime = self->_lastTouchTime;
    [event timestamp];
    self->_lastTouchTime = v23;
    v24 = vabdd_f64(v18, currentTouchAngle);
    if (v24 > 1.57079633)
    {
      v25 = self->_currentRotationCount;
      v24 = v18 - currentTouchAngle;
      if (v18 - currentTouchAngle >= 0.0)
      {
        v26 = v25 + 1;
      }

      else
      {
        v26 = v25 - 1;
      }

      self->_currentRotationCount = v26;
    }

    if ([(_UIGestureRecognizerDriver *)self state])
    {
      goto LABEL_36;
    }

    v27 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_TransformEventRotationHysteresis, @"TransformEventRotationHysteresis");
    v28 = *&qword_1EA95E510;
    v29 = (v28 * 0.017453);
    if (v27)
    {
      v29 = 0.0174532924;
    }

    v30 = -v18;
    if (v18 >= 0.0)
    {
      v30 = v18;
    }

    if (v30 > v29)
    {
LABEL_36:
      v31 = v21 - lastTouchTime;
      self->_currentTouchAngle = v18;
      if (v21 - lastTouchTime > 0.0)
      {
        v32 = -(currentTouchAngle - v18);
        if (currentTouchAngle - v18 >= 0.0)
        {
          v32 = currentTouchAngle - v18;
        }

        if (v32 > 0.0)
        {
          v31 = (currentTouchAngle - v18 + (self->_currentRotationCount - currentRotationCount) * 6.28318531) / v31;
          self->_velocity = v31;
        }
      }

      if (![(_UIGestureRecognizerDriver *)self state])
      {
        selfCopy3 = self;
        v34 = 1;
LABEL_31:

        [(_UIGestureRecognizerDriver *)selfCopy3 _setState:v34 notifyDelegate:1];
      }
    }
  }
}

@end