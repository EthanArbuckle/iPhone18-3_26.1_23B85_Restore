@interface SBUserAlertNotificationSource
- (SBUserAlertNotificationSource)initWithDispatcher:(id)dispatcher;
- (void)alertItemsController:(id)controller didDeactivateAlertItem:(id)item forReason:(int)reason;
- (void)alertItemsController:(id)controller willActivateAlertItem:(id)item;
- (void)dealloc;
- (void)dismissAlertItem:(id)item animated:(BOOL)animated completion:(id)completion;
- (void)presentAlertItem:(id)item animated:(BOOL)animated completion:(id)completion;
@end

@implementation SBUserAlertNotificationSource

- (SBUserAlertNotificationSource)initWithDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v10.receiver = self;
  v10.super_class = SBUserAlertNotificationSource;
  v6 = [(SBUserAlertNotificationSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatcher, dispatcher);
    v8 = +[SBAlertItemsController sharedInstance];
    [v8 addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[SBAlertItemsController sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBUserAlertNotificationSource;
  [(SBUserAlertNotificationSource *)&v4 dealloc];
}

- (void)presentAlertItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  v7 = [MEMORY[0x277D77E48] notificationRequestForLockScreenWithAlertItem:item];
  dispatcher = [(SBUserAlertNotificationSource *)self dispatcher];
  [dispatcher postNotificationWithRequest:v7];

  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)dismissAlertItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  v7 = [MEMORY[0x277D77E48] notificationRequestForLockScreenWithAlertItem:item];
  dispatcher = [(SBUserAlertNotificationSource *)self dispatcher];
  [dispatcher withdrawNotificationWithRequest:v7];

  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)alertItemsController:(id)controller willActivateAlertItem:(id)item
{
  itemCopy = item;
  if ([itemCopy allowInCar])
  {
    v5 = [MEMORY[0x277D77E48] notificationRequestForCarPlayWithAlertItem:itemCopy];
    dispatcher = [(SBUserAlertNotificationSource *)self dispatcher];
    [dispatcher postNotificationWithRequest:v5];
  }
}

- (void)alertItemsController:(id)controller didDeactivateAlertItem:(id)item forReason:(int)reason
{
  controllerCopy = controller;
  itemCopy = item;
  v9 = itemCopy;
  if (reason != 1 && [itemCopy allowInCar])
  {
    v10 = [MEMORY[0x277D77E48] notificationRequestForCarPlayWithAlertItem:v9];
    dispatcher = [(SBUserAlertNotificationSource *)self dispatcher];
    [dispatcher withdrawNotificationWithRequest:v10];
  }
}

@end