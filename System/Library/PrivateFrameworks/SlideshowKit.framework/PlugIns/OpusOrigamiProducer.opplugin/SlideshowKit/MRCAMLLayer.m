@interface MRCAMLLayer
- (MRCAMLLayer)init;
- (void)dealloc;
@end

@implementation MRCAMLLayer

- (MRCAMLLayer)init
{
  v9.receiver = self;
  v9.super_class = MRCAMLLayer;
  result = [(MRCAMLLayer *)&v9 init];
  if (result)
  {
    result->scaleZ = 1.0;
    __asm { FMOV            V0.2D, #1.0 }

    *&result->scaleX = _Q0;
    result->subScaleZ = 1.0;
    *&result->subScaleX = _Q0;
    __asm { FMOV            V0.2D, #0.5 }

    result->anchorPoint = _Q0;
  }

  return result;
}

- (void)dealloc
{
  [(MRCAMLLayer *)self setName:0];
  [(MRCAMLLayer *)self setAnimations:0];
  [(MRCAMLLayer *)self setSublayers:0];
  [(MRCAMLLayer *)self setStates:0];
  [(MRCAMLLayer *)self setMasks:0];
  v3.receiver = self;
  v3.super_class = MRCAMLLayer;
  [(MRCAMLLayer *)&v3 dealloc];
}

@end