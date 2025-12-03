@interface TSWPSwipeGestureRecognizer
- (BOOL)p_swipeDirectionValidForAngle:(double)angle direction:(int)direction;
- (BOOL)p_swipeDirectionValidForXDiff:(double)diff yDiff:(double)yDiff;
- (BOOL)p_touchWasSwipe:(id)swipe movedFarOut:(BOOL *)out;
- (CGPoint)locationInView:(id)view;
- (void)dealloc;
- (void)p_recordTouches:(id)touches;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation TSWPSwipeGestureRecognizer

- (BOOL)p_swipeDirectionValidForAngle:(double)angle direction:(int)direction
{
  if (direction == 1)
  {
    v6 = 3.14159265;
  }

  else if (direction == 8)
  {
    v6 = -1.57079633;
  }

  else
  {
    v6 = 0.0;
    if (direction == 4)
    {
      v6 = 1.57079633;
    }
  }

  [(TSWPSwipeGestureRecognizer *)self p_angleDifferenceForAngle1:angle angle2:v6, v4, v5];
  return fabs(v7) <= 0.785398163;
}

- (BOOL)p_swipeDirectionValidForXDiff:(double)diff yDiff:(double)yDiff
{
  v5 = atan2(yDiff, diff);
  v6 = v5;
  mDirection = self->mDirection;
  if ((mDirection & 4) != 0)
  {
    if ([(TSWPSwipeGestureRecognizer *)self p_swipeDirectionValidForAngle:4 direction:v5])
    {
      return 1;
    }

    mDirection = self->mDirection;
  }

  if (mDirection)
  {
    v8 = 1;
    if ([(TSWPSwipeGestureRecognizer *)self p_swipeDirectionValidForAngle:1 direction:v6])
    {
      return v8;
    }

    mDirection = self->mDirection;
  }

  if ((mDirection & 8) != 0)
  {
    if ([(TSWPSwipeGestureRecognizer *)self p_swipeDirectionValidForAngle:8 direction:v6])
    {
      return 1;
    }

    mDirection = self->mDirection;
  }

  if ((mDirection & 2) == 0)
  {
    return 0;
  }

  return [(TSWPSwipeGestureRecognizer *)self p_swipeDirectionValidForAngle:2 direction:v6];
}

- (void)p_recordTouches:(id)touches
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [touches countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(touches);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (![(TSUPointerKeyDictionary *)self->mStartLocations objectForKeyedSubscript:v9])
        {
          mStartLocations = self->mStartLocations;
          v11 = MEMORY[0x277CCAE60];
          [v9 locationInView:{objc_msgSend(v9, "view")}];
          -[TSUPointerKeyDictionary setObject:forUncopiedKey:](mStartLocations, "setObject:forUncopiedKey:", [v11 valueWithCGPoint:?], v9);
        }
      }

      v6 = [touches countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = [(TSUPointerKeyDictionary *)self->mStartLocations count];
  if (self->mTouchCountAttained < v12)
  {
    self->mTouchCountAttained = v12;
  }
}

