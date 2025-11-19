@interface GVSRollAnalyzer
- (GVSRollAnalyzer)initWithTimeConstant:(float)a3 initialVariance:(float)a4;
- (void)reset;
- (void)updateWithRoll:(float)a3 atTime:(double)a4;
@end

@implementation GVSRollAnalyzer

- (GVSRollAnalyzer)initWithTimeConstant:(float)a3 initialVariance:(float)a4
{
  v9.receiver = self;
  v9.super_class = GVSRollAnalyzer;
  v6 = [(GVSRollAnalyzer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_timeConstant = a3;
    v6->_initVariance = a4;
    [(GVSRollAnalyzer *)v6 reset];
  }

  return v7;
}

- (void)reset
{
  self->_isInitialized = 0;
  self->_prevRoll = 0.0;
  self->_prevTime = 0.0;
  *&self->_rollRate = 0;
  v2 = self->_timeConstant * self->_timeConstant;
  self->_timeVariance = self->_initVariance;
  *(&self->_timeVariance + 1) = v2;
}

- (void)updateWithRoll:(float)a3 atTime:(double)a4
{
  prevTime = self->_prevTime;
  if (prevTime <= a4)
  {
    if (self->_isInitialized)
    {
      prevRoll = self->_prevRoll;
    }

    else
    {
      self->_averageRoll = a3;
      timeConstant = self->_timeConstant;
      self->_averageTime = a4 - timeConstant;
      *&v8 = timeConstant * timeConstant;
      HIDWORD(v8) = LODWORD(self->_initVariance);
      *&self->_covariance[12] = 0;
      *&self->_covariance[4] = v8;
      self->_isInitialized = 1;
      prevTime = a4;
      prevRoll = a3;
    }

    v9 = a3 + 3.14159265;
    v10 = prevRoll;
    if (prevRoll > v9)
    {
      v10 = prevRoll;
      do
      {
        v10 = v10 + -6.2832;
      }

      while (v10 > v9);
    }

      ;
    }

    v12 = self->_averageRoll + (v10 - prevRoll);
    v13 = a4 - prevTime;
    *&v13 = v13;
    *&v13 = self->_timeConstant / (self->_timeConstant + *&v13);
    v14 = a4 + *&v13 * (self->_averageTime - a4);
    v15 = a3 + (*&v13 * (v12 - a3));
    *v4.i64 = a4 - v14;
    v4.f32[0] = a4 - v14;
    v16 = v4;
    v16.f32[1] = a3 - v15;
    v17 = v16;
    v16.f32[2] = a3 - v15;
    self->_averageRoll = v15;
    v17.i32[2] = v4.i32[0];
    v18 = vmulq_f32(v17, v16);
    v19 = vsubq_f32(*&self->_covariance[4], v18);
    v20 = vdupq_lane_s32(*&v13, 0);
    v20.i32[3] = 0;
    v19.i32[3] = 0;
    v18.i32[3] = 0;
    _Q6 = vmlaq_f32(v18, v19, v20);
    *&self->_covariance[4] = _Q6;
    self->_prevRoll = a3;
    self->_prevTime = a4;
    self->_averageTime = v14;
    _S0 = _Q6.f32[2] / _Q6.f32[0];
    self->_rollRate = v15 + ((_Q6.f32[2] / _Q6.f32[0]) * v4.f32[0]);
    self->_rollVariance = _Q6.f32[2] / _Q6.f32[0];
    __asm { FMLS            S1, S0, V6.S[2] }

    self->_timeVariance = _S1;
    *(&self->_timeVariance + 1) = _Q6.i32[0];
  }

  else
  {
    [(GVSRollAnalyzer *)self reset];
  }
}

@end