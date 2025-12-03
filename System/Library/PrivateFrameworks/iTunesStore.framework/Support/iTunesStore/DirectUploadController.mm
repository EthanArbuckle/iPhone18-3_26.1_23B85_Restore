@interface DirectUploadController
+ (BOOL)_isConnectionEntitled:(id)entitled;
+ (id)_copyPersistentIdentifiersArrayWithXPCArray:(id)array;
+ (id)_orderedPostQueryWithDatabase:(id)database predicate:(id)predicate;
+ (id)_orderedUploadQueryWithDatabase:(id)database predicate:(id)predicate;
+ (id)sharedController;
+ (void)_sendAccessDeniedErrorWithMessage:(id)message connection:(id)connection;
+ (void)_setupDatabase:(id)database;
+ (void)cancelUploadsWithMessage:(id)message connection:(id)connection;
+ (void)getUploadsWithMessage:(id)message connection:(id)connection;
+ (void)observeXPCServer:(id)server;
+ (void)pauseUploadsWithMessage:(id)message connection:(id)connection;
+ (void)registerObserverWithMessage:(id)message connection:(id)connection;
+ (void)resumeUploadsWithMessage:(id)message connection:(id)connection;
- (BOOL)_cancelUploadsWithPredicate:(id)predicate clientIdentifier:(id)identifier error:(id *)error;
- (BOOL)_pauseUploadsWithPredicate:(id)predicate clientIdentifier:(id)identifier error:(id *)error;
- (BOOL)_resumeUploadsWithPredicate:(id)predicate clientIdentifier:(id)identifier resetFailureCount:(BOOL)count error:(id *)error;
- (DirectUploadController)init;
- (id)_authenticationCoordinator;
- (id)_database;
- (id)_databaseIfExists;
- (id)_errorCoordinator;
- (id)_newAddUploadsMessageWithDatabase:(id)database hydratedUploadIDs:(id)ds;
- (id)_newSSVDirectUploadWithProgress:(id)progress state:(int64_t)state;
- (id)_pollingCoordinator;
- (id)_postOperationQueue;
- (id)_sessionController;
- (void)_cleanupPendingUploads:(id)uploads database:(id)database;
- (void)_cleanupSessionController;
- (void)_clientDisconnectNotification:(id)notification;
- (void)_enqueueNextReadyMediaSocialPostOperationWithDatabase:(id)database;
- (void)_enumerateSSVDirectUploadsWithQuery:(id)query block:(id)block;
- (void)_finishPostWithPostIdentifier:(int64_t)identifier response:(id)response;
- (void)_handleMessage:(id)message connection:(id)connection usingBlock:(id)block;
- (void)_handleMessage:(id)message connection:(id)connection usingReplyBlock:(id)block;
- (void)_operationDidFinishForPostIdentifier:(int64_t)identifier response:(id)response;
- (void)_registerObserverWithMessage:(id)message connection:(id)connection;
- (void)_retryFailedEntities;
- (void)_sendChangeUploadsMessageWithUploads:(id)uploads;
- (void)_sendRemoveUploadsMessageWithUploadIdentifiers:(id)identifiers;
- (void)addMediaSocialPostWithDescription:(id)description client:(id)client;
- (void)authenticationCoordinator:(id)coordinator didFinishAuthenticationWithResponse:(id)response;
- (void)dealloc;
- (void)mediaSocialErrorCoordinator:(id)coordinator didFinishWithResult:(int64_t)result;
- (void)pollingCoordinator:(id)coordinator didPollWithResponses:(id)responses;
- (void)start;
- (void)uploadSessionController:(id)controller uploadDidBeginTransferWithDatabaseID:(int64_t)d;
- (void)uploadSessionController:(id)controller uploadDidFailWithDatabaseID:(int64_t)d error:(id)error;
- (void)uploadSessionController:(id)controller uploadDidFinishWithDatabaseID:(int64_t)d response:(id)response;
- (void)uploadSessionController:(id)controller uploadProgressDidChange:(id)change;
@end

@implementation DirectUploadController

