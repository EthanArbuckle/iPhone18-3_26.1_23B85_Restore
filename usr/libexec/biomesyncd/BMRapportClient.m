@interface BMRapportClient
+ (id)clientForCommunicatingWithDevice:(id)a3 serviceName:(id)a4 queue:(id)a5;
+ (id)clientForHandlingRequestsWithServiceName:(id)a3 queue:(id)a4;
+ (id)clientForSameAccountDiscoveryWithServiceName:(id)a3 delegate:(id)a4 queue:(id)a5;
+ (id)clientForSharedHomeDiscoveryWithServiceName:(id)a3 delegate:(id)a4 queue:(id)a5;
+ (unint64_t)controlFlagsForMessagingDevice:(id)a3;
+ (unint64_t)controlFlagsForSameAccountDiscovery;
+ (unint64_t)controlFlagsForSharedHomeDiscovery;
- (BOOL)_validateDevice:(id)a3;
- (NSArray)activeDevices;
- (RPCompanionLinkDevice)localDevice;
- (id)_initWithType:(unint64_t)a3 controlFlags:(unint64_t)a4 serviceName:(id)a5 queue:(id)a6;
- (void)_companionLinkClientActivatedWithError:(id)a3;
- (void)_companionLinkClientDiscoveredDevice:(id)a3;
- (void)_companionLinkClientInvalidated;
- (void)_companionLinkClientLostDevice:(id)a3;
- (void)_createAndActivateCompanionLinkClient;
- (void)_deregisterRequests;
- (void)_handleRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6;
- (void)_handleResponseUUID:(id)a3 response:(id)a4 options:(id)a5 error:(id)a6 handler:(id)a7;
- (void)_registerRequests;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
- (void)registerRequestID:(id)a3 options:(id)a4 requestHandler:(id)a5;
- (void)sendRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6;
@end

@implementation BMRapportClient

- (id)_initWithType:(unint64_t)a3 controlFlags:(unint64_t)a4 serviceName:(id)a5 queue:(id)a6
{
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = BMRapportClient;
  v13 = [(BMRapportClient *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queue, a6);
    v14->_type = a3;
    v14->_state = 0;
    v14->_controlFlags = a4;
    objc_storeStrong(&v14->_serviceName, a5);
    v15 = objc_opt_new();
    activationHandlers = v14->_activationHandlers;
    v14->_activationHandlers = v15;
  }

  return v14;
}

+ (id)clientForHandlingRequestsWithServiceName:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithType:1 controlFlags:0 serviceName:v7 queue:v6];

  if (v8)
  {
    v9 = v8[8];
    v8[8] = @"RequestHandler";
  }

  return v8;
}

+ (id)clientForSameAccountDiscoveryWithServiceName:(id)a3 delegate:(id)a4 queue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[a1 alloc] _initWithType:0 controlFlags:objc_msgSend(objc_opt_class() serviceName:"controlFlagsForSameAccountDiscovery") queue:{v10, v9}];

  if (v11)
  {
    objc_storeWeak(v11 + 6, v8);
    v12 = v11[8];
    v11[8] = @"DiscoverySameAccount";
  }

  return v11;
}

