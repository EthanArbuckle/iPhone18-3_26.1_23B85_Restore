@interface STTransportPayloadManager
- (STTransportPayloadManager)initWithTransport:(id)a3 localTransport:(id)a4 persistenceController:(id)a5;
- (STTransportPayloadManagerDelegate)delegate;
- (void)_forwardPayloadToLocalTransport:(id)a3;
- (void)_operation:(id)a3 cancelledDidChange:(BOOL)a4;
- (void)_operation:(id)a3 executingDidChange:(BOOL)a4;
- (void)_operation:(id)a3 finishedDidChange:(BOOL)a4;
- (void)_processEnqueuedPayloads;
- (void)_sendPayload:(id)a3;
- (void)_updatePayloadUUID:(id)a3 toState:(unint64_t)a4 context:(id)a5;
- (void)enqueuePayload:(id)a3;
- (void)invalidate;
- (void)localTransport:(id)a3 didReceivePayload:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resume;
- (void)transport:(id)a3 didReceiveData:(id)a4 altURI:(id)a5 appleID:(id)a6 serverReceivedTime:(id)a7;
- (void)transport:(id)a3 didReceiveUpdatedState:(unint64_t)a4 forPayloadUUID:(id)a5 context:(id)a6 error:(id)a7;
@end

@implementation STTransportPayloadManager

