@interface STConcreteIDSTransportPrimitives
+ (id)_optionsDictionaryWithFromID:(id)a3;
+ (id)_resourceURLForSendingOversizedData;
+ (void)_sortDestinationsToStatus:(id)a3 intoReachableDestinations:(id *)a4 unreachableDestinations:(id *)a5 unknownReachabilityDestinations:(id *)a6;
- (BOOL)canSend;
- (BOOL)signedInUserHasMultipleDevices;
- (STConcreteIDSTransportPrimitives)initWithServiceName:(id)a3;
- (STIDSTransportPrimitivesDelegate)delegate;
- (id)_sendData:(id)a3 toDestinations:(id)a4 options:(id)a5;
- (id)_sendOversizedData:(id)a3 toDestinations:(id)a4 sendOptions:(id)a5;
- (id)addressDestinationFromPrimitiveDestination:(id)a3;
- (id)primitiveDestinationFromRawAddress:(id)a3;
- (id)rawAddressFromPrimitiveDestination:(id)a3;
- (id)refreshedReachabilityOfPrimitiveDestination:(id)a3;
- (id)sendAcknowledgementMessageForResponseIdentifier:(id)a3 toDestination:(id)a4 fromDestination:(id)a5;
- (id)sendData:(id)a3 toDestinations:(id)a4 fromDestination:(id)a5;
- (void)_sendData:(id)a3 sendDataBlock:(id)a4 sendOversizedDataBlock:(id)a5;
- (void)addObserver:(id)a3 forReachabilityChangesOfPrimitiveDestinations:(id)a4;
- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6;
- (void)dealloc;
- (void)isCapabilityEnabledForDestination:(id)a3 capability:(id)a4 completionHandler:(id)a5;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)startOnQueue:(id)a3;
- (void)stop;
@end

@implementation STConcreteIDSTransportPrimitives

- (STConcreteIDSTransportPrimitives)initWithServiceName:(id)a3
{
  v10.receiver = self;
  v10.super_class = STConcreteIDSTransportPrimitives;
  v3 = a3;
  v4 = [(STConcreteIDSTransportPrimitives *)&v10 init];
  v5 = [v3 copy];

  serviceName = v4->_serviceName;
  v4->_serviceName = v5;

  v7 = [[IDSService alloc] initWithService:v4->_serviceName];
  service = v4->_service;
  v4->_service = v7;

  return v4;
}

- (void)dealloc
{
  [(IDSService *)self->_service removeDelegate:self];
  [(IDSBatchIDQueryController *)self->_primitiveDestinationStatusQueryController invalidate];
  v3.receiver = self;
  v3.super_class = STConcreteIDSTransportPrimitives;
  [(STConcreteIDSTransportPrimitives *)&v3 dealloc];
}

- (void)startOnQueue:(id)a3
{
  v4 = a3;
  v10 = objc_opt_new();
  [v10 setWantsCrossAccountMessaging:1];
  v5 = [(STConcreteIDSTransportPrimitives *)self service];
  [v5 addDelegate:self withDelegateProperties:v10 queue:v4];

  v6 = [IDSBatchIDQueryController alloc];
  v7 = [(STConcreteIDSTransportPrimitives *)self serviceName];
  v8 = [v6 initWithService:v7 delegate:self queue:v4];
  [(STConcreteIDSTransportPrimitives *)self setPrimitiveDestinationStatusQueryController:v8];

  serviceQueue = self->_serviceQueue;
  self->_serviceQueue = v4;
}

- (void)stop
{
  [(IDSService *)self->_service removeDelegate:self];
  primitiveDestinationStatusQueryController = self->_primitiveDestinationStatusQueryController;

  [(IDSBatchIDQueryController *)primitiveDestinationStatusQueryController invalidate];
}

- (BOOL)canSend
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(STConcreteIDSTransportPrimitives *)self service];
  v3 = [v2 accounts];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = &__kCFBooleanTrue;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([v9 accountType] != 2 && (objc_msgSend(v9, "canSend") & 1) != 0)
      {
        break;
      }

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        v7 = &__kCFBooleanFalse;
        break;
      }
    }
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  return [v7 BOOLValue];
}