- (DirectUploadController)init
{
  v6.receiver = self;
  v6.super_class = DirectUploadController;
  v2 = [(DirectUploadController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.DirectUploadController", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"XPCClientDisconnectNotification" object:0];
  if (self->_backgroundTaskObserver)
  {
    v4 = +[Daemon daemon];
    [v4 removeBackgroundTaskObserver:self->_backgroundTaskObserver];
  }

  [(MediaSocialAuthenticationCoordinator *)self->_authenticationCoordinator setDelegate:0];
  [(MediaSocialErrorCoordinator *)self->_errorCoordinator setDelegate:0];
  [(MediaSocialStatusPollingCoordinator *)self->_pollingCoordinator setDelegate:0];
  [(DirectUploadSessionController *)self->_sessionController setDelegate:0];

  v5.receiver = self;
  v5.super_class = DirectUploadController;
  [(DirectUploadController *)&v5 dealloc];
}

+ (id)sharedController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7C04;
  block[3] = &unk_100327170;
  block[4] = self;
  if (qword_100383E98 != -1)
  {
    dispatch_once(&qword_100383E98, block);
  }

  v2 = qword_100383E90;

  return v2;
}

- (void)addMediaSocialPostWithDescription:(id)description client:(id)client
{
  descriptionCopy = description;
  clientCopy = client;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7D04;
  block[3] = &unk_1003281A0;
  v12 = clientCopy;
  selfCopy = self;
  v14 = descriptionCopy;
  v9 = descriptionCopy;
  v10 = clientCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = +[Daemon daemon];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D8630;
  v8[3] = &unk_100328418;
  objc_copyWeak(&v9, &location);
  v4 = [v3 addObserverForBackgroundTaskWithIdentifierPrefix:@"com.apple.itunesstored.DirectUploadController.retry" withBlock:v8];
  backgroundTaskObserver = self->_backgroundTaskObserver;
  self->_backgroundTaskObserver = v4;

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D86D4;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

+ (void)cancelUploadsWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  if ([self _isConnectionEntitled:connectionCopy])
  {
    v8 = SSXPCConnectionCopyClientIdentifier();
    sharedController = [self sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000D89E0;
    v12[3] = &unk_100328468;
    v13 = messageCopy;
    v14 = sharedController;
    v15 = v8;
    selfCopy = self;
    v10 = v8;
    v11 = sharedController;
    [v11 _handleMessage:v13 connection:connectionCopy usingReplyBlock:v12];
  }

  else
  {
    [self _sendAccessDeniedErrorWithMessage:messageCopy connection:connectionCopy];
  }
}

+ (void)getUploadsWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  if ([self _isConnectionEntitled:connectionCopy])
  {
    [self sharedController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D8D48;
    v10 = v9[3] = &unk_1003284E0;
    selfCopy = self;
    v8 = v10;
    [v8 _handleMessage:messageCopy connection:connectionCopy usingReplyBlock:v9];
  }

  else
  {
    [self _sendAccessDeniedErrorWithMessage:messageCopy connection:connectionCopy];
  }
}

+ (void)observeXPCServer:(id)server
{
  serverCopy = server;
  [serverCopy addObserver:self selector:"cancelUploadsWithMessage:connection:" forMessage:154];
  [serverCopy addObserver:self selector:"getUploadsWithMessage:connection:" forMessage:155];
  [serverCopy addObserver:self selector:"pauseUploadsWithMessage:connection:" forMessage:156];
  [serverCopy addObserver:self selector:"registerObserverWithMessage:connection:" forMessage:157];
  [serverCopy addObserver:self selector:"resumeUploadsWithMessage:connection:" forMessage:158];
}

+ (void)pauseUploadsWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  if ([self _isConnectionEntitled:connectionCopy])
  {
    v8 = SSXPCConnectionCopyClientIdentifier();
    sharedController = [self sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000D9104;
    v12[3] = &unk_100328468;
    v13 = messageCopy;
    v14 = sharedController;
    v15 = v8;
    selfCopy = self;
    v10 = v8;
    v11 = sharedController;
    [v11 _handleMessage:v13 connection:connectionCopy usingReplyBlock:v12];
  }

  else
  {
    [self _sendAccessDeniedErrorWithMessage:messageCopy connection:connectionCopy];
  }
}

+ (void)registerObserverWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  if ([self _isConnectionEntitled:connectionCopy])
  {
    [self sharedController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D9434;
    v10 = v9[3] = &unk_1003281A0;
    v11 = messageCopy;
    v12 = connectionCopy;
    v8 = v10;
    [v8 _handleMessage:v11 connection:v12 usingBlock:v9];
  }

  else
  {
    [self _sendAccessDeniedErrorWithMessage:messageCopy connection:connectionCopy];
  }
}

+ (void)resumeUploadsWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  if ([self _isConnectionEntitled:connectionCopy])
  {
    v8 = SSXPCConnectionCopyClientIdentifier();
    sharedController = [self sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000D9570;
    v12[3] = &unk_100328468;
    v13 = messageCopy;
    v14 = sharedController;
    v15 = v8;
    selfCopy = self;
    v10 = v8;
    v11 = sharedController;
    [v11 _handleMessage:v13 connection:connectionCopy usingReplyBlock:v12];
  }

  else
  {
    [self _sendAccessDeniedErrorWithMessage:messageCopy connection:connectionCopy];
  }
}

- (void)uploadSessionController:(id)controller uploadDidBeginTransferWithDatabaseID:(int64_t)d
{
  [(DirectUploadController *)self _database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D98C4;
  v11[3] = &unk_100328508;
  v6 = v13 = d;
  v12 = v6;
  [v6 performTransactionWithBlock:v11];
  if ([(NSMutableArray *)self->_clients count])
  {
    v7 = [[NSNumber alloc] initWithLongLong:d];
    v8 = [(NSMutableDictionary *)self->_progressDictionary objectForKey:v7];
    v9 = [(DirectUploadController *)self _newSSVDirectUploadWithProgress:v8 state:1];
    [v9 setPersistentIdentifier:d];
    v10 = [[NSArray alloc] initWithObjects:{v9, 0}];
    [(DirectUploadController *)self _sendChangeUploadsMessageWithUploads:v10];
  }
}

- (void)uploadSessionController:(id)controller uploadDidFailWithDatabaseID:(int64_t)d error:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1000D8008;
  v34 = sub_1000D8018;
  v35 = 0;
  IsEqual = ISErrorIsEqual();
  [(DirectUploadController *)self _database];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000D9BC8;
  v22 = &unk_100328530;
  v11 = v28 = d;
  v23 = v11;
  v12 = errorCopy;
  v24 = v12;
  selfCopy = self;
  v29 = IsEqual;
  v26 = &v30;
  v27 = &v36;
  [v11 performTransactionWithBlock:&v19];
  if (IsEqual)
  {
    _authenticationCoordinator = [(DirectUploadController *)self _authenticationCoordinator];
    [_authenticationCoordinator authenticateForUploadWithIdentifier:d accountIdentifier:v31[5]];
  }

  else if (*(v37 + 24) == 1)
  {
    [(DirectUploadController *)self _scheduleDelayedRetry];
  }

  if ([(NSMutableArray *)self->_clients count])
  {
    v14 = [[NSNumber alloc] initWithLongLong:d];
    v15 = [(NSMutableDictionary *)self->_progressDictionary objectForKey:v14];
    v16 = [(DirectUploadController *)self _newSSVDirectUploadWithProgress:v15 state:4];
    [v16 setError:v12];
    [v16 setPersistentIdentifier:d];
    v17 = [NSArray alloc];
    v18 = [v17 initWithObjects:{v16, 0, v19, v20, v21, v22, v23}];
    [(DirectUploadController *)self _sendChangeUploadsMessageWithUploads:v18];
  }

  [(DirectUploadController *)self _cleanupSessionController];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
}

- (void)uploadSessionController:(id)controller uploadDidFinishWithDatabaseID:(int64_t)d response:(id)response
{
  responseCopy = response;
  [(DirectUploadController *)self _database];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D9FC4;
  v15[3] = &unk_1003284B8;
  v8 = v19 = d;
  v16 = v8;
  v9 = responseCopy;
  v17 = v9;
  selfCopy = self;
  [v8 performTransactionWithBlock:v15];
  countOfBytesSent = [v9 countOfBytesSent];
  v11 = objc_alloc_init(DirectUploadProgress);
  [(DirectUploadProgress *)v11 setCountOfBytesExpectedToSend:countOfBytesSent];
  [(DirectUploadProgress *)v11 setCountOfBytesSent:countOfBytesSent];
  [(DirectUploadProgress *)v11 setUploadDatabaseIdentifier:d];
  v12 = [[NSNumber alloc] initWithLongLong:d];
  [(NSMutableDictionary *)self->_progressDictionary setObject:v11 forKey:v12];
  if ([(NSMutableArray *)self->_clients count])
  {
    v13 = [(DirectUploadController *)self _newSSVDirectUploadWithProgress:v11 state:2];
    v14 = [[NSArray alloc] initWithObjects:{v13, 0}];
    [(DirectUploadController *)self _sendChangeUploadsMessageWithUploads:v14];
  }

  [(DirectUploadController *)self _cleanupSessionController];
}

- (void)uploadSessionController:(id)controller uploadProgressDidChange:(id)change
{
  changeCopy = change;
  if ([(NSMutableArray *)self->_clients count])
  {
    v6 = objc_alloc_init(NSMutableArray);
  }

  else
  {
    v6 = 0;
  }

  if (!self->_progressDictionary)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    progressDictionary = self->_progressDictionary;
    self->_progressDictionary = v7;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = changeCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v14, "uploadDatabaseIdentifier", v17)}];
        [(NSMutableDictionary *)self->_progressDictionary setObject:v14 forKey:v15];
        if (v6)
        {
          v16 = [(DirectUploadController *)self _newSSVDirectUploadWithProgress:v14 state:1];
          [v6 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(DirectUploadController *)self _sendChangeUploadsMessageWithUploads:v6];
}

