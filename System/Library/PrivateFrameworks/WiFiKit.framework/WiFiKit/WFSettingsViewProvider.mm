@interface WFSettingsViewProvider
- (WFSettingsViewProvider)init;
- (id)certificateViewControllerWithContext:(id)context;
- (id)credentialsViewControllerWithContext:(id)context;
- (id)networkDetailsViewControllerWithContext:(id)context;
- (id)otherNetworkViewControllerWithContext:(id)context appearanceProxy:(id)proxy;
- (void)didDismissNetworkViewController:(id)controller forContext:(id)context;
@end

@implementation WFSettingsViewProvider

- (id)credentialsViewControllerWithContext:(id)context
{
  v4 = MEMORY[0x277D7B9F0];
  contextCopy = context;
  v6 = [v4 alloc];
  v7 = WFCurrentDeviceCapability();
  defaultAppearanceProxy = [MEMORY[0x277D7B980] defaultAppearanceProxy];
  v9 = [v6 initWithCredentialsProviderContext:contextCopy deviceCapability:v7 appearanceProxy:defaultAppearanceProxy];

  [(NSMapTable *)self->_credentialsViewControllerMap setObject:v9 forKey:contextCopy];

  return v9;
}

- (id)certificateViewControllerWithContext:(id)context
{
  v3 = MEMORY[0x277D7BA08];
  contextCopy = context;
  v5 = [[v3 alloc] initWithCertificateProviderContext:contextCopy];

  return v5;
}

- (id)networkDetailsViewControllerWithContext:(id)context
{
  contextCopy = context;
  v5 = [[WFSettingsController alloc] initWithDetailsContext:contextCopy];

  [(WFSettingsViewProvider *)self setSettingsController:v5];
  settingsController = [(WFSettingsViewProvider *)self settingsController];
  settingsViewController = [settingsController settingsViewController];

  return settingsViewController;
}

- (id)otherNetworkViewControllerWithContext:(id)context appearanceProxy:(id)proxy
{
  v4 = MEMORY[0x277D7B9F0];
  contextCopy = context;
  v6 = [v4 alloc];
  v7 = WFCurrentDeviceCapability();
  defaultAppearanceProxy = [MEMORY[0x277D7B980] defaultAppearanceProxy];
  v9 = [v6 initWithOtherNetworkProviderContext:contextCopy deviceCapability:v7 appearanceProxy:defaultAppearanceProxy];

  [v9 setDelegate:contextCopy];

  return v9;
}

- (void)didDismissNetworkViewController:(id)controller forContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    credentialsViewControllerMap = [(WFSettingsViewProvider *)self credentialsViewControllerMap];
    [credentialsViewControllerMap removeObjectForKey:contextCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      settingsController = [(WFSettingsViewProvider *)self settingsController];
      settingsViewController = [settingsController settingsViewController];
      detailViewControllerVisible = [settingsViewController detailViewControllerVisible];

      if (detailViewControllerVisible)
      {
        v10 = WFLogForCategory(0);
        v11 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v10 && os_log_type_enabled(v10, v11))
        {
          v15 = 136315138;
          v16 = "[WFSettingsViewProvider didDismissNetworkViewController:forContext:]";
          _os_log_impl(&dword_273ECD000, v10, v11, "%s: settings view controller has detail view controller visible, popping navigation controller", &v15, 0xCu);
        }

        settingsController2 = [(WFSettingsViewProvider *)self settingsController];
        settingsViewController2 = [settingsController2 settingsViewController];
        [settingsViewController2 wf_popViewControllerAnimated:1];
      }

      [(WFSettingsViewProvider *)self setSettingsController:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (WFSettingsViewProvider)init
{
  v6.receiver = self;
  v6.super_class = WFSettingsViewProvider;
  v2 = [(WFSettingsViewProvider *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:0];
    credentialsViewControllerMap = v2->_credentialsViewControllerMap;
    v2->_credentialsViewControllerMap = v3;
  }

  return v2;
}

@end