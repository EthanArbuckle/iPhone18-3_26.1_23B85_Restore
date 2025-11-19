@interface BMRapportManager
- (BMRapportManager)initWithQueue:(id)a3;
- (BMRapportManagerDelegate)delegate;
- (BOOL)discoveryManager:(id)a3 supportsDevice:(id)a4;
- (id)deviceWithIdentifier:(id)a3;
- (id)discoveredDevices;
- (id)localDevice;
- (void)activateWithCompletion:(id)a3;
- (void)discoveryManager:(id)a3 didDiscoverDevice:(id)a4;
- (void)discoveryManager:(id)a3 didLoseDevice:(id)a4;
- (void)finishedSendingRequestsToDevice:(id)a3;
- (void)handleActivationForDevice:(id)a3 error:(id)a4;
- (void)invalidate;
- (void)registerForSigterm;
- (void)registerRequestID:(id)a3 options:(id)a4 requestHandler:(id)a5;
- (void)sendNextRequestToDevice:(id)a3;
- (void)sendRequest:(id)a3 request:(id)a4 device:(id)a5 options:(id)a6 responseHandler:(id)a7;
- (void)sendRequest:(id)a3 request:(id)a4 toDevice:(id)a5 responseHandler:(id)a6;
- (void)startWithCompletion:(id)a3;
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

- (BMRapportManager)initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = BMRapportManager;
  v6 = [(BMRapportManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
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

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
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
  if (v4)
  {
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001A190;
    v14[3] = &unk_100078B98;
    v15 = v11;
    v16 = v4;
    dispatch_group_notify(v12, queue, v14);
  }
}

- (void)startWithCompletion:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BMRapportManager: start", v7, 2u);
  }

  [(BMRapportManager *)self activateWithCompletion:v5];
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

- (id)deviceWithIdentifier:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(BMRapportDiscoveryManager *)self->_discoveryManager deviceWithIdentifier:v5];

  return v6;
}

- (void)registerRequestID:(id)a3 options:(id)a4 requestHandler:(id)a5
{
  queue = self->_queue;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  dispatch_assert_queue_V2(queue);
  [(BMRapportRequestHandlerClient *)self->_requestHandlerClient registerRequestID:v11 options:v10 requestHandler:v9];
}

- (void)sendRequest:(id)a3 request:(id)a4 toDevice:(id)a5 responseHandler:(id)a6
{
  queue = self->_queue;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  dispatch_assert_queue_V2(queue);
  v16 = RPOptionTimeoutSeconds;
  v17 = &off_10007F3C0;
  v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [(BMRapportManager *)self sendRequest:v14 request:v13 device:v12 options:v15 responseHandler:v11];
}

- (void)sendRequest:(id)a3 request:(id)a4 device:(id)a5 options:(id)a6 responseHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  dispatch_assert_queue_V2(self->_queue);
  v17 = __biome_log_for_category();
  v18 = v17;
  if (v14)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = [v14 shortenedRapportIdentifier];
      *buf = 138412290;
      v42 = v19;
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
    [v18 setObject:v12 forKeyedSubscript:@"~~REQUEST_ID~~"];
    v21 = [v16 copy];
    [v18 setObject:v21 forKeyedSubscript:@"~~RESPONSE_HANDLER~~"];

    [v18 setObject:v15 forKeyedSubscript:@"~~OPTIONS~~"];
    v22 = [v14 requestQueue];
    [v22 addObject:v18];

    v23 = __biome_log_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v14 shortenedRapportIdentifier];
      v25 = [v14 requestQueue];
      *buf = 138412546;
      v42 = v24;
      v43 = 2112;
      v44 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BMRapportDevice[%@]: request queue %@", buf, 0x16u);
    }

    v26 = [v14 client];
    v27 = v26 == 0;

    if (v27)
    {
      objc_initWeak(&location, v14);
      objc_initWeak(&from, self);
      v28 = __biome_log_for_category();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v14 shortenedRapportIdentifier];
        *buf = 138412290;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: activating client", buf, 0xCu);
      }

      v30 = [v14 device];
      v31 = [BMRapportClient clientForCommunicatingWithDevice:v30 serviceName:@"com.apple.biomesyncd.rapport" queue:self->_queue];
      [v14 setClient:v31];

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10001ABD8;
      v37[3] = &unk_100078A60;
      objc_copyWeak(&v38, &location);
      v32 = [v14 client];
      [v32 setInvalidationHandler:v37];

      v33 = [v14 client];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10001AC1C;
      v34[3] = &unk_1000791F0;
      objc_copyWeak(&v35, &from);
      objc_copyWeak(&v36, &location);
      [v33 activateWithCompletion:v34];

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

