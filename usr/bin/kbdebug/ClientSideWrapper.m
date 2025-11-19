@interface ClientSideWrapper
- (ClientSideWrapper)init;
- (id)proxy;
- (void)dealloc;
- (void)queue_activeProcessResignWithCompletion:(id)a3;
- (void)queue_applicationLostFocusWithCompletion:(id)a3;
- (void)queue_getDebugInfoWithCompletion:(id)a3;
- (void)queue_keyboardChanged:(id)a3 onComplete:(id)a4;
- (void)queue_keyboardChangedWithCompletion:(id)a3;
- (void)queue_keyboardIAVChanged:(double)a3 onComplete:(id)a4;
- (void)queue_keyboardSuppressed:(BOOL)a3 withCompletion:(id)a4;
- (void)queue_keyboardTransition:(id)a3 event:(unint64_t)a4 withInfo:(id)a5 onComplete:(id)a6;
- (void)queue_keyboardUIDidChange:(id)a3 onComplete:(id)a4;
- (void)queue_sceneBecameFocused:(id)a3 withCompletion:(id)a4;
- (void)queue_setKeyboardDisabled:(BOOL)a3 withCompletion:(id)a4;
- (void)queue_setLastEventSource:(int64_t)a3 withCompletion:(id)a4;
@end

@implementation ClientSideWrapper

- (ClientSideWrapper)init
{
  v20.receiver = self;
  v20.super_class = ClientSideWrapper;
  v2 = [(ClientSideWrapper *)&v20 init];
  if (v2)
  {
    v2->_mainRunloop = CFRunLoopGetCurrent();
    v3 = +[_UIRemoteKeyboards createArbiterConnection];
    connection = v2->_connection;
    v2->_connection = v3;

    if (!v2->_connection)
    {
      sub_100000DF0(@"Couldn't connect to service\n", v5, v6, v7, v8, v9, v10, v11, v14);
      v12 = 0;
      goto LABEL_6;
    }

    objc_initWeak(&location, v2);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100000E70;
    v17[3] = &unk_100004140;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:v17];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100000EC8;
    v15[3] = &unk_100004140;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:v15];
    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    [(NSXPCConnection *)v2->_connection resume];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  v12 = v2;
LABEL_6:

  return v12;
}

- (id)proxy
{
  objc_initWeak(&location, self);
  connection = self->_connection;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100000FE0;
  v6[3] = &unk_100004168;
  objc_copyWeak(&v7, &location);
  v4 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = ClientSideWrapper;
  [(ClientSideWrapper *)&v3 dealloc];
}

- (void)queue_keyboardChanged:(id)a3 onComplete:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)queue_keyboardChangedWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)queue_keyboardTransition:(id)a3 event:(unint64_t)a4 withInfo:(id)a5 onComplete:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6);
  }
}

- (void)queue_applicationLostFocusWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)queue_getDebugInfoWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, &off_1000044C0);
  }
}

- (void)queue_keyboardSuppressed:(BOOL)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)queue_keyboardIAVChanged:(double)a3 onComplete:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, a3);
  }
}

- (void)queue_setKeyboardDisabled:(BOOL)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)queue_activeProcessResignWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)queue_keyboardUIDidChange:(id)a3 onComplete:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)queue_sceneBecameFocused:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)queue_setLastEventSource:(int64_t)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

@end