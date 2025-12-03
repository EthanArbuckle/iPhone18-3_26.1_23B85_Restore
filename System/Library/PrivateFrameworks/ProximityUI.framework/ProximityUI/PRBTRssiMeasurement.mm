@interface PRBTRssiMeasurement
- (PRBTRssiMeasurement)initWithTime:(double)time rssi:(int)rssi channel:(unint64_t)channel uuid:(id)uuid;
@end

@implementation PRBTRssiMeasurement

- (PRBTRssiMeasurement)initWithTime:(double)time rssi:(int)rssi channel:(unint64_t)channel uuid:(id)uuid
{
  uuidCopy = uuid;
  v15.receiver = self;
  v15.super_class = PRBTRssiMeasurement;
  v12 = [(PRBTRssiMeasurement *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_timestamp = time;
    v12->_rssi = rssi;
    v12->_channel = channel;
    objc_storeStrong(&v12->_uuid, uuid);
  }

  return v13;
}

@end