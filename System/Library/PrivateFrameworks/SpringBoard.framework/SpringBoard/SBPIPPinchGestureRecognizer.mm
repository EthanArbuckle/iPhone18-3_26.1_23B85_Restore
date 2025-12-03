@interface SBPIPPinchGestureRecognizer
- (SBPIPPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (SBPIPSystemGestureRecognizerDelegate)delegate;
- (void)reset;
- (void)setDelegate:(id)delegate;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SBPIPPinchGestureRecognizer

- (SBPIPPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v10.receiver = self;
  v10.super_class = SBPIPPinchGestureRecognizer;
  v4 = [(UIPinchGestureRecognizer *)&v10 initWithTarget:target action:action];
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

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = SBPIPPinchGestureRecognizer;
  [(SBPIPPinchGestureRecognizer *)&v3 setDelegate:delegate];
}

- (SBPIPSystemGestureRecognizerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = SBPIPPinchGestureRecognizer;
  delegate = [(SBPIPPinchGestureRecognizer *)&v4 delegate];

  return delegate;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  beganCopy = began;
  v17.receiver = self;
  v17.super_class = SBPIPPinchGestureRecognizer;
  [(SBPIPPinchGestureRecognizer *)&v17 touchesBegan:beganCopy withEvent:event];
  if (self->_maximumNumberOfTouches)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = beganCopy;
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

            [(SBPIPPinchGestureRecognizer *)self setState:5];
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

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  cancelledCopy = cancelled;
  v16.receiver = self;
  v16.super_class = SBPIPPinchGestureRecognizer;
  [(SBPIPPinchGestureRecognizer *)&v16 touchesCancelled:cancelledCopy withEvent:event];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = cancelledCopy;
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v16.receiver = self;
  v16.super_class = SBPIPPinchGestureRecognizer;
  [(SBPIPPinchGestureRecognizer *)&v16 touchesEnded:endedCopy withEvent:event];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = endedCopy;
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

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  v18.receiver = self;
  v18.super_class = SBPIPPinchGestureRecognizer;
  [(SBPIPPinchGestureRecognizer *)&v18 touchesMoved:movedCopy withEvent:event];
  if (self->_failsPastHysteresis)
  {
    state = [(SBPIPPinchGestureRecognizer *)self state];
    if (!self->_achievedMaximumAbsoluteAccumulatedMovement)
    {
      v8 = SBTotalMovementForMovedTouches(self, movedCopy) + self->_accumulatedMovement.x;
      v10 = v9 + self->_accumulatedMovement.y;
      self->_accumulatedMovement.x = v8;
      self->_accumulatedMovement.y = v10;
      if (!state)
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

    delegate = [(SBPIPPinchGestureRecognizer *)self delegate];
    v12 = delegate;
    v13 = self->_achievedMaximumAbsoluteAccumulatedMovement && state == 0;
    if (v13 && [delegate gestureRecognizerShouldFailForMovementPastHysteresis:self])
    {
      [(SBPIPPinchGestureRecognizer *)self setState:5];
    }
  }
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = SBPIPPinchGestureRecognizer;
  [(SBPIPPinchGestureRecognizer *)&v5 reset];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  touches = self->_touches;
  self->_touches = v3;

  self->_accumulatedMovement = *MEMORY[0x277CBF348];
  self->_achievedMaximumAbsoluteAccumulatedMovement = 0;
}

@end