@interface PRBTRssiMeasurement
- (PRBTRssiMeasurement)initWithTime:(double)a3 rssi:(int)a4 channel:(unint64_t)a5 uuid:(id)a6;
@end

@implementation PRBTRssiMeasurement

- (PRBTRssiMeasurement)initWithTime:(double)a3 rssi:(int)a4 channel:(unint64_t)a5 uuid:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = PRBTRssiMeasurement;
  v12 = [(PRBTRssiMeasurement *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_timestamp = a3;
    v12->_rssi = a4;
    v12->_channel = a5;
    objc_storeStrong(&v12->_uuid, a6);
  }

  return v13;
}

@end