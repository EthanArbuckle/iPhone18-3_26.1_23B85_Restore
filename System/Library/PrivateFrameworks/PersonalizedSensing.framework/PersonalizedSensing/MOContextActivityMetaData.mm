@interface MOContextActivityMetaData
- (MOContextActivityMetaData)init;
- (MOContextActivityMetaData)initWithActivityType:(id)a3;
- (MOContextActivityMetaData)initWithActivityType:(id)a3 activityDuration:(id)a4;
- (MOContextActivityMetaData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContextActivityMetaData

- (MOContextActivityMetaData)init
{
  v3.receiver = self;
  v3.super_class = MOContextActivityMetaData;
  return [(MOContextActivityMetaData *)&v3 init];
}

- (MOContextActivityMetaData)initWithActivityType:(id)a3 activityDuration:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MOContextActivityMetaData;
  v9 = [(MOContextActivityMetaData *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityType, a3);
    objc_storeStrong(&v10->_activityDuration, a4);
    v11 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_25E48F000, v11, OS_LOG_TYPE_INFO, "ActivityMetaData activityType,%@,activityDuration,%@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (MOContextActivityMetaData)initWithActivityType:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MOContextActivityMetaData;
  v6 = [(MOContextActivityMetaData *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityType, a3);
    v8 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_25E48F000, v8, OS_LOG_TYPE_INFO, "ActivityMetaData activityType,%@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextActivityMetaData alloc];
  v5 = [(MOContextActivityMetaData *)self activityType];
  v6 = [(MOContextActivityMetaData *)self activityDuration];
  v7 = [(MOContextActivityMetaData *)v4 initWithActivityType:v5 activityDuration:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  activityType = self->_activityType;
  v5 = a3;
  [v5 encodeObject:activityType forKey:@"activityType"];
  [v5 encodeObject:self->_activityDuration forKey:@"activityDuration"];
}

- (MOContextActivityMetaData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityDuration"];

  v7 = [(MOContextActivityMetaData *)self initWithActivityType:v5 activityDuration:v6];
  return v7;
}

@end