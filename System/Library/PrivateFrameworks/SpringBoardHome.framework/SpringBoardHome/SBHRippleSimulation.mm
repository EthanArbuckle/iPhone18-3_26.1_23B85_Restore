@interface SBHRippleSimulation
- (CATransform3D)transformForGridCoordinate:(SEL)a3;
- (CGPoint)convertGridToRippleCoordinate:(CGPoint)a3;
- (SBHRippleSimulation)initWithRows:(unint64_t)a3 columns:(unint64_t)a4 resolution:(unint64_t)a5 style:(unint64_t)a6;
- (double)zPositionForGridCoordinate:(CGPoint)a3;
- (void)clear;
- (void)createRippleAtGridCoordinate:(CGPoint)a3 strength:(double)a4;
- (void)dealloc;
- (void)step:(double)a3;
@end

@implementation SBHRippleSimulation

- (SBHRippleSimulation)initWithRows:(unint64_t)a3 columns:(unint64_t)a4 resolution:(unint64_t)a5 style:(unint64_t)a6
{
  v20.receiver = self;
  v20.super_class = SBHRippleSimulation;
  v10 = [(SBHRippleSimulation *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10[80] = 1;
    *(v10 + 3) = a5;
    *(v10 + 4) = a6;
    v12 = vdup_n_s32(a6 == 1);
    v13.i64[0] = v12.u32[0];
    v13.i64[1] = v12.u32[1];
    *(v10 + 40) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v13, 0x3FuLL)), xmmword_1BEE86230, xmmword_1BEE86220);
    [v10 convertGridToRippleCoordinate:{a4, a3}];
    rippleTouchRadius = v11->_rippleTouchRadius;
    v16 = (rippleTouchRadius + ceil(v14) + 1.0);
    v18 = rippleTouchRadius + ceil(v17) + 1.0;
    v11->_rippleWidth = v16;
    v11->_rippleHeight = v18;
    v11->_positionBuffer = malloc_type_calloc(v16 * v18, 8uLL, 0x100004000313F17uLL);
    v11->_velocityBuffer = malloc_type_calloc(v11->_rippleHeight * v11->_rippleWidth, 8uLL, 0x100004000313F17uLL);
  }

  return v11;
}

- (void)dealloc
{
  free(self->_positionBuffer);
  free(self->_velocityBuffer);
  v3.receiver = self;
  v3.super_class = SBHRippleSimulation;
  [(SBHRippleSimulation *)&v3 dealloc];
}

