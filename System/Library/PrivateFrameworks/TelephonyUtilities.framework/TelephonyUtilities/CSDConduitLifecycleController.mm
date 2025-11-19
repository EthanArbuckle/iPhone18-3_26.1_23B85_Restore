@interface CSDConduitLifecycleController
- (BOOL)shouldKeepConduitAlive;
- (CSDConduitLifecycleController)initWithConversationManager:(id)a3 delegate:(id)a4;
- (void)_handleCallStatusChanged:(id)a3;
- (void)dealloc;
- (void)handleCallStatusChangedNotification:(id)a3;
@end

@implementation CSDConduitLifecycleController

- (CSDConduitLifecycleController)initWithConversationManager:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = CSDConduitLifecycleController;
  v9 = [(CSDConduitLifecycleController *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conversationManager, a3);
    objc_storeStrong(&v10->_delegate, a4);
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
  v3 = [(TUConversationManager *)self->_conversationManager activeConversations];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(RPRemoteDisplayDiscovery *)self->_remoteDisplayDiscovery currentState]== 1;
  }

  return v4;
}

- (void)handleCallStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 object];
    [(CSDConduitLifecycleController *)self _handleCallStatusChanged:v7];
  }

  else
  {
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 object];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not handling call status changed notification for object that is not CSDCall: %@", &v10, 0xCu);
    }
  }
}

- (void)_handleCallStatusChanged:(id)a3
{
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 1024;
    v12 = [v4 status];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CSDConduit got a call status change for call %@. Status: %d", &v9, 0x12u);
  }

  v6 = [(CSDConduitLifecycleController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CSDConduitLifecycleController *)self delegate];
    [v8 callStatusChanged:v4];
  }
}

@end