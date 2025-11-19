@interface PurchaseController
+ (id)sharedController;
+ (void)addPurchasesWithMessage:(id)a3 connection:(id)a4;
+ (void)cancelPurchasesWithMessage:(id)a3 connection:(id)a4;
+ (void)connectClientWithMessage:(id)a3 connection:(id)a4;
+ (void)finishPurchasesWithMessage:(id)a3 connection:(id)a4;
+ (void)getPurchasesWithMessage:(id)a3 connection:(id)a4;
+ (void)insertPurchasesWithMessage:(id)a3 connection:(id)a4;
+ (void)movePurchasesWithMessage:(id)a3 connection:(id)a4;
+ (void)observeXPCServer:(id)a3;
- (BOOL)_cancelPurchasesWithBatchIdentifier:(int64_t)a3 client:(id)a4 response:(id)a5;
- (PurchaseController)init;
- (id)_authenticationOperationQueue;
- (id)_clientForMessage:(id)a3 connection:(id)a4;
- (id)_clientForUniqueIdentifier:(int64_t)a3;
- (id)_newEncodedPurchaseEntityPropertiesWithResponse:(id)a3;
- (id)_newPurchaseIdentifiersFromEncodedArray:(id)a3;
- (id)_newPurchasesFromEncodedArray:(id)a3 client:(id)a4;
- (id)_newResponsesToPurchasesForClient:(id)a3 inDatabase:(id)a4;
- (id)_placeholderAppPathForBundleIdentifier:(id)a3;
- (id)_purchaseOperationQueue;
- (void)_addEncodedPurchases:(id)a3 forClient:(id)a4;
- (void)_addPurchases:(id)a3 forClient:(id)a4;
- (void)_authenticateForPurchases:(id)a3 client:(id)a4;
- (void)_beginPurchaseBatch:(id)a3 forClient:(id)a4;
- (void)_cancelEncodedPurchases:(id)a3 forClient:(id)a4;
- (void)_cancelPurchasesForLackOfDiskSpace:(id)a3 client:(id)a4;
- (void)_checkStoreDownloadQueuesForPurchase:(id)a3 response:(id)a4;
- (void)_clientDisconnectNotification:(id)a3;
- (void)_connectClient:(id)a3 withOutputConnection:(id)a4;
- (void)_dispatchAsync:(id)a3;
- (void)_enqueueNextPurchase;
- (void)_filterPurchases:(id)a3 withTransaction:(id)a4 block:(id)a5;
- (void)_finishAuthenticationRequestForBatchIdentifier:(int64_t)a3 client:(id)a4 withAccountID:(id)a5 error:(id)a6;
- (void)_finishEncodedPurchaseIdentifiers:(id)a3 forClient:(id)a4;
- (void)_finishPurchaseRequestForClientUniqueID:(int64_t)a3 withResponse:(id)a4;
- (void)_garbageCollectInflightPurchases;
- (void)_handleMessage:(id)a3 connection:(id)a4 usingReplyBlock:(id)a5;
- (void)_insertEncodedPurchases:(id)a3 afterPurchaseID:(int64_t)a4 forClient:(id)a5;
- (void)_markInFlightCanceledPurchaseIdentifier:(id)a3;
- (void)_moveEncodedPurchaseIDs:(id)a3 afterPurchaseID:(int64_t)a4 forClient:(id)a5;
- (void)_sendAuthenticateRequestForClientUniqueID:(int64_t)a3 withContext:(id)a4 responseHandler:(id)a5;
- (void)_showNotEnoughDiskSpaceDialogForPurchases:(id)a3;
- (void)_showPurchasesFailedDialogWithFirstTitle:(id)a3 count:(int64_t)a4;
- (void)addPurchases:(id)a3;
- (void)beginPurchaseBatch:(id)a3;
- (void)cancelPurchasesForDownloadsWithIdentifiers:(id)a3;
- (void)dealloc;
- (void)start;
@end

@implementation PurchaseController

+ (id)sharedController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100214C60;
  block[3] = &unk_100327378;
  block[4] = a1;
  if (qword_100384170 != -1)
  {
    dispatch_once(&qword_100384170, block);
  }

  return qword_100384168;
}

- (PurchaseController)init
{
  v4.receiver = self;
  v4.super_class = PurchaseController;
  v2 = [(PurchaseController *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.PurchaseController", 0);
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"_clientDisconnectNotification:" object:@"XPCClientDisconnectNotification", 0];
  }

  return v2;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"XPCClientDisconnectNotification", 0];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4 = +[Daemon daemon];
  v5 = v4;
  if (self->_authenticationOperationQueue)
  {
    [v4 removeKeepAliveOperationQueue:?];
  }

  if (self->_purchaseOperationQueue)
  {
    [v5 removeKeepAliveOperationQueue:?];
  }

  v6.receiver = self;
  v6.super_class = PurchaseController;
  [(PurchaseController *)&v6 dealloc];
}

