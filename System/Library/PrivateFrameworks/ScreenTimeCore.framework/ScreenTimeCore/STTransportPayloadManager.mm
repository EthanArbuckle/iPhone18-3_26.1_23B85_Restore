@interface STTransportPayloadManager
- (STTransportPayloadManager)initWithTransport:(id)transport localTransport:(id)localTransport persistenceController:(id)controller;
- (STTransportPayloadManagerDelegate)delegate;
- (void)_forwardPayloadToLocalTransport:(id)transport;
- (void)_operation:(id)_operation cancelledDidChange:(BOOL)change;
- (void)_operation:(id)_operation executingDidChange:(BOOL)change;
- (void)_operation:(id)_operation finishedDidChange:(BOOL)change;
- (void)_processEnqueuedPayloads;
- (void)_sendPayload:(id)payload;
- (void)_updatePayloadUUID:(id)d toState:(unint64_t)state context:(id)context;
- (void)enqueuePayload:(id)payload;
- (void)invalidate;
- (void)localTransport:(id)transport didReceivePayload:(id)payload;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resume;
- (void)transport:(id)transport didReceiveData:(id)data altURI:(id)i appleID:(id)d serverReceivedTime:(id)time;
- (void)transport:(id)transport didReceiveUpdatedState:(unint64_t)state forPayloadUUID:(id)d context:(id)context error:(id)error;
@end

@implementation STTransportPayloadManager

- (STTransportPayloadManager)initWithTransport:(id)transport localTransport:(id)localTransport persistenceController:(id)controller
{
  transportCopy = transport;
  localTransportCopy = localTransport;
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = STTransportPayloadManager;
  v12 = [(STTransportPayloadManager *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transport, transport);
    [(STTransport *)v13->_transport setDelegate:v13];
    objc_storeStrong(&v13->_localTransport, localTransport);
    [(STLocalIDSTransport *)v13->_localTransport setDelegate:v13];
    objc_storeStrong(&v13->_persistenceController, controller);
    v14 = objc_opt_new();
    operationQueue = v13->_operationQueue;
    v13->_operationQueue = v14;

    [(NSOperationQueue *)v13->_operationQueue setMaxConcurrentOperationCount:1];
    v16 = v13->_operationQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100092050;
    v20[3] = &unk_1001A3180;
    v21 = controllerCopy;
    [(NSOperationQueue *)v16 addOperationWithBlock:v20];
    v17 = objc_opt_new();
    queuedProcessQueueOperations = v13->_queuedProcessQueueOperations;
    v13->_queuedProcessQueueOperations = v17;
  }

  return v13;
}

- (void)resume
{
  if ([(STTransportPayloadManager *)self isInvalid])
  {
    sub_10012059C(a2, self);
  }

  [(STTransportPayloadManager *)self setResumed:1];
  operationQueue = [(STTransportPayloadManager *)self operationQueue];
  [operationQueue setSuspended:0];

  transport = [(STTransportPayloadManager *)self transport];
  [transport resume];

  v6 = +[STLog payloadManager];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[STTransportPayloadManager resume]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", &v7, 0xCu);
  }
}

