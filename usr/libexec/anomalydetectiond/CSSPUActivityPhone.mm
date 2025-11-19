@interface CSSPUActivityPhone
- (CSSPUActivityPhone)initWithTimestamp:(unint64_t)a3 armTimeImuConfidences:(id)a4 armTimeActivityHints:(unsigned __int8)a5 windowAfterArmImuConfidences:(id)a6 triggerTimeLastHighImuDrivingConfidenceTimestamp:(unint64_t)a7 sessionSwivelAngleDegHistogram:(id)a8 sessionTiltAngleDegHistogram:(id)a9 sessionImuHintPercentage:(float)a10 sessionBtHintPercentage:(float)a11 sessionGpsHintPercentage:(float)a12 sessionWifiHintPercentage:(float)a13;
- (id).cxx_construct;
@end

@implementation CSSPUActivityPhone

- (CSSPUActivityPhone)initWithTimestamp:(unint64_t)a3 armTimeImuConfidences:(id)a4 armTimeActivityHints:(unsigned __int8)a5 windowAfterArmImuConfidences:(id)a6 triggerTimeLastHighImuDrivingConfidenceTimestamp:(unint64_t)a7 sessionSwivelAngleDegHistogram:(id)a8 sessionTiltAngleDegHistogram:(id)a9 sessionImuHintPercentage:(float)a10 sessionBtHintPercentage:(float)a11 sessionGpsHintPercentage:(float)a12 sessionWifiHintPercentage:(float)a13
{
  v23 = a4;
  v24 = a6;
  v25 = a8;
  v26 = a9;
  v40.receiver = self;
  v40.super_class = CSSPUActivityPhone;
  v27 = [(CSSPUActivityPhone *)&v40 init];
  v28 = v27;
  if (v27)
  {
    v29 = 0;
    v27->_c_struct.timestamp = a3;
    do
    {
      v30 = [v23 objectAtIndexedSubscript:v29];
      [v30 floatValue];
      v28->_c_struct._armTime_ImuConfidences[v29] = v31;

      ++v29;
    }

    while (v29 != 3);
    v32 = 0;
    v28->_c_struct._armTime_ActivityHints = a5;
    do
    {
      v33 = [v24 objectAtIndexedSubscript:v32];
      [v33 floatValue];
      v28->_c_struct._windowAfterArm_ImuConfidences[v32] = v34;

      ++v32;
    }

    while (v32 != 3);
    v35 = 0;
    v28->_c_struct._triggerTime_LastHighImuDrivingConfidenceTimestamp = a7;
    do
    {
      v36 = [v25 objectAtIndexedSubscript:v35];
      v28->_c_struct._session_SwivelAngleDegHistogram[v35] = [v36 intValue];

      ++v35;
    }

    while (v35 != 5);
    for (i = 0; i != 5; ++i)
    {
      v38 = [v26 objectAtIndexedSubscript:i];
      v28->_c_struct._session_TiltAngleDegHistogram[i] = [v38 intValue];
    }

    v28->_c_struct._session_ImuHintPercentage = a10;
    v28->_c_struct._session_BtHintPercentage = a11;
    v28->_c_struct._session_GpsHintPercentage = a12;
    v28->_c_struct._session_WifiHintPercentage = a13;
  }

  return v28;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 36) = 0;
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 21) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 76) = 0u;
  return self;
}

@end