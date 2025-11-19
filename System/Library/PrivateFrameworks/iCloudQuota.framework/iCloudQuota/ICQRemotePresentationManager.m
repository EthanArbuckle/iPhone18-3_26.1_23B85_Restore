@interface ICQRemotePresentationManager
- (ICQRemotePresentationManager)initWithRemoteContext:(id)a3;
- (void)presentHiddenFreshmintFlowWithEndpoint:(id)a3;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
@end

@implementation ICQRemotePresentationManager

- (ICQRemotePresentationManager)initWithRemoteContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICQRemotePresentationManager;
  v6 = [(ICQRemotePresentationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteContext, a3);
  }

  return v7;
}

- (void)presentHiddenFreshmintFlowWithEndpoint:(id)a3
{
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Presenting freshmint flow with SB Remote Alert.", v11, 2u);
  }

  v6 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.RemoteiCloudQuotaUI" viewControllerClassName:@"ICQRemoteViewController"];
  v7 = objc_alloc_init(MEMORY[0x277D66BD0]);
  v8 = [(ICQRemoteContext *)self->_remoteContext toDictionary];
  [v7 setUserInfo:v8];

  [v7 setXpcEndpoint:v4];
  v9 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v6 configurationContext:v7];
  [v9 registerObserver:self];
  v10 = objc_alloc_init(MEMORY[0x277D66BC0]);
  [v9 activateWithContext:v10];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Remote alert was invalidated with error: %@", &v9, 0xCu);
  }

  presentationWasInvalidated = self->_presentationWasInvalidated;
  if (presentationWasInvalidated)
  {
    presentationWasInvalidated[2](presentationWasInvalidated, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end