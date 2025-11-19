@interface BMRapportRequest
- (BMRapportRequest)initWithUUID:(id)a3 activity:(id)a4 requestBlock:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (void)markAsDeliveredToDevice:(id)a3 withError:(id)a4;
- (void)requestTimeoutDidFire;
- (void)runRequestOnDevice:(id)a3;
- (void)startRequestTimeout;
- (void)stopRequestTimeout;
@end

@implementation BMRapportRequest

- (BMRapportRequest)initWithUUID:(id)a3 activity:(id)a4 requestBlock:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v33.receiver = self;
  v33.super_class = BMRapportRequest;
  v18 = [(BMRapportRequest *)&v33 init];
  v19 = v18;
  if (v18)
  {
    v18->_state = 0;
    objc_storeStrong(&v18->_uuid, a3);
    objc_storeStrong(&v19->_activity, a4);
    v20 = [v15 copy];
    requestBlock = v19->_requestBlock;
    v19->_requestBlock = v20;

    v22 = [v17 copy];
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v22;

    v24 = objc_opt_new();
    deliveredToDevices = v19->_deliveredToDevices;
    v19->_deliveredToDevices = v24;

    v26 = objc_opt_new();
    inFlightToDevices = v19->_inFlightToDevices;
    v19->_inFlightToDevices = v26;

    v28 = objc_opt_new();
    errorFromDevice = v19->_errorFromDevice;
    v19->_errorFromDevice = v28;

    objc_storeStrong(&v19->_queue, a6);
    v30 = os_transaction_create();
    transaction = v19->_transaction;
    v19->_transaction = v30;

    [(BMRapportRequest *)v19 startRequestTimeout];
  }

  return v19;
}

- (void)runRequestOnDevice:(id)a3
{
  v4 = a3;
  [(BMRapportRequest *)self stopRequestTimeout];
  self->_state = 1;
  v5 = [(BMRapportRequest *)self requestBlock];
  v5[2](v5, v4);
}

- (void)markAsDeliveredToDevice:(id)a3 withError:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(NSMutableSet *)self->_inFlightToDevices removeObject:v9];
  [(NSMutableSet *)self->_deliveredToDevices addObject:v9];
  if (v6)
  {
    errorFromDevice = self->_errorFromDevice;
    v8 = [v9 rapportIdentifier];
    [(NSMutableDictionary *)errorFromDevice setObject:v6 forKeyedSubscript:v8];
  }
}

- (void)startRequestTimeout
{
  requestTimeout = self->_requestTimeout;
  if (requestTimeout)
  {
    v3 = dispatch_time(0, 30000000000);

    dispatch_source_set_timer(requestTimeout, v3, 0xFFFFFFFFFFFFFFFFLL, 0x6FC23AC00uLL);
  }

  else
  {
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    v6 = self->_requestTimeout;
    self->_requestTimeout = v5;

    v7 = self->_requestTimeout;
    v8 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x6FC23AC00uLL);
    objc_initWeak(&location, self);
    v9 = self->_requestTimeout;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009008;
    v10[3] = &unk_100078A60;
    objc_copyWeak(&v11, &location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_requestTimeout);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)stopRequestTimeout
{
  requestTimeout = self->_requestTimeout;
  if (requestTimeout)
  {
    dispatch_source_cancel(requestTimeout);
    v4 = self->_requestTimeout;
    self->_requestTimeout = 0;
  }
}

- (void)requestTimeoutDidFire
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(BMRapportRequest *)self requestTimeoutHandler];

  if (v3)
  {
    v4 = [(BMRapportRequest *)self requestTimeoutHandler];
    v4[2]();
  }
}

@end