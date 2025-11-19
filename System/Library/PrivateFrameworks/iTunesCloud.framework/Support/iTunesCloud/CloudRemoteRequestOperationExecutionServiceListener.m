@interface CloudRemoteRequestOperationExecutionServiceListener
+ (CloudRemoteRequestOperationExecutionServiceListener)sharedRemoteRequestOperationExecutionServiceListener;
- (BOOL)isActive;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_init;
- (void)dealloc;
- (void)performRemoteRequestOperationWithExecutionContext:(id)a3 completionHandler:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation CloudRemoteRequestOperationExecutionServiceListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  [v5 setExportedObject:self];
  v6 = +[ICRemoteRequestOperationExecuting serviceInterface];
  [v5 setExportedInterface:v6];

  v7 = +[ICRemoteRequestOperationExecuting clientInterface];
  [v5 setRemoteObjectInterface:v7];

  [v5 resume];
  return 1;
}

- (void)performRemoteRequestOperationWithExecutionContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 remoteRequestOperation];
  [v7 _setShadowOperationForRemoteExecution:1];
  v8 = [v6 qualityOfService];

  v9 = [NSOperationQueue ic_sharedRequestOperationQueueWithQualityOfService:v8];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001007C0;
  v12[3] = &unk_1001DFC28;
  v13 = v7;
  v14 = v5;
  v10 = v5;
  v11 = v7;
  [v11 performRequestOnOperationQueue:v9 withCompletionHandler:v12];
}

- (void)stop
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001008F0;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (void)start
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001009C4;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (BOOL)isActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100100ACC;
  v5[3] = &unk_1001DEF50;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)dealloc
{
  [(CloudRemoteRequestOperationExecutionServiceListener *)self stop];
  v3.receiver = self;
  v3.super_class = CloudRemoteRequestOperationExecutionServiceListener;
  [(CloudRemoteRequestOperationExecutionServiceListener *)&v3 dealloc];
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = CloudRemoteRequestOperationExecutionServiceListener;
  v2 = [(CloudRemoteRequestOperationExecutionServiceListener *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunescloudd.CloudRemoteRequestOperationExecutionServiceListener.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = [NSXPCListener alloc];
    v6 = +[ICRemoteRequestOperationExecuting machServiceName];
    v7 = [v5 initWithMachServiceName:v6];
    serviceListener = v2->_serviceListener;
    v2->_serviceListener = v7;
  }

  return v2;
}

+ (CloudRemoteRequestOperationExecutionServiceListener)sharedRemoteRequestOperationExecutionServiceListener
{
  if (qword_100213DB8 != -1)
  {
    dispatch_once(&qword_100213DB8, &stru_1001DE340);
  }

  v3 = qword_100213DB0;

  return v3;
}

@end