- (void)authenticationCoordinator:(id)coordinator didFinishAuthenticationWithResponse:(id)response
{
  coordinatorCopy = coordinator;
  responseCopy = response;
  authenticateResponse = [responseCopy authenticateResponse];
  authenticatedAccount = [authenticateResponse authenticatedAccount];
  uniqueIdentifier = [authenticatedAccount uniqueIdentifier];

  accountIdentifier = [responseCopy accountIdentifier];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  _database = [(DirectUploadController *)self _database];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000DA3A8;
  v21 = &unk_100328580;
  v13 = accountIdentifier;
  v22 = v13;
  v14 = _database;
  v23 = v14;
  v15 = uniqueIdentifier;
  v24 = v15;
  selfCopy = self;
  v16 = authenticateResponse;
  v26 = v16;
  v27 = &v28;
  [v14 performTransactionWithBlock:&v18];
  if ([(MediaSocialAuthenticationCoordinator *)self->_authenticationCoordinator isFinished:v18])
  {
    [(MediaSocialAuthenticationCoordinator *)self->_authenticationCoordinator setDelegate:0];
    authenticationCoordinator = self->_authenticationCoordinator;
    self->_authenticationCoordinator = 0;
  }

  if (*(v29 + 24) == 1)
  {
    [(DirectUploadController *)self _scheduleDelayedRetry];
  }

  _Block_object_dispose(&v28, 8);
}

- (void)mediaSocialErrorCoordinator:(id)coordinator didFinishWithResult:(int64_t)result
{
  coordinatorCopy = coordinator;
  postIdentifiers = [coordinatorCopy postIdentifiers];
  uploadIdentifiers = [coordinatorCopy uploadIdentifiers];

  if (result == 1)
  {
    _database = [(DirectUploadController *)self _database];
    v10 = &v14;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v11 = sub_1000DB20C;
    goto LABEL_5;
  }

  if (!result)
  {
    _database = [(DirectUploadController *)self _database];
    v10 = v16;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v11 = sub_1000DAB94;
LABEL_5:
    v10[2] = v11;
    v10[3] = &unk_1003285A8;
    v10[4] = postIdentifiers;
    v10[5] = &self->super.isa;
    v10[6] = _database;
    v10[7] = uploadIdentifiers;
    v12 = _database;
    [v12 performTransactionWithBlock:v10];
  }

  [(MediaSocialErrorCoordinator *)self->_errorCoordinator setDelegate:0, v14, v15];
  errorCoordinator = self->_errorCoordinator;
  self->_errorCoordinator = 0;
}

