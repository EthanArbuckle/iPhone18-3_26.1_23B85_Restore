@interface StorePreorderQueue
+ (id)sharedPreorderQueue;
+ (void)cancelPreordersWithMessage:(id)a3 connection:(id)a4;
+ (void)checkQueueWithMessage:(id)a3 connection:(id)a4;
+ (void)getPreordersWithMessage:(id)a3 connection:(id)a4;
+ (void)observeXPCServer:(id)a3;
+ (void)registerManagerWithMessage:(id)a3 connection:(id)a4;
- (StorePreorderQueue)init;
- (id)_clientForConnection:(id)a3;
- (id)_copyPreorderAccountIdentifiers;
- (id)_preorderQueryWithAccountID:(id)a3 database:(id)a4;
- (void)_clientDisconnectNotification:(id)a3;
- (void)_handleCheckQueueFinish:(id)a3;
- (void)_handleLoadQueueFinish:(id)a3;
- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5;
- (void)_handleMessage:(id)a3 connection:(id)a4 usingReplyBlock:(id)a5;
- (void)_sendChangeNotificationForKinds:(id)a3;
- (void)addPreordersWithItems:(id)a3 accountID:(id)a4;
- (void)checkPreorderQueue;
- (void)dealloc;
- (void)removePreordersWithPreorderIdentifiers:(id)a3;
@end

@implementation StorePreorderQueue

- (StorePreorderQueue)init
{
  v5.receiver = self;
  v5.super_class = StorePreorderQueue;
  v2 = [(StorePreorderQueue *)&v5 init];
  if (v2)
  {
    v2->_clients = objc_alloc_init(NSMutableArray);
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.StorePreorderQueue", 0);
    v3 = objc_alloc_init(ISOperationQueue);
    v2->_operationQueue = v3;
    [(ISOperationQueue *)v3 setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [+[Daemon daemon](Daemon "daemon")];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"_clientDisconnectNotification:" object:@"XPCClientDisconnectNotification", 0];
  }

  return v2;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"XPCClientDisconnectNotification", 0];
  dispatch_release(self->_dispatchQueue);

  [+[Daemon daemon](Daemon "daemon")];
  [(ISOperationQueue *)self->_operationQueue cancelAllOperations];

  v3.receiver = self;
  v3.super_class = StorePreorderQueue;
  [(StorePreorderQueue *)&v3 dealloc];
}

+ (id)sharedPreorderQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017AEA8;
  block[3] = &unk_100327378;
  block[4] = a1;
  if (qword_100383F68 != -1)
  {
    dispatch_once(&qword_100383F68, block);
  }

  return qword_100383F60;
}

- (void)addPreordersWithItems:(id)a3 accountID:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10017AF68;
  v4[3] = &unk_10032A460;
  v4[4] = a3;
  v4[5] = a4;
  v4[6] = self;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
}

- (void)checkPreorderQueue
{
  if (![-[ISOperationQueue operations](self->_operationQueue "operations")])
  {
    v3 = [(StorePreorderQueue *)self _copyPreorderAccountIdentifiers];
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v24 = 138412546;
      v25 = objc_opt_class();
      v26 = 2048;
      v27 = [v3 count];
      LODWORD(v17) = 22;
      v16 = &v24;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [NSString stringWithCString:v7 encoding:4, &v24, v17];
        free(v8);
        v16 = v9;
        SSFileLog();
      }
    }

    if ([v3 count])
    {
      v10 = objc_alloc_init(CancelPreordersOperation);
      [(ISOperationQueue *)self->_operationQueue addOperation:v10];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v3);
            }

            v15 = [[CheckPreorderQueueOperation alloc] initWithAccountIdentifier:*(*(&v19 + 1) + 8 * i)];
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_10017B560;
            v18[3] = &unk_100327350;
            v18[4] = self;
            v18[5] = v15;
            [(CheckPreorderQueueOperation *)v15 setCompletionBlock:v18];
            [(ISOperationQueue *)self->_operationQueue addOperation:v15];
          }

          v12 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }
    }
  }
}

- (void)removePreordersWithPreorderIdentifiers:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v5 = objc_alloc_init(NSMutableSet);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10017B700;
  v8[3] = &unk_10032A4B0;
  v8[4] = a3;
  v8[5] = v5;
  v8[6] = &v9;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  if (*(v10 + 24) == 1 && [v5 count])
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017B968;
    block[3] = &unk_100327350;
    block[4] = self;
    block[5] = v5;
    dispatch_async(dispatchQueue, block);
  }

  _Block_object_dispose(&v9, 8);
}

+ (void)cancelPreordersWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10017BA04;
  v4[3] = &unk_10032A500;
  v4[5] = a3;
  [+[StorePreorderQueue sharedPreorderQueue](StorePreorderQueue "sharedPreorderQueue")];
}

+ (void)checkQueueWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10017C0A0;
  v4[3] = &unk_10032A528;
  [+[StorePreorderQueue sharedPreorderQueue](StorePreorderQueue "sharedPreorderQueue")];
}

+ (void)getPreordersWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10017C2B8;
  v4[3] = &unk_10032A550;
  [+[StorePreorderQueue sharedPreorderQueue](StorePreorderQueue "sharedPreorderQueue")];
}

