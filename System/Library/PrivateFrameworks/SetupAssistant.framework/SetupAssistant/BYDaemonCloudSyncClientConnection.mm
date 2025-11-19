@interface BYDaemonCloudSyncClientConnection
+ (id)daemonProtocolInterface;
- (BYDaemonCloudSyncClientConnection)initWithConnection:(id)a3;
- (void)cancelSync:(id)a3;
- (void)cloudSyncProgressUpdate:(int64_t)a3 completedClients:(int64_t)a4 errors:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)isSyncInProgress:(id)a3;
- (void)needsToSync:(id)a3;
- (void)startSync:(id)a3;
- (void)syncCompletedWithErrors:(id)a3;
- (void)syncProgress:(double)a3;
@end

@implementation BYDaemonCloudSyncClientConnection

+ (id)daemonProtocolInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BYDaemonCloudSyncProtocol];
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  [v2 setClasses:v4 forSelector:"cloudSyncProgressUpdate:completedClients:errors:completion:" argumentIndex:2 ofReply:0];

  return v2;
}

- (BYDaemonCloudSyncClientConnection)initWithConnection:(id)a3
{
  v6.receiver = self;
  v6.super_class = BYDaemonCloudSyncClientConnection;
  v3 = [(BYDaemonClientConnection *)&v6 initWithConnection:a3];
  if (v3)
  {
    v4 = +[BYDaemonCloudSyncController sharedController];
    [v4 addDelegate:v3];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[BYDaemonCloudSyncController sharedController];
  [v3 removeDelegate:self];

  v4.receiver = self;
  v4.super_class = BYDaemonCloudSyncClientConnection;
  [(BYDaemonCloudSyncClientConnection *)&v4 dealloc];
}

- (void)needsToSync:(id)a3
{
  v3 = a3;
  v4 = +[BYDaemonCloudSyncController sharedController];
  [v4 needsToSyncClasses:v3];
}

- (void)startSync:(id)a3
{
  v5 = a3;
  v3 = +[BYDaemonCloudSyncController sharedController];
  [v3 startSync];

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)cancelSync:(id)a3
{
  v5 = a3;
  v3 = +[BYDaemonCloudSyncController sharedController];
  [v3 cancelSync];

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)isSyncInProgress:(id)a3
{
  v3 = a3;
  v4 = +[BYDaemonCloudSyncController sharedController];
  [v4 isSyncInProgress:v3];
}

- (void)cloudSyncProgressUpdate:(int64_t)a3 completedClients:(int64_t)a4 errors:(id)a5 completion:(id)a6
{
  v12 = a6;
  v9 = a5;
  v10 = +[BYDaemonCloudSyncController sharedController];
  [v10 cloudSyncProgressUpdate:a3 completedClients:a4 errors:v9];

  v11 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12);
    v11 = v12;
  }
}

- (void)syncProgress:(double)a3
{
  v5 = [(BYDaemonClientConnection *)self connection];
  v4 = [v5 remoteObjectProxy];
  [v4 syncProgress:a3];
}

- (void)syncCompletedWithErrors:(id)a3
{
  v4 = a3;
  v6 = [(BYDaemonClientConnection *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 syncCompletedWithErrors:v4];
}

@end