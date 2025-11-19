@interface MicroPaymentQueue
+ (id)paymentQueue;
- (BOOL)_inAppReviewEnabled;
- (BOOL)_isAppStoreInstallationAllowed;
- (MicroPaymentQueue)init;
- (id)_beginManagedContextSession;
- (id)_clientForConnection:(id)a3 paymentQueueClient:(id)a4;
- (id)_clientForObjectID:(id)a3;
- (id)_clientForPayment:(id)a3;
- (id)_clients;
- (id)_copyDownloadsIDsFromMessage:(id)a3 key:(const char *)a4;
- (id)_firstReadyPaymentInContext:(id)a3;
- (id)_inAppReviewRequestConstants;
- (id)_newPaymentQueueClientWithMessage:(id)a3 connection:(id)a4 parameter:(const char *)a5;
- (void)_clientDisconnectNotification:(id)a3;
- (void)_dispatchAsync:(id)a3;
- (void)_enumerateDownloadsForIdentifiers:(id)a3 context:(id)a4 usingBlock:(id)a5;
- (void)_finishPaymentOperationForPaymentID:(id)a3 result:(BOOL)a4 error:(id)a5;
- (void)_networkTypeChanged:(id)a3;
- (void)_refreshDidFinishNotification:(id)a3;
- (void)_sendPurchaseIntentsForApp:(id)a3 storeKitClient:(id)a4 force:(BOOL)a5;
- (void)_setActivePaymentID:(id)a3;
- (void)_startFirstReadyPayment;
- (void)addInAppReviewRequestWithMessage:(id)a3 connection:(id)a4;
- (void)addPaymentWithMessage:(id)a3 connection:(id)a4;
- (void)addPurchaseIntentWithMessage:(id)a3 connection:(id)a4;
- (void)addPurchaseIntentWithProductIdentifier:(id)a3 productName:(id)a4 appBundleId:(id)a5 appName:(id)a6;
- (void)cancelDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)cancelRequestWithMessage:(id)a3 connection:(id)a4;
- (void)checkQueueForClientWithIdentifier:(id)a3 URLBagContext:(id)a4;
- (void)checkQueueForClientWithMessage:(id)a3 connection:(id)a4;
- (void)connectedAppEnteredForegroundWithMessage:(id)a3 connection:(id)a4;
- (void)dealloc;
- (void)failDownloadsWithIdentifiers:(id)a3;
- (void)finishDownloadsWithIdentifiers:(id)a3;
- (void)finishPaymentWithMessage:(id)a3 connection:(id)a4;
- (void)forceSandboxWithMessage:(id)a3 connection:(id)a4;
- (void)getTransactionsWithMessage:(id)a3 connection:(id)a4;
- (void)installSheetStateUpdatedWithMessage:(id)a3 connection:(id)a4;
- (void)notifyClientsOfExternalPropertyChanges:(id)a3 ofDownloadID:(int64_t)a4;
- (void)observeXPCServer:(id)a3;
- (void)pauseDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)productsRequestWithMessage:(id)a3 connection:(id)a4;
- (void)registerClientWithMessage:(id)a3 connection:(id)a4;
- (void)resetInAppReviewRequestsWithMessage:(id)a3 connection:(id)a4;
- (void)restoreCompletedTransactionsWithMessage:(id)a3 connection:(id)a4;
- (void)resumeDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)start;
- (void)startDownloadsWithMessage:(id)a3 connection:(id)a4;
- (void)startFirstReadyPayment;
- (void)updateDeferredPaymentWithMessage:(id)a3 connection:(id)a4;
- (void)updateInAppReviewRequestWithMessage:(id)a3 connection:(id)a4;
- (void)updateWithPurchaseResponse:(id)a3;
@end

@implementation MicroPaymentQueue

