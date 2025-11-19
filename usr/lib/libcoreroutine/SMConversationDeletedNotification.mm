@interface SMConversationDeletedNotification
- (SMConversationDeletedNotification)init;
- (SMConversationDeletedNotification)initWithConversation:(id)a3;
@end

@implementation SMConversationDeletedNotification

- (SMConversationDeletedNotification)init
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SMConversationDeletedNotification init]";
    v7 = 1024;
    v8 = 113;
    _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "default initializer not supported for SMConversationDeletedNotification (in %s:%d)", &v5, 0x12u);
  }

  return 0;
}

- (SMConversationDeletedNotification)initWithConversation:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v17.receiver = self;
    v17.super_class = SMConversationDeletedNotification;
    v7 = [(RTNotification *)&v17 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_conversation, a3);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          v15 = NSStringFromSelector(a2);
          conversation = v8->_conversation;
          *buf = 138412802;
          v19 = v14;
          v20 = 2112;
          v21 = v15;
          v22 = 2112;
          v23 = conversation;
          _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "#SafetyCache,%@,%@,conversation,%@", buf, 0x20u);
        }
      }
    }

    self = v8;
    v10 = self;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: conversation", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

@end