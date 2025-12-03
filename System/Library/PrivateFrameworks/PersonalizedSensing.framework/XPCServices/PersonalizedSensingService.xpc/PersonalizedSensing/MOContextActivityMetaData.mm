@interface MOContextActivityMetaData
- (MOContextActivityMetaData)init;
- (MOContextActivityMetaData)initWithActivityMetaDataMO:(id)o;
- (MOContextActivityMetaData)initWithActivityType:(id)type;
- (MOContextActivityMetaData)initWithActivityType:(id)type activityDuration:(id)duration;
- (MOContextActivityMetaData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContextActivityMetaData

- (MOContextActivityMetaData)init
{
  v3.receiver = self;
  v3.super_class = MOContextActivityMetaData;
  return [(MOContextActivityMetaData *)&v3 init];
}

- (MOContextActivityMetaData)initWithActivityType:(id)type activityDuration:(id)duration
{
  typeCopy = type;
  durationCopy = duration;
  v13.receiver = self;
  v13.super_class = MOContextActivityMetaData;
  v9 = [(MOContextActivityMetaData *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityType, type);
    objc_storeStrong(&v10->_activityDuration, duration);
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v15 = typeCopy;
      v16 = 2112;
      v17 = durationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "ActivityMetaData activityType,%@,activityDuration,%@", buf, 0x16u);
    }
  }

  return v10;
}

- (MOContextActivityMetaData)initWithActivityType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = MOContextActivityMetaData;
  v6 = [(MOContextActivityMetaData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityType, type);
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = typeCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "ActivityMetaData activityType,%@", buf, 0xCu);
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextActivityMetaData alloc];
  activityType = [(MOContextActivityMetaData *)self activityType];
  activityDuration = [(MOContextActivityMetaData *)self activityDuration];
  v7 = [(MOContextActivityMetaData *)v4 initWithActivityType:activityType activityDuration:activityDuration];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  activityType = self->_activityType;
  coderCopy = coder;
  [coderCopy encodeObject:activityType forKey:@"activityType"];
  [coderCopy encodeObject:self->_activityDuration forKey:@"activityDuration"];
}

- (MOContextActivityMetaData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityDuration"];

  v7 = [(MOContextActivityMetaData *)self initWithActivityType:v5 activityDuration:v6];
  return v7;
}

- (MOContextActivityMetaData)initWithActivityMetaDataMO:(id)o
{
  if (o)
  {
    oCopy = o;
    activityType = [oCopy activityType];
    activityDuration = [oCopy activityDuration];

    self = [(MOContextActivityMetaData *)self initWithActivityType:activityType activityDuration:activityDuration];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end