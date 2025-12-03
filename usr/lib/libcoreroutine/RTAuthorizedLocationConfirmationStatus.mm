@interface RTAuthorizedLocationConfirmationStatus
+ (id)createWithAuthorizedLocationCofirmationStatusMO:(id)o;
+ (id)createWithManagedObject:(id)object;
- (RTAuthorizedLocationConfirmationStatus)initWithCoder:(id)coder;
- (RTAuthorizedLocationConfirmationStatus)initWithConfirmationStatus:(int64_t)status statusCode:(int64_t)code timeOfEvent:(id)event zdrStatus:(int64_t)zdrStatus zdrStatusCode:(int64_t)statusCode zdrTimeOfEvent:(id)ofEvent;
- (id)managedObjectWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTAuthorizedLocationConfirmationStatus

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
      v6 = [objc_opt_class() createWithAuthorizedLocationCofirmationStatusMO:v5];

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
      v15 = "+[RTAuthorizedLocationConfirmationStatus(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 31;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTAuthorizedLocationConfirmationStatusStoreMO+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithAuthorizedLocationCofirmationStatusMO:(id)o
{
  oCopy = o;
  v4 = [RTAuthorizedLocationConfirmationStatus alloc];
  confirmationStatus = [oCopy confirmationStatus];
  confirmationStatusCode = [oCopy confirmationStatusCode];
  confirmationStatusTime = [oCopy confirmationStatusTime];
  zdrConfirmationStatus = [oCopy zdrConfirmationStatus];
  zdrConfirmationStatusCode = [oCopy zdrConfirmationStatusCode];
  zdrConfirmationStatusTime = [oCopy zdrConfirmationStatusTime];

  v11 = [(RTAuthorizedLocationConfirmationStatus *)v4 initWithConfirmationStatus:confirmationStatus statusCode:confirmationStatusCode timeOfEvent:confirmationStatusTime zdrStatus:zdrConfirmationStatus zdrStatusCode:zdrConfirmationStatusCode zdrTimeOfEvent:zdrConfirmationStatusTime];

  return v11;
}

- (id)managedObjectWithContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v13 = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = contextCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@,%@", &v13, 0x20u);
    }

    v10 = [RTAuthorizedLocationConfirmationStatusMO managedObjectWithAuthorizedLocationConfirmationStatus:self inManagedObjectContext:contextCopy];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", &v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (RTAuthorizedLocationConfirmationStatus)initWithConfirmationStatus:(int64_t)status statusCode:(int64_t)code timeOfEvent:(id)event zdrStatus:(int64_t)zdrStatus zdrStatusCode:(int64_t)statusCode zdrTimeOfEvent:(id)ofEvent
{
  eventCopy = event;
  ofEventCopy = ofEvent;
  v20.receiver = self;
  v20.super_class = RTAuthorizedLocationConfirmationStatus;
  v17 = [(RTAuthorizedLocationConfirmationStatus *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_confirmationStatusCode = code;
    v17->_confirmationStatus = status;
    objc_storeStrong(&v17->_confirmationStatusTime, event);
    v18->_zdrConfirmationStatusCode = statusCode;
    v18->_zdrConfirmationStatus = zdrStatus;
    objc_storeStrong(&v18->_zdrConfirmationStatusTime, ofEvent);
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  confirmationStatus = self->_confirmationStatus;
  coderCopy = coder;
  [coderCopy encodeInteger:confirmationStatus forKey:@"statusIdentifier"];
  [coderCopy encodeInteger:self->_confirmationStatusCode forKey:@"statusCodeIdentifier"];
  [coderCopy encodeObject:self->_confirmationStatusTime forKey:@"statusDateIdentifier"];
  [coderCopy encodeInteger:self->_zdrConfirmationStatus forKey:@"zdrStatusIdentifier"];
  [coderCopy encodeInteger:self->_zdrConfirmationStatusCode forKey:@"zdrStatusCodeIdentifier"];
  [coderCopy encodeObject:self->_zdrConfirmationStatusTime forKey:@"zdrStatusDateIdentifier"];
}

- (RTAuthorizedLocationConfirmationStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"statusIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"statusCodeIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusDateIdentifier"];
  v8 = [coderCopy decodeIntegerForKey:@"zdrStatusIdentifier"];
  v9 = [coderCopy decodeIntegerForKey:@"zdrStatusCodeIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zdrStatusDateIdentifier"];

  v11 = [(RTAuthorizedLocationConfirmationStatus *)self initWithConfirmationStatus:v5 statusCode:v6 timeOfEvent:v7 zdrStatus:v8 zdrStatusCode:v9 zdrTimeOfEvent:v10];
  return v11;
}

@end