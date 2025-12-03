@interface WFGetSettingsOperation
- (NSOperationQueue)keychainQueue;
- (WFGetSettingsOperation)initWithSSID:(id)d interfaceName:(id)name;
- (void)dealloc;
- (void)start;
@end

@implementation WFGetSettingsOperation

- (void)dealloc
{
  prefs = self->_prefs;
  if (prefs)
  {
    CFRelease(prefs);
    self->_prefs = 0;
  }

  v4.receiver = self;
  v4.super_class = WFGetSettingsOperation;
  [(WFGetSettingsOperation *)&v4 dealloc];
}

- (void)start
{
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && (self & 1) != 0 && os_log_type_enabled(a2, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_273ECD000, a2, v4, "No custom settings exist in WiFiManager", v5, 2u);
  }
}

- (NSOperationQueue)keychainQueue
{
  keychainQueue = self->_keychainQueue;
  if (!keychainQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_keychainQueue;
    self->_keychainQueue = v4;

    [(NSOperationQueue *)self->_keychainQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)self->_keychainQueue setQualityOfService:17];
    keychainQueue = self->_keychainQueue;
  }

  return keychainQueue;
}

- (WFGetSettingsOperation)initWithSSID:(id)d interfaceName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = WFGetSettingsOperation;
  v8 = [(WFGetSettingsOperation *)&v21 init];
  if (!v8)
  {
    name = 0;
    goto LABEL_6;
  }

  if (!dCopy)
  {
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v18 || !os_log_type_enabled(v18, v19))
    {
      goto LABEL_17;
    }

    *buf = 136315138;
    v23 = "[WFGetSettingsOperation initWithSSID:interfaceName:]";
    v20 = "%s: missing ssid";
    goto LABEL_16;
  }

  v9 = [dCopy copy];
  ssid = v8->_ssid;
  v8->_ssid = v9;

  if (!nameCopy)
  {
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v18 || !os_log_type_enabled(v18, v19))
    {
      goto LABEL_17;
    }

    *buf = 136315138;
    v23 = "[WFGetSettingsOperation initWithSSID:interfaceName:]";
    v20 = "%s: missing interfaceName";
LABEL_16:
    _os_log_impl(&dword_273ECD000, v18, v19, v20, buf, 0xCu);
LABEL_17:

    goto LABEL_18;
  }

  v11 = [nameCopy copy];
  interfaceName = v8->_interfaceName;
  v8->_interfaceName = v11;

  v13 = SCPreferencesCreateWithAuthorization(0, @"com.apple.wifikit", 0, 0);
  v8->_prefs = v13;
  if (!v13)
  {
LABEL_18:
    name = v8;
    v8 = 0;
    goto LABEL_6;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Get settings for '%@'", v8->_ssid];
  name = v8->_name;
  v8->_name = v14;
LABEL_6:

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

@end