- (void)addPurchases:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100214CF4;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = a3;
  [(PurchaseController *)self _dispatchAsync:v3];
}

- (void)beginPurchaseBatch:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100214D70;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = a3;
  [(PurchaseController *)self _dispatchAsync:v3];
}

- (void)cancelPurchasesForDownloadsWithIdentifiers:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100214DEC;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = a3;
  [(PurchaseController *)self _dispatchAsync:v3];
}

- (void)start
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10021556C;
  v2[3] = &unk_100327378;
  v2[4] = self;
  [(PurchaseController *)self _dispatchAsync:v2];
}

+ (void)addPurchasesWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100215604;
  v4[3] = &unk_10032C660;
  v4[4] = a3;
  [+[PurchaseController sharedController](PurchaseController "sharedController")];
}

+ (void)cancelPurchasesWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100215754;
  v4[3] = &unk_10032C660;
  v4[5] = a3;
  [+[PurchaseController sharedController](PurchaseController "sharedController")];
}

+ (void)connectClientWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002158A0;
  v4[3] = &unk_10032C660;
  v4[4] = a3;
  [+[PurchaseController sharedController](PurchaseController "sharedController")];
}

+ (void)getPurchasesWithMessage:(id)a3 connection:(id)a4
{
  v6 = +[PurchaseController sharedController];

  [v6 _handleMessage:a3 connection:a4 usingReplyBlock:&stru_10032C6A0];
}

+ (void)finishPurchasesWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100215D04;
  v4[3] = &unk_10032C660;
  v4[4] = a3;
  [+[PurchaseController sharedController](PurchaseController "sharedController")];
}

+ (void)insertPurchasesWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100215E54;
  v4[3] = &unk_10032C660;
  v4[4] = a3;
  [+[PurchaseController sharedController](PurchaseController "sharedController")];
}

+ (void)movePurchasesWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100215FBC;
  v4[3] = &unk_10032C660;
  v4[4] = a3;
  [+[PurchaseController sharedController](PurchaseController "sharedController")];
}

+ (void)observeXPCServer:(id)a3
{
  [a3 addObserver:a1 selector:"addPurchasesWithMessage:connection:" forMessage:98];
  [a3 addObserver:a1 selector:"cancelPurchasesWithMessage:connection:" forMessage:99];
  [a3 addObserver:a1 selector:"connectClientWithMessage:connection:" forMessage:104];
  [a3 addObserver:a1 selector:"getPurchasesWithMessage:connection:" forMessage:100];
  [a3 addObserver:a1 selector:"finishPurchasesWithMessage:connection:" forMessage:101];
  [a3 addObserver:a1 selector:"insertPurchasesWithMessage:connection:" forMessage:102];

  [a3 addObserver:a1 selector:"movePurchasesWithMessage:connection:" forMessage:103];
}

- (void)_addEncodedPurchases:(id)a3 forClient:(id)a4
{
  v6 = [(PurchaseController *)self _newPurchasesFromEncodedArray:a3 client:?];
  [(PurchaseController *)self _addPurchases:v6 forClient:a4];
}

- (void)_cancelEncodedPurchases:(id)a3 forClient:(id)a4
{
  if (a3 && xpc_get_type(a3) == &_xpc_type_array)
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

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v16 = 138412802;
      v17 = objc_opt_class();
      v18 = 2048;
      count = xpc_array_get_count(a3);
      v20 = 2112;
      v21 = a4;
      LODWORD(v14) = 32;
      v13 = &v16;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4, &v16, v14];
        free(v11);
        v13 = v12;
        SSFileLog();
      }
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002163C8;
    v15[3] = &unk_10032C718;
    v15[4] = a3;
    v15[5] = self;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
  }
}

- (void)_connectClient:(id)a3 withOutputConnection:(id)a4
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

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    *v17 = 138412546;
    *&v17[4] = objc_opt_class();
    *&v17[12] = 2112;
    *&v17[14] = a3;
    LODWORD(v15) = 22;
    v14 = v17;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4, v17, v15];
      free(v11);
      v14 = v12;
      SSFileLog();
    }
  }

  v13 = [a3 outputConnection] == 0;
  [a3 setOutputConnectionWithConnection:a4];
  [a3 ackConnection];
  if (v13 && [a3 finishesPurchases])
  {
    *v17 = 0;
    *&v17[8] = v17;
    *&v17[16] = 0x3052000000;
    v18 = sub_100215494;
    v19 = sub_1002154A4;
    v20 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1002167A0;
    v16[3] = &unk_10032C638;
    v16[5] = a3;
    v16[6] = v17;
    v16[4] = self;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
    if ([*(*&v17[8] + 40) count])
    {
      [a3 sendResponses:*(*&v17[8] + 40)];
    }

    _Block_object_dispose(v17, 8);
  }
}

