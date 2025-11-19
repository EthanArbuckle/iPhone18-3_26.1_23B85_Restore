@interface MOContextLocationMetaData
- (MOContextLocationMetaData)init;
- (MOContextLocationMetaData)initWithCoder:(id)a3;
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
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MOContextLocationMetaData;
  v12 = [(MOContextLocationMetaData *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_place, a3);
    objc_storeStrong(&v13->_city, a4);
    objc_storeStrong(&v13->_visitTimeWindow, a5);
    v14 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_25E48F000, v14, OS_LOG_TYPE_INFO, "LocationMetaData place,%@,city,%@,visitTimeWindow,%@", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
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
  v27[6] = *MEMORY[0x277D85DE8];
  v26[0] = @"latitude";
  v3 = MEMORY[0x277CCABB0];
  v25 = [(MOContextLocationMetaData *)self location];
  [v25 coordinate];
  v24 = [v3 numberWithDouble:?];
  v27[0] = v24;
  v26[1] = @"longitude";
  v4 = MEMORY[0x277CCABB0];
  v23 = [(MOContextLocationMetaData *)self location];
  [v23 coordinate];
  v22 = [v4 numberWithDouble:v5];
  v27[1] = v22;
  v26[2] = @"altitude";
  v6 = MEMORY[0x277CCABB0];
  v7 = [(MOContextLocationMetaData *)self location];
  [v7 altitude];
  v8 = [v6 numberWithDouble:?];
  v27[2] = v8;
  v26[3] = @"horizontalAccuracy";
  v9 = MEMORY[0x277CCABB0];
  v10 = [(MOContextLocationMetaData *)self location];
  [v10 horizontalAccuracy];
  v11 = [v9 numberWithDouble:?];
  v27[3] = v11;
  v26[4] = @"verticalAccuracy";
  v12 = MEMORY[0x277CCABB0];
  v13 = [(MOContextLocationMetaData *)self location];
  [v13 verticalAccuracy];
  v14 = [v12 numberWithDouble:?];
  v27[4] = v14;
  v26[5] = @"timestamp";
  v15 = MEMORY[0x277CCABB0];
  v16 = [(MOContextLocationMetaData *)self location];
  v17 = [v16 timestamp];
  [v17 timeIntervalSince1970];
  v18 = [v15 numberWithDouble:?];
  v27[5] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:6];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
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

  v10 = objc_alloc(MEMORY[0x277CE41F8]);
  v11 = [v3 objectForKeyedSubscript:@"altitude"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [v3 objectForKeyedSubscript:@"horizontalAccuracy"];
  [v14 doubleValue];
  v16 = v15;
  v17 = [v3 objectForKeyedSubscript:@"verticalAccuracy"];
  [v17 doubleValue];
  v19 = v18;
  v20 = MEMORY[0x277CBEAA8];
  v21 = [v3 objectForKeyedSubscript:@"timestamp"];

  [v21 doubleValue];
  v22 = [v20 dateWithTimeIntervalSince1970:?];
  v23 = [v10 initWithCoordinate:v22 altitude:v9.latitude horizontalAccuracy:v9.longitude verticalAccuracy:v13 timestamp:{v16, v19}];

  return v23;
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
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"location"];

  v13 = [(MOContextLocationMetaData *)self deserializeCLLocationObject:v12];
  v14 = [(MOContextLocationMetaData *)self initWithPlace:v5 city:v6 location:v13];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MOContextLocationMetaData *)self place];
  v5 = [v4 mask];
  v6 = [(MOContextLocationMetaData *)self city];
  v7 = [v6 mask];
  v8 = [(MOContextLocationMetaData *)self location];
  v9 = [v3 stringWithFormat:@"place, %@, city, %@, location %{sensitive}@", v5, v7, v8];

  return v9;
}

@end