@interface RTAuthorizedLocationVisitLog
+ (BOOL)decodeTimeSourceWithValue:(id)a3 isRetroRegistration:(BOOL *)a4 isTrusted:(BOOL *)a5;
+ (id)createWithAuthorizedLocationVisitLogMO:(id)a3;
+ (id)createWithManagedObject:(id)a3;
+ (id)encodeTimeSourceWithValue:(id)a3 isTrusted:(BOOL)a4 isRetroRegistration:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RTAuthorizedLocationVisitLog)initWithCoder:(id)a3;
- (RTAuthorizedLocationVisitLog)initWithVisitIdentifier:(id)a3 registrationDate:(id)a4 locationTechnologyAvailability:(unint64_t)a5;
- (id)managedObjectWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTAuthorizedLocationVisitLog

+ (id)createWithManagedObject:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [objc_opt_class() createWithAuthorizedLocationVisitLogMO:v5];

      goto LABEL_8;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138413058;
      v11 = v9;
      v12 = 2112;
      v14 = 2080;
      v13 = v4;
      v15 = "+[RTAuthorizedLocationVisitLog(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 31;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTAuthorizedLocationVisitLog+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithAuthorizedLocationVisitLogMO:(id)a3
{
  v3 = a3;
  if ([v3 locationTechnologyAvailability])
  {
    v4 = [v3 locationTechnologyAvailability];
  }

  else
  {
    v4 = 0;
  }

  v5 = [RTAuthorizedLocationVisitLog alloc];
  v6 = [v3 visitIdentifier];
  v7 = [v3 registrationDate];
  v8 = [(RTAuthorizedLocationVisitLog *)v5 initWithVisitIdentifier:v6 registrationDate:v7 locationTechnologyAvailability:v4];

  return v8;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTAuthorizedLocationVisitLogMO managedObjectWithAuthorizedLocationVisitLog:self inManagedObjectContext:a3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (RTAuthorizedLocationVisitLog)initWithVisitIdentifier:(id)a3 registrationDate:(id)a4 locationTechnologyAvailability:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v14 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: visitIdentifier";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!v10)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: registrationDate";
    goto LABEL_12;
  }

  v18.receiver = self;
  v18.super_class = RTAuthorizedLocationVisitLog;
  v12 = [(RTAuthorizedLocationVisitLog *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_visitIdentifier, a3);
    objc_storeStrong(&v13->_registrationDate, a4);
    v13->_locationTechnologyAvailability = a5;
  }

  self = v13;
  v14 = self;
LABEL_10:

  return v14;
}

+ (id)encodeTimeSourceWithValue:(id)a3 isTrusted:(BOOL)a4 isRetroRegistration:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v8 = floor(v7);
  v9 = 0.5;
  if (v6)
  {
    v9 = 0.0;
  }

  if (v5)
  {
    v9 = 0.25;
  }

  v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v9 + v8];

  return v10;
}

+ (BOOL)decodeTimeSourceWithValue:(id)a3 isRetroRegistration:(BOOL *)a4 isTrusted:(BOOL *)a5
{
  v7 = a3;
  v8 = v7;
  v9 = 0;
  if (a4 && a5)
  {
    [v7 timeIntervalSinceReferenceDate];
    v11 = v10;
    [v8 timeIntervalSinceReferenceDate];
    v13 = v11 - floor(v12);
    if (fabs(v13 + -0.25) < 0.001)
    {
      v14 = 0;
      v15 = 1;
LABEL_9:
      *a4 = v15;
      *a5 = v14;
      v9 = 1;
      goto LABEL_10;
    }

    if (fabs(v13 + -0.5) < 0.001)
    {
      v15 = 0;
      v14 = 0;
      goto LABEL_9;
    }

    v9 = 0;
    if (fabs(v13) < 0.001)
    {
      v15 = 0;
      v14 = 1;
      goto LABEL_9;
    }
  }

LABEL_10:

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  visitIdentifier = self->_visitIdentifier;
  v5 = a3;
  [v5 encodeObject:visitIdentifier forKey:@"visitIdentifier"];
  [v5 encodeObject:self->_registrationDate forKey:@"registrationDate"];
  [v5 encodeInteger:self->_locationTechnologyAvailability forKey:@"locationTechnologyAvailability"];
}

- (RTAuthorizedLocationVisitLog)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visitIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"registrationDate"];
  v7 = [v4 decodeIntegerForKey:@"locationTechnologyAvailability"];

  v8 = [(RTAuthorizedLocationVisitLog *)self initWithVisitIdentifier:v5 registrationDate:v6 locationTechnologyAvailability:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()];
  visitIdentifier = self->_visitIdentifier;
  v7 = [v4 visitIdentifier];
  v8 = [(NSUUID *)visitIdentifier isEqual:v7];

  registrationDate = self->_registrationDate;
  v10 = [v4 registrationDate];
  v11 = [(NSDate *)registrationDate isEqual:v10];

  locationTechnologyAvailability = self->_locationTechnologyAvailability;
  v13 = [v4 locationTechnologyAvailability];

  if (locationTechnologyAvailability == v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v8)
  {
    v14 = 0;
  }

  return v5 && v14;
}

- (NSString)description
{
  v14 = 0;
  v3 = [RTAuthorizedLocationVisitLog decodeTimeSourceWithValue:self->_registrationDate isRetroRegistration:&v14 + 1 isTrusted:&v14];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(NSUUID *)self->_visitIdentifier UUIDString];
  v6 = [v5 UTF8String];
  v7 = [(NSDate *)self->_registrationDate stringFromDate];
  v8 = v7;
  locationTechnologyAvailability = self->_locationTechnologyAvailability;
  if (v3)
  {
    [v4 stringWithFormat:@"Visit UUID, %s, registrationDate, %@, locationTechnologyAvailability, %lu, isRetroRegistration, %d, isTrustedTime, %d", v6, v7, locationTechnologyAvailability, HIBYTE(v14), v14];
  }

  else
  {
    [v4 stringWithFormat:@"Visit UUID, %s, registrationDate, %@, locationTechnologyAvailability, %lu", v6, v7, locationTechnologyAvailability, v12, v13];
  }
  v10 = ;

  return v10;
}

@end