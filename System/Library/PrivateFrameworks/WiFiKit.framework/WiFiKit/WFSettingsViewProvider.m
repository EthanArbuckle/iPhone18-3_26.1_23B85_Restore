@interface WFSettingsViewProvider
- (WFSettingsViewProvider)init;
- (id)certificateViewControllerWithContext:(id)a3;
- (id)credentialsViewControllerWithContext:(id)a3;
- (id)networkDetailsViewControllerWithContext:(id)a3;
- (id)otherNetworkViewControllerWithContext:(id)a3 appearanceProxy:(id)a4;
- (void)didDismissNetworkViewController:(id)a3 forContext:(id)a4;
@end

@implementation WFSettingsViewProvider

- (id)credentialsViewControllerWithContext:(id)a3
{
  v4 = MEMORY[0x277D7B9F0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = WFCurrentDeviceCapability();
  v8 = [MEMORY[0x277D7B980] defaultAppearanceProxy];
  v9 = [v6 initWithCredentialsProviderContext:v5 deviceCapability:v7 appearanceProxy:v8];

  [(NSMapTable *)self->_credentialsViewControllerMap setObject:v9 forKey:v5];

  return v9;
}

- (id)certificateViewControllerWithContext:(id)a3
{
  v3 = MEMORY[0x277D7BA08];
  v4 = a3;
  v5 = [[v3 alloc] initWithCertificateProviderContext:v4];

  return v5;
}

- (id)networkDetailsViewControllerWithContext:(id)a3
{
  v4 = a3;
  v5 = [[WFSettingsController alloc] initWithDetailsContext:v4];

  [(WFSettingsViewProvider *)self setSettingsController:v5];
  v6 = [(WFSettingsViewProvider *)self settingsController];
  v7 = [v6 settingsViewController];

  return v7;
}

- (id)otherNetworkViewControllerWithContext:(id)a3 appearanceProxy:(id)a4
{
  v4 = MEMORY[0x277D7B9F0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = WFCurrentDeviceCapability();
  v8 = [MEMORY[0x277D7B980] defaultAppearanceProxy];
  v9 = [v6 initWithOtherNetworkProviderContext:v5 deviceCapability:v7 appearanceProxy:v8];

  [v9 setDelegate:v5];

  return v9;
}

- (void)didDismissNetworkViewController:(id)a3 forContext:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(WFSettingsViewProvider *)self credentialsViewControllerMap];
    [v6 removeObjectForKey:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(WFSettingsViewProvider *)self settingsController];
      v8 = [v7 settingsViewController];
      v9 = [v8 detailViewControllerVisible];

      if (v9)
      {
        v10 = WFLogForCategory(0);
        v11 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v10 && os_log_type_enabled(v10, v11))
        {
          v15 = 136315138;
          v16 = "[WFSettingsViewProvider didDismissNetworkViewController:forContext:]";
          _os_log_impl(&dword_273ECD000, v10, v11, "%s: settings view controller has detail view controller visible, popping navigation controller", &v15, 0xCu);
        }

        v12 = [(WFSettingsViewProvider *)self settingsController];
        v13 = [v12 settingsViewController];
        [v13 wf_popViewControllerAnimated:1];
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