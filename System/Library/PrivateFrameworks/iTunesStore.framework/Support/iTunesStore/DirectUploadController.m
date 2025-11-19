@interface DirectUploadController
+ (BOOL)_isConnectionEntitled:(id)a3;
+ (id)_copyPersistentIdentifiersArrayWithXPCArray:(id)a3;
+ (id)_orderedPostQueryWithDatabase:(id)a3 predicate:(id)a4;
+ (id)_orderedUploadQueryWithDatabase:(id)a3 predicate:(id)a4;
+ (id)sharedController;
+ (void)_sendAccessDeniedErrorWithMessage:(id)a3 connection:(id)a4;
+ (void)_setupDatabase:(id)a3;
+ (void)cancelUploadsWithMessage:(id)a3 connection:(id)a4;
+ (void)getUploadsWithMessage:(id)a3 connection:(id)a4;
+ (void)observeXPCServer:(id)a3;
+ (void)pauseUploadsWithMessage:(id)a3 connection:(id)a4;
+ (void)registerObserverWithMessage:(id)a3 connection:(id)a4;
+ (void)resumeUploadsWithMessage:(id)a3 connection:(id)a4;
- (BOOL)_cancelUploadsWithPredicate:(id)a3 clientIdentifier:(id)a4 error:(id *)a5;
- (BOOL)_pauseUploadsWithPredicate:(id)a3 clientIdentifier:(id)a4 error:(id *)a5;
- (BOOL)_resumeUploadsWithPredicate:(id)a3 clientIdentifier:(id)a4 resetFailureCount:(BOOL)a5 error:(id *)a6;
- (DirectUploadController)init;
- (id)_authenticationCoordinator;
- (id)_database;
- (id)_databaseIfExists;
- (id)_errorCoordinator;
- (id)_newAddUploadsMessageWithDatabase:(id)a3 hydratedUploadIDs:(id)a4;
- (id)_newSSVDirectUploadWithProgress:(id)a3 state:(int64_t)a4;
- (id)_pollingCoordinator;
- (id)_postOperationQueue;
- (id)_sessionController;
- (void)_cleanupPendingUploads:(id)a3 database:(id)a4;
- (void)_cleanupSessionController;
- (void)_clientDisconnectNotification:(id)a3;
- (void)_enqueueNextReadyMediaSocialPostOperationWithDatabase:(id)a3;
- (void)_enumerateSSVDirectUploadsWithQuery:(id)a3 block:(id)a4;
- (void)_finishPostWithPostIdentifier:(int64_t)a3 response:(id)a4;
- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5;
- (void)_handleMessage:(id)a3 connection:(id)a4 usingReplyBlock:(id)a5;
- (void)_operationDidFinishForPostIdentifier:(int64_t)a3 response:(id)a4;
- (void)_registerObserverWithMessage:(id)a3 connection:(id)a4;
- (void)_retryFailedEntities;
- (void)_sendChangeUploadsMessageWithUploads:(id)a3;
- (void)_sendRemoveUploadsMessageWithUploadIdentifiers:(id)a3;
- (void)addMediaSocialPostWithDescription:(id)a3 client:(id)a4;
- (void)authenticationCoordinator:(id)a3 didFinishAuthenticationWithResponse:(id)a4;
- (void)dealloc;
- (void)mediaSocialErrorCoordinator:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)pollingCoordinator:(id)a3 didPollWithResponses:(id)a4;
- (void)start;
- (void)uploadSessionController:(id)a3 uploadDidBeginTransferWithDatabaseID:(int64_t)a4;
- (void)uploadSessionController:(id)a3 uploadDidFailWithDatabaseID:(int64_t)a4 error:(id)a5;
- (void)uploadSessionController:(id)a3 uploadDidFinishWithDatabaseID:(int64_t)a4 response:(id)a5;
- (void)uploadSessionController:(id)a3 uploadProgressDidChange:(id)a4;
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
  block[4] = a1;
  if (qword_100383E98 != -1)
  {
    dispatch_once(&qword_100383E98, block);
  }

  v2 = qword_100383E90;

  return v2;
}

- (void)addMediaSocialPostWithDescription:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7D04;
  block[3] = &unk_1003281A0;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
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

+ (void)cancelUploadsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _isConnectionEntitled:v7])
  {
    v8 = SSXPCConnectionCopyClientIdentifier();
    v9 = [a1 sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000D89E0;
    v12[3] = &unk_100328468;
    v13 = v6;
    v14 = v9;
    v15 = v8;
    v16 = a1;
    v10 = v8;
    v11 = v9;
    [v11 _handleMessage:v13 connection:v7 usingReplyBlock:v12];
  }

  else
  {
    [a1 _sendAccessDeniedErrorWithMessage:v6 connection:v7];
  }
}

