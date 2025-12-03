@interface MOContextLocationMetaData
- (MOContextLocationMetaData)init;
- (MOContextLocationMetaData)initWithCoder:(id)coder;
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
  v24 = *MEMORY[0x277D85DE8];
  placeCopy = place;
  cityCopy = city;
  windowCopy = window;
  v17.receiver = self;
  v17.super_class = MOContextLocationMetaData;
  v12 = [(MOContextLocationMetaData *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_place, place);
    objc_storeStrong(&v13->_city, city);
    objc_storeStrong(&v13->_visitTimeWindow, window);
    v14 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v19 = placeCopy;
      v20 = 2112;
      v21 = cityCopy;
      v22 = 2112;
      v23 = windowCopy;
      _os_log_impl(&dword_25E48F000, v14, OS_LOG_TYPE_INFO, "LocationMetaData place,%@,city,%@,visitTimeWindow,%@", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
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
  v27[6] = *MEMORY[0x277D85DE8];
  v26[0] = @"latitude";
  v3 = MEMORY[0x277CCABB0];
  location = [(MOContextLocationMetaData *)self location];
  [location coordinate];
  v24 = [v3 numberWithDouble:?];
  v27[0] = v24;
  v26[1] = @"longitude";
  v4 = MEMORY[0x277CCABB0];
  location2 = [(MOContextLocationMetaData *)self location];
  [location2 coordinate];
  v22 = [v4 numberWithDouble:v5];
  v27[1] = v22;
  v26[2] = @"altitude";
  v6 = MEMORY[0x277CCABB0];
  location3 = [(MOContextLocationMetaData *)self location];
  [location3 altitude];
  v8 = [v6 numberWithDouble:?];
  v27[2] = v8;
  v26[3] = @"horizontalAccuracy";
  v9 = MEMORY[0x277CCABB0];
  location4 = [(MOContextLocationMetaData *)self location];
  [location4 horizontalAccuracy];
  v11 = [v9 numberWithDouble:?];
  v27[3] = v11;
  v26[4] = @"verticalAccuracy";
  v12 = MEMORY[0x277CCABB0];
  location5 = [(MOContextLocationMetaData *)self location];
  [location5 verticalAccuracy];
  v14 = [v12 numberWithDouble:?];
  v27[4] = v14;
  v26[5] = @"timestamp";
  v15 = MEMORY[0x277CCABB0];
  location6 = [(MOContextLocationMetaData *)self location];
  timestamp = [location6 timestamp];
  [timestamp timeIntervalSince1970];
  v18 = [v15 numberWithDouble:?];
  v27[5] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:6];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
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

  v10 = objc_alloc(MEMORY[0x277CE41F8]);
  v11 = [objectCopy objectForKeyedSubscript:@"altitude"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [objectCopy objectForKeyedSubscript:@"horizontalAccuracy"];
  [v14 doubleValue];
  v16 = v15;
  v17 = [objectCopy objectForKeyedSubscript:@"verticalAccuracy"];
  [v17 doubleValue];
  v19 = v18;
  v20 = MEMORY[0x277CBEAA8];
  v21 = [objectCopy objectForKeyedSubscript:@"timestamp"];

  [v21 doubleValue];
  v22 = [v20 dateWithTimeIntervalSince1970:?];
  v23 = [v10 initWithCoordinate:v22 altitude:v9.latitude horizontalAccuracy:v9.longitude verticalAccuracy:v13 timestamp:{v16, v19}];

  return v23;
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
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"location"];

  v13 = [(MOContextLocationMetaData *)self deserializeCLLocationObject:v12];
  v14 = [(MOContextLocationMetaData *)self initWithPlace:v5 city:v6 location:v13];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  place = [(MOContextLocationMetaData *)self place];
  mask = [place mask];
  city = [(MOContextLocationMetaData *)self city];
  mask2 = [city mask];
  location = [(MOContextLocationMetaData *)self location];
  v9 = [v3 stringWithFormat:@"place, %@, city, %@, location %{sensitive}@", mask, mask2, location];

  return v9;
}

@end