- (MicroPaymentQueue)init
{
  v8.receiver = self;
  v8.super_class = MicroPaymentQueue;
  v2 = [(MicroPaymentQueue *)&v8 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunestored.MicroPaymentQueue", 0);
    v2->_purchaseActionsDBQueue = dispatch_queue_create("com.apple.itunestored.MicroPaymentQueue.PurchaseActionsDBQueue", 0);
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MicroPaymentQueueAlive", kSSUserDefaultsIdentifier, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v4 = AppIntegerValue;
    }

    else
    {
      v4 = -1;
    }

    v2->_aliveState = v4;
    v5 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v5 addObserver:v2 selector:"_refreshDidFinishNotification:" name:@"StoreKitClientRefreshDidFinishNotification" object:0];
    [(NSNotificationCenter *)v5 addObserver:v2 selector:"_clientDisconnectNotification:" name:@"XPCClientDisconnectNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:ISNetworkTypeChangedNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:@"StoreKitClientRefreshDidFinishNotification" object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:@"XPCClientDisconnectNotification" object:0];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  purchaseActionsDBQueue = self->_purchaseActionsDBQueue;
  if (purchaseActionsDBQueue)
  {
    dispatch_release(purchaseActionsDBQueue);
  }

  v6.receiver = self;
  v6.super_class = MicroPaymentQueue;
  [(MicroPaymentQueue *)&v6 dealloc];
}

+ (id)paymentQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BBFEC;
  block[3] = &unk_100327378;
  block[4] = a1;
  if (qword_100383E50 != -1)
  {
    dispatch_once(&qword_100383E50, block);
  }

  return qword_100383E48;
}

- (void)addPurchaseIntentWithProductIdentifier:(id)a3 productName:(id)a4 appBundleId:(id)a5 appName:(id)a6
{
  if (!a5)
  {
    v25 = [SSLogConfig sharedDaemonConfig:a3];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    v26 = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      v27 = v26 | 2;
    }

    else
    {
      v27 = v26;
    }

    if (!os_log_type_enabled([v25 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v27 &= 2u;
    }

    if (!v27)
    {
      return;
    }

    v40 = 138543618;
    v41 = objc_opt_class();
    v42 = 2112;
    v43 = a3;
    LODWORD(v38) = 22;
    v28 = _os_log_send_and_compose_impl();
    if (!v28)
    {
      return;
    }

LABEL_32:
    v29 = v28;
    [NSString stringWithCString:v28 encoding:4, &v40, v38];
    free(v29);
LABEL_54:
    SSFileLog();
    return;
  }

  v10 = +[SSLogConfig sharedDaemonConfig];
  v11 = v10;
  if (!a3)
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v30 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v31 = v30 | 2;
    }

    else
    {
      v31 = v30;
    }

    if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v31 &= 2u;
    }

    if (!v31)
    {
      return;
    }

    v40 = 138543618;
    v41 = objc_opt_class();
    v42 = 2112;
    v43 = a5;
    LODWORD(v38) = 22;
    v28 = _os_log_send_and_compose_impl();
    if (!v28)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!v10)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (v13)
  {
    v40 = 138544386;
    v41 = objc_opt_class();
    v42 = 2114;
    v43 = a3;
    v44 = 2114;
    v45 = a4;
    v46 = 2114;
    v47 = a5;
    v48 = 2114;
    v49 = a6;
    LODWORD(v38) = 52;
    v37 = &v40;
    v14 = _os_log_send_and_compose_impl();
    if (v14)
    {
      v15 = v14;
      v16 = [NSString stringWithCString:v14 encoding:4, &v40, v38];
      free(v15);
      v37 = v16;
      SSFileLog();
    }
  }

  v17 = objc_alloc_init(PurchaseIntent);
  [(PurchaseIntent *)v17 setProductIdentifier:a3];
  [(PurchaseIntent *)v17 setProductName:a4];
  [(PurchaseIntent *)v17 setAppBundleId:a5];
  [(PurchaseIntent *)v17 setAppName:a6];
  [+[NSDate date](NSDate timeIntervalSince1970];
  [(PurchaseIntent *)v17 setTimestamp:[NSNumber numberWithLongLong:v18]];
  [+[PurchaseActionsManager sharedInstance](PurchaseActionsManager insertPurchaseIntent:"insertPurchaseIntent:", v17];

  v39 = 0;
  [+[SpringBoardUtility sharedInstance](SpringBoardUtility launchApplicationWithIdentifier:"launchApplicationWithIdentifier:options:error:" options:a5 error:0, &v39];
  v19 = v39;
  v20 = +[SSLogConfig sharedDaemonConfig];
  v21 = v20;
  if (v19)
  {
    if (!v20)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v24 = objc_opt_class();
      v40 = 138543874;
      v41 = v24;
      v42 = 2114;
      v43 = a5;
      v44 = 2114;
      v45 = v39;
      LODWORD(v38) = 32;
LABEL_52:
      v35 = _os_log_send_and_compose_impl();
      if (!v35)
      {
        return;
      }

      v36 = v35;
      [NSString stringWithCString:v35 encoding:4, &v40, v38];
      free(v36);
      goto LABEL_54;
    }
  }

  else
  {
    if (!v20)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v32 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v33 = v32 | 2;
    }

    else
    {
      v33 = v32;
    }

    if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v33 &= 2u;
    }

    if (v33)
    {
      v34 = objc_opt_class();
      v40 = 138543618;
      v41 = v34;
      v42 = 2114;
      v43 = a5;
      LODWORD(v38) = 22;
      goto LABEL_52;
    }
  }
}

