@interface TPSCloudCallingThumperController
- (BOOL)isThumperCallingEnabled;
- (BOOL)supportsThumperCalling;
- (NSString)localizedCarrierName;
- (TPSCarrierBundleController)carrierBundleController;
- (TPSCloudCallingThumperController)init;
- (TPSCloudCallingThumperController)initWithSubscriptionContext:(id)context;
- (TPSCloudCallingThumperControllerDelegate)delegate;
- (TUSenderIdentityCapabilities)subscriptionCapabilities;
@end

@implementation TPSCloudCallingThumperController

- (TPSCloudCallingThumperController)init
{
  [(TPSCloudCallingThumperController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCloudCallingThumperController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TPSCloudCallingThumperController;
  v6 = [(TPSCloudCallingThumperController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
  }

  return v7;
}

- (TUSenderIdentityCapabilities)subscriptionCapabilities
{
  v23 = *MEMORY[0x277D85DE8];
  p_subscriptionCapabilities = &self->_subscriptionCapabilities;
  subscriptionCapabilities = self->_subscriptionCapabilities;
  if (!subscriptionCapabilities)
  {
    senderIdentityCapabilities = [MEMORY[0x277D6EDE8] senderIdentityCapabilities];
    subscriptionContext = [(TPSCloudCallingThumperController *)self subscriptionContext];
    uuid = [subscriptionContext uuid];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = senderIdentityCapabilities;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          senderIdentityUUID = [v13 senderIdentityUUID];
          v15 = [senderIdentityUUID isEqual:uuid];

          if (v15)
          {
            objc_storeStrong(p_subscriptionCapabilities, v13);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    subscriptionCapabilities = *p_subscriptionCapabilities;
  }

  v16 = *MEMORY[0x277D85DE8];

  return subscriptionCapabilities;
}

- (BOOL)isThumperCallingEnabled
{
  subscriptionCapabilities = [(TPSCloudCallingThumperController *)self subscriptionCapabilities];
  isThumperCallingEnabled = [subscriptionCapabilities isThumperCallingEnabled];

  return isThumperCallingEnabled;
}

- (BOOL)supportsThumperCalling
{
  subscriptionCapabilities = [(TPSCloudCallingThumperController *)self subscriptionCapabilities];
  supportsThumperCalling = [subscriptionCapabilities supportsThumperCalling];

  return supportsThumperCalling;
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

- (NSString)localizedCarrierName
{
  carrierBundleController = [(TPSCloudCallingThumperController *)self carrierBundleController];
  subscriptionContext = [(TPSCloudCallingThumperController *)self subscriptionContext];
  v5 = [carrierBundleController localizedCarrierNameForSubscriptionContext:subscriptionContext];

  return v5;
}

- (TPSCloudCallingThumperControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end