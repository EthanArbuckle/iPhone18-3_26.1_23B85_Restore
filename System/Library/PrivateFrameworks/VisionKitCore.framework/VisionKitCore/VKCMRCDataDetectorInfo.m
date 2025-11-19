@interface VKCMRCDataDetectorInfo
- (VKCMRCDataDetectorInfo)initWithBarcodeObservation:(id)a3;
@end

@implementation VKCMRCDataDetectorInfo

- (VKCMRCDataDetectorInfo)initWithBarcodeObservation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VKCMRCDataDetectorInfo;
  v6 = [(VKCMRCDataDetectorInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observation, a3);
  }

  return v7;
}

@end