+ (void)getUploadsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _isConnectionEntitled:v7])
  {
    [a1 sharedController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D8D48;
    v10 = v9[3] = &unk_1003284E0;
    v11 = a1;
    v8 = v10;
    [v8 _handleMessage:v6 connection:v7 usingReplyBlock:v9];
  }

  else
  {
    [a1 _sendAccessDeniedErrorWithMessage:v6 connection:v7];
  }
}

+ (void)observeXPCServer:(id)a3
{
  v4 = a3;
  [v4 addObserver:a1 selector:"cancelUploadsWithMessage:connection:" forMessage:154];
  [v4 addObserver:a1 selector:"getUploadsWithMessage:connection:" forMessage:155];
  [v4 addObserver:a1 selector:"pauseUploadsWithMessage:connection:" forMessage:156];
  [v4 addObserver:a1 selector:"registerObserverWithMessage:connection:" forMessage:157];
  [v4 addObserver:a1 selector:"resumeUploadsWithMessage:connection:" forMessage:158];
}

+ (void)pauseUploadsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _isConnectionEntitled:v7])
  {
    v8 = SSXPCConnectionCopyClientIdentifier();
    v9 = [a1 sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000D9104;
    v12[3] = &unk_100328468;
    v13 = v6;
    v14 = v9;
    v15 = v8;
    v16 = a1;
    v10 = v8;
    v11 = v9;
    [v11 _handleMessage:v13 connection:v7 usingReplyBlock:v12];
  }

  else
  {
    [a1 _sendAccessDeniedErrorWithMessage:v6 connection:v7];
  }
}

+ (void)registerObserverWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _isConnectionEntitled:v7])
  {
    [a1 sharedController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D9434;
    v10 = v9[3] = &unk_1003281A0;
    v11 = v6;
    v12 = v7;
    v8 = v10;
    [v8 _handleMessage:v11 connection:v12 usingBlock:v9];
  }

  else
  {
    [a1 _sendAccessDeniedErrorWithMessage:v6 connection:v7];
  }
}

+ (void)resumeUploadsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _isConnectionEntitled:v7])
  {
    v8 = SSXPCConnectionCopyClientIdentifier();
    v9 = [a1 sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000D9570;
    v12[3] = &unk_100328468;
    v13 = v6;
    v14 = v9;
    v15 = v8;
    v16 = a1;
    v10 = v8;
    v11 = v9;
    [v11 _handleMessage:v13 connection:v7 usingReplyBlock:v12];
  }

  else
  {
    [a1 _sendAccessDeniedErrorWithMessage:v6 connection:v7];
  }
}

- (void)uploadSessionController:(id)a3 uploadDidBeginTransferWithDatabaseID:(int64_t)a4
{
  [(DirectUploadController *)self _database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D98C4;
  v11[3] = &unk_100328508;
  v6 = v13 = a4;
  v12 = v6;
  [v6 performTransactionWithBlock:v11];
  if ([(NSMutableArray *)self->_clients count])
  {
    v7 = [[NSNumber alloc] initWithLongLong:a4];
    v8 = [(NSMutableDictionary *)self->_progressDictionary objectForKey:v7];
    v9 = [(DirectUploadController *)self _newSSVDirectUploadWithProgress:v8 state:1];
    [v9 setPersistentIdentifier:a4];
    v10 = [[NSArray alloc] initWithObjects:{v9, 0}];
    [(DirectUploadController *)self _sendChangeUploadsMessageWithUploads:v10];
  }
}

- (void)uploadSessionController:(id)a3 uploadDidFailWithDatabaseID:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
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
  v11 = v28 = a4;
  v23 = v11;
  v12 = v9;
  v24 = v12;
  v25 = self;
  v29 = IsEqual;
  v26 = &v30;
  v27 = &v36;
  [v11 performTransactionWithBlock:&v19];
  if (IsEqual)
  {
    v13 = [(DirectUploadController *)self _authenticationCoordinator];
    [v13 authenticateForUploadWithIdentifier:a4 accountIdentifier:v31[5]];
  }

  else if (*(v37 + 24) == 1)
  {
    [(DirectUploadController *)self _scheduleDelayedRetry];
  }

  if ([(NSMutableArray *)self->_clients count])
  {
    v14 = [[NSNumber alloc] initWithLongLong:a4];
    v15 = [(NSMutableDictionary *)self->_progressDictionary objectForKey:v14];
    v16 = [(DirectUploadController *)self _newSSVDirectUploadWithProgress:v15 state:4];
    [v16 setError:v12];
    [v16 setPersistentIdentifier:a4];
    v17 = [NSArray alloc];
    v18 = [v17 initWithObjects:{v16, 0, v19, v20, v21, v22, v23}];
    [(DirectUploadController *)self _sendChangeUploadsMessageWithUploads:v18];
  }

  [(DirectUploadController *)self _cleanupSessionController];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
}

