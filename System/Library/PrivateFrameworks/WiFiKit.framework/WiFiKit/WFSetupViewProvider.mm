@interface WFSetupViewProvider
- (id)credentialsViewControllerWithContext:(id)a3;
- (id)networkDetailsViewControllerWithContext:(id)a3;
- (id)otherNetworkViewControllerWithContext:(id)a3 appearanceProxy:(id)a4;
@end

@implementation WFSetupViewProvider

- (id)credentialsViewControllerWithContext:(id)a3
{
  v4 = MEMORY[0x277D7B9F0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = WFCurrentDeviceCapability();
  v8 = [MEMORY[0x277D7B980] setupAppearanceProxy];
  v9 = [v6 initWithCredentialsProviderContext:v5 deviceCapability:v7 appearanceProxy:v8];

  v10 = [(WFSettingsViewProvider *)self credentialsViewControllerMap];
  [v10 setObject:v9 forKey:v5];

  return v9;
}

- (id)networkDetailsViewControllerWithContext:(id)a3
{
  v4 = a3;
  v5 = [WFSettingsController alloc];
  v6 = [MEMORY[0x277D7B980] setupAppearanceProxy];
  v7 = [(WFSettingsController *)v5 initWithDetailsContext:v4 appearanceProxy:v6];

  [(WFSettingsViewProvider *)self setSettingsController:v7];
  v8 = [(WFSettingsViewProvider *)self settingsController];
  v9 = [v8 settingsViewController];

  return v9;
}

- (id)otherNetworkViewControllerWithContext:(id)a3 appearanceProxy:(id)a4
{
  v4 = MEMORY[0x277D7B9F0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = WFCurrentDeviceCapability();
  v8 = [MEMORY[0x277D7B980] setupAppearanceProxy];
  v9 = [v6 initWithOtherNetworkProviderContext:v5 deviceCapability:v7 appearanceProxy:v8];

  [v9 setDelegate:v5];

  return v9;
}

@end