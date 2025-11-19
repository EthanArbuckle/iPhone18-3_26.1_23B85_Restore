@interface RTDeviceMO
+ (id)fetchRequest;
+ (id)managedObjectWithIdentifier:(id)a3 deviceName:(id)a4 deviceClass:(id)a5 deviceModel:(id)a6 creationDate:(id)a7 inManagedObjectContext:(id)a8;
- (RTDeviceMO)device;
- (void)setDevice:(id)a3;
@end

@implementation RTDeviceMO

+ (id)managedObjectWithIdentifier:(id)a3 deviceName:(id)a4 deviceClass:(id)a5 deviceModel:(id)a6 creationDate:(id)a7 inManagedObjectContext:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v18)
  {
    v19 = [[RTDeviceMO alloc] initWithContext:v18];
    [(RTCloudManagedObject *)v19 setIdentifier:v13];
    [(RTDeviceMO *)v19 setDeviceName:v14];
    [(RTDeviceMO *)v19 setDeviceClass:v15];
    [(RTDeviceMO *)v19 setDeviceModel:v16];
    if (v17)
    {
      [(RTDeviceMO *)v19 setCreationDate:v17];
    }

    else
    {
      v21 = [MEMORY[0x277CBEAA8] date];
      [(RTDeviceMO *)v19 setCreationDate:v21];
    }

    v22 = [MEMORY[0x277CBEAA8] distantFuture];
    [(RTDeviceMO *)v19 setExpirationDate:v22];
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

- (void)setDevice:(id)a3
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