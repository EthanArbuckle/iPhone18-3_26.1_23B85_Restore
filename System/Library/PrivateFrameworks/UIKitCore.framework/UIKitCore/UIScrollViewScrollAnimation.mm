@interface UIScrollViewScrollAnimation
- (float)progressForFraction:(float)fraction;
- (void)adjustForContentOffsetDelta:(CGPoint)delta;
- (void)dealloc;
- (void)setProgress:(float)progress;
@end

@implementation UIScrollViewScrollAnimation

- (void)dealloc
{
  target = [(UIAnimation *)self target];
  [target _clearContentOffsetAnimation:self];

  v4.receiver = self;
  v4.super_class = UIScrollViewScrollAnimation;
  [(UIScrollViewScrollAnimation *)&v4 dealloc];
}

- (void)adjustForContentOffsetDelta:(CGPoint)delta
{
  if (self->_adjustsForContentOffsetDelta)
  {
    y = delta.y;
    self->_originalOffset = vaddq_f64(delta, self->_originalOffset);
    self->_targetOffset = vaddq_f64(delta, self->_targetOffset);
  }
}

- (void)setProgress:(float)progress
{
  target = [(UIAnimation *)self target];
  x = self->_targetOffset.x;
  y = self->_targetOffset.y;
  v18 = target;
  if (self->_targetOffsetValidAtStart)
  {
    if ([target _isAutomaticContentOffsetAdjustmentEnabled])
    {
      [v18 _adjustedContentOffsetForContentOffset:{x, y}];
      x = v8;
      y = v9;
    }

    target = v18;
  }

  v10 = *&self->_accuracy;
  v11 = self->_originalOffset.x;
  v12 = self->_originalOffset.y;
  v13.f64[0] = (x - v11) * progress;
  v13.f64[1] = (y - v12) * progress;
  if (*&v10 == 1.0)
  {
    v15 = vrndaq_f64(v13);
  }

  else
  {
    v14 = vrndmq_f64(v13);
    v15 = vaddq_f64(v14, vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(v13, v14), *&v10)), vdupq_lane_s64(v10, 0)));
  }

  v16 = v11 + v15.f64[0];
  v17 = v12 + v15.f64[1];
  [target _skipNextStartOffsetAdjustment];
  [v18 setContentOffset:{v16, v17}];
}

- (float)progressForFraction:(float)fraction
{
  result = 1.0;
  if (fraction != 1.0)
  {
    customAnimation = self->_customAnimation;
    if (customAnimation)
    {
      timingFunction = [(CABasicAnimation *)customAnimation timingFunction];

      if (timingFunction)
      {
        timingFunction2 = [(CABasicAnimation *)self->_customAnimation timingFunction];
        *&v9 = fraction;
        [timingFunction2 _solveForInput:v9];
        fraction = v10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = self->_customAnimation;
        *&v11 = fraction;

        [(CABasicAnimation *)v12 _solveForInput:v11];
      }

      else
      {
        return fraction;
      }
    }

    else
    {
      v14.receiver = self;
      v14.super_class = UIScrollViewScrollAnimation;
      *&v13 = fraction;
      [(UIAnimation *)&v14 progressForFraction:v13];
    }
  }

  return result;
}

@end