- (void)handleActivationForDevice:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = __biome_log_for_category();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 shortenedRapportIdentifier];
      v11 = v10;
      v12 = @"failed with error, ";
      if (!v7)
      {
        v12 = @"completed";
      }

      *v18 = 138412802;
      *&v18[4] = v10;
      *&v18[12] = 2112;
      *&v18[14] = v12;
      if (v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = &stru_100079C10;
      }

      *&v18[22] = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: activation %@%@", v18, 0x20u);
    }

    if (v7)
    {
      if ([(__CFString *)v7 code]== -71165)
      {
        v14 = [(__CFString *)v7 domain];
        v15 = [v14 isEqualToString:RPErrorDomain];

        if (v15)
        {
          [(BMRapportDiscoveryManager *)self->_discoveryManager ignoreDevice:v6];
          v16 = __biome_log_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v6 shortenedRapportIdentifier];
            *v18 = 138412290;
            *&v18[4] = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: determined to not support service com.apple.biomesyncd.rapport", v18, 0xCu);
          }
        }
      }

      [v6 invalidateClientWithError:{v7, *v18, *&v18[16]}];
    }

    else
    {
      [(BMRapportManager *)self sendNextRequestToDevice:v6];
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

- (void)sendNextRequestToDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    v5 = [v4 requestQueue];
    v6 = [v5 popFirstObject];

    if (v6)
    {
      v7 = [v6 objectForKeyedSubscript:@"~~REQUEST_ID~~"];
      v8 = [v6 objectForKeyedSubscript:@"~~OPTIONS~~"];
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

      v13 = [v6 objectForKeyedSubscript:@"~~RESPONSE_HANDLER~~"];
      v14 = v13;
      if (v7 && v13)
      {
        [v6 setObject:0 forKeyedSubscript:@"~~REQUEST_ID~~"];
        [v6 setObject:0 forKeyedSubscript:@"~~OPTIONS~~"];
        [v6 setObject:0 forKeyedSubscript:@"~~RESPONSE_HANDLER~~"];
        v15 = __biome_log_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v4 shortenedRapportIdentifier];
          *buf = 138412802;
          v25 = v16;
          v26 = 2112;
          v27 = v6;
          v28 = 2112;
          v29 = v12;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: being sent request %@ with options %@", buf, 0x20u);
        }

        objc_initWeak(buf, v4);
        v17 = [v4 requestQueue];
        v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v17 count] != 0);
        [v12 setObject:v18 forKeyedSubscript:RPOptionMoreComing];

        v19 = [v4 client];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10001B240;
        v21[3] = &unk_100079218;
        v22 = v14;
        objc_copyWeak(&v23, buf);
        v21[4] = self;
        [v19 sendRequestID:v7 request:v6 options:v12 responseHandler:v21];

        objc_destroyWeak(&v23);
        objc_destroyWeak(buf);
      }

      else
      {
        v20 = __biome_log_for_category();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_100049738(v4, v6, v20);
        }

        [(BMRapportManager *)self sendNextRequestToDevice:v4];
      }
    }

    else
    {
      [(BMRapportManager *)self finishedSendingRequestsToDevice:v4];
    }
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1000497EC();
    }
  }
}

- (void)finishedSendingRequestsToDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = __biome_log_for_category();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 shortenedRapportIdentifier];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BMRapportDevice[%@]: request queue empty, invalidating client", &v8, 0xCu);
    }

    [v4 invalidateClientWithError:0];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100049820();
    }
  }
}

- (void)discoveryManager:(id)a3 didDiscoverDevice:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  v7 = [(BMRapportManager *)self delegate];
  [v7 rapportManager:self didDiscoverBMRapportDevice:v6];
}

- (void)discoveryManager:(id)a3 didLoseDevice:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 shortenedRapportIdentifier];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BMRapportDevice[%@]: lost", &v10, 0xCu);
  }

  v8 = [(BMRapportManager *)self delegate];
  [v8 rapportManager:self didLoseNearbyBMRapportDevice:v5];

  v9 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:10 userInfo:0];
  [v5 invalidateClientWithError:v9];
}

- (BOOL)discoveryManager:(id)a3 supportsDevice:(id)a4
{
  v4 = self;
  queue = self->_queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  v7 = [(BMRapportManager *)v4 delegate];
  LOBYTE(v4) = [v7 rapportManager:v4 isDeviceSupported:v6];

  return v4;
}

- (BMRapportManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end