@interface TPSCloudCallingThumperDeviceListController
- (TPSCloudCallingThumperController)thumperController;
- (TPSCloudCallingThumperDeviceListController)init;
- (TPSCloudCallingThumperProvisioningURLController)provisioningURLController;
- (id)isDeviceSwitchOn:(id)on;
- (id)isMainSwitchOn:(id)on;
- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)d;
- (void)didChangeThumperCallingProvisionalURLForSenderIdentityWithUUID:(id)d;
- (void)setDeviceSwitchOn:(id)on specifier:(id)specifier;
- (void)setMainSwitchOn:(id)on specifier:(id)specifier;
@end

@implementation TPSCloudCallingThumperDeviceListController

- (TPSCloudCallingThumperDeviceListController)init
{
  v4.receiver = self;
  v4.super_class = TPSCloudCallingThumperDeviceListController;
  v2 = [(TPSCloudCallingDeviceListController *)&v4 init];
  if (v2)
  {
    [MEMORY[0x277D6EDE8] addDelegate:v2 queue:MEMORY[0x277D85CD0]];
  }

  return v2;
}

- (TPSCloudCallingThumperProvisioningURLController)provisioningURLController
{
  provisioningURLController = self->_provisioningURLController;
  if (!provisioningURLController)
  {
    v4 = [TPSCloudCallingThumperProvisioningURLController alloc];
    subscriptionContext = [(TPSListController *)self subscriptionContext];
    v6 = [(TPSCloudCallingThumperProvisioningURLController *)v4 initWithSubscriptionContext:subscriptionContext];
    v7 = self->_provisioningURLController;
    self->_provisioningURLController = v6;

    [(TPSCloudCallingURLController *)self->_provisioningURLController setDelegate:self];
    provisioningURLController = self->_provisioningURLController;
  }

  return provisioningURLController;
}

- (TPSCloudCallingThumperController)thumperController
{
  thumperController = self->_thumperController;
  if (!thumperController)
  {
    v4 = [TPSCloudCallingThumperController alloc];
    subscriptionContext = [(TPSListController *)self subscriptionContext];
    v6 = [(TPSCloudCallingThumperController *)v4 initWithSubscriptionContext:subscriptionContext];
    v7 = self->_thumperController;
    self->_thumperController = v6;

    thumperController = self->_thumperController;
  }

  return thumperController;
}

- (id)isDeviceSwitchOn:(id)on
{
  v4 = MEMORY[0x277CCABB0];
  onCopy = on;
  thumperController = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
  subscriptionCapabilities = [thumperController subscriptionCapabilities];
  identifier = [onCopy identifier];

  v9 = [v4 numberWithBool:{objc_msgSend(subscriptionCapabilities, "isThumperCallingAllowedOnSecondaryDeviceWithID:", identifier)}];

  return v9;
}

- (void)setDeviceSwitchOn:(id)on specifier:(id)specifier
{
  v20 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TPSCloudCallingThumperDeviceListController;
  specifierCopy = specifier;
  onCopy = on;
  [(TPSCloudCallingDeviceListController *)&v15 setDeviceSwitchOn:onCopy specifier:specifierCopy];
  identifier = [specifierCopy identifier];

  bOOLValue = [onCopy BOOLValue];
  v10 = TPSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"Deactivating";
    if (bOOLValue)
    {
      v11 = @"Activating";
    }

    *buf = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = identifier;
    _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "%@ Thumper for secondary device with identifier %@", buf, 0x16u);
  }

  if ((bOOLValue & 1) == 0)
  {
    thumperController = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
    subscriptionCapabilities = [thumperController subscriptionCapabilities];
    [subscriptionCapabilities setThumperCallingAllowed:0 onSecondaryDeviceWithID:identifier];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)isMainSwitchOn:(id)on
{
  v3 = MEMORY[0x277CCABB0];
  thumperController = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
  subscriptionCapabilities = [thumperController subscriptionCapabilities];
  v6 = [v3 numberWithBool:{objc_msgSend(subscriptionCapabilities, "isThumperCallingEnabled")}];

  return v6;
}

- (void)setMainSwitchOn:(id)on specifier:(id)specifier
{
  v23 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = TPSCloudCallingThumperDeviceListController;
  onCopy = on;
  [(TPSCloudCallingDeviceListController *)&v18 setMainSwitchOn:onCopy specifier:specifier];
  bOOLValue = [onCopy BOOLValue];

  v8 = TPSLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (bOOLValue)
    {
      v9 = @"Enabling";
    }

    else
    {
      v9 = @"Disabling";
    }

    subscriptionContext = [(TPSListController *)self subscriptionContext];
    *buf = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = subscriptionContext;
    _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "%@ Thumper for subscription context %@", buf, 0x16u);
  }

  if (bOOLValue)
  {
    provisioningURLController = [(TPSCloudCallingThumperDeviceListController *)self provisioningURLController];
    shouldEnableCapability = [provisioningURLController shouldEnableCapability];

    if (shouldEnableCapability)
    {
      v13 = TPSLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B8E9000, v13, OS_LOG_TYPE_DEFAULT, "Thumper capability should be enabled, so enabling it directly now", buf, 2u);
      }

      provisioningURLController2 = [(TPSCloudCallingThumperDeviceListController *)self provisioningURLController];
      [provisioningURLController2 enableCapability];
    }

    else
    {
      [MEMORY[0x277D6EDE8] invalidateAndRefreshThumperCallingProvisioningURL];
      provisioningURLController2 = [(TPSCloudCallingThumperDeviceListController *)self provisioningURLController];
      provisionCapabilityController = [provisioningURLController2 provisionCapabilityController];
      [(TPSCloudCallingListController *)self presentOrUpdateViewController:provisionCapabilityController];
    }
  }

  else
  {
    provisioningURLController2 = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
    subscriptionCapabilities = [provisioningURLController2 subscriptionCapabilities];
    [subscriptionCapabilities setThumperCallingEnabled:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  subscriptionContext = [(TPSListController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v7 = [dCopy isEqual:uuid];

  if (v7)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = subscriptionContext;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Thumper calling cabilities changed for subscription context %@.", &v10, 0xCu);
    }

    [(TPSCloudCallingThumperDeviceListController *)self reloadSpecifiers];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didChangeThumperCallingProvisionalURLForSenderIdentityWithUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  subscriptionContext = [(TPSListController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v7 = [dCopy isEqual:uuid];

  if (v7)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = subscriptionContext;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Thumper calling provisioning URL changed for subscription context %@.", &v16, 0xCu);
    }

    presentedViewController = [(TPSCloudCallingThumperDeviceListController *)self presentedViewController];

    if (presentedViewController)
    {
      thumperController = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
      subscriptionCapabilities = [thumperController subscriptionCapabilities];

      if (![subscriptionCapabilities thumperCallingProvisioningStatus])
      {
        v12 = TPSLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "We have a presented view controller and Thumper provisioning status is not-allowed, updating the presented controller", &v16, 2u);
        }

        provisioningURLController = [(TPSCloudCallingThumperDeviceListController *)self provisioningURLController];
        provisionCapabilityController = [provisioningURLController provisionCapabilityController];
        [(TPSCloudCallingListController *)self presentOrUpdateViewController:provisionCapabilityController];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end