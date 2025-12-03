@interface SMMessageReceivedNotification
- (SMMessageReceivedNotification)init;
- (SMMessageReceivedNotification)initWithMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
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

- (SMMessageReceivedNotification)initWithMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  messageCopy = message;
  handleCopy = handle;
  v11 = handleCopy;
  if (!messageCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: message";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!handleCopy)
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
    objc_storeStrong(&v12->_message, message);
    objc_storeStrong(&v13->_from, handle);
    v13->_fromMe = me;
  }

  self = v13;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

@end