- (void)uploadSessionController:(id)a3 uploadDidFinishWithDatabaseID:(int64_t)a4 response:(id)a5
{
  v7 = a5;
  [(DirectUploadController *)self _database];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D9FC4;
  v15[3] = &unk_1003284B8;
  v8 = v19 = a4;
  v16 = v8;
  v9 = v7;
  v17 = v9;
  v18 = self;
  [v8 performTransactionWithBlock:v15];
  v10 = [v9 countOfBytesSent];
  v11 = objc_alloc_init(DirectUploadProgress);
  [(DirectUploadProgress *)v11 setCountOfBytesExpectedToSend:v10];
  [(DirectUploadProgress *)v11 setCountOfBytesSent:v10];
  [(DirectUploadProgress *)v11 setUploadDatabaseIdentifier:a4];
  v12 = [[NSNumber alloc] initWithLongLong:a4];
  [(NSMutableDictionary *)self->_progressDictionary setObject:v11 forKey:v12];
  if ([(NSMutableArray *)self->_clients count])
  {
    v13 = [(DirectUploadController *)self _newSSVDirectUploadWithProgress:v11 state:2];
    v14 = [[NSArray alloc] initWithObjects:{v13, 0}];
    [(DirectUploadController *)self _sendChangeUploadsMessageWithUploads:v14];
  }

  [(DirectUploadController *)self _cleanupSessionController];
}

- (void)uploadSessionController:(id)a3 uploadProgressDidChange:(id)a4
{
  v5 = a4;
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
  v9 = v5;
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

- (void)authenticationCoordinator:(id)a3 didFinishAuthenticationWithResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 authenticateResponse];
  v9 = [v8 authenticatedAccount];
  v10 = [v9 uniqueIdentifier];

  v11 = [v7 accountIdentifier];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v12 = [(DirectUploadController *)self _database];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000DA3A8;
  v21 = &unk_100328580;
  v13 = v11;
  v22 = v13;
  v14 = v12;
  v23 = v14;
  v15 = v10;
  v24 = v15;
  v25 = self;
  v16 = v8;
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

- (void)mediaSocialErrorCoordinator:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 postIdentifiers];
  v8 = [v6 uploadIdentifiers];

  if (a4 == 1)
  {
    v9 = [(DirectUploadController *)self _database];
    v10 = &v14;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v11 = sub_1000DB20C;
    goto LABEL_5;
  }

  if (!a4)
  {
    v9 = [(DirectUploadController *)self _database];
    v10 = v16;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v11 = sub_1000DAB94;
LABEL_5:
    v10[2] = v11;
    v10[3] = &unk_1003285A8;
    v10[4] = v7;
    v10[5] = &self->super.isa;
    v10[6] = v9;
    v10[7] = v8;
    v12 = v9;
    [v12 performTransactionWithBlock:v10];
  }

  [(MediaSocialErrorCoordinator *)self->_errorCoordinator setDelegate:0, v14, v15];
  errorCoordinator = self->_errorCoordinator;
  self->_errorCoordinator = 0;
}

- (void)pollingCoordinator:(id)a3 didPollWithResponses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [(DirectUploadController *)self _database];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000DB858;
  v23[3] = &unk_1003285D0;
  v10 = v7;
  v24 = v10;
  v11 = v8;
  v25 = v11;
  v12 = v9;
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

  if (![v6 numberOfPollRequests])
  {
    [(MediaSocialStatusPollingCoordinator *)self->_pollingCoordinator setDelegate:0];
    pollingCoordinator = self->_pollingCoordinator;
    self->_pollingCoordinator = 0;
  }
}

