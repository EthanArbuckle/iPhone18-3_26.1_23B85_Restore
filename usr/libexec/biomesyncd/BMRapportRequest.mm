@interface BMRapportRequest
- (BMRapportRequest)initWithUUID:(id)d activity:(id)activity requestBlock:(id)block queue:(id)queue completionHandler:(id)handler;
- (void)markAsDeliveredToDevice:(id)device withError:(id)error;
- (void)requestTimeoutDidFire;
- (void)runRequestOnDevice:(id)device;
- (void)startRequestTimeout;
- (void)stopRequestTimeout;
@end

@implementation BMRapportRequest

- (BMRapportRequest)initWithUUID:(id)d activity:(id)activity requestBlock:(id)block queue:(id)queue completionHandler:(id)handler
{
  dCopy = d;
  activityCopy = activity;
  blockCopy = block;
  queueCopy = queue;
  handlerCopy = handler;
  v33.receiver = self;
  v33.super_class = BMRapportRequest;
  v18 = [(BMRapportRequest *)&v33 init];
  v19 = v18;
  if (v18)
  {
    v18->_state = 0;
    objc_storeStrong(&v18->_uuid, d);
    objc_storeStrong(&v19->_activity, activity);
    v20 = [blockCopy copy];
    requestBlock = v19->_requestBlock;
    v19->_requestBlock = v20;

    v22 = [handlerCopy copy];
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

    objc_storeStrong(&v19->_queue, queue);
    v30 = os_transaction_create();
    transaction = v19->_transaction;
    v19->_transaction = v30;

    [(BMRapportRequest *)v19 startRequestTimeout];
  }

  return v19;
}

- (void)runRequestOnDevice:(id)device
{
  deviceCopy = device;
  [(BMRapportRequest *)self stopRequestTimeout];
  self->_state = 1;
  requestBlock = [(BMRapportRequest *)self requestBlock];
  requestBlock[2](requestBlock, deviceCopy);
}

- (void)markAsDeliveredToDevice:(id)device withError:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  [(NSMutableSet *)self->_inFlightToDevices removeObject:deviceCopy];
  [(NSMutableSet *)self->_deliveredToDevices addObject:deviceCopy];
  if (errorCopy)
  {
    errorFromDevice = self->_errorFromDevice;
    rapportIdentifier = [deviceCopy rapportIdentifier];
    [(NSMutableDictionary *)errorFromDevice setObject:errorCopy forKeyedSubscript:rapportIdentifier];
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
  requestTimeoutHandler = [(BMRapportRequest *)self requestTimeoutHandler];

  if (requestTimeoutHandler)
  {
    requestTimeoutHandler2 = [(BMRapportRequest *)self requestTimeoutHandler];
    requestTimeoutHandler2[2]();
  }
}

@end