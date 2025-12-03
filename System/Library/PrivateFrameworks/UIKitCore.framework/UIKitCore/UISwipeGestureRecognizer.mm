@interface UISwipeGestureRecognizer
- (BOOL)shouldReceiveEvent:(id)event;
- (CGPoint)locationInView:(id)view;
- (CGPoint)locationOfTouch:(unint64_t)touch inView:(id)view;
- (UISwipeGestureRecognizer)initWithCoder:(id)coder;
- (UISwipeGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (double)startPoint;
- (uint64_t)_checkForSwipeWithDelta:(double)delta time:(double)time currentPositionChange:(double)change currentTimeChange:(double)timeChange indirect:(double)indirect;
- (void)_appendSubclassDescription:(id)description;
- (void)_resetGestureRecognizer;
- (void)_scrollingChangedWithEvent:(id)event;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setNumberOfTouchesRequired:(NSUInteger)numberOfTouchesRequired;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UISwipeGestureRecognizer

- (void)dealloc
{
  startLocations = self->_startLocations;
  if (startLocations)
  {
    free(startLocations);
  }

  previousLocations = self->_previousLocations;
  if (previousLocations)
  {
    free(previousLocations);
  }

  v5.receiver = self;
  v5.super_class = UISwipeGestureRecognizer;
  [(UIGestureRecognizer *)&v5 dealloc];
}

- (UISwipeGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = UISwipeGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    _UISwipeGestureRecognizerCommonInit(v4);
    v6 = v5;
  }

  return v5;
}

