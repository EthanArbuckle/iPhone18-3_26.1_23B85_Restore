@interface RTDarwinNotificationRecord
- (RTDarwinNotificationRecord)initWithNotificationName:(id)name registrationToken:(id)token handler:(id)handler;
@end

@implementation RTDarwinNotificationRecord

- (RTDarwinNotificationRecord)initWithNotificationName:(id)name registrationToken:(id)token handler:(id)handler
{
  nameCopy = name;
  tokenCopy = token;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (!nameCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: notificationName";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_14;
  }

  if (!tokenCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: registrationToken";
    goto LABEL_13;
  }

  if (!handlerCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: handler";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v23.receiver = self;
  v23.super_class = RTDarwinNotificationRecord;
  v12 = [(RTDarwinNotificationRecord *)&v23 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    notificationName = v12->_notificationName;
    v12->_notificationName = v13;

    v15 = [tokenCopy copy];
    registrationToken = v12->_registrationToken;
    v12->_registrationToken = v15;

    v17 = [v11 copy];
    handler = v12->_handler;
    v12->_handler = v17;
  }

  self = v12;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

@end