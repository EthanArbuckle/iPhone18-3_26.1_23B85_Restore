@interface STIDSTransport
+ (void)postDiagnosticsServiceMessageForPayload:(id)a3;
- (BOOL)isPayloadWithIdentifierValid:(id)a3 error:(id *)a4;
- (STIDSTransport)init;
- (STTransportDelegate)delegate;
- (void)_receivePayloadData:(id)a3 fromID:(id)a4 serverReceivedTime:(id)a5;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)sendPayload:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
@end

@implementation STIDSTransport

- (STIDSTransport)init
{
  v10.receiver = self;
  v10.super_class = STIDSTransport;
  v2 = [(STIDSTransport *)&v10 init];
  if (v2)
  {
    v3 = _os_activity_create(&_mh_execute_header, "STIDSTransport Initialize", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = objc_opt_new();
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v4;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.ScreenTimeAgent.ids-transport"];
    v6 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.digitalhealth"];
    service = v2->_service;
    v2->_service = v6;

    os_activity_scope_leave(&state);
  }

  v8 = +[STLog familyMessaging];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(state.opaque[0]) = 136446210;
    *(state.opaque + 4) = "[STIDSTransport init]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nLeaving init", &state, 0xCu);
  }

  return v2;
}

- (void)dealloc
{
  if (![(STIDSTransport *)self isInvalid])
  {
    sub_1001178B8(a2, self);
  }

  v4.receiver = self;
  v4.super_class = STIDSTransport;
  [(STIDSTransport *)&v4 dealloc];
}

- (void)resume
{
  if ([(STIDSTransport *)self isInvalid])
  {
    sub_10011792C(a2, self);
  }

  [(STIDSTransport *)self setResumed:1];
  v4 = [(STIDSTransport *)self operationQueue];
  [v4 setSuspended:0];

  v5 = self->_cachedIDSAccountIsActiveLock;
  objc_sync_enter(v5);
  v6 = dispatch_queue_create([@"com.apple.ScreenTimeAgent.ids-transport-delegate" UTF8String], 0);
  [(STIDSTransport *)self setServiceQueue:v6];

  v7 = [(STIDSTransport *)self service];
  v8 = [(STIDSTransport *)self serviceQueue];
  [v7 addDelegate:self queue:v8];

  v9 = [(STIDSTransport *)self service];
  v10 = [v9 accounts];
  v11 = [NSString stringWithFormat:@"@max.%@", @"canSend"];
  v12 = [v10 valueForKeyPath:v11];

  -[STIDSTransport setCachedIDSAccountIsActive:](self, "setCachedIDSAccountIsActive:", [v12 BOOLValue]);
  objc_sync_exit(v5);

  v13 = +[STLog idsTransport];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v15 = "[STIDSTransport resume]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", buf, 0xCu);
  }
}

- (void)invalidate
{
  [(STIDSTransport *)self setInvalid:1];
  v3 = [(STIDSTransport *)self operationQueue];
  [v3 setSuspended:1];

  v4 = [(STIDSTransport *)self service];
  [v4 removeDelegate:self];

  [(STIDSTransport *)self setServiceQueue:0];
  v5 = +[STLog idsTransport];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[STIDSTransport invalidate]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s", &v6, 0xCu);
  }
}

+ (void)postDiagnosticsServiceMessageForPayload:(id)a3
{
  v8 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v8];
  v5 = v8;
  if (v4)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v11 = @"data";
    v12 = v4;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v6 postNotificationName:@"DiagnosticsService-IDSOutbound" object:a1 userInfo:v7];
  }

  else
  {
    v6 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to archive message payload for diagnostics service: %@", buf, 0xCu);
    }
  }
}

