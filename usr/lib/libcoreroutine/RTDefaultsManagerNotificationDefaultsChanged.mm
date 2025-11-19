@interface RTDefaultsManagerNotificationDefaultsChanged
- (RTDefaultsManagerNotificationDefaultsChanged)initWithUpdatedKeys:(id)a3;
@end

@implementation RTDefaultsManagerNotificationDefaultsChanged

- (RTDefaultsManagerNotificationDefaultsChanged)initWithUpdatedKeys:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 count])
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

  if ([v4 count])
  {
    v11.receiver = self;
    v11.super_class = RTDefaultsManagerNotificationDefaultsChanged;
    v6 = [(RTNotification *)&v11 init];
    if (v6)
    {
      v7 = [v4 copy];
      updatedKeys = v6->_updatedKeys;
      v6->_updatedKeys = v7;
    }

    self = v6;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end