+ (id)clientForSharedHomeDiscoveryWithServiceName:(id)a3 delegate:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_opt_class() controlFlagsForSharedHomeDiscovery];
  if (v11)
  {
    v12 = [[a1 alloc] _initWithType:0 controlFlags:v11 serviceName:v8 queue:v10];
    v13 = v12;
    if (v12)
    {
      objc_storeWeak(v12 + 6, v9);
      v14 = v13[8];
      v13[8] = @"DiscoverySharedHome";
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)clientForCommunicatingWithDevice:(id)a3 serviceName:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [[a1 alloc] _initWithType:2 controlFlags:objc_msgSend(objc_opt_class() serviceName:"controlFlagsForMessagingDevice:" queue:{v9), v11, v10}];

  if (v12)
  {
    objc_storeStrong(v12 + 11, a3);
    v13 = [v9 bm_companionLinkDeviceIdentifier];
    if ([v13 length] <= 8)
    {
      v14 = v12[8];
      v12[8] = @"UnknownDevice";
    }

    else
    {
      v14 = [v9 bm_companionLinkDeviceIdentifier];
      v15 = [v14 substringToIndex:8];
      v16 = v12[8];
      v12[8] = v15;
    }
  }

  return v12;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    loggingIdentifier = self->_loggingIdentifier;
    *buf = 138412290;
    v17 = loggingIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BMRapportClient[%@]: activate", buf, 0xCu);
  }

  state = self->_state;
  if (state > 1)
  {
    if (state == 2)
    {
      if (v4)
      {
        v4[2](v4, 0);
      }
    }

    else if (state == 3 && v4)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"BMRapportClient has been invalidated";
      v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v11 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:4 userInfo:v10];
      (v4)[2](v4, v11);
    }
  }

  else if (state)
  {
    if (state == 1 && v4)
    {
      activationHandlers = self->_activationHandlers;
      v9 = objc_retainBlock(v4);
      [(NSMutableArray *)activationHandlers addObject:v9];
    }
  }

  else
  {
    if (v4)
    {
      v12 = self->_activationHandlers;
      v13 = objc_retainBlock(v4);
      [(NSMutableArray *)v12 addObject:v13];
    }

    [(BMRapportClient *)self _createAndActivateCompanionLinkClient];
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state != 3)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      loggingIdentifier = self->_loggingIdentifier;
      *buf = 138412290;
      v23 = loggingIdentifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BMRapportClient[%@]: invalidate", buf, 0xCu);
    }

    self->_state = 3;
    [(RPCompanionLinkClient *)self->_client setDeviceChangedHandler:0];
    [(RPCompanionLinkClient *)self->_client setDeviceFoundHandler:0];
    [(RPCompanionLinkClient *)self->_client setDeviceLostHandler:0];
    [(RPCompanionLinkClient *)self->_client setDisconnectHandler:0];
    [(RPCompanionLinkClient *)self->_client setErrorFlagsChangedHandler:0];
    [(RPCompanionLinkClient *)self->_client setInterruptionHandler:0];
    [(RPCompanionLinkClient *)self->_client setInvalidationHandler:0];
    [(RPCompanionLinkClient *)self->_client setLocalDeviceUpdatedHandler:0];
    [(RPCompanionLinkClient *)self->_client setStateUpdatedHandler:0];
    if (self->_type == 1)
    {
      [(BMRapportClient *)self _deregisterRequests];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = [(NSMutableDictionary *)self->_outstandingResponseHandlers allValues];
    v5 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          v19 = NSLocalizedDescriptionKey;
          v20 = @"Rapport client invalidated";
          v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          v11 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:4 userInfo:v10];
          (*(v9 + 16))(v9, 0, 0, v11);

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v6);
    }

    [*(v13 + 56) removeAllObjects];
    [*(v13 + 32) invalidate];
    v12 = *(v13 + 104);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }
}

- (void)_companionLinkClientActivatedWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state != 3)
  {
    if (v4)
    {
      [(BMRapportClient *)self invalidate];
    }

    else
    {
      self->_state = 2;
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_activationHandlers;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_activationHandlers removeAllObjects];
  }
}

- (void)_companionLinkClientInvalidated
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state != 3)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10004738C(self, v3);
    }

    [(BMRapportClient *)self invalidate];
  }
}

