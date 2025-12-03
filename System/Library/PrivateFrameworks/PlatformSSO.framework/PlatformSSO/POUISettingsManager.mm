@interface POUISettingsManager
- (POUISettingsManager)init;
- (id)deviceStatus;
- (id)statusForUserName:(id)name;
- (void)init;
- (void)startDeviceAction:(int64_t)action;
- (void)startUserAction:(int64_t)action forUserName:(id)name;
@end

@implementation POUISettingsManager

- (POUISettingsManager)init
{
  v3 = PO_LOG_POUISettingsManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(POUISettingsManager *)self init];
  }

  v8.receiver = self;
  v8.super_class = POUISettingsManager;
  v4 = [(POUISettingsManager *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(POUIServiceConnection);
    serviceConnection = v4->_serviceConnection;
    v4->_serviceConnection = v5;
  }

  return v4;
}

- (id)deviceStatus
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POUISettingsManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[POUISettingsManager deviceStatus]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  serviceConnection = self->_serviceConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__POUISettingsManager_deviceStatus__block_invoke;
  v8[3] = &unk_279A3A1F0;
  v8[4] = buf;
  [(POUIServiceConnection *)serviceConnection deviceStatusWithCompletion:v8];
  v5 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)statusForUserName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = PO_LOG_POUISettingsManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[POUISettingsManager statusForUserName:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  serviceConnection = self->_serviceConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__POUISettingsManager_statusForUserName___block_invoke;
  v10[3] = &unk_279A3A218;
  v10[4] = buf;
  [(POUIServiceConnection *)serviceConnection statusForUser:nameCopy completion:v10];
  v7 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)startDeviceAction:(int64_t)action
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = PO_LOG_POUISettingsManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[POUISettingsManager startDeviceAction:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v10 = 0;
  serviceConnection = self->_serviceConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__POUISettingsManager_startDeviceAction___block_invoke;
  v8[3] = &unk_279A3A240;
  v8[4] = buf;
  [(POUIServiceConnection *)serviceConnection startDeviceAction:action completion:v8];
  _Block_object_dispose(buf, 8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)startUserAction:(int64_t)action forUserName:(id)name
{
  nameCopy = name;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  serviceConnection = self->_serviceConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__POUISettingsManager_startUserAction_forUserName___block_invoke;
  v8[3] = &unk_279A3A240;
  v8[4] = v9;
  [(POUIServiceConnection *)serviceConnection startAction:action forUserName:nameCopy completion:v8];
  _Block_object_dispose(v9, 8);
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[POUISettingsManager init]";
  v5 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_25E831000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end