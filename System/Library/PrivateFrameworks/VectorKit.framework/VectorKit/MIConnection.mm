@interface MIConnection
+ (void)createConnectionWithXPCObject:(id)object withSelector:(SEL)selector onTarget:(id)target;
- (MIConnection)initWithType:(unint64_t)type;
- (MIConnectionDelegate)delegate;
@end

@implementation MIConnection

- (MIConnection)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = MIConnection;
  result = [(MIConnection *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

+ (void)createConnectionWithXPCObject:(id)object withSelector:(SEL)selector onTarget:(id)target
{
  objectCopy = object;
  targetCopy = target;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100001C74;
  v24 = sub_100001C84;
  v9 = objectCopy;
  v25 = v9;
  v10 = [targetCopy methodForSelector:selector];
  v11 = v21[5];
  v12 = &_dispatch_main_q;
  xpc_connection_set_target_queue(v11, &_dispatch_main_q);

  v13 = v21[5];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001C8C;
  v15[3] = &unk_100004308;
  v18 = v10;
  v14 = targetCopy;
  selectorCopy = selector;
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