- (BOOL)p_touchWasSwipe:(id)swipe movedFarOut:(BOOL *)out
{
  *out = 0;
  v7 = [(TSUPointerKeyDictionary *)self->mStartLocations objectForKeyedSubscript:?];
  if (v7)
  {
    [v7 getValue:&v13];
    [swipe locationInView:{objc_msgSend(swipe, "view")}];
    if ((v9 - v14) * (v9 - v14) + (v8 - v13) * (v8 - v13) >= 2500.0)
    {
      *out = 1;
      return [TSWPSwipeGestureRecognizer p_swipeDirectionValidForXDiff:"p_swipeDirectionValidForXDiff:yDiff:" yDiff:?];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSwipeGestureRecognizer p_touchWasSwipe:movedFarOut:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSwipeGestureRecognizer.mm"), 109, @"invalid nil value for '%s'", "value"}];
  }

  return 0;
}

- (CGPoint)locationInView:(id)view
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(TSUPointerKeyDictionary *)self->mStartLocations count];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(TSUPointerKeyDictionary *)self->mStartLocations allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        [*(*(&v17 + 1) + 8 * i) locationInView:view];
        v11 = v11 + v13;
        v10 = v10 + v14;
      }

      v8 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  v15 = v11 / v5;
  v16 = v10 / v5;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = TSWPSwipeGestureRecognizer;
  [(TSWPSwipeGestureRecognizer *)&v10 touchesBegan:began withEvent:event];
  [objc_msgSend(began "anyObject")];
  self->mStartTime = v6;
  mStartLocations = self->mStartLocations;
  if (!mStartLocations)
  {
    mStartLocations = objc_alloc_init(MEMORY[0x277D6C348]);
    self->mStartLocations = mStartLocations;
  }

  [(TSUPointerKeyDictionary *)mStartLocations removeAllObjects];
  [(TSWPSwipeGestureRecognizer *)self p_recordTouches:began];
  v8 = [began count];
  mNumberOfTouchesRequired = self->mNumberOfTouchesRequired;
  if (![-[TSWPSwipeGestureRecognizer delegate](self "delegate")] || v8 > mNumberOfTouchesRequired)
  {
    [(TSWPSwipeGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSWPSwipeGestureRecognizer;
  [(TSWPSwipeGestureRecognizer *)&v17 touchesMoved:moved withEvent:event];
  [(TSWPSwipeGestureRecognizer *)self p_recordTouches:moved];
  if (self->mTouchCountAttained <= self->mNumberOfTouchesRequired && ([objc_msgSend(moved "anyObject")], v6 - self->mStartTime <= 0.150000006))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [moved countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(moved);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = 0;
          if (![(TSWPSwipeGestureRecognizer *)self p_touchWasSwipe:v11 movedFarOut:&v12]&& v12 == 1)
          {
            [(TSWPSwipeGestureRecognizer *)self setState:5];
          }
        }

        v8 = [moved countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [(TSWPSwipeGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v32 = *MEMORY[0x277D85DE8];
  [(TSWPSwipeGestureRecognizer *)self p_recordTouches:?];
  [objc_msgSend(ended "anyObject")];
  if (v7 - self->mStartTime <= 0.150000006)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [ended countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(ended);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v25 = 0;
          if ([(TSWPSwipeGestureRecognizer *)self p_touchWasSwipe:v13 movedFarOut:&v25])
          {
            v10 |= v25;
          }
        }

        v9 = [ended countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v14 = [(TSUPointerKeyDictionary *)self->mStartLocations count];
    if (v14 == [ended count])
    {
      if (((self->mTouchCountAttained == self->mNumberOfTouchesRequired) & v10) != 0)
      {
        v15 = 3;
      }

      else
      {
        v15 = 5;
      }

      [(TSWPSwipeGestureRecognizer *)self setState:v15];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = [ended countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(ended);
          }

          [(TSUPointerKeyDictionary *)self->mStartLocations removeObjectForKey:*(*(&v21 + 1) + 8 * j)];
        }

        v17 = [ended countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v17);
    }
  }

  else
  {
    [(TSWPSwipeGestureRecognizer *)self setState:5];
  }

  v20.receiver = self;
  v20.super_class = TSWPSwipeGestureRecognizer;
  [(TSWPSwipeGestureRecognizer *)&v20 touchesEnded:ended withEvent:event];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = TSWPSwipeGestureRecognizer;
  [(TSWPSwipeGestureRecognizer *)&v3 reset];
  [(TSWPSwipeGestureRecognizer *)self delegate];
  [TSUProtocolCast() didReset:self];
  self->mStartTime = -1.0;
  self->mTouchCountAttained = 0;
  [(TSUPointerKeyDictionary *)self->mStartLocations removeAllObjects];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPSwipeGestureRecognizer;
  [(TSWPSwipeGestureRecognizer *)&v3 dealloc];
}

@end