- (void)checkQueueForClientWithIdentifier:(id)a3 URLBagContext:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BC680;
  v4[3] = &unk_1003273E0;
  v4[4] = a4;
  v4[5] = self;
  v4[6] = a3;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)failDownloadsWithIdentifiers:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BCA10;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = a3;
  [(MicroPaymentQueue *)self _dispatchAsync:v3];
}

- (void)finishDownloadsWithIdentifiers:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BD0A0;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = a3;
  [(MicroPaymentQueue *)self _dispatchAsync:v3];
}

- (void)notifyClientsOfExternalPropertyChanges:(id)a3 ofDownloadID:(int64_t)a4
{
  v7 = [a3 objectForKey:SSDownloadExternalPropertyPercentComplete];
  v8 = [a3 objectForKey:SSDownloadPropertyDownloadPhase];
  v9 = [a3 objectForKey:SSDownloadExternalPropertyEstimatedTimeRemaining];
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10 || v8 != 0)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BDC1C;
    v12[3] = &unk_100327F60;
    v12[7] = v9;
    v12[8] = a4;
    v12[4] = self;
    v12[5] = v8;
    v12[6] = v7;
    [(MicroPaymentQueue *)self _dispatchAsync:v12];
  }
}

- (void)observeXPCServer:(id)a3
{
  [a3 addObserver:self selector:"addPaymentWithMessage:connection:" forMessage:10000];
  [a3 addObserver:self selector:"cancelDownloadsWithMessage:connection:" forMessage:10007];
  [a3 addObserver:self selector:"cancelRequestWithMessage:connection:" forMessage:10003];
  [a3 addObserver:self selector:"checkQueueForClientWithMessage:connection:" forMessage:83];
  [a3 addObserver:self selector:"connectedAppEnteredForegroundWithMessage:connection:" forMessage:10012];
  [a3 addObserver:self selector:"finishPaymentWithMessage:connection:" forMessage:10001];
  [a3 addObserver:self selector:"getTransactionsWithMessage:connection:" forMessage:10006];
  [a3 addObserver:self selector:"pauseDownloadsWithMessage:connection:" forMessage:10008];
  [a3 addObserver:self selector:"productsRequestWithMessage:connection:" forMessage:10004];
  [a3 addObserver:self selector:"registerClientWithMessage:connection:" forMessage:10005];
  [a3 addObserver:self selector:"restoreCompletedTransactionsWithMessage:connection:" forMessage:10002];
  [a3 addObserver:self selector:"resumeDownloadsWithMessage:connection:" forMessage:10009];
  [a3 addObserver:self selector:"startDownloadsWithMessage:connection:" forMessage:10010];
  [a3 addObserver:self selector:"updateDeferredPaymentWithMessage:connection:" forMessage:143];
  [a3 addObserver:self selector:"addInAppReviewRequestWithMessage:connection:" forMessage:188];
  [a3 addObserver:self selector:"updateInAppReviewRequestWithMessage:connection:" forMessage:189];
  [a3 addObserver:self selector:"resetInAppReviewRequestsWithMessage:connection:" forMessage:190];
  [a3 addObserver:self selector:"addPurchaseIntentWithMessage:connection:" forMessage:10013];
  [a3 addObserver:self selector:"installSheetStateUpdatedWithMessage:connection:" forMessage:10014];

  [a3 addObserver:self selector:"forceSandboxWithMessage:connection:" forMessage:10015];
}

