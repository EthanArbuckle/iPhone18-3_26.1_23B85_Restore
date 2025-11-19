@interface TCCDMessageController
+ (id)sharedMessageControllerForCurrentPlatform;
- (TCCDMessageController)init;
- (void)_sendMessage:(id)a3 handler:(id)a4;
- (void)sendMessage:(id)a3 ofType:(id)a4 handler:(id)a5;
- (void)setIncomingMessageType:(id)a3 handler:(id)a4;
@end

@implementation TCCDMessageController

+ (id)sharedMessageControllerForCurrentPlatform
{
  if (qword_1000C0FD0 != -1)
  {
    sub_100060F84();
  }

  v3 = qword_1000C0FC8;

  return v3;
}

- (TCCDMessageController)init
{
  v8.receiver = self;
  v8.super_class = TCCDMessageController;
  v2 = [(TCCDMessageController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("TCCDIdsMessageController", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    messageTypesToHandlers = v2->_messageTypesToHandlers;
    v2->_messageTypesToHandlers = v5;

    if (!v2->_queue || !v2->_messageTypesToHandlers)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100060F98();
      }

      return 0;
    }
  }

  return v2;
}

- (void)setIncomingMessageType:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(TCCDMessageController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014A10;
    block[3] = &unk_1000A5428;
    v12 = v7;
    block[4] = self;
    v11 = v6;
    dispatch_async(v8, block);

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100014A94;
    v9[3] = &unk_1000A4F58;
    v9[4] = self;
    if (qword_1000C0FD8 != -1)
    {
      dispatch_once(&qword_1000C0FD8, v9);
    }
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_10006101C();
  }
}

- (void)sendMessage:(id)a3 ofType:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [NSMutableDictionary dictionaryWithDictionary:v8];
    v12 = [v9 copy];
    [v11 setObject:v12 forKeyedSubscript:@"TCCDMessageTypeKey"];

    [(TCCDMessageController *)self _sendMessage:v11 handler:v10];
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_10006109C();
  }
}

- (void)_sendMessage:(id)a3 handler:(id)a4
{
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_10006111C();
  }
}

@end