- (BOOL)signedInUserHasMultipleDevices
{
  v2 = [(STConcreteIDSTransportPrimitives *)self service];
  v3 = [v2 devices];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)sendData:(id)a3 toDestinations:(id)a4 fromDestination:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [STConcreteIDSTransportPrimitives _optionsDictionaryWithFromID:a5];
  [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
  v11 = [v10 copy];
  v12 = [(STConcreteIDSTransportPrimitives *)self _sendData:v9 toDestinations:v8 options:v11];

  return v12;
}

- (id)sendAcknowledgementMessageForResponseIdentifier:(id)a3 toDestination:(id)a4 fromDestination:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [STConcreteIDSTransportPrimitives _optionsDictionaryWithFromID:a5];
  [v10 setObject:v9 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];

  v11 = [@"ACK" dataUsingEncoding:4];
  v12 = [NSSet setWithObject:v8];

  v13 = [v10 copy];
  v14 = [(STConcreteIDSTransportPrimitives *)self _sendData:v11 toDestinations:v12 options:v13];

  return v14;
}

+ (id)_optionsDictionaryWithFromID:(id)a3
{
  v7[0] = IDSSendMessageOptionFromIDKey;
  v7[1] = IDSSendMessageOptionTimeoutKey;
  v8[0] = a3;
  v8[1] = &off_1001B2110;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = [v4 mutableCopy];

  return v5;
}

- (id)_sendData:(id)a3 toDestinations:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_10001714C;
  v45 = sub_10001715C;
  v46 = 0;
  v11 = +[STLog familyMessaging];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 length];
    *buf = 136446978;
    v48 = "[STConcreteIDSTransportPrimitives _sendData:toDestinations:options:]";
    v49 = 2050;
    v50 = v12;
    v51 = 2112;
    v52 = v9;
    v53 = 2112;
    v54 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \ndata: %{public}lu bytes, \ndestinations: %@, \noptions: %@", buf, 0x2Au);
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100017164;
  v36[3] = &unk_1001A3130;
  v36[4] = self;
  v13 = v8;
  v37 = v13;
  v14 = v9;
  v38 = v14;
  v15 = v10;
  v39 = v15;
  v40 = &v41;
  v16 = objc_retainBlock(v36);
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_1000172F0;
  v30 = &unk_1001A3158;
  v35 = &v41;
  v31 = self;
  v17 = v13;
  v32 = v17;
  v18 = v14;
  v33 = v18;
  v19 = v15;
  v34 = v19;
  v20 = objc_retainBlock(&v27);
  [(STConcreteIDSTransportPrimitives *)self _sendData:v17 sendDataBlock:v16 sendOversizedDataBlock:v20, v27, v28, v29, v30, v31];
  v21 = +[STLog familyMessaging];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v42[5] type];
    v23 = "STResultTypeFailure";
    if (!v22)
    {
      v23 = "STResultTypeSuccess";
    }

    *buf = 136446466;
    v48 = "[STConcreteIDSTransportPrimitives _sendData:toDestinations:options:]";
    v49 = 2082;
    v50 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nprimativeIdentifierResult.type: %{public}s", buf, 0x16u);
  }

  if ([v42[5] type] == 1)
  {
    v24 = +[STLog idsTransportPrimitives];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1001128B4(v24);
    }
  }

  v25 = v42[5];

  _Block_object_dispose(&v41, 8);

  return v25;
}

- (void)_sendData:(id)a3 sendDataBlock:(id)a4 sendOversizedDataBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[STLog familyMessaging];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446466;
    v13 = "[STConcreteIDSTransportPrimitives _sendData:sendDataBlock:sendOversizedDataBlock:]";
    v14 = 2050;
    v15 = [v7 length];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \ndata: %{public}lu bytes", &v12, 0x16u);
  }

  if ([v7 length] >= 0xF000)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v11[2]();
}

