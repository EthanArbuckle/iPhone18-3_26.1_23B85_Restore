@interface RTSCAutocovarianceDynamicsAnalyzer4DOF
- (RTSCAutocovarianceDynamicsAnalyzer4DOF)initWithTimeConstant:(float)a3 initialCovariance:;
- (__n128)residualCovariance;
- (void)_initializeCovariances;
- (void)reset;
@end

@implementation RTSCAutocovarianceDynamicsAnalyzer4DOF

- (RTSCAutocovarianceDynamicsAnalyzer4DOF)initWithTimeConstant:(float)a3 initialCovariance:
{
  v9 = v3;
  v10.receiver = self;
  v10.super_class = RTSCAutocovarianceDynamicsAnalyzer4DOF;
  v5 = [(RTSCAutocovarianceDynamicsAnalyzer4DOF *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_timeConstant = a3;
    *&v5->_initialCovariance[4] = v9;
    [(RTSCAutocovarianceDynamicsAnalyzer4DOF *)v5 reset];
    v7 = v6;
  }

  else
  {
    [RTSCAutocovarianceDynamicsAnalyzer4DOF initWithTimeConstant:initialCovariance:];
  }

  return v6;
}

- (void)reset
{
  LOBYTE(self->_prevTime) = 0;
  *&v2 = 0;
  DWORD2(v2) = 0;
  *&self->_estimatedVelocity[8] = 0u;
  *&self->_estimatedAcceleration[8] = 0u;
  LODWORD(v3) = 0;
  HIDWORD(v3) = 0;
  *(&v3 + 4) = HIDWORD(*&self->_initialCovariance[4]);
  *&v4 = 0;
  *(&v4 + 1) = *&self->_initialCovariance[12];
  HIDWORD(v2) = HIDWORD(*&self->_initialCovariance[4]);
  *&self[1]._timeConstant = *&self->_initialCovariance[4];
  *&self[1]._initialCovariance[12] = v3;
  *self[1]._prevData = v4;
  *self[1]._dataResidual = v2;
}

- (void)_initializeCovariances
{
  *&self->_dataResidual[8] = 0u;
  v2 = *&self->_initialCovariance[4];
  LODWORD(v3) = 0;
  HIDWORD(v3) = 0;
  *(&v3 + 4) = HIDWORD(*&self->_initialCovariance[4]);
  *&v4 = 0;
  *(&v4 + 1) = *&self->_initialCovariance[12];
  *&self->_meanDataResidual[8] = 0u;
  *&v5 = 0;
  DWORD2(v5) = 0;
  HIDWORD(v5) = HIDWORD(v2);
  *&self->_anon_a0[8] = v2;
  *&self->_anon_a0[24] = v3;
  *&self->_anon_a0[40] = v4;
  *&self->_anon_a0[56] = v5;
  *&v2 = self->_timeConstant;
  LODWORD(v4) = v2;
  *(&v4 + 1) = (*&v2 / -30.0) + ((*&v2 * -2.0) * *&v2);
  *self->_anon_58 = v4;
  *&v4 = *&v2 * *&v2;
  LODWORD(v5) = v2;
  *(&v5 + 1) = *(&v4 + 1) + ((*&v2 * -2.0) * *&v2);
  *self->_anon_78 = v5;
  *(&v2 + 1) = *(&v5 + 1) + ((*&v2 * -2.0) * *&v2);
  v6.f32[1] = *(&v2 + 1);
  v6.f32[0] = *(&v5 + 1);
  *&v2 = vmul_f32(*&v2, v6);
  *&self->_anon_e0[8] = vzip1_s32(*&v4, *&v2);
  *self->_estimatedVelocity = v2;
  *&self->_anon_80[8] = 0u;
  *&self->_anon_80[24] = 0u;
}

- (__n128)residualCovariance
{
  result = *(a1 + 272);
  v2 = *(a1 + 288);
  v3 = *(a1 + 304);
  v4 = *(a1 + 320);
  return result;
}

@end