@interface RTUserNotificationAction
- (RTUserNotificationAction)initWithActionIdentifier:(id)a3 title:(id)a4 iconWithSystemImageName:(id)a5 handler:(id)a6;
@end

@implementation RTUserNotificationAction

- (RTUserNotificationAction)initWithActionIdentifier:(id)a3 title:(id)a4 iconWithSystemImageName:(id)a5 handler:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v24 = "[RTUserNotificationAction initWithActionIdentifier:title:iconWithSystemImageName:handler:]";
    v25 = 1024;
    v26 = 29;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: actionIdentifier (in %s:%d)", buf, 0x12u);
  }

  if (!v12)
  {
LABEL_7:
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTUserNotificationAction initWithActionIdentifier:title:iconWithSystemImageName:handler:]";
      v25 = 1024;
      v26 = 30;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: title (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v22.receiver = self;
  v22.super_class = RTUserNotificationAction;
  v17 = [(RTUserNotificationAction *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_actionIdentifier, a3);
    objc_storeStrong(&v18->_title, a4);
    objc_storeStrong(&v18->_iconWithSystemImageName, a5);
    v19 = _Block_copy(v14);
    handler = v18->_handler;
    v18->_handler = v19;
  }

  return v18;
}

@end