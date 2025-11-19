@interface STSWifiSession
- (BOOL)isConnected;
- (void)altCarrierSendData:(id)a3 completion:(id)a4;
- (void)connectionCancelled:(id)a3;
- (void)connectionEstablishmentTimedout;
- (void)processRequest:(id)a3 connection:(id)a4;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidInvalidate:(id)a3 error:(id)a4;
- (void)sessionTimedout;
@end

@implementation STSWifiSession

- (void)connectionEstablishmentTimedout
{
  if (a1)
  {
    sub_10001BF6C(*(a1 + 56));
    os_unfair_lock_lock((a1 + 12));
    v2 = [*(a1 + 64) copy];
    [*(a1 + 64) removeAllObjects];
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;

    os_unfair_lock_unlock((a1 + 12));
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          sub_10001BF6C(*(*(&v17 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    sub_100024EC0(*(a1 + 40), v9, v10, v11, v12, v13, v14, v15);
    v16 = *(a1 + 40);
    *(a1 + 40) = 0;

    os_unfair_lock_lock((a1 + 12));
    *(a1 + 48) = 0;
    os_unfair_lock_unlock((a1 + 12));
  }
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiSession sessionDidConnect:]", 159, self, @"connectionHandle=%@", v5, v6, v4);
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    [(NSMutableArray *)self->_connectionHandles addObject:v4];
    connectionState = self->_connectionState;
    self->_connectionState = 1;
    v8 = connectionState == 1;
  }

  else
  {
    [0 addObject:v4];
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = +[NSDate now];
  v20[0] = @"transactionStartEventTime";
  v20[1] = @"transportType";
  v21[0] = v9;
  v21[1] = &off_10005F628;
  v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v11 = +[STSAnalyticsLogger sharedCALogger];
  [v11 postISOTransactionEvent:v10 prepOnly:1];

  if (self && (WeakRetained = objc_loadWeakRetained(&self->_parent)) != 0)
  {
    v13 = WeakRetained;
    v14 = WeakRetained[4];
    if (v14)
    {
      v15 = v14[8];

      if (v15 == 1)
      {
        sub_100021710(self, v4);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = sub_100021538(self);
  if (!v16 || v16[8] != 1)
  {

    if (v8)
    {
      goto LABEL_21;
    }

    if (!self)
    {
LABEL_20:
      [(STSWifiSession *)self altCarrierConnectedWithStatus:0];

      goto LABEL_21;
    }

LABEL_19:
    self = objc_loadWeakRetained(&self->_carrierListener);
    goto LABEL_20;
  }

  if (!self)
  {

    if (v8)
    {
      goto LABEL_21;
    }

    self = 0;
    goto LABEL_20;
  }

  useHTTPServerOnPublisher = self->_useHTTPServerOnPublisher;

  if (useHTTPServerOnPublisher)
  {
    handoverSession = self->_handoverSession;
    if (handoverSession)
    {
      handoverSession = handoverSession->_workQueue;
    }

    v19 = handoverSession;
    sub_10001BA50(v4, self, v19);
  }

  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_21:
}

- (void)sessionDidInvalidate:(id)a3 error:(id)a4
{
  v5 = a4;
  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiSession sessionDidInvalidate:error:]", 195, self, @"error=%@", v6, v7, v5);
  os_unfair_lock_lock(&self->_lock);
  if (!self)
  {
    os_unfair_lock_unlock(0xC);
    goto LABEL_6;
  }

  connectionState = self->_connectionState;
  self->_connectionState = 2;
  os_unfair_lock_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_carrierListener);
  self = WeakRetained;
  if (!connectionState)
  {
LABEL_6:
    WeakRetained = self;
    v10 = 3;
    goto LABEL_7;
  }

  if (connectionState == 1)
  {
    v10 = 1;
LABEL_7:
    [(STSWifiSession *)WeakRetained altCarrierDisconnectedWithStatus:v10];
  }

  v11 = +[NSDate now];
  v16[0] = @"transactionEndEventTime";
  v16[1] = @"errorCode";
  v17[0] = v11;
  v12 = [v5 code];

  v13 = [NSNumber numberWithInteger:v12];
  v17[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

  v15 = +[STSAnalyticsLogger sharedCALogger];
  [v15 postISOTransactionEvent:v14 prepOnly:0];
}

- (void)connectionCancelled:(id)a3
{
  v4 = a3;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiSession connectionCancelled:]", 218, self, &stru_100059C08, v5, v6, v10);
  sub_10001BF6C(v4);
  os_unfair_lock_lock(&self->_lock);
  if (!self)
  {
    [0 removeObject:v4];

    os_unfair_lock_unlock(0xC);
    WeakRetained = 0;
    goto LABEL_6;
  }

  [(NSMutableArray *)self->_connectionHandles removeObject:v4];

  connectionState = self->_connectionState;
  self->_connectionState = 2;
  os_unfair_lock_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_carrierListener);
  if (!connectionState)
  {
LABEL_6:
    v11 = WeakRetained;
    v9 = 3;
    goto LABEL_7;
  }

  if (connectionState != 1)
  {
    goto LABEL_8;
  }

  v11 = WeakRetained;
  v9 = 1;
LABEL_7:
  [WeakRetained altCarrierDisconnectedWithStatus:v9];
  WeakRetained = v11;
LABEL_8:
}

- (void)altCarrierSendData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    connectionHandles = self->_connectionHandles;
  }

  else
  {
    connectionHandles = 0;
  }

  v9 = [(NSMutableArray *)connectionHandles count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v9)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiSession altCarrierSendData:completion:]", 250, self, @"AC not connected", v10, v11, v51);
    v70 = NSLocalizedDescriptionKey;
    *buf = off_100069A80;
    v16 = [NSDictionary dictionaryWithObjects:buf forKeys:&v70 count:1];
    v17 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:8 userInfo:v16];

    v7[2](v7, v17);
    goto LABEL_43;
  }

  v12 = sub_100024AE0();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WifiSession_SendData", &unk_10005485E, buf, 2u);
  }

  v13 = sub_100021538(self);
  v14 = v13;
  if (v13 && (*(v13 + 8) & 1) != 0)
  {
    v15 = 0;
    goto LABEL_15;
  }

  if (!self || (WeakRetained = objc_loadWeakRetained(&self->_parent), (v19 = WeakRetained) == 0))
  {
    v20 = 0;
    v19 = 0;
    goto LABEL_47;
  }

  v20 = WeakRetained[4];
  if (!v20)
  {
LABEL_47:
    v15 = 1;
    goto LABEL_14;
  }

  v15 = v20[8] ^ 1;