- (void)clear
{
  rippleWidth = self->_rippleWidth;
  if (rippleWidth)
  {
    v3 = 0;
    rippleHeight = self->_rippleHeight;
    do
    {
      if (rippleHeight)
      {
        positionBuffer = self->_positionBuffer;
        velocityBuffer = self->_velocityBuffer;
        v7 = v3;
        v8 = rippleHeight;
        do
        {
          v9 = v7 & ~(v7 >> 31);
          if (rippleHeight * rippleWidth - 1 < v9)
          {
            v9 = rippleHeight * rippleWidth - 1;
          }

          velocityBuffer[v9] = 0.0;
          positionBuffer[v9] = 0.0;
          v7 += rippleWidth;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != rippleWidth);
  }
}

- (CGPoint)convertGridToRippleCoordinate:(CGPoint)a3
{
  rippleResolution = self->_rippleResolution;
  v4 = (a3.x + -1.0) * rippleResolution;
  v5 = (a3.y + -1.0) * rippleResolution;
  v6 = ceil(self->_rippleTouchRadius);
  v7 = v4 + v6 + 0.5;
  v8 = v5 + v6 + 0.5;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)createRippleAtGridCoordinate:(CGPoint)a3 strength:(double)a4
{
  self->_rippleTouchHeight = *&SBHRippleDefaultTouchHeight * a4;
  [(SBHRippleSimulation *)self convertGridToRippleCoordinate:a3.x, a3.y];
  v6 = v5;
  v8 = v7;
  self->_settled = 0;
  [(SBHRippleSimulation *)self clear];
  rippleTouchRadius = self->_rippleTouchRadius;
  v10 = (v6 - rippleTouchRadius + 1.0);
  v11 = vcvtpd_s64_f64(v6 + rippleTouchRadius + 1.0);
  if (v10 < v11)
  {
    rippleTouchHeight = self->_rippleTouchHeight;
    v13 = vcvtpd_s64_f64(v8 + rippleTouchRadius + 1.0);
    do
    {
      if ((v8 - rippleTouchRadius + 1.0) < v13)
      {
        v14 = (v8 - rippleTouchRadius + 1.0);
        do
        {
          v15 = (v10 - v6) * (v10 - v6) + (v14 - v8) * (v14 - v8);
          v16 = self->_rippleTouchRadius;
          if (v15 < v16 * v16)
          {
            v17 = sqrt(v15);
            v18 = fmin(fmax(1.0 - v17 / v16, 0.0), 1.0);
            v19 = rippleTouchHeight * (v18 * v18 * (v18 * -2.0 + 3.0));
            v20 = v17 / (v16 + 1.0) * (v17 / (v16 + 1.0));
            if (v20 > 1.0)
            {
              v20 = 1.0;
            }

            v21 = v19 * (1.0 - v20);
            rippleWidth = self->_rippleWidth;
            v23 = LODWORD(self->_rippleHeight) * rippleWidth - 1;
            v24 = (v10 + rippleWidth * v14) & ~((v10 + rippleWidth * v14) >> 31);
            if (v23 < v24)
            {
              v24 = v23;
            }

            self->_positionBuffer[v24] = v21;
          }

          ++v14;
        }

        while (v13 != v14);
      }

      ++v10;
    }

    while (v10 != v11);
  }
}

- (void)step:(double)a3
{
  rippleHeight = self->_rippleHeight;
  v5 = self->_rippleWidth - 1;
  v6 = a3 * 60.0 * self->_rippleTimeStep;
  UIAnimationDragCoefficient();
  v8 = v6 / v7;
  v9 = v8;
  v10 = powf(0.72, v9);
  if (v5 < 2)
  {
    goto LABEL_27;
  }

  v11 = rippleHeight - 1;
  v12 = v10;
  v13 = rippleHeight - 2;
  v14 = 1;
  v15 = 1;
  do
  {
    if (v11 <= 1)
    {
      v21 = v15 + 1;
    }

    else
    {
      v16 = 0;
      rippleWidth = self->_rippleWidth;
      v18 = LODWORD(self->_rippleHeight) * rippleWidth - 1;
      positionBuffer = self->_positionBuffer;
      velocityBuffer = self->_velocityBuffer;
      v21 = v15 + 1;
      v22 = v13;
      do
      {
        v23 = (v15 + rippleWidth + v16) & ~((v15 + rippleWidth + v16) >> 31);
        if (v18 < v23)
        {
          v23 = v18;
        }

        v24 = (v15 + rippleWidth - 1 + v16) & ~((v15 + rippleWidth - 1 + v16) >> 31);
        if (v18 < v24)
        {
          v24 = v18;
        }

        v25 = (v15 + 1 + rippleWidth + v16) & ~((v15 + 1 + rippleWidth + v16) >> 31);
        if (v18 < v25)
        {
          v25 = v18;
        }

        v26 = velocityBuffer[v24];
        v27 = (v15 + 2 * rippleWidth + v16) & ~((v15 + 2 * rippleWidth + v16) >> 31);
        v28 = v26 + velocityBuffer[v25];
        if (v18 < v27)
        {
          v27 = v18;
        }

        v29 = velocityBuffer[v27];
        v30 = (v15 + v16) & ~((v15 + v16) >> 31);
        v31 = v28 + v29;
        if (v18 < v30)
        {
          v30 = v18;
        }

        v32 = (positionBuffer[v23] + v8 * -(velocityBuffer[v23] - (v31 + velocityBuffer[v30]) * 0.25)) * v12;
        positionBuffer[v23] = v32;
        v14 = (fabs(v32) <= 0.05) & v14;
        v16 += rippleWidth;
        --v22;
      }

      while (v22);
    }

    v15 = v21;
  }

  while (v21 != v5);
  v33 = 1;
  v34 = 1;
  v35 = 1;
  do
  {
    if (v11 >= 2)
    {
      v36 = self->_rippleWidth;
      v37 = LODWORD(self->_rippleHeight) * v36 - 1;
      v38 = self->_positionBuffer;
      v39 = self->_velocityBuffer;
      v40 = dbl_1BEE86240[self->_rippleStyle == 1];
      v41 = v33 + v36;
      v42 = v13;
      do
      {
        v43 = v41 & ~(v41 >> 31);
        if (v37 < v43)
        {
          v43 = v37;
        }

        v44 = v39[v43] + v8 * v38[v43];
        v39[v43] = v44;
        v35 = (fabs(v44) <= v40) & v35;
        v41 += v36;
        --v42;
      }

      while (v42);
    }

    ++v34;
    ++v33;
  }

  while (v34 != v5);
  if (v14 & v35)
  {
LABEL_27:
    self->_settled = 1;
  }
}

- (double)zPositionForGridCoordinate:(CGPoint)a3
{
  [(SBHRippleSimulation *)self convertGridToRippleCoordinate:a3.x, a3.y];
  positionBuffer = self->_positionBuffer;
  rippleWidth = self->_rippleWidth;
  v6 = LODWORD(self->_rippleHeight) * rippleWidth - 1;
  v8 = (rippleWidth * v7);
  v10.f64[0] = v9;
  v10.f64[1] = v9 + 1.0;
  v11 = vdup_n_s32(v6);
  v12 = vmin_s32(v11, vmax_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(v10, vdupq_lane_s64(*&v8, 0)))), 0));
  v13 = v12.i32[1];
  v14 = positionBuffer[v12.i32[0]];
  v15 = positionBuffer[v13];
  v16 = (rippleWidth * (v7 + 1.0));
  v17 = vmin_s32(v11, vmax_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(v10, vdupq_lane_s64(*&v16, 0)))), 0));
  v18 = v17.i32[1];
  v19 = positionBuffer[v17.i32[0]];
  v20 = positionBuffer[v18];
  v21 = vdupq_lane_s64(COERCE__INT64((rippleWidth * (v7 + -1.0))), 0);
  v22 = vmin_s32(v11, vmax_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(v10, v21))), 0));
  v23 = v22.i32[1];
  v24 = positionBuffer[v22.i32[0]];
  v25 = vdupq_lane_s64(COERCE__INT64((rippleWidth * (v7 + 2.0))), 0);
  *&v10.f64[0] = vmin_s32(v11, vmax_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(v10, v25))), 0));
  LODWORD(rippleWidth) = HIDWORD(v10.f64[0]);
  v26 = positionBuffer[SLODWORD(v10.f64[0])];
  v27 = positionBuffer[rippleWidth];
  v28 = vaddq_f64(vdupq_lane_s64(*&v9, 0), xmmword_1BEE86250);
  v29 = (v28.f64[0] + v8) & ~((v28.f64[0] + v8) >> 31);
  if (v6 < v29)
  {
    v29 = v6;
  }

  v30 = positionBuffer[v29];
  v31 = (v28.f64[0] + v16) & ~((v28.f64[0] + v16) >> 31);
  if (v6 < v31)
  {
    v31 = v6;
  }

  v32 = positionBuffer[v31];
  v33 = (v28.f64[1] + v8) & ~((v28.f64[1] + v8) >> 31);
  if (v6 < v33)
  {
    v33 = v6;
  }

  if (v6 >= ((v28.f64[1] + v16) & ~((v28.f64[1] + v16) >> 31)))
  {
    v6 = (v28.f64[1] + v16) & ~((v28.f64[1] + v16) >> 31);
  }

  v34 = vmin_s32(v11, vmax_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(v28, v21))), 0));
  v35 = vmin_s32(v11, vmax_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(v28, v25))), 0));
  return *&SBHRippleHeight * (((v30 + v32 + positionBuffer[v33] + positionBuffer[v6] + v24 + positionBuffer[v23] + v26 + v27) * 3.0 + (v14 + v15 + v19 + v20) * 9.0 + positionBuffer[v34.i32[0]] + positionBuffer[v34.i32[1]] + positionBuffer[v35.i32[0]] + positionBuffer[v35.i32[1]]) * 0.015625);
}

