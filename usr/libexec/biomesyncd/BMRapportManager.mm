@interface BMRapportManager
- (BMRapportManager)initWithQueue:(id)queue;
- (BMRapportManagerDelegate)delegate;
- (BOOL)discoveryManager:(id)manager supportsDevice:(id)device;
- (id)deviceWithIdentifier:(id)identifier;
- (id)discoveredDevices;
- (id)localDevice;
- (void)activateWithCompletion:(id)completion;
- (void)discoveryManager:(id)manager didDiscoverDevice:(id)device;
- (void)discoveryManager:(id)manager didLoseDevice:(id)device;
- (void)finishedSendingRequestsToDevice:(id)device;
- (void)handleActivationForDevice:(id)device error:(id)error;
- (void)invalidate;
- (void)registerForSigterm;
- (void)registerRequestID:(id)d options:(id)options requestHandler:(id)handler;
- (void)sendNextRequestToDevice:(id)device;
- (void)sendRequest:(id)request request:(id)a4 device:(id)device options:(id)options responseHandler:(id)handler;
- (void)sendRequest:(id)request request:(id)a4 toDevice:(id)device responseHandler:(id)handler;
- (void)startWithCompletion:(id)completion;
- (void)stop;
@end

@implementation BMRapportManager

- (void)registerForSigterm
{
  signal(15, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, self->_queue);
  sigtermSource = self->_sigtermSource;
  self->_sigtermSource = v3;

  v5 = self->_sigtermSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100019E0C;
  handler[3] = &unk_100078B70;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_activate(self->_sigtermSource);
}

- (BMRapportManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = BMRapportManager;
  v6 = [(BMRapportManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [[BMRapportDiscoveryManager alloc] initWithServiceName:@"com.apple.biomesyncd.rapport" delegate:v7 queue:v7->_queue];
    discoveryManager = v7->_discoveryManager;
    v7->_discoveryManager = v8;

    v10 = [BMRapportClient clientForHandlingRequestsWithServiceName:@"com.apple.biomesyncd.rapport" queue:v7->_queue];
    requestHandlerClient = v7->_requestHandlerClient;
    v7->_requestHandlerClient = v10;

    [(BMRapportManager *)v7 registerForSigterm];
  }

  return v7;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_new();
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  requestHandlerClient = self->_requestHandlerClient;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001A060;
  v20[3] = &unk_1000791C8;
  v20[4] = self;
  v8 = v5;
  v21 = v8;
  v9 = v6;
  v22 = v9;
  [(BMRapportRequestHandlerClient *)requestHandlerClient activateWithCompletion:v20];
  dispatch_group_enter(v9);
  discoveryManager = self->_discoveryManager;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001A0F8;
  v17[3] = &unk_1000791C8;
  v17[4] = self;
  v11 = v8;
  v18 = v11;
  v12 = v9;
  v19 = v12;
  [(BMRapportDiscoveryManager *)discoveryManager startWithCompletion:v17];
  if (completionCopy)
  {
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001A190;
    v14[3] = &unk_100078B98;
    v15 = v11;
    v16 = completionCopy;
    dispatch_group_notify(v12, queue, v14);
  }
}

- (void)startWithCompletion:(id)completion
{
  queue = self->_queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(queue);
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BMRapportManager: start", v7, 2u);
  }

  [(BMRapportManager *)self activateWithCompletion:completionCopy];
}

- (void)stop
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BMRapportManager: stop", v4, 2u);
  }

  [(BMRapportDiscoveryManager *)self->_discoveryManager stop];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BMRapportManager: invalidate", v6, 2u);
  }

  [(BMRapportRequestHandlerClient *)self->_requestHandlerClient invalidate];
  requestHandlerClient = self->_requestHandlerClient;
  self->_requestHandlerClient = 0;

  [(BMRapportDiscoveryManager *)self->_discoveryManager invalidate];
  discoveryManager = self->_discoveryManager;
  self->_discoveryManager = 0;
}

- (id)discoveredDevices
{
  dispatch_assert_queue_V2(self->_queue);
  discoveryManager = self->_discoveryManager;

  return [(BMRapportDiscoveryManager *)discoveryManager devices];
}

- (id)localDevice
{
  dispatch_assert_queue_V2(self->_queue);
  discoveryManager = self->_discoveryManager;

  return [(BMRapportDiscoveryManager *)discoveryManager localDevice];
}

- (id)deviceWithIdentifier:(id)identifier
{
  queue = self->_queue;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(queue);
  v6 = [(BMRapportDiscoveryManager *)self->_discoveryManager deviceWithIdentifier:identifierCopy];

  return v6;
}