LABEL_14:

LABEL_15:
  v21 = [v6 length];
  if (self)
  {
    useHTTPServerOnPublisher = self->_useHTTPServerOnPublisher;
  }

  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiSession altCarrierSendData:completion:]", 259, self, @"Data len=%ld,subscriberWithHttpClient=%d, httpServerStarted=%d", v22, v23, v21);
  v25 = sub_100021538(self);
  if (v25 && v25[8] == 1)
  {
    if (self)
    {
      v26 = self->_useHTTPServerOnPublisher;

      if (v26)
      {
        v27 = [[NSURL alloc] initWithString:&stru_100059C08];
        v28 = v6;
        v29 = objc_alloc_init(NSMutableDictionary);
        [v29 setObject:@"application/CBOR" forKeyedSubscript:@"Content-Type"];
        v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v28 length]);
        v31 = [v30 stringValue];
        [v29 setObject:v31 forKeyedSubscript:@"Content-Length"];

        v32 = [[NSHTTPURLResponse alloc] initWithURL:v27 statusCode:200 HTTPVersion:@"HTTP/1.1" headerFields:v29];
        v33 = [[HTTPServerResponse alloc] initWithResponse:v32 bodyData:v28];

        os_unfair_lock_lock(&self->_lock);
        v17 = self->_activeHandle;
        os_unfair_lock_unlock(&self->_lock);
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_1000226EC;
        v60[3] = &unk_100058F20;
        v60[4] = self;
        v61 = v7;
        sub_10001BB34(&v17->super.isa, v33, v60);

        goto LABEL_43;
      }

      os_unfair_lock_lock(&self->_lock);
      if (v15)
      {
        goto LABEL_28;
      }

      goto LABEL_35;
    }

    os_unfair_lock_lock(0xC);
    v34 = 0;
    v35 = 0;
    if (v15)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  os_unfair_lock_lock(&self->_lock);
  if ((v15 & 1) == 0)
  {
    if (self)
    {
LABEL_35:
      v35 = self->_connectionHandles;
      goto LABEL_36;
    }

    v35 = 0;
LABEL_36:
    v17 = [(NSMutableArray *)v35 firstObject];
    os_unfair_lock_unlock(&self->_lock);
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000229A0;
    v54[3] = &unk_100059140;
    v54[4] = self;
    v55 = v7;
    sub_10001B964(v17, v6, v54);

    goto LABEL_43;
  }

  if (self)
  {
LABEL_28:
    v34 = self->_connectionHandles;
    goto LABEL_29;
  }

  v34 = 0;
