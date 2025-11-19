@interface WFPrivateAddressConfigManager
- (WFPrivateAddressConfigManager)init;
- (id)privateAddressConfig;
- (void)dealloc;
- (void)init;
- (void)privateAddressConfig;
@end

@implementation WFPrivateAddressConfigManager

- (WFPrivateAddressConfigManager)init
{
  v6.receiver = self;
  v6.super_class = WFPrivateAddressConfigManager;
  v2 = [(WFPrivateAddressConfigManager *)&v6 init];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = *MEMORY[0x277CBECE8];
  v4 = SCPreferencesCreateWithOptions();
  v2->_prefs = v4;
  if (!v4)
  {
    [WFPrivateAddressConfigManager init];
LABEL_5:

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  prefs = self->_prefs;
  if (prefs)
  {
    CFRelease(prefs);
    self->_prefs = 0;
  }

  v4.receiver = self;
  v4.super_class = WFPrivateAddressConfigManager;
  [(WFPrivateAddressConfigManager *)&v4 dealloc];
}

- (id)privateAddressConfig
{
  if ([(WFPrivateAddressConfigManager *)self prefs])
  {
    if (!SCPreferencesLock([(WFPrivateAddressConfigManager *)self prefs], 0))
    {
      SCPreferencesSynchronize([(WFPrivateAddressConfigManager *)self prefs]);
      SCPreferencesLock([(WFPrivateAddressConfigManager *)self prefs], 1u);
    }

    v3 = SCPreferencesGetValue([(WFPrivateAddressConfigManager *)self prefs], @"List of scanned networks with private mac");
  }

  else
  {
    [WFPrivateAddressConfigManager privateAddressConfig];
    v3 = 0;
  }

  return v3;
}

- (void)init
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    OUTLINED_FUNCTION_0_6(&dword_273ECD000, v2, v3, "%s: failed to get SCPreferencesRef", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)privateAddressConfig
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    OUTLINED_FUNCTION_0_6(&dword_273ECD000, v2, v3, "%s: failed to get SCPreferencesRef", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end