- (void)start
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000BE05C;
  v2[3] = &unk_100327378;
  v2[4] = self;
  [(MicroPaymentQueue *)self _dispatchAsync:v2];
}

- (void)startFirstReadyPayment
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000BE0DC;
  v2[3] = &unk_100327378;
  v2[4] = self;
  [(MicroPaymentQueue *)self _dispatchAsync:v2];
}

- (void)updateWithPurchaseResponse:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BE150;
  v3[3] = &unk_100327350;
  v3[4] = a3;
  v3[5] = self;
  [(MicroPaymentQueue *)self _dispatchAsync:v3];
}

- (void)addPaymentWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BE498;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = a3;
  v4[6] = a4;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)addPurchaseIntentWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BE644;
  v4[3] = &unk_1003273E0;
  v4[4] = a3;
  v4[5] = self;
  v4[6] = a4;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)cancelDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BE7CC;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = a3;
  v4[6] = a4;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)cancelRequestWithMessage:(id)a3 connection:(id)a4
{
  v5 = +[StoreKitRequestQueue sharedInstance];

  [(RequestQueue *)v5 cancelOperationForConnection:a4];
}

- (void)checkQueueForClientWithMessage:(id)a3 connection:(id)a4
{
  if (SSXPCConnectionHasEntitlement())
  {
    objc_opt_class();
    v7 = SSXPCDictionaryCopyCFObjectWithClass();
    v6 = [[SSURLBagContext alloc] initWithXPCEncoding:{xpc_dictionary_get_value(a3, "2")}];
    [(MicroPaymentQueue *)self checkQueueForClientWithIdentifier:v7 URLBagContext:v6];
  }
}

- (void)connectedAppEnteredForegroundWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BE9E8;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = a3;
  v4[6] = a4;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)forceSandboxWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BEC1C;
  v4[3] = &unk_100327350;
  v4[4] = a4;
  v4[5] = a3;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)finishPaymentWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BED70;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = a3;
  v4[6] = a4;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)getTransactionsWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BEE58;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = a3;
  v4[6] = a4;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)installSheetStateUpdatedWithMessage:(id)a3 connection:(id)a4
{
  if (xpc_dictionary_get_uint64(a3, "2"))
  {
    v6 = sub_10018E3C4(a3, "1");
  }

  else
  {
    v6 = 0;
  }

  [+[PurchaseActionsManager sharedInstance](PurchaseActionsManager setAppBundleIdForCurrentInstallSheet:"setAppBundleIdForCurrentInstallSheet:", v6];

  reply = xpc_dictionary_create_reply(a3);
  xpc_connection_send_message(a4, reply);

  xpc_release(reply);
}

- (void)pauseDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BF074;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = a3;
  v4[6] = a4;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)productsRequestWithMessage:(id)a3 connection:(id)a4
{
  v6 = +[StoreKitRequestQueue sharedInstance];

  [(StoreKitRequestQueue *)v6 requestProductsWithMessage:a3 connection:a4];
}

- (void)registerClientWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BF1BC;
  v4[3] = &unk_1003273E0;
  v4[4] = a3;
  v4[5] = self;
  v4[6] = a4;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)restoreCompletedTransactionsWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BF4CC;
  v4[3] = &unk_1003273E0;
  v4[4] = a3;
  v4[5] = self;
  v4[6] = a4;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)resumeDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BF5D0;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = a3;
  v4[6] = a4;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)startDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BF6D0;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = a3;
  v4[6] = a4;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)updateDeferredPaymentWithMessage:(id)a3 connection:(id)a4
{
  if ((SSXPCConnectionHasEntitlement() & 1) != 0 || SSXPCConnectionHasEntitlement())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000BF81C;
    v6[3] = &unk_100327350;
    v6[4] = a3;
    v6[5] = self;
    [(MicroPaymentQueue *)self _dispatchAsync:v6];
  }
}

