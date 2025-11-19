@interface TPSWiFiCallingController
- (BOOL)isThumperCallingEnabled;
- (BOOL)isWiFiCallingCertified;
- (BOOL)isWiFiCallingEnabled;
- (BOOL)isWiFiCallingRoamingEnabled;
- (BOOL)supportsEncryptedIdentity;
- (BOOL)supportsThumperCalling;
- (BOOL)supportsWiFiCalling;
- (BOOL)supportsWiFiEmergencyCalling;
- (NSDictionary)encryptedIdentityInfo;
- (NSString)localizedCarrierName;
- (TPSCarrierBundleController)carrierBundleController;
- (TPSEncryptedIdentityClient)encryptedIdentityClient;
- (TPSWiFiCallingController)init;
- (TPSWiFiCallingController)initWithSubscriptionContext:(id)a3;
- (TUSenderIdentityCapabilities)subscriptionCapabilities;
- (id)subscriptionCapabilitiesForSubscriptionContextUUID:(id)a3;
- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)a3;
- (void)didChangeWiFiCallingCapabilitiesForSenderIdentityWithUUID:(id)a3;
@end

@implementation TPSWiFiCallingController

- (TPSWiFiCallingController)init
{
  [(TPSWiFiCallingController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSWiFiCallingController)initWithSubscriptionContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TPSWiFiCallingController;
  v6 = [(TPSWiFiCallingController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, a3);
    v8 = [v5 uuid];
    v9 = [(TPSWiFiCallingController *)v7 subscriptionCapabilitiesForSubscriptionContextUUID:v8];
    subscriptionCapabilities = v7->_subscriptionCapabilities;
    v7->_subscriptionCapabilities = v9;

    [MEMORY[0x277D6EDE8] addDelegate:v7 queue:MEMORY[0x277D85CD0]];
  }

  return v7;
}

- (id)subscriptionCapabilitiesForSubscriptionContextUUID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D6EDE8] senderIdentityCapabilities];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 senderIdentityUUID];
        v12 = [v11 isEqual:v3];

        if (v12)
        {
          v13 = v10;

          v7 = v13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (TUSenderIdentityCapabilities)subscriptionCapabilities
{
  v3 = [(TPSWiFiCallingController *)self subscriptionContext];
  v4 = [v3 uuid];
  v5 = [(TPSWiFiCallingController *)self subscriptionCapabilitiesForSubscriptionContextUUID:v4];

  return v5;
}

- (BOOL)isThumperCallingEnabled
{
  v2 = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  if (([v2 isThumperCallingEnabled] & 1) != 0 || objc_msgSend(v2, "thumperCallingProvisioningStatus") == 1)
  {
    v3 = [MEMORY[0x277D6EDE8] isRelayCallingEnabled];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isWiFiCallingEnabled
{
  v2 = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  v3 = ([v2 isWiFiCallingEnabled] & 1) != 0 || objc_msgSend(v2, "wiFiCallingProvisioningStatus") == 1;

  return v3;
}

- (BOOL)isWiFiCallingRoamingEnabled
{
  v2 = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  v3 = [v2 isWiFiCallingRoamingEnabled];

  return v3;
}

- (BOOL)supportsThumperCalling
{
  v2 = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  v3 = [v2 supportsThumperCalling];

  return v3;
}

- (BOOL)supportsWiFiCalling
{
  v2 = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  v3 = [v2 supportsWiFiCalling];

  return v3;
}

- (BOOL)supportsWiFiEmergencyCalling
{
  v2 = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  v3 = [v2 supportsEmergencyWiFiCalling];

  return v3;
}

- (BOOL)isWiFiCallingCertified
{
  v3 = [(TPSWiFiCallingController *)self carrierBundleController];
  v4 = [(TPSWiFiCallingController *)self subscriptionContext];
  v5 = [v3 objectForKeyHierarchy:&unk_282D5D678 subscriptionContext:v4];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (TPSCarrierBundleController)carrierBundleController
{
  carrierBundleController = self->_carrierBundleController;
  if (!carrierBundleController)
  {
    v4 = objc_alloc_init(TPSCarrierBundleController);
    v5 = self->_carrierBundleController;
    self->_carrierBundleController = v4;

    carrierBundleController = self->_carrierBundleController;
  }

  return carrierBundleController;
}

- (TPSEncryptedIdentityClient)encryptedIdentityClient
{
  encryptedIdentityClient = self->_encryptedIdentityClient;
  if (!encryptedIdentityClient)
  {
    v4 = objc_alloc_init(TPSEncryptedIdentityClient);
    v5 = self->_encryptedIdentityClient;
    self->_encryptedIdentityClient = v4;

    encryptedIdentityClient = self->_encryptedIdentityClient;
  }

  return encryptedIdentityClient;
}

- (NSDictionary)encryptedIdentityInfo
{
  encryptedIdentityInfo = self->_encryptedIdentityInfo;
  if (!encryptedIdentityInfo)
  {
    v4 = [(TPSWiFiCallingController *)self encryptedIdentityClient];
    v5 = [(TPSWiFiCallingController *)self subscriptionContext];
    v6 = [v4 encryptedIdentityInfoForSubscriptionContext:v5 type:1];
    v7 = self->_encryptedIdentityInfo;
    self->_encryptedIdentityInfo = v6;

    encryptedIdentityInfo = self->_encryptedIdentityInfo;
  }

  return encryptedIdentityInfo;
}

- (BOOL)supportsEncryptedIdentity
{
  v2 = [(TPSWiFiCallingController *)self encryptedIdentityInfo];
  v3 = v2 != 0;

  return v3;
}

- (NSString)localizedCarrierName
{
  v3 = [(TPSWiFiCallingController *)self carrierBundleController];
  v4 = [(TPSWiFiCallingController *)self subscriptionContext];
  v5 = [v3 localizedCarrierNameForSubscriptionContext:v4];

  return v5;
}

- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSWiFiCallingController *)self subscriptionContext];
  v6 = [v5 uuid];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(TPSWiFiCallingController *)self subscriptionContext];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Thumper calling capabilities changed for subscription context %@.", &v12, 0xCu);
    }

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"TPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification" object:self];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didChangeWiFiCallingCapabilitiesForSenderIdentityWithUUID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSWiFiCallingController *)self subscriptionContext];
  v6 = [v5 uuid];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(TPSWiFiCallingController *)self subscriptionContext];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "WiFi calling capabilities changed for subscription context %@.", &v12, 0xCu);
    }

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"TPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification" object:self];
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end