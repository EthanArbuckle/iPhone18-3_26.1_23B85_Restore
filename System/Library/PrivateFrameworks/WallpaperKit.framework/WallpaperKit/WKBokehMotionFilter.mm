@interface WKBokehMotionFilter
- (WKBokehMotionFilter)init;
- (double)_clampPosition:(uint64_t)position;
- (double)_filterPosition:(double)position;
- (double)_orientPosition:(double)position;
- (double)displacement;
- (double)filterCoefficient;
- (double)position;
- (float64_t)_rawPosition;
- (float64_t)_transformPosition:(float64x2_t)position;
- (float64x2_t)updatePosition;
- (uint64_t)setFilterCoefficient:(uint64_t)result;
- (void)pauseDeviceMotionUpdates;
- (void)startDeviceMotionUpdates;
- (void)stopDeviceMotionUpdates;
@end

@implementation WKBokehMotionFilter

- (WKBokehMotionFilter)init
{
  v7.receiver = self;
  v7.super_class = WKBokehMotionFilter;
  v2 = [(WKBokehMotionFilter *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 2) = 0x3FEF0A3D80000000;
    *(v2 + 24) = *MEMORY[0x1E695EFF8];
    *(v2 + 40) = *MEMORY[0x1E695F060];
    v4 = [[WKBokehMotionManager alloc] initWithCoefficient:0.00999999978 threshold:?];
    v5 = *(v3 + 1);
    *(v3 + 1) = v4;

    [(WKBokehMotionManager *)*(v3 + 1) setAccelerometerUpdateInterval:?];
    [(WKBokehMotionManager *)*(v3 + 1) startDeviceAccelerometerUpdates];
  }

  return v3;
}

- (void)startDeviceMotionUpdates
{
  if (self)
  {
    [(WKBokehMotionManager *)*(self + 8) startDeviceMotionUpdates];
  }
}

- (void)stopDeviceMotionUpdates
{
  if (result)
  {
    return [(WKBokehMotionManager *)result[1] stopDeviceMotionUpdates];
  }

  return result;
}

- (void)pauseDeviceMotionUpdates
{
  if (result)
  {
    return [(WKBokehMotionManager *)result[1] pauseDeviceMotionUpdates];
  }

  return result;
}

- (float64_t)_rawPosition
{
  if (self)
  {
    v17 = [(WKBokehMotionManager *)*(self + 8) x];
    filterCoefficient = [(WKBokehMotionFilter *)*(self + 8) filterCoefficient];
    v2 = [(WKBokehMotionManager *)*(self + 8) z];
    _Q2.f64[0] = filterCoefficient;
    _Q2.f64[1] = v17;
    _D1 = vcvt_f32_f64(_Q2);
    _S3 = _D1.i32[1];
    __asm { FMLA            S2, S3, V1.S[1] }

    v10 = sqrtf(*_Q2.f64 + (v2 * v2));
    if (v10 <= 0.0)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 1.0 / v10;
    }

    v12 = vmul_n_f32(_D1, v11);
    v13 = vdup_n_s32(0x428C0000u);
    v14 = vcvtq_f64_f32(vdiv_f32(vrnda_f32(vmul_f32(v12, v13)), v13));
  }

  else
  {
    v14.f64[1] = 0.0;
  }

  return v14.f64[1];
}

- (double)_orientPosition:(double)position
{
  if (!self)
  {
    return 0.0;
  }

  switch([*MEMORY[0x1E69DDA98] activeInterfaceOrientation])
  {
    case 2:
      position = -a2;
      break;
    case 3:
      position = -position;
      break;
    case 4:
      return position;
    default:
      position = a2;
      break;
  }

  return position;
}

- (float64_t)_transformPosition:(float64x2_t)position
{
  if (self)
  {
    position.f64[1] = a2;
    __asm { FMOV            V0.2D, #0.5 }

    v8 = vmulq_f64(position, _Q0);
    v9 = vdupq_n_s64(0x4059000000000000uLL);
    v10 = vdivq_f64(vrndaq_f64(vmulq_f64(v8, v9)), v9);
  }

  else
  {
    v10.f64[1] = 0.0;
  }

  return v10.f64[1];
}

- (double)_clampPosition:(uint64_t)position
{
  if (!position)
  {
    return OUTLINED_FUNCTION_0_2();
  }

  if (a2 < -0.5)
  {
    a2 = -0.5;
  }

  return fmin(a2, 0.5);
}

- (double)_filterPosition:(double)position
{
  if (!self)
  {
    return OUTLINED_FUNCTION_0_2();
  }

  v3 = self[2];
  v4 = v3;
  v5 = (1.0 - v3);
  result = a2 * v5 + v4 * self[3];
  v7 = position * v5 + v4 * self[4];
  self[3] = result;
  self[4] = v7;
  return result;
}

- (double)position
{
  if (!self)
  {
    return OUTLINED_FUNCTION_0_2();
  }

  result = *(self + 24);
  v2 = *(self + 32);
  return result;
}

- (double)displacement
{
  if (!self)
  {
    return OUTLINED_FUNCTION_0_2();
  }

  result = *(self + 40);
  v2 = *(self + 48);
  return result;
}

- (float64x2_t)updatePosition
{
  if (self)
  {
    v17 = *(self + 24);
    _rawPosition = [(WKBokehMotionFilter *)self _rawPosition];
    v4.f64[0] = [(WKBokehMotionFilter *)self _orientPosition:_rawPosition, v3];
    v4.f64[1] = v5;
    __asm { FMOV            V1.2D, #0.5 }

    v11 = vdupq_n_s64(0x4059000000000000uLL);
    v12 = vdivq_f64(vrndaq_f64(vmulq_f64(vmulq_f64(v4, _Q1), v11)), v11);
    __asm { FMOV            V2.2D, #-0.5 }

    v14 = vminnmq_f64(vbslq_s8(vcgtq_f64(_Q2, v12), _Q2, v12), _Q1);
    *_Q1.f64 = *(self + 16);
    v15 = vmlaq_n_f64(vmulq_n_f64(v14, (1.0 - *_Q1.f64)), *(self + 24), *_Q1.f64);
    *(self + 24) = v15;
    result = vsubq_f64(v15, v17);
    *(self + 40) = result;
  }

  return result;
}

- (double)filterCoefficient
{
  if (self)
  {
    return *(self + 16);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setFilterCoefficient:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

@end