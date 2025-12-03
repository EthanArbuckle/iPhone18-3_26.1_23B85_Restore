@interface TSDTapGestureRecognizer
- (CGPoint)firstTapLocation;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation TSDTapGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([objc_msgSend(event "allTouches")] < 2)
  {
    v12.receiver = self;
    v12.super_class = TSDTapGestureRecognizer;
    [(TSDTapGestureRecognizer *)&v12 touchesBegan:began withEvent:event];
    anyObject = [began anyObject];
    if (!self->mSavedFirstTapLocation)
    {
      [(TSDTapGestureRecognizer *)self locationInView:0];
      self->mFirstTapLocation.x = v10;
      self->mFirstTapLocation.y = v11;
      self->mSavedFirstTapLocation = 1;
    }

    self->mTapCount = [anyObject tapCount];
  }

  else
  {
    if ([(TSDTapGestureRecognizer *)self state])
    {
      selfCopy2 = self;
      v8 = 4;
    }

    else
    {
      selfCopy2 = self;
      v8 = 5;
    }

    [(TSDTapGestureRecognizer *)selfCopy2 setState:v8];
  }
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = TSDTapGestureRecognizer;
  [(TSDTapGestureRecognizer *)&v3 reset];
  self->mTapCount = 0;
  self->mFirstTapLocation = *MEMORY[0x277CBF348];
  self->mSavedFirstTapLocation = 0;
}

- (CGPoint)firstTapLocation
{
  x = self->mFirstTapLocation.x;
  y = self->mFirstTapLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end