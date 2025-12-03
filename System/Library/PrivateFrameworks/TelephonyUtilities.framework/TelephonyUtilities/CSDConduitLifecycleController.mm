@interface CSDConduitLifecycleController
- (BOOL)shouldKeepConduitAlive;
- (CSDConduitLifecycleController)initWithConversationManager:(id)manager delegate:(id)delegate;
- (void)_handleCallStatusChanged:(id)changed;
- (void)dealloc;
- (void)handleCallStatusChangedNotification:(id)notification;
@end

@implementation CSDConduitLifecycleController

- (CSDConduitLifecycleController)initWithConversationManager:(id)manager delegate:(id)delegate
{
  managerCopy = manager;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = CSDConduitLifecycleController;
  v9 = [(CSDConduitLifecycleController *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conversationManager, manager);
    objc_storeStrong(&v10->_delegate, delegate);
    v11 = objc_alloc_init(RPRemoteDisplayDiscovery);
    remoteDisplayDiscovery = v10->_remoteDisplayDiscovery;
    v10->_remoteDisplayDiscovery = v11;

    [(RPRemoteDisplayDiscovery *)v10->_remoteDisplayDiscovery activateWithCompletion:&stru_10061D588];
    objc_initWeak(&location, v10);
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1001A2F18;
    v19 = &unk_10061D5B0;
    objc_copyWeak(&v20, &location);
    [(RPRemoteDisplayDiscovery *)v10->_remoteDisplayDiscovery setDiscoverySessionStateChangedHandler:&v16];
    v13 = [NSNotificationCenter defaultCenter:v16];
    [v13 addObserver:v10 selector:"handleCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
    v14 = v10;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)dealloc
{
  [(RPRemoteDisplayDiscovery *)self->_remoteDisplayDiscovery invalidate];
  v3.receiver = self;
  v3.super_class = CSDConduitLifecycleController;
  [(CSDConduitLifecycleController *)&v3 dealloc];
}

- (BOOL)shouldKeepConduitAlive
{
  activeConversations = [(TUConversationManager *)self->_conversationManager activeConversations];
  if ([activeConversations count])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(RPRemoteDisplayDiscovery *)self->_remoteDisplayDiscovery currentState]== 1;
  }

  return v4;
}

- (void)handleCallStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [notificationCopy object];
    [(CSDConduitLifecycleController *)self _handleCallStatusChanged:object2];
  }

  else
  {
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      object3 = [notificationCopy object];
      v10 = 138412290;
      v11 = object3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not handling call status changed notification for object that is not CSDCall: %@", &v10, 0xCu);
    }
  }
}

- (void)_handleCallStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = changedCopy;
    v11 = 1024;
    status = [changedCopy status];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CSDConduit got a call status change for call %@. Status: %d", &v9, 0x12u);
  }

  delegate = [(CSDConduitLifecycleController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CSDConduitLifecycleController *)self delegate];
    [delegate2 callStatusChanged:changedCopy];
  }
}

@end