- (void)addInAppReviewRequestWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BFFCC;
  v4[3] = &unk_1003273E0;
  v4[4] = a4;
  v4[5] = self;
  v4[6] = a3;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (id)_inAppReviewRequestConstants
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:&off_10034BCD0 forKey:@"inAppReviewRequestLimitWindow"];
  [v2 setObject:&off_10034BCE8 forKey:@"inAppReviewRequestsPerWindow"];
  [v2 setObject:&off_10034BCD0 forKey:@"inAppReviewRequiredDaysAfterReview"];
  [v2 setObject:&__kCFBooleanTrue forKey:@"inAppReviewRequireNewVersionAfterReview"];
  v3 = [[ISLoadURLBagOperation alloc] initWithBagContext:{+[SSURLBagContext contextWithBagType:](SSURLBagContext, "contextWithBagType:", 0)}];
  v4 = dispatch_semaphore_create(0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C0B1C;
  v6[3] = &unk_1003273E0;
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = v4;
  [v3 setCompletionBlock:v6];
  [+[ISOperationQueue mainQueue](ISOperationQueue "mainQueue")];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  return v2;
}

- (void)updateInAppReviewRequestWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C0CD8;
  v4[3] = &unk_1003273E0;
  v4[4] = a4;
  v4[5] = a3;
  v4[6] = self;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)resetInAppReviewRequestsWithMessage:(id)a3 connection:(id)a4
{
  if ((SSXPCConnectionHasEntitlement() & 1) != 0 || SSXPCConnectionHasEntitlement())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000C0FB8;
    v6[3] = &unk_100327350;
    v6[4] = a4;
    v6[5] = self;
    [(MicroPaymentQueue *)self _dispatchAsync:v6];
  }
}

- (BOOL)_inAppReviewEnabled
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(kSSUserDefaultsKeyInAppReviewEnabled, kSSUserDefaultsIdentifier, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 0;
  }

  return !v3;
}

- (BOOL)_isAppStoreInstallationAllowed
{
  v2 = +[MCProfileConnection sharedConnection];

  return [v2 isOnDeviceAppInstallationAllowed];
}

- (void)_clientDisconnectNotification:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C1234;
  v3[3] = &unk_100327350;
  v4 = self;
  v5 = [a3 object];
  [(MicroPaymentQueue *)v4 _dispatchAsync:v3];
}

- (void)_networkTypeChanged:(id)a3
{
  if ([+[ISNetworkObserver networkType:a3]])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000C14DC;
    v4[3] = &unk_100327378;
    v4[4] = self;
    [(MicroPaymentQueue *)self _dispatchAsync:v4];
  }
}

- (void)_refreshDidFinishNotification:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C15BC;
  v3[3] = &unk_100327378;
  v3[4] = self;
  [(MicroPaymentQueue *)self _dispatchAsync:v3];
}

- (id)_beginManagedContextSession
{
  if (!self->_clients)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000C1658;
    v3[3] = &unk_100327378;
    v3[4] = self;
    [sub_1000CDEFC(0) checkIntegrityWithInitializationBlock:v3];
  }

  return +[NSThread beginManagedContextSession];
}

- (id)_clientForConnection:(id)a3 paymentQueueClient:(id)a4
{
  v7 = [(MicroPaymentQueue *)self _clients];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      if ([(StoreKitClient *)v12 isEqualToXPCConnection:a3 paymentQueueClient:a4])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (v12)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  v12 = objc_alloc_init(StoreKitClient);
  [(NSMutableArray *)self->_clients addObject:v12];
  v13 = v12;
LABEL_12:
  if (a4)
  {
    [(StoreKitClient *)v12 setPaymentQueueClient:a4];
  }

  if (![(StoreKitClient *)v12 XPCClient])
  {
    v14 = [[XPCClient alloc] initWithInputConnection:a3];
    [(StoreKitClient *)v12 setXPCClient:v14];
  }

  return v12;
}

- (id)_clientForObjectID:(id)a3
{
  v5 = [(MicroPaymentQueue *)self _clients];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if (([(NSManagedObjectID *)[(StoreKitClient *)v10 microPaymentClientID] isEqual:a3]& 1) != 0)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (v10)
    {
      return v10;
    }
  }

