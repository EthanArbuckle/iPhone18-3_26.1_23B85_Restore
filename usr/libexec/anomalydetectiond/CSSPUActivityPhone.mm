@interface CSSPUActivityPhone
- (CSSPUActivityPhone)initWithTimestamp:(unint64_t)timestamp armTimeImuConfidences:(id)confidences armTimeActivityHints:(unsigned __int8)hints windowAfterArmImuConfidences:(id)imuConfidences triggerTimeLastHighImuDrivingConfidenceTimestamp:(unint64_t)confidenceTimestamp sessionSwivelAngleDegHistogram:(id)histogram sessionTiltAngleDegHistogram:(id)degHistogram sessionImuHintPercentage:(float)self0 sessionBtHintPercentage:(float)self1 sessionGpsHintPercentage:(float)self2 sessionWifiHintPercentage:(float)self3;
- (id).cxx_construct;
@end

@implementation CSSPUActivityPhone

- (CSSPUActivityPhone)initWithTimestamp:(unint64_t)timestamp armTimeImuConfidences:(id)confidences armTimeActivityHints:(unsigned __int8)hints windowAfterArmImuConfidences:(id)imuConfidences triggerTimeLastHighImuDrivingConfidenceTimestamp:(unint64_t)confidenceTimestamp sessionSwivelAngleDegHistogram:(id)histogram sessionTiltAngleDegHistogram:(id)degHistogram sessionImuHintPercentage:(float)self0 sessionBtHintPercentage:(float)self1 sessionGpsHintPercentage:(float)self2 sessionWifiHintPercentage:(float)self3
{
  confidencesCopy = confidences;
  imuConfidencesCopy = imuConfidences;
  histogramCopy = histogram;
  degHistogramCopy = degHistogram;
  v40.receiver = self;
  v40.super_class = CSSPUActivityPhone;
  v27 = [(CSSPUActivityPhone *)&v40 init];
  v28 = v27;
  if (v27)
  {
    v29 = 0;
    v27->_c_struct.timestamp = timestamp;
    do
    {
      v30 = [confidencesCopy objectAtIndexedSubscript:v29];
      [v30 floatValue];
      v28->_c_struct._armTime_ImuConfidences[v29] = v31;

      ++v29;
    }

    while (v29 != 3);
    v32 = 0;
    v28->_c_struct._armTime_ActivityHints = hints;
    do
    {
      v33 = [imuConfidencesCopy objectAtIndexedSubscript:v32];
      [v33 floatValue];
      v28->_c_struct._windowAfterArm_ImuConfidences[v32] = v34;

      ++v32;
    }

    while (v32 != 3);
    v35 = 0;
    v28->_c_struct._triggerTime_LastHighImuDrivingConfidenceTimestamp = confidenceTimestamp;
    do
    {
      v36 = [histogramCopy objectAtIndexedSubscript:v35];
      v28->_c_struct._session_SwivelAngleDegHistogram[v35] = [v36 intValue];

      ++v35;
    }

    while (v35 != 5);
    for (i = 0; i != 5; ++i)
    {
      v38 = [degHistogramCopy objectAtIndexedSubscript:i];
      v28->_c_struct._session_TiltAngleDegHistogram[i] = [v38 intValue];
    }

    v28->_c_struct._session_ImuHintPercentage = percentage;
    v28->_c_struct._session_BtHintPercentage = hintPercentage;
    v28->_c_struct._session_GpsHintPercentage = gpsHintPercentage;
    v28->_c_struct._session_WifiHintPercentage = wifiHintPercentage;
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