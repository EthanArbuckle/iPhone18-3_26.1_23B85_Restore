@interface PRBTProximityMeasurement
+ (id)btProximityWithTime:(double)a3 proximityLevel:(unint64_t)a4 rssi:(double)a5 continuousProximityLevel:(id)a6 uuid:(id)a7 proximityTrend:(unint64_t)a8;
- (PRBTProximityMeasurement)initWithTime:(double)a3 proximityLevel:(unint64_t)a4 rssi:(double)a5 continuousProximityLevel:(id)a6 uuid:(id)a7 proximityTrend:(unint64_t)a8;
@end

@implementation PRBTProximityMeasurement

+ (id)btProximityWithTime:(double)a3 proximityLevel:(unint64_t)a4 rssi:(double)a5 continuousProximityLevel:(id)a6 uuid:(id)a7 proximityTrend:(unint64_t)a8
{
  v13 = a7;
  v14 = a6;
  v15 = [[PRBTProximityMeasurement alloc] initWithTime:a4 proximityLevel:v14 rssi:v13 continuousProximityLevel:a8 uuid:a3 proximityTrend:a5];

  return v15;
}

- (PRBTProximityMeasurement)initWithTime:(double)a3 proximityLevel:(unint64_t)a4 rssi:(double)a5 continuousProximityLevel:(id)a6 uuid:(id)a7 proximityTrend:(unint64_t)a8
{
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = PRBTProximityMeasurement;
  v17 = [(PRBTProximityMeasurement *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_timestamp = a3;
    v17->_proximityLevel = a4;
    v17->_rssi = a5;
    objc_storeStrong(&v17->_continuousProximityLevel, a6);
    objc_storeStrong(&v18->_uuid, a7);
    v18->_proximityTrend = a8;
  }

  return v18;
}

@end