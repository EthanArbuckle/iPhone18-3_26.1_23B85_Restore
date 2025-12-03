@interface VKCMRCDataDetectorInfo
- (VKCMRCDataDetectorInfo)initWithBarcodeObservation:(id)observation;
@end

@implementation VKCMRCDataDetectorInfo

- (VKCMRCDataDetectorInfo)initWithBarcodeObservation:(id)observation
{
  observationCopy = observation;
  v9.receiver = self;
  v9.super_class = VKCMRCDataDetectorInfo;
  v6 = [(VKCMRCDataDetectorInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observation, observation);
  }

  return v7;
}

@end