@interface SABeaconGroupVerifierResult
- (SABeaconGroupVerifierResult)init;
@end

@implementation SABeaconGroupVerifierResult

- (SABeaconGroupVerifierResult)init
{
  v9.receiver = self;
  v9.super_class = SABeaconGroupVerifierResult;
  v2 = [(SABeaconGroupVerifierResult *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_beaconGroupComplete = 257;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    deviceUUIDtoDeviceMap = v3->_deviceUUIDtoDeviceMap;
    v3->_deviceUUIDtoDeviceMap = v4;

    v6 = [MEMORY[0x277CBEB38] dictionary];
    deviceToSafeLocationMap = v3->_deviceToSafeLocationMap;
    v3->_deviceToSafeLocationMap = v6;
  }

  return v3;
}

@end