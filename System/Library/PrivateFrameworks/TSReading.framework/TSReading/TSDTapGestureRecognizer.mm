@interface TSDTapGestureRecognizer
- (CGPoint)firstTapLocation;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation TSDTapGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if ([objc_msgSend(a4 "allTouches")] < 2)
  {
    v12.receiver = self;
    v12.super_class = TSDTapGestureRecognizer;
    [(TSDTapGestureRecognizer *)&v12 touchesBegan:a3 withEvent:a4];
    v9 = [a3 anyObject];
    if (!self->mSavedFirstTapLocation)
    {
      [(TSDTapGestureRecognizer *)self locationInView:0];
      self->mFirstTapLocation.x = v10;
      self->mFirstTapLocation.y = v11;
      self->mSavedFirstTapLocation = 1;
    }

    self->mTapCount = [v9 tapCount];
  }

  else
  {
    if ([(TSDTapGestureRecognizer *)self state])
    {
      v7 = self;
      v8 = 4;
    }

    else
    {
      v7 = self;
      v8 = 5;
    }

    [(TSDTapGestureRecognizer *)v7 setState:v8];
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