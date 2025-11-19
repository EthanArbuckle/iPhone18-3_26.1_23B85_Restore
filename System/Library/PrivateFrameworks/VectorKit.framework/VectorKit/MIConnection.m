@interface MIConnection
+ (void)createConnectionWithXPCObject:(id)a3 withSelector:(SEL)a4 onTarget:(id)a5;
- (MIConnection)initWithType:(unint64_t)a3;
- (MIConnectionDelegate)delegate;
@end

@implementation MIConnection

- (MIConnection)initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MIConnection;
  result = [(MIConnection *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

+ (void)createConnectionWithXPCObject:(id)a3 withSelector:(SEL)a4 onTarget:(id)a5
{
  v7 = a3;
  v8 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100001C74;
  v24 = sub_100001C84;
  v9 = v7;
  v25 = v9;
  v10 = [v8 methodForSelector:a4];
  v11 = v21[5];
  v12 = &_dispatch_main_q;
  xpc_connection_set_target_queue(v11, &_dispatch_main_q);

  v13 = v21[5];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001C8C;
  v15[3] = &unk_100004308;
  v18 = v10;
  v14 = v8;
  v19 = a4;
  v16 = v14;
  v17 = &v20;
  xpc_connection_set_event_handler(v13, v15);
  xpc_connection_resume(v21[5]);

  _Block_object_dispose(&v20, 8);
}

- (MIConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end