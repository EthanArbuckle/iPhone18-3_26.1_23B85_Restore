@interface UIScrollViewScrollAnimation
- (float)progressForFraction:(float)a3;
- (void)adjustForContentOffsetDelta:(CGPoint)a3;
- (void)dealloc;
- (void)setProgress:(float)a3;
@end

@implementation UIScrollViewScrollAnimation

- (void)dealloc
{
  v3 = [(UIAnimation *)self target];
  [v3 _clearContentOffsetAnimation:self];

  v4.receiver = self;
  v4.super_class = UIScrollViewScrollAnimation;
  [(UIScrollViewScrollAnimation *)&v4 dealloc];
}

- (void)adjustForContentOffsetDelta:(CGPoint)a3
{
  if (self->_adjustsForContentOffsetDelta)
  {
    y = a3.y;
    self->_originalOffset = vaddq_f64(a3, self->_originalOffset);
    self->_targetOffset = vaddq_f64(a3, self->_targetOffset);
  }
}

- (void)setProgress:(float)a3
{
  v5 = [(UIAnimation *)self target];
  x = self->_targetOffset.x;
  y = self->_targetOffset.y;
  v18 = v5;
  if (self->_targetOffsetValidAtStart)
  {
    if ([v5 _isAutomaticContentOffsetAdjustmentEnabled])
    {
      [v18 _adjustedContentOffsetForContentOffset:{x, y}];
      x = v8;
      y = v9;
    }

    v5 = v18;
  }

  v10 = *&self->_accuracy;
  v11 = self->_originalOffset.x;
  v12 = self->_originalOffset.y;
  v13.f64[0] = (x - v11) * a3;
  v13.f64[1] = (y - v12) * a3;
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
  [v5 _skipNextStartOffsetAdjustment];
  [v18 setContentOffset:{v16, v17}];
}

- (float)progressForFraction:(float)a3
{
  result = 1.0;
  if (a3 != 1.0)
  {
    customAnimation = self->_customAnimation;
    if (customAnimation)
    {
      v7 = [(CABasicAnimation *)customAnimation timingFunction];

      if (v7)
      {
        v8 = [(CABasicAnimation *)self->_customAnimation timingFunction];
        *&v9 = a3;
        [v8 _solveForInput:v9];
        a3 = v10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = self->_customAnimation;
        *&v11 = a3;

        [(CABasicAnimation *)v12 _solveForInput:v11];
      }

      else
      {
        return a3;
      }
    }

    else
    {
      v14.receiver = self;
      v14.super_class = UIScrollViewScrollAnimation;
      *&v13 = a3;
      [(UIAnimation *)&v14 progressForFraction:v13];
    }
  }

  return result;
}

@end