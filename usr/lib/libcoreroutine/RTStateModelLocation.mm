@interface RTStateModelLocation
- (RTStateModelLocation)init;
- (RTStateModelLocation)initWithCLLocation:(id)location;
- (RTStateModelLocation)initWithCoder:(id)coder;
- (RTStateModelLocation)initWithLat:(double)lat Lon:(double)lon Uncertainty:(double)uncertainty confidence:(double)confidence andTimestamp_s:(double)timestamp_s referenceFrame:(int)frame;
- (RTStateModelLocation)initWithLatitude:(double)latitude longitude:(double)longitude uncertainty:(double)uncertainty;
- (RTStateModelLocation)initWithRTLocation:(id)location;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStateModelLocation

- (RTStateModelLocation)init
{
  Current = CFAbsoluteTimeGetCurrent();

  return [(RTStateModelLocation *)self initWithLat:0 Lon:-360.0 Uncertainty:-360.0 confidence:-1.0 andTimestamp_s:0.0 referenceFrame:Current];
}

- (RTStateModelLocation)initWithLat:(double)lat Lon:(double)lon Uncertainty:(double)uncertainty confidence:(double)confidence andTimestamp_s:(double)timestamp_s referenceFrame:(int)frame
{
  v15.receiver = self;
  v15.super_class = RTStateModelLocation;
  result = [(RTStateModelLocation *)&v15 init];
  if (result)
  {
    result->_Latitude_deg = lat;
    result->_Longitude_deg = lon;
    result->_uncertainty_m = uncertainty;
    result->_confidence = confidence;
    result->_timestamp_s = timestamp_s;
    result->_referenceFrame = frame;
  }

  return result;
}

- (RTStateModelLocation)initWithCLLocation:(id)location
{
  if (location)
  {
    locationCopy = location;
    [locationCopy coordinate];
    v6 = v5;
    [locationCopy coordinate];
    v8 = v7;
    [locationCopy horizontalAccuracy];
    v10 = v9;
    timestamp = [locationCopy timestamp];
    [timestamp timeIntervalSinceReferenceDate];
    v13 = v12;
    referenceFrame = [locationCopy referenceFrame];

    self = [(RTStateModelLocation *)self initWithLat:referenceFrame Lon:v6 Uncertainty:v8 confidence:v10 andTimestamp_s:0.0 referenceFrame:v13];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (RTStateModelLocation)initWithRTLocation:(id)location
{
  if (location)
  {
    locationCopy = location;
    [locationCopy latitude];
    v6 = v5;
    [locationCopy longitude];
    v8 = v7;
    [locationCopy horizontalUncertainty];
    v10 = v9;
    date = [locationCopy date];
    [date timeIntervalSinceReferenceDate];
    v13 = v12;
    referenceFrame = [locationCopy referenceFrame];

    self = [(RTStateModelLocation *)self initWithLat:referenceFrame Lon:v6 Uncertainty:v8 confidence:v10 andTimestamp_s:0.0 referenceFrame:v13];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (RTStateModelLocation)initWithLatitude:(double)latitude longitude:(double)longitude uncertainty:(double)uncertainty
{
  Current = CFAbsoluteTimeGetCurrent();

  return [(RTStateModelLocation *)self initWithLat:latitude Lon:longitude Uncertainty:uncertainty confidence:0.0 andTimestamp_s:Current];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(RTStateModelLocation *)self Latitude_deg];
  [coderCopy encodeDouble:@"Latitude_deg" forKey:?];
  [(RTStateModelLocation *)self Longitude_deg];
  [coderCopy encodeDouble:@"Longitude_deg" forKey:?];
  [(RTStateModelLocation *)self uncertainty_m];
  [coderCopy encodeDouble:@"uncertainty_m" forKey:?];
  [(RTStateModelLocation *)self confidence];
  [coderCopy encodeDouble:@"confidence" forKey:?];
  [(RTStateModelLocation *)self timestamp_s];
  [coderCopy encodeDouble:@"timestamp_s" forKey:?];
}

- (RTStateModelLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"Latitude_deg"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"Longitude_deg"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"uncertainty_m"];
  v10 = v9;
  v11 = 0.0;
  if ([coderCopy containsValueForKey:@"confidence"])
  {
    [coderCopy decodeDoubleForKey:@"confidence"];
    v11 = v12;
  }

  [coderCopy decodeDoubleForKey:@"timestamp_s"];
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