- (void)pollingCoordinator:(id)coordinator didPollWithResponses:(id)responses
{
  coordinatorCopy = coordinator;
  responsesCopy = responses;
  v8 = objc_alloc_init(NSMutableArray);
  _database = [(DirectUploadController *)self _database];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000DB858;
  v23[3] = &unk_1003285D0;
  v10 = responsesCopy;
  v24 = v10;
  v11 = v8;
  v25 = v11;
  v12 = _database;
  v26 = v12;
  [v12 performTransactionWithBlock:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        -[DirectUploadController _finishPostWithPostIdentifier:response:](self, "_finishPostWithPostIdentifier:response:", [*(*(&v19 + 1) + 8 * v17) postIdentifier], *(*(&v19 + 1) + 8 * v17));
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  if (![coordinatorCopy numberOfPollRequests])
  {
    [(MediaSocialStatusPollingCoordinator *)self->_pollingCoordinator setDelegate:0];
    pollingCoordinator = self->_pollingCoordinator;
    self->_pollingCoordinator = 0;
  }
}

- (void)_clientDisconnectNotification:(id)notification
{
  object = [notification object];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DBA60;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = object;
  v6 = object;
  dispatch_async(dispatchQueue, v7);
}

+ (id)_copyPersistentIdentifiersArrayWithXPCArray:(id)array
{
  arrayCopy = array;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1000DBD50;
  applier[3] = &unk_100328088;
  v4 = objc_alloc_init(NSMutableArray);
  v7 = v4;
  xpc_array_apply(arrayCopy, applier);

  return v4;
}

+ (BOOL)_isConnectionEntitled:(id)entitled
{
  entitledCopy = entitled;
  if (SSXPCConnectionHasEntitlement())
  {
    HasEntitlement = 1;
  }

  else
  {
    HasEntitlement = SSXPCConnectionHasEntitlement();
  }

  return HasEntitlement;
}

+ (id)_orderedPostQueryWithDatabase:(id)database predicate:(id)predicate
{
  v10 = @"creation_time";
  predicateCopy = predicate;
  databaseCopy = database;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [MediaSocialPostEntity queryWithDatabase:databaseCopy predicate:predicateCopy orderingProperties:v7, v10];

  return v8;
}

+ (id)_orderedUploadQueryWithDatabase:(id)database predicate:(id)predicate
{
  v10 = @"creation_time";
  predicateCopy = predicate;
  databaseCopy = database;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [DirectUploadEntity queryWithDatabase:databaseCopy predicate:predicateCopy orderingProperties:v7, v10];

  return v8;
}

+ (void)_sendAccessDeniedErrorWithMessage:(id)message connection:(id)connection
{
  connectionCopy = connection;
  reply = xpc_dictionary_create_reply(message);
  if (!reply)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      LODWORD(v14) = 138412290;
      *(&v14 + 4) = objc_opt_class();
      v11 = *(&v14 + 4);
      LODWORD(v13) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, &v14, v13, v14];
      free(v12);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v7 = SSError();
  SSXPCDictionarySetObject();
  xpc_connection_send_message(connectionCopy, reply);
LABEL_14:
}

+ (void)_setupDatabase:(id)database
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000DC284;
  v4[3] = &unk_1003270E8;
  databaseCopy = database;
  v3 = databaseCopy;
  [v3 performTransactionWithBlock:v4];
}

- (id)_authenticationCoordinator
{
  authenticationCoordinator = self->_authenticationCoordinator;
  if (!authenticationCoordinator)
  {
    v4 = [[MediaSocialAuthenticationCoordinator alloc] initWithDispatchQueue:self->_dispatchQueue];
    v5 = self->_authenticationCoordinator;
    self->_authenticationCoordinator = v4;

    [(MediaSocialAuthenticationCoordinator *)self->_authenticationCoordinator setDelegate:self];
    authenticationCoordinator = self->_authenticationCoordinator;
  }

  return authenticationCoordinator;
}

- (BOOL)_cancelUploadsWithPredicate:(id)predicate clientIdentifier:(id)identifier error:(id *)error
{
  predicateCopy = predicate;
  identifierCopy = identifier;
  v9 = objc_alloc_init(NSMutableArray);
  [(DirectUploadController *)self _database];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000DC544;
  v10 = v25[3] = &unk_100328620;
  v26 = v10;
  v11 = predicateCopy;
  v27 = v11;
  selfCopy = self;
  v12 = identifierCopy;
  v29 = v12;
  v13 = v9;
  v30 = v13;
  [v10 performTransactionWithBlock:v25];
  if ([v13 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(NSMutableDictionary *)self->_progressDictionary removeObjectForKey:*(*(&v21 + 1) + 8 * v18), v21];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v16);
    }

    _sessionController = [(DirectUploadController *)self _sessionController];
    [_sessionController cancelUploadTasksWithDatabaseIdentifiers:v14];

    [(DirectUploadController *)self _sendRemoveUploadsMessageWithUploadIdentifiers:v14];
  }

  return 1;
}

- (void)_cleanupSessionController
{
  if (![(DirectUploadSessionController *)self->_sessionController numberOfTasks])
  {
    [(DirectUploadSessionController *)self->_sessionController setDelegate:0];
    [(DirectUploadSessionController *)self->_sessionController invalidURLSessions];
    sessionController = self->_sessionController;
    self->_sessionController = 0;
  }
}

