@interface UIKeyboardPinchGestureRecognizer
- (UIKeyboardPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (UIKeyboardPinchGestureRecognizerDelegate)pinchDelegate;
- (double)finalProgressForInitialProgress:(double)result;
- (void)interpretTouchesForSplit;
- (void)reset;
- (void)resetPinchCalculations;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UIKeyboardPinchGestureRecognizer

- (UIKeyboardPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v10.receiver = self;
  v10.super_class = UIKeyboardPinchGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v10 initWithTarget:target action:action];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2];
    activeTouches = v4->_activeTouches;
    v4->_activeTouches = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    initialTouchPoints = v4->_initialTouchPoints;
    v4->_initialTouchPoints = v7;
  }

  return v4;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v27 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  [event timestamp];
  self->_beginPinchTimestamp = v7;
  [(NSMutableSet *)self->_activeTouches unionSet:beganCopy];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = beganCopy;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        view = [(UIGestureRecognizer *)self view];
        [v12 locationInView:view];
        v15 = v14;
        v17 = v16;

        initialTouchPoints = self->_initialTouchPoints;
        v19 = [MEMORY[0x1E696B098] valueWithCGPoint:{v15, v17}];
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v12, "_touchIdentifier")}];
        [(NSMutableDictionary *)initialTouchPoints setObject:v19 forKey:v20];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  [event timestamp];
  if (v5 - self->_beginPinchTimestamp >= 0.01)
  {
    if ([(NSMutableSet *)self->_activeTouches count]== 2)
    {

      [(UIKeyboardPinchGestureRecognizer *)self interpretTouchesForSplit];
    }

    else
    {

      [(UIGestureRecognizer *)self setState:4];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v29 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [endedCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(endedCopy);
        }

        initialTouchPoints = self->_initialTouchPoints;
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(*(&v23 + 1) + 8 * v9), "_touchIdentifier")}];
        [(NSMutableDictionary *)initialTouchPoints removeObjectForKey:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [endedCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_activeTouches minusSet:endedCopy];
  if (self->_pinchDetected && [(NSMutableSet *)self->_activeTouches count]<= 1)
  {
    [(UIGestureRecognizer *)self setState:3];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = endedCopy;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * v16);
          pinchDelegate = [(UIKeyboardPinchGestureRecognizer *)self pinchDelegate];
          [pinchDelegate pinchDidConsumeTouch:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  cancelledCopy = cancelled;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [cancelledCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(cancelledCopy);
        }

        initialTouchPoints = self->_initialTouchPoints;
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(*(&v12 + 1) + 8 * v9), "_touchIdentifier")}];
        [(NSMutableDictionary *)initialTouchPoints removeObjectForKey:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [cancelledCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_activeTouches minusSet:cancelledCopy];
  if (self->_pinchDetected && ![(NSMutableSet *)self->_activeTouches count])
  {
    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)reset
{
  self->_pinchDetected = 0;
  self->_beginPinchTimestamp = 0.0;
  [(UIKeyboardPinchGestureRecognizer *)self resetPinchCalculations];
  [(NSMutableDictionary *)self->_initialTouchPoints removeAllObjects];
  [(NSMutableSet *)self->_activeTouches removeAllObjects];
  v3.receiver = self;
  v3.super_class = UIKeyboardPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v3 reset];
}

- (void)resetPinchCalculations
{
  self->_initialPinchSeparation = 0.0;
  *self->_pinchSeparationValues = 0u;
  *&self->_pinchSeparationValues[2] = 0u;
}