- (STTransportPayloadManager)initWithTransport:(id)a3 localTransport:(id)a4 persistenceController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = STTransportPayloadManager;
  v12 = [(STTransportPayloadManager *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transport, a3);
    [(STTransport *)v13->_transport setDelegate:v13];
    objc_storeStrong(&v13->_localTransport, a4);
    [(STLocalIDSTransport *)v13->_localTransport setDelegate:v13];
    objc_storeStrong(&v13->_persistenceController, a5);
    v14 = objc_opt_new();
    operationQueue = v13->_operationQueue;
    v13->_operationQueue = v14;

    [(NSOperationQueue *)v13->_operationQueue setMaxConcurrentOperationCount:1];
    v16 = v13->_operationQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100092050;
    v20[3] = &unk_1001A3180;
    v21 = v11;
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
  v4 = [(STTransportPayloadManager *)self operationQueue];
  [v4 setSuspended:0];

  v5 = [(STTransportPayloadManager *)self transport];
  [v5 resume];

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
  v3 = [(STTransportPayloadManager *)self operationQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100092440;
  v4[3] = &unk_1001A3180;
  v4[4] = self;
  [v3 addOperationWithBlock:v4];
}

- (void)enqueuePayload:(id)a3
{
  v4 = a3;
  v5 = +[STLog payloadManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v17 = "[STTransportPayloadManager enqueuePayload:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", buf, 0xCu);
  }

  v6 = [STEnqueuePayloadOperation alloc];
  v7 = [(STTransportPayloadManager *)self persistenceController];
  v8 = [(STEnqueuePayloadOperation *)v6 initWithPayload:v4 persistenceController:v7];

  objc_initWeak(buf, v8);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100092714;
  v13 = &unk_1001A5FF8;
  objc_copyWeak(&v15, buf);
  v14 = self;
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
    v6 = [(STTransportPayloadManager *)self persistenceController];
    v4 = [(STPersistenceOperation *)v5 initWithPersistenceController:v6];

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
    v14 = self;
    [(STProcessPayloadQueueOperation *)v4 setCompletionBlock:&v10];
    [(STProcessPayloadQueueOperation *)v4 addObserver:self forKeyPath:@"cancelled" options:1 context:"KVOContextSTTransportPayloadManager", v10, v11, v12, v13];
    [(STProcessPayloadQueueOperation *)v4 addObserver:self forKeyPath:@"executing" options:1 context:"KVOContextSTTransportPayloadManager"];
    [(STProcessPayloadQueueOperation *)v4 addObserver:self forKeyPath:@"finished" options:1 context:"KVOContextSTTransportPayloadManager"];
    v9 = [(STTransportPayloadManager *)self operationQueue];
    [v9 addOperation:v4];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == "KVOContextSTTransportPayloadManager")
  {
    if ([v10 isEqualToString:@"cancelled"])
    {
      v13 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v14 = +[NSNull null];

      if (v13 == v14)
      {

        v13 = 0;
      }

      -[STTransportPayloadManager _operation:cancelledDidChange:](self, "_operation:cancelledDidChange:", v11, [v13 BOOLValue]);
    }

    else if ([v10 isEqualToString:@"executing"])
    {
      v13 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v15 = +[NSNull null];

      if (v13 == v15)
      {

        v13 = 0;
      }

      -[STTransportPayloadManager _operation:executingDidChange:](self, "_operation:executingDidChange:", v11, [v13 BOOLValue]);
    }

    else
    {
      if (![v10 isEqualToString:@"finished"])
      {
        goto LABEL_16;
      }

      v13 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v16 = +[NSNull null];

      if (v13 == v16)
      {

        v13 = 0;
      }

      -[STTransportPayloadManager _operation:finishedDidChange:](self, "_operation:finishedDidChange:", v11, [v13 BOOLValue]);
    }

    goto LABEL_16;
  }

  v17.receiver = self;
  v17.super_class = STTransportPayloadManager;
  [(STTransportPayloadManager *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_16:
}

- (void)_operation:(id)a3 cancelledDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[STLog payloadManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[STTransportPayloadManager _operation:cancelledDidChange:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", &v9, 0xCu);
  }

  if (v4)
  {
    v8 = self->_queuedProcessQueueOperations;
    objc_sync_enter(v8);
    [(NSMutableSet *)self->_queuedProcessQueueOperations removeObject:v6];
    objc_sync_exit(v8);
  }
}

- (void)_operation:(id)a3 executingDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[STLog payloadManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[STTransportPayloadManager _operation:executingDidChange:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", &v9, 0xCu);
  }

  if (v4)
  {
    v8 = self->_queuedProcessQueueOperations;
    objc_sync_enter(v8);
    [(NSMutableSet *)self->_queuedProcessQueueOperations removeObject:v6];
    objc_sync_exit(v8);
  }
}

- (void)_operation:(id)a3 finishedDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[STLog payloadManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[STTransportPayloadManager _operation:finishedDidChange:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", &v9, 0xCu);
  }

  if (v4)
  {
    v8 = self->_queuedProcessQueueOperations;
    objc_sync_enter(v8);
    [(NSMutableSet *)self->_queuedProcessQueueOperations removeObject:v6];
    objc_sync_exit(v8);

    [v6 removeObserver:self forKeyPath:@"cancelled" context:"KVOContextSTTransportPayloadManager"];
    [v6 removeObserver:self forKeyPath:@"executing" context:"KVOContextSTTransportPayloadManager"];
    [v6 removeObserver:self forKeyPath:@"finished" context:"KVOContextSTTransportPayloadManager"];
  }
}

- (void)_sendPayload:(id)a3
{
  v4 = a3;
  v5 = +[STLog payloadManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v26 = "[STTransportPayloadManager _sendPayload:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", buf, 0xCu);
  }

  [(STTransportPayloadManager *)self _forwardPayloadToLocalTransport:v4];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v4 destinations];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) type];
        v12 = [v11 isEqualToString:v9];

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
          v14 = [(STTransportPayloadManager *)self transport];
          v15 = [v4 destinations];
          v16 = [(STTransportPayloadManager *)self persistenceController];
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_1000934CC;
          v17[3] = &unk_1001A6020;
          v18 = v4;
          objc_copyWeak(&v19, buf);
          [v14 resolveTransportDestinations:v15 toLocal:0 persistenceController:v16 completion:v17];

          objc_destroyWeak(&v19);
          objc_destroyWeak(buf);
          goto LABEL_15;
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (void)_updatePayloadUUID:(id)a3 toState:(unint64_t)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[STLog payloadManager];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 - 1 > 4)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_1001A6068[a4 - 1];
    }

    v12 = 136446978;
    v13 = "[STTransportPayloadManager _updatePayloadUUID:toState:context:]";
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \npayloadUUID: %@, \nstate: %@, \ncontext: %@", &v12, 0x2Au);
  }

  [(STTransportPayloadManager *)self _processEnqueuedPayloads];
}

