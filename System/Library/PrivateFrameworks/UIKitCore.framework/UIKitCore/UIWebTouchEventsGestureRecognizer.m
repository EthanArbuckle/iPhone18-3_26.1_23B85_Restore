@interface UIWebTouchEventsGestureRecognizer
+ (void)initialize;
- (CGPoint)locationInWindow;
- (NSMutableArray)touchIdentifiers;
- (NSMutableArray)touchLocations;
- (NSMutableArray)touchPhases;
- (UIWebTouchEventsGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 touchDelegate:(id)a5;
- (void)_processTouches:(id)a3 withEvent:(id)a4 type:(int)a5;
- (void)_recordTouches:(id)a3 type:(int)a4;
- (void)_resetGestureRecognizer;
- (void)_updateTapStateWithTouches:(id)a3;
- (void)_updateTapStateWithTouches:(id)a3 type:(int)a4;
- (void)cancel;
- (void)dealloc;
- (void)performAction;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UIWebTouchEventsGestureRecognizer

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    do
    {
      _incrementingTouchIdentifier = arc4random();
    }

    while ((_incrementingTouchIdentifier + 1) < 2);
  }
}

- (UIWebTouchEventsGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 touchDelegate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = UIWebTouchEventsGestureRecognizer;
  v10 = [(UIGestureRecognizer *)&v17 initWithTarget:0 action:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_touchTarget, v8);
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = 0;
    }

    v11->_touchAction = v12;
    objc_storeWeak(&v11->_webTouchDelegate, v9);
    v11->_wasExplicitlyCancelled = 0;
    v13 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    activeTouchesByIdentifier = v11->_activeTouchesByIdentifier;
    v11->_activeTouchesByIdentifier = v13;

    v11->_lastTouchEvent.touchPoints = 0;
    v11->_lastTouchEvent.touchPointCount = 0;
    [(UIWebTouchEventsGestureRecognizer *)v11 reset];
    v15 = v11;
  }

  return v11;
}

- (void)dealloc
{
  free(self->_lastTouchEvent.touchPoints);
  v3.receiver = self;
  v3.super_class = UIWebTouchEventsGestureRecognizer;
  [(UIGestureRecognizer *)&v3 dealloc];
}

- (void)reset
{
  self->_passedHitTest = 0;
  self->_defaultPrevented = 0;
  self->_dispatchingTouchEvents = 0;
  self->_wasExplicitlyCancelled = 0;
  self->_originalGestureDistance = NAN;
  self->_originalGestureAngle = NAN;
  self->_isPotentialTap = 0;
  self->_lastTouchEvent.type = 0;
  self->_lastTouchEvent.timestamp = 0.0;
  v2 = *MEMORY[0x1E695EFF8];
  self->_lastTouchEvent.locationInScreenCoordinates = *MEMORY[0x1E695EFF8];
  self->_lastTouchEvent.locationInDocumentCoordinates = v2;
  *&self->_lastTouchEvent.scale = vdupq_n_s64(0x7FF8000000000000uLL);
  self->_lastTouchEvent.inJavaScriptGesture = 0;
  self->_lastTouchEvent.isPotentialTap = 0;
}

- (void)cancel
{
  if (self)
  {
    if ((*(&self->super._gestureFlags + 4) & 8) != 0)
    {
      self->_wasExplicitlyCancelled = 0;
      v3 = [(UIGestureRecognizer *)self state];
      if (v3 <= UIGestureRecognizerStateChanged)
      {
        v4 = qword_18A683DE8[v3];
        self->_wasExplicitlyCancelled = 1;

        [(UIGestureRecognizer *)self setState:v4];
      }
    }
  }
}

