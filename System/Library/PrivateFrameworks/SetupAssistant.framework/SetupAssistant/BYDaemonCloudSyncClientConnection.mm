@interface BYDaemonCloudSyncClientConnection
+ (id)daemonProtocolInterface;
- (BYDaemonCloudSyncClientConnection)initWithConnection:(id)connection;
- (void)cancelSync:(id)sync;
- (void)cloudSyncProgressUpdate:(int64_t)update completedClients:(int64_t)clients errors:(id)errors completion:(id)completion;
- (void)dealloc;
- (void)isSyncInProgress:(id)progress;
- (void)needsToSync:(id)sync;
- (void)startSync:(id)sync;
- (void)syncCompletedWithErrors:(id)errors;
- (void)syncProgress:(double)progress;
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

- (BYDaemonCloudSyncClientConnection)initWithConnection:(id)connection
{
  v6.receiver = self;
  v6.super_class = BYDaemonCloudSyncClientConnection;
  v3 = [(BYDaemonClientConnection *)&v6 initWithConnection:connection];
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

- (void)needsToSync:(id)sync
{
  syncCopy = sync;
  v4 = +[BYDaemonCloudSyncController sharedController];
  [v4 needsToSyncClasses:syncCopy];
}

- (void)startSync:(id)sync
{
  syncCopy = sync;
  v3 = +[BYDaemonCloudSyncController sharedController];
  [v3 startSync];

  v4 = syncCopy;
  if (syncCopy)
  {
    (*(syncCopy + 2))(syncCopy);
    v4 = syncCopy;
  }
}

- (void)cancelSync:(id)sync
{
  syncCopy = sync;
  v3 = +[BYDaemonCloudSyncController sharedController];
  [v3 cancelSync];

  v4 = syncCopy;
  if (syncCopy)
  {
    (*(syncCopy + 2))(syncCopy);
    v4 = syncCopy;
  }
}

- (void)isSyncInProgress:(id)progress
{
  progressCopy = progress;
  v4 = +[BYDaemonCloudSyncController sharedController];
  [v4 isSyncInProgress:progressCopy];
}

- (void)cloudSyncProgressUpdate:(int64_t)update completedClients:(int64_t)clients errors:(id)errors completion:(id)completion
{
  completionCopy = completion;
  errorsCopy = errors;
  v10 = +[BYDaemonCloudSyncController sharedController];
  [v10 cloudSyncProgressUpdate:update completedClients:clients errors:errorsCopy];

  v11 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v11 = completionCopy;
  }
}

- (void)syncProgress:(double)progress
{
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy syncProgress:progress];
}

- (void)syncCompletedWithErrors:(id)errors
{
  errorsCopy = errors;
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy syncCompletedWithErrors:errorsCopy];
}

@end