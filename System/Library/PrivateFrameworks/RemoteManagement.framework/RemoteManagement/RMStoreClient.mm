@interface RMStoreClient
- (RMStoreClient)initWithActivationEngine:(id)a3 statusEngine:(id)a4 storeIdentifier:(id)a5;
- (RMStoreClient)initWithManagementSourceObjectID:(id)a3 storeIdentifier:(id)a4 statusQuerier:(id)a5 persistentContainer:(id)a6;
- (void)_sendStatusData:(id)a3;
- (void)create;
- (void)remove;
- (void)start;
- (void)statusEngineHasUnacknowledgedSubscription:(id)a3;
- (void)syncWithCompletionHandler:(id)a3;
@end

@implementation RMStoreClient

- (RMStoreClient)initWithManagementSourceObjectID:(id)a3 storeIdentifier:(id)a4 statusQuerier:(id)a5 persistentContainer:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [v11 newBackgroundContext];
  [v14 setAutomaticallyMergesChangesFromParent:1];
  v15 = [NSString stringWithFormat:@"%@/%@", @"conduit", v10];
  [v14 setTransactionAuthor:v15];

  v16 = v10;
  v17 = [v11 newBackgroundContext];
  [v17 setAutomaticallyMergesChangesFromParent:1];
  v18 = [NSString stringWithFormat:@"%@/%@", @"engine", v16];

  [v17 setTransactionAuthor:v18];
  v19 = [[RMActivationEngine alloc] initWithManagementSourceObjectID:v13 context:v17];
  v20 = [[RMStatusEngine alloc] initWithManagementSourceObjectID:v13 statusQuerier:v12 inContext:v14];

  v21 = [(RMStoreClient *)self initWithActivationEngine:v19 statusEngine:v20 storeIdentifier:v16];
  return v21;
}

- (RMStoreClient)initWithActivationEngine:(id)a3 statusEngine:(id)a4 storeIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RMStoreClient;
  v12 = [(RMStoreClient *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activationEngine, a3);
    objc_storeStrong(&v13->_statusEngine, a4);
    objc_storeStrong(&v13->_storeIdentifier, a5);
  }

  return v13;
}

- (void)start
{
  v3 = [(RMStoreClient *)self statusEngine];
  [v3 setDelegate:self];

  v4 = [(RMStoreClient *)self statusEngine];
  [v4 start];

  [(RMStoreClient *)self _sendStatusOnlyIfNeeded:1];
  v5 = [(RMStoreClient *)self activationEngine];
  [v5 syncWithCompletionHandler:&stru_1000D2CB8];
}

- (void)create
{
  v3 = [(RMStoreClient *)self statusEngine];
  v9[0] = RMModelStatusItemManagementClientCapabilities;
  v9[1] = RMModelStatusItemManagementDeclarations;
  v4 = [NSArray arrayWithObjects:v9 count:2];
  v5 = [NSSet setWithArray:v4];
  [v3 implicitlySubscribeToStatusKeyPaths:v5];

  v6 = [(RMStoreClient *)self statusEngine];
  v7 = [v6 queryForUnacknowledgedStatusSubscriptions];

  v8 = [(RMStoreClient *)self statusEngine];
  [v8 acknowledgeStatusSubscriptions:v7];
}

- (void)remove
{
  v2 = [(RMStoreClient *)self activationEngine];
  [v2 removeReturningError:0];
}

- (void)syncWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RMStoreClient *)self activationEngine];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073A08;
  v7[3] = &unk_1000D2CE0;
  v8 = v4;
  v6 = v4;
  [v5 syncWithCompletionHandler:v7];
}

- (void)statusEngineHasUnacknowledgedSubscription:(id)a3
{
  v4 = +[RMLog storeClient];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100073DF0(v4);
  }

  [(RMStoreClient *)self _sendStatusOnlyIfNeeded:1];
}

- (void)_sendStatusData:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithData:v3 encoding:4];

  v5 = +[RMLog storeClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100073EEC();
  }
}

@end