- (void)_finishEncodedPurchaseIdentifiers:(id)a3 forClient:(id)a4
{
  if (a3 && xpc_get_type(a3) == &_xpc_type_array)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v15 = 138412802;
      v16 = objc_opt_class();
      v17 = 2048;
      count = xpc_array_get_count(a3);
      v19 = 2112;
      v20 = a4;
      LODWORD(v13) = 32;
      v12 = &v15;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4, &v15, v13];
        free(v10);
        v12 = v11;
        SSFileLog();
      }
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1002169EC;
    v14[3] = &unk_10032C740;
    v14[4] = a3;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
  }
}

- (void)_insertEncodedPurchases:(id)a3 afterPurchaseID:(int64_t)a4 forClient:(id)a5
{
  v8 = [(PurchaseController *)self _newPurchasesFromEncodedArray:a3 client:a5];
  if ([v8 count])
  {
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

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *v42 = 138412802;
      *&v42[4] = objc_opt_class();
      *&v42[12] = 2048;
      *&v42[14] = [v8 count];
      *&v42[22] = 2112;
      v43 = a5;
      LODWORD(v27) = 32;
      v25 = v42;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, v42, v27];
        free(v13);
        v25 = v14;
        SSFileLog();
      }
    }

    *v42 = 0;
    *&v42[8] = v42;
    *&v42[16] = 0x3052000000;
    v43 = sub_100215494;
    v44 = sub_1002154A4;
    v45 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3052000000;
    v33 = sub_100215494;
    v34 = sub_1002154A4;
    v35 = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100216FA8;
    v29[3] = &unk_10032C790;
    v29[4] = self;
    v29[5] = v8;
    v29[8] = &v30;
    v29[9] = a4;
    v29[6] = a5;
    v29[7] = v42;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
    if ([*(*&v42[8] + 40) count])
    {
      v15 = +[SSLogConfig sharedDaemonConfig];
      if (!v15)
      {
        v15 = +[SSLogConfig sharedConfig];
      }

      v16 = [v15 shouldLog];
      v17 = [v15 shouldLogToDisk];
      v18 = [v15 OSLogObject];
      if (v17)
      {
        v16 |= 2u;
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v16 &= 2u;
      }

      if (v16)
      {
        v19 = objc_opt_class();
        v20 = [*(*&v42[8] + 40) count];
        v36 = 138412802;
        v37 = v19;
        v38 = 2048;
        v39 = v20;
        v40 = 2112;
        v41 = a5;
        LODWORD(v27) = 32;
        v26 = &v36;
        v21 = _os_log_send_and_compose_impl();
        if (v21)
        {
          v22 = v21;
          v23 = [NSString stringWithCString:v21 encoding:4, &v36, v27];
          free(v22);
          v26 = v23;
          SSFileLog();
        }
      }

      v24 = *(*&v42[8] + 40);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10021723C;
      v28[3] = &unk_10032C7B8;
      v28[4] = a5;
      [v24 enumerateKeysAndObjectsUsingBlock:{v28, v26}];
    }

    [(PurchaseController *)self _authenticateForPurchases:v31[5] client:a5];
    [(PurchaseController *)self _enqueueNextPurchase];

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(v42, 8);
  }
}

- (void)_markInFlightCanceledPurchaseIdentifier:(id)a3
{
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

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v14 = 138412546;
    v15 = objc_opt_class();
    v16 = 2112;
    v17 = a3;
    LODWORD(v13) = 22;
    v12 = &v14;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4, &v14, v13];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  inflightCanceledIdentifiers = self->_inflightCanceledIdentifiers;
  if (!inflightCanceledIdentifiers)
  {
    inflightCanceledIdentifiers = objc_alloc_init(NSMutableSet);
    self->_inflightCanceledIdentifiers = inflightCanceledIdentifiers;
  }

  [(NSMutableSet *)inflightCanceledIdentifiers addObject:a3, v12];
}

