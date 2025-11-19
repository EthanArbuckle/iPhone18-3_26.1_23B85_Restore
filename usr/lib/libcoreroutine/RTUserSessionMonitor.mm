@interface RTUserSessionMonitor
+ (BOOL)supportsNotificationName:(id)a3;
+ (RTUserSessionMonitor)allocWithZone:(_NSZone *)a3;
- (RTUserSessionMonitor)init;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
@end

@implementation RTUserSessionMonitor

- (RTUserSessionMonitor)init
{
  v5.receiver = self;
  v5.super_class = RTUserSessionMonitor;
  v2 = [(RTNotifier *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_previouslyActiveUser = [(RTUserSessionMonitor *)v2 activeUser];
  }

  return v3;
}

+ (RTUserSessionMonitor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [RTUserSessionMonitor_Embedded allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___RTUserSessionMonitor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([objc_opt_class() supportsNotificationName:v7] & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v12, 0xCu);
    }
  }

  v9 = +[(RTNotification *)RTUserSessionMonitorNotificationConsoleUserDidChange];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = [[RTUserSessionMonitorNotificationConsoleUserDidChange alloc] initWithactiveUser:self->_previouslyActiveUser];
    if (v11)
    {
      [(RTNotifier *)self postNotification:v11 toObserver:v6];
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a4;
  if (([objc_opt_class() supportsNotificationName:v4] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

+ (BOOL)supportsNotificationName:(id)a3
{
  v3 = a3;
  v4 = +[(RTNotification *)RTUserSessionMonitorNotificationConsoleUserDidChange];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

@end