- (void)_forwardPayloadToLocalTransport:(id)a3
{
  v4 = a3;
  v5 = [v4 payloadType];
  if ([v5 isEqualToString:@"RMUnifiedTransportPayloadTypeFamilySettings"])
  {
    v6 = [(STTransportPayloadManager *)self localTransport];
    [v6 sendPayload:v4];
  }

  else if (([v5 isEqualToString:@"RMUnifiedTransportPayloadTypeBlueprints"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"RMUnifiedTransportPayloadTypeCheckinResponse"))
  {
    v30 = v5;
    v31 = v4;
    v7 = [v4 payloadDictionary];
    v8 = [v7 mutableCopy];

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
    v4 = v31;
    v22 = [v31 userInfo];
    v5 = v30;
    v23 = [(STUnifiedTransportPayload *)v21 initWithPayload:v8 type:v30 userInfo:v22];

    v24 = [(STUnifiedTransportPayload *)v23 payloadDictionary];
    v25 = [v24 allKeys];
    v26 = [v25 count];

    if (v26)
    {
      v27 = [v28 localTransport];
      [v27 sendPayload:v23];
    }

    else
    {
      v27 = +[STLog payloadManager];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v40 = "[STTransportPayloadManager _forwardPayloadToLocalTransport:]";
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nSkipping forward to local transport -- filtering left nothing to send", buf, 0xCu);
      }
    }
  }
}

- (void)transport:(id)a3 didReceiveData:(id)a4 altURI:(id)a5 appleID:(id)a6 serverReceivedTime:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a3;
  v17 = +[STLog payloadManager];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v34 = "[STTransportPayloadManager transport:didReceiveData:altURI:appleID:serverReceivedTime:]";
    v35 = 2048;
    v36 = [v12 length];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[v1] %{public}s: \nReceived data: %lu bytes", buf, 0x16u);
  }

  v18 = [STUnifiedTransportPayloadDestination alloc];
  v19 = [v18 initWithAddress:v13 type:STUnifiedTransportPayloadDestinationTypeUser];
  v32 = v19;
  v20 = [NSArray arrayWithObjects:&v32 count:1];
  v21 = [(STTransportPayloadManager *)self persistenceController];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100093CB0;
  v26[3] = &unk_1001A6048;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = self;
  v22 = v15;
  v23 = v14;
  v24 = v13;
  v25 = v12;
  [v16 resolveTransportDestinations:v20 toLocal:1 persistenceController:v21 completion:v26];
}

- (void)transport:(id)a3 didReceiveUpdatedState:(unint64_t)a4 forPayloadUUID:(id)a5 context:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[STLog familyMessaging];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v12 description];
    v18 = v17;
    if (a4 - 1 > 4)
    {
      v19 = @"unknown";
    }

    else
    {
      v19 = off_1001A6068[a4 - 1];
    }

    v21 = 136447490;
    v22 = "[STTransportPayloadManager transport:didReceiveUpdatedState:forPayloadUUID:context:error:]";
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v19;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \ntransport: %@, \npayloadState: %@, \npayloadUUID: %@, \ncontext: %@, \nerror: %{public}@", &v21, 0x3Eu);
  }

  if (v13)
  {
    [(STTransportPayloadManager *)self _updatePayloadUUID:v13 toState:a4 context:v14];
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

- (void)localTransport:(id)a3 didReceivePayload:(id)a4
{
  v5 = a4;
  v6 = [(STTransportPayloadManager *)self delegate];
  [v6 payloadManager:self didReceivePayload:v5];
}

- (STTransportPayloadManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end