- (UISwipeGestureRecognizer)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = UISwipeGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithCoder:?];
  v5 = v4;
  if (v4)
  {
    _UISwipeGestureRecognizerCommonInit(v4);
    if ([coder containsValueForKey:@"UISwipeGestureRecognizer.numberOfTouchesRequired"])
    {
      v5->_numberOfTouchesRequired = [coder decodeIntegerForKey:@"UISwipeGestureRecognizer.numberOfTouchesRequired"];
    }

    if ([coder containsValueForKey:@"UISwipeGestureRecognizer.direction"])
    {
      v5->_direction = [coder decodeIntegerForKey:@"UISwipeGestureRecognizer.direction"];
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = UISwipeGestureRecognizer;
  [(UIGestureRecognizer *)&v7 encodeWithCoder:?];
  numberOfTouchesRequired = self->_numberOfTouchesRequired;
  if (numberOfTouchesRequired != 1)
  {
    [coder encodeInteger:numberOfTouchesRequired forKey:@"UISwipeGestureRecognizer.numberOfTouchesRequired"];
  }

  direction = self->_direction;
  if (direction != 1)
  {
    [coder encodeInteger:direction forKey:@"UISwipeGestureRecognizer.direction"];
  }
}

- (double)startPoint
{
  if (!self)
  {
    return 0.0;
  }

  view = [self view];
  window = [view window];
  [window _convertPointFromSceneReferenceSpace:{self[47], self[48]}];
  [view convertPoint:0 fromView:?];
  v5 = v4;

  return v5;
}

- (void)setNumberOfTouchesRequired:(NSUInteger)numberOfTouchesRequired
{
  if (self->_numberOfTouchesRequired != numberOfTouchesRequired)
  {
    self->_numberOfTouchesRequired = numberOfTouchesRequired;
    startLocations = self->_startLocations;
    v5 = 16 * numberOfTouchesRequired;
    if (startLocations)
    {
      v6 = malloc_type_realloc(startLocations, 16 * numberOfTouchesRequired, 0x1000040451B5BE8uLL);
    }

    else
    {
      v6 = malloc_type_malloc(16 * numberOfTouchesRequired, 0x1000040451B5BE8uLL);
    }

    self->_startLocations = v6;
    previousLocations = self->_previousLocations;
    if (previousLocations)
    {
      v8 = malloc_type_realloc(previousLocations, v5, 0x1000040451B5BE8uLL);
    }

    else
    {
      v8 = malloc_type_malloc(v5, 0x1000040451B5BE8uLL);
    }

    self->_previousLocations = v8;
  }
}

- (void)_resetGestureRecognizer
{
  v3 = *MEMORY[0x1E695EFF8];
  self->_startLocation = *MEMORY[0x1E695EFF8];
  self->_previousLocation = v3;
  self->_failed = 0;
  [(NSMutableArray *)self->_touches removeAllObjects];
  v4.receiver = self;
  v4.super_class = UISwipeGestureRecognizer;
  [(UIGestureRecognizer *)&v4 _resetGestureRecognizer];
}

- (uint64_t)_checkForSwipeWithDelta:(double)delta time:(double)time currentPositionChange:(double)change currentTimeChange:(double)timeChange indirect:(double)indirect
{
  if (!self)
  {
    return 0;
  }

  v8 = *(self + 288);
  v9 = 3.40282347e38;
  v10 = *(self + 296);
  if (a2)
  {
    v8 = v8 + v8;
  }

  v11 = fmin(change, 0.5);
  v12 = 1.0 - v11 * (1.0 - *(self + 336));
  v13 = v8 * v12;
  if (v8 == 3.40282347e38)
  {
    v13 = 3.40282347e38;
  }

  v14 = 1.0 - v11 * (1.0 - *(self + 344));
  if (v10 == 3.40282347e38)
  {
    v15 = 3.40282347e38;
  }

  else
  {
    v15 = v10 * v14;
  }

  v16 = *(self + 304);
  if (v16 == 3.40282347e38)
  {
    v17 = 3.40282347e38;
  }

  else
  {
    v17 = v12 * v16;
  }

  v18 = *(self + 312);
  v19 = v14 * v18;
  if (v18 != 3.40282347e38)
  {
    v9 = v19;
  }

  v20 = *(self + 368);
  v21 = v20 & 3;
  if (v21 == 2)
  {
    if (delta > *(self + 320))
    {
      goto LABEL_29;
    }
  }

  else if (v21 == 1 && delta < -*(self + 320))
  {
    goto LABEL_29;
  }

  v22 = v20 & 0xC;
  if (v22 == 8)
  {
    if (time >= -*(self + 320))
    {
      goto LABEL_24;
    }

LABEL_29:
    v21 = 0;
LABEL_30:
    *(self + 440) = 1;
    return v21;
  }

  if (v22 == 4 && time > *(self + 320))
  {
    goto LABEL_29;
  }

LABEL_24:
  if (a8 < 0.01)
  {
    a8 = 0.01;
  }

  if (v21)
  {
    v23 = fabs(delta);
    if (v23 > v15)
    {
      goto LABEL_29;
    }

    v24 = fabs(time);
    if (v24 > v9)
    {
      goto LABEL_29;
    }

    v26 = v23 < v13 || v24 < v17;
    if (!v26 && fabs(timeChange / a8) >= *(self + 328))
    {
      v21 = 1;
      if (!v22)
      {
        return v21;
      }

      goto LABEL_39;
    }

    v21 = 0;
  }

  if (!v22)
  {
    return v21;
  }

LABEL_39:
  v27 = fabs(time);
  v28 = fabs(delta);
  if (v27 > v15 || v28 > v9)
  {
    goto LABEL_30;
  }

  v30 = v27 < v13 || v28 < v17;
  if (!v30 && fabs(indirect / a8) >= *(self + 328))
  {
    return 1;
  }

  return v21;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_failed || (v6 = -[NSMutableArray count](self->_touches, "count", began, event), [began count] + v6 > self->_numberOfTouchesRequired))
  {
    self->_failed = 1;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    beganCopy = began;
    v8 = [beganCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        v11 = 0;
        do
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(beganCopy);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          startLocations = self->_startLocations;
          p_x = &startLocations[[(NSMutableArray *)self->_touches count]].x;
          window = [v12 window];
          [v12 locationInView:0];
          [window _convertPointToSceneReferenceSpace:?];
          *p_x = v16;
          p_x[1] = v17;

          previousLocations = self->_previousLocations;
          v19 = &previousLocations[[(NSMutableArray *)self->_touches count]].x;
          window2 = [v12 window];
          [v12 locationInView:0];
          [window2 _convertPointToSceneReferenceSpace:?];
          *v19 = v21;
          v19[1] = v22;

          [(NSMutableArray *)self->_touches addObject:v12];
          ++v11;
        }

        while (v9 != v11);
        v9 = [beganCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    [(UIGestureRecognizer *)self _centroidOfTouches:self->_touches excludingEnded:1];
    self->_startLocation.x = v23;
    self->_startLocation.y = v24;
    v25 = _TimestampForTouches(self->_touches);
    self->_startTime = v25;
    self->_previousTime = v25;
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = _TimestampForTouches(self->_touches);
  if (v5 - self->_startTime > self->_maximumDuration && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    goto LABEL_14;
  }

  if (!self->_failed)
  {
    v6 = [(NSMutableArray *)self->_touches count]== self->_numberOfTouchesRequired;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = self->_touches;
    v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v31;
      do
      {
        v11 = 0;
        v12 = (16 * v9) | 8;
        do
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v30 + 1) + 8 * v11);
          window = [v13 window];
          [v13 locationInView:0];
          [window _convertPointToSceneReferenceSpace:?];
          v16 = v15;
          v18 = v17;

          v19 = (&self->_startLocations->x + v12);
          v20 = v16 - *(v19 - 1);
          v21 = v18 - *v19;
          view = [(UIGestureRecognizer *)self view];
          v23 = _convertSwipeOffsetFromSceneReferenceSpaceToView(view, v20, v21);
          v25 = v24;

          v6 &= [(UISwipeGestureRecognizer *)self _checkForSwipeWithDelta:v23 time:v25 currentPositionChange:v5 - self->_startTime currentTimeChange:v16 - *(self->_previousLocations + v12 - 8) indirect:v18 - *(&self->_previousLocations->x + v12), v5 - self->_previousTime];
          v26 = (&self->_previousLocations->x + v12);
          *(v26 - 1) = v16;
          *v26 = v18;
          ++v9;
          ++v11;
          v12 += 16;
        }

        while (v8 != v11);
        v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v8);
    }

    if (v6)
    {
      selfCopy2 = self;
      v28 = 3;
LABEL_15:
      [(UIGestureRecognizer *)selfCopy2 setState:v28];
      goto LABEL_16;
    }

    if (self->_failed)
    {
LABEL_14:
      selfCopy2 = self;
      v28 = 5;
      goto LABEL_15;
    }
  }