- (id)_sendOversizedData:(id)a3 toDestinations:(id)a4 sendOptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[STLog familyMessaging];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v32 = "[STConcreteIDSTransportPrimitives _sendOversizedData:toDestinations:sendOptions:]";
    v33 = 2050;
    v34 = [v8 length];
    v35 = 2112;
    v36 = v9;
    v37 = 2112;
    v38 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \ndata: %{public}lu bytes, \ndestinations: %@, \nsendOptions: %@", buf, 0x2Au);
  }

  v12 = +[STConcreteIDSTransportPrimitives _resourceURLForSendingOversizedData];
  v30 = 0;
  v13 = [v8 writeToURL:v12 options:2 error:&v30];
  v14 = v30;
  if (v13)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000177F0;
    v28[3] = &unk_1001A3180;
    v15 = v12;
    v29 = v15;
    v16 = objc_retainBlock(v28);
    v17 = [(STConcreteIDSTransportPrimitives *)self service];
    v26 = 0;
    v27 = 0;
    v18 = [v17 sendResourceAtURL:v15 metadata:0 toDestinations:v9 priority:300 options:v10 identifier:&v27 error:&v26];
    v19 = v27;
    v20 = v26;

    (v16[2])(v16);
    if (v18)
    {
      v21 = [STResult success:v19];
    }

    else
    {
      v24 = +[STLog idsTransportPrimitives];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100112A34();
      }

      v21 = [STResult failure:v20];
    }

    v23 = v21;
  }

  else
  {
    v22 = +[STLog familyMessaging];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1001129AC();
    }

    v23 = [STResult failure:v14];
  }

  return v23;
}

+ (id)_resourceURLForSendingOversizedData
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 temporaryDirectory];
  v4 = objc_opt_new();
  v5 = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"IDS-SendFile-%@", v5];
  v7 = [v3 URLByAppendingPathComponent:v6];

  return v7;
}

- (id)primitiveDestinationFromRawAddress:(id)a3
{
  v3 = a3;
  if ([v3 _appearsToBeEmail])
  {
    v4 = IDSCopyIDForEmailAddress();
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([v3 _appearsToBePhoneNumber])
  {
    v4 = IDSCopyIDForPhoneNumber();
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)rawAddressFromPrimitiveDestination:(id)a3
{
  v3 = a3;
  v4 = +[STLog familyMessaging];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[STConcreteIDSTransportPrimitives rawAddressFromPrimitiveDestination:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nprimitiveDestination: %@", &v7, 0x16u);
  }

  v5 = IDSCopyRawAddressForDestination();

  return v5;
}

- (id)addressDestinationFromPrimitiveDestination:(id)a3
{
  v3 = a3;
  v4 = +[STLog familyMessaging];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[STConcreteIDSTransportPrimitives addressDestinationFromPrimitiveDestination:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nprimitiveDestination: %@", &v7, 0x16u);
  }

  v5 = IDSCopyAddressDestinationForDestination();

  return v5;
}

- (void)addObserver:(id)a3 forReachabilityChangesOfPrimitiveDestinations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcreteIDSTransportPrimitives *)self delegate];

  v9 = +[STLog idsTransportPrimitives];
  v10 = v9;
  if (v8 == v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446467;
      v13 = "[STConcreteIDSTransportPrimitives addObserver:forReachabilityChangesOfPrimitiveDestinations:]";
      v14 = 2113;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nAdded reachability observer for destinations: %{private}@", &v12, 0x16u);
    }

    v10 = [(STConcreteIDSTransportPrimitives *)self primitiveDestinationStatusQueryController];
    v11 = [v6 allObjects];
    [v10 setDestinations:v11];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100112B1C(v10);
  }
}

- (id)refreshedReachabilityOfPrimitiveDestination:(id)a3
{
  v4 = a3;
  v5 = +[STLog familyMessaging];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v20 = "[STConcreteIDSTransportPrimitives refreshedReachabilityOfPrimitiveDestination:]";
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nprimativeDestination: %@", buf, 0x16u);
  }

  v6 = +[STPromise pendingPromise];
  v7 = +[IDSIDQueryController sharedInstance];
  v8 = [(STConcreteIDSTransportPrimitives *)self serviceName];
  v9 = [(STConcreteIDSTransportPrimitives *)self serviceName];
  v10 = [(STConcreteIDSTransportPrimitives *)self serviceQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100017EDC;
  v16[3] = &unk_1001A31A8;
  v17 = v4;
  v11 = v6;
  v18 = v11;
  v12 = v4;
  [v7 refreshIDStatusForDestination:v12 service:v8 listenerID:v9 queue:v10 completionBlock:v16];

  v13 = v18;
  v14 = v11;

  return v11;
}