LABEL_29:
  v17 = [(NSMutableArray *)v34 firstObject];
  v53 = sub_10001B740(v17);
  os_unfair_lock_unlock(&self->_lock);
  if (v53)
  {
    v52 = v6;
    v36 = v53;
    if (self)
    {
      v37 = sub_100021538(self);
      if (v37)
      {
        v38 = v37[10] + 5.0;
      }

      else
      {
        v38 = 5.0;
      }

      v39 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
      v40 = [NSURLSession sessionWithConfiguration:v39];
      sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiSession _send:remoteURL:]", 423, self, @"Remote: %@", v41, v42, v36);
      v43 = [NSMutableURLRequest requestWithURL:v36 cachePolicy:1 timeoutInterval:v38];
      [v43 setHTTPMethod:@"POST"];
      [v43 addValue:@"application/CBOR" forHTTPHeaderField:@"Content-Type"];
      [v43 setHTTPBody:v52];
      objc_initWeak(&location, self);
      v70 = 0;
      v71 = &v70;
      v72 = 0x3032000000;
      v73 = sub_1000230BC;
      v74 = sub_1000230CC;
      v75 = 0;
      *buf = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_1000230D4;
      v66 = &unk_100059118;
      v67 = self;
      objc_copyWeak(v69, &location);
      v68 = &v70;
      v44 = [v40 dataTaskWithRequest:v43 completionHandler:buf];
      v45 = v71[5];
      v71[5] = v44;

      [(NSString *)v71[5] resume];
      _Block_object_dispose(&v70, 8);

      objc_destroyWeak(v69);
      objc_destroyWeak(&location);
    }

    v46 = 0;
  }

  else
  {
    v70 = NSLocalizedDescriptionKey;
    *buf = off_100069A50;
    v47 = [NSDictionary dictionaryWithObjects:buf forKeys:&v70 count:1];
    v46 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v47];
  }

  v48 = sub_100024AE0();
  if (os_signpost_enabled(v48))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WifiSession_SendData", &unk_10005485E, buf, 2u);
  }

  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022920;
  block[3] = &unk_100059190;
  v57 = v46;
  v58 = self;
  v59 = v7;
  v50 = v46;
  dispatch_async(queue, block);

LABEL_43:
}

- (void)sessionTimedout
{
  v3 = [[NSURL alloc] initWithString:&stru_100059C08];
  v4 = [[NSHTTPURLResponse alloc] initWithURL:v3 statusCode:400 HTTPVersion:0 headerFields:0];
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    activeHandle = self->_activeHandle;
  }

  else
  {
    activeHandle = 0;
  }

  v6 = activeHandle;
  os_unfair_lock_unlock(&self->_lock);
  v7 = [[HTTPServerResponse alloc] initWithResponse:v4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100022CE4;
  v8[3] = &unk_1000590C8;
  v8[4] = self;
  sub_10001BB34(v6, v7, v8);
}

- (BOOL)isConnected
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    v3 = self->_connectionState == 1;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)processRequest:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSURL alloc] initWithString:&stru_100059C08];
  v9 = [[NSHTTPURLResponse alloc] initWithURL:v8 statusCode:400 HTTPVersion:0 headerFields:0];
  v10 = [v6 HTTPMethod];
  v11 = [v10 uppercaseString];
  v12 = [v11 isEqualToString:@"POST"];

  if (v12)
  {
    v15 = [v6 valueForHTTPHeaderField:@"Content-Type"];
    v16 = v15;
    if (v15 && ([(HTTPServerResponse *)v15 isEqualToString:@"application/CBOR"]& 1) != 0)
    {
      os_unfair_lock_lock(&self->_lock);
      if (self)
      {
        if (self->_activeHandle)
        {
          os_unfair_lock_unlock(&self->_lock);
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiSession processRequest:connection:]", 391, self, @"One outstanding request in progress", v17, v18, v22[0]);
          v19 = [[NSHTTPURLResponse alloc] initWithURL:v8 statusCode:503 HTTPVersion:0 headerFields:0];
          v20 = [[HTTPServerResponse alloc] initWithResponse:v19];
          sub_10001BB34(v7, v20, 0);

LABEL_9:
          goto LABEL_10;
        }

        sub_1000168CC(self, v7);
        os_unfair_lock_unlock(&self->_lock);
        queue = self->_queue;
      }

      else
      {
        sub_1000168CC(0, v7);
        os_unfair_lock_unlock(0xC);
        queue = 0;
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100023040;
      v22[3] = &unk_100058CB0;
      v22[4] = self;
      v23 = v6;
      dispatch_async(queue, v22);

      goto LABEL_10;
    }

    v19 = [[HTTPServerResponse alloc] initWithResponse:v9];
    sub_10001BB34(v7, v19, 0);
    goto LABEL_9;
  }

  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiSession processRequest:connection:]", 370, self, @"Expected POST command on HTTP request", v13, v14, v22[0]);
  v16 = [[HTTPServerResponse alloc] initWithResponse:v9];
  sub_10001BB34(v7, v16, 0);
LABEL_10:
}

@end