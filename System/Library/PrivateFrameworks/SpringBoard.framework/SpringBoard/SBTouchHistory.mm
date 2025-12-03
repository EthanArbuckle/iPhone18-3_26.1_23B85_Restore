@interface SBTouchHistory
- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration;
- (SBTouchHistory)initWithDepth:(unint64_t)depth;
- (double)averageTouchPathAngleOverTimeDuration:(double)duration;
- (double)historyAtIndex:(void *)index;
- (int)touchHistoryDepthForTimeDuration:(double)duration forComputingDerivative:(BOOL)derivative;
- (void)dealloc;
- (void)reset;
- (void)updateWithLocation:(CGPoint)location timestamp:(double)timestamp;
- (void)updateWithLocation:(CGPoint)location timestamp:(double)timestamp touchLatency:(double)latency;
@end

@implementation SBTouchHistory

- (void)reset
{
  self->_peakSpeed = 0.0;
  self->_count = 0;
  self->_start = 0;
}

- (SBTouchHistory)initWithDepth:(unint64_t)depth
{
  v7.receiver = self;
  v7.super_class = SBTouchHistory;
  v4 = [(SBTouchHistory *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_depth = depth;
    v4->_history = malloc_type_malloc(24 * depth, 0x1000040504FFAC1uLL);
    v5->_peakSpeed = 0.0;
  }

  return v5;
}

- (void)dealloc
{
  free(self->_history);
  v3.receiver = self;
  v3.super_class = SBTouchHistory;
  [(SBTouchHistory *)&v3 dealloc];
}

- (void)updateWithLocation:(CGPoint)location timestamp:(double)timestamp
{
  y = location.y;
  x = location.x;
  v8 = CACurrentMediaTime() - timestamp;

  [(SBTouchHistory *)self updateWithLocation:x timestamp:y touchLatency:timestamp, v8];
}

- (void)updateWithLocation:(CGPoint)location timestamp:(double)timestamp touchLatency:(double)latency
{
  count = self->_count;
  if (count)
  {
    depth = self->_depth;
    if ((timestamp - self->_history[(count + self->_start - 1) % depth].var1) * 1000.0 < 1.0)
    {
      return;
    }
  }

  else
  {
    depth = self->_depth;
  }

  self->_lastTouchLatency = latency;
  start = self->_start;
  if (count == depth - 1)
  {
    start = (start + 1) % depth;
    self->_start = start;
    --count;
  }

  history = self->_history;
  self->_count = count + 1;
  p_var0 = &history[(count + start) % depth].var0;
  *p_var0 = location;
  p_var0[1].x = timestamp;
  [(SBTouchHistory *)self averageTouchVelocityOverTimeDuration:0.04];
  v13 = hypot(v11, v12);
  if (v13 > self->_peakSpeed)
  {
    self->_peakSpeed = v13;
  }
}

- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration
{
  duration = [(SBTouchHistory *)self touchHistoryDepthForTimeDuration:1 forComputingDerivative:self->_lastTouchLatency + duration];
  v6 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  if (duration)
  {
    v7 = duration;
    if (duration >= 1)
    {
      v8 = -1;
      do
      {
        history = self->_history;
        depth = self->_depth;
        v11 = v8 + self->_start + self->_count;
        p_x = &history[v11 % depth].var0.x;
        v13 = *p_x;
        v14 = p_x[1];
        v15 = &history[(v11 - 1) % depth].var0.x;
        v16 = *v15;
        v17 = v15[1];
        v18 = p_x[2] - v15[2];
        if ((BSFloatIsZero() & 1) == 0)
        {
          v6 = v6 + (v13 - v16) / v18;
          v5 = v5 + (v14 - v17) / v18;
        }

        --v8;
      }

      while (v7 + v8 != -1);
    }

    v6 = v6 / v7;
    v5 = v5 / v7;
  }

  v19 = v6;
  v20 = v5;
  result.y = v20;
  result.x = v19;
  return result;
}

- (double)averageTouchPathAngleOverTimeDuration:(double)duration
{
  v4 = [(SBTouchHistory *)self touchHistoryDepthForTimeDuration:1 forComputingDerivative:duration];
  if (!v4)
  {
    return 0.0;
  }

  v5 = v4;
  v6 = 0.0;
  if (v4 >= 1)
  {
    [(SBTouchHistory *)self averageTouchPathAngleOverTimeDuration:v4, &v8];
    v6 = v8;
  }

  return v6 / v5;
}

- (int)touchHistoryDepthForTimeDuration:(double)duration forComputingDerivative:(BOOL)derivative
{
  derivativeCopy = derivative;
  v7 = CACurrentMediaTime();
  count = self->_count;
  if (!count)
  {
    return 0;
  }

  v9 = 0;
  v10 = count - 1;
  do
  {
    if (!(v10 + v9))
    {
      return count - 1;
    }

    v11 = v7 - self->_history[(v10 + v9-- + self->_start) % self->_depth].var1;
  }

  while (v11 < duration);
  if (derivativeCopy)
  {
    return -v9;
  }

  else
  {
    return ~v9;
  }
}

- (double)historyAtIndex:(void *)index
{
  if (index)
  {
    return *(index[4] + 24 * ((index[3] + ~a2 + index[2]) % index[1]));
  }

  else
  {
    return 0.0;
  }
}

- (void)averageTouchPathAngleOverTimeDuration:(double *)a3 .cold.1(void *a1, unsigned int a2, double *a3)
{
  v5 = 0.0;
  v6 = -1;
  v7 = a2;
  do
  {
    if (a1)
    {
      v8 = v6 + a1[3] + a1[2];
      v9 = vsubq_f64(*(a1[4] + 24 * (v8 % a1[1])), *(a1[4] + 24 * ((v8 - 1) % a1[1])));
    }

    else
    {
      v9 = 0uLL;
    }

    v10 = atan2(-v9.f64[1], v9.f64[0]) * 57.2957795;
    if (v10 < 0.0)
    {
      v10 = v10 + 360.0;
    }

    v5 = v5 + v10;
    *a3 = v5;
    --v6;
  }

  while (v7 + v6 != -1);
}

@end