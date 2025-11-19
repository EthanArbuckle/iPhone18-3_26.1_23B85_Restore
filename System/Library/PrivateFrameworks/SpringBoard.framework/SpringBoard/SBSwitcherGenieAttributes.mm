@interface SBSwitcherGenieAttributes
+ (id)genieAttributesForIconPosition:(CGPoint)a3 windowPosition:(CGPoint)a4 initialVelocity:(CGPoint)a5 windowSize:(CGSize)a6 minimizedSize:(CGSize)a7 minimizedScale:(double)a8 containerSize:(CGSize)a9 minimumOutsetSize:(CGSize)a10 genieScale:(double)a11 multiplier:(CGPoint)a12 active:(double)a13 glassHighlight:(SBSwitcherGenieGlassHighlight *)a14 layoutSettings:(id)a15;
- (CGPoint)counterOffsetForSize:(CGSize)a3;
- (CGPoint)genieAmount;
- (CGPoint)iconPosition;
- (CGPoint)initialVelocity;
- (CGPoint)minimizedPositionForSize:(CGSize)a3;
- (CGPoint)minimizedProgress;
- (CGPoint)multiplier;
- (CGPoint)windowPosition;
- (CGSize)containerSize;
- (CGSize)meshContainerOutset;
- (CGSize)meshContainerSizeForSize:(CGSize)a3;
- (CGSize)minimizedSize;
- (CGSize)minimumOutsetSize;
- (CGSize)windowSize;
- (SBSwitcherGenieGlassHighlight)glassHighlight;
- (double)scaleProgress;
- (void)setGlassHighlight:(SBSwitcherGenieGlassHighlight *)a3;
@end

@implementation SBSwitcherGenieAttributes

+ (id)genieAttributesForIconPosition:(CGPoint)a3 windowPosition:(CGPoint)a4 initialVelocity:(CGPoint)a5 windowSize:(CGSize)a6 minimizedSize:(CGSize)a7 minimizedScale:(double)a8 containerSize:(CGSize)a9 minimumOutsetSize:(CGSize)a10 genieScale:(double)a11 multiplier:(CGPoint)a12 active:(double)a13 glassHighlight:(SBSwitcherGenieGlassHighlight *)a14 layoutSettings:(id)a15
{
  height = a7.height;
  width = a7.width;
  v28 = a6.height;
  v27 = a6.width;
  y = a5.y;
  x = a5.x;
  v19 = a4.y;
  v20 = a4.x;
  v21 = a3.y;
  v22 = a3.x;
  v23 = *&a9.width;
  v24 = objc_opt_new();
  [v24 setActive:*&width];
  [v24 setIconPosition:{v22, v21}];
  [v24 setWindowPosition:{v20, v19}];
  [v24 setInitialVelocity:{x, y}];
  [v24 setWindowSize:{v27, v28}];
  [v24 setMinimizedSize:{a8, a11}];
  [v24 setMinimizedScale:a12.x];
  [v24 setContainerSize:{a12.y, a13}];
  [v24 setMinimumOutsetSize:{*&a14, *&a15}];
  [v24 setGenieScale:v32];
  [v24 setMultiplier:{v33, v34}];
  v25 = *(*&height + 16);
  v29[0] = **&height;
  v29[1] = v25;
  v30 = *(*&height + 32);
  [v24 setGlassHighlight:v29];
  [v24 setLayoutSettings:v23];

  return v24;
}

- (CGPoint)genieAmount
{
  x = self->_windowPosition.x;
  v23 = self->_initialVelocity.x;
  v3 = self->_windowPosition.y + self->_initialVelocity.y * 0.15;
  v4 = self->_iconPosition.x;
  width = self->_windowSize.width;
  v6 = (self->_iconPosition.y - (v3 - self->_windowSize.height * 0.5) + self->_iconPosition.y - (v3 - self->_windowSize.height * 0.5)) / (v3 + self->_windowSize.height * 0.5 - (v3 - self->_windowSize.height * 0.5)) + -1.0;
  v7 = fmax(v6, -1.0);
  v8 = fmin(v7, 1.0);
  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v11 = v7 >= 1.0;
    v12 = (v4 - (x + v23 * 0.15 - width * 0.5) + v4 - (x + v23 * 0.15 - width * 0.5)) / (x + v23 * 0.15 + width * 0.5 - (x + v23 * 0.15 - width * 0.5)) + -1.0;
    v13 = v12 > -1.0;
    if (v12 <= -1.0)
    {
      v14 = -1.0;
    }

    else
    {
      v14 = (v4 - (x + v23 * 0.15 - width * 0.5) + v4 - (x + v23 * 0.15 - width * 0.5)) / (x + v23 * 0.15 + width * 0.5 - (x + v23 * 0.15 - width * 0.5)) + -1.0;
    }

    v15 = v14 < 1.0;
    if (v14 >= 1.0)
    {
      v14 = 1.0;
    }

    v16 = fabs(v12);
    v17 = v15 && v13;
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 1.0;
    }

    v19 = fabs(v6);
    if (v6 <= -1.0)
    {
      v11 = 1;
    }

    v20 = v19 + v19;
    if (v11)
    {
      v20 = 2.0;
    }

    if ((v18 <= v20) | v17 & (v16 < 0.25))
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v14;
    }

    if (v19 >= 0.25)
    {
      LOBYTE(v11) = 1;
    }

    if (v18 > v20 || !v11)
    {
      v8 = 0.0;
    }
  }

  else
  {
    v21 = 0.0;
    if (v8 < 0.0)
    {
      v8 = (v8 + 1.0) * 0.75 + -0.75;
    }
  }

  v22 = -v8;
  if (self->_active)
  {
    v22 = v8;
  }

  else
  {
    v21 = -v21;
  }

  result.y = v22;
  result.x = v21;
  return result;
}

