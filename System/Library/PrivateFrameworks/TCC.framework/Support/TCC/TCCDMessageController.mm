@interface TCCDMessageController
+ (id)sharedMessageControllerForCurrentPlatform;
- (TCCDMessageController)init;
- (void)_sendMessage:(id)message handler:(id)handler;
- (void)sendMessage:(id)message ofType:(id)type handler:(id)handler;
- (void)setIncomingMessageType:(id)type handler:(id)handler;
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

- (void)setIncomingMessageType:(id)type handler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  if (typeCopy)
  {
    queue = [(TCCDMessageController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014A10;
    block[3] = &unk_1000A5428;
    v12 = handlerCopy;
    block[4] = self;
    v11 = typeCopy;
    dispatch_async(queue, block);

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

- (void)sendMessage:(id)message ofType:(id)type handler:(id)handler
{
  messageCopy = message;
  typeCopy = type;
  handlerCopy = handler;
  if (typeCopy)
  {
    v11 = [NSMutableDictionary dictionaryWithDictionary:messageCopy];
    v12 = [typeCopy copy];
    [v11 setObject:v12 forKeyedSubscript:@"TCCDMessageTypeKey"];

    [(TCCDMessageController *)self _sendMessage:v11 handler:handlerCopy];
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_10006109C();
  }
}

- (void)_sendMessage:(id)message handler:(id)handler
{
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_10006111C();
  }
}

@end