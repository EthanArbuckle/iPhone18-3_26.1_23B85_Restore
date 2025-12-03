@interface RTUserNotificationAction
- (RTUserNotificationAction)initWithActionIdentifier:(id)identifier title:(id)title iconWithSystemImageName:(id)name handler:(id)handler;
@end

@implementation RTUserNotificationAction

- (RTUserNotificationAction)initWithActionIdentifier:(id)identifier title:(id)title iconWithSystemImageName:(id)name handler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  titleCopy = title;
  nameCopy = name;
  handlerCopy = handler;
  if (identifierCopy)
  {
    if (titleCopy)
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

  if (!titleCopy)
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
    objc_storeStrong(&v17->_actionIdentifier, identifier);
    objc_storeStrong(&v18->_title, title);
    objc_storeStrong(&v18->_iconWithSystemImageName, name);
    v19 = _Block_copy(handlerCopy);
    handler = v18->_handler;
    v18->_handler = v19;
  }

  return v18;
}

@end