LABEL_11:
  v10 = [[StoreKitClient alloc] initWithMicroPaymentClientID:a3];
  [(NSMutableArray *)self->_clients addObject:v10];
  v11 = v10;
  return v10;
}

- (id)_clientForPayment:(id)a3
{
  result = [objc_msgSend(a3 "client")];
  if (result)
  {

    return [(MicroPaymentQueue *)self _clientForObjectID:result];
  }

  return result;
}

- (id)_clients
{
  result = self->_clients;
  if (!result)
  {
    self->_clients = objc_alloc_init(NSMutableArray);
    v4 = [(MicroPaymentQueue *)self _beginManagedContextSession];
    v5 = objc_alloc_init(NSFetchRequest);
    [v5 setEntity:{+[MicroPaymentClient entityForContext:](MicroPaymentClient, "entityForContext:", v4)}];
    v75 = 0;
    v59 = v4;
    obj = [v4 executeFetchRequest:v5 error:&v75];
    v57 = v5;
    if (obj)
    {
      v6 = kSSUserDefaultsIdentifier;
      v7 = &CFDictionaryGetValue_ptr;
      if (!CFPreferencesGetAppBooleanValue(@"MicroPaymentQueueCleanupClients", kSSUserDefaultsIdentifier, 0))
      {
        applicationID = v6;
        v8 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v61 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
        if (v61)
        {
          v60 = *v72;
          v58 = v8;
          do
          {
            for (i = 0; i != v61; i = i + 1)
            {
              if (*v72 != v60)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v71 + 1) + 8 * i);
              v11 = [objc_msgSend(v10 "usesIdentityAttributes")];
              v12 = [NSArray alloc];
              v13 = [v10 identifier];
              if (v11)
              {
                v14 = [v12 initWithObjects:{v13, objc_msgSend(v10, "bundleVersion"), objc_msgSend(v10, "storeIdentifier"), objc_msgSend(v10, "storeVersion"), objc_msgSend(v10, "sandboxed"), 0}];
              }

              else
              {
                v14 = [v12 initWithObjects:{v13, objc_msgSend(v10, "sandboxed"), 0, v53, v54, v55}];
              }

              v15 = v14;
              v16 = [[ArrayHash alloc] initWithArray:v14];

              v17 = [v8 objectForKey:v16];
              if (v17)
              {
                v18 = v17;
                v19 = [v7[412] sharedDaemonConfig];
                if (!v19)
                {
                  v19 = [v7[412] sharedConfig];
                }

                v20 = v7;
                v21 = [v19 shouldLog];
                if ([v19 shouldLogToDisk])
                {
                  v21 |= 2u;
                }

                if (!os_log_type_enabled([v19 OSLogObject], OS_LOG_TYPE_DEFAULT))
                {
                  v21 &= 2u;
                }

                if (v21)
                {
                  v22 = objc_opt_class();
                  v78 = 138412802;
                  v79 = v22;
                  v80 = 2112;
                  v81 = v10;
                  v82 = 2112;
                  v83 = v18;
                  LODWORD(v52) = 32;
                  v51 = &v78;
                  v23 = _os_log_send_and_compose_impl();
                  if (v23)
                  {
                    v24 = v23;
                    v25 = [NSString stringWithCString:v23 encoding:4, &v78, v52];
                    free(v24);
                    v51 = v25;
                    SSFileLog();
                  }
                }

                v26 = [objc_msgSend(v10 payments];
                v67 = 0u;
                v68 = 0u;
                v69 = 0u;
                v70 = 0u;
                v27 = [v26 countByEnumeratingWithState:&v67 objects:v77 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v68;
                  do
                  {
                    for (j = 0; j != v28; j = j + 1)
                    {
                      if (*v68 != v29)
                      {
                        objc_enumerationMutation(v26);
                      }

                      [*(*(&v67 + 1) + 8 * j) setClient:v18];
                    }

                    v28 = [v26 countByEnumeratingWithState:&v67 objects:v77 count:16];
                  }

                  while (v28);
                }

                [v59 deleteObject:v10];

                v7 = v20;
                v8 = v58;
              }

              else
              {
                [v8 setObject:v10 forKey:v16];
              }
            }

            v61 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
          }

          while (v61);
        }

        sub_1000CE00C(v59);
        obj = [v8 allValues];

        CFPreferencesSetAppValue(@"MicroPaymentQueueCleanupClients", [NSNumber numberWithBool:1], applicationID);
        CFPreferencesAppSynchronize(kITunesStoreDaemonDefaultsID);
      }

      v31 = [v7[412] sharedDaemonConfig];
      if (!v31)
      {
        v31 = [v7[412] sharedConfig];
      }

      v32 = [v31 shouldLog];
      if ([v31 shouldLogToDisk])
      {
        v33 = v32 | 2;
      }

      else
      {
        v33 = v32;
      }

      if (os_log_type_enabled([v31 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 2;
      }

      if (v34)
      {
        v35 = objc_opt_class();
        v36 = [obj count];
        v78 = 138412546;
        v79 = v35;
        v80 = 2048;
        v81 = v36;
        LODWORD(v52) = 22;
        v51 = &v78;
        v37 = _os_log_send_and_compose_impl();
        if (v37)
        {
          v38 = v37;
          v39 = [NSString stringWithCString:v37 encoding:4, &v78, v52];
          free(v38);
          v51 = v39;
          SSFileLog();
        }
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v40 = [obj countByEnumeratingWithState:&v63 objects:v76 count:{16, v51}];
      if (v40)
      {
        v41 = v40;
        v42 = *v64;
        do
        {
          for (k = 0; k != v41; k = k + 1)
          {
            if (*v64 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v44 = -[StoreKitClient initWithMicroPaymentClientID:]([StoreKitClient alloc], "initWithMicroPaymentClientID:", [*(*(&v63 + 1) + 8 * k) objectID]);
            [(NSMutableArray *)self->_clients addObject:v44];
          }

          v41 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
        }

        while (v41);
      }
    }

    else
    {
      v45 = +[SSLogConfig sharedDaemonConfig];
      if (!v45)
      {
        v45 = +[SSLogConfig sharedConfig];
      }

      v46 = [v45 shouldLog];
      if ([v45 shouldLogToDisk])
      {
        v47 = v46 | 2;
      }

      else
      {
        v47 = v46;
      }

      if (!os_log_type_enabled([v45 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v47 &= 2u;
      }

      if (v47)
      {
        v48 = objc_opt_class();
        v78 = 138412546;
        v79 = v48;
        v80 = 2112;
        v81 = v75;
        LODWORD(v52) = 22;
        v49 = _os_log_send_and_compose_impl();
        if (v49)
        {
          v50 = v49;
          [NSString stringWithCString:v49 encoding:4, &v78, v52];
          free(v50);
          SSFileLog();
        }
      }
    }

    +[NSThread endManagedContextSession];
    return self->_clients;
  }

  return result;
}

- (id)_copyDownloadsIDsFromMessage:(id)a3 key:(const char *)a4
{
  v6 = objc_alloc_init(NSMutableArray);
  value = xpc_dictionary_get_value(a3, a4);
  if (value)
  {
    v8 = value;
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1000C229C;
      applier[3] = &unk_100327FB0;
      applier[4] = v6;
      xpc_array_apply(v8, applier);
    }
  }

  return v6;
}

- (void)_dispatchAsync:(id)a3
{
  [+[Daemon daemon](Daemon "daemon")];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C23B4;
  block[3] = &unk_100327FD8;
  block[4] = a3;
  dispatch_async(dispatchQueue, block);
}

- (void)_enumerateDownloadsForIdentifiers:(id)a3 context:(id)a4 usingBlock:(id)a5
{
  v18 = [MicroPaymentDownload downloadEntityFromContext:a4];
  v7 = [[NSArray alloc] initWithObjects:{@"downloadID", @"payment", 0}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = objc_alloc_init(NSFetchRequest);
        [v14 setEntity:v18];
        [v14 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"downloadID=%@", v12)}];
        [v14 setPropertiesToFetch:v7];
        v15 = [a4 executeFetchRequest:v14 error:0];
        v16 = [v15 count];
        v17 = 0;
        if (v16 == 1)
        {
          v17 = [v15 objectAtIndex:0];
        }

        (*(a5 + 2))(a5, v12, v17);

        objc_autoreleasePoolPop(v13);
      }

      v9 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)_finishPaymentOperationForPaymentID:(id)a3 result:(BOOL)a4 error:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C264C;
  v5[3] = &unk_100328000;
  v5[4] = self;
  v5[5] = a3;
  v6 = a4;
  [(MicroPaymentQueue *)self _dispatchAsync:v5, a4, a5];
}

- (id)_firstReadyPaymentInContext:(id)a3
{
  v4 = [(MicroPaymentQueue *)self _clients];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) firstReadyPaymentID];
        if (v9)
        {
          return [a3 objectWithID:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)_newPaymentQueueClientWithMessage:(id)a3 connection:(id)a4 parameter:(const char *)a5
{
  if ((SSXPCConnectionHasEntitlement() & 1) == 0 && !SSXPCConnectionHasEntitlement())
  {
    return 0;
  }

  v7 = objc_alloc(sub_1001FA240());
  value = xpc_dictionary_get_value(a3, a5);

  return [v7 initWithXPCEncoding:value];
}

- (void)_sendPurchaseIntentsForApp:(id)a3 storeKitClient:(id)a4 force:(BOOL)a5
{
  v8 = dispatch_semaphore_create(0);
  dispatch_retain(v8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C2954;
  v10[3] = &unk_100328028;
  v10[4] = self;
  v10[5] = a3;
  v10[6] = v8;
  v10[7] = a4;
  [+[PurchaseActionsManager sharedInstance](PurchaseActionsManager getPurchaseIntentsForApp:"getPurchaseIntentsForApp:completionHandler:" completionHandler:a3, v10];
  v9 = dispatch_time(0, 90000000000);
  dispatch_semaphore_wait(v8, v9);
  dispatch_release(v8);
}

- (void)_setActivePaymentID:(id)a3
{
  activePaymentID = self->_activePaymentID;
  if (activePaymentID != a3)
  {
    if (!activePaymentID)
    {
      [+[Daemon daemon](Daemon "daemon")];
      activePaymentID = self->_activePaymentID;
    }

    v6 = a3;
    self->_activePaymentID = v6;
    if (!v6)
    {
      v7 = +[Daemon daemon];

      [v7 releaseKeepAliveAssertion:@"com.apple.itunesstored.MicroPaymentQueue"];
    }
  }
}

- (void)_startFirstReadyPayment
{
  if (self->_activePaymentID)
  {
    v3 = 1;
  }

  else
  {
    v4 = [(MicroPaymentQueue *)self _firstReadyPaymentInContext:[(MicroPaymentQueue *)self _beginManagedContextSession]];
    if (v4)
    {
      v5 = v4;
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
        v18 = 138412546;
        v19 = objc_opt_class();
        v20 = 2112;
        v21 = v5;
        LODWORD(v16) = 22;
        v15 = &v18;
        v9 = _os_log_send_and_compose_impl();
        if (v9)
        {
          v10 = v9;
          v11 = [NSString stringWithCString:v9 encoding:4, &v18, v16];
          free(v10);
          v15 = v11;
          SSFileLog();
        }
      }

      v12 = [v5 objectID];
      [(MicroPaymentQueue *)self _setActivePaymentID:v12];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000C3028;
      v17[3] = &unk_100328050;
      v17[4] = [SSWeakReference weakReferenceWithObject:self];
      v17[5] = v12;
      [-[MicroPaymentQueue _clientForPayment:](self _clientForPayment:{v5), "startPaymentWithObjectID:withCompletionBlock:", v12, v17}];
    }

    +[NSThread endManagedContextSession];
    v3 = self->_activePaymentID != 0;
  }

  if (self->_aliveState != v3)
  {
    v13 = [[NSNumber alloc] initWithInteger:v3];
    self->_aliveState = v3;
    v14 = kSSUserDefaultsIdentifier;
    CFPreferencesSetAppValue(@"MicroPaymentQueueAlive", v13, kSSUserDefaultsIdentifier);
    CFPreferencesAppSynchronize(v14);
  }
}

@end