- (void)_moveEncodedPurchaseIDs:(id)a3 afterPurchaseID:(int64_t)a4 forClient:(id)a5
{
  v7 = [(PurchaseController *)self _newPurchaseIdentifiersFromEncodedArray:a3, a4, a5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100217514;
  v8[3] = &unk_10032C7E0;
  v8[4] = v7;
  v8[5] = a4;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  [(PurchaseController *)self _enqueueNextPurchase];
}

- (id)_newResponsesToPurchasesForClient:(id)a3 inDatabase:(id)a4
{
  v6 = objc_alloc_init(NSMutableArray);
  v11[0] = +[SSSQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"client_id", [a3 uniqueIdentifier]);
  v11[1] = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:2];
  v10 = @"order_id";
  v9[0] = @"encoded_data";
  v9[1] = @"encoded_error";
  v9[2] = @"encoded_response";
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002176CC;
  v8[3] = &unk_100327288;
  v8[4] = v6;
  [+[PurchaseEntity queryWithDatabase:predicate:orderingProperties:](PurchaseEntity queryWithDatabase:a4 predicate:+[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:](SSSQLiteCompoundPredicate orderingProperties:{"predicateMatchingAllPredicates:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v11, 2)), +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v10, 1)), "enumeratePersistentIDsAndProperties:count:usingBlock:", v9, 3, v8}];
  return v6;
}

- (void)_clientDisconnectNotification:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 finishesPurchases])
    {
      dispatchQueue = self->_dispatchQueue;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10021788C;
      v6[3] = &unk_100327350;
      v6[4] = self;
      v6[5] = v4;
      dispatch_async(dispatchQueue, v6);
    }
  }
}

- (void)_addPurchases:(id)a3 forClient:(id)a4
{
  if ([a3 count])
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

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      *v40 = 138412802;
      *&v40[4] = objc_opt_class();
      *&v40[12] = 2048;
      *&v40[14] = [a3 count];
      *&v40[22] = 2112;
      v41 = a4;
      LODWORD(v25) = 32;
      v23 = v40;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4, v40, v25];
        free(v11);
        v23 = v12;
        SSFileLog();
      }
    }

    *v40 = 0;
    *&v40[8] = v40;
    *&v40[16] = 0x3052000000;
    v41 = sub_100215494;
    v42 = sub_1002154A4;
    v43 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3052000000;
    v31 = sub_100215494;
    v32 = sub_1002154A4;
    v33 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100217D24;
    v27[3] = &unk_10032C808;
    v27[4] = self;
    v27[5] = a3;
    v27[7] = v40;
    v27[8] = &v28;
    v27[6] = a4;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
    if ([*(*&v40[8] + 40) count])
    {
      v13 = +[SSLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      v14 = [v13 shouldLog];
      v15 = [v13 shouldLogToDisk];
      v16 = [v13 OSLogObject];
      if (v15)
      {
        v14 |= 2u;
      }

      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v17 = objc_opt_class();
        v18 = [*(*&v40[8] + 40) count];
        v34 = 138412802;
        v35 = v17;
        v36 = 2048;
        v37 = v18;
        v38 = 2112;
        v39 = a4;
        LODWORD(v25) = 32;
        v24 = &v34;
        v19 = _os_log_send_and_compose_impl();
        if (v19)
        {
          v20 = v19;
          v21 = [NSString stringWithCString:v19 encoding:4, &v34, v25];
          free(v20);
          v24 = v21;
          SSFileLog();
        }
      }

      v22 = *(*&v40[8] + 40);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100217FB4;
      v26[3] = &unk_10032C7B8;
      v26[4] = a4;
      [v22 enumerateKeysAndObjectsUsingBlock:{v26, v24}];
    }

    if ([v29[5] count])
    {
      [(PurchaseController *)self _beginPurchaseBatch:v29[5] forClient:a4];
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(v40, 8);
  }
}

- (void)_authenticateForPurchases:(id)a3 client:(id)a4
{
  if (SSRestrictionsShouldRequirePasswordImmediately() && [a3 count] >= 2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(a3);
        }

        if ([*(*(&v15 + 1) + 8 * v10) ignoresForcedPasswordRestriction])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v11 = [objc_msgSend(a3 objectAtIndex:{0), "batchIdentifier"}];
      authenticatingBatchIdentifiers = self->_authenticatingBatchIdentifiers;
      if (!authenticatingBatchIdentifiers)
      {
        authenticatingBatchIdentifiers = objc_alloc_init(NSMutableIndexSet);
        self->_authenticatingBatchIdentifiers = authenticatingBatchIdentifiers;
      }

      [(NSMutableIndexSet *)authenticatingBatchIdentifiers addIndex:v11];
      v13 = [[PurchaseAuthenticateOperation alloc] initWithPurchases:a3];
      -[PurchaseAuthenticateOperation setClientIdentifierHeader:](v13, "setClientIdentifierHeader:", [a4 clientIdentifierHeader]);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10021824C;
      v14[3] = &unk_10032C830;
      v14[5] = a4;
      v14[6] = v11;
      v14[4] = [SSWeakReference weakReferenceWithObject:self];
      [(PurchaseAuthenticateOperation *)v13 setAuthenticationBlock:v14];
      [-[PurchaseController _authenticationOperationQueue](self "_authenticationOperationQueue")];
    }
  }
}

