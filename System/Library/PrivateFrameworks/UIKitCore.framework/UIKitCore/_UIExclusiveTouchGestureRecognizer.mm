@interface _UIExclusiveTouchGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4;
- (CGPoint)accumulatedMovement;
- (CGPoint)maximumAbsoluteAccumulatedMovement;
- (id)description;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIExclusiveTouchGestureRecognizer

- (void)reset
{
  v5.receiver = self;
  v5.super_class = _UIExclusiveTouchGestureRecognizer;
  [(UIGestureRecognizer *)&v5 reset];
  self->_accumulatedMovement = *MEMORY[0x1E695EFF8];
  self->_achievedMaximumAbsoluteAccumulatedMovement = 0;
  v3 = [(UIGestureRecognizer *)self delegate];
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceNow];
  [v3 exclusiveTouchGestureRecognizer:self achievedMaximumAbsoluteAccumulatedMovement:0 timestamp:?];
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = _UIExclusiveTouchGestureRecognizer;
  v3 = [(UIGestureRecognizer *)&v9 description];
  v4 = [v3 mutableCopy];

  v5 = NSStringFromCGPoint(self->_maximumAbsoluteAccumulatedMovement);
  [v4 appendFormat:@"_maximumAbsoluteAccumulatedMovement %@\n", v5];

  v6 = NSStringFromCGPoint(self->_accumulatedMovement);
  [v4 appendFormat:@"_accumulatedMovement %@\n", v6];

  if (self->_achievedMaximumAbsoluteAccumulatedMovement)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v4 appendFormat:@"_achievedMaximumAbsoluteAccumulatedMovement %@\n", v7];

  return v4;
}

- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = _UIExclusiveTouchGestureRecognizer;
  v5 = [(UIGestureRecognizer *)&v7 _shouldReceiveTouch:a3 withEvent:a4];
  if (v5)
  {
    LOBYTE(v5) = [a3 _isPointerTouch] ^ 1;
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIExclusiveTouchGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:1];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = _UIExclusiveTouchGestureRecognizer;
  [(UIGestureRecognizer *)&v31 touchesMoved:a3 withEvent:a4];
  v7 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [(UIGestureRecognizer *)self view];
        [v13 previousLocationInView:v14];
        v16 = v15;
        v18 = v17;

        v19 = [(UIGestureRecognizer *)self view];
        [v13 locationInView:v19];
        v21 = v20;
        v23 = v22;

        v7 = v7 + vabdd_f64(v21, v16);
        v6 = v6 + vabdd_f64(v23, v18);
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  self->_accumulatedMovement.x = self->_accumulatedMovement.x + v7 / [v8 count];
  v24 = self->_accumulatedMovement.y + v6 / [v8 count];
  self->_accumulatedMovement.y = v24;
  if (self->_maximumAbsoluteAccumulatedMovement.x > 0.0 && self->_accumulatedMovement.x >= self->_maximumAbsoluteAccumulatedMovement.x || (y = self->_maximumAbsoluteAccumulatedMovement.y, y > 0.0) && v24 >= y)
  {
    if (!self->_achievedMaximumAbsoluteAccumulatedMovement)
    {
      self->_achievedMaximumAbsoluteAccumulatedMovement = 1;
      v26 = [(UIGestureRecognizer *)self delegate];
      [(UIGestureRecognizer *)self lastTouchTimestamp];
      [v26 exclusiveTouchGestureRecognizer:self achievedMaximumAbsoluteAccumulatedMovement:1 timestamp:?];
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = _UIExclusiveTouchGestureRecognizer;
  [(UIGestureRecognizer *)&v7 touchesEnded:a3 withEvent:a4];
  v5 = [(UIGestureRecognizer *)self _allActiveTouches];
  v6 = [v5 count];

  if (!v6)
  {
    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIExclusiveTouchGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:4];
}

- (CGPoint)maximumAbsoluteAccumulatedMovement
{
  x = self->_maximumAbsoluteAccumulatedMovement.x;
  y = self->_maximumAbsoluteAccumulatedMovement.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)accumulatedMovement
{
  x = self->_accumulatedMovement.x;
  y = self->_accumulatedMovement.y;
  result.y = y;
  result.x = x;
  return result;
}

@end