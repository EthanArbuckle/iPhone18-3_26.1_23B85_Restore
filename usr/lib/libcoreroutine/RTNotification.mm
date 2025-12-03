@interface RTNotification
+ (id)notificationName;
- (NSString)name;
- (RTNotification)init;
@end

@implementation RTNotification

- (RTNotification)init
{
  v3.receiver = self;
  v3.super_class = RTNotification;
  return [(RTNotification *)&v3 init];
}

- (NSString)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)notificationName
{
  v10 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "+[RTNotification notificationName]";
      v8 = 1024;
      v9 = 15;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "RTNotification should not be used directly. (in %s:%d)", &v6, 0x12u);
    }
  }

  v4 = NSStringFromClass(self);

  return v4;
}

@end