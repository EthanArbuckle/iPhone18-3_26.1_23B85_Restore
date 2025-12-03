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
- (TPSWiFiCallingController)initWithSubscriptionContext:(id)context;
- (TUSenderIdentityCapabilities)subscriptionCapabilities;
- (id)subscriptionCapabilitiesForSubscriptionContextUUID:(id)d;
- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)d;
- (void)didChangeWiFiCallingCapabilitiesForSenderIdentityWithUUID:(id)d;
@end

@implementation TPSWiFiCallingController

- (TPSWiFiCallingController)init
{
  [(TPSWiFiCallingController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSWiFiCallingController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = TPSWiFiCallingController;
  v6 = [(TPSWiFiCallingController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
    uuid = [contextCopy uuid];
    v9 = [(TPSWiFiCallingController *)v7 subscriptionCapabilitiesForSubscriptionContextUUID:uuid];
    subscriptionCapabilities = v7->_subscriptionCapabilities;
    v7->_subscriptionCapabilities = v9;

    [MEMORY[0x277D6EDE8] addDelegate:v7 queue:MEMORY[0x277D85CD0]];
  }

  return v7;
}

- (id)subscriptionCapabilitiesForSubscriptionContextUUID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  senderIdentityCapabilities = [MEMORY[0x277D6EDE8] senderIdentityCapabilities];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [senderIdentityCapabilities countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(senderIdentityCapabilities);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        senderIdentityUUID = [v10 senderIdentityUUID];
        v12 = [senderIdentityUUID isEqual:dCopy];

        if (v12)
        {
          v13 = v10;

          v7 = v13;
        }
      }

      v6 = [senderIdentityCapabilities countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  subscriptionContext = [(TPSWiFiCallingController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v5 = [(TPSWiFiCallingController *)self subscriptionCapabilitiesForSubscriptionContextUUID:uuid];

  return v5;
}

- (BOOL)isThumperCallingEnabled
{
  subscriptionCapabilities = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  if (([subscriptionCapabilities isThumperCallingEnabled] & 1) != 0 || objc_msgSend(subscriptionCapabilities, "thumperCallingProvisioningStatus") == 1)
  {
    isRelayCallingEnabled = [MEMORY[0x277D6EDE8] isRelayCallingEnabled];
  }

  else
  {
    isRelayCallingEnabled = 0;
  }

  return isRelayCallingEnabled;
}

- (BOOL)isWiFiCallingEnabled
{
  subscriptionCapabilities = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  v3 = ([subscriptionCapabilities isWiFiCallingEnabled] & 1) != 0 || objc_msgSend(subscriptionCapabilities, "wiFiCallingProvisioningStatus") == 1;

  return v3;
}

- (BOOL)isWiFiCallingRoamingEnabled
{
  subscriptionCapabilities = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  isWiFiCallingRoamingEnabled = [subscriptionCapabilities isWiFiCallingRoamingEnabled];

  return isWiFiCallingRoamingEnabled;
}

- (BOOL)supportsThumperCalling
{
  subscriptionCapabilities = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  supportsThumperCalling = [subscriptionCapabilities supportsThumperCalling];

  return supportsThumperCalling;
}

- (BOOL)supportsWiFiCalling
{
  subscriptionCapabilities = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  supportsWiFiCalling = [subscriptionCapabilities supportsWiFiCalling];

  return supportsWiFiCalling;
}

- (BOOL)supportsWiFiEmergencyCalling
{
  subscriptionCapabilities = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  supportsEmergencyWiFiCalling = [subscriptionCapabilities supportsEmergencyWiFiCalling];

  return supportsEmergencyWiFiCalling;
}

- (BOOL)isWiFiCallingCertified
{
  carrierBundleController = [(TPSWiFiCallingController *)self carrierBundleController];
  subscriptionContext = [(TPSWiFiCallingController *)self subscriptionContext];
  v5 = [carrierBundleController objectForKeyHierarchy:&unk_282D5D678 subscriptionContext:subscriptionContext];

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
    encryptedIdentityClient = [(TPSWiFiCallingController *)self encryptedIdentityClient];
    subscriptionContext = [(TPSWiFiCallingController *)self subscriptionContext];
    v6 = [encryptedIdentityClient encryptedIdentityInfoForSubscriptionContext:subscriptionContext type:1];
    v7 = self->_encryptedIdentityInfo;
    self->_encryptedIdentityInfo = v6;

    encryptedIdentityInfo = self->_encryptedIdentityInfo;
  }

  return encryptedIdentityInfo;
}

- (BOOL)supportsEncryptedIdentity
{
  encryptedIdentityInfo = [(TPSWiFiCallingController *)self encryptedIdentityInfo];
  v3 = encryptedIdentityInfo != 0;

  return v3;
}

- (NSString)localizedCarrierName
{
  carrierBundleController = [(TPSWiFiCallingController *)self carrierBundleController];
  subscriptionContext = [(TPSWiFiCallingController *)self subscriptionContext];
  v5 = [carrierBundleController localizedCarrierNameForSubscriptionContext:subscriptionContext];

  return v5;
}

- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  subscriptionContext = [(TPSWiFiCallingController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v7 = [dCopy isEqual:uuid];

  if (v7)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      subscriptionContext2 = [(TPSWiFiCallingController *)self subscriptionContext];
      v12 = 138412290;
      v13 = subscriptionContext2;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Thumper calling capabilities changed for subscription context %@.", &v12, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification" object:self];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didChangeWiFiCallingCapabilitiesForSenderIdentityWithUUID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  subscriptionContext = [(TPSWiFiCallingController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v7 = [dCopy isEqual:uuid];

  if (v7)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      subscriptionContext2 = [(TPSWiFiCallingController *)self subscriptionContext];
      v12 = 138412290;
      v13 = subscriptionContext2;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "WiFi calling capabilities changed for subscription context %@.", &v12, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification" object:self];
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end