@interface RTSCFaceDataCovarianceEstimator
- (RTSCFaceDataCovarianceEstimator)initWithTimeConstant:(float)constant initialCovariance:;
- (__n128)accelerationCovariance;
- (__n128)measurementCovariance;
- (void)dealloc;
- (void)reset;
@end

@implementation RTSCFaceDataCovarianceEstimator

- (RTSCFaceDataCovarianceEstimator)initWithTimeConstant:(float)constant initialCovariance:
{
  v12 = v3;
  v13.receiver = self;
  v13.super_class = RTSCFaceDataCovarianceEstimator;
  v5 = [(RTSCFaceDataCovarianceEstimator *)&v13 init];
  v6 = v5;
  if (v5)
  {
    *v5->_initialCovariance = v12;
    v7 = [RTSCAutocovarianceDynamicsAnalyzer4DOF alloc];
    *&v8 = constant;
    v9 = [(RTSCAutocovarianceDynamicsAnalyzer4DOF *)v7 initWithTimeConstant:v8 initialCovariance:*v6->_initialCovariance];
    faceDynamicsAnalyzer = v6->_faceDynamicsAnalyzer;
    v6->_faceDynamicsAnalyzer = v9;

    v6->_noiseAveragingTimescale = constant * 10.0;
    v6->_accelerationAveragingTimescale = constant;
    *v6->_anon_30 = xmmword_11C50;
    *&v6->_anon_30[16] = xmmword_11C60;
    *&v6->_anon_30[32] = xmmword_11C70;
    *&v6->_anon_30[48] = xmmword_11C80;
    *v6->_anon_70 = xmmword_11C90;
    *&v6->_anon_70[16] = xmmword_11CA0;
    *&v6->_anon_70[32] = xmmword_11CB0;
    *&v6->_anon_70[48] = xmmword_11CC0;
    [(RTSCFaceDataCovarianceEstimator *)v6 reset];
  }

  return v6;
}

- (void)reset
{
  [(RTSCAutocovarianceDynamicsAnalyzer4DOF *)self->_faceDynamicsAnalyzer reset];
  *&v3 = 0;
  DWORD2(v3) = 0;
  v4 = *self->_initialCovariance;
  LODWORD(v5) = 0;
  HIDWORD(v5) = 0;
  *(&v5 + 4) = HIDWORD(*self->_initialCovariance);
  *&v6 = 0;
  *(&v6 + 1) = *&self->_initialCovariance[8];
  HIDWORD(v3) = HIDWORD(*self->_initialCovariance);
  *self->_anon_c0 = v4;
  *&self->_anon_c0[16] = v5;
  *&self->_anon_c0[32] = v6;
  *&self->_anon_c0[48] = v3;
  *&self[1].super.isa = v4;
  *&self[1]._noiseAveragingTimescale = v5;
  *self[1]._initialCovariance = v6;
  *self[1]._anon_30 = v3;
  self->_prevTime = -INFINITY;
}

- (void)dealloc
{
  faceDynamicsAnalyzer = self->_faceDynamicsAnalyzer;
  self->_faceDynamicsAnalyzer = 0;

  v4.receiver = self;
  v4.super_class = RTSCFaceDataCovarianceEstimator;
  [(RTSCFaceDataCovarianceEstimator *)&v4 dealloc];
}

- (__n128)measurementCovariance
{
  result = *(self + 192);
  v2 = *(self + 208);
  v3 = *(self + 224);
  v4 = *(self + 240);
  return result;
}

- (__n128)accelerationCovariance
{
  result = *(self + 256);
  v2 = *(self + 272);
  v3 = *(self + 288);
  v4 = *(self + 304);
  return result;
}

@end