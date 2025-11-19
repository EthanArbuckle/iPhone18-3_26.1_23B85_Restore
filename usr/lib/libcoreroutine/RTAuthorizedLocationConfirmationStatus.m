@interface RTAuthorizedLocationConfirmationStatus
+ (id)createWithAuthorizedLocationCofirmationStatusMO:(id)a3;
+ (id)createWithManagedObject:(id)a3;
- (RTAuthorizedLocationConfirmationStatus)initWithCoder:(id)a3;
- (RTAuthorizedLocationConfirmationStatus)initWithConfirmationStatus:(int64_t)a3 statusCode:(int64_t)a4 timeOfEvent:(id)a5 zdrStatus:(int64_t)a6 zdrStatusCode:(int64_t)a7 zdrTimeOfEvent:(id)a8;
- (id)managedObjectWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTAuthorizedLocationConfirmationStatus

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
      v13 = v4;
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

+ (id)createWithAuthorizedLocationCofirmationStatusMO:(id)a3
{
  v3 = a3;
  v4 = [RTAuthorizedLocationConfirmationStatus alloc];
  v5 = [v3 confirmationStatus];
  v6 = [v3 confirmationStatusCode];
  v7 = [v3 confirmationStatusTime];
  v8 = [v3 zdrConfirmationStatus];
  v9 = [v3 zdrConfirmationStatusCode];
  v10 = [v3 zdrConfirmationStatusTime];

  v11 = [(RTAuthorizedLocationConfirmationStatus *)v4 initWithConfirmationStatus:v5 statusCode:v6 timeOfEvent:v7 zdrStatus:v8 zdrStatusCode:v9 zdrTimeOfEvent:v10];

  return v11;
}

- (id)managedObjectWithContext:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
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
      v18 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@,%@", &v13, 0x20u);
    }

    v10 = [RTAuthorizedLocationConfirmationStatusMO managedObjectWithAuthorizedLocationConfirmationStatus:self inManagedObjectContext:v5];
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

- (RTAuthorizedLocationConfirmationStatus)initWithConfirmationStatus:(int64_t)a3 statusCode:(int64_t)a4 timeOfEvent:(id)a5 zdrStatus:(int64_t)a6 zdrStatusCode:(int64_t)a7 zdrTimeOfEvent:(id)a8
{
  v15 = a5;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = RTAuthorizedLocationConfirmationStatus;
  v17 = [(RTAuthorizedLocationConfirmationStatus *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_confirmationStatusCode = a4;
    v17->_confirmationStatus = a3;
    objc_storeStrong(&v17->_confirmationStatusTime, a5);
    v18->_zdrConfirmationStatusCode = a7;
    v18->_zdrConfirmationStatus = a6;
    objc_storeStrong(&v18->_zdrConfirmationStatusTime, a8);
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  confirmationStatus = self->_confirmationStatus;
  v5 = a3;
  [v5 encodeInteger:confirmationStatus forKey:@"statusIdentifier"];
  [v5 encodeInteger:self->_confirmationStatusCode forKey:@"statusCodeIdentifier"];
  [v5 encodeObject:self->_confirmationStatusTime forKey:@"statusDateIdentifier"];
  [v5 encodeInteger:self->_zdrConfirmationStatus forKey:@"zdrStatusIdentifier"];
  [v5 encodeInteger:self->_zdrConfirmationStatusCode forKey:@"zdrStatusCodeIdentifier"];
  [v5 encodeObject:self->_zdrConfirmationStatusTime forKey:@"zdrStatusDateIdentifier"];
}

- (RTAuthorizedLocationConfirmationStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"statusIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"statusCodeIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusDateIdentifier"];
  v8 = [v4 decodeIntegerForKey:@"zdrStatusIdentifier"];
  v9 = [v4 decodeIntegerForKey:@"zdrStatusCodeIdentifier"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zdrStatusDateIdentifier"];

  v11 = [(RTAuthorizedLocationConfirmationStatus *)self initWithConfirmationStatus:v5 statusCode:v6 timeOfEvent:v7 zdrStatus:v8 zdrStatusCode:v9 zdrTimeOfEvent:v10];
  return v11;
}

@end