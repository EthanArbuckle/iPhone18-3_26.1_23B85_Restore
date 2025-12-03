@interface SBWalletNotificationSource
- (SBWalletNotificationSource)initWithDispatcher:(id)dispatcher;
- (void)modifyNotificationRequestForCardItem:(id)item;
- (void)postNotificationRequestForCardItem:(id)item;
- (void)withdrawNotificationRequestForCardItem:(id)item;
@end

@implementation SBWalletNotificationSource

- (SBWalletNotificationSource)initWithDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v9.receiver = self;
  v9.super_class = SBWalletNotificationSource;
  v6 = [(SBWalletNotificationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatcher, dispatcher);
  }

  return v7;
}

- (void)postNotificationRequestForCardItem:(id)item
{
  v5 = [MEMORY[0x277D77E48] notificationRequestWithCardItem:item];
  dispatcher = [(SBWalletNotificationSource *)self dispatcher];
  [dispatcher postNotificationWithRequest:v5];
}

- (void)modifyNotificationRequestForCardItem:(id)item
{
  v5 = [MEMORY[0x277D77E48] notificationRequestWithCardItem:item];
  dispatcher = [(SBWalletNotificationSource *)self dispatcher];
  [dispatcher modifyNotificationWithRequest:v5];
}

- (void)withdrawNotificationRequestForCardItem:(id)item
{
  v5 = [MEMORY[0x277D77E48] notificationRequestWithCardItem:item];
  dispatcher = [(SBWalletNotificationSource *)self dispatcher];
  [dispatcher withdrawNotificationWithRequest:v5];
}

@end