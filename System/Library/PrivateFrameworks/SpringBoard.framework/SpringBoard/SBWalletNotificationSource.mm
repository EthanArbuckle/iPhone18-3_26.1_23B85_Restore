@interface SBWalletNotificationSource
- (SBWalletNotificationSource)initWithDispatcher:(id)a3;
- (void)modifyNotificationRequestForCardItem:(id)a3;
- (void)postNotificationRequestForCardItem:(id)a3;
- (void)withdrawNotificationRequestForCardItem:(id)a3;
@end

@implementation SBWalletNotificationSource

- (SBWalletNotificationSource)initWithDispatcher:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBWalletNotificationSource;
  v6 = [(SBWalletNotificationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatcher, a3);
  }

  return v7;
}

- (void)postNotificationRequestForCardItem:(id)a3
{
  v5 = [MEMORY[0x277D77E48] notificationRequestWithCardItem:a3];
  v4 = [(SBWalletNotificationSource *)self dispatcher];
  [v4 postNotificationWithRequest:v5];
}

- (void)modifyNotificationRequestForCardItem:(id)a3
{
  v5 = [MEMORY[0x277D77E48] notificationRequestWithCardItem:a3];
  v4 = [(SBWalletNotificationSource *)self dispatcher];
  [v4 modifyNotificationWithRequest:v5];
}

- (void)withdrawNotificationRequestForCardItem:(id)a3
{
  v5 = [MEMORY[0x277D77E48] notificationRequestWithCardItem:a3];
  v4 = [(SBWalletNotificationSource *)self dispatcher];
  [v4 withdrawNotificationWithRequest:v5];
}

@end