- (void)_updateTapStateWithTouches:(id)a3
{
  v6 = a3;
  if ([v6 count] == 1)
  {
    v4 = [v6 anyObject];
    if (v4)
    {
      v5 = (v4[118] >> 1) & 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  self->_lastTouchEvent.isPotentialTap = v5;
  self->_isPotentialTap = v5;
}

- (void)_updateTapStateWithTouches:(id)a3 type:(int)a4
{
  v6 = a3;
  if (a4 <= 1)
  {
    if (!a4)
    {
LABEL_9:
      v7 = v6;
      [(UIWebTouchEventsGestureRecognizer *)self _updateTapStateWithTouches:v6];
      v6 = v7;
      goto LABEL_10;
    }

    if (a4 != 1)
    {
      goto LABEL_10;
    }

LABEL_8:
    if (!self->_isPotentialTap)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a4 == 2)
  {
    goto LABEL_8;
  }

  if (a4 == 3)
  {
    self->_lastTouchEvent.isPotentialTap = 0;
    self->_isPotentialTap = 0;
  }

LABEL_10:
}

- (void)_recordTouches:(id)a3 type:(int)a4
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = a3;
  p_lastTouchEvent = &self->_lastTouchEvent;
  v63 = a4;
  self->_lastTouchEvent.type = a4;
  v8 = MEMORY[0x1E695EFF8];
  self->_lastTouchEvent.inJavaScriptGesture = 0;
  v64 = *v8;
  self->_dispatchingTouchEvents = 1;
  v9 = [v6 count];
  v10 = v9;
  if (v9 != self->_lastTouchEvent.touchPointCount)
  {
    self->_lastTouchEvent.touchPointCount = v9;
    self->_lastTouchEvent.touchPoints = reallocf(self->_lastTouchEvent.touchPoints, 88 * v9);
  }

  v11 = [v6 anyObject];
  [v11 timestamp];
  v13 = CACurrentMediaTime() - v12;
  v14 = *MEMORY[0x1E695E468];
  self->_lastTouchEvent.timestamp = v14 + CFAbsoluteTimeGetCurrent() - v13;

  [(NSMapTable *)self->_activeTouchesByIdentifier removeAllObjects];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v15 = v6;
  v65 = [v15 countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (!v65)
  {

    v62 = v64;
    goto LABEL_36;
  }

  v55 = v10;
  v61 = self;
  v16 = 0;
  v60 = 0;
  obj = v15;
  v57 = *v71;
  v17 = v64.f64[1];
  v19 = v64.f64[1];
  v18 = v64.f64[0];
  v20 = v64.f64[0];
  v62 = v64;
  v58 = v64;
  v59 = v64;
  do
  {
    v21 = 0;
    v22 = 88 * v16 + 80;
    do
    {
      if (*v71 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v70 + 1) + 8 * v21);
      v24 = objc_getAssociatedObject(v23, &_associatedTouchIdentifierKey);
      v25 = [v23 _isPointerTouch];
      if (v63 || !v25)
      {
        if (v24)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      if (_incrementingTouchIdentifier == -2)
      {
        v26 = 1;
      }

      else
      {
        v26 = _incrementingTouchIdentifier + 1;
      }

      _incrementingTouchIdentifier = v26;
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      objc_setAssociatedObject(v23, &_associatedTouchIdentifierKey, v24, 1);
LABEL_16:
      [(NSMapTable *)v61->_activeTouchesByIdentifier setObject:v23 forKey:v24];
      v27 = p_lastTouchEvent;
      touchPoints = p_lastTouchEvent->touchPoints;
      v29 = (touchPoints + v22);
      [v23 locationInView:0];
      v66 = v31;
      v67 = v30;
      *(v29 - 10) = v30;
      *(v29 - 9) = v31;
      v32 = [(UIGestureRecognizer *)v61 view];
      [v32 convertPoint:0 fromView:{v67, v66}];
      v68 = v34;
      v69 = v33;

      *(v29 - 8) = v69;
      *(v29 - 7) = v68;
      *(v29 - 12) = [v24 unsignedIntValue];
      *(v29 - 5) = [v23 phase];
      [v23 majorRadius];
      *(v29 - 4) = v35;
      [v23 maximumPossibleForce];
      v36 = 0.0;
      if (v37 > 0.0)
      {
        [v23 force];
        v39 = v38;
        [v23 maximumPossibleForce];
        v36 = v39 / v40;
      }

      *(v29 - 3) = v36;
      if ([v23 type] == 2)
      {
        *(touchPoints + v22) = 1;
        [v23 altitudeAngle];
        *(touchPoints + v22 - 16) = v41;
        if (v23)
        {
          v42 = v23[47];
          goto LABEL_23;
        }
      }

      else
      {
        v43 = (touchPoints + v22);
        *v43 = 0;
        *(v43 - 2) = 0;
      }

      v42 = 0;
LABEL_23:
      p_lastTouchEvent = v27;
      v44.f64[0] = v69;
      *(touchPoints + v22 - 8) = v42;
      if ((*(v29 - 5) - 3) > 1)
      {
        v46.f64[0] = v67;
        v46.f64[1] = v66;
        v47.f64[0] = v69;
        v47.f64[1] = v68;
        v58 = vaddq_f64(v58, v46);
        v59 = vaddq_f64(v59, v47);
        v48 = v60;
        if (v60)
        {
          ++v60;
          if (v48 == 1)
          {
            v17 = v68;
            v18 = v69;
          }
        }

        else
        {
          v60 = 1;
          v19 = v68;
          v20 = v69;
        }
      }

      else
      {
        v45.f64[0] = v67;
        v45.f64[1] = v66;
        v44.f64[1] = v68;
        v62 = vaddq_f64(v62, v44);
        v64 = vaddq_f64(v64, v45);
      }

      ++v21;
      v22 += 88;
      ++v16;
    }

    while (v65 != v21);
    v15 = obj;
    v65 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
  }

  while (v65);

  self = v61;
  v10 = v55;
  if (!v60)
  {
LABEL_36:
    v54 = vdupq_lane_s64(COERCE__INT64(v10), 0);
    p_lastTouchEvent->locationInScreenCoordinates = vdivq_f64(v64, v54);
    p_lastTouchEvent->locationInDocumentCoordinates = vdivq_f64(v62, v54);
    p_lastTouchEvent->scale = 0.0;
    p_lastTouchEvent->rotation = 0.0;
    goto LABEL_37;
  }

  v49 = vdupq_lane_s64(COERCE__INT64(v60), 0);
  p_lastTouchEvent->scale = 0.0;
  p_lastTouchEvent->locationInScreenCoordinates = vdivq_f64(v58, v49);
  p_lastTouchEvent->locationInDocumentCoordinates = vdivq_f64(v59, v49);
  p_lastTouchEvent->rotation = 0.0;
  if (v60 != 1)
  {
    v50 = (v17 - v19) * (v17 - v19) + (v18 - v20) * (v18 - v20);
    p_lastTouchEvent->scale = sqrtf(v50) / v61->_originalGestureDistance;
    v51 = v18 - v20;
    v52 = v17 - v19;
    v53 = atan2f(v51, v52) * 180.0 * 0.318309886;
    p_lastTouchEvent->rotation = v61->_originalGestureAngle - v53;
    p_lastTouchEvent->inJavaScriptGesture = 1;
  }

LABEL_37:
  [(UIWebTouchEventsGestureRecognizer *)self _updateTapStateWithTouches:v15 type:v63];
}

- (void)performAction
{
  WeakRetained = objc_loadWeakRetained(&self->_touchTarget);
  if (self->_touchAction)
  {
    touchAction = self->_touchAction;
  }

  else
  {
    touchAction = 0;
  }

  if (dyld_program_sdk_at_least())
  {
    [WeakRetained touchAction];
  }

  else
  {
    [WeakRetained performSelector:touchAction withObject:self];
  }
}

- (void)_processTouches:(id)a3 withEvent:(id)a4 type:(int)a5
{
  v5 = *&a5;
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if ([v15 phase] != 2)
        {
          v16 = [v15 phase];
          if (v12 <= v16)
          {
            v12 = v16;
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
    if (v12 > 4)
    {
      v17 = 1;
    }

    else
    {
      v17 = dword_18A683E00[v12];
    }
  }

  else
  {
    v17 = 0;
  }

  if (v17 == v5)
  {
    [(UIWebTouchEventsGestureRecognizer *)self _recordTouches:v8 type:v5];
    [(UIWebTouchEventsGestureRecognizer *)self performAction];
    if (self->_defaultPrevented)
    {
      if ([(UIGestureRecognizer *)self state])
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      [(UIGestureRecognizer *)self setState:v18];
    }

    if (v5 >= 2)
    {
      v19 = [(UIGestureRecognizer *)self _activeTouchesForEvent:v9];
      v20 = [v19 count];

      if (!v20)
      {
        v21 = [(UIGestureRecognizer *)self state];
        v22 = 3;
        if (v5 != 2)
        {
          v22 = 4;
        }

        if (v21)
        {
          v23 = v22;
        }

        else
        {
          v23 = 5;
        }

        [(UIGestureRecognizer *)self setState:v23];
      }
    }
  }
}

- (void)_resetGestureRecognizer
{
  if (self->_wasExplicitlyCancelled && self->_lastTouchEvent.type <= 1u)
  {
    self->_lastTouchEvent.type = 3;
    touchPointCount = self->_lastTouchEvent.touchPointCount;
    if (touchPointCount)
    {
      v4 = (touchPointCount + 1) & 0x1FFFFFFFELL;
      v5 = vdupq_n_s64(touchPointCount - 1);
      v6 = xmmword_18A64C520;
      v7 = (self->_lastTouchEvent.touchPoints + 128);
      v8 = vdupq_n_s64(2uLL);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v5, v6));
        if (v9.i8[0])
        {
          *(v7 - 11) = 4;
        }

        if (v9.i8[4])
        {
          *v7 = 4;
        }

        v6 = vaddq_s64(v6, v8);
        v7 += 22;
        v4 -= 2;
      }

      while (v4);
    }

    [(UIWebTouchEventsGestureRecognizer *)self performAction];
  }

  self->_wasExplicitlyCancelled = 0;
  v10.receiver = self;
  v10.super_class = UIWebTouchEventsGestureRecognizer;
  [(UIGestureRecognizer *)&v10 _resetGestureRecognizer];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v7 = a4;
  v5 = [v7 touchesForGestureRecognizer:self];
  WeakRetained = objc_loadWeakRetained(&self->_webTouchDelegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![WeakRetained shouldIgnoreWebTouch])
  {
    if (self->_passedHitTest)
    {
LABEL_8:
      [(UIWebTouchEventsGestureRecognizer *)self _processTouches:v5 withEvent:v7 type:0];
      goto LABEL_10;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained gestureRecognizer:self shouldIgnoreWebTouchWithEvent:v7] & 1) == 0) && (objc_msgSend(WeakRetained, "isAnyTouchOverActiveArea:", v5))
    {
      self->_passedHitTest = 1;
      goto LABEL_8;
    }
  }

  [(UIGestureRecognizer *)self setState:5];