- (CATransform3D)transformForGridCoordinate:(SEL)a3
{
  [(SBHRippleSimulation *)self convertGridToRippleCoordinate:a4.x, a4.y];
  positionBuffer = self->_positionBuffer;
  rippleWidth = self->_rippleWidth;
  v10 = LODWORD(self->_rippleHeight) * rippleWidth - 1;
  v11 = (rippleWidth * v7);
  v12.f64[0] = v6.f64[0] + 1.0;
  v12.f64[1] = v6.f64[0];
  v13 = vdup_n_s32(v10);
  v14 = vmin_s32(v13, vmax_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(v12, vdupq_lane_s64(*&v11, 0)))), 0));
  v15 = v14.i32[1];
  v16 = positionBuffer[v14.i32[0]];
  v17 = positionBuffer[v15];
  v18 = (rippleWidth * (v7 + 1.0));
  v19 = vmin_s32(v13, vmax_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(v12, vdupq_lane_s64(*&v18, 0)))), 0));
  v20 = positionBuffer[v19.i32[0]];
  v21 = positionBuffer[v19.i32[1]];
  v22 = (v6.f64[0] + 2.0 + v11) & ~((v6.f64[0] + 2.0 + v11) >> 31);
  if (v10 < v22)
  {
    v22 = LODWORD(self->_rippleHeight) * rippleWidth - 1;
  }

  v23 = positionBuffer[v22];
  v24 = (v6.f64[0] + 2.0 + v18) & ~((v6.f64[0] + 2.0 + v18) >> 31);
  if (v10 < v24)
  {
    v24 = LODWORD(self->_rippleHeight) * rippleWidth - 1;
  }

  v25 = positionBuffer[v24];
  v26 = (v6.f64[0] + -1.0 + v11) & ~((v6.f64[0] + -1.0 + v11) >> 31);
  if (v10 < v26)
  {
    v26 = LODWORD(self->_rippleHeight) * rippleWidth - 1;
  }

  if (v10 >= ((v6.f64[0] + -1.0 + v18) & ~((v6.f64[0] + -1.0 + v18) >> 31)))
  {
    v10 = (v6.f64[0] + -1.0 + v18) & ~((v6.f64[0] + -1.0 + v18) >> 31);
  }

  v6.f64[1] = v6.f64[0] + 1.0;
  v27 = vmin_s32(v13, vmax_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(v6, vdupq_lane_s64(COERCE__INT64((rippleWidth * (v7 + 2.0))), 0)))), 0));
  v28 = vmin_s32(v13, vmax_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(v6, vdupq_lane_s64(COERCE__INT64((rippleWidth * (v7 + -1.0))), 0)))), 0));
  v29 = ((positionBuffer[v27.i32[1]] - v20) * 0.5 + (positionBuffer[v27.i32[0]] - v21) * 0.5 + ((v20 - v16) * 0.5 + (v21 - v17) * 0.5) * 2.0 + (v16 - positionBuffer[v28.i32[1]]) * 0.5 + (v17 - positionBuffer[v28.i32[0]]) * 0.5) * 0.25;
  *v28.i32 = ((v25 - v20) * 0.5 + (v23 - v16) * 0.5 + ((v20 - v21) * 0.5 + (v16 - v17) * 0.5) * 2.0 + (v21 - positionBuffer[v10]) * 0.5 + (v17 - positionBuffer[v26]) * 0.5) * 0.25;
  v30 = -atanf(*v28.i32);
  v31 = v29;
  v32 = atanf(v31);
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  CATransform3DMakeRotation(retstr, v30, 0.0, 1.0, 0.0);
  v33 = *&retstr->m33;
  *&v42.m31 = *&retstr->m31;
  *&v42.m33 = v33;
  v34 = *&retstr->m43;
  *&v42.m41 = *&retstr->m41;
  *&v42.m43 = v34;
  v35 = *&retstr->m13;
  *&v42.m11 = *&retstr->m11;
  *&v42.m13 = v35;
  v36 = *&retstr->m23;
  *&v42.m21 = *&retstr->m21;
  *&v42.m23 = v36;
  result = CATransform3DRotate(&v43, &v42, v32, 1.0, 0.0, 0.0);
  v38 = *&v43.m33;
  *&retstr->m31 = *&v43.m31;
  *&retstr->m33 = v38;
  v39 = *&v43.m43;
  *&retstr->m41 = *&v43.m41;
  *&retstr->m43 = v39;
  v40 = *&v43.m13;
  *&retstr->m11 = *&v43.m11;
  *&retstr->m13 = v40;
  v41 = *&v43.m23;
  *&retstr->m21 = *&v43.m21;
  *&retstr->m23 = v41;
  return result;
}

@end