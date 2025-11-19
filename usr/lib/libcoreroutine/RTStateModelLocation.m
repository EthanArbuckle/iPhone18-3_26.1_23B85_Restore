@interface RTStateModelLocation
- (RTStateModelLocation)init;
- (RTStateModelLocation)initWithCLLocation:(id)a3;
- (RTStateModelLocation)initWithCoder:(id)a3;
- (RTStateModelLocation)initWithLat:(double)a3 Lon:(double)a4 Uncertainty:(double)a5 confidence:(double)a6 andTimestamp_s:(double)a7 referenceFrame:(int)a8;
- (RTStateModelLocation)initWithLatitude:(double)a3 longitude:(double)a4 uncertainty:(double)a5;
- (RTStateModelLocation)initWithRTLocation:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStateModelLocation

- (RTStateModelLocation)init
{
  Current = CFAbsoluteTimeGetCurrent();

  return [(RTStateModelLocation *)self initWithLat:0 Lon:-360.0 Uncertainty:-360.0 confidence:-1.0 andTimestamp_s:0.0 referenceFrame:Current];
}

- (RTStateModelLocation)initWithLat:(double)a3 Lon:(double)a4 Uncertainty:(double)a5 confidence:(double)a6 andTimestamp_s:(double)a7 referenceFrame:(int)a8
{
  v15.receiver = self;
  v15.super_class = RTStateModelLocation;
  result = [(RTStateModelLocation *)&v15 init];
  if (result)
  {
    result->_Latitude_deg = a3;
    result->_Longitude_deg = a4;
    result->_uncertainty_m = a5;
    result->_confidence = a6;
    result->_timestamp_s = a7;
    result->_referenceFrame = a8;
  }

  return result;
}

- (RTStateModelLocation)initWithCLLocation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 coordinate];
    v6 = v5;
    [v4 coordinate];
    v8 = v7;
    [v4 horizontalAccuracy];
    v10 = v9;
    v11 = [v4 timestamp];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;
    v14 = [v4 referenceFrame];

    self = [(RTStateModelLocation *)self initWithLat:v14 Lon:v6 Uncertainty:v8 confidence:v10 andTimestamp_s:0.0 referenceFrame:v13];
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (RTStateModelLocation)initWithRTLocation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 latitude];
    v6 = v5;
    [v4 longitude];
    v8 = v7;
    [v4 horizontalUncertainty];
    v10 = v9;
    v11 = [v4 date];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;
    v14 = [v4 referenceFrame];

    self = [(RTStateModelLocation *)self initWithLat:v14 Lon:v6 Uncertainty:v8 confidence:v10 andTimestamp_s:0.0 referenceFrame:v13];
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (RTStateModelLocation)initWithLatitude:(double)a3 longitude:(double)a4 uncertainty:(double)a5
{
  Current = CFAbsoluteTimeGetCurrent();

  return [(RTStateModelLocation *)self initWithLat:a3 Lon:a4 Uncertainty:a5 confidence:0.0 andTimestamp_s:Current];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(RTStateModelLocation *)self Latitude_deg];
  [v4 encodeDouble:@"Latitude_deg" forKey:?];
  [(RTStateModelLocation *)self Longitude_deg];
  [v4 encodeDouble:@"Longitude_deg" forKey:?];
  [(RTStateModelLocation *)self uncertainty_m];
  [v4 encodeDouble:@"uncertainty_m" forKey:?];
  [(RTStateModelLocation *)self confidence];
  [v4 encodeDouble:@"confidence" forKey:?];
  [(RTStateModelLocation *)self timestamp_s];
  [v4 encodeDouble:@"timestamp_s" forKey:?];
}

- (RTStateModelLocation)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"Latitude_deg"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"Longitude_deg"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"uncertainty_m"];
  v10 = v9;
  v11 = 0.0;
  if ([v4 containsValueForKey:@"confidence"])
  {
    [v4 decodeDoubleForKey:@"confidence"];
    v11 = v12;
  }

  [v4 decodeDoubleForKey:@"timestamp_s"];
  v14 = [(RTStateModelLocation *)self initWithLat:v6 Lon:v8 Uncertainty:v10 confidence:v11 andTimestamp_s:v13];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(RTStateModelLocation *)self Latitude_deg];
  v5 = v4;
  [(RTStateModelLocation *)self Longitude_deg];
  v7 = v6;
  [(RTStateModelLocation *)self uncertainty_m];
  v9 = v8;
  [(RTStateModelLocation *)self confidence];
  v11 = v10;
  [(RTStateModelLocation *)self timestamp_s];
  v13 = v12;
  if (v12 == -1.0)
  {
    v15 = 0;
  }

  else
  {
    v14 = MEMORY[0x277CBEAA8];
    [(RTStateModelLocation *)self timestamp_s];
    v15 = [v14 stringFromTimestamp:?];
  }

  v16 = [v3 stringWithFormat:@"<%f, %f> +/- %f, confidence, %f, date, %@, referenceFrame, %d", v5, v7, v9, v11, v15, -[RTStateModelLocation referenceFrame](self, "referenceFrame")];
  if (v13 != -1.0)
  {
  }

  return v16;
}

@end