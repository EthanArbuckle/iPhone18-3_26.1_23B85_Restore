@interface CSDCallHistoryControllerXPCServer
- (CSDCallHistoryControllerXPCServer)initWithCallHistoryController:(id)controller;
- (void)allCallHistoryDeleted;
- (void)dealloc;
- (void)invalidate;
- (void)notifyClientsToConnectIfNecessary;
- (void)recentCallsDeleted:(id)deleted;
- (void)registerClient:(id)client;
- (void)unregisterClient:(id)client;
@end

@implementation CSDCallHistoryControllerXPCServer

- (CSDCallHistoryControllerXPCServer)initWithCallHistoryController:(id)controller
{
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = CSDCallHistoryControllerXPCServer;
  v6 = [(CSDCallHistoryControllerXPCServer *)&v21 init];
  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating CSDCallHistoryControllerXPCServer", buf, 2u);
    }

    v8 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.callhistorycontrollerxpcserver", 0);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_callHistoryController, controller);
    v10 = [[CSDClientManager alloc] initWithSerialQueue:v6->_queue];
    clientManager = v6->_clientManager;
    v6->_clientManager = v10;

    v12 = v6->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008480C;
    block[3] = &unk_100619D38;
    v13 = v6;
    v19 = v13;
    dispatch_sync(v12, block);
    queue = [(CSDCallHistoryControllerXPCServer *)v13 queue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100084A9C;
    v16[3] = &unk_100619D38;
    v17 = v13;
    dispatch_async(queue, v16);
  }

  return v6;
}

- (void)dealloc
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deallocing CallHistoryControllerXPCServer", buf, 2u);
  }

  notify_cancel(self->_clientsShouldConnectToken);
  v4.receiver = self;
  v4.super_class = CSDCallHistoryControllerXPCServer;
  [(CSDCallHistoryControllerXPCServer *)&v4 dealloc];
}

- (void)invalidate
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidating CallHistoryControllerXPCServer", buf, 2u);
  }

  queue = [(CSDCallHistoryControllerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084C74;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)notifyClientsToConnectIfNecessary
{
  queue = [(CSDCallHistoryControllerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NOTIFYING CLIENTS TO CONNECT", v5, 2u);
  }

  notify_set_state(self->_clientsShouldConnectToken, 1uLL);
  notify_post("CSDCallHistoryControllerClientsShouldConnectNotification");
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallHistoryControllerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100084E04;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallHistoryControllerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100084F0C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)recentCallsDeleted:(id)deleted
{
  deletedCopy = deleted;
  queue = [(CSDCallHistoryControllerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100085014;
  v7[3] = &unk_100619D88;
  v8 = deletedCopy;
  selfCopy = self;
  v6 = deletedCopy;
  dispatch_async(queue, v7);
}

- (void)allCallHistoryDeleted
{
  queue = [(CSDCallHistoryControllerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085160;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

@end