- (id)_authenticationOperationQueue
{
  result = self->_authenticationOperationQueue;
  if (!result)
  {
    v4 = objc_alloc_init(ISOperationQueue);
    self->_authenticationOperationQueue = v4;
    [(ISOperationQueue *)v4 setMaxConcurrentOperationCount:1];
    [(ISOperationQueue *)self->_authenticationOperationQueue setName:@"com.apple.itunesstored.PurchaseController.auth"];
    [+[Daemon daemon](Daemon "daemon")];
    return self->_authenticationOperationQueue;
  }

  return result;
}

- (void)_beginPurchaseBatch:(id)a3 forClient:(id)a4
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v29;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(a3);
      }

      v12 = *(*(&v28 + 1) + 8 * i);
      if ([v12 createsDownloads])
      {
        v9 += [v12 expectedDownloadFileSize];
      }
    }

    v8 = [a3 countByEnumeratingWithState:&v28 objects:v38 count:16];
  }

  while (v8);
  if (v9)
  {
    v13 = [NSDictionary alloc];
    v14 = [NSNumber numberWithInteger:1];
    v15 = [v13 initWithObjectsAndKeys:{v14, kCPFreeSpaceEffortLevelKey, 0}];
    v16 = [NSURL fileURLWithPath:NSHomeDirectory()];
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    if (!os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v20 = objc_opt_class();
      v21 = [a3 count];
      v32 = 138412802;
      v33 = v20;
      v34 = 2048;
      v35 = v9;
      v36 = 2048;
      v37 = v21;
      LODWORD(v26) = 32;
      v25 = &v32;
      v22 = _os_log_send_and_compose_impl();
      if (v22)
      {
        v23 = v22;
        v24 = [NSString stringWithCString:v22 encoding:4, &v32, v26];
        free(v23);
        v25 = v24;
        SSFileLog();
      }
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10021861C;
    v27[3] = &unk_10032C858;
    v27[4] = self;
    v27[5] = a3;
    v27[6] = a4;
    [+[ISDevice requestFreeSpace:v25]atPath:"requestFreeSpace:atPath:withOptions:completionBlock:" withOptions:v9 completionBlock:v16, v15, v27];
  }

  else
  {
LABEL_22:
    [(PurchaseController *)self _authenticateForPurchases:a3 client:a4];
    [(PurchaseController *)self _enqueueNextPurchase];
  }
}

- (void)_cancelPurchasesForLackOfDiskSpace:(id)a3 client:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100218D6C;
  v7[3] = &unk_10032C740;
  v7[4] = a3;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  [a4 sendError:SSError() forPurchases:a3];
  [(PurchaseController *)self _showNotEnoughDiskSpaceDialogForPurchases:a3];
}

- (BOOL)_cancelPurchasesWithBatchIdentifier:(int64_t)a3 client:(id)a4 response:(id)a5
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v9 = objc_alloc_init(NSMutableArray);
  v10 = [(PurchaseController *)self _newEncodedPurchaseEntityPropertiesWithResponse:a5];
  if (a4)
  {
    v11 = [a4 finishesPurchases] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100218FD8;
  v14[3] = &unk_10032C8A8;
  v15 = v11;
  v14[6] = &v16;
  v14[7] = a3;
  v14[4] = v9;
  v14[5] = v10;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  if (*(v17 + 24) == 1 && [v9 count])
  {
    [a4 sendResponse:a5 forPurchases:v9];
  }

  v12 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v12;
}

- (void)_checkStoreDownloadQueuesForPurchase:(id)a3 response:(id)a4
{
  v6 = [a3 valueForDownloadProperty:SSDownloadPropertyKind];
  v7 = [a4 userIdentifier];
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
    v15 = 138412546;
    v16 = objc_opt_class();
    v17 = 2112;
    v18 = v6;
    LODWORD(v14) = 22;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      [NSString stringWithCString:v11 encoding:4, &v15, v14];
      free(v12);
      SSFileLog();
    }
  }

  if (v6)
  {
    if (v7)
    {
      v13 = objc_alloc_init(StoreDownloadQueueRequest);
      [(StoreDownloadQueueRequest *)v13 setAccountIdentifier:v7];
      -[StoreDownloadQueueRequest setCancelsDuplicateDownloads:](v13, "setCancelsDuplicateDownloads:", [objc_msgSend(a3 valueForDownloadProperty:{SSDownloadPropertyShouldCancelIfDuplicate), "BOOLValue"}]);
      -[StoreDownloadQueueRequest setPurchaseIdentifier:](v13, "setPurchaseIdentifier:", [a3 uniqueIdentifier]);
      [(StoreDownloadQueueRequest *)v13 setQueueIdentifier:sub_10012E754(v6)];
      [(StoreDownloadQueueRequest *)v13 setReason:@"trigger-download"];
      [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue "sharedDownloadQueue")];
    }
  }

  else
  {
    [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue "sharedDownloadQueue")];
  }
}