- (void)_cleanupPendingUploads:(id)uploads database:(id)database
{
  uploadsCopy = uploads;
  databaseCopy = database;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v71 = @"creation_time";
  v10 = [NSArray arrayWithObjects:&v71 count:1];
  v53 = uploadsCopy;
  v11 = [DirectUploadEntity queryWithDatabase:databaseCopy predicate:uploadsCopy orderingProperties:v10];

  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_1000DCF9C;
  v61[3] = &unk_100328648;
  v12 = databaseCopy;
  v62 = v12;
  v13 = v8;
  v63 = v13;
  selfCopy = self;
  v14 = v9;
  v65 = v14;
  [v11 enumeratePersistentIDsUsingBlock:v61];
  v15 = &CFDictionaryGetValue_ptr;
  if ([v13 count])
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = shouldLog | 2;
    }

    else
    {
      v18 = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v21 = v14;
      v22 = objc_opt_class();
      obja = v22;
      v23 = [v13 count];
      v67 = 138412546;
      v68 = v22;
      v14 = v21;
      v15 = &CFDictionaryGetValue_ptr;
      v69 = 2048;
      v70 = v23;
      LODWORD(v48) = 22;
      v46 = &v67;
      v24 = _os_log_send_and_compose_impl();

      if (!v24)
      {
LABEL_14:

        [(DirectUploadController *)self _sendRemoveUploadsMessageWithUploadIdentifiers:v13];
        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v24 encoding:4, &v67, v48];
      free(v24);
      v46 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  v25 = v53;
  if ([v14 count])
  {
    v50 = v13;
    v51 = v12;
    v52 = v11;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v49 = v14;
    obj = v14;
    v26 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (!v26)
    {
      goto LABEL_37;
    }

    v27 = v26;
    v28 = *v58;
    while (1)
    {
      v29 = 0;
      v54 = v27;
      do
      {
        if (*v58 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v57 + 1) + 8 * v29);
        activityIdentifier = [v30 activityIdentifier];
        v32 = [activityIdentifier length];

        if (v32)
        {
          sharedDaemonConfig = [v15[412] sharedDaemonConfig];
          if (!sharedDaemonConfig)
          {
            sharedDaemonConfig = [v15[412] sharedConfig];
          }

          shouldLog2 = [sharedDaemonConfig shouldLog];
          if ([sharedDaemonConfig shouldLogToDisk])
          {
            v35 = shouldLog2 | 2;
          }

          else
          {
            v35 = shouldLog2;
          }

          oSLogObject2 = [sharedDaemonConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
          {
            v37 = v35;
          }

          else
          {
            v37 = v35 & 2;
          }

          if (v37)
          {
            v38 = objc_opt_class();
            v39 = v28;
            v40 = v15;
            selfCopy2 = self;
            v42 = v38;
            postIdentifier = [v30 postIdentifier];
            v67 = 138412546;
            v68 = v38;
            v69 = 2048;
            v70 = postIdentifier;
            LODWORD(v48) = 22;
            v47 = &v67;
            v44 = _os_log_send_and_compose_impl();

            self = selfCopy2;
            v15 = v40;
            v28 = v39;
            v27 = v54;

            if (v44)
            {
              oSLogObject2 = [NSString stringWithCString:v44 encoding:4, &v67, v48];
              free(v44);
              v47 = oSLogObject2;
              SSFileLog();
              goto LABEL_33;
            }
          }

          else
          {
LABEL_33:
          }

          _pollingCoordinator = [(DirectUploadController *)self _pollingCoordinator];
          [_pollingCoordinator addPollRequest:v30];
        }

        v29 = v29 + 1;
      }

      while (v27 != v29);
      v27 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (!v27)
      {
LABEL_37:

        v11 = v52;
        v25 = v53;
        v13 = v50;
        v12 = v51;
        v14 = v49;
        break;
      }
    }
  }
}

- (id)_database
{
  database = self->_database;
  if (!database)
  {
    v4 = +[DirectUploadDatabaseSchema databasePath];
    v5 = objc_alloc_init(NSFileManager);
    stringByDeletingLastPathComponent = [v4 stringByDeletingLastPathComponent];
    [v5 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

    v7 = [[NSURL alloc] initFileURLWithPath:v4 isDirectory:0];
    v8 = [[SSSQLiteDatabase alloc] initWithDatabaseURL:v7 readOnly:0 protectionType:NSFileProtectionCompleteUntilFirstUserAuthentication];
    v9 = self->_database;
    self->_database = v8;

    [(SSSQLiteDatabase *)self->_database setSetupBlock:&stru_100328668];
    database = self->_database;
  }

  return database;
}

- (id)_databaseIfExists
{
  database = self->_database;
  if (database)
  {
    _database = database;
  }

  else
  {
    v5 = objc_alloc_init(NSFileManager);
    v6 = +[DirectUploadDatabaseSchema databasePath];
    v7 = [v5 fileExistsAtPath:v6 isDirectory:0];

    _database = 0;
    if (v7)
    {
      _database = [(DirectUploadController *)self _database];
    }
  }

  return _database;
}

- (void)_enqueueNextReadyMediaSocialPostOperationWithDatabase:(id)database
{
  databaseCopy = database;
  val = self;
  _postOperationQueue = [(DirectUploadController *)self _postOperationQueue];
  if (![_postOperationQueue operationCount])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_1000D8008;
    v39 = sub_1000D8018;
    v40 = objc_opt_new();
    v5 = [objc_opt_class() _orderedPostQueryWithDatabase:databaseCopy predicate:0];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000DD8F0;
    v32[3] = &unk_100328690;
    v33 = databaseCopy;
    v34 = &v35;
    [v5 enumeratePersistentIDsUsingBlock:v32];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v36[5];
    v6 = [obj countByEnumeratingWithState:&v28 objects:v42 count:16];
    if (v6)
    {
      v20 = *v29;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v28 + 1) + 8 * i);
          persistentID = [v8 persistentID];
          operations = [_postOperationQueue operations];
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = operations;
          v12 = [(MediaSocialPostOperation *)v11 countByEnumeratingWithState:&v24 objects:v41 count:16];
          v13 = v5;
          if (v12)
          {
            v14 = *v25;
            while (2)
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                if ([*(*(&v24 + 1) + 8 * j) postID] == persistentID)
                {
                  v16 = v11;
                  v5 = v13;
                  goto LABEL_17;
                }
              }

              v12 = [(MediaSocialPostOperation *)v11 countByEnumeratingWithState:&v24 objects:v41 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          v5 = v13;
          v16 = [[MediaSocialPostOperation alloc] initWithPostEntity:v8];
          objc_initWeak(&location, val);
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1000DD968;
          v21[3] = &unk_1003286E0;
          objc_copyWeak(v22, &location);
          v21[4] = val;
          v22[1] = persistentID;
          [(MediaSocialPostOperation *)v16 setResultBlock:v21];
          [_postOperationQueue addOperation:v16];
          objc_destroyWeak(v22);
          objc_destroyWeak(&location);
LABEL_17:
        }

        v6 = [obj countByEnumeratingWithState:&v28 objects:v42 count:16];
      }

      while (v6);
    }

    _Block_object_dispose(&v35, 8);
  }
}