- (void)registerRequestID:(id)d options:(id)options requestHandler:(id)handler
{
  queue = self->_queue;
  handlerCopy = handler;
  optionsCopy = options;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  [(BMRapportRequestHandlerClient *)self->_requestHandlerClient registerRequestID:dCopy options:optionsCopy requestHandler:handlerCopy];
}

- (void)sendRequest:(id)request request:(id)a4 toDevice:(id)device responseHandler:(id)handler
{
  queue = self->_queue;
  handlerCopy = handler;
  deviceCopy = device;
  v13 = a4;
  requestCopy = request;
  dispatch_assert_queue_V2(queue);
  v16 = RPOptionTimeoutSeconds;
  v17 = &off_10007F3C0;
  v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [(BMRapportManager *)self sendRequest:requestCopy request:v13 device:deviceCopy options:v15 responseHandler:handlerCopy];
}

- (void)sendRequest:(id)request request:(id)a4 device:(id)device options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  v13 = a4;
  deviceCopy = device;
  optionsCopy = options;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v17 = __biome_log_for_category();
  v18 = v17;
  if (deviceCopy)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      shortenedRapportIdentifier = [deviceCopy shortenedRapportIdentifier];
      *buf = 138412290;
      v42 = shortenedRapportIdentifier;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: enqueueing request", buf, 0xCu);
    }

    if (v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = &__NSDictionary0__struct;
    }

    v18 = [v20 mutableCopy];
    [v18 setObject:requestCopy forKeyedSubscript:@"~~REQUEST_ID~~"];
    v21 = [handlerCopy copy];
    [v18 setObject:v21 forKeyedSubscript:@"~~RESPONSE_HANDLER~~"];

    [v18 setObject:optionsCopy forKeyedSubscript:@"~~OPTIONS~~"];
    requestQueue = [deviceCopy requestQueue];
    [requestQueue addObject:v18];

    v23 = __biome_log_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      shortenedRapportIdentifier2 = [deviceCopy shortenedRapportIdentifier];
      requestQueue2 = [deviceCopy requestQueue];
      *buf = 138412546;
      v42 = shortenedRapportIdentifier2;
      v43 = 2112;
      v44 = requestQueue2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BMRapportDevice[%@]: request queue %@", buf, 0x16u);
    }

    client = [deviceCopy client];
    v27 = client == 0;

    if (v27)
    {
      objc_initWeak(&location, deviceCopy);
      objc_initWeak(&from, self);
      v28 = __biome_log_for_category();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        shortenedRapportIdentifier3 = [deviceCopy shortenedRapportIdentifier];
        *buf = 138412290;
        v42 = shortenedRapportIdentifier3;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: activating client", buf, 0xCu);
      }

      device = [deviceCopy device];
      v31 = [BMRapportClient clientForCommunicatingWithDevice:device serviceName:@"com.apple.biomesyncd.rapport" queue:self->_queue];
      [deviceCopy setClient:v31];

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10001ABD8;
      v37[3] = &unk_100078A60;
      objc_copyWeak(&v38, &location);
      client2 = [deviceCopy client];
      [client2 setInvalidationHandler:v37];

      client3 = [deviceCopy client];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10001AC1C;
      v34[3] = &unk_1000791F0;
      objc_copyWeak(&v35, &from);
      objc_copyWeak(&v36, &location);
      [client3 activateWithCompletion:v34];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&v35);
      objc_destroyWeak(&v38);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    sub_1000496C4();
  }
}

- (void)handleActivationForDevice:(id)device error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v8 = __biome_log_for_category();
  v9 = v8;
  if (deviceCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      shortenedRapportIdentifier = [deviceCopy shortenedRapportIdentifier];
      v11 = shortenedRapportIdentifier;
      v12 = @"failed with error, ";
      if (!errorCopy)
      {
        v12 = @"completed";
      }

      *v18 = 138412802;
      *&v18[4] = shortenedRapportIdentifier;
      *&v18[12] = 2112;
      *&v18[14] = v12;
      if (errorCopy)
      {
        v13 = errorCopy;
      }

      else
      {
        v13 = &stru_100079C10;
      }

      *&v18[22] = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: activation %@%@", v18, 0x20u);
    }

    if (errorCopy)
    {
      if ([(__CFString *)errorCopy code]== -71165)
      {
        domain = [(__CFString *)errorCopy domain];
        v15 = [domain isEqualToString:RPErrorDomain];

        if (v15)
        {
          [(BMRapportDiscoveryManager *)self->_discoveryManager ignoreDevice:deviceCopy];
          v16 = __biome_log_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            shortenedRapportIdentifier2 = [deviceCopy shortenedRapportIdentifier];
            *v18 = 138412290;
            *&v18[4] = shortenedRapportIdentifier2;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: determined to not support service com.apple.biomesyncd.rapport", v18, 0xCu);
          }
        }
      }

      [deviceCopy invalidateClientWithError:{errorCopy, *v18, *&v18[16]}];
    }

    else
    {
      [(BMRapportManager *)self sendNextRequestToDevice:deviceCopy];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000496F8();
    }
  }
}