LABEL_10:
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = [v5 touchesForGestureRecognizer:self];
  [(UIWebTouchEventsGestureRecognizer *)self _processTouches:v6 withEvent:v5 type:1];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = [v5 touchesForGestureRecognizer:self];
  [(UIWebTouchEventsGestureRecognizer *)self _processTouches:v6 withEvent:v5 type:2];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = [v5 touchesForGestureRecognizer:self];
  [(UIWebTouchEventsGestureRecognizer *)self _processTouches:v6 withEvent:v5 type:3];
}

- (CGPoint)locationInWindow
{
  x = self->_lastTouchEvent.locationInDocumentCoordinates.x;
  y = self->_lastTouchEvent.locationInDocumentCoordinates.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NSMutableArray)touchLocations
{
  p_lastTouchEvent = &self->_lastTouchEvent;
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_lastTouchEvent.touchPointCount];
  if (p_lastTouchEvent->touchPointCount)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696B098] valueWithPoint:{*(p_lastTouchEvent->touchPoints + v4 + 16), *(p_lastTouchEvent->touchPoints + v4 + 24)}];
      [v3 addObject:v6];

      ++v5;
      v4 += 88;
    }

    while (v5 < p_lastTouchEvent->touchPointCount);
  }

  return v3;
}

- (NSMutableArray)touchIdentifiers
{
  p_lastTouchEvent = &self->_lastTouchEvent;
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_lastTouchEvent.touchPointCount];
  if (p_lastTouchEvent->touchPointCount)
  {
    v4 = 0;
    v5 = 32;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(p_lastTouchEvent->touchPoints + v5)];
      [v3 addObject:v6];

      ++v4;
      v5 += 88;
    }

    while (v4 < p_lastTouchEvent->touchPointCount);
  }

  return v3;
}

- (NSMutableArray)touchPhases
{
  p_lastTouchEvent = &self->_lastTouchEvent;
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_lastTouchEvent.touchPointCount];
  if (p_lastTouchEvent->touchPointCount)
  {
    v4 = 0;
    v5 = 40;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(p_lastTouchEvent->touchPoints + v5)];
      [v3 addObject:v6];

      ++v4;
      v5 += 88;
    }

    while (v4 < p_lastTouchEvent->touchPointCount);
  }

  return v3;
}

@end