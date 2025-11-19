@interface TCCDIdsMessageController
- (TCCDIdsMessageController)init;
- (void)_makeReadyToReceiveMessages;
- (void)_sendMessage:(id)a3 handler:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation TCCDIdsMessageController

- (TCCDIdsMessageController)init
{
  v8.receiver = self;
  v8.super_class = TCCDIdsMessageController;
  v2 = [(TCCDMessageController *)&v8 init];
  if (v2)
  {
    if (objc_opt_class())
    {
      v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.tccd.msg"];
      idsService = v2->_idsService;
      v2->_idsService = v3;
    }

    v5 = objc_alloc_init(NSMutableDictionary);
    messageIdsToHandlers = v2->_messageIdsToHandlers;
    v2->_messageIdsToHandlers = v5;

    if (!v2->_idsService || !v2->_messageIdsToHandlers)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100060C5C();
      }

      return 0;
    }
  }

  return v2;
}

- (void)_makeReadyToReceiveMessages
{
  idsService = self->_idsService;
  v4 = dispatch_get_global_queue(25, 0);
  [(IDSService *)idsService addDelegate:self queue:v4];
}

- (void)_sendMessage:(id)a3 handler:(id)a4
{
  v6 = a4;
  idsService = self->_idsService;
  v8 = IDSDefaultPairedDevice;
  v9 = a3;
  v10 = [NSSet setWithObject:v8];
  v21 = 0;
  v22 = 0;
  v11 = [(IDSService *)idsService sendMessage:v9 toDestinations:v10 priority:200 options:0 identifier:&v22 error:&v21];

  v12 = v22;
  v13 = v21;

  v14 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    v16 = "Failed";
    *buf = 136315650;
    v24 = "[TCCDIdsMessageController _sendMessage:handler:]";
    if (v11)
    {
      v16 = "Success";
      v17 = v12;
    }

    else
    {
      v17 = v13;
    }

    v25 = 2080;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s: IDS message send status: %s - %@", buf, 0x20u);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6[2](v6, v13);
    goto LABEL_9;
  }

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  v15 = [(TCCDMessageController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014270;
  block[3] = &unk_1000A53B8;
  block[4] = self;
  v19 = v12;
  v20 = v6;
  dispatch_async(v15, block);

LABEL_9:
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_100060CE0();
  }

  v17 = [v14 objectForKeyedSubscript:@"TCCDMessageTypeKey"];
  if (v17)
  {
    v18 = [(TCCDMessageController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014458;
    block[3] = &unk_1000A5098;
    block[4] = self;
    v20 = v17;
    v21 = v14;
    dispatch_async(v18, block);
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100060D64();
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_100060E60();
  }

  v12 = [(TCCDMessageController *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001460C;
  v15[3] = &unk_1000A53E0;
  v15[4] = self;
  v16 = v10;
  v18 = a6;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, v15);
}

@end