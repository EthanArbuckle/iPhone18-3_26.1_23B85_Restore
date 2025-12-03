@interface MOContextLocationMetaData
- (MOContextLocationMetaData)init;
- (MOContextLocationMetaData)initWithCoder:(id)coder;
- (MOContextLocationMetaData)initWithLocationMetaDataMO:(id)o;
- (MOContextLocationMetaData)initWithPlace:(id)place city:(id)city;
- (MOContextLocationMetaData)initWithPlace:(id)place city:(id)city location:(id)location;
- (MOContextLocationMetaData)initWithPlace:(id)place city:(id)city visitTimeWindow:(id)window;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)deserializeCLLocationObject:(id)object;
- (id)serializeCLLocationObject;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContextLocationMetaData

- (MOContextLocationMetaData)init
{
  v3.receiver = self;
  v3.super_class = MOContextLocationMetaData;
  return [(MOContextLocationMetaData *)&v3 init];
}

- (MOContextLocationMetaData)initWithPlace:(id)place city:(id)city visitTimeWindow:(id)window
{
  placeCopy = place;
  cityCopy = city;
  windowCopy = window;
  v16.receiver = self;
  v16.super_class = MOContextLocationMetaData;
  v12 = [(MOContextLocationMetaData *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_place, place);
    objc_storeStrong(&v13->_city, city);
    objc_storeStrong(&v13->_visitTimeWindow, window);
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v18 = placeCopy;
      v19 = 2112;
      v20 = cityCopy;
      v21 = 2112;
      v22 = windowCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "LocationMetaData place,%@,city,%@,visitTimeWindow,%@", buf, 0x20u);
    }
  }

  return v13;
}

- (MOContextLocationMetaData)initWithPlace:(id)place city:(id)city
{
  placeCopy = place;
  cityCopy = city;
  v12.receiver = self;
  v12.super_class = MOContextLocationMetaData;
  v9 = [(MOContextLocationMetaData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_place, place);
    objc_storeStrong(&v10->_city, city);
  }

  return v10;
}

- (MOContextLocationMetaData)initWithPlace:(id)place city:(id)city location:(id)location
{
  placeCopy = place;
  cityCopy = city;
  locationCopy = location;
  v15.receiver = self;
  v15.super_class = MOContextLocationMetaData;
  v12 = [(MOContextLocationMetaData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_place, place);
    objc_storeStrong(&v13->_city, city);
    objc_storeStrong(&v13->_location, location);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextLocationMetaData alloc];
  place = [(MOContextLocationMetaData *)self place];
  city = [(MOContextLocationMetaData *)self city];
  visitTimeWindow = [(MOContextLocationMetaData *)self visitTimeWindow];
  v8 = [(MOContextLocationMetaData *)v4 initWithPlace:place city:city visitTimeWindow:visitTimeWindow];

  return v8;
}

- (id)serializeCLLocationObject
{
  v19[0] = @"latitude";
  location = [(MOContextLocationMetaData *)self location];
  [location coordinate];
  v17 = [NSNumber numberWithDouble:?];
  v20[0] = v17;
  v19[1] = @"longitude";
  location2 = [(MOContextLocationMetaData *)self location];
  [location2 coordinate];
  v15 = [NSNumber numberWithDouble:v3];
  v20[1] = v15;
  v19[2] = @"altitude";
  location3 = [(MOContextLocationMetaData *)self location];
  [location3 altitude];
  v5 = [NSNumber numberWithDouble:?];
  v20[2] = v5;
  v19[3] = @"horizontalAccuracy";
  location4 = [(MOContextLocationMetaData *)self location];
  [location4 horizontalAccuracy];
  v7 = [NSNumber numberWithDouble:?];
  v20[3] = v7;
  v19[4] = @"verticalAccuracy";
  location5 = [(MOContextLocationMetaData *)self location];
  [location5 verticalAccuracy];
  v9 = [NSNumber numberWithDouble:?];
  v20[4] = v9;
  v19[5] = @"timestamp";
  location6 = [(MOContextLocationMetaData *)self location];
  timestamp = [location6 timestamp];
  [timestamp timeIntervalSince1970];
  v12 = [NSNumber numberWithDouble:?];
  v20[5] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:6];

  return v13;
}

- (id)deserializeCLLocationObject:(id)object
{
  objectCopy = object;
  v4 = [objectCopy objectForKeyedSubscript:@"latitude"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [objectCopy objectForKeyedSubscript:@"longitude"];
  [v7 doubleValue];
  v9 = CLLocationCoordinate2DMake(v6, v8);

  v10 = [CLLocation alloc];
  v11 = [objectCopy objectForKeyedSubscript:@"altitude"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [objectCopy objectForKeyedSubscript:@"horizontalAccuracy"];
  [v14 doubleValue];
  v16 = v15;
  v17 = [objectCopy objectForKeyedSubscript:@"verticalAccuracy"];
  [v17 doubleValue];
  v19 = v18;
  v20 = [objectCopy objectForKeyedSubscript:@"timestamp"];

  [v20 doubleValue];
  v21 = [NSDate dateWithTimeIntervalSince1970:?];
  v22 = [v10 initWithCoordinate:v21 altitude:v9.latitude horizontalAccuracy:v9.longitude verticalAccuracy:v13 timestamp:{v16, v19}];

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  place = self->_place;
  coderCopy = coder;
  [coderCopy encodeObject:place forKey:@"place"];
  [coderCopy encodeObject:self->_city forKey:@"city"];
  [coderCopy encodeObject:self->_visitTimeWindow forKey:@"visitTimeWindow"];
  serializeCLLocationObject = [(MOContextLocationMetaData *)self serializeCLLocationObject];
  [coderCopy encodeObject:serializeCLLocationObject forKey:@"location"];
}

- (MOContextLocationMetaData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"place"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"city"];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v7, v8, v9, objc_opt_class(), 0];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"location"];

  v12 = [(MOContextLocationMetaData *)self deserializeCLLocationObject:v11];
  v13 = [(MOContextLocationMetaData *)self initWithPlace:v5 city:v6 location:v12];

  return v13;
}

- (id)description
{
  place = [(MOContextLocationMetaData *)self place];
  mask = [place mask];
  city = [(MOContextLocationMetaData *)self city];
  mask2 = [city mask];
  location = [(MOContextLocationMetaData *)self location];
  v8 = [NSString stringWithFormat:@"place, %@, city, %@, location %{sensitive}@", mask, mask2, location];

  return v8;
}

- (MOContextLocationMetaData)initWithLocationMetaDataMO:(id)o
{
  if (o)
  {
    oCopy = o;
    place = [oCopy place];
    city = [oCopy city];

    self = [(MOContextLocationMetaData *)self initWithPlace:place city:city];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end