- (void)_clientDisconnectNotification:(id)a3
{
  v4 = [a3 object];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DBA60;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

+ (id)_copyPersistentIdentifiersArrayWithXPCArray:(id)a3
{
  v3 = a3;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1000DBD50;
  applier[3] = &unk_100328088;
  v4 = objc_alloc_init(NSMutableArray);
  v7 = v4;
  xpc_array_apply(v3, applier);

  return v4;
}

+ (BOOL)_isConnectionEntitled:(id)a3
{
  v3 = a3;
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

+ (id)_orderedPostQueryWithDatabase:(id)a3 predicate:(id)a4
{
  v10 = @"creation_time";
  v5 = a4;
  v6 = a3;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [MediaSocialPostEntity queryWithDatabase:v6 predicate:v5 orderingProperties:v7, v10];

  return v8;
}

+ (id)_orderedUploadQueryWithDatabase:(id)a3 predicate:(id)a4
{
  v10 = @"creation_time";
  v5 = a4;
  v6 = a3;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [DirectUploadEntity queryWithDatabase:v6 predicate:v5 orderingProperties:v7, v10];

  return v8;
}

+ (void)_sendAccessDeniedErrorWithMessage:(id)a3 connection:(id)a4
{
  v5 = a4;
  reply = xpc_dictionary_create_reply(a3);
  if (!reply)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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

      v10 = [NSString stringWithCString:v12 encoding:4, &v14, v13, v14];
      free(v12);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v7 = SSError();
  SSXPCDictionarySetObject();
  xpc_connection_send_message(v5, reply);
LABEL_14:
}

+ (void)_setupDatabase:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000DC284;
  v4[3] = &unk_1003270E8;
  v5 = a3;
  v3 = v5;
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

- (BOOL)_cancelUploadsWithPredicate:(id)a3 clientIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(NSMutableArray);
  [(DirectUploadController *)self _database];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000DC544;
  v10 = v25[3] = &unk_100328620;
  v26 = v10;
  v11 = v7;
  v27 = v11;
  v28 = self;
  v12 = v8;
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

    v19 = [(DirectUploadController *)self _sessionController];
    [v19 cancelUploadTasksWithDatabaseIdentifiers:v14];

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

- (void)_cleanupPendingUploads:(id)a3 database:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v71 = @"creation_time";
  v10 = [NSArray arrayWithObjects:&v71 count:1];
  v53 = v6;
  v11 = [DirectUploadEntity queryWithDatabase:v7 predicate:v6 orderingProperties:v10];

  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_1000DCF9C;
  v61[3] = &unk_100328648;
  v12 = v7;
  v62 = v12;
  v13 = v8;
  v63 = v13;
  v64 = self;
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

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
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

      v19 = [NSString stringWithCString:v24 encoding:4, &v67, v48];
      free(v24);
      v46 = v19;
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
        v31 = [v30 activityIdentifier];
        v32 = [v31 length];

        if (v32)
        {
          v33 = [v15[412] sharedDaemonConfig];
          if (!v33)
          {
            v33 = [v15[412] sharedConfig];
          }

          v34 = [v33 shouldLog];
          if ([v33 shouldLogToDisk])
          {
            v35 = v34 | 2;
          }

          else
          {
            v35 = v34;
          }

          v36 = [v33 OSLogObject];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
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
            v41 = self;
            v42 = v38;
            v43 = [v30 postIdentifier];
            v67 = 138412546;
            v68 = v38;
            v69 = 2048;
            v70 = v43;
            LODWORD(v48) = 22;
            v47 = &v67;
            v44 = _os_log_send_and_compose_impl();

            self = v41;
            v15 = v40;
            v28 = v39;
            v27 = v54;

            if (v44)
            {
              v36 = [NSString stringWithCString:v44 encoding:4, &v67, v48];
              free(v44);
              v47 = v36;
              SSFileLog();
              goto LABEL_33;
            }
          }

          else
          {
LABEL_33:
          }

          v45 = [(DirectUploadController *)self _pollingCoordinator];
          [v45 addPollRequest:v30];
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
    v6 = [v4 stringByDeletingLastPathComponent];
    [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

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
    v3 = database;
  }

  else
  {
    v5 = objc_alloc_init(NSFileManager);
    v6 = +[DirectUploadDatabaseSchema databasePath];
    v7 = [v5 fileExistsAtPath:v6 isDirectory:0];

    v3 = 0;
    if (v7)
    {
      v3 = [(DirectUploadController *)self _database];
    }
  }

  return v3;
}

- (void)_enqueueNextReadyMediaSocialPostOperationWithDatabase:(id)a3
{
  v17 = a3;
  val = self;
  v4 = [(DirectUploadController *)self _postOperationQueue];
  if (![v4 operationCount])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_1000D8008;
    v39 = sub_1000D8018;
    v40 = objc_opt_new();
    v5 = [objc_opt_class() _orderedPostQueryWithDatabase:v17 predicate:0];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000DD8F0;
    v32[3] = &unk_100328690;
    v33 = v17;
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
          v9 = [v8 persistentID];
          v10 = [v4 operations];
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = v10;
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

                if ([*(*(&v24 + 1) + 8 * j) postID] == v9)
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
          v22[1] = v9;
          [(MediaSocialPostOperation *)v16 setResultBlock:v21];
          [v4 addOperation:v16];
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

- (void)_enumerateSSVDirectUploadsWithQuery:(id)a3 block:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DDAD4;
  v6[3] = &unk_100328708;
  v6[4] = self;
  v7 = a4;
  v5 = v7;
  [a3 enumerateSSVDirectUploadsUsingBlock:v6];
}

- (void)_finishPostWithPostIdentifier:(int64_t)a3 response:(id)a4
{
  v6 = a4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1000D8008;
  v40 = sub_1000D8018;
  v41 = 0;
  if ([v6 result] == 5)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    v9 = [v7 shouldLogToDisk];
    v10 = [v7 OSLogObject];
    v11 = v10;
    if (v9)
    {
      v8 |= 2u;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (!v8)
    {
      goto LABEL_20;
    }

    v12 = objc_opt_class();
    v43 = 138412546;
    v44 = v12;
    v45 = 2048;
    v46 = a3;
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

    v15 = [v7 shouldLog];
    v16 = [v7 shouldLogToDisk];
    v17 = [v7 OSLogObject];
    v11 = v17;
    if (v16)
    {
      v15 |= 2u;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v15 &= 2u;
    }

    if (!v15)
    {
      goto LABEL_20;
    }

    v18 = objc_opt_class();
    v43 = 138412546;
    v44 = v18;
    v45 = 2048;
    v46 = a3;
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
  v20 = v35 = a3;
  v33 = self;
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

- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5
{
  v6 = a5;
  v7 = +[Daemon daemon];
  [v7 takeKeepAliveAssertion:@"DirectUploadController"];

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DE194;
  block[3] = &unk_100327198;
  v11 = v6;
  v9 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleMessage:(id)a3 connection:(id)a4 usingReplyBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[Daemon daemon];
  [v11 takeKeepAliveAssertion:@"DirectUploadController"];

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DE308;
  block[3] = &unk_100328758;
  v18 = v9;
  v19 = v10;
  v17 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v8;
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

- (id)_newAddUploadsMessageWithDatabase:(id)a3 hydratedUploadIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SSXPCCreateMessageDictionary();
  v9 = xpc_array_create(0, 0);
  v10 = [objc_opt_class() _orderedUploadQueryWithDatabase:v6 predicate:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000DE644;
  v22[3] = &unk_100327A50;
  v11 = v9;
  v23 = v11;
  [v10 enumeratePersistentIDsUsingBlock:v22];

  xpc_dictionary_set_value(v8, "1", v11);
  v12 = xpc_array_create(0, 0);
  v13 = [v7 count];
  v14 = SSSQLEntityPropertyPersistentID;
  if (v13 == 1)
  {
    v15 = [v7 firstObject];

    v16 = [SSSQLiteComparisonPredicate predicateWithProperty:v14 equalToValue:v15];
    v7 = v15;
  }

  else
  {
    v16 = [SSSQLiteContainsPredicate containsPredicateWithProperty:SSSQLEntityPropertyPersistentID values:v7];
  }

  v17 = [objc_opt_class() _orderedUploadQueryWithDatabase:v6 predicate:v16];
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

- (id)_newSSVDirectUploadWithProgress:(id)a3 state:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(SSVDirectUpload);
  [v6 setCountOfBytesExpectedToSend:{objc_msgSend(v5, "countOfBytesExpectedToSend")}];
  [v6 setCountOfBytesSent:{objc_msgSend(v5, "countOfBytesSent")}];
  v7 = [v5 uploadDatabaseIdentifier];

  [v6 setPersistentIdentifier:v7];
  [v6 setState:a4];
  return v6;
}

- (void)_operationDidFinishForPostIdentifier:(int64_t)a3 response:(id)a4
{
  v6 = a4;
  v7 = [(DirectUploadController *)self _database];
  v8 = [v6 result];
  if (v8 > 1)
  {
    if (v8 == 3)
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
      v18 = a3;
      v15 = v7;
      v16 = v6;
      v17 = &v19;
      [v15 performTransactionWithBlock:v14];
      v11 = [v20[5] activityIdentifier];
      v12 = [v11 length];

      if (v12)
      {
        v13 = [(DirectUploadController *)self _pollingCoordinator];
        [v13 addPollRequest:v20[5]];
      }

      _Block_object_dispose(&v19, 8);
      v9 = v24;
      goto LABEL_15;
    }

    if (v8 == 2)
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000DEAAC;
      v36[3] = &unk_1003284B8;
      v40 = a3;
      v37 = v7;
      v38 = self;
      v39 = v6;
      [v37 performTransactionWithBlock:v36];

      v9 = v37;
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000DECE8;
      v31[3] = &unk_1003284B8;
      v35 = a3;
      v32 = v7;
      v33 = self;
      v34 = v6;
      [v32 performTransactionWithBlock:v31];

      v9 = v32;
LABEL_15:

      goto LABEL_16;
    }

LABEL_8:
    [(DirectUploadController *)self _finishPostWithPostIdentifier:a3 response:v6];
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
  v30 = a3;
  v10 = v7;
  v26 = v10;
  v27 = self;
  v28 = v6;
  v29 = &v19;
  [v10 performTransactionWithBlock:v25];
  if (*(v20 + 24) == 1)
  {
    [(DirectUploadController *)self _scheduleDelayedRetry];
  }

  _Block_object_dispose(&v19, 8);
LABEL_16:
}

- (BOOL)_pauseUploadsWithPredicate:(id)a3 clientIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
  v24 = v7;
  v11 = v9;
  v25 = v11;
  v26 = v10;
  v27 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v7;
  v15 = v23;
  [v15 performTransactionWithBlock:&v18];
  if ([v11 count])
  {
    v16 = [(DirectUploadController *)self _sessionController];
    [v16 pauseUploadTasksWithDatabaseIdentifiers:v11];
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

- (void)_registerObserverWithMessage:(id)a3 connection:(id)a4
{
  v6 = a4;
  v7 = xpc_dictionary_get_value(a3, "2");
  v8 = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_endpoint)
  {
    v9 = xpc_connection_create_from_endpoint(v8);
    if (!v9)
    {
      goto LABEL_31;
    }

    v12 = [[XPCClient alloc] initWithInputConnection:v6];
    [(XPCClient *)v12 setOutputConnectionWithConnection:v9];
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v15 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = objc_opt_class();
      v30 = v19;
      v20 = [(XPCClient *)v12 clientIdentifier];
      v31 = 138412546;
      v32 = v19;
      v33 = 2112;
      v34 = v20;
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

        [(NSMutableArray *)clients addObject:v12, v28];
        v26 = xpc_dictionary_create(0, 0, 0);
        v27 = [(XPCClient *)v12 outputConnection];
        [v27 sendMessage:v26];

        goto LABEL_30;
      }

      v18 = [NSString stringWithCString:v21 encoding:4, &v31, v29];
      free(v21);
      v28 = v18;
      SSFileLog();
    }

    goto LABEL_25;
  }

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(&v12->super, OS_LOG_TYPE_DEFAULT))
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
    v12 = [NSString stringWithCString:v14 encoding:4, &v31, v29];
    free(v14);
    SSFileLog();
LABEL_30:
  }

LABEL_31:
}

- (BOOL)_resumeUploadsWithPredicate:(id)a3 clientIdentifier:(id)a4 resetFailureCount:(BOOL)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
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
  v22 = v9;
  v26 = a5;
  v13 = v11;
  v23 = v13;
  v24 = v12;
  v25 = v10;
  v14 = v10;
  v15 = v12;
  v16 = v9;
  v17 = v21;
  [v17 performTransactionWithBlock:v20];
  if ([v13 count])
  {
    v18 = [(DirectUploadController *)self _sessionController];
    [v18 addUploadTasksWithRequests:v13];
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

- (void)_sendChangeUploadsMessageWithUploads:(id)a3
{
  v4 = a3;
  if ([v4 count] && -[NSMutableArray count](self->_clients, "count"))
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

          v11 = [*(*(&v12 + 1) + 8 * v10) outputConnection];
          [v11 sendMessage:v5];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_sendRemoveUploadsMessageWithUploadIdentifiers:(id)a3
{
  v4 = a3;
  if ([v4 count] && -[NSMutableArray count](self->_clients, "count"))
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

          v11 = [*(*(&v12 + 1) + 8 * v10) outputConnection];
          [v11 sendMessage:v5];

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