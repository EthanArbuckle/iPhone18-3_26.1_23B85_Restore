@interface SoftwareUpdatesStore
+ (id)defaultStore;
+ (void)hideAppstoredPendingUpdatesBadgeWithMessage:(id)message connection:(id)connection;
+ (void)observeXPCServer:(id)server;
+ (void)reloadAppstoredUpdatesWithMessage:(id)message connection:(id)connection;
- (SoftwareUpdatesStore)init;
@end

@implementation SoftwareUpdatesStore

- (SoftwareUpdatesStore)init
{
  v3.receiver = self;
  v3.super_class = SoftwareUpdatesStore;
  return [(SoftwareUpdatesStore *)&v3 init];
}

+ (id)defaultStore
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100234470;
  block[3] = &unk_100327170;
  block[4] = self;
  if (qword_1003841A0 != -1)
  {
    dispatch_once(&qword_1003841A0, block);
  }

  v2 = qword_100384198;

  return v2;
}

+ (void)hideAppstoredPendingUpdatesBadgeWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement())
  {

    +[AppStoreUtility hidePendingUpdatesBadge];
  }
}

+ (void)observeXPCServer:(id)server
{
  serverCopy = server;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  *v12 = 138412546;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 2112;
  *&v12[14] = serverCopy;
  v9 = *&v12[4];
  LODWORD(v11) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    oSLogObject = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v10);
    SSFileLog();
LABEL_11:
  }

  [serverCopy addObserver:self selector:"hideAppstoredPendingUpdatesBadgeWithMessage:connection:" forMessage:118];
  [serverCopy addObserver:self selector:"reloadAppstoredUpdatesWithMessage:connection:" forMessage:106];
}

+ (void)reloadAppstoredUpdatesWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100234784;
  v9[3] = &unk_10032CF60;
  connectionCopy = connection;
  selfCopy = self;
  v10 = messageCopy;
  v7 = connectionCopy;
  v8 = messageCopy;
  [AppStoreUtility reloadUpdatesWithCompletionBlock:v9];
}

@end