+ (void)observeXPCServer:(id)a3
{
  [a3 addObserver:a1 selector:"cancelPreordersWithMessage:connection:" forMessage:35];
  [a3 addObserver:a1 selector:"checkQueueWithMessage:connection:" forMessage:36];
  [a3 addObserver:a1 selector:"getPreordersWithMessage:connection:" forMessage:34];

  [a3 addObserver:a1 selector:"registerManagerWithMessage:connection:" forMessage:33];
}

+ (void)registerManagerWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10017C7CC;
  v4[3] = &unk_10032A578;
  v4[5] = a3;
  [+[StorePreorderQueue sharedPreorderQueue](StorePreorderQueue "sharedPreorderQueue")];
}

- (void)_clientDisconnectNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10017CBB0;
  v4[3] = &unk_100327350;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(dispatchQueue, v4);
}

- (id)_clientForConnection:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  clients = self->_clients;
  v6 = [(NSMutableArray *)clients countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(clients);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      v11 = [(XPCClient *)v10 copyInputConnection];
      v12 = v11;
      if (v11)
      {
        xpc_release(v11);
      }

      if (v12 == a3 && v10 != 0)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)clients countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v10 = [(XPCClient *)[PreorderQueueClient alloc] initWithInputConnection:a3];
    [(NSMutableArray *)self->_clients addObject:v10];
    v14 = v10;
  }

  return v10;
}

- (id)_copyPreorderAccountIdentifiers
{
  v2 = objc_alloc_init(NSMutableSet);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017CF70;
  v5[3] = &unk_10032A5A0;
  v5[4] = v2;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  v3 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  if (v3)
  {
    [v2 addObject:{objc_msgSend(v3, "uniqueIdentifier")}];
  }

  return v2;
}

- (void)_handleCheckQueueFinish:(id)a3
{
  if ([a3 success])
  {
    v5 = [a3 accountIdentifier];
    v6 = [a3 numberOfPreordersInQueue];
    if (v6)
    {
      v7 = v6;
      *v20 = 0;
      *&v20[8] = v20;
      *&v20[16] = 0x2020000000;
      v21 = 0;
      if ([objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")])
      {
        *(*&v20[8] + 24) = 1;
      }

      else
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10017D448;
        v18[3] = &unk_10032A5C8;
        v18[4] = self;
        v18[5] = v5;
        v18[6] = v20;
        v18[7] = v7;
        [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
        if ((*(*&v20[8] + 24) & 1) == 0)
        {
LABEL_18:
          _Block_object_dispose(v20, 8);
          return;
        }
      }

      v14 = [[LoadPreorderQueueOperation alloc] initWithAccountIdentifier:v5];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10017D4A4;
      v17[3] = &unk_100327350;
      v17[4] = self;
      v17[5] = v14;
      [(LoadPreorderQueueOperation *)v14 setCompletionBlock:v17];
      [(ISOperationQueue *)self->_operationQueue addOperation:v14];

      goto LABEL_18;
    }

    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *v20 = 138412546;
      *&v20[4] = objc_opt_class();
      *&v20[12] = 2112;
      *&v20[14] = v5;
      LODWORD(v16) = 22;
      v15 = v20;
      v11 = _os_log_send_and_compose_impl();
      if (v11)
      {
        v12 = v11;
        v13 = [NSString stringWithCString:v11 encoding:4, v20, v16];
        free(v12);
        v15 = v13;
        SSFileLog();
      }
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10017D408;
    v19[3] = &unk_100327F38;
    v19[4] = self;
    v19[5] = v5;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
  }
}

- (void)_handleLoadQueueFinish:(id)a3
{
  if ([a3 success])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10017D57C;
    v5[3] = &unk_100327F38;
    v5[4] = a3;
    v5[5] = self;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  }
}

- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5
{
  xpc_retain(a4);
  xpc_retain(a3);
  dispatchQueue = self->_dispatchQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10017DDF0;
  v10[3] = &unk_10032A5F0;
  v10[4] = self;
  v10[5] = a4;
  v10[6] = a3;
  v10[7] = a5;
  dispatch_async(dispatchQueue, v10);
}

- (void)_handleMessage:(id)a3 connection:(id)a4 usingReplyBlock:(id)a5
{
  xpc_retain(a4);
  xpc_retain(a3);
  dispatchQueue = self->_dispatchQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10017DEF4;
  v10[3] = &unk_10032A618;
  v10[4] = a3;
  v10[5] = self;
  v10[6] = a4;
  v10[7] = a5;
  dispatch_async(dispatchQueue, v10);
}

- (id)_preorderQueryWithAccountID:(id)a3 database:(id)a4
{
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"store_account_id" equalToValue:a3];

  return [PreorderEntity queryWithDatabase:a4 predicate:v5];
}

- (void)_sendChangeNotificationForKinds:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  clients = self->_clients;
  v5 = [(NSMutableArray *)clients countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(clients);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([objc_msgSend(v9 "itemKinds")])
        {
          [v9 sendCoalescedMessageWithIdentifier:1007];
        }
      }

      v6 = [(NSMutableArray *)clients countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

@end