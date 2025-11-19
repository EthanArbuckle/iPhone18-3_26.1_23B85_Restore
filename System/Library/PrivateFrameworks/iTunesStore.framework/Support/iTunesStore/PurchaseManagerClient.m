@interface PurchaseManagerClient
- (BOOL)finishesPurchases;
- (BOOL)useRemoteAuthentication;
- (PurchaseManagerClient)initWithInputConnection:(id)a3;
- (int64_t)URLBagType;
- (int64_t)uniqueIdentifier;
- (void)ackConnection;
- (void)dealloc;
- (void)postNotificationWithResponse:(id)a3;
- (void)sendAuthenticateRequestWithContext:(id)a3 responseHandler:(id)a4;
- (void)sendError:(id)a3 forPurchases:(id)a4;
- (void)sendResponse:(id)a3;
- (void)sendResponse:(id)a3 forPurchases:(id)a4;
- (void)sendResponses:(id)a3;
- (void)setFinishesPurchases:(BOOL)a3;
- (void)setUniqueIdentifier:(int64_t)a3;
- (void)setUseRemoteAuthentication:(BOOL)a3;
@end

@implementation PurchaseManagerClient

- (void)ackConnection
{
  dispatchQueue = self->super._dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004514;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)finishesPurchases
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000459C;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)uniqueIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004670;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (PurchaseManagerClient)initWithInputConnection:(id)a3
{
  v6.receiver = self;
  v6.super_class = PurchaseManagerClient;
  v3 = [(XPCClient *)&v6 initWithInputConnection:a3];
  if (v3)
  {
    v4 = CFUUIDCreate(0);
    v3->_uniqueIdentifier = *&CFUUIDGetUUIDBytes(v4);
    CFRelease(v4);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PurchaseManagerClient;
  [(XPCClient *)&v3 dealloc];
}

- (void)sendAuthenticateRequestWithContext:(id)a3 responseHandler:(id)a4
{
  dispatchQueue = self->super._dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002134D4;
  block[3] = &unk_10032AF90;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(dispatchQueue, block);
}

- (void)sendError:(id)a3 forPurchases:(id)a4
{
  v8 = objc_alloc_init(SSPurchaseResponse);
  v7 = [a3 userInfo];
  [v8 setCancelsPurchaseBatch:{objc_msgSend(objc_msgSend(v7, "objectForKey:", SSPurchaseErrorKeyShouldCancelPurchaseBatch), "BOOLValue")}];
  [v8 setError:a3];
  [(PurchaseManagerClient *)self sendResponse:v8 forPurchases:a4];
  if ([a4 count])
  {
    [(PurchaseManagerClient *)self postNotificationWithResponse:v8];
  }
}

- (void)sendResponse:(id)a3
{
  v4 = [[NSArray alloc] initWithObjects:{a3, 0}];
  [(PurchaseManagerClient *)self sendResponses:v4];
}

- (void)sendResponse:(id)a3 forPurchases:(id)a4
{
  dispatchQueue = self->super._dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100213FCC;
  block[3] = &unk_1003273E0;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_async(dispatchQueue, block);
}

- (void)sendResponses:(id)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002141FC;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)postNotificationWithResponse:(id)a3
{
  v4 = [a3 error];
  v5 = +[SSLogConfig sharedDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
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

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v36 = 138543362;
      v37 = objc_opt_class();
      LODWORD(v32) = 12;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        [NSString stringWithCString:v9 encoding:4, &v36, v32];
        free(v10);
        SSFileLog();
      }
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v11 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v36 = 138543362;
      v37 = objc_opt_class();
      LODWORD(v32) = 12;
      v31 = &v36;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4, &v36, v32];
        free(v14);
        v31 = v15;
        SSFileLog();
      }
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [NSKeyedArchiver setClassName:v17 forClass:objc_opt_class()];
    v33 = 0;
    v18 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v33];
    if (v33)
    {
      v19 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v19)
      {
        v19 = +[SSLogConfig sharedConfig];
      }

      v20 = [v19 shouldLog];
      if ([v19 shouldLogToDisk])
      {
        v21 = v20 | 2;
      }

      else
      {
        v21 = v20;
      }

      if (!os_log_type_enabled([v19 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v21 &= 2u;
      }

      if (v21)
      {
        v22 = objc_opt_class();
        v36 = 138543618;
        v37 = v22;
        v38 = 2114;
        v39 = v33;
        LODWORD(v32) = 22;
        v23 = _os_log_send_and_compose_impl();
        if (v23)
        {
          v24 = v23;
          [NSString stringWithCString:v23 encoding:4, &v36, v32];
          free(v24);
          SSFileLog();
        }
      }
    }

    v25 = [NSMutableDictionary alloc];
    v34 = @"response";
    v35 = v18;
    v26 = [v25 initWithDictionary:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v35, &v34, 1)}];
    v27 = +[AMSBuyParams buyParamsWithString:](AMSBuyParams, "buyParamsWithString:", [objc_msgSend(a3 "purchase")]);
    v28 = [(AMSBuyParams *)v27 propertyForKey:AMSBuyParamPropertyClientCorrelationKey];
    if (v28)
    {
      [v26 setObject:v28 forKeyedSubscript:@"clientCorrelationKey"];
    }

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterPostNotification(DistributedCenter, kSSPurchaseRequestSucceededNotification, 0, [v26 copy], 1u);
    v30 = +[EventDispatcher eventDispatcher];
    [v30 postEventWithName:SSEventNamePurchaseSucceeded userInfo:v26];
  }
}

- (void)setFinishesPurchases:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002148A8;
  v4[3] = &unk_100327830;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setUniqueIdentifier:(int64_t)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100214940;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setUseRemoteAuthentication:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002149D8;
  v4[3] = &unk_100327830;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (int64_t)URLBagType
{
  if ([(XPCClient *)self hasEntitlements])
  {
    return 0;
  }

  else
  {
    return [(XPCClient *)self isAppleSigned]^ 1;
  }
}

- (BOOL)useRemoteAuthentication
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100214AE4;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end