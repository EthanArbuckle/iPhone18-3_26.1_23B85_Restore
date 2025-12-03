@interface ICQPremiumFlowManager
- (void)_configurePresentingViewController:(id)controller;
- (void)beginPremiumFlow;
- (void)beginPremiumFlowWithURL:(id)l;
@end

@implementation ICQPremiumFlowManager

- (void)beginPremiumFlowWithURL:(id)l
{
  v3.receiver = self;
  v3.super_class = ICQPremiumFlowManager;
  [(ICQUpgradeFlowManager *)&v3 _beginRemoteFlowWithURL:l];
}

- (void)beginPremiumFlow
{
  v2.receiver = self;
  v2.super_class = ICQPremiumFlowManager;
  [(ICQUpgradeFlowManager *)&v2 _beginRemoteFlowWithURL:0];
}

- (void)_configurePresentingViewController:(id)controller
{
  v11 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    offer = [(ICQUpgradeFlowManager *)self offer];
    serverUIURL = [offer serverUIURL];
    *buf = 138412290;
    v10 = serverUIURL;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "presenting premium out of process page with remoteUI URL %@", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = ICQPremiumFlowManager;
  [(ICQUpgradeFlowManager *)&v8 _presentRemoteUIUsingViewController:controllerCopy];
}

@end