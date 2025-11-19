@interface UISwipeGestureRecognizer
- (BOOL)shouldReceiveEvent:(id)a3;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)locationOfTouch:(unint64_t)a3 inView:(id)a4;
- (UISwipeGestureRecognizer)initWithCoder:(id)a3;
- (UISwipeGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)startPoint;
- (uint64_t)_checkForSwipeWithDelta:(double)a3 time:(double)a4 currentPositionChange:(double)a5 currentTimeChange:(double)a6 indirect:(double)a7;
- (void)_appendSubclassDescription:(id)a3;
- (void)_resetGestureRecognizer;
- (void)_scrollingChangedWithEvent:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setNumberOfTouchesRequired:(NSUInteger)numberOfTouchesRequired;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (UISwipeGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = UISwipeGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    _UISwipeGestureRecognizerCommonInit(v4);
    v6 = v5;
  }

  return v5;
}

- (UISwipeGestureRecognizer)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = UISwipeGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithCoder:?];
  v5 = v4;
  if (v4)
  {
    _UISwipeGestureRecognizerCommonInit(v4);
    if ([a3 containsValueForKey:@"UISwipeGestureRecognizer.numberOfTouchesRequired"])
    {
      v5->_numberOfTouchesRequired = [a3 decodeIntegerForKey:@"UISwipeGestureRecognizer.numberOfTouchesRequired"];
    }

    if ([a3 containsValueForKey:@"UISwipeGestureRecognizer.direction"])
    {
      v5->_direction = [a3 decodeIntegerForKey:@"UISwipeGestureRecognizer.direction"];
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = UISwipeGestureRecognizer;
  [(UIGestureRecognizer *)&v7 encodeWithCoder:?];
  numberOfTouchesRequired = self->_numberOfTouchesRequired;
  if (numberOfTouchesRequired != 1)
  {
    [a3 encodeInteger:numberOfTouchesRequired forKey:@"UISwipeGestureRecognizer.numberOfTouchesRequired"];
  }

  direction = self->_direction;
  if (direction != 1)
  {
    [a3 encodeInteger:direction forKey:@"UISwipeGestureRecognizer.direction"];
  }
}

- (double)startPoint
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = [a1 view];
  v3 = [v2 window];
  [v3 _convertPointFromSceneReferenceSpace:{a1[47], a1[48]}];
  [v2 convertPoint:0 fromView:?];
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

- (uint64_t)_checkForSwipeWithDelta:(double)a3 time:(double)a4 currentPositionChange:(double)a5 currentTimeChange:(double)a6 indirect:(double)a7
{
  if (!a1)
  {
    return 0;
  }

  v8 = *(a1 + 288);
  v9 = 3.40282347e38;
  v10 = *(a1 + 296);
  if (a2)
  {
    v8 = v8 + v8;
  }

  v11 = fmin(a5, 0.5);
  v12 = 1.0 - v11 * (1.0 - *(a1 + 336));
  v13 = v8 * v12;
  if (v8 == 3.40282347e38)
  {
    v13 = 3.40282347e38;
  }

  v14 = 1.0 - v11 * (1.0 - *(a1 + 344));
  if (v10 == 3.40282347e38)
  {
    v15 = 3.40282347e38;
  }

  else
  {
    v15 = v10 * v14;
  }

  v16 = *(a1 + 304);
  if (v16 == 3.40282347e38)
  {
    v17 = 3.40282347e38;
  }

  else
  {
    v17 = v12 * v16;
  }

  v18 = *(a1 + 312);
  v19 = v14 * v18;
  if (v18 != 3.40282347e38)
  {
    v9 = v19;
  }

  v20 = *(a1 + 368);
  v21 = v20 & 3;
  if (v21 == 2)
  {
    if (a3 > *(a1 + 320))
    {
      goto LABEL_29;
    }
  }

  else if (v21 == 1 && a3 < -*(a1 + 320))
  {
    goto LABEL_29;
  }

  v22 = v20 & 0xC;
  if (v22 == 8)
  {
    if (a4 >= -*(a1 + 320))
    {
      goto LABEL_24;
    }

LABEL_29:
    v21 = 0;
LABEL_30:
    *(a1 + 440) = 1;
    return v21;
  }

  if (v22 == 4 && a4 > *(a1 + 320))
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
    v23 = fabs(a3);
    if (v23 > v15)
    {
      goto LABEL_29;
    }

    v24 = fabs(a4);
    if (v24 > v9)
    {
      goto LABEL_29;
    }

    v26 = v23 < v13 || v24 < v17;
    if (!v26 && fabs(a6 / a8) >= *(a1 + 328))
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
  v27 = fabs(a4);
  v28 = fabs(a3);
  if (v27 > v15 || v28 > v9)
  {
    goto LABEL_30;
  }

  v30 = v27 < v13 || v28 < v17;
  if (!v30 && fabs(a7 / a8) >= *(a1 + 328))
  {
    return 1;
  }

  return v21;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_failed || (v6 = -[NSMutableArray count](self->_touches, "count", a3, a4), [a3 count] + v6 > self->_numberOfTouchesRequired))
  {
    self->_failed = 1;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = a3;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          startLocations = self->_startLocations;
          p_x = &startLocations[[(NSMutableArray *)self->_touches count]].x;
          v15 = [v12 window];
          [v12 locationInView:0];
          [v15 _convertPointToSceneReferenceSpace:?];
          *p_x = v16;
          p_x[1] = v17;

          previousLocations = self->_previousLocations;
          v19 = &previousLocations[[(NSMutableArray *)self->_touches count]].x;
          v20 = [v12 window];
          [v12 locationInView:0];
          [v20 _convertPointToSceneReferenceSpace:?];
          *v19 = v21;
          v19[1] = v22;

          [(NSMutableArray *)self->_touches addObject:v12];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
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

- (void)touchesMoved:(id)a3 withEvent:(id)a4
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
          v14 = [v13 window];
          [v13 locationInView:0];
          [v14 _convertPointToSceneReferenceSpace:?];
          v16 = v15;
          v18 = v17;

          v19 = (&self->_startLocations->x + v12);
          v20 = v16 - *(v19 - 1);
          v21 = v18 - *v19;
          v22 = [(UIGestureRecognizer *)self view];
          v23 = _convertSwipeOffsetFromSceneReferenceSpaceToView(v22, v20, v21);
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
      v27 = self;
      v28 = 3;
LABEL_15:
      [(UIGestureRecognizer *)v27 setState:v28];
      goto LABEL_16;
    }

    if (self->_failed)
    {
LABEL_14:
      v27 = self;
      v28 = 5;
      goto LABEL_15;
    }
  }

