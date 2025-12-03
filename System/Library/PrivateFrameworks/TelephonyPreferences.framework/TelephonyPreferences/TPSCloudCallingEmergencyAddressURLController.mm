@interface TPSCloudCallingEmergencyAddressURLController
- (BOOL)isCapabilityEnabled;
- (BOOL)isCapabilityProvisioningURLInvalid;
- (TPSCloudCallingEmergencyAddressURLController)initWithSubscriptionContext:(id)context;
- (id)capabilityProvisioningPostData;
- (id)capabilityProvisioningURL;
- (int)capabilityProvisioningStatus;
- (void)didChangeWiFiCallingProvisionalURLForSenderIdentityWithUUID:(id)d;
- (void)enableCapability;
- (void)webSheetCompletion;
@end

@implementation TPSCloudCallingEmergencyAddressURLController

- (TPSCloudCallingEmergencyAddressURLController)initWithSubscriptionContext:(id)context
{
  v5.receiver = self;
  v5.super_class = TPSCloudCallingEmergencyAddressURLController;
  v3 = [(TPSCloudCallingURLController *)&v5 initWithSubscriptionContext:context];
  if (v3)
  {
    [MEMORY[0x277D6EDE8] addDelegate:v3 queue:MEMORY[0x277D85CD0]];
  }

  return v3;
}

- (void)enableCapability
{
  v3 = TPSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "Enabling Wi-Fi calling", v5, 2u);
  }

  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  [subscriptionCapabilities setWiFiCallingEnabled:1];
}

- (void)webSheetCompletion
{
  v3 = TPSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "webSheetCompletion - Enabling Wi-Fi and VoLTE Calling", v5, 2u);
  }

  [(TPSCloudCallingEmergencyAddressURLController *)self enableCapability];
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  [subscriptionCapabilities invalidateAndRefreshWiFiCallingProvisioningURL];
}

- (BOOL)isCapabilityEnabled
{
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  isWiFiCallingEnabled = [subscriptionCapabilities isWiFiCallingEnabled];

  return isWiFiCallingEnabled;
}

- (int)capabilityProvisioningStatus
{
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  wiFiCallingProvisioningStatus = [subscriptionCapabilities wiFiCallingProvisioningStatus];

  return wiFiCallingProvisioningStatus;
}

- (id)capabilityProvisioningURL
{
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  wiFiCallingProvisioningURL = [subscriptionCapabilities wiFiCallingProvisioningURL];

  return wiFiCallingProvisioningURL;
}

- (BOOL)isCapabilityProvisioningURLInvalid
{
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  isWiFiCallingProvisioningURLInvalid = [subscriptionCapabilities isWiFiCallingProvisioningURLInvalid];

  return isWiFiCallingProvisioningURLInvalid;
}

- (id)capabilityProvisioningPostData
{
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  wiFiCallingProvisioningPostData = [subscriptionCapabilities wiFiCallingProvisioningPostData];

  return wiFiCallingProvisioningPostData;
}

- (void)didChangeWiFiCallingProvisionalURLForSenderIdentityWithUUID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  subscriptionContext = [(TPSCloudCallingURLController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v7 = [dCopy isEqual:uuid];

  if (v7)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = dCopy;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "WiFi calling provisioning URL changed for sender identity with UUID %@.", &v10, 0xCu);
    }

    [(TPSCloudCallingURLController *)self reloadWebViewController];
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end