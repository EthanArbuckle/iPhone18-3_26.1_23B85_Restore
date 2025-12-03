@interface WFWAPICertificatePromptOperation
- (WFWAPICertificatePromptOperation)initWithRootViewController:(id)controller network:(id)network;
- (void)finish;
- (void)otherNetworkViewControllerUserDidTapCancel:(id)cancel;
- (void)otherNetworkViewControllerUserDidTapJoin:(id)join;
- (void)start;
@end

@implementation WFWAPICertificatePromptOperation

- (void)finish
{
  v4.receiver = self;
  v4.super_class = WFWAPICertificatePromptOperation;
  [(WFOperation *)&v4 finish];
  rootViewController = [(WFWAPICertificatePromptOperation *)self rootViewController];
  [rootViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)start
{
  v18.receiver = self;
  v18.super_class = WFWAPICertificatePromptOperation;
  [(WFOperation *)&v18 start];
  v3 = objc_alloc(MEMORY[0x277D7B9F0]);
  network = [(WFWAPICertificatePromptOperation *)self network];
  ssid = [network ssid];
  v6 = [v3 initWithOtherNetworkStyle:2 networkName:ssid];

  network2 = [(WFWAPICertificatePromptOperation *)self network];
  ssid2 = [network2 ssid];
  [v6 setNetworkName:ssid2];

  [v6 setDelegate:self];
  theArray = 0;
  if (!WFWAPIRootCertificateListCreate(&theArray) && CFArrayGetCount(theArray))
  {
    [v6 setWAPIRootCertificates:theArray];
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  obj = 0;
  v16 = 0;
  if (!WFWAPIIdentityListCreate(&v16, &obj) && CFArrayGetCount(v16))
  {
    [v6 setWAPIIdentities:v16];
    objc_storeStrong(&self->_wapiIdentityMapping, obj);
  }

  [(WFWAPICertificatePromptOperation *)self setPromptViewController:v6];
  v9 = objc_alloc(MEMORY[0x277D757A0]);
  promptViewController = [(WFWAPICertificatePromptOperation *)self promptViewController];
  v11 = [v9 initWithRootViewController:promptViewController];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [v11 setModalPresentationStyle:2];
  }

  rootViewController = [(WFWAPICertificatePromptOperation *)self rootViewController];
  [rootViewController presentViewController:v11 animated:1 completion:0];

  [(WFWAPICertificatePromptOperation *)self setNavigationController:v11];
}

- (void)otherNetworkViewControllerUserDidTapCancel:(id)cancel
{
  [(WFWAPICertificatePromptOperation *)self setUserCancelled:1];

  [(WFWAPICertificatePromptOperation *)self finish];
}

- (void)otherNetworkViewControllerUserDidTapJoin:(id)join
{
  v21 = *MEMORY[0x277D85DE8];
  joinCopy = join;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_wapiIdentityMapping;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 valueForKey:{@"certRef", v16}];
        wAPIIdentity = [joinCopy WAPIIdentity];
        LODWORD(v11) = CFEqual(v11, wAPIIdentity);

        if (v11)
        {
          v13 = [v10 valueForKey:@"pemData"];
          [(WFWAPICertificatePromptOperation *)self setWAPIIdentityPEMBlob:v13];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  wAPIRootCertificate = [joinCopy WAPIRootCertificate];
  [(WFWAPICertificatePromptOperation *)self setWAPIRootCertificate:wAPIRootCertificate];

  [(WFWAPICertificatePromptOperation *)self finish];
  v15 = *MEMORY[0x277D85DE8];
}

- (WFWAPICertificatePromptOperation)initWithRootViewController:(id)controller network:(id)network
{
  controllerCopy = controller;
  networkCopy = network;
  v14.receiver = self;
  v14.super_class = WFWAPICertificatePromptOperation;
  v9 = [(WFWAPICertificatePromptOperation *)&v14 init];
  v10 = v9;
  if (!controllerCopy)
  {
    goto LABEL_6;
  }

  if (!v9)
  {
    network = 0;
    goto LABEL_5;
  }

  objc_storeStrong(&v9->_rootViewController, controller);
  if (networkCopy)
  {
    v11 = networkCopy;
    network = v10->_network;
    v10->_network = v11;
  }

  else
  {
LABEL_6:
    network = v10;
    v10 = 0;
  }

LABEL_5:

  return v10;
}

@end