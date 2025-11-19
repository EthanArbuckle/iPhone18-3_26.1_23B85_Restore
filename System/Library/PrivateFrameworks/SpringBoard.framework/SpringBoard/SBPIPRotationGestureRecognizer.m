@interface SBPIPRotationGestureRecognizer
- (SBPIPRotationGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (SBPIPSystemGestureRecognizerDelegate)delegate;
- (void)reset;
- (void)setDelegate:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation SBPIPRotationGestureRecognizer

- (SBPIPRotationGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v10.receiver = self;
  v10.super_class = SBPIPRotationGestureRecognizer;
  v4 = [(SBPIPRotationGestureRecognizer *)&v10 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    v4->_maximumAbsoluteAccumulatedMovement.x = SBMagicHysteresisValue();
    v5->_maximumAbsoluteAccumulatedMovement.y = v6;
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    touches = v5->_touches;
    v5->_touches = v7;

    v5->_accumulatedMovement = *MEMORY[0x277CBF348];
    v5->_achievedMaximumAbsoluteAccumulatedMovement = 0;
  }

  return v5;
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBPIPRotationGestureRecognizer;
  [(SBPIPRotationGestureRecognizer *)&v3 setDelegate:a3];
}

- (SBPIPSystemGestureRecognizerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = SBPIPRotationGestureRecognizer;
  v2 = [(SBPIPRotationGestureRecognizer *)&v4 delegate];

  return v2;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17.receiver = self;
  v17.super_class = SBPIPRotationGestureRecognizer;
  [(SBPIPRotationGestureRecognizer *)&v17 touchesBegan:v6 withEvent:a4];
  if (self->_maximumNumberOfTouches)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([(NSMutableSet *)self->_touches count]>= self->_maximumNumberOfTouches)
          {

            [(SBPIPRotationGestureRecognizer *)self setState:5];
            goto LABEL_12;
          }

          [(NSMutableSet *)self->_touches addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = SBPIPRotationGestureRecognizer;
  [(SBPIPRotationGestureRecognizer *)&v16 touchesCancelled:v6 withEvent:a4];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NSMutableSet *)self->_touches removeObject:*(*(&v12 + 1) + 8 * v11++), v12];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = SBPIPRotationGestureRecognizer;
  [(SBPIPRotationGestureRecognizer *)&v16 touchesEnded:v6 withEvent:a4];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NSMutableSet *)self->_touches removeObject:*(*(&v12 + 1) + 8 * v11++), v12];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = SBPIPRotationGestureRecognizer;
  [(SBPIPRotationGestureRecognizer *)&v18 touchesMoved:v6 withEvent:a4];
  if (self->_failsPastHysteresis)
  {
    v7 = [(SBPIPRotationGestureRecognizer *)self state];
    if (!self->_achievedMaximumAbsoluteAccumulatedMovement)
    {
      v8 = SBTotalMovementForMovedTouches(self, v6) + self->_accumulatedMovement.x;
      v10 = v9 + self->_accumulatedMovement.y;
      self->_accumulatedMovement.x = v8;
      self->_accumulatedMovement.y = v10;
      if (!v7)
      {
        x = self->_maximumAbsoluteAccumulatedMovement.x;
        v15 = x <= 0.0 || v8 < x;
        if (!v15 || ((y = self->_maximumAbsoluteAccumulatedMovement.y, y > 0.0) ? (v17 = v10 < y) : (v17 = 1), !v17))
        {
          if (!self->_achievedMaximumAbsoluteAccumulatedMovement)
          {
            self->_achievedMaximumAbsoluteAccumulatedMovement = 1;
          }
        }
      }
    }

    v11 = [(SBPIPRotationGestureRecognizer *)self delegate];
    v12 = v11;
    v13 = self->_achievedMaximumAbsoluteAccumulatedMovement && v7 == 0;
    if (v13 && [v11 gestureRecognizerShouldFailForMovementPastHysteresis:self])
    {
      [(SBPIPRotationGestureRecognizer *)self setState:5];
    }
  }
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = SBPIPRotationGestureRecognizer;
  [(SBPIPRotationGestureRecognizer *)&v5 reset];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  touches = self->_touches;
  self->_touches = v3;

  self->_accumulatedMovement = *MEMORY[0x277CBF348];
  self->_achievedMaximumAbsoluteAccumulatedMovement = 0;
}

@end