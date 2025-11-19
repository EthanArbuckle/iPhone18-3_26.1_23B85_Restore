@interface StocksTapDragGestureRecognizer
- (CGRect)touchableBounds;
- (StocksTapDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchDelayTimerFired:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation StocksTapDragGestureRecognizer

- (StocksTapDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v5.receiver = self;
  v5.super_class = StocksTapDragGestureRecognizer;
  result = [(StocksTapDragGestureRecognizer *)&v5 initWithTarget:a3 action:a4];
  if (result)
  {
    result->_minimumNumberOfTouches = 1;
    result->_maximumNumberOfTouches = 1;
  }

  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v45 = a4;
  if (CGRectEqualToRect(self->_touchableBounds, *MEMORY[0x277CBF3A0]))
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v44 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v51;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v50 + 1) + 8 * i);
          v14 = [(StocksTapDragGestureRecognizer *)self view];
          [v13 locationInView:v14];
          v57.x = v15;
          v57.y = v16;
          v17 = CGRectContainsPoint(self->_touchableBounds, v57);

          if (v17)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v10);
    }

    v6 = v44;
  }

  touches = self->_touches;
  if (!touches)
  {
    if ([v7 count] <= self->_maximumNumberOfTouches)
    {
      v33 = v7;
      v28 = self->_touches;
      self->_touches = v33;
    }

    else
    {
      v26 = v6;
      v27 = MEMORY[0x277CBEB58];
      v28 = [v7 allObjects];
      v29 = [v28 subarrayWithRange:{0, self->_maximumNumberOfTouches}];
      v30 = v27;
      v6 = v26;
      v31 = [v30 setWithArray:v29];
      v32 = self->_touches;
      self->_touches = v31;
    }

    if ([(NSMutableSet *)self->_touches count]< self->_minimumNumberOfTouches)
    {
      goto LABEL_43;
    }

    if ([(NSMutableSet *)self->_touches count]== 1 && self->_requiredPressDelay > 0.0)
    {
      v34 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_touchDelayTimerFired_ selector:0 userInfo:0 repeats:?];
      touchDelayTimer = self->_touchDelayTimer;
      self->_touchDelayTimer = v34;

      p_startingPosition = &self->_startingPosition;
      v37 = [(NSMutableSet *)self->_touches anyObject];
      v38 = [(StocksTapDragGestureRecognizer *)self view];
      [v37 locationInView:v38];
      p_startingPosition->x = v39;
      p_startingPosition->y = v40;

      goto LABEL_43;
    }

LABEL_41:
    v42 = self;
    v43 = 1;
    goto LABEL_42;
  }

  if ([(NSMutableSet *)touches count]>= self->_maximumNumberOfTouches)
  {
    goto LABEL_43;
  }

  v44 = v6;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v19 = v7;
  v20 = [v19 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v47;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v46 + 1) + 8 * j);
        if ([(NSMutableSet *)self->_touches count]>= self->_maximumNumberOfTouches)
        {
          [(StocksTapDragGestureRecognizer *)self ignoreTouch:v25 forEvent:v45];
        }

        else
        {
          [(NSMutableSet *)self->_touches addObject:v25];
          v22 = 1;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v41 = self->_touchDelayTimer;
  if (v41)
  {
    [(NSTimer *)v41 fire];
    v6 = v44;
    goto LABEL_43;
  }

  v6 = v44;
  if (![(StocksTapDragGestureRecognizer *)self state]&& [(NSMutableSet *)self->_touches count]>= self->_minimumNumberOfTouches)
  {
    goto LABEL_41;
  }

  if ((v22 & 1) != 0 && [(StocksTapDragGestureRecognizer *)self state]== 2)
  {
    v42 = self;
    v43 = 2;
LABEL_42:
    [(StocksTapDragGestureRecognizer *)v42 setState:v43, v44];
  }

LABEL_43:
}

- (void)touchDelayTimerFired:(id)a3
{
  [(NSTimer *)self->_touchDelayTimer invalidate];
  touchDelayTimer = self->_touchDelayTimer;
  self->_touchDelayTimer = 0;

  [(StocksTapDragGestureRecognizer *)self setState:1];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v15 = a3;
  v5 = [v15 anyObject];
  v6 = [(StocksTapDragGestureRecognizer *)self view];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  touchDelayTimer = self->_touchDelayTimer;
  if (touchDelayTimer)
  {
    v12 = vabdd_f64(v10, self->_startingPosition.y);
    if (vabdd_f64(v8, self->_startingPosition.x) > 5.0 || v12 > 5.0)
    {
      [(NSTimer *)touchDelayTimer invalidate];
      v14 = self->_touchDelayTimer;
      self->_touchDelayTimer = 0;
    }
  }

  if ([(NSMutableSet *)self->_touches intersectsSet:v15]&& [(StocksTapDragGestureRecognizer *)self state]== 2)
  {
    [(StocksTapDragGestureRecognizer *)self setState:2];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  if ([(NSMutableSet *)self->_touches intersectsSet:v6])
  {
    [(NSMutableSet *)self->_touches minusSet:v6];
    if ([(NSMutableSet *)self->_touches count]>= self->_minimumNumberOfTouches)
    {
      v5 = 2;
    }

    else if (self->_touchDelayTimer)
    {
      v5 = 5;
    }

    else
    {
      v5 = 3;
    }

    [(StocksTapDragGestureRecognizer *)self setState:v5];
  }

  MEMORY[0x2821F9730]();
}

- (void)reset
{
  touches = self->_touches;
  self->_touches = 0;

  [(NSTimer *)self->_touchDelayTimer invalidate];
  touchDelayTimer = self->_touchDelayTimer;
  self->_touchDelayTimer = 0;

  self->_startingPosition = *MEMORY[0x277CBF348];
}

- (CGRect)touchableBounds
{
  x = self->_touchableBounds.origin.x;
  y = self->_touchableBounds.origin.y;
  width = self->_touchableBounds.size.width;
  height = self->_touchableBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end