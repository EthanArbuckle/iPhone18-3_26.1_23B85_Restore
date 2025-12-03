@interface PRBTProximityMeasurement
+ (id)btProximityWithTime:(double)time proximityLevel:(unint64_t)level rssi:(double)rssi continuousProximityLevel:(id)proximityLevel uuid:(id)uuid proximityTrend:(unint64_t)trend;
- (PRBTProximityMeasurement)initWithTime:(double)time proximityLevel:(unint64_t)level rssi:(double)rssi continuousProximityLevel:(id)proximityLevel uuid:(id)uuid proximityTrend:(unint64_t)trend;
@end

@implementation PRBTProximityMeasurement

+ (id)btProximityWithTime:(double)time proximityLevel:(unint64_t)level rssi:(double)rssi continuousProximityLevel:(id)proximityLevel uuid:(id)uuid proximityTrend:(unint64_t)trend
{
  uuidCopy = uuid;
  proximityLevelCopy = proximityLevel;
  v15 = [[PRBTProximityMeasurement alloc] initWithTime:level proximityLevel:proximityLevelCopy rssi:uuidCopy continuousProximityLevel:trend uuid:time proximityTrend:rssi];

  return v15;
}

- (PRBTProximityMeasurement)initWithTime:(double)time proximityLevel:(unint64_t)level rssi:(double)rssi continuousProximityLevel:(id)proximityLevel uuid:(id)uuid proximityTrend:(unint64_t)trend
{
  proximityLevelCopy = proximityLevel;
  uuidCopy = uuid;
  v20.receiver = self;
  v20.super_class = PRBTProximityMeasurement;
  v17 = [(PRBTProximityMeasurement *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_timestamp = time;
    v17->_proximityLevel = level;
    v17->_rssi = rssi;
    objc_storeStrong(&v17->_continuousProximityLevel, proximityLevel);
    objc_storeStrong(&v18->_uuid, uuid);
    v18->_proximityTrend = trend;
  }

  return v18;
}

@end