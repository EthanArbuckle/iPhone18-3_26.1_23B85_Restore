@interface WFWAPICertificatePromptOperation
- (WFWAPICertificatePromptOperation)initWithRootViewController:(id)a3 network:(id)a4;
- (void)finish;
- (void)otherNetworkViewControllerUserDidTapCancel:(id)a3;
- (void)otherNetworkViewControllerUserDidTapJoin:(id)a3;
- (void)start;
@end

@implementation WFWAPICertificatePromptOperation

- (void)finish
{
  v4.receiver = self;
  v4.super_class = WFWAPICertificatePromptOperation;
  [(WFOperation *)&v4 finish];
  v3 = [(WFWAPICertificatePromptOperation *)self rootViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)start
{
  v18.receiver = self;
  v18.super_class = WFWAPICertificatePromptOperation;
  [(WFOperation *)&v18 start];
  v3 = objc_alloc(MEMORY[0x277D7B9F0]);
  v4 = [(WFWAPICertificatePromptOperation *)self network];
  v5 = [v4 ssid];
  v6 = [v3 initWithOtherNetworkStyle:2 networkName:v5];

  v7 = [(WFWAPICertificatePromptOperation *)self network];
  v8 = [v7 ssid];
  [v6 setNetworkName:v8];

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
  v10 = [(WFWAPICertificatePromptOperation *)self promptViewController];
  v11 = [v9 initWithRootViewController:v10];

  v12 = [MEMORY[0x277D75418] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 1)
  {
    [v11 setModalPresentationStyle:2];
  }

  v14 = [(WFWAPICertificatePromptOperation *)self rootViewController];
  [v14 presentViewController:v11 animated:1 completion:0];

  [(WFWAPICertificatePromptOperation *)self setNavigationController:v11];
}

- (void)otherNetworkViewControllerUserDidTapCancel:(id)a3
{
  [(WFWAPICertificatePromptOperation *)self setUserCancelled:1];

  [(WFWAPICertificatePromptOperation *)self finish];
}

- (void)otherNetworkViewControllerUserDidTapJoin:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v12 = [v4 WAPIIdentity];
        LODWORD(v11) = CFEqual(v11, v12);

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

  v14 = [v4 WAPIRootCertificate];
  [(WFWAPICertificatePromptOperation *)self setWAPIRootCertificate:v14];

  [(WFWAPICertificatePromptOperation *)self finish];
  v15 = *MEMORY[0x277D85DE8];
}

- (WFWAPICertificatePromptOperation)initWithRootViewController:(id)a3 network:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = WFWAPICertificatePromptOperation;
  v9 = [(WFWAPICertificatePromptOperation *)&v14 init];
  v10 = v9;
  if (!v7)
  {
    goto LABEL_6;
  }

  if (!v9)
  {
    network = 0;
    goto LABEL_5;
  }

  objc_storeStrong(&v9->_rootViewController, a3);
  if (v8)
  {
    v11 = v8;
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