@interface RTDeviceMO
+ (id)fetchRequest;
+ (id)managedObjectWithIdentifier:(id)identifier deviceName:(id)name deviceClass:(id)class deviceModel:(id)model creationDate:(id)date inManagedObjectContext:(id)context;
- (RTDeviceMO)device;
- (void)setDevice:(id)device;
@end

@implementation RTDeviceMO

+ (id)managedObjectWithIdentifier:(id)identifier deviceName:(id)name deviceClass:(id)class deviceModel:(id)model creationDate:(id)date inManagedObjectContext:(id)context
{
  identifierCopy = identifier;
  nameCopy = name;
  classCopy = class;
  modelCopy = model;
  dateCopy = date;
  contextCopy = context;
  if (contextCopy)
  {
    v19 = [[RTDeviceMO alloc] initWithContext:contextCopy];
    [(RTCloudManagedObject *)v19 setIdentifier:identifierCopy];
    [(RTDeviceMO *)v19 setDeviceName:nameCopy];
    [(RTDeviceMO *)v19 setDeviceClass:classCopy];
    [(RTDeviceMO *)v19 setDeviceModel:modelCopy];
    if (dateCopy)
    {
      [(RTDeviceMO *)v19 setCreationDate:dateCopy];
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [(RTDeviceMO *)v19 setCreationDate:date];
    }

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    [(RTDeviceMO *)v19 setExpirationDate:distantFuture];
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext", v24, 2u);
    }

    v19 = 0;
  }

  return v19;
}

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"RTDeviceMO"];

  return v2;
}

- (RTDeviceMO)device
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[RTDeviceMO(CoreDataProperties) device]";
    v6 = 1024;
    v7 = 26;
    _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "This method should never be called. (in %s:%d)", &v4, 0x12u);
  }

  return 0;
}

- (void)setDevice:(id)device
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[RTDeviceMO(CoreDataProperties) setDevice:]";
    v6 = 1024;
    v7 = 32;
    _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "This method should never be called. (in %s:%d)", &v4, 0x12u);
  }
}

@end