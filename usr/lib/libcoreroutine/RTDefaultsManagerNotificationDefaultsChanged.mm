@interface RTDefaultsManagerNotificationDefaultsChanged
- (RTDefaultsManagerNotificationDefaultsChanged)initWithUpdatedKeys:(id)keys;
@end

@implementation RTDefaultsManagerNotificationDefaultsChanged

- (RTDefaultsManagerNotificationDefaultsChanged)initWithUpdatedKeys:(id)keys
{
  v16 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  if (![keysCopy count])
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTDefaultsManagerNotificationDefaultsChanged initWithUpdatedKeys:]";
      v14 = 1024;
      v15 = 83;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: updatedKeys.count (in %s:%d)", buf, 0x12u);
    }
  }

  if ([keysCopy count])
  {
    v11.receiver = self;
    v11.super_class = RTDefaultsManagerNotificationDefaultsChanged;
    v6 = [(RTNotification *)&v11 init];
    if (v6)
    {
      v7 = [keysCopy copy];
      updatedKeys = v6->_updatedKeys;
      v6->_updatedKeys = v7;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end