- (id)_clientForMessage:(id)a3 connection:(id)a4
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  clients = self->_clients;
  v8 = [(NSMutableArray *)clients countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {
LABEL_13:
    if ((SSXPCConnectionHasEntitlement() & 1) == 0 && !SSXPCConnectionHasEntitlement())
    {
      return 0;
    }

    v12 = [[PurchaseManagerClient alloc] initWithInputConnection:a4];
    v15 = self->_clients;
    if (!v15)
    {
      v15 = objc_alloc_init(NSMutableArray);
      self->_clients = v15;
    }

    [(NSMutableArray *)v15 addObject:v12];
    objc_opt_class();
    v16 = SSXPCDictionaryCopyCFObjectWithClass();
    v17 = [(XPCClient *)v12 clientIdentifier];
    if (v16 && v17)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1002196FC;
      v22[3] = &unk_10032C8D0;
      v22[4] = v17;
      v22[5] = v16;
      v22[6] = v12;
      [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
    }

    else if (!v16)
    {
LABEL_22:
      [(PurchaseManagerClient *)v12 setUseRemoteAuthentication:xpc_dictionary_get_BOOL(a3, "3")];
      v18 = v12;
      v19 = [[DownloadManagerClient alloc] initWithInputConnection:a4];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1002198D4;
      v21[3] = &unk_10032C740;
      v21[4] = v19;
      [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];

      return v12;
    }

    goto LABEL_22;
  }

  v9 = v8;
  v10 = *v24;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v24 != v10)
    {
      objc_enumerationMutation(clients);
    }

    v12 = *(*(&v23 + 1) + 8 * v11);
    v13 = [(XPCClient *)v12 copyInputConnection];
    xpc_release(v13);
    if (v13 == a4 && v12 != 0)
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = [(NSMutableArray *)clients countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }
  }
}

- (id)_clientForUniqueIdentifier:(int64_t)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  clients = self->_clients;
  v5 = [(NSMutableArray *)clients countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(clients);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 uniqueIdentifier] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)clients countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)_dispatchAsync:(id)a3
{
  [+[Daemon daemon](Daemon "daemon")];
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100219AA8;
  v6[3] = &unk_10032C8F8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(dispatchQueue, v6);
}

- (void)_enqueueNextPurchase
{
  if (![(NSMutableSet *)self->_purchasingIdentifiers count])
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3052000000;
    v16 = sub_100215494;
    v17 = sub_1002154A4;
    v18 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100219DBC;
    v12[3] = &unk_10032C948;
    v12[4] = self;
    v12[5] = &v13;
    v12[6] = v19;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
    if (v14[5])
    {
      v3 = [SSWeakReference weakReferenceWithObject:self];
      if ([v14[5] useRemoteAuthentication])
      {
        v4 = v14[5];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10021A1C0;
        v11[3] = &unk_10032C970;
        v11[4] = v3;
        v11[5] = v19;
        [v4 setRemoteAuthenticationHandler:v11];
      }

      v5 = v14[5];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10021A21C;
      v10[3] = &unk_10032C998;
      v10[4] = v3;
      v10[5] = v19;
      [v5 setPurchaseBlock:v10];
      v6 = [v14[5] purchase];
      v7 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v6, "uniqueIdentifier")}];
      purchasingIdentifiers = self->_purchasingIdentifiers;
      if (!purchasingIdentifiers)
      {
        purchasingIdentifiers = objc_alloc_init(NSMutableSet);
        self->_purchasingIdentifiers = purchasingIdentifiers;
      }

      [(NSMutableSet *)purchasingIdentifiers addObject:v7];

      if ([v6 displaysOnLockScreen])
      {
        GSEventResetIdleTimer();
      }

      v9 = [(PurchaseController *)self _purchaseOperationQueue];
      [v9 addOperation:v14[5]];
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(v19, 8);
  }
}