- (void)_enumerateSSVDirectUploadsWithQuery:(id)query block:(id)block
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DDAD4;
  v6[3] = &unk_100328708;
  v6[4] = self;
  blockCopy = block;
  v5 = blockCopy;
  [query enumerateSSVDirectUploadsUsingBlock:v6];
}

- (void)_finishPostWithPostIdentifier:(int64_t)identifier response:(id)response
{
  responseCopy = response;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1000D8008;
  v40 = sub_1000D8018;
  v41 = 0;
  if ([responseCopy result] == 5)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    shouldLogToDisk = [v7 shouldLogToDisk];
    oSLogObject = [v7 OSLogObject];
    v11 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      shouldLog &= 2u;
    }

    if (!shouldLog)
    {
      goto LABEL_20;
    }

    v12 = objc_opt_class();
    v43 = 138412546;
    v44 = v12;
    v45 = 2048;
    identifierCopy2 = identifier;
    v13 = v12;
    LODWORD(v26) = 22;
    v25 = &v43;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v7 shouldLog];
    shouldLogToDisk2 = [v7 shouldLogToDisk];
    oSLogObject2 = [v7 OSLogObject];
    v11 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      shouldLog2 &= 2u;
    }

    if (!shouldLog2)
    {
      goto LABEL_20;
    }

    v18 = objc_opt_class();
    v43 = 138412546;
    v44 = v18;
    v45 = 2048;
    identifierCopy2 = identifier;
    v19 = v18;
    LODWORD(v26) = 22;
    v25 = &v43;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_21;
    }
  }

  v11 = [NSString stringWithCString:v14 encoding:4, &v43, v26];
  free(v14);
  v25 = v11;
  SSFileLog();
LABEL_20:

LABEL_21:
  [(DirectUploadController *)self _database];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000DE05C;
  v31[3] = &unk_100328730;
  v20 = v35 = identifier;
  selfCopy = self;
  v34 = &v36;
  v32 = v20;
  [v20 performTransactionWithBlock:v31];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = v37[5];
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v42 count:16];
  if (v22)
  {
    v23 = *v28;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v21);
        }

        [(NSMutableDictionary *)self->_progressDictionary removeObjectForKey:*(*(&v27 + 1) + 8 * i), v25];
      }

      v22 = [v21 countByEnumeratingWithState:&v27 objects:v42 count:16];
    }

    while (v22);
  }

  [(DirectUploadController *)self _sendRemoveUploadsMessageWithUploadIdentifiers:v37[5]];
  _Block_object_dispose(&v36, 8);
}

