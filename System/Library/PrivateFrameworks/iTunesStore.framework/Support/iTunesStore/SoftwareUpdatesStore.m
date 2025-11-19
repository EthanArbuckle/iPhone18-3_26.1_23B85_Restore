@interface SoftwareUpdatesStore
+ (id)defaultStore;
+ (void)hideAppstoredPendingUpdatesBadgeWithMessage:(id)a3 connection:(id)a4;
+ (void)observeXPCServer:(id)a3;
+ (void)reloadAppstoredUpdatesWithMessage:(id)a3 connection:(id)a4;
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
  block[4] = a1;
  if (qword_1003841A0 != -1)
  {
    dispatch_once(&qword_1003841A0, block);
  }

  v2 = qword_100384198;

  return v2;
}

+ (void)hideAppstoredPendingUpdatesBadgeWithMessage:(id)a3 connection:(id)a4
{
  if (SSXPCConnectionHasEntitlement())
  {

    +[AppStoreUtility hidePendingUpdatesBadge];
  }
}

+ (void)observeXPCServer:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
  *&v12[14] = v4;
  v9 = *&v12[4];
  LODWORD(v11) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v10);
    SSFileLog();
LABEL_11:
  }

  [v4 addObserver:a1 selector:"hideAppstoredPendingUpdatesBadgeWithMessage:connection:" forMessage:118];
  [v4 addObserver:a1 selector:"reloadAppstoredUpdatesWithMessage:connection:" forMessage:106];
}

+ (void)reloadAppstoredUpdatesWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100234784;
  v9[3] = &unk_10032CF60;
  v11 = a4;
  v12 = a1;
  v10 = v6;
  v7 = v11;
  v8 = v6;
  [AppStoreUtility reloadUpdatesWithCompletionBlock:v9];
}

@end