LABEL_16:
  self->_previousTime = v5;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(NSMutableArray *)self->_touches removeObject:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(NSMutableArray *)self->_touches removeObject:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)shouldReceiveEvent:(id)a3
{
  if ([a3 type] == 10)
  {
    return [a3 _scrollType] == 1 && -[UISwipeGestureRecognizer numberOfTouchesRequired](self, "numberOfTouchesRequired") == 1;
  }

  v6.receiver = self;
  v6.super_class = UISwipeGestureRecognizer;
  return [(UIGestureRecognizer *)&v6 shouldReceiveEvent:a3];
}

- (void)_scrollingChangedWithEvent:(id)a3
{
  v5 = [a3 phase];
  if ((v5 - 4) >= 2)
  {
    if (v5 != 3)
    {
      if (v5 == 2)
      {
        v6 = [a3 _allWindows];
        v26 = [v6 anyObject];

        [a3 locationInView:v26];
        [v26 _convertPointToSceneReferenceSpace:?];
        self->_startLocation.x = v7;
        self->_startLocation.y = v8;
        self->_previousLocation = self->_startLocation;
        [a3 timestamp];
        self->_startTime = v9;
        self->_previousTime = v9;
      }

      return;
    }

    [a3 timestamp];
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

    v12 = [a3 _allWindows];
    v13 = [v12 anyObject];

    [a3 _adjustedDeltaForPanWithAcceleration:0 honoringScrollDirectionPreference:0];
    v15 = v14 + self->_previousLocation.x;
    v17 = v16 + self->_previousLocation.y;
    v18 = v15 - self->_startLocation.x;
    v19 = v17 - self->_startLocation.y;
    v20 = [(UIGestureRecognizer *)self view];
    v21 = _convertSwipeOffsetFromSceneReferenceSpaceToView(v20, v18, v19);
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

- (CGPoint)locationInView:(id)a3
{
  v5 = [a3 window];
  [v5 _convertPointFromSceneReferenceSpace:{self->_startLocation.x, self->_startLocation.y}];
  [a3 convertPoint:0 fromView:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)locationOfTouch:(unint64_t)a3 inView:(id)a4
{
  v7 = [a4 window];
  [v7 _convertPointFromSceneReferenceSpace:{self->_startLocations[a3].x, self->_startLocations[a3].y}];
  [a4 convertPoint:0 fromView:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)_appendSubclassDescription:(id)a3
{
  if (self->_numberOfTouchesRequired != 1)
  {
    [a3 appendFormat:@"; numberOfTouchesRequired = %lu", self->_numberOfTouchesRequired];
  }

  if (self->_direction)
  {
    [a3 appendString:@"; direction = "];
    direction = self->_direction;
    if (direction)
    {
      [a3 appendString:@"right"];
      v6 = self->_direction;
      if ((v6 & 2) == 0)
      {
        if ((v6 & 4) != 0)
        {
LABEL_15:
          [a3 appendString:{@", "}];
LABEL_16:
          [a3 appendString:@"up"];
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
        [a3 appendString:{@", "}];
LABEL_18:

        [a3 appendString:@"down"];
        return;
      }

      [a3 appendString:{@", "}];
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

    [a3 appendString:@"left"];
    v6 = self->_direction;
    if ((v6 & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }
}

@end