- (void)_filterPurchases:(id)a3 withTransaction:(id)a4 block:(id)a5
{
  v6 = objc_alloc_init(NSMutableDictionary);
  obj = a3;
  v29 = objc_alloc_init(NSMutableArray);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [a4 existingDownloadForPurchase:v11];
        [v13 valueForProperty:@"kind"];
        if (SSDebugShouldUseAppstored())
        {
          IsSoftwareKind = SSDownloadKindIsSoftwareKind();
        }

        else
        {
          IsSoftwareKind = 0;
        }

        if (SSDownloadKindIsBookToShimKind())
        {
          v15 = +[SSLogConfig sharedDaemonConfig];
          if (!v15)
          {
            v15 = +[SSLogConfig sharedConfig];
          }

          v16 = [v15 shouldLog];
          if ([v15 shouldLogToDisk])
          {
            v16 |= 2u;
          }

          if (os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v17 = v16;
          }

          else
          {
            v17 = v16 & 2;
          }

          if (v17)
          {
            v31[0] = 0;
            LODWORD(v26) = 2;
            v25 = v31;
            v18 = _os_log_send_and_compose_impl();
            if (v18)
            {
              v19 = v18;
              v20 = [NSString stringWithCString:v18 encoding:4, v31, v26];
              free(v19);
              v25 = v20;
              SSFileLog();
            }
          }

LABEL_23:
          [v29 addObject:{v11, v25}];
          goto LABEL_28;
        }

        v21 = IsSoftwareKind ^ 1;
        if (!v13)
        {
          v21 = 0;
        }

        if ((v21 & 1) == 0)
        {
          goto LABEL_23;
        }

        v22 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v13, "databaseID")}];
        v23 = [v6 objectForKey:v22];
        if (v23)
        {
          [v23 addObject:v11];
        }

        else
        {
          v24 = [[NSMutableArray alloc] initWithObjects:{v11, 0}];
          [v6 setObject:v24 forKey:v22];
        }

LABEL_28:
        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  (*(a5 + 2))(a5, v29, v6);
}

- (void)_finishAuthenticationRequestForBatchIdentifier:(int64_t)a3 client:(id)a4 withAccountID:(id)a5 error:(id)a6
{
  [NSNumber numberWithBool:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10021A650;
  v10[3] = &unk_100327F60;
  v10[4] = a5;
  v10[5] = self;
  v10[7] = a4;
  v10[8] = a3;
  v10[6] = SSErrorBySettingUserInfoValue();
  [(PurchaseController *)self _dispatchAsync:v10];
}

- (void)_sendAuthenticateRequestForClientUniqueID:(int64_t)a3 withContext:(id)a4 responseHandler:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10021AAAC;
  v5[3] = &unk_10032C9E0;
  v5[4] = self;
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = a3;
  [(PurchaseController *)self _dispatchAsync:v5];
}

- (void)_finishPurchaseRequestForClientUniqueID:(int64_t)a3 withResponse:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10021AB5C;
  v4[3] = &unk_10032A398;
  v4[5] = a4;
  v4[6] = a3;
  v4[4] = self;
  [(PurchaseController *)self _dispatchAsync:v4];
}

- (void)_garbageCollectInflightPurchases
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10021B19C;
  v2[3] = &unk_10032C740;
  v2[4] = self;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
}

- (void)_handleMessage:(id)a3 connection:(id)a4 usingReplyBlock:(id)a5
{
  xpc_retain(a4);
  xpc_retain(a3);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10021B78C;
  v9[3] = &unk_10032AFB8;
  v9[4] = self;
  v9[5] = a3;
  v9[6] = a4;
  v9[7] = a5;
  [(PurchaseController *)self _dispatchAsync:v9];
}

- (id)_newEncodedPurchaseEntityPropertiesWithResponse:(id)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  if ([a3 error])
  {
    [a3 error];
    ArchivableData = SSCodingCreateArchivableData();
    if (ArchivableData)
    {
      v6 = ArchivableData;
      [v4 setObject:ArchivableData forKey:@"encoded_error"];
    }
  }

  v7 = [objc_msgSend(a3 "URLResponse")];
  if (v7)
  {
    [v4 setObject:v7 forKey:@"encoded_response"];
  }

  return v4;
}

- (id)_newPurchaseIdentifiersFromEncodedArray:(id)a3
{
  v4 = objc_alloc_init(NSMutableOrderedSet);
  if (a3 && xpc_get_type(a3) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10021B964;
    applier[3] = &unk_100327FB0;
    applier[4] = v4;
    xpc_array_apply(a3, applier);
  }

  return v4;
}

- (id)_newPurchasesFromEncodedArray:(id)a3 client:(id)a4
{
  if (!a3 || xpc_get_type(a3) != &_xpc_type_array)
  {
    return 0;
  }

  v7 = [a4 userAgent];
  v6 = objc_alloc_init(NSMutableArray);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10021BAB0;
  v9[3] = &unk_10032C6F0;
  v9[4] = v7;
  v9[5] = v6;
  xpc_array_apply(a3, v9);
  return v6;
}