- (double)scaleProgress
{
  result = 0.0;
  if (self->_active)
  {
    return 1.0 - self->_genieScale;
  }

  return result;
}

- (CGPoint)minimizedProgress
{
  v2 = 0.5;
  if (self->_active)
  {
    x = self->_windowPosition.x;
    v5 = self->_windowSize.width * 0.5;
    v6 = x - v5;
    v7 = x + v5 - (x - v5);
    IsZero = BSFloatIsZero();
    v2 = 0.0;
    if ((IsZero & 1) == 0)
    {
      v2 = (self->_iconPosition.x - v6) / v7;
    }
  }

  v9 = 0.5;
  result.y = v9;
  result.x = v2;
  return result;
}

- (CGSize)meshContainerSizeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SBSwitcherGenieAttributes *)self meshContainerOutset];
  v6 = width + v5;
  v8 = height + v7;
  result.height = v8;
  result.width = v6;
  return result;
}

- (CGPoint)minimizedPositionForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SBSwitcherGenieAttributes *)self meshContainerSizeForSize:?];
  v7 = v6;
  v9 = v8;
  [(SBSwitcherGenieAttributes *)self minimizedProgress];
  v11 = v7 * 0.5 - width * 0.5 + v10 * (width * 0.5 + v7 * 0.5 - (v7 * 0.5 - width * 0.5));
  v13 = v9 * 0.5 - height * 0.5 + v12 * (height * 0.5 + v9 * 0.5 - (v9 * 0.5 - height * 0.5));
  result.y = v13;
  result.x = v11;
  return result;
}

- (CGPoint)counterOffsetForSize:(CGSize)a3
{
  height = a3.height;
  v4 = 0uLL;
  if (self->_active)
  {
    v33 = height;
    width = a3.width;
    [(SBSwitcherGenieAttributes *)self meshContainerSizeForSize:a3.width, height];
    v32 = v6;
    v31 = v7;
    [(SBSwitcherGenieAttributes *)self minimizedPositionForSize:width, v33];
    v29 = v9;
    v30 = v8;
    [(SBSwitcherGenieAttributes *)self minimizedProgress];
    v27 = v11;
    v28 = v10;
    [(SBSwitcherGenieAttributes *)self scaleProgress];
    v13.f64[0] = v33;
    v13.f64[1] = width;
    __asm { FMOV            V1.2D, #-0.5 }

    v19 = vmulq_f64(v13, _Q1);
    v20 = v13;
    __asm { FMOV            V2.2D, #0.5 }

    v22.f64[0] = v27;
    v22.f64[1] = v28;
    v23 = vmlaq_f64(v19, vsubq_f64(vmulq_f64(v20, _Q2), v19), v22);
    v20.f64[0] = v31;
    v20.f64[1] = v32;
    v24 = vmulq_n_f64(v23, 1.0 - v12);
    v25 = vmulq_f64(v20, _Q2);
    v20.f64[0] = v29;
    v20.f64[1] = v30;
    v4 = vaddq_f64(vsubq_f64(v25, v20), v24);
  }

  v26 = v4.f64[1];
  result.y = v4.f64[0];
  result.x = v26;
  return result;
}

- (CGSize)meshContainerOutset
{
  [(SBSwitcherGenieAttributes *)self windowSize];
  v4 = v3;
  v6 = v5;
  [(SBSwitcherGenieAttributes *)self containerSize];
  if (v4 == v8 && v6 == v7)
  {
    v11 = [MEMORY[0x277D75418] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    v13.i64[0] = 1;
    v14.i64[0] = v12 & 0xFFFFFFFFFFFFFFFBLL;
    v10 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v14, v13).i64[0], 0), xmmword_21F8A8C00, *MEMORY[0x277CBF3A8]);
  }

  else
  {
    v10 = xmmword_21F8A8C00;
  }

  v15 = vbslq_s8(vcgtq_f64(v10, self->_minimumOutsetSize), v10, self->_minimumOutsetSize);
  v16 = *&v15.i64[1];
  result.width = *v15.i64;
  result.height = v16;
  return result;
}

- (CGPoint)iconPosition
{
  x = self->_iconPosition.x;
  y = self->_iconPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)windowPosition
{
  x = self->_windowPosition.x;
  y = self->_windowPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)initialVelocity
{
  x = self->_initialVelocity.x;
  y = self->_initialVelocity.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)windowSize
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minimizedSize
{
  width = self->_minimizedSize.width;
  height = self->_minimizedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minimumOutsetSize
{
  width = self->_minimumOutsetSize.width;
  height = self->_minimumOutsetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)multiplier
{
  x = self->_multiplier.x;
  y = self->_multiplier.y;
  result.y = y;
  result.x = x;
  return result;
}

- (SBSwitcherGenieGlassHighlight)glassHighlight
{
  v3 = *&self[4].direction.z;
  *&retstr->style = *&self[4].direction.x;
  *&retstr->direction.y = v3;
  *&retstr->intensity = self[5].style;
  return self;
}

- (void)setGlassHighlight:(SBSwitcherGenieGlassHighlight *)a3
{
  v3 = *&a3->style;
  v4 = *&a3->direction.y;
  self->_glassHighlight.intensity = a3->intensity;
  *&self->_glassHighlight.direction.y = v4;
  *&self->_glassHighlight.style = v3;
}

@end