@interface RTUserSessionMonitor
+ (BOOL)supportsNotificationName:(id)name;
+ (RTUserSessionMonitor)allocWithZone:(_NSZone *)zone;
- (RTUserSessionMonitor)init;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
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

+ (RTUserSessionMonitor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [RTUserSessionMonitor_Embedded allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___RTUserSessionMonitor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  if (([objc_opt_class() supportsNotificationName:nameCopy] & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v12, 0xCu);
    }
  }

  v9 = +[(RTNotification *)RTUserSessionMonitorNotificationConsoleUserDidChange];
  v10 = [nameCopy isEqualToString:v9];

  if (v10)
  {
    v11 = [[RTUserSessionMonitorNotificationConsoleUserDidChange alloc] initWithactiveUser:self->_previouslyActiveUser];
    if (v11)
    {
      [(RTNotifier *)self postNotification:v11 toObserver:observerCopy];
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v8 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (([objc_opt_class() supportsNotificationName:nameCopy] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

+ (BOOL)supportsNotificationName:(id)name
{
  nameCopy = name;
  v4 = +[(RTNotification *)RTUserSessionMonitorNotificationConsoleUserDidChange];
  v5 = [nameCopy isEqualToString:v4];

  return v5;
}

@end