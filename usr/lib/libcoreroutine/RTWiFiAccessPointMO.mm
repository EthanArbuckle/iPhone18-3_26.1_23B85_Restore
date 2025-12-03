@interface RTWiFiAccessPointMO
+ (id)fetchRequest;
+ (id)managedObjectWithAccessPoint:(id)point inManagedObjectContext:(id)context;
@end

@implementation RTWiFiAccessPointMO

+ (id)managedObjectWithAccessPoint:(id)point inManagedObjectContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  contextCopy = context;
  if (contextCopy)
  {
    v7 = [[RTWiFiAccessPointMO alloc] initWithContext:contextCopy];
    v8 = [pointCopy mac];
    [(RTWiFiAccessPointMO *)v7 setMac:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pointCopy, "rssi")}];
    [(RTWiFiAccessPointMO *)v7 setRssi:v9];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pointCopy, "channel")}];
    [(RTWiFiAccessPointMO *)v7 setChannel:v10];

    v11 = MEMORY[0x277CCABB0];
    [pointCopy age];
    v12 = [v11 numberWithDouble:?];
    [(RTWiFiAccessPointMO *)v7 setAge:v12];

    date = [pointCopy date];
    [(RTWiFiAccessPointMO *)v7 setDate:date];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "+[RTWiFiAccessPointMO managedObjectWithAccessPoint:inManagedObjectContext:]";
      v18 = 1024;
      v19 = 21;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext (in %s:%d)", &v16, 0x12u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"RTWiFiAccessPointMO"];

  return v2;
}

@end