- (void)sendPayload:(id)a3
{
  v4 = a3;
  v5 = +[STLog familyMessaging];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[STIDSTransport sendPayload:]";
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nAttempting to send payload: %@", buf, 0x16u);
  }

  if (os_variant_has_internal_content())
  {
    [STIDSTransport postDiagnosticsServiceMessageForPayload:v4];
  }

  v6 = +[MCProfileConnection sharedConnection];
  v7 = [v6 effectiveBoolValueForSetting:MCFeatureEnablingRestrictionsAllowed] == 2;

  if (v7)
  {
    v8 = +[STLog idsTransport];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 payloadType];
      *buf = 136446466;
      *&buf[4] = "[STIDSTransport sendPayload:]";
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nRefusing to send IDS payload %{public}@, restrictions forbid Screen Time", buf, 0x16u);
    }
  }

  else
  {
    if (![(STIDSTransport *)self isResumed])
    {
      [(STIDSTransport *)self resume];
    }

    if (![(STIDSTransport *)self cachedIDSAccountIsActive])
    {
      v10 = +[STLog idsTransport];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001179A8();
      }
    }

    v11 = +[STLog idsTransport];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446467;
      *&buf[4] = "[STIDSTransport sendPayload:]";
      *&buf[12] = 2113;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nSending payload: %{private}@", buf, 0x16u);
    }

    v12 = [v4 destinations];
    v13 = [v12 valueForKeyPath:@"address"];
    v14 = [NSSet setWithArray:v13];

    v15 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v8 = v14;
    v16 = [v8 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v16)
    {
      v17 = *v45;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v8);
          }

          v19 = *(*(&v44 + 1) + 8 * i);
          v20 = IDSCopyAddressDestinationForDestination();
          [v15 addObject:v20];
        }

        v16 = [v8 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v16);
    }

    v21 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = sub_100043A08;
    v54 = sub_100043A18;
    v55 = objc_opt_new();
    v22 = +[IDSIDQueryController sharedInstance];
    v23 = [v15 allObjects];
    v24 = [(STIDSTransport *)self serviceQueue];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100043A20;
    v41[3] = &unk_1001A42B8;
    v43 = buf;
    v25 = v21;
    v42 = v25;
    [v22 refreshIDStatusForDestinations:v23 service:@"com.apple.private.alloy.digitalhealth" listenerID:@"STAgent" queue:v24 completionBlock:v41];

    dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
    if ([*(*&buf[8] + 40) count])
    {
      v26 = +[STLog idsTransport];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [*(*&buf[8] + 40) count];
        *v48 = 136446466;
        v49 = "[STIDSTransport sendPayload:]";
        v50 = 2048;
        v51 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nReachable destinations: %lu", v48, 0x16u);
      }

      v28 = [STSendPayloadWithIDSTransportOperation alloc];
      v29 = *(*&buf[8] + 40);
      v30 = [(STIDSTransport *)self service];
      v31 = [(STSendPayloadWithIDSTransportOperation *)v28 initWithPayload:v4 destinations:v29 service:v30];

      v32 = [(STIDSTransport *)self operationQueue];
      [v32 addOperation:v31];

      v33 = [(STIDSTransport *)self operationQueue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100043B44;
      v37[3] = &unk_1001A42E0;
      v38 = v4;
      v34 = v31;
      v39 = v34;
      v40 = self;
      [v33 addOperationWithBlock:v37];

      v35 = v38;
    }

    else
    {
      v36 = +[STLog idsTransport];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_100117A2C();
      }

      v34 = [(STIDSTransport *)self delegate];
      v35 = [v4 UUID];
      [(STSendPayloadWithIDSTransportOperation *)v34 transport:self didReceiveUpdatedState:4 forPayloadUUID:v35 context:0 error:0];
    }

    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)isPayloadWithIdentifierValid:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(STIDSTransport *)self service];
  LOBYTE(a4) = [v7 getProgressUpdateForIdentifier:v6 error:a4];

  return a4;
}