- (void)invalidate
{
  operationQueue = [(STTransportPayloadManager *)self operationQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100092440;
  v4[3] = &unk_1001A3180;
  v4[4] = self;
  [operationQueue addOperationWithBlock:v4];
}

- (void)enqueuePayload:(id)payload
{
  payloadCopy = payload;
  v5 = +[STLog payloadManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v17 = "[STTransportPayloadManager enqueuePayload:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", buf, 0xCu);
  }

  v6 = [STEnqueuePayloadOperation alloc];
  persistenceController = [(STTransportPayloadManager *)self persistenceController];
  v8 = [(STEnqueuePayloadOperation *)v6 initWithPayload:payloadCopy persistenceController:persistenceController];

  objc_initWeak(buf, v8);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100092714;
  v13 = &unk_1001A5FF8;
  objc_copyWeak(&v15, buf);
  selfCopy = self;
  [(STEnqueuePayloadOperation *)v8 setCompletionBlock:&v10];
  v9 = [(STTransportPayloadManager *)self operationQueue:v10];
  [v9 addOperation:v8];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_processEnqueuedPayloads
{
  v3 = self->_queuedProcessQueueOperations;
  objc_sync_enter(v3);
  if ([(NSMutableSet *)self->_queuedProcessQueueOperations count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [STProcessPayloadQueueOperation alloc];
    persistenceController = [(STTransportPayloadManager *)self persistenceController];
    v4 = [(STPersistenceOperation *)v5 initWithPersistenceController:persistenceController];

    [(NSMutableSet *)self->_queuedProcessQueueOperations addObject:v4];
  }

  objc_sync_exit(v3);

  v7 = +[STLog payloadManager];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      *buf = 136446210;
      v17 = "[STTransportPayloadManager _processEnqueuedPayloads]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nAdding process payload queue operation...", buf, 0xCu);
    }

    objc_initWeak(buf, v4);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100092A2C;
    v13 = &unk_1001A5FF8;
    objc_copyWeak(&v15, buf);
    selfCopy = self;
    [(STProcessPayloadQueueOperation *)v4 setCompletionBlock:&v10];
    [(STProcessPayloadQueueOperation *)v4 addObserver:self forKeyPath:@"cancelled" options:1 context:"KVOContextSTTransportPayloadManager", v10, v11, v12, v13];
    [(STProcessPayloadQueueOperation *)v4 addObserver:self forKeyPath:@"executing" options:1 context:"KVOContextSTTransportPayloadManager"];
    [(STProcessPayloadQueueOperation *)v4 addObserver:self forKeyPath:@"finished" options:1 context:"KVOContextSTTransportPayloadManager"];
    operationQueue = [(STTransportPayloadManager *)self operationQueue];
    [operationQueue addOperation:v4];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v8)
    {
      *buf = 136446210;
      v17 = "[STTransportPayloadManager _processEnqueuedPayloads]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nLast process payload queue operation hasn't had a chance to run, ignoring new request", buf, 0xCu);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == "KVOContextSTTransportPayloadManager")
  {
    if ([pathCopy isEqualToString:@"cancelled"])
    {
      v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v14 = +[NSNull null];

      if (v13 == v14)
      {

        v13 = 0;
      }

      -[STTransportPayloadManager _operation:cancelledDidChange:](self, "_operation:cancelledDidChange:", objectCopy, [v13 BOOLValue]);
    }

    else if ([pathCopy isEqualToString:@"executing"])
    {
      v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v15 = +[NSNull null];

      if (v13 == v15)
      {

        v13 = 0;
      }

      -[STTransportPayloadManager _operation:executingDidChange:](self, "_operation:executingDidChange:", objectCopy, [v13 BOOLValue]);
    }

    else
    {
      if (![pathCopy isEqualToString:@"finished"])
      {
        goto LABEL_16;
      }

      v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v16 = +[NSNull null];

      if (v13 == v16)
      {

        v13 = 0;
      }

      -[STTransportPayloadManager _operation:finishedDidChange:](self, "_operation:finishedDidChange:", objectCopy, [v13 BOOLValue]);
    }

    goto LABEL_16;
  }

  v17.receiver = self;
  v17.super_class = STTransportPayloadManager;
  [(STTransportPayloadManager *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_16:
}

- (void)_operation:(id)_operation cancelledDidChange:(BOOL)change
{
  changeCopy = change;
  _operationCopy = _operation;
  v7 = +[STLog payloadManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[STTransportPayloadManager _operation:cancelledDidChange:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", &v9, 0xCu);
  }

  if (changeCopy)
  {
    v8 = self->_queuedProcessQueueOperations;
    objc_sync_enter(v8);
    [(NSMutableSet *)self->_queuedProcessQueueOperations removeObject:_operationCopy];
    objc_sync_exit(v8);
  }
}

- (void)_operation:(id)_operation executingDidChange:(BOOL)change
{
  changeCopy = change;
  _operationCopy = _operation;
  v7 = +[STLog payloadManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[STTransportPayloadManager _operation:executingDidChange:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", &v9, 0xCu);
  }

  if (changeCopy)
  {
    v8 = self->_queuedProcessQueueOperations;
    objc_sync_enter(v8);
    [(NSMutableSet *)self->_queuedProcessQueueOperations removeObject:_operationCopy];
    objc_sync_exit(v8);
  }
}

- (void)_operation:(id)_operation finishedDidChange:(BOOL)change
{
  changeCopy = change;
  _operationCopy = _operation;
  v7 = +[STLog payloadManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[STTransportPayloadManager _operation:finishedDidChange:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", &v9, 0xCu);
  }

  if (changeCopy)
  {
    v8 = self->_queuedProcessQueueOperations;
    objc_sync_enter(v8);
    [(NSMutableSet *)self->_queuedProcessQueueOperations removeObject:_operationCopy];
    objc_sync_exit(v8);

    [_operationCopy removeObserver:self forKeyPath:@"cancelled" context:"KVOContextSTTransportPayloadManager"];
    [_operationCopy removeObserver:self forKeyPath:@"executing" context:"KVOContextSTTransportPayloadManager"];
    [_operationCopy removeObserver:self forKeyPath:@"finished" context:"KVOContextSTTransportPayloadManager"];
  }
}

- (void)_sendPayload:(id)payload
{
  payloadCopy = payload;
  v5 = +[STLog payloadManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v26 = "[STTransportPayloadManager _sendPayload:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", buf, 0xCu);
  }

  [(STTransportPayloadManager *)self _forwardPayloadToLocalTransport:payloadCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  destinations = [payloadCopy destinations];
  v7 = [destinations countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    v9 = STUnifiedTransportPayloadDestinationTypePairedDevice;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(destinations);
        }

        type = [*(*(&v20 + 1) + 8 * v10) type];
        v12 = [type isEqualToString:v9];

        if (!v12)
        {

          v13 = +[STLog payloadManager];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v26 = "[STTransportPayloadManager _sendPayload:]";
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nPayload contains non paired device destination", buf, 0xCu);
          }

          objc_initWeak(buf, self);
          transport = [(STTransportPayloadManager *)self transport];
          destinations2 = [payloadCopy destinations];
          persistenceController = [(STTransportPayloadManager *)self persistenceController];
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_1000934CC;
          v17[3] = &unk_1001A6020;
          v18 = payloadCopy;
          objc_copyWeak(&v19, buf);
          [transport resolveTransportDestinations:destinations2 toLocal:0 persistenceController:persistenceController completion:v17];

          objc_destroyWeak(&v19);
          objc_destroyWeak(buf);
          goto LABEL_15;
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [destinations countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (void)_updatePayloadUUID:(id)d toState:(unint64_t)state context:(id)context
{
  dCopy = d;
  contextCopy = context;
  v10 = +[STLog payloadManager];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (state - 1 > 4)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_1001A6068[state - 1];
    }

    v12 = 136446978;
    v13 = "[STTransportPayloadManager _updatePayloadUUID:toState:context:]";
    v14 = 2112;
    v15 = dCopy;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = contextCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \npayloadUUID: %@, \nstate: %@, \ncontext: %@", &v12, 0x2Au);
  }

  [(STTransportPayloadManager *)self _processEnqueuedPayloads];
}

- (void)_forwardPayloadToLocalTransport:(id)transport
{
  transportCopy = transport;
  payloadType = [transportCopy payloadType];
  if ([payloadType isEqualToString:@"RMUnifiedTransportPayloadTypeFamilySettings"])
  {
    localTransport = [(STTransportPayloadManager *)self localTransport];
    [localTransport sendPayload:transportCopy];
  }

  else if (([payloadType isEqualToString:@"RMUnifiedTransportPayloadTypeBlueprints"] & 1) != 0 || objc_msgSend(payloadType, "isEqualToString:", @"RMUnifiedTransportPayloadTypeCheckinResponse"))
  {
    v30 = payloadType;
    v31 = transportCopy;
    payloadDictionary = [transportCopy payloadDictionary];
    v8 = [payloadDictionary mutableCopy];

    v29 = v8;
    v9 = [v8 objectForKeyedSubscript:?];
    v10 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      v14 = STBlueprintTypeDowntime;
      v15 = STBlueprintTypeManagedUser;
      v16 = STBlueprintTypeAlwaysAllowedApps;
      v33 = STBlueprintTypeRestrictions;
      v32 = STBlueprintTypeUsageLimitOverride;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          v19 = [v18 objectForKeyedSubscript:@"type"];
          if (([v19 isEqualToString:v14] & 1) != 0 || (objc_msgSend(v19, "isEqualToString:", v15) & 1) != 0 || (objc_msgSend(v19, "isEqualToString:", v16) & 1) != 0 || (objc_msgSend(v19, "isEqualToString:", v33) & 1) != 0 || objc_msgSend(v19, "isEqualToString:", v32))
          {
            [v10 addObject:v18];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v12);
    }

    if ([v10 count])
    {
      v20 = v10;
    }

    else
    {
      v20 = 0;
    }

    [v8 setObject:v20 forKeyedSubscript:@"Blueprints"];
    v21 = [STUnifiedTransportPayload alloc];
    transportCopy = v31;
    userInfo = [v31 userInfo];
    payloadType = v30;
    v23 = [(STUnifiedTransportPayload *)v21 initWithPayload:v8 type:v30 userInfo:userInfo];

    payloadDictionary2 = [(STUnifiedTransportPayload *)v23 payloadDictionary];
    allKeys = [payloadDictionary2 allKeys];
    v26 = [allKeys count];

    if (v26)
    {
      localTransport2 = [v28 localTransport];
      [localTransport2 sendPayload:v23];
    }

    else
    {
      localTransport2 = +[STLog payloadManager];
      if (os_log_type_enabled(localTransport2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v40 = "[STTransportPayloadManager _forwardPayloadToLocalTransport:]";
        _os_log_impl(&_mh_execute_header, localTransport2, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nSkipping forward to local transport -- filtering left nothing to send", buf, 0xCu);
      }
    }
  }
}

- (void)transport:(id)transport didReceiveData:(id)data altURI:(id)i appleID:(id)d serverReceivedTime:(id)time
{
  dataCopy = data;
  iCopy = i;
  dCopy = d;
  timeCopy = time;
  transportCopy = transport;
  v17 = +[STLog payloadManager];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v34 = "[STTransportPayloadManager transport:didReceiveData:altURI:appleID:serverReceivedTime:]";
    v35 = 2048;
    v36 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[v1] %{public}s: \nReceived data: %lu bytes", buf, 0x16u);
  }

  v18 = [STUnifiedTransportPayloadDestination alloc];
  v19 = [v18 initWithAddress:iCopy type:STUnifiedTransportPayloadDestinationTypeUser];
  v32 = v19;
  v20 = [NSArray arrayWithObjects:&v32 count:1];
  persistenceController = [(STTransportPayloadManager *)self persistenceController];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100093CB0;
  v26[3] = &unk_1001A6048;
  v27 = dataCopy;
  v28 = iCopy;
  v29 = dCopy;
  v30 = timeCopy;
  selfCopy = self;
  v22 = timeCopy;
  v23 = dCopy;
  v24 = iCopy;
  v25 = dataCopy;
  [transportCopy resolveTransportDestinations:v20 toLocal:1 persistenceController:persistenceController completion:v26];
}

- (void)transport:(id)transport didReceiveUpdatedState:(unint64_t)state forPayloadUUID:(id)d context:(id)context error:(id)error
{
  transportCopy = transport;
  dCopy = d;
  contextCopy = context;
  errorCopy = error;
  v16 = +[STLog familyMessaging];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [transportCopy description];
    v18 = v17;
    if (state - 1 > 4)
    {
      v19 = @"unknown";
    }

    else
    {
      v19 = off_1001A6068[state - 1];
    }

    v21 = 136447490;
    v22 = "[STTransportPayloadManager transport:didReceiveUpdatedState:forPayloadUUID:context:error:]";
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v19;
    v27 = 2112;
    v28 = dCopy;
    v29 = 2112;
    v30 = contextCopy;
    v31 = 2114;
    v32 = errorCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \ntransport: %@, \npayloadState: %@, \npayloadUUID: %@, \ncontext: %@, \nerror: %{public}@", &v21, 0x3Eu);
  }

  if (dCopy)
  {
    [(STTransportPayloadManager *)self _updatePayloadUUID:dCopy toState:state context:contextCopy];
  }

  else
  {
    v20 = +[STLog payloadManager];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10012087C();
    }
  }
}

- (void)localTransport:(id)transport didReceivePayload:(id)payload
{
  payloadCopy = payload;
  delegate = [(STTransportPayloadManager *)self delegate];
  [delegate payloadManager:self didReceivePayload:payloadCopy];
}

- (STTransportPayloadManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end