LABEL_16:
  self->_previousTime = v5;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  endedCopy = ended;
  v6 = [endedCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(endedCopy);
        }

        [(NSMutableArray *)self->_touches removeObject:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [endedCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if ([(NSMutableArray *)self->_touches count])
  {
    self->_failed = 1;
  }

  else
  {
    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  cancelledCopy = cancelled;
  v6 = [cancelledCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(cancelledCopy);
        }

        [(NSMutableArray *)self->_touches removeObject:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [cancelledCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if ([(NSMutableArray *)self->_touches count])
  {
    self->_failed = 1;
  }

  else
  {
    [(UIGestureRecognizer *)self setState:5];
  }
}

- (BOOL)shouldReceiveEvent:(id)event
{
  if ([event type] == 10)
  {
    return [event _scrollType] == 1 && -[UISwipeGestureRecognizer numberOfTouchesRequired](self, "numberOfTouchesRequired") == 1;
  }

  v6.receiver = self;
  v6.super_class = UISwipeGestureRecognizer;
  return [(UIGestureRecognizer *)&v6 shouldReceiveEvent:event];
}

- (void)_scrollingChangedWithEvent:(id)event
{
  phase = [event phase];
  if ((phase - 4) >= 2)
  {
    if (phase != 3)
    {
      if (phase == 2)
      {
        _allWindows = [event _allWindows];
        anyObject = [_allWindows anyObject];

        [event locationInView:anyObject];
        [anyObject _convertPointToSceneReferenceSpace:?];
        self->_startLocation.x = v7;
        self->_startLocation.y = v8;
        self->_previousLocation = self->_startLocation;
        [event timestamp];
        self->_startTime = v9;
        self->_previousTime = v9;
      }

      return;
    }

    [event timestamp];
    v11 = v10;
    if (v10 - self->_startTime > self->_maximumDuration && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
    {
      [(UIGestureRecognizer *)self setState:5];
      goto LABEL_21;
    }

    if (self->_failed)
    {
LABEL_21:
      self->_previousTime = v11;
      return;
    }

    _allWindows2 = [event _allWindows];
    anyObject2 = [_allWindows2 anyObject];

    [event _adjustedDeltaForPanWithAcceleration:0 honoringScrollDirectionPreference:0];
    v15 = v14 + self->_previousLocation.x;
    v17 = v16 + self->_previousLocation.y;
    v18 = v15 - self->_startLocation.x;
    v19 = v17 - self->_startLocation.y;
    view = [(UIGestureRecognizer *)self view];
    v21 = _convertSwipeOffsetFromSceneReferenceSpaceToView(view, v18, v19);
    v23 = v22;

    v24 = [(UISwipeGestureRecognizer *)self _checkForSwipeWithDelta:v21 time:v23 currentPositionChange:v11 - self->_startTime currentTimeChange:v15 - self->_previousLocation.x indirect:v17 - self->_previousLocation.y, v11 - self->_previousTime];
    self->_previousLocation.x = v15;
    self->_previousLocation.y = v17;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      if (!self->_failed)
      {
LABEL_19:

        goto LABEL_21;
      }

      v25 = 5;
    }

    [(UIGestureRecognizer *)self setState:v25];
    goto LABEL_19;
  }

  if ([(UIGestureRecognizer *)self state]<= UIGestureRecognizerStateChanged)
  {

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (CGPoint)locationInView:(id)view
{
  window = [view window];
  [window _convertPointFromSceneReferenceSpace:{self->_startLocation.x, self->_startLocation.y}];
  [view convertPoint:0 fromView:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)locationOfTouch:(unint64_t)touch inView:(id)view
{
  window = [view window];
  [window _convertPointFromSceneReferenceSpace:{self->_startLocations[touch].x, self->_startLocations[touch].y}];
  [view convertPoint:0 fromView:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)_appendSubclassDescription:(id)description
{
  if (self->_numberOfTouchesRequired != 1)
  {
    [description appendFormat:@"; numberOfTouchesRequired = %lu", self->_numberOfTouchesRequired];
  }

  if (self->_direction)
  {
    [description appendString:@"; direction = "];
    direction = self->_direction;
    if (direction)
    {
      [description appendString:@"right"];
      v6 = self->_direction;
      if ((v6 & 2) == 0)
      {
        if ((v6 & 4) != 0)
        {
LABEL_15:
          [description appendString:{@", "}];
LABEL_16:
          [description appendString:@"up"];
          if ((self->_direction & 8) == 0)
          {
            return;
          }

          goto LABEL_17;
        }

LABEL_11:
        if ((v6 & 8) == 0)
        {
          return;
        }

LABEL_17:
        [description appendString:{@", "}];
LABEL_18:

        [description appendString:@"down"];
        return;
      }

      [description appendString:{@", "}];
    }

    else if ((direction & 2) == 0)
    {
      if ((direction & 4) == 0)
      {
        if ((direction & 8) == 0)
        {
          return;
        }

        goto LABEL_18;
      }

      goto LABEL_16;
    }

    [description appendString:@"left"];
    v6 = self->_direction;
    if ((v6 & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }
}

@end