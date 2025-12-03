@interface POConfigurationVersion
+ (id)notificationForType:(int64_t)type;
- (POConfigurationVersion)initWithConfigurationType:(int64_t)type;
- (int64_t)checkVersion;
- (unint64_t)_state;
- (void)_setStateAndNotify:(unint64_t)notify type:(int64_t)type;
- (void)_state;
- (void)dealloc;
- (void)increaseVersionWithMessage:(id)message;
- (void)reset;
- (void)setPlatformSSOUnavailable;
@end

@implementation POConfigurationVersion

- (POConfigurationVersion)initWithConfigurationType:(int64_t)type
{
  v5 = PO_LOG_POConfigurationVersion();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(POConfigurationVersion *)self initWithConfigurationType:v5];
  }

  v12.receiver = self;
  v12.super_class = POConfigurationVersion;
  v6 = [(POConfigurationVersion *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_token = -1;
    v6->_version = 0;
    v6->_type = type;
    v8 = [POConfigurationVersion notificationForType:type];
    v9 = notify_register_check([v8 UTF8String], &v7->_token);

    if (v9)
    {
      v10 = PO_LOG_POConfigurationVersion();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [POConfigurationVersion initWithConfigurationType:];
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_7(&dword_25E8B1000, v0, v1, "notify_cancel() failed with %u", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (int64_t)checkVersion
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _state = [(POConfigurationVersion *)selfCopy _state];
  v4 = _state;
  if (_state == -1)
  {
    selfCopy->_version = -1;
    v5 = 2;
  }

  else
  {
    if (!_state)
    {
      [(POConfigurationVersion *)selfCopy increaseVersionWithMessage:@"first load"];
LABEL_6:
      v5 = 0;
      goto LABEL_10;
    }

    if (_state == selfCopy->_version)
    {
      goto LABEL_6;
    }

    v6 = PO_LOG_POConfigurationVersion();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      version = selfCopy->_version;
      v10 = 136315906;
      v11 = "[POConfigurationVersion checkVersion]";
      v12 = 2048;
      v13 = version;
      v14 = 2048;
      v15 = v4;
      v16 = 2112;
      v17 = selfCopy;
      _os_log_impl(&dword_25E8B1000, v6, OS_LOG_TYPE_DEFAULT, "%s config version changed from from 0x%016llX to 0x%016llX on %@", &v10, 0x2Au);
    }

    selfCopy->_version = v4;
    v5 = 1;
  }

LABEL_10:
  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)increaseVersionWithMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  selfCopy->_version = (v7 * 1000.0);

  v8 = PO_LOG_POConfigurationVersion();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    _state = [(POConfigurationVersion *)selfCopy _state];
    version = selfCopy->_version;
    v12 = 136316162;
    v13 = "[POConfigurationVersion increaseVersionWithMessage:]";
    v14 = 2048;
    v15 = _state;
    v16 = 2048;
    v17 = version;
    v18 = 2114;
    v19 = messageCopy;
    v20 = 2112;
    v21 = selfCopy;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_DEFAULT, "%s config version increased from 0x%016llX to 0x%016llX (%{public}@) on %@", &v12, 0x34u);
  }

  [(POConfigurationVersion *)selfCopy _setStateAndNotify:selfCopy->_version type:selfCopy->_type];
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setPlatformSSOUnavailable
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POConfigurationVersion();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[POConfigurationVersion setPlatformSSOUnavailable]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  selfCopy2->_version = -1;
  v5 = PO_LOG_POConfigurationVersion();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "set config version to PlatformSSO unavailable", &v7, 2u);
  }

  [(POConfigurationVersion *)selfCopy2 _setStateAndNotify:selfCopy2->_version type:0];
  [(POConfigurationVersion *)selfCopy2 _setStateAndNotify:selfCopy2->_version type:1];
  [(POConfigurationVersion *)selfCopy2 _setStateAndNotify:selfCopy2->_version type:2];
  objc_sync_exit(selfCopy2);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  [(POConfigurationVersion *)obj increaseVersionWithMessage:@"reset"];
  obj->_version = -1;
  objc_sync_exit(obj);
}

- (unint64_t)_state
{
  state64 = -1;
  token = self->_token;
  if (token == -1)
  {
    v3 = PO_LOG_POConfigurationVersion();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(POConfigurationVersion *)v3 _state];
    }

    goto LABEL_7;
  }

  if (notify_get_state(token, &state64))
  {
    v3 = PO_LOG_POConfigurationVersion();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [POConfigurationVersion _state];
    }

LABEL_7:
  }

  return state64;
}

- (void)_setStateAndNotify:(unint64_t)notify type:(int64_t)type
{
  if (notify_set_state(self->_token, notify))
  {
    v5 = PO_LOG_POConfigurationVersion();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [POConfigurationVersion _setStateAndNotify:type:];
    }
  }

  v6 = [POConfigurationVersion notificationForType:type];
  v7 = notify_post([v6 UTF8String]);

  if (v7)
  {
    v8 = PO_LOG_POConfigurationVersion();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [POConfigurationVersion _setStateAndNotify:type:];
    }
  }
}

+ (id)notificationForType:(int64_t)type
{
  v3 = @"/com.apple.PlatformSSO.user.version";
  if (type == 1)
  {
    v3 = @"/com.apple.PlatformSSO.login.version";
  }

  if (type == 2)
  {
    return @"/com.apple.PlatformSSO.device.version";
  }

  else
  {
    return v3;
  }
}

- (void)initWithConfigurationType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[POConfigurationVersion initWithConfigurationType:]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfigurationType:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_7(&dword_25E8B1000, v0, v1, "notify_register_check() failed with %u", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_state
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_7(&dword_25E8B1000, v0, v1, "notify_get_state() failed with error %u", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setStateAndNotify:type:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_7(&dword_25E8B1000, v0, v1, "notify_set_state() failed with error %u", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setStateAndNotify:type:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_7(&dword_25E8B1000, v0, v1, "notify_post() failed with error %u", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end