- (void)_receivePayloadData:(id)a3 fromID:(id)a4 serverReceivedTime:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MCProfileConnection sharedConnection];
  v12 = [v11 effectiveBoolValueForSetting:MCFeatureEnablingRestrictionsAllowed];

  if (v12 == 2)
  {
    v13 = +[STLog idsTransport];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100117B88();
    }
  }

  else
  {
    v13 = IDSCopyRawAddressForDestination();
    v14 = +[STLog idsTransport];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446979;
      v17 = "[STIDSTransport _receivePayloadData:fromID:serverReceivedTime:]";
      v18 = 2050;
      v19 = [v8 length];
      v20 = 2113;
      v21 = v9;
      v22 = 2113;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nReceived data of length: %{public}lu bytes, \nfromID: %{private}@, \nappleID: %{private}@", &v16, 0x2Au);
    }

    v15 = [(STIDSTransport *)self delegate];
    [v15 transport:self didReceiveData:v8 altURI:v9 appleID:v13 serverReceivedTime:v10];
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = +[STLog familyMessaging];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446979;
    v19 = "[STIDSTransport service:account:identifier:hasBeenDeliveredWithContext:]";
    v20 = 2113;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \naccount: %{private}@, \nidentifier: %{public}@, \ncontext: %@", buf, 0x2Au);
  }

  v13 = [(STIDSTransport *)self operationQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000448A8;
  v15[3] = &unk_1001A3020;
  v16 = v10;
  v17 = self;
  v14 = v10;
  [v13 addOperationWithBlock:v15];
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a7;
  v12 = a6;
  v13 = [v11 serverReceivedTime];
  v14 = +[STLog idsTransport];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 outgoingResponseIdentifier];
    v16 = [v10 length];
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 fromServerStorage]);
    v18 = 136447234;
    v19 = "[STIDSTransport service:account:incomingData:fromID:context:]";
    v20 = 2114;
    v21 = v15;
    v22 = 2050;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \noutgoingResponseIdentifier: %{public}@, \ndata length: %{public}lu, \nfromServerStorage: %@, \nserverReceivedTime: %@", &v18, 0x34u);
  }

  [(STIDSTransport *)self _receivePayloadData:v10 fromID:v12 serverReceivedTime:v13];
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [v12 serverReceivedTime];
  v14 = +[STLog idsTransport];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v12 outgoingResponseIdentifier];
    v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 fromServerStorage]);
    *buf = 136446978;
    v22 = "[STIDSTransport service:account:incomingResourceAtURL:fromID:context:]";
    v23 = 2114;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \noutgoingResponseIdentifier: %{public}@, \nfromServerStorage: %@, \nserverReceivedTime: %@", buf, 0x2Au);
  }

  v20 = 0;
  v17 = [NSData dataWithContentsOfURL:v10 options:0 error:&v20];
  v18 = v20;
  if (v17)
  {
    [(STIDSTransport *)self _receivePayloadData:v17 fromID:v11 serverReceivedTime:v13];
  }

  else
  {
    v19 = +[STLog idsTransport];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_100117D24();
    }
  }
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog idsTransport];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v26 = "[STIDSTransport service:activeAccountsChanged:]";
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nActive accounts changed: %@", buf, 0x16u);
  }

  v9 = self->_cachedIDSAccountIsActiveLock;
  objc_sync_enter(v9);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v20 + 1) + 8 * v13) isActive])
        {

          v15 = ![(STIDSTransport *)self cachedIDSAccountIsActive];
          v14 = 1;
          goto LABEL_13;
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
  v15 = 0;
LABEL_13:
  v16 = +[STLog familyMessaging];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "NO";
    if (v14)
    {
      v17 = "YES";
    }

    *buf = 136446466;
    v26 = "[STIDSTransport service:activeAccountsChanged:]";
    v27 = 2082;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nAt least one account is active: %{public}s", buf, 0x16u);
  }

  [(STIDSTransport *)self setCachedIDSAccountIsActive:v14];
  objc_sync_exit(v9);

  if (v15)
  {
    v18 = +[STLog familyMessaging];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v26 = "[STIDSTransport service:activeAccountsChanged:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nPosting notification: STIDSAccountDidBecomeActiveNotification", buf, 0xCu);
    }

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 postNotificationName:@"com.apple.remotemanagementd.ids-account.didBecomeActive" object:self];
  }
}

- (STTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end