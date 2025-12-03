@interface SMSessionStartMessageSendResultNotification
- (SMSessionStartMessageSendResultNotification)init;
- (SMSessionStartMessageSendResultNotification)initWithSessionStartMessage:(id)message messageGUID:(id)d success:(BOOL)success error:(id)error;
@end

@implementation SMSessionStartMessageSendResultNotification

- (SMSessionStartMessageSendResultNotification)init
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SMSessionStartMessageSendResultNotification init]";
    v7 = 1024;
    v8 = 38;
    _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "default initializer not supported for SMSessionStartMessageSendResultNotification (in %s:%d)", &v5, 0x12u);
  }

  return 0;
}

- (SMSessionStartMessageSendResultNotification)initWithSessionStartMessage:(id)message messageGUID:(id)d success:(BOOL)success error:(id)error
{
  messageCopy = message;
  dCopy = d;
  errorCopy = error;
  if (!messageCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: message";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_9;
  }

  if (!dCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: messageGUID";
    goto LABEL_12;
  }

  v20.receiver = self;
  v20.super_class = SMSessionStartMessageSendResultNotification;
  v14 = [(RTNotification *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_message, message);
    objc_storeStrong(&v15->_messageGUID, d);
    v15->_success = success;
    objc_storeStrong(&v15->_error, error);
  }

  self = v15;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

@end