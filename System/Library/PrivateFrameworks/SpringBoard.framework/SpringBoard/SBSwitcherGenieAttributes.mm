@interface SBSwitcherGenieAttributes
+ (id)genieAttributesForIconPosition:(CGPoint)position windowPosition:(CGPoint)windowPosition initialVelocity:(CGPoint)velocity windowSize:(CGSize)size minimizedSize:(CGSize)minimizedSize minimizedScale:(double)scale containerSize:(CGSize)containerSize minimumOutsetSize:(CGSize)self0 genieScale:(double)self1 multiplier:(CGPoint)self2 active:(double)self3 glassHighlight:(SBSwitcherGenieGlassHighlight *)self4 layoutSettings:(id)self5;
- (CGPoint)counterOffsetForSize:(CGSize)size;
- (CGPoint)genieAmount;
- (CGPoint)iconPosition;
- (CGPoint)initialVelocity;
- (CGPoint)minimizedPositionForSize:(CGSize)size;
- (CGPoint)minimizedProgress;
- (CGPoint)multiplier;
- (CGPoint)windowPosition;
- (CGSize)containerSize;
- (CGSize)meshContainerOutset;
- (CGSize)meshContainerSizeForSize:(CGSize)size;
- (CGSize)minimizedSize;
- (CGSize)minimumOutsetSize;
- (CGSize)windowSize;
- (SBSwitcherGenieGlassHighlight)glassHighlight;
- (double)scaleProgress;
- (void)setGlassHighlight:(SBSwitcherGenieGlassHighlight *)highlight;
@end

@implementation SBSwitcherGenieAttributes

+ (id)genieAttributesForIconPosition:(CGPoint)position windowPosition:(CGPoint)windowPosition initialVelocity:(CGPoint)velocity windowSize:(CGSize)size minimizedSize:(CGSize)minimizedSize minimizedScale:(double)scale containerSize:(CGSize)containerSize minimumOutsetSize:(CGSize)self0 genieScale:(double)self1 multiplier:(CGPoint)self2 active:(double)self3 glassHighlight:(SBSwitcherGenieGlassHighlight *)self4 layoutSettings:(id)self5
{
  height = minimizedSize.height;
  width = minimizedSize.width;
  v28 = size.height;
  v27 = size.width;
  y = velocity.y;
  x = velocity.x;
  v19 = windowPosition.y;
  v20 = windowPosition.x;
  v21 = position.y;
  v22 = position.x;
  v23 = *&containerSize.width;
  v24 = objc_opt_new();
  [v24 setActive:*&width];
  [v24 setIconPosition:{v22, v21}];
  [v24 setWindowPosition:{v20, v19}];
  [v24 setInitialVelocity:{x, y}];
  [v24 setWindowSize:{v27, v28}];
  [v24 setMinimizedSize:{scale, genieScale}];
  [v24 setMinimizedScale:multiplier.x];
  [v24 setContainerSize:{multiplier.y, active}];
  [v24 setMinimumOutsetSize:{*&highlight, *&settings}];
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

- (CGSize)meshContainerSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(SBSwitcherGenieAttributes *)self meshContainerOutset];
  v6 = width + v5;
  v8 = height + v7;
  result.height = v8;
  result.width = v6;
  return result;
}

- (CGPoint)minimizedPositionForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (CGPoint)counterOffsetForSize:(CGSize)size
{
  height = size.height;
  v4 = 0uLL;
  if (self->_active)
  {
    v33 = height;
    width = size.width;
    [(SBSwitcherGenieAttributes *)self meshContainerSizeForSize:size.width, height];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v13.i64[0] = 1;
    v14.i64[0] = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
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

- (void)setGlassHighlight:(SBSwitcherGenieGlassHighlight *)highlight
{
  v3 = *&highlight->style;
  v4 = *&highlight->direction.y;
  self->_glassHighlight.intensity = highlight->intensity;
  *&self->_glassHighlight.direction.y = v4;
  *&self->_glassHighlight.style = v3;
}

@end