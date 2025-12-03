@interface SBCaptureButtonLowLatencyPose
- (SBCaptureButtonLowLatencyPose)initWithTimeSinceLastStationary:(double)stationary timeSinceLastNonStationary:(double)nonStationary;
@end

@implementation SBCaptureButtonLowLatencyPose

- (SBCaptureButtonLowLatencyPose)initWithTimeSinceLastStationary:(double)stationary timeSinceLastNonStationary:(double)nonStationary
{
  v7.receiver = self;
  v7.super_class = SBCaptureButtonLowLatencyPose;
  result = [(SBCaptureButtonLowLatencyPose *)&v7 init];
  if (result)
  {
    result->_timeSinceLastStationary = stationary;
    result->_timeSinceLastNonStationary = nonStationary;
  }

  return result;
}

@end