- (id)_placeholderAppPathForBundleIdentifier:(id)a3
{
  v3 = [[NSArray alloc] initWithObjects:{-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1), "lastObject"), @"com.apple.iTunesStore", a3, 0}];
  v4 = [[NSString pathWithComponents:?], "stringByAppendingPathExtension:", @"app"];

  return v4;
}

- (id)_purchaseOperationQueue
{
  result = self->_purchaseOperationQueue;
  if (!result)
  {
    v4 = objc_alloc_init(ISOperationQueue);
    self->_purchaseOperationQueue = v4;
    [(ISOperationQueue *)v4 setMaxConcurrentOperationCount:1];
    [(ISOperationQueue *)self->_purchaseOperationQueue setName:@"com.apple.itunesstored.PurchaseController.purchase"];
    [+[Daemon daemon](Daemon "daemon")];
    return self->_purchaseOperationQueue;
  }

  return result;
}

- (void)_showNotEnoughDiskSpaceDialogForPurchases:(id)a3
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"NOT_ENOUGH_SPACE_TITLE", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, v5);
  v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"OK", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v6);
  v7 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"NOT_ENOUGH_SPACE_SETTINGS", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v7);
  CFDictionarySetValue(Mutable, SBUserNotificationDefaultButtonTag, [NSNumber numberWithInt:1]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    v11 = SSDownloadPropertyTitle;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v13 = [*(*(&v25 + 1) + 8 * i) valueForDownloadProperty:v11];
        if (v13)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:
  v15 = [a3 count];
  if ([v14 length])
  {
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    if (v15 == 2)
    {
      v18 = @"NOT_ENOUGH_SPACE_SPECIFIC_PLUS_ONE_%@";
    }

    else
    {
      v17 = v15 - 1;
      if (v17)
      {
        v21 = [(NSBundle *)v16 localizedStringForKey:@"NOT_ENOUGH_SPACE_SPECIFIC_PLURAL_%@_%ld" value:&stru_10033CC30 table:0];
        v24 = v17;
        goto LABEL_20;
      }

      v18 = @"NOT_ENOUGH_SPACE_SPECIFIC_%@";
    }

    v21 = [(NSBundle *)v16 localizedStringForKey:v18 value:&stru_10033CC30 table:0];
LABEL_20:
    v22 = [NSString stringWithFormat:v21, v14, v24];
    goto LABEL_23;
  }

  v19 = [NSBundle bundleForClass:objc_opt_class()];
  if (v15 == 1)
  {
    v20 = @"NOT_ENOUGH_SPACE_SINGULAR";
  }

  else
  {
    v20 = @"NOT_ENOUGH_SPACE_PLURAL";
  }

  v22 = [(NSBundle *)v19 localizedStringForKey:v20 value:&stru_10033CC30 table:0];
LABEL_23:
  CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, v22);
  v23 = [[ISUserNotification alloc] initWithDictionary:Mutable options:3];
  [+[UserNotificationCenter defaultCenter](UserNotificationCenter "defaultCenter")];

  CFRelease(Mutable);
}

- (void)_showPurchasesFailedDialogWithFirstTitle:(id)a3 count:(int64_t)a4
{
  v13 = objc_alloc_init(ISDialog);
  v6 = [a3 length];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  if (!v6)
  {
    [v13 setTitle:{-[NSBundle localizedStringForKey:value:table:](v7, "localizedStringForKey:value:table:", @"GENERIC_PURCHASE_ERROR", &stru_10033CC30, 0)}];
    goto LABEL_10;
  }

  [v13 setTitle:{-[NSBundle localizedStringForKey:value:table:](v7, "localizedStringForKey:value:table:", @"SPECIFIC_PURCHASE_ERROR_TITLE", &stru_10033CC30, 0)}];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  if (a4 == 2)
  {
    v10 = @"SPECIFIC_PURCHASE_ERROR_BODY_PLUS_ONE_%@";
  }

  else
  {
    v9 = a4 - 1;
    if (v9)
    {
      v11 = [(NSBundle *)v8 localizedStringForKey:@"SPECIFIC_PURCHASE_ERROR_BODY_PLURAL_%@_%ld" value:&stru_10033CC30 table:0];
      v12 = v9;
      goto LABEL_9;
    }

    v10 = @"SPECIFIC_PURCHASE_ERROR_BODY_%@";
  }

  v11 = [(NSBundle *)v8 localizedStringForKey:v10 value:&stru_10033CC30 table:0];
LABEL_9:
  [v13 setMessage:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", v11, a3, v12)}];
LABEL_10:
  [v13 setButtons:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", +[ISDialogButton buttonWithTitle:](ISDialogButton, "buttonWithTitle:", -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"OK", &stru_10033CC30, 0)))}];
  [+[UserNotificationCenter defaultCenter](UserNotificationCenter "defaultCenter")];
}

@end