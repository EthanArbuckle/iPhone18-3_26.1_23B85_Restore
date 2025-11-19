@interface SMMessageDeletedNotification
- (SMMessageDeletedNotification)init;
- (SMMessageDeletedNotification)initWithMessage:(id)a3;
@end

@implementation SMMessageDeletedNotification

- (SMMessageDeletedNotification)init
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SMMessageDeletedNotification init]";
    v7 = 1024;
    v8 = 93;
    _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "default initializer not supported for SMMessageDeletedNotification (in %s:%d)", &v5, 0x12u);
  }

  return 0;
}

- (SMMessageDeletedNotification)initWithMessage:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = SMMessageDeletedNotification;
    v6 = [(RTNotification *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_message, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: message", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

@end