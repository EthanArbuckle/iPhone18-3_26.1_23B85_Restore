@interface TIKeyboardTyperContinuousPathGenerator
- (CGPoint)currentPoint;
- (TIKeyboardTyperContinuousPathGenerator)initWithVelocity:(double)a3 timestamp:(double)a4 dt:(double)a5 stallDuration:(double)a6;
- (void)addTargetPoint:(CGPoint)a3;
- (void)step;
@end

@implementation TIKeyboardTyperContinuousPathGenerator

- (CGPoint)currentPoint
{
  x = self->_currentPoint.x;
  y = self->_currentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)step
{
  if ([(NSMutableArray *)self->_targets count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSMutableArray *)self->_targets objectAtIndexedSubscript:0];
      [v4 CGPointValue];
      v6 = v5;
      v8 = v7;

      if (hypot(v6 - self->_currentPoint.x, v8 - self->_currentPoint.y) >= 1.0e-10)
      {
        break;
      }

      [(NSMutableArray *)self->_targets removeObjectAtIndex:0];
      ++v3;
    }

    while ([(NSMutableArray *)self->_targets count]);
    v9 = v3;
  }

  else
  {
    v9 = 0.0;
  }

  if ([(NSMutableArray *)self->_targets count])
  {
    v10 = [(NSMutableArray *)self->_targets objectAtIndexedSubscript:0];
    [v10 CGPointValue];
    v19 = v12;
    v21 = v11;

    v13.f64[0] = v21;
    v13.f64[1] = v19;
    currentPoint = self->_currentPoint;
    v20 = vsubq_f64(v13, currentPoint);
    v14 = hypot(v20.f64[0], v20.f64[1]);
    dt = self->_dt;
    v16 = dt * self->_velocity;
    if (v14 <= v16)
    {
      v17 = v20;
    }

    else
    {
      v17 = vmulq_n_f64(v20, v16 / v14);
    }

    v18 = currentPoint;
  }

  else
  {
    v17 = *MEMORY[0x277CBF348];
    v18 = self->_currentPoint;
    dt = self->_dt;
  }

  self->_currentPoint = vaddq_f64(v17, v18);
  self->_currentTimestamp = self->_currentTimestamp + dt + self->_stallDuration * v9;
}

- (void)addTargetPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  targets = self->_targets;
  v7 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
  [(NSMutableArray *)targets addObject:v7];

  if ([(NSMutableArray *)self->_targets count]== 1)
  {
    self->_currentPoint.x = x;
    self->_currentPoint.y = y;
  }
}

- (TIKeyboardTyperContinuousPathGenerator)initWithVelocity:(double)a3 timestamp:(double)a4 dt:(double)a5 stallDuration:(double)a6
{
  v13.receiver = self;
  v13.super_class = TIKeyboardTyperContinuousPathGenerator;
  v9 = [(TIKeyboardTyperContinuousPathGenerator *)&v13 init:a3];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    targets = v9->_targets;
    v9->_targets = v10;

    v9->_velocity = a3;
    v9->_dt = a5;
    v9->_stallDuration = a6;
  }

  return v9;
}

@end