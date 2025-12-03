@interface RTAuthorizedLocationVisitLog
+ (BOOL)decodeTimeSourceWithValue:(id)value isRetroRegistration:(BOOL *)registration isTrusted:(BOOL *)trusted;
+ (id)createWithAuthorizedLocationVisitLogMO:(id)o;
+ (id)createWithManagedObject:(id)object;
+ (id)encodeTimeSourceWithValue:(id)value isTrusted:(BOOL)trusted isRetroRegistration:(BOOL)registration;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RTAuthorizedLocationVisitLog)initWithCoder:(id)coder;
- (RTAuthorizedLocationVisitLog)initWithVisitIdentifier:(id)identifier registrationDate:(id)date locationTechnologyAvailability:(unint64_t)availability;
- (id)managedObjectWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTAuthorizedLocationVisitLog

+ (id)createWithManagedObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectCopy;
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
      v13 = objectCopy;
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

+ (id)createWithAuthorizedLocationVisitLogMO:(id)o
{
  oCopy = o;
  if ([oCopy locationTechnologyAvailability])
  {
    locationTechnologyAvailability = [oCopy locationTechnologyAvailability];
  }

  else
  {
    locationTechnologyAvailability = 0;
  }

  v5 = [RTAuthorizedLocationVisitLog alloc];
  visitIdentifier = [oCopy visitIdentifier];
  registrationDate = [oCopy registrationDate];
  v8 = [(RTAuthorizedLocationVisitLog *)v5 initWithVisitIdentifier:visitIdentifier registrationDate:registrationDate locationTechnologyAvailability:locationTechnologyAvailability];

  return v8;
}

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTAuthorizedLocationVisitLogMO managedObjectWithAuthorizedLocationVisitLog:self inManagedObjectContext:context];
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

- (RTAuthorizedLocationVisitLog)initWithVisitIdentifier:(id)identifier registrationDate:(id)date locationTechnologyAvailability:(unint64_t)availability
{
  identifierCopy = identifier;
  dateCopy = date;
  v11 = dateCopy;
  if (!identifierCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: visitIdentifier";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!dateCopy)
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
    objc_storeStrong(&v12->_visitIdentifier, identifier);
    objc_storeStrong(&v13->_registrationDate, date);
    v13->_locationTechnologyAvailability = availability;
  }

  self = v13;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

+ (id)encodeTimeSourceWithValue:(id)value isTrusted:(BOOL)trusted isRetroRegistration:(BOOL)registration
{
  registrationCopy = registration;
  trustedCopy = trusted;
  [value timeIntervalSinceReferenceDate];
  v8 = floor(v7);
  v9 = 0.5;
  if (trustedCopy)
  {
    v9 = 0.0;
  }

  if (registrationCopy)
  {
    v9 = 0.25;
  }

  v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v9 + v8];

  return v10;
}

+ (BOOL)decodeTimeSourceWithValue:(id)value isRetroRegistration:(BOOL *)registration isTrusted:(BOOL *)trusted
{
  valueCopy = value;
  v8 = valueCopy;
  v9 = 0;
  if (registration && trusted)
  {
    [valueCopy timeIntervalSinceReferenceDate];
    v11 = v10;
    [v8 timeIntervalSinceReferenceDate];
    v13 = v11 - floor(v12);
    if (fabs(v13 + -0.25) < 0.001)
    {
      v14 = 0;
      v15 = 1;
LABEL_9:
      *registration = v15;
      *trusted = v14;
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

- (void)encodeWithCoder:(id)coder
{
  visitIdentifier = self->_visitIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:visitIdentifier forKey:@"visitIdentifier"];
  [coderCopy encodeObject:self->_registrationDate forKey:@"registrationDate"];
  [coderCopy encodeInteger:self->_locationTechnologyAvailability forKey:@"locationTechnologyAvailability"];
}

- (RTAuthorizedLocationVisitLog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visitIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"registrationDate"];
  v7 = [coderCopy decodeIntegerForKey:@"locationTechnologyAvailability"];

  v8 = [(RTAuthorizedLocationVisitLog *)self initWithVisitIdentifier:v5 registrationDate:v6 locationTechnologyAvailability:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()];
  visitIdentifier = self->_visitIdentifier;
  visitIdentifier = [equalCopy visitIdentifier];
  v8 = [(NSUUID *)visitIdentifier isEqual:visitIdentifier];

  registrationDate = self->_registrationDate;
  registrationDate = [equalCopy registrationDate];
  v11 = [(NSDate *)registrationDate isEqual:registrationDate];

  locationTechnologyAvailability = self->_locationTechnologyAvailability;
  locationTechnologyAvailability = [equalCopy locationTechnologyAvailability];

  if (locationTechnologyAvailability == locationTechnologyAvailability)
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
  uUIDString = [(NSUUID *)self->_visitIdentifier UUIDString];
  uTF8String = [uUIDString UTF8String];
  stringFromDate = [(NSDate *)self->_registrationDate stringFromDate];
  v8 = stringFromDate;
  locationTechnologyAvailability = self->_locationTechnologyAvailability;
  if (v3)
  {
    [v4 stringWithFormat:@"Visit UUID, %s, registrationDate, %@, locationTechnologyAvailability, %lu, isRetroRegistration, %d, isTrustedTime, %d", uTF8String, stringFromDate, locationTechnologyAvailability, HIBYTE(v14), v14];
  }

  else
  {
    [v4 stringWithFormat:@"Visit UUID, %s, registrationDate, %@, locationTechnologyAvailability, %lu", uTF8String, stringFromDate, locationTechnologyAvailability, v12, v13];
  }
  v10 = ;

  return v10;
}

@end