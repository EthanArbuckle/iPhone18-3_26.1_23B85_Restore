@interface RMStoreClient
- (RMStoreClient)initWithActivationEngine:(id)engine statusEngine:(id)statusEngine storeIdentifier:(id)identifier;
- (RMStoreClient)initWithManagementSourceObjectID:(id)d storeIdentifier:(id)identifier statusQuerier:(id)querier persistentContainer:(id)container;
- (void)_sendStatusData:(id)data;
- (void)create;
- (void)remove;
- (void)start;
- (void)statusEngineHasUnacknowledgedSubscription:(id)subscription;
- (void)syncWithCompletionHandler:(id)handler;
@end

@implementation RMStoreClient

- (RMStoreClient)initWithManagementSourceObjectID:(id)d storeIdentifier:(id)identifier statusQuerier:(id)querier persistentContainer:(id)container
{
  identifierCopy = identifier;
  containerCopy = container;
  querierCopy = querier;
  dCopy = d;
  newBackgroundContext = [containerCopy newBackgroundContext];
  [newBackgroundContext setAutomaticallyMergesChangesFromParent:1];
  identifierCopy = [NSString stringWithFormat:@"%@/%@", @"conduit", identifierCopy];
  [newBackgroundContext setTransactionAuthor:identifierCopy];

  v16 = identifierCopy;
  newBackgroundContext2 = [containerCopy newBackgroundContext];
  [newBackgroundContext2 setAutomaticallyMergesChangesFromParent:1];
  v18 = [NSString stringWithFormat:@"%@/%@", @"engine", v16];

  [newBackgroundContext2 setTransactionAuthor:v18];
  v19 = [[RMActivationEngine alloc] initWithManagementSourceObjectID:dCopy context:newBackgroundContext2];
  v20 = [[RMStatusEngine alloc] initWithManagementSourceObjectID:dCopy statusQuerier:querierCopy inContext:newBackgroundContext];

  v21 = [(RMStoreClient *)self initWithActivationEngine:v19 statusEngine:v20 storeIdentifier:v16];
  return v21;
}

- (RMStoreClient)initWithActivationEngine:(id)engine statusEngine:(id)statusEngine storeIdentifier:(id)identifier
{
  engineCopy = engine;
  statusEngineCopy = statusEngine;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = RMStoreClient;
  v12 = [(RMStoreClient *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activationEngine, engine);
    objc_storeStrong(&v13->_statusEngine, statusEngine);
    objc_storeStrong(&v13->_storeIdentifier, identifier);
  }

  return v13;
}

- (void)start
{
  statusEngine = [(RMStoreClient *)self statusEngine];
  [statusEngine setDelegate:self];

  statusEngine2 = [(RMStoreClient *)self statusEngine];
  [statusEngine2 start];

  [(RMStoreClient *)self _sendStatusOnlyIfNeeded:1];
  activationEngine = [(RMStoreClient *)self activationEngine];
  [activationEngine syncWithCompletionHandler:&stru_1000D2CB8];
}

- (void)create
{
  statusEngine = [(RMStoreClient *)self statusEngine];
  v9[0] = RMModelStatusItemManagementClientCapabilities;
  v9[1] = RMModelStatusItemManagementDeclarations;
  v4 = [NSArray arrayWithObjects:v9 count:2];
  v5 = [NSSet setWithArray:v4];
  [statusEngine implicitlySubscribeToStatusKeyPaths:v5];

  statusEngine2 = [(RMStoreClient *)self statusEngine];
  queryForUnacknowledgedStatusSubscriptions = [statusEngine2 queryForUnacknowledgedStatusSubscriptions];

  statusEngine3 = [(RMStoreClient *)self statusEngine];
  [statusEngine3 acknowledgeStatusSubscriptions:queryForUnacknowledgedStatusSubscriptions];
}

- (void)remove
{
  activationEngine = [(RMStoreClient *)self activationEngine];
  [activationEngine removeReturningError:0];
}

- (void)syncWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  activationEngine = [(RMStoreClient *)self activationEngine];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073A08;
  v7[3] = &unk_1000D2CE0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [activationEngine syncWithCompletionHandler:v7];
}

- (void)statusEngineHasUnacknowledgedSubscription:(id)subscription
{
  v4 = +[RMLog storeClient];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100073DF0(v4);
  }

  [(RMStoreClient *)self _sendStatusOnlyIfNeeded:1];
}

- (void)_sendStatusData:(id)data
{
  dataCopy = data;
  v4 = [[NSString alloc] initWithData:dataCopy encoding:4];

  v5 = +[RMLog storeClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100073EEC();
  }
}

@end