- (void)_createAndActivateCompanionLinkClient
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100047408(self, v3);
    }
  }

  else
  {
    self->_state = 1;
    v4 = objc_alloc_init(RPCompanionLinkClient);
    client = self->_client;
    self->_client = v4;

    [(RPCompanionLinkClient *)self->_client setDispatchQueue:self->_queue];
    [(RPCompanionLinkClient *)self->_client setControlFlags:self->_controlFlags];
    if (self->_type - 1 <= 1)
    {
      [(RPCompanionLinkClient *)self->_client setServiceType:self->_serviceName];
    }

    if (self->_destinationDevice)
    {
      [(RPCompanionLinkClient *)self->_client setDestinationDevice:?];
    }

    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000031DC;
    v14[3] = &unk_100078A60;
    objc_copyWeak(&v15, &location);
    [(RPCompanionLinkClient *)self->_client setInvalidationHandler:v14];
    type = self->_type;
    if (!type)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10000321C;
      v12[3] = &unk_100078A88;
      objc_copyWeak(&v13, &location);
      [(RPCompanionLinkClient *)self->_client setDeviceFoundHandler:v12];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100003278;
      v10[3] = &unk_100078A88;
      objc_copyWeak(&v11, &location);
      [(RPCompanionLinkClient *)self->_client setDeviceLostHandler:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&v13);
      type = self->_type;
    }

    if (type == 1)
    {
      [(BMRapportClient *)self _registerRequests];
    }

    v7 = self->_client;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000032D4;
    v8[3] = &unk_100078AB0;
    objc_copyWeak(&v9, &location);
    [(RPCompanionLinkClient *)v7 activateWithCompletion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)sendRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state != 3)
  {
    if (v13)
    {
      if (!self->_outstandingResponseHandlers)
      {
        v16 = objc_opt_new();
        outstandingResponseHandlers = self->_outstandingResponseHandlers;
        self->_outstandingResponseHandlers = v16;
      }

      v18 = +[NSUUID UUID];
      v19 = [v13 copy];

      v20 = objc_retainBlock(v19);
      [(NSMutableDictionary *)self->_outstandingResponseHandlers setObject:v20 forKeyedSubscript:v18];
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v21 = self->_loggingIdentifier;
    objc_initWeak(&location, self);
    client = self->_client;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000EDFC;
    v23[3] = &unk_100078E18;
    objc_copyWeak(&v27, &location);
    v15 = v21;
    v24 = v15;
    v14 = v18;
    v25 = v14;
    v13 = v19;
    v26 = v13;
    [(RPCompanionLinkClient *)client sendRequestID:v10 request:v11 options:v12 responseHandler:v23];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    goto LABEL_10;
  }

  if (v13)
  {
    v29 = NSLocalizedDescriptionKey;
    v30 = @"Rapport client has been invalidated";
    v14 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v15 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:4 userInfo:v14];
    (*(v13 + 2))(v13, 0, 0, v15);
LABEL_10:
  }
}

- (void)_handleResponseUUID:(id)a3 response:(id)a4 options:(id)a5 error:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state == 3)
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      loggingIdentifier = self->_loggingIdentifier;
      if (v13)
      {
        v19 = v13;
      }

      else
      {
        v19 = v15;
      }

      v22 = 138412546;
      v23 = loggingIdentifier;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BMRapportClient[%@]: Warning: ignoring response arriving after invalidation: %@", &v22, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v12)
  {
    [(NSMutableDictionary *)self->_outstandingResponseHandlers setObject:0 forKeyedSubscript:v12];
  }

  if (!v16)
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v20 = self->_loggingIdentifier;
      if (v13)
      {
        v21 = v13;
      }

      else
      {
        v21 = v15;
      }

      v22 = 138412546;
      v23 = v20;
      v24 = 2112;
      v25 = v21;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "BMRapportClient[%@]: Warning: ignoring response because no response handler is set: %@", &v22, 0x16u);
    }

    goto LABEL_12;
  }

  v16[2](v16, v13, v14, v15);
LABEL_13:
}

- (RPCompanionLinkDevice)localDevice
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state == 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(RPCompanionLinkClient *)self->_client localDevice];
  }

  return v3;
}

- (NSArray)activeDevices
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state == 3)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(RPCompanionLinkClient *)self->_client activeDevices];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000237E4;
    v6[3] = &unk_1000794E8;
    v6[4] = self;
    v3 = [v4 _pas_filteredArrayWithTest:v6];
  }

  return v3;
}

- (void)_companionLinkClientDiscoveredDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state != 3)
  {
    if ([(BMRapportClient *)self _validateDevice:v4])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained rapportClient:self didDiscoverDevice:v4];
    }

    else
    {
      v6 = [v4 bm_companionLinkDeviceIdentifier];

      if (v6)
      {
        v7 = [v4 model];

        WeakRetained = __biome_log_for_category();
        v8 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR);
        if (v7)
        {
          if (v8)
          {
            sub_10004A1A4(self);
          }
        }

        else if (v8)
        {
          sub_10004A21C(self);
        }
      }

      else
      {
        WeakRetained = __biome_log_for_category();
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
        {
          sub_10004A294(self);
        }
      }
    }
  }
}