- (void)isCapabilityEnabledForDestination:(id)a3 capability:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[STLog familyMessaging];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v26 = "[STConcreteIDSTransportPrimitives isCapabilityEnabledForDestination:capability:completionHandler:]";
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nprimativeDestination: %@, \ndeviceCapability: %@", buf, 0x20u);
  }

  v12 = +[IDSIDQueryController sharedInstance];
  v24 = v8;
  v13 = [NSArray arrayWithObjects:&v24 count:1];
  v14 = [(STConcreteIDSTransportPrimitives *)self serviceName];
  v15 = [(STConcreteIDSTransportPrimitives *)self serviceName];
  v16 = [(STConcreteIDSTransportPrimitives *)self serviceQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000182C4;
  v20[3] = &unk_1001A31D0;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  [v12 currentRemoteDevicesForDestinations:v13 service:v14 listenerID:v15 queue:v16 completionBlock:v20];
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = +[STLog familyMessaging];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v12 length];
    v17 = [v14 description];
    v26 = 136447235;
    v27 = "[STConcreteIDSTransportPrimitives service:account:incomingData:fromID:context:]";
    v28 = 2113;
    v29 = v11;
    v30 = 2050;
    v31 = v16;
    v32 = 2113;
    v33 = v13;
    v34 = 2112;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \naccount: %{private}@, \ndata: %{public}lu bytes, \nfromID: %{private}@, \ncontext: %@", &v26, 0x34u);
  }

  v18 = [v14 incomingResponseIdentifier];
  if (v18)
  {
    v19 = +[STLog familyMessaging];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v14 incomingResponseIdentifier];
      v26 = 136446466;
      v27 = "[STConcreteIDSTransportPrimitives service:account:incomingData:fromID:context:]";
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nDid receive message with context.incomingResponseIdentifier: %{public}@", &v26, 0x16u);
    }

    v21 = [(STConcreteIDSTransportPrimitives *)self delegate];
    [v21 primitives:self didDeliverMessageWithPrimitiveIdentifier:v18 toPrimitiveDestination:v13];
  }

  else
  {
    v21 = [v14 outgoingResponseIdentifier];
    v22 = +[STLog idsTransportPrimitives];
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v14 fromServerStorage];
        v25 = "NO";
        v27 = "[STConcreteIDSTransportPrimitives service:account:incomingData:fromID:context:]";
        v26 = 136446722;
        if (v24)
        {
          v25 = "YES";
        }

        v28 = 2114;
        v29 = v21;
        v30 = 2082;
        v31 = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nDid receive message with context.outgoingResponseIdentifier: %{public}@) - fromServerStorage: %{public}s", &v26, 0x20u);
      }

      v23 = [(STConcreteIDSTransportPrimitives *)self delegate];
      [v23 primitives:self didReceiveData:v12 fromPrimitiveDestination:v13 primitiveResponseIdentifier:v21];
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_100112C14();
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = +[STLog familyMessaging];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447235;
    v28 = "[STConcreteIDSTransportPrimitives service:account:incomingResourceAtURL:fromID:context:]";
    v29 = 2113;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    v33 = 2113;
    v34 = v13;
    v35 = 2112;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \naccount: %{private}@, \nresourceURL: %@, \nfromID: %{private}@, \ncontext: %@", buf, 0x34u);
  }

  v16 = +[NSFileManager defaultManager];
  v17 = [v12 path];
  v26 = 0;
  v18 = [v16 attributesOfItemAtPath:v17 error:&v26];
  v19 = v26;

  if (!v18)
  {
    v20 = +[STLog idsTransportPrimitives];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = [v12 path];
      *buf = 136446979;
      v28 = "[STConcreteIDSTransportPrimitives service:account:incomingResourceAtURL:fromID:context:]";
      v29 = 2113;
      v30 = v24;
      v31 = 2113;
      v32 = v13;
      v33 = 2114;
      v34 = v19;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to get attributes for resourceURL.path: %{private}@, \nfrom: %{private}@, \nerror: %{public}@", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  if ([v18 fileSize] >= 0x1400001)
  {
    v20 = +[STLog idsTransportPrimitives];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100112D24(v18, v20);
    }

LABEL_9:
    v21 = v19;
    goto LABEL_15;
  }

  v25 = v19;
  v20 = [NSData dataWithContentsOfURL:v12 options:0 error:&v25];
  v21 = v25;

  if (v20)
  {
    v22 = [(STConcreteIDSTransportPrimitives *)self delegate];
    v23 = [v14 outgoingResponseIdentifier];
    [v22 primitives:self didReceiveData:v20 fromPrimitiveDestination:v13 primitiveResponseIdentifier:v23];
  }

  else
  {
    v22 = +[STLog idsTransportPrimitives];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100112C9C();
    }
  }