- (void)_handleMessage:(id)message connection:(id)connection usingBlock:(id)block
{
  blockCopy = block;
  v7 = +[Daemon daemon];
  [v7 takeKeepAliveAssertion:@"DirectUploadController"];

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DE194;
  block[3] = &unk_100327198;
  v11 = blockCopy;
  v9 = blockCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleMessage:(id)message connection:(id)connection usingReplyBlock:(id)block
{
  messageCopy = message;
  connectionCopy = connection;
  blockCopy = block;
  v11 = +[Daemon daemon];
  [v11 takeKeepAliveAssertion:@"DirectUploadController"];

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DE308;
  block[3] = &unk_100328758;
  v18 = connectionCopy;
  v19 = blockCopy;
  v17 = messageCopy;
  v13 = connectionCopy;
  v14 = blockCopy;
  v15 = messageCopy;
  dispatch_async(dispatchQueue, block);
}

- (id)_errorCoordinator
{
  errorCoordinator = self->_errorCoordinator;
  if (!errorCoordinator)
  {
    v4 = [[MediaSocialErrorCoordinator alloc] initWithDispatchQueue:self->_dispatchQueue];
    v5 = self->_errorCoordinator;
    self->_errorCoordinator = v4;

    [(MediaSocialErrorCoordinator *)self->_errorCoordinator setDelegate:self];
    errorCoordinator = self->_errorCoordinator;
  }

  return errorCoordinator;
}

- (id)_newAddUploadsMessageWithDatabase:(id)database hydratedUploadIDs:(id)ds
{
  databaseCopy = database;
  dsCopy = ds;
  v8 = SSXPCCreateMessageDictionary();
  v9 = xpc_array_create(0, 0);
  v10 = [objc_opt_class() _orderedUploadQueryWithDatabase:databaseCopy predicate:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000DE644;
  v22[3] = &unk_100327A50;
  v11 = v9;
  v23 = v11;
  [v10 enumeratePersistentIDsUsingBlock:v22];

  xpc_dictionary_set_value(v8, "1", v11);
  v12 = xpc_array_create(0, 0);
  v13 = [dsCopy count];
  v14 = SSSQLEntityPropertyPersistentID;
  if (v13 == 1)
  {
    firstObject = [dsCopy firstObject];

    v16 = [SSSQLiteComparisonPredicate predicateWithProperty:v14 equalToValue:firstObject];
    dsCopy = firstObject;
  }

  else
  {
    v16 = [SSSQLiteContainsPredicate containsPredicateWithProperty:SSSQLEntityPropertyPersistentID values:dsCopy];
  }

  v17 = [objc_opt_class() _orderedUploadQueryWithDatabase:databaseCopy predicate:v16];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000DE654;
  v20[3] = &unk_100328490;
  v21 = v12;
  v18 = v12;
  [(DirectUploadController *)self _enumerateSSVDirectUploadsWithQuery:v17 block:v20];

  xpc_dictionary_set_value(v8, "2", v18);
  return v8;
}

- (id)_newSSVDirectUploadWithProgress:(id)progress state:(int64_t)state
{
  progressCopy = progress;
  v6 = objc_alloc_init(SSVDirectUpload);
  [v6 setCountOfBytesExpectedToSend:{objc_msgSend(progressCopy, "countOfBytesExpectedToSend")}];
  [v6 setCountOfBytesSent:{objc_msgSend(progressCopy, "countOfBytesSent")}];
  uploadDatabaseIdentifier = [progressCopy uploadDatabaseIdentifier];

  [v6 setPersistentIdentifier:uploadDatabaseIdentifier];
  [v6 setState:state];
  return v6;
}

- (void)_operationDidFinishForPostIdentifier:(int64_t)identifier response:(id)response
{
  responseCopy = response;
  _database = [(DirectUploadController *)self _database];
  result = [responseCopy result];
  if (result > 1)
  {
    if (result == 3)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = sub_1000D8008;
      v23 = sub_1000D8018;
      v24 = 0;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000DF1C8;
      v14[3] = &unk_1003287A8;
      identifierCopy = identifier;
      v15 = _database;
      v16 = responseCopy;
      v17 = &v19;
      [v15 performTransactionWithBlock:v14];
      activityIdentifier = [v20[5] activityIdentifier];
      v12 = [activityIdentifier length];

      if (v12)
      {
        _pollingCoordinator = [(DirectUploadController *)self _pollingCoordinator];
        [_pollingCoordinator addPollRequest:v20[5]];
      }

      _Block_object_dispose(&v19, 8);
      v9 = v24;
      goto LABEL_15;
    }

    if (result == 2)
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000DEAAC;
      v36[3] = &unk_1003284B8;
      identifierCopy2 = identifier;
      v37 = _database;
      selfCopy = self;
      v39 = responseCopy;
      [v37 performTransactionWithBlock:v36];

      v9 = v37;
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (result)
  {
    if (result == 1)
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000DECE8;
      v31[3] = &unk_1003284B8;
      identifierCopy3 = identifier;
      v32 = _database;
      selfCopy2 = self;
      v34 = responseCopy;
      [v32 performTransactionWithBlock:v31];

      v9 = v32;
LABEL_15:

      goto LABEL_16;
    }

LABEL_8:
    [(DirectUploadController *)self _finishPostWithPostIdentifier:identifier response:responseCopy];
    goto LABEL_16;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  LOBYTE(v22) = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000DEF24;
  v25[3] = &unk_100328780;
  identifierCopy4 = identifier;
  v10 = _database;
  v26 = v10;
  selfCopy3 = self;
  v28 = responseCopy;
  v29 = &v19;
  [v10 performTransactionWithBlock:v25];
  if (*(v20 + 24) == 1)
  {
    [(DirectUploadController *)self _scheduleDelayedRetry];
  }

  _Block_object_dispose(&v19, 8);
LABEL_16:
}

- (BOOL)_pauseUploadsWithPredicate:(id)predicate clientIdentifier:(id)identifier error:(id *)error
{
  predicateCopy = predicate;
  identifierCopy = identifier;
  v9 = objc_alloc_init(NSMutableArray);
  if ([(NSMutableArray *)self->_clients count])
  {
    v10 = objc_alloc_init(NSMutableArray);
  }

  else
  {
    v10 = 0;
  }

  [(DirectUploadController *)self _database];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000DF460;
  v21 = &unk_1003287F8;
  v23 = v22 = self;
  v24 = predicateCopy;
  v11 = v9;
  v25 = v11;
  v26 = v10;
  v27 = identifierCopy;
  v12 = identifierCopy;
  v13 = v10;
  v14 = predicateCopy;
  v15 = v23;
  [v15 performTransactionWithBlock:&v18];
  if ([v11 count])
  {
    _sessionController = [(DirectUploadController *)self _sessionController];
    [_sessionController pauseUploadTasksWithDatabaseIdentifiers:v11];
  }

  [(DirectUploadController *)self _sendChangeUploadsMessageWithUploads:v13];

  return 1;
}

- (id)_pollingCoordinator
{
  pollingCoordinator = self->_pollingCoordinator;
  if (!pollingCoordinator)
  {
    v4 = [[MediaSocialStatusPollingCoordinator alloc] initWithDispatchQueue:self->_dispatchQueue];
    v5 = self->_pollingCoordinator;
    self->_pollingCoordinator = v4;

    [(MediaSocialStatusPollingCoordinator *)self->_pollingCoordinator setDelegate:self];
    pollingCoordinator = self->_pollingCoordinator;
  }

  return pollingCoordinator;
}

- (id)_postOperationQueue
{
  postOperationQueue = self->_postOperationQueue;
  if (!postOperationQueue)
  {
    v4 = objc_alloc_init(ISOperationQueue);
    v5 = self->_postOperationQueue;
    self->_postOperationQueue = v4;

    [(ISOperationQueue *)self->_postOperationQueue setMaxConcurrentOperationCount:1];
    [(ISOperationQueue *)self->_postOperationQueue setName:@"com.apple.itunesstored.DirectUploadController.post"];
    postOperationQueue = self->_postOperationQueue;
  }

  return postOperationQueue;
}

- (void)_registerObserverWithMessage:(id)message connection:(id)connection
{
  connectionCopy = connection;
  v7 = xpc_dictionary_get_value(message, "2");
  v8 = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_endpoint)
  {
    v9 = xpc_connection_create_from_endpoint(v8);
    if (!v9)
    {
      goto LABEL_31;
    }

    oSLogObject2 = [[XPCClient alloc] initWithInputConnection:connectionCopy];
    [(XPCClient *)oSLogObject2 setOutputConnectionWithConnection:v9];
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = objc_opt_class();
      v30 = v19;
      clientIdentifier = [(XPCClient *)oSLogObject2 clientIdentifier];
      v31 = 138412546;
      v32 = v19;
      v33 = 2112;
      v34 = clientIdentifier;
      LODWORD(v29) = 22;
      v28 = &v31;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_25:

        if (![(NSMutableArray *)self->_clients count])
        {
          v22 = +[NSNotificationCenter defaultCenter];
          [v22 addObserver:self selector:"_clientDisconnectNotification:" name:@"XPCClientDisconnectNotification" object:0];
        }

        clients = self->_clients;
        if (!clients)
        {
          v24 = objc_alloc_init(NSMutableArray);
          v25 = self->_clients;
          self->_clients = v24;

          clients = self->_clients;
        }

        [(NSMutableArray *)clients addObject:oSLogObject2, v28];
        v26 = xpc_dictionary_create(0, 0, 0);
        outputConnection = [(XPCClient *)oSLogObject2 outputConnection];
        [outputConnection sendMessage:v26];

        goto LABEL_30;
      }

      oSLogObject = [NSString stringWithCString:v21 encoding:4, &v31, v29];
      free(v21);
      v28 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_25;
  }

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = shouldLog2 | 2;
  }

  else
  {
    v11 = shouldLog2;
  }

  oSLogObject2 = [v9 OSLogObject];
  if (!os_log_type_enabled(&oSLogObject2->super, OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_30;
  }

  v31 = 138412290;
  v32 = objc_opt_class();
  v13 = v32;
  LODWORD(v29) = 12;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject2 = [NSString stringWithCString:v14 encoding:4, &v31, v29];
    free(v14);
    SSFileLog();
LABEL_30:
  }