- (void)_companionLinkClientLostDevice:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state != 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained rapportClient:self didLoseDevice:v5];
  }
}

- (BOOL)_validateDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 bm_companionLinkDeviceIdentifier];

  if (v4)
  {
    v5 = [v3 model];
    LOBYTE(v4) = v5 != 0;
  }

  return v4;
}

+ (unint64_t)controlFlagsForSameAccountDiscovery
{
  v2 = +[BMDeviceMetadataUtils platform];
  if (v2 > 4)
  {
    if (v2 > 6)
    {
      if (v2 != 7)
      {
        if (v2 == 8)
        {
          return 6;
        }

        return 0;
      }
    }

    else if (v2 != 5)
    {
      return 32;
    }

    return 4;
  }

  if (v2 > 2)
  {
    return 4;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return 38;
      }

      return 0;
    }

    return 6;
  }

  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_10004BF10();
  }

  return 0;
}

+ (unint64_t)controlFlagsForSharedHomeDiscovery
{
  v2 = +[BMDeviceMetadataUtils platform];
  if (v2 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          if (v2 == 2)
          {
            return 2084;
          }

          return 0;
        }

        return 2052;
      }

      goto LABEL_9;
    }

    return 2052;
  }

  if (v2 > 6)
  {
    if (v2 != 7 && v2 != 8)
    {
      return 0;
    }

    return 2052;
  }

  if (v2 != 5)
  {
LABEL_9:
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10004BF9C();
    }

    return 0;
  }

  return 4;
}

+ (unint64_t)controlFlagsForMessagingDevice:(id)a3
{
  v3 = [a3 model];
  v4 = BMDevicePlatformFromModelString();

  result = 0;
  if (v4 <= 5)
  {
    if ((v4 - 3) >= 3)
    {
      if (!v4)
      {
        v6 = __biome_log_for_category();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          sub_10004BF10();
        }

        return 0;
      }

      return result;
    }

    return 0x20000400000;
  }

  if (v4 == 6)
  {
    return 0x400000;
  }

  if (v4 == 7)
  {
    return 0x20000400000;
  }

  return result;
}

- (void)registerRequestID:(id)a3 options:(id)a4 requestHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:v8];

  if (!v11)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      loggingIdentifier = self->_loggingIdentifier;
      v17 = 138412290;
      v18 = loggingIdentifier;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "BMRapportClient[%@]: register request", &v17, 0xCu);
    }

    if (self->_state)
    {
      v14 = __biome_log_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10004C15C(self, v14);
      }
    }

    else
    {
      if (!self->_registeredRequests)
      {
        v15 = objc_opt_new();
        registeredRequests = self->_registeredRequests;
        self->_registeredRequests = v15;
      }

      v14 = objc_alloc_init(RPRequestRegistration);
      [v14 setRequestID:v8];
      [v14 setOptions:v9];
      [v14 setHandler:v10];
      [(NSMutableDictionary *)self->_registeredRequests setObject:v14 forKeyedSubscript:v8];
    }
  }
}

- (void)_handleRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state != 3)
  {
    v13 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:v16];
    v14 = [v13 handler];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      (v14)[2](v14, v10, v11, v12);
      objc_autoreleasePoolPop(v15);
    }
  }
}

- (void)_registerRequests
{
  if (self->_state == 1)
  {
    objc_initWeak(&location, self);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = self->_registeredRequests;
    v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v3)
    {
      v12 = *v16;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v15 + 1) + 8 * i);
          v6 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:v5];
          client = self->_client;
          v8 = [v6 options];
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_100035708;
          v13[3] = &unk_100078D00;
          objc_copyWeak(&v14, &location);
          v13[4] = v5;
          v9 = objc_retainBlock(v13);
          objc_destroyWeak(&v14);
          [(RPCompanionLinkClient *)client registerRequestID:v5 options:v8 handler:v9];
        }

        v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v3);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10004C1E4(self, v10);
    }
  }
}

- (void)_deregisterRequests
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_registeredRequests;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(RPCompanionLinkClient *)self->_client deregisterRequestID:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_registeredRequests removeAllObjects];
}

@end