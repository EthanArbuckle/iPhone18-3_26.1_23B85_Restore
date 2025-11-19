@interface RTDarwinNotificationRecord
- (RTDarwinNotificationRecord)initWithNotificationName:(id)a3 registrationToken:(id)a4 handler:(id)a5;
@end

@implementation RTDarwinNotificationRecord

- (RTDarwinNotificationRecord)initWithNotificationName:(id)a3 registrationToken:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
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

  if (!v9)
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

  if (!v10)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: handler";
      goto LABEL_13;
    }

LABEL_14:

    v19 = 0;
    goto LABEL_15;
  }

  v23.receiver = self;
  v23.super_class = RTDarwinNotificationRecord;
  v12 = [(RTDarwinNotificationRecord *)&v23 init];
  if (v12)
  {
    v13 = [v8 copy];
    notificationName = v12->_notificationName;
    v12->_notificationName = v13;

    v15 = [v9 copy];
    registrationToken = v12->_registrationToken;
    v12->_registrationToken = v15;

    v17 = [v11 copy];
    handler = v12->_handler;
    v12->_handler = v17;
  }

  self = v12;
  v19 = self;
LABEL_15:

  return v19;
}

@end