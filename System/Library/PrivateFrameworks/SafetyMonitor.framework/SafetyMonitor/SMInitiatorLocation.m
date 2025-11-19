@interface SMInitiatorLocation
+ (BOOL)isCLLocationValid:(id)a3;
- (BOOL)isValid;
- (SMInitiatorLocation)initWithCLLocation:(id)a3;
- (SMInitiatorLocation)initWithCoder:(id)a3;
- (SMInitiatorLocation)initWithDictionary:(id)a3;
- (SMInitiatorLocation)initWithIdentifier:(id)a3 latitude:(double)a4 longitude:(double)a5 hunc:(double)a6 altitude:(double)a7 vunc:(double)a8 date:(id)a9;
- (id)description;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMInitiatorLocation

- (SMInitiatorLocation)initWithIdentifier:(id)a3 latitude:(double)a4 longitude:(double)a5 hunc:(double)a6 altitude:(double)a7 vunc:(double)a8 date:(id)a9
{
  v17 = a3;
  v18 = a9;
  if (v17)
  {
    v24.receiver = self;
    v24.super_class = SMInitiatorLocation;
    v19 = [(SMInitiatorLocation *)&v24 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_identifier, a3);
      v20->_hunc = a6;
      v20->_altitude = a7;
      v20->_latitude = a4;
      v20->_longitude = a5;
      objc_storeStrong(&v20->_date, a9);
      v20->_vunc = a8;
    }

    self = v20;
    v21 = self;
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v21 = 0;
  }

  return v21;
}

- (SMInitiatorLocation)initWithCLLocation:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v4 coordinate];
  v7 = v6;
  [v4 coordinate];
  v9 = v8;
  [v4 horizontalAccuracy];
  v11 = v10;
  [v4 altitude];
  v13 = v12;
  [v4 verticalAccuracy];
  v15 = v14;
  v16 = [v4 timestamp];

  v17 = [(SMInitiatorLocation *)self initWithIdentifier:v5 latitude:v16 longitude:v7 hunc:v9 altitude:v11 vunc:v13 date:v15];
  return v17;
}

+ (BOOL)isCLLocationValid:(id)a3
{
  v3 = a3;
  v4 = [[SMInitiatorLocation alloc] initWithCLLocation:v3];

  LOBYTE(v3) = [(SMInitiatorLocation *)v4 isValid];
  return v3;
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

  v9 = [(SMInitiatorLocation *)self date];
  v10 = v9 != 0;

  return v10;
}

- (SMInitiatorLocation)initWithDictionary:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 valueForKey:@"identifier"];
  v8 = [v6 initWithUUIDString:v7];

  v9 = [v5 valueForKey:@"latitude"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v5 valueForKey:@"longitude"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v5 valueForKey:@"hunc"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [v5 valueForKey:@"altitude"];
  [v18 doubleValue];
  v20 = v19;

  v21 = [v5 valueForKey:@"vunc"];
  [v21 doubleValue];
  v23 = v22;

  v24 = [v5 valueForKey:@"date"];

  [v24 doubleValue];
  v26 = v25;

  v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v26];
  v28 = [(SMInitiatorLocation *)self initWithIdentifier:v8 latitude:v27 longitude:v11 hunc:v14 altitude:v17 vunc:v20 date:v23];

  return v28;
}

- (id)outputToDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(SMInitiatorLocation *)self identifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKey:@"identifier"];

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
  v17 = [(SMInitiatorLocation *)self date];
  [v17 timeIntervalSince1970];
  v18 = [v16 numberWithDouble:?];
  [v3 setObject:v18 forKey:@"date"];

  return v3;
}

- (SMInitiatorLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [v4 decodeDoubleForKey:@"latitude"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"longitude"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"hunc"];
  v11 = v10;
  [v4 decodeDoubleForKey:@"altitude"];
  v13 = v12;
  [v4 decodeDoubleForKey:@"vunc"];
  v15 = v14;
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v17 = [(SMInitiatorLocation *)self initWithIdentifier:v5 latitude:v16 longitude:v7 hunc:v9 altitude:v11 vunc:v13 date:v15];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SMInitiatorLocation *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  [(SMInitiatorLocation *)self latitude];
  [v4 encodeDouble:@"latitude" forKey:?];
  [(SMInitiatorLocation *)self longitude];
  [v4 encodeDouble:@"longitude" forKey:?];
  [(SMInitiatorLocation *)self hunc];
  [v4 encodeDouble:@"hunc" forKey:?];
  [(SMInitiatorLocation *)self altitude];
  [v4 encodeDouble:@"altitude" forKey:?];
  [(SMInitiatorLocation *)self vunc];
  [v4 encodeDouble:@"vunc" forKey:?];
  v6 = [(SMInitiatorLocation *)self date];
  [v4 encodeObject:v6 forKey:@"date"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SMInitiatorLocation *)self identifier];
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
  v15 = [(SMInitiatorLocation *)self date];
  v16 = [v15 stringFromDate];
  v17 = [v3 stringWithFormat:@"identifier, %@, latitude, %f, longitude, %f, hunc, %f, altitude, %f, vunc, %f, date, %@", v4, v6, v8, v10, v12, v14, v16];

  return v17;
}

@end