- (void)sendNextRequestToDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  if (deviceCopy)
  {
    requestQueue = [deviceCopy requestQueue];
    popFirstObject = [requestQueue popFirstObject];

    if (popFirstObject)
    {
      v7 = [popFirstObject objectForKeyedSubscript:@"~~REQUEST_ID~~"];
      v8 = [popFirstObject objectForKeyedSubscript:@"~~OPTIONS~~"];
      v9 = [v8 mutableCopy];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = objc_opt_new();
      }

      v12 = v11;

      v13 = [popFirstObject objectForKeyedSubscript:@"~~RESPONSE_HANDLER~~"];
      v14 = v13;
      if (v7 && v13)
      {
        [popFirstObject setObject:0 forKeyedSubscript:@"~~REQUEST_ID~~"];
        [popFirstObject setObject:0 forKeyedSubscript:@"~~OPTIONS~~"];
        [popFirstObject setObject:0 forKeyedSubscript:@"~~RESPONSE_HANDLER~~"];
        v15 = __biome_log_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          shortenedRapportIdentifier = [deviceCopy shortenedRapportIdentifier];
          *buf = 138412802;
          v25 = shortenedRapportIdentifier;
          v26 = 2112;
          v27 = popFirstObject;
          v28 = 2112;
          v29 = v12;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: being sent request %@ with options %@", buf, 0x20u);
        }

        objc_initWeak(buf, deviceCopy);
        requestQueue2 = [deviceCopy requestQueue];
        v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [requestQueue2 count] != 0);
        [v12 setObject:v18 forKeyedSubscript:RPOptionMoreComing];

        client = [deviceCopy client];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10001B240;
        v21[3] = &unk_100079218;
        v22 = v14;
        objc_copyWeak(&v23, buf);
        v21[4] = self;
        [client sendRequestID:v7 request:popFirstObject options:v12 responseHandler:v21];

        objc_destroyWeak(&v23);
        objc_destroyWeak(buf);
      }

      else
      {
        v20 = __biome_log_for_category();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_100049738(deviceCopy, popFirstObject, v20);
        }

        [(BMRapportManager *)self sendNextRequestToDevice:deviceCopy];
      }
    }

    else
    {
      [(BMRapportManager *)self finishedSendingRequestsToDevice:deviceCopy];
    }
  }

  else
  {
    popFirstObject = __biome_log_for_category();
    if (os_log_type_enabled(popFirstObject, OS_LOG_TYPE_FAULT))
    {
      sub_1000497EC();
    }
  }
}

- (void)finishedSendingRequestsToDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v5 = __biome_log_for_category();
  v6 = v5;
  if (deviceCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      shortenedRapportIdentifier = [deviceCopy shortenedRapportIdentifier];
      v8 = 138412290;
      v9 = shortenedRapportIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BMRapportDevice[%@]: request queue empty, invalidating client", &v8, 0xCu);
    }

    [deviceCopy invalidateClientWithError:0];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100049820();
    }
  }
}

- (void)discoveryManager:(id)manager didDiscoverDevice:(id)device
{
  queue = self->_queue;
  deviceCopy = device;
  dispatch_assert_queue_V2(queue);
  delegate = [(BMRapportManager *)self delegate];
  [delegate rapportManager:self didDiscoverBMRapportDevice:deviceCopy];
}

- (void)discoveryManager:(id)manager didLoseDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    shortenedRapportIdentifier = [deviceCopy shortenedRapportIdentifier];
    v10 = 138412290;
    v11 = shortenedRapportIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: lost", &v10, 0xCu);
  }

  delegate = [(BMRapportManager *)self delegate];
  [delegate rapportManager:self didLoseNearbyBMRapportDevice:deviceCopy];

  v9 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:10 userInfo:0];
  [deviceCopy invalidateClientWithError:v9];
}

- (BOOL)discoveryManager:(id)manager supportsDevice:(id)device
{
  selfCopy = self;
  queue = self->_queue;
  deviceCopy = device;
  dispatch_assert_queue_V2(queue);
  delegate = [(BMRapportManager *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate rapportManager:selfCopy isDeviceSupported:deviceCopy];

  return selfCopy;
}

- (BMRapportManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end