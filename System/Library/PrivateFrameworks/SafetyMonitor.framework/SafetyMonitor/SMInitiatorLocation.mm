@interface SMInitiatorLocation
+ (BOOL)isCLLocationValid:(id)valid;
- (BOOL)isValid;
- (SMInitiatorLocation)initWithCLLocation:(id)location;
- (SMInitiatorLocation)initWithCoder:(id)coder;
- (SMInitiatorLocation)initWithDictionary:(id)dictionary;
- (SMInitiatorLocation)initWithIdentifier:(id)identifier latitude:(double)latitude longitude:(double)longitude hunc:(double)hunc altitude:(double)altitude vunc:(double)vunc date:(id)date;
- (id)description;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMInitiatorLocation

- (SMInitiatorLocation)initWithIdentifier:(id)identifier latitude:(double)latitude longitude:(double)longitude hunc:(double)hunc altitude:(double)altitude vunc:(double)vunc date:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  if (identifierCopy)
  {
    v24.receiver = self;
    v24.super_class = SMInitiatorLocation;
    v19 = [(SMInitiatorLocation *)&v24 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_identifier, identifier);
      v20->_hunc = hunc;
      v20->_altitude = altitude;
      v20->_latitude = latitude;
      v20->_longitude = longitude;
      objc_storeStrong(&v20->_date, date);
      v20->_vunc = vunc;
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (SMInitiatorLocation)initWithCLLocation:(id)location
{
  locationCopy = location;
  v5 = objc_opt_new();
  [locationCopy coordinate];
  v7 = v6;
  [locationCopy coordinate];
  v9 = v8;
  [locationCopy horizontalAccuracy];
  v11 = v10;
  [locationCopy altitude];
  v13 = v12;
  [locationCopy verticalAccuracy];
  v15 = v14;
  timestamp = [locationCopy timestamp];

  v17 = [(SMInitiatorLocation *)self initWithIdentifier:v5 latitude:timestamp longitude:v7 hunc:v9 altitude:v11 vunc:v13 date:v15];
  return v17;
}

+ (BOOL)isCLLocationValid:(id)valid
{
  validCopy = valid;
  v4 = [[SMInitiatorLocation alloc] initWithCLLocation:validCopy];

  LOBYTE(validCopy) = [(SMInitiatorLocation *)v4 isValid];
  return validCopy;
}

- (BOOL)isValid
{
  [(SMInitiatorLocation *)self latitude];
  v4 = v3;
  [(SMInitiatorLocation *)self longitude];
  v12 = CLLocationCoordinate2DMake(v4, v5);
  if (!CLLocationCoordinate2DIsValid(v12))
  {
    return 0;
  }

  [(SMInitiatorLocation *)self latitude];
  if (v6 == 0.0)
  {
    [(SMInitiatorLocation *)self longitude];
    if (v7 == 0.0)
    {
      return 0;
    }
  }

  [(SMInitiatorLocation *)self hunc];
  if (v8 <= 0.0)
  {
    return 0;
  }

  date = [(SMInitiatorLocation *)self date];
  v10 = date != 0;

  return v10;
}

- (SMInitiatorLocation)initWithDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CCAD78];
  dictionaryCopy = dictionary;
  v6 = [v4 alloc];
  v7 = [dictionaryCopy valueForKey:@"identifier"];
  v8 = [v6 initWithUUIDString:v7];

  v9 = [dictionaryCopy valueForKey:@"latitude"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [dictionaryCopy valueForKey:@"longitude"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [dictionaryCopy valueForKey:@"hunc"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [dictionaryCopy valueForKey:@"altitude"];
  [v18 doubleValue];
  v20 = v19;

  v21 = [dictionaryCopy valueForKey:@"vunc"];
  [v21 doubleValue];
  v23 = v22;

  v24 = [dictionaryCopy valueForKey:@"date"];

  [v24 doubleValue];
  v26 = v25;

  v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v26];
  v28 = [(SMInitiatorLocation *)self initWithIdentifier:v8 latitude:v27 longitude:v11 hunc:v14 altitude:v17 vunc:v20 date:v23];

  return v28;
}

- (id)outputToDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  identifier = [(SMInitiatorLocation *)self identifier];
  uUIDString = [identifier UUIDString];
  [v3 setObject:uUIDString forKey:@"identifier"];

  v6 = MEMORY[0x277CCABB0];
  [(SMInitiatorLocation *)self latitude];
  v7 = [v6 numberWithDouble:?];
  [v3 setObject:v7 forKey:@"latitude"];

  v8 = MEMORY[0x277CCABB0];
  [(SMInitiatorLocation *)self longitude];
  v9 = [v8 numberWithDouble:?];
  [v3 setObject:v9 forKey:@"longitude"];

  v10 = MEMORY[0x277CCABB0];
  [(SMInitiatorLocation *)self hunc];
  v11 = [v10 numberWithDouble:?];
  [v3 setObject:v11 forKey:@"hunc"];

  v12 = MEMORY[0x277CCABB0];
  [(SMInitiatorLocation *)self altitude];
  v13 = [v12 numberWithDouble:?];
  [v3 setObject:v13 forKey:@"altitude"];

  v14 = MEMORY[0x277CCABB0];
  [(SMInitiatorLocation *)self vunc];
  v15 = [v14 numberWithDouble:?];
  [v3 setObject:v15 forKey:@"vunc"];

  v16 = MEMORY[0x277CCABB0];
  date = [(SMInitiatorLocation *)self date];
  [date timeIntervalSince1970];
  v18 = [v16 numberWithDouble:?];
  [v3 setObject:v18 forKey:@"date"];

  return v3;
}

- (SMInitiatorLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [coderCopy decodeDoubleForKey:@"latitude"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"longitude"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"hunc"];
  v11 = v10;
  [coderCopy decodeDoubleForKey:@"altitude"];
  v13 = v12;
  [coderCopy decodeDoubleForKey:@"vunc"];
  v15 = v14;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v17 = [(SMInitiatorLocation *)self initWithIdentifier:v5 latitude:v16 longitude:v7 hunc:v9 altitude:v11 vunc:v13 date:v15];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SMInitiatorLocation *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [(SMInitiatorLocation *)self latitude];
  [coderCopy encodeDouble:@"latitude" forKey:?];
  [(SMInitiatorLocation *)self longitude];
  [coderCopy encodeDouble:@"longitude" forKey:?];
  [(SMInitiatorLocation *)self hunc];
  [coderCopy encodeDouble:@"hunc" forKey:?];
  [(SMInitiatorLocation *)self altitude];
  [coderCopy encodeDouble:@"altitude" forKey:?];
  [(SMInitiatorLocation *)self vunc];
  [coderCopy encodeDouble:@"vunc" forKey:?];
  date = [(SMInitiatorLocation *)self date];
  [coderCopy encodeObject:date forKey:@"date"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(SMInitiatorLocation *)self identifier];
  [(SMInitiatorLocation *)self latitude];
  v6 = v5;
  [(SMInitiatorLocation *)self longitude];
  v8 = v7;
  [(SMInitiatorLocation *)self hunc];
  v10 = v9;
  [(SMInitiatorLocation *)self altitude];
  v12 = v11;
  [(SMInitiatorLocation *)self vunc];
  v14 = v13;
  date = [(SMInitiatorLocation *)self date];
  stringFromDate = [date stringFromDate];
  v17 = [v3 stringWithFormat:@"identifier, %@, latitude, %f, longitude, %f, hunc, %f, altitude, %f, vunc, %f, date, %@", identifier, v6, v8, v10, v12, v14, stringFromDate];

  return v17;
}

@end