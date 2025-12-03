@interface TPSCloudCallingThumperProvisioningURLController
- (BOOL)isCapabilityEnabled;
- (BOOL)isCapabilityProvisioningURLInvalid;
- (BOOL)shouldShowEmergencyAddress;
- (BOOL)shouldShowUpgradeToThumperButton;
- (TPSCloudCallingThumperProvisioningURLController)initWithSubscriptionContext:(id)context;
- (id)capabilityProvisioningPostData;
- (id)capabilityProvisioningURL;
- (int)capabilityProvisioningStatus;
- (void)didChangeThumperCallingProvisionalURLForSenderIdentityWithUUID:(id)d;
- (void)enableCapability;
- (void)webSheetCompletion;
@end

@implementation TPSCloudCallingThumperProvisioningURLController

- (TPSCloudCallingThumperProvisioningURLController)initWithSubscriptionContext:(id)context
{
  v5.receiver = self;
  v5.super_class = TPSCloudCallingThumperProvisioningURLController;
  v3 = [(TPSCloudCallingURLController *)&v5 initWithSubscriptionContext:context];
  if (v3)
  {
    [MEMORY[0x277D6EDE8] addDelegate:v3 queue:MEMORY[0x277D85CD0]];
  }

  return v3;
}

- (BOOL)shouldShowEmergencyAddress
{
  if (![(TPSCloudCallingThumperProvisioningURLController *)self isCapabilityEnabled]|| [(TPSCloudCallingThumperProvisioningURLController *)self capabilityProvisioningStatus]!= 3)
  {
    return 0;
  }

  if ([(TPSCloudCallingThumperProvisioningURLController *)self isCapabilityProvisioningURLInvalid])
  {
    return 1;
  }

  capabilityProvisioningURL = [(TPSCloudCallingThumperProvisioningURLController *)self capabilityProvisioningURL];
  v3 = capabilityProvisioningURL != 0;

  return v3;
}

- (void)webSheetCompletion
{
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  [(TPSCloudCallingThumperProvisioningURLController *)self enableCapability];
  [subscriptionCapabilities invalidateAndRefreshThumperCallingProvisioningURL];
}

- (void)enableCapability
{
  v3 = TPSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "Enabling Thumper calling", v5, 2u);
  }

  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  [subscriptionCapabilities setThumperCallingEnabled:1];
}

- (BOOL)shouldShowUpgradeToThumperButton
{
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  if ([MEMORY[0x277D6EDE8] isRelayCallingEnabled] && objc_msgSend(subscriptionCapabilities, "supportsThumperCalling") && (objc_msgSend(subscriptionCapabilities, "isThumperCallingEnabled") & 1) == 0)
  {
    if ([MEMORY[0x277D6EDE8] supportsPrimaryCalling])
    {
      LOBYTE(v4) = 1;
      goto LABEL_5;
    }

    if (([MEMORY[0x277D6EDE8] supportsPrimaryCalling] & 1) == 0)
    {
      v4 = ![(TPSCloudCallingThumperProvisioningURLController *)self isThumperProvisioningInProcess];
      goto LABEL_5;
    }
  }

  LOBYTE(v4) = 0;
LABEL_5:

  return v4;
}

- (BOOL)isCapabilityEnabled
{
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  isThumperCallingEnabled = [subscriptionCapabilities isThumperCallingEnabled];

  return isThumperCallingEnabled;
}

- (int)capabilityProvisioningStatus
{
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  thumperCallingProvisioningStatus = [subscriptionCapabilities thumperCallingProvisioningStatus];

  return thumperCallingProvisioningStatus;
}

- (id)capabilityProvisioningURL
{
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  thumperCallingProvisioningURL = [subscriptionCapabilities thumperCallingProvisioningURL];

  return thumperCallingProvisioningURL;
}

- (BOOL)isCapabilityProvisioningURLInvalid
{
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  isThumperCallingProvisioningURLInvalid = [subscriptionCapabilities isThumperCallingProvisioningURLInvalid];

  return isThumperCallingProvisioningURLInvalid;
}

- (id)capabilityProvisioningPostData
{
  subscriptionCapabilities = [(TPSCloudCallingURLController *)self subscriptionCapabilities];
  thumperCallingProvisioningPostData = [subscriptionCapabilities thumperCallingProvisioningPostData];

  return thumperCallingProvisioningPostData;
}

- (void)didChangeThumperCallingProvisionalURLForSenderIdentityWithUUID:(id)d
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
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Thumper calling provisioning URL changed for sender identity with UUID %@.", &v10, 0xCu);
    }

    [(TPSCloudCallingURLController *)self reloadWebViewController];
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end