LABEL_15:
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v4 = a4;
  v5 = +[STLog idsTransportPrimitives];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446467;
    v8 = "[STConcreteIDSTransportPrimitives service:activeAccountsChanged:]";
    v9 = 2113;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \naccounts: %{private}@", &v7, 0x16u);
  }

  v6 = +[_TtC15ScreenTimeAgent6Daemon reactor];
  [v6 sendInitialSetup];
}

+ (void)_sortDestinationsToStatus:(id)a3 intoReachableDestinations:(id *)a4 unreachableDestinations:(id *)a5 unknownReachabilityDestinations:(id *)a6
{
  v9 = a3;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100018FE8;
  v17[3] = &unk_1001A31F8;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v15 = v12;
  v20 = v15;
  [v9 enumerateKeysAndObjectsUsingBlock:v17];

  if (a4)
  {
    *a4 = [v14 copy];
  }

  if (a5)
  {
    *a5 = [v15 copy];
  }

  if (a6)
  {
    *a6 = [v13 copy];
  }

  v16 = +[STLog familyMessaging];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446979;
    v22 = "+[STConcreteIDSTransportPrimitives _sortDestinationsToStatus:intoReachableDestinations:unreachableDestinations:unknownReachabilityDestinations:]";
    v23 = 2113;
    v24 = v14;
    v25 = 2113;
    v26 = v15;
    v27 = 2113;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nreachableDestinations: %{private}@, \nunreachableDestinations: %{private}@, \nunknownReachabilityDestinations: %{private}@", buf, 0x2Au);
  }
}

- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = +[STLog idsTransportPrimitives];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100112DC0();
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = "[STConcreteIDSTransportPrimitives batchQueryController:updatedDestinationsStatus:onService:error:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nBatch ID query controller observed updated destination reachability", buf, 0xCu);
    }

    v18 = 0;
    v19 = 0;
    v17 = 0;
    [STConcreteIDSTransportPrimitives _sortDestinationsToStatus:v8 intoReachableDestinations:&v19 unreachableDestinations:&v18 unknownReachabilityDestinations:&v17];
    v11 = v19;
    v12 = v18;
    v13 = v17;
    v14 = [[STIDSTransportPrimitiveDestinationReachabilityMap alloc] initWithReachableDestinations:v11 unreachableDestinations:v12 unknownReachabilityDestinations:v13];
    v15 = +[STLog familyMessaging];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446467;
      v21 = "[STConcreteIDSTransportPrimitives batchQueryController:updatedDestinationsStatus:onService:error:]";
      v22 = 2113;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \ndidObserveUpdatedPrimitiveDestinationReachabilityMap: %{private}@", buf, 0x16u);
    }

    v16 = [(STConcreteIDSTransportPrimitives *)self delegate];
    [v16 primitives:self didObserveUpdatedPrimitiveDestinationReachabilityMap:v14];
  }
}

- (STIDSTransportPrimitivesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end