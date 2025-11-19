@interface TILexiconServer
+ (id)sharedLexiconServer;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (TILexiconServer)init;
- (void)dealloc;
@end

@implementation TILexiconServer

+ (id)sharedLexiconServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007900;
  block[3] = &unk_10001C810;
  block[4] = a1;
  if (qword_1000265C8 != -1)
  {
    dispatch_once(&qword_1000265C8, block);
  }

  v2 = qword_1000265C0;

  return v2;
}

- (TILexiconServer)init
{
  v10.receiver = self;
  v10.super_class = TILexiconServer;
  v2 = [(TILexiconServer *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.lexicon-server", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = [NSXPCListener alloc];
    v7 = [v6 initWithMachServiceName:TILexiconServiceName];
    listener = v2->_listener;
    v2->_listener = v7;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener _setQueue:v2->_dispatchQueue];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = TILexiconServer;
  [(TILexiconServer *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 _xpcConnection];
  v7 = xpc_connection_copy_bundle_id();

  if (v7)
  {
    v8 = [NSString stringWithUTF8String:v7];
    free(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc_init(TILexiconDataHandler);
  [(TILexiconDataHandler *)v9 setBundleID:v8];
  [v5 setExportedObject:v9];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TILexiconRequestHandler];
  [v5 setExportedInterface:v10];

  v11 = [(TILexiconServer *)self dispatchQueue];
  [v5 _setQueue:v11];

  [v5 resume];
  return 1;
}

@end