- (void)interpretTouchesForSplit
{
  if (!self->_pinchDetected || [(NSMutableSet *)self->_activeTouches count]== 2)
  {
    if ([(NSMutableSet *)self->_activeTouches count]< 2 || [(NSMutableSet *)self->_activeTouches count]> 2)
    {
      return;
    }

    allObjects = [(NSMutableSet *)self->_activeTouches allObjects];
    v49 = [allObjects objectAtIndex:0];

    allObjects2 = [(NSMutableSet *)self->_activeTouches allObjects];
    v5 = [allObjects2 objectAtIndex:1];

    view = [(UIGestureRecognizer *)self view];
    [v49 locationInView:view];
    v8 = v7;
    v10 = v9;

    view2 = [(UIGestureRecognizer *)self view];
    [v5 locationInView:view2];
    v13 = v12;
    v15 = v14;

    if (self->_pinchDetected)
    {
      goto LABEL_10;
    }

    initialTouchPoints = self->_initialTouchPoints;
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v49, "_touchIdentifier")}];
    v23 = [(NSMutableDictionary *)initialTouchPoints objectForKey:v22];
    [v23 CGPointValue];
    v25 = v24;
    v27 = v26;

    v28 = self->_initialTouchPoints;
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v5, "_touchIdentifier")}];
    v30 = [(NSMutableDictionary *)v28 objectForKey:v29];
    [v30 CGPointValue];
    v32 = v31;
    v34 = v33;

    v35 = v8 - v25;
    v36 = v13 - v32;
    if (v8 - v25 > 40.0 && v36 > 40.0)
    {
      goto LABEL_30;
    }

    v38 = v35 < -40.0;
    if (v36 >= -40.0)
    {
      v38 = 0;
    }

    if (fabs(v35) < 40.0 || v38 || fabs(v36) < 40.0)
    {
      goto LABEL_30;
    }

    delegate = [(UIGestureRecognizer *)self delegate];
    if (!delegate || (v40 = delegate, v41 = v13 - v8, v42 = v15 - v10, v43 = hypotf(v41, v42), v44 = v32 - v25, v45 = v34 - v27, v46 = v43 / hypotf(v44, v45), -[UIKeyboardPinchGestureRecognizer pinchDelegate](self, "pinchDelegate"), v47 = objc_claimAutoreleasedReturnValue(), v48 = [v47 pinchCanBeginWithTouches:self->_activeTouches andScale:v46], v47, v40, (v48 & 1) != 0))
    {
LABEL_10:
      v16 = &self->_pinchSeparationValues[1];
      v17 = 3;
      do
      {
        *(v16 - 1) = *v16;
        ++v16;
        --v17;
      }

      while (v17);
      v18 = vabdd_f64(v8, v13);
      self->_pinchSeparationValues[3] = v18;
      if (!self->_pinchDetected && self->_initialPinchSeparation < 0.00000011920929)
      {
        self->_pinchDetected = 1;
        self->_initialPinchSeparation = v18;
      }

      delegate2 = [(UIGestureRecognizer *)self delegate];

      if (delegate2)
      {
        pinchDelegate = [(UIKeyboardPinchGestureRecognizer *)self pinchDelegate];
        [pinchDelegate didDetectPinchWithSeparation:v18];
      }
    }

    else
    {
      [(UIGestureRecognizer *)self setState:5];
    }

LABEL_30:

    return;
  }

  [(UIGestureRecognizer *)self setState:5];
}

- (double)finalProgressForInitialProgress:(double)result
{
  self->_pinchDetected = 0;
  v3 = self->_pinchSeparationValues[0];
  v4 = self->_pinchSeparationValues[3];
  v5 = 1;
  if (vabdd_f64(v3, v4) < 40.0)
  {
    v6 = 1;
LABEL_8:
    if (v5 == v6)
    {
      v12 = self->_initialPinchSeparation + (v4 + v3 + self->_pinchSeparationValues[1] + self->_pinchSeparationValues[2]) * -0.25;
      if (v12 < -40.0)
      {
        result = 1.0;
      }

      if (v12 > 40.0)
      {
        return 0.0;
      }
    }

    else
    {
      result = 1.0;
      if (v6)
      {
        return 0.0;
      }
    }

    return result;
  }

  v7 = 1;
  v8 = self->_pinchSeparationValues[0];
  v9 = 1;
  LOBYTE(v6) = 1;
  do
  {
    v10 = self->_pinchSeparationValues[v7];
    v5 = v5 & (v10 >= v8);
    v6 = v6 & (v10 <= v8);
    v11 = v8 != 0.0;
    if (v10 == 0.0)
    {
      v11 = 0;
    }

    v9 &= v11;
    ++v7;
    v8 = v10;
  }

  while (v7 != 4);
  if (v9)
  {
    goto LABEL_8;
  }

  return result;
}

- (UIKeyboardPinchGestureRecognizerDelegate)pinchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pinchDelegate);

  return WeakRetained;
}

@end