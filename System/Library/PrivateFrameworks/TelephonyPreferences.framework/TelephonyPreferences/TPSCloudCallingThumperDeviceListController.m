@interface TPSCloudCallingThumperDeviceListController
- (TPSCloudCallingThumperController)thumperController;
- (TPSCloudCallingThumperDeviceListController)init;
- (TPSCloudCallingThumperProvisioningURLController)provisioningURLController;
- (id)isDeviceSwitchOn:(id)a3;
- (id)isMainSwitchOn:(id)a3;
- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)a3;
- (void)didChangeThumperCallingProvisionalURLForSenderIdentityWithUUID:(id)a3;
- (void)setDeviceSwitchOn:(id)a3 specifier:(id)a4;
- (void)setMainSwitchOn:(id)a3 specifier:(id)a4;
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
    v5 = [(TPSListController *)self subscriptionContext];
    v6 = [(TPSCloudCallingThumperProvisioningURLController *)v4 initWithSubscriptionContext:v5];
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
    v5 = [(TPSListController *)self subscriptionContext];
    v6 = [(TPSCloudCallingThumperController *)v4 initWithSubscriptionContext:v5];
    v7 = self->_thumperController;
    self->_thumperController = v6;

    thumperController = self->_thumperController;
  }

  return thumperController;
}

- (id)isDeviceSwitchOn:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
  v7 = [v6 subscriptionCapabilities];
  v8 = [v5 identifier];

  v9 = [v4 numberWithBool:{objc_msgSend(v7, "isThumperCallingAllowedOnSecondaryDeviceWithID:", v8)}];

  return v9;
}

- (void)setDeviceSwitchOn:(id)a3 specifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TPSCloudCallingThumperDeviceListController;
  v6 = a4;
  v7 = a3;
  [(TPSCloudCallingDeviceListController *)&v15 setDeviceSwitchOn:v7 specifier:v6];
  v8 = [v6 identifier];

  v9 = [v7 BOOLValue];
  v10 = TPSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"Deactivating";
    if (v9)
    {
      v11 = @"Activating";
    }

    *buf = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "%@ Thumper for secondary device with identifier %@", buf, 0x16u);
  }

  if ((v9 & 1) == 0)
  {
    v12 = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
    v13 = [v12 subscriptionCapabilities];
    [v13 setThumperCallingAllowed:0 onSecondaryDeviceWithID:v8];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)isMainSwitchOn:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
  v5 = [v4 subscriptionCapabilities];
  v6 = [v3 numberWithBool:{objc_msgSend(v5, "isThumperCallingEnabled")}];

  return v6;
}

- (void)setMainSwitchOn:(id)a3 specifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = TPSCloudCallingThumperDeviceListController;
  v6 = a3;
  [(TPSCloudCallingDeviceListController *)&v18 setMainSwitchOn:v6 specifier:a4];
  v7 = [v6 BOOLValue];

  v8 = TPSLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v9 = @"Enabling";
    }

    else
    {
      v9 = @"Disabling";
    }

    v10 = [(TPSListController *)self subscriptionContext];
    *buf = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "%@ Thumper for subscription context %@", buf, 0x16u);
  }

  if (v7)
  {
    v11 = [(TPSCloudCallingThumperDeviceListController *)self provisioningURLController];
    v12 = [v11 shouldEnableCapability];

    if (v12)
    {
      v13 = TPSLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B8E9000, v13, OS_LOG_TYPE_DEFAULT, "Thumper capability should be enabled, so enabling it directly now", buf, 2u);
      }

      v14 = [(TPSCloudCallingThumperDeviceListController *)self provisioningURLController];
      [v14 enableCapability];
    }

    else
    {
      [MEMORY[0x277D6EDE8] invalidateAndRefreshThumperCallingProvisioningURL];
      v14 = [(TPSCloudCallingThumperDeviceListController *)self provisioningURLController];
      v16 = [v14 provisionCapabilityController];
      [(TPSCloudCallingListController *)self presentOrUpdateViewController:v16];
    }
  }

  else
  {
    v14 = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
    v15 = [v14 subscriptionCapabilities];
    [v15 setThumperCallingEnabled:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSListController *)self subscriptionContext];
  v6 = [v5 uuid];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Thumper calling cabilities changed for subscription context %@.", &v10, 0xCu);
    }

    [(TPSCloudCallingThumperDeviceListController *)self reloadSpecifiers];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didChangeThumperCallingProvisionalURLForSenderIdentityWithUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSListController *)self subscriptionContext];
  v6 = [v5 uuid];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Thumper calling provisioning URL changed for subscription context %@.", &v16, 0xCu);
    }

    v9 = [(TPSCloudCallingThumperDeviceListController *)self presentedViewController];

    if (v9)
    {
      v10 = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
      v11 = [v10 subscriptionCapabilities];

      if (![v11 thumperCallingProvisioningStatus])
      {
        v12 = TPSLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "We have a presented view controller and Thumper provisioning status is not-allowed, updating the presented controller", &v16, 2u);
        }

        v13 = [(TPSCloudCallingThumperDeviceListController *)self provisioningURLController];
        v14 = [v13 provisionCapabilityController];
        [(TPSCloudCallingListController *)self presentOrUpdateViewController:v14];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end