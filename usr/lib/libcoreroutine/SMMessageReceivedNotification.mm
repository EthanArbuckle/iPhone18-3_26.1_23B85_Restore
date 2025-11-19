@interface SMMessageReceivedNotification
- (SMMessageReceivedNotification)init;
- (SMMessageReceivedNotification)initWithMessage:(id)a3 fromHandle:(id)a4 fromMe:(BOOL)a5;
@end

@implementation SMMessageReceivedNotification

- (SMMessageReceivedNotification)init
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SMMessageReceivedNotification init]";
    v7 = 1024;
    v8 = 68;
    _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "default initializer not supported for SMMessageReceivedNotification (in %s:%d)", &v5, 0x12u);
  }

  return 0;
}

- (SMMessageReceivedNotification)initWithMessage:(id)a3 fromHandle:(id)a4 fromMe:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v14 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: message";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!v10)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: from";
    goto LABEL_12;
  }

  v18.receiver = self;
  v18.super_class = SMMessageReceivedNotification;
  v12 = [(RTNotification *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_message, a3);
    objc_storeStrong(&v13->_from, a4);
    v13->_fromMe = a5;
  }

  self = v13;
  v14 = self;
LABEL_10:

  return v14;
}

@end