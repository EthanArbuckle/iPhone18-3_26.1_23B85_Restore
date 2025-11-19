@interface SFBubbleEstimator
+ (id)estimatorWithEnter:(int64_t)a3 exit:(int64_t)a4;
+ (id)estimatorWithEnter:(int64_t)a3 exit:(int64_t)a4 threshold:(double)a5;
- (BOOL)shouldExpandBubble;
- (double)velocity;
- (double)velocitySmoothed;
- (int64_t)updateWithRSSI:(int64_t)a3;
- (void)setThresholdSeconds:(double)a3;
@end

@implementation SFBubbleEstimator

+ (id)estimatorWithEnter:(int64_t)a3 exit:(int64_t)a4
{
  v4 = 0;
  if (a4 <= a3 && (a4 & a3) < 0)
  {
    v4 = objc_alloc_init(SFBubbleEstimator);
    [(SFBubbleEstimator *)v4 setRssiEnter:a3];
    [(SFBubbleEstimator *)v4 setRssiExit:a4];
  }

  return v4;
}

+ (id)estimatorWithEnter:(int64_t)a3 exit:(int64_t)a4 threshold:(double)a5
{
  if ((a4 & a3) < 0 != v5)
  {
    v6 = 0;
    if (a4 <= a3 && a5 > 0.0)
    {
      v6 = objc_alloc_init(SFBubbleEstimator);
      [(SFBubbleEstimator *)v6 setRssiEnter:a3];
      [(SFBubbleEstimator *)v6 setRssiExit:a4];
      [(SFBubbleEstimator *)v6 setThresholdSeconds:a5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)updateWithRSSI:(int64_t)a3
{
  if (a3 < 0)
  {
    rssiQueue = self->_rssiQueue;
    if (!rssiQueue)
    {
      v7 = objc_alloc_init(SFRSSIQueue);
      v8 = self->_rssiQueue;
      self->_rssiQueue = v7;

      rssiQueue = self->_rssiQueue;
    }

    [(SFRSSIQueue *)rssiQueue addSample:mach_absolute_time() atTicks:a3];
    v9 = [(SFBubbleEstimator *)self shouldExpandBubble];
    if (self->_insideBubble)
    {
      if (self->_rssiExit > a3)
      {
        *&self->_insideBubble = 0;
        self->_thresholdStartTicks = -1;
        return 2;
      }

      if (!self->_insideBubbleWithThreshold && self->_thresholdSeconds > 0.0)
      {
        mach_absolute_time();
        thresholdStartTicks = self->_thresholdStartTicks;
        UpTicksToSecondsF();
        if (v12 > self->_thresholdSeconds)
        {
          self->_insideBubbleWithThreshold = 1;
        }
      }
    }

    else
    {
      rssiEnter = self->_rssiEnter;
      if (v9)
      {
        rssiEnter -= 2;
      }

      if (rssiEnter <= a3)
      {
        v3 = 1;
        self->_insideBubble = 1;
        self->_thresholdStartTicks = mach_absolute_time();
        return v3;
      }
    }

    return 3;
  }

  return 0;
}

- (BOOL)shouldExpandBubble
{
  if (self->_preventBoost)
  {
    return 0;
  }

  [(SFBubbleEstimator *)self velocity];
  v5 = v4;
  [(SFBubbleEstimator *)self velocitySmoothed];
  if (v5 > 5.0)
  {
    return 1;
  }

  v7 = v5 > 1.0;
  if (v6 <= 1.0)
  {
    v7 = 0;
  }

  return v5 < 70.0 && v7;
}

- (double)velocity
{
  rssiQueue = self->_rssiQueue;
  if (!rssiQueue)
  {
    return 0.0;
  }

  [(SFRSSIQueue *)rssiQueue velocity];
  return result;
}

- (double)velocitySmoothed
{
  rssiQueue = self->_rssiQueue;
  if (!rssiQueue)
  {
    return 0.0;
  }

  [(SFRSSIQueue *)rssiQueue velocitySmoothed];
  return result;
}

- (void)setThresholdSeconds:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  self->_thresholdSeconds = a3;
}

@end