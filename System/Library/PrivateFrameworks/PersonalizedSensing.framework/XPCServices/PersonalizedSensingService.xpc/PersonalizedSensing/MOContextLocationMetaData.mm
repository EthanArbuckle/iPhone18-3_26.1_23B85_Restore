@interface MOContextLocationMetaData
- (MOContextLocationMetaData)init;
- (MOContextLocationMetaData)initWithCoder:(id)a3;
- (MOContextLocationMetaData)initWithLocationMetaDataMO:(id)a3;
- (MOContextLocationMetaData)initWithPlace:(id)a3 city:(id)a4;
- (MOContextLocationMetaData)initWithPlace:(id)a3 city:(id)a4 location:(id)a5;
- (MOContextLocationMetaData)initWithPlace:(id)a3 city:(id)a4 visitTimeWindow:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)deserializeCLLocationObject:(id)a3;
- (id)serializeCLLocationObject;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContextLocationMetaData

- (MOContextLocationMetaData)init
{
  v3.receiver = self;
  v3.super_class = MOContextLocationMetaData;
  return [(MOContextLocationMetaData *)&v3 init];
}

- (MOContextLocationMetaData)initWithPlace:(id)a3 city:(id)a4 visitTimeWindow:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = MOContextLocationMetaData;
  v12 = [(MOContextLocationMetaData *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_place, a3);
    objc_storeStrong(&v13->_city, a4);
    objc_storeStrong(&v13->_visitTimeWindow, a5);
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "LocationMetaData place,%@,city,%@,visitTimeWindow,%@", buf, 0x20u);
    }
  }

  return v13;
}

- (MOContextLocationMetaData)initWithPlace:(id)a3 city:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MOContextLocationMetaData;
  v9 = [(MOContextLocationMetaData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_place, a3);
    objc_storeStrong(&v10->_city, a4);
  }

  return v10;
}

- (MOContextLocationMetaData)initWithPlace:(id)a3 city:(id)a4 location:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MOContextLocationMetaData;
  v12 = [(MOContextLocationMetaData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_place, a3);
    objc_storeStrong(&v13->_city, a4);
    objc_storeStrong(&v13->_location, a5);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextLocationMetaData alloc];
  v5 = [(MOContextLocationMetaData *)self place];
  v6 = [(MOContextLocationMetaData *)self city];
  v7 = [(MOContextLocationMetaData *)self visitTimeWindow];
  v8 = [(MOContextLocationMetaData *)v4 initWithPlace:v5 city:v6 visitTimeWindow:v7];

  return v8;
}

- (id)serializeCLLocationObject
{
  v19[0] = @"latitude";
  v18 = [(MOContextLocationMetaData *)self location];
  [v18 coordinate];
  v17 = [NSNumber numberWithDouble:?];
  v20[0] = v17;
  v19[1] = @"longitude";
  v16 = [(MOContextLocationMetaData *)self location];
  [v16 coordinate];
  v15 = [NSNumber numberWithDouble:v3];
  v20[1] = v15;
  v19[2] = @"altitude";
  v4 = [(MOContextLocationMetaData *)self location];
  [v4 altitude];
  v5 = [NSNumber numberWithDouble:?];
  v20[2] = v5;
  v19[3] = @"horizontalAccuracy";
  v6 = [(MOContextLocationMetaData *)self location];
  [v6 horizontalAccuracy];
  v7 = [NSNumber numberWithDouble:?];
  v20[3] = v7;
  v19[4] = @"verticalAccuracy";
  v8 = [(MOContextLocationMetaData *)self location];
  [v8 verticalAccuracy];
  v9 = [NSNumber numberWithDouble:?];
  v20[4] = v9;
  v19[5] = @"timestamp";
  v10 = [(MOContextLocationMetaData *)self location];
  v11 = [v10 timestamp];
  [v11 timeIntervalSince1970];
  v12 = [NSNumber numberWithDouble:?];
  v20[5] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:6];

  return v13;
}

- (id)deserializeCLLocationObject:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"latitude"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [v3 objectForKeyedSubscript:@"longitude"];
  [v7 doubleValue];
  v9 = CLLocationCoordinate2DMake(v6, v8);

  v10 = [CLLocation alloc];
  v11 = [v3 objectForKeyedSubscript:@"altitude"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [v3 objectForKeyedSubscript:@"horizontalAccuracy"];
  [v14 doubleValue];
  v16 = v15;
  v17 = [v3 objectForKeyedSubscript:@"verticalAccuracy"];
  [v17 doubleValue];
  v19 = v18;
  v20 = [v3 objectForKeyedSubscript:@"timestamp"];

  [v20 doubleValue];
  v21 = [NSDate dateWithTimeIntervalSince1970:?];
  v22 = [v10 initWithCoordinate:v21 altitude:v9.latitude horizontalAccuracy:v9.longitude verticalAccuracy:v13 timestamp:{v16, v19}];

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  place = self->_place;
  v5 = a3;
  [v5 encodeObject:place forKey:@"place"];
  [v5 encodeObject:self->_city forKey:@"city"];
  [v5 encodeObject:self->_visitTimeWindow forKey:@"visitTimeWindow"];
  v6 = [(MOContextLocationMetaData *)self serializeCLLocationObject];
  [v5 encodeObject:v6 forKey:@"location"];
}

- (MOContextLocationMetaData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"place"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"city"];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v7, v8, v9, objc_opt_class(), 0];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"location"];

  v12 = [(MOContextLocationMetaData *)self deserializeCLLocationObject:v11];
  v13 = [(MOContextLocationMetaData *)self initWithPlace:v5 city:v6 location:v12];

  return v13;
}

- (id)description
{
  v3 = [(MOContextLocationMetaData *)self place];
  v4 = [v3 mask];
  v5 = [(MOContextLocationMetaData *)self city];
  v6 = [v5 mask];
  v7 = [(MOContextLocationMetaData *)self location];
  v8 = [NSString stringWithFormat:@"place, %@, city, %@, location %{sensitive}@", v4, v6, v7];

  return v8;
}

- (MOContextLocationMetaData)initWithLocationMetaDataMO:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 place];
    v6 = [v4 city];

    self = [(MOContextLocationMetaData *)self initWithPlace:v5 city:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end