LABEL_31:
}

- (BOOL)_resumeUploadsWithPredicate:(id)predicate clientIdentifier:(id)identifier resetFailureCount:(BOOL)count error:(id *)error
{
  predicateCopy = predicate;
  identifierCopy = identifier;
  v11 = objc_alloc_init(NSMutableArray);
  if ([(NSMutableArray *)self->_clients count])
  {
    v12 = objc_alloc_init(NSMutableArray);
  }

  else
  {
    v12 = 0;
  }

  [(DirectUploadController *)self _database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000DFE0C;
  v20[3] = &unk_100328848;
  v21 = v20[4] = self;
  v22 = predicateCopy;
  countCopy = count;
  v13 = v11;
  v23 = v13;
  v24 = v12;
  v25 = identifierCopy;
  v14 = identifierCopy;
  v15 = v12;
  v16 = predicateCopy;
  v17 = v21;
  [v17 performTransactionWithBlock:v20];
  if ([v13 count])
  {
    _sessionController = [(DirectUploadController *)self _sessionController];
    [_sessionController addUploadTasksWithRequests:v13];
  }

  [(DirectUploadController *)self _sendChangeUploadsMessageWithUploads:v15];

  return 1;
}

- (void)_retryFailedEntities
{
  [(MediaSocialErrorCoordinator *)self->_errorCoordinator dismissAllDialogs];
  [(MediaSocialErrorCoordinator *)self->_errorCoordinator setDelegate:0];
  errorCoordinator = self->_errorCoordinator;
  self->_errorCoordinator = 0;

  [(DirectUploadController *)self _databaseIfExists];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E0304;
  v5[3] = &unk_100328440;
  v6 = v5[4] = self;
  v4 = v6;
  [v4 performTransactionWithBlock:v5];
}

- (void)_sendChangeUploadsMessageWithUploads:(id)uploads
{
  uploadsCopy = uploads;
  if ([uploadsCopy count] && -[NSMutableArray count](self->_clients, "count"))
  {
    v5 = SSXPCCreateMessageDictionary();
    SSXPCDictionarySetObject();
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_clients;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          outputConnection = [*(*(&v12 + 1) + 8 * v10) outputConnection];
          [outputConnection sendMessage:v5];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_sendRemoveUploadsMessageWithUploadIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count] && -[NSMutableArray count](self->_clients, "count"))
  {
    v5 = SSXPCCreateMessageDictionary();
    SSXPCDictionarySetObject();
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_clients;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          outputConnection = [*(*(&v12 + 1) + 8 * v10) outputConnection];
          [outputConnection sendMessage:v5];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (id)_sessionController
{
  sessionController = self->_sessionController;
  if (!sessionController)
  {
    v4 = [[DirectUploadSessionController alloc] initWithDispatchQueue:self->_dispatchQueue];
    v5 = self->_sessionController;
    self->_sessionController = v4;

    [(DirectUploadSessionController *)self->_sessionController setDelegate:self];
    sessionController = self->_sessionController;
  }

  return sessionController;
}

@end