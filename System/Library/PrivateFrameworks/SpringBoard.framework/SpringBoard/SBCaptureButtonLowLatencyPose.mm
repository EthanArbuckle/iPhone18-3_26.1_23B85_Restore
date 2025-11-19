@interface SBCaptureButtonLowLatencyPose
- (SBCaptureButtonLowLatencyPose)initWithTimeSinceLastStationary:(double)a3 timeSinceLastNonStationary:(double)a4;
@end

@implementation SBCaptureButtonLowLatencyPose

- (SBCaptureButtonLowLatencyPose)initWithTimeSinceLastStationary:(double)a3 timeSinceLastNonStationary:(double)a4
{
  v7.receiver = self;
  v7.super_class = SBCaptureButtonLowLatencyPose;
  result = [(SBCaptureButtonLowLatencyPose *)&v7 init];
  if (result)
  {
    result->_timeSinceLastStationary = a3;
    result->_timeSinceLastNonStationary = a4;
  }

  return result;
}

@end