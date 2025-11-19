@interface STIDSMessageTransport
- (STIDSMessageTransport)initWithPrimitives:(id)a3 messageAddressMap:(id)a4 messageIdentifierMap:(id)a5 addressValidator:(id)a6 userAliasResolver:(id)a7 returnAddressProvider:(id)a8 transportQueue:(id)a9;
- (STMessageTransportDelegate)delegate;
- (id)_prepareToSendToAddresses:(id)a3;
- (id)_reachabilityMapFromDestinations:(id)a3;
- (id)_refreshReachabilityForDestinations:(id)a3;
- (id)_sendMessage:(id)a3 toReachableDestinations:(id)a4 fromAddress:(id)a5;
- (id)sendMessage:(id)a3 toAddresses:(id)a4 fromAddress:(id)a5;
- (void)_isCapabilityEnabledForUser:(id)a3 capability:(id)a4 completionHandler:(id)a5;
- (void)_mightSendMessage:(id)a3 toDestinationsWithUnknownReachability:(id)a4;
- (void)_sendAcknowledgementMessageForResponseIdentifier:(id)a3 toDestination:(id)a4;
- (void)_willSendMessage:(id)a3 usingDestinationReachabilityMap:(id)a4;
- (void)primitives:(id)a3 didDeliverMessageWithPrimitiveIdentifier:(id)a4 toPrimitiveDestination:(id)a5;
- (void)primitives:(id)a3 didObserveUpdatedPrimitiveDestinationReachabilityMap:(id)a4;
- (void)primitives:(id)a3 didReceiveData:(id)a4 fromPrimitiveDestination:(id)a5 primitiveResponseIdentifier:(id)a6;
- (void)primitives:(id)a3 didSendMessageWithPrimitiveIdentifier:(id)a4 success:(BOOL)a5 error:(id)a6;
- (void)stopTrackingMessageWithIdentifier:(id)a3;
@end

@implementation STIDSMessageTransport

- (STIDSMessageTransport)initWithPrimitives:(id)a3 messageAddressMap:(id)a4 messageIdentifierMap:(id)a5 addressValidator:(id)a6 userAliasResolver:(id)a7 returnAddressProvider:(id)a8 transportQueue:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v42.receiver = self;
  v42.super_class = STIDSMessageTransport;
  v22 = [(STIDSMessageTransport *)&v42 init];
  primitives = v22->_primitives;
  v22->_primitives = v15;
  v24 = v15;

  [(STIDSTransportPrimitives *)v22->_primitives setDelegate:v22];
  messageAddressMap = v22->_messageAddressMap;
  v22->_messageAddressMap = v16;
  v26 = v16;

  messageIdentifierMap = v22->_messageIdentifierMap;
  v22->_messageIdentifierMap = v17;
  v28 = v17;

  addressValidator = v22->_addressValidator;
  v22->_addressValidator = v18;
  v30 = v18;

  userAliasResolver = v22->_userAliasResolver;
  v22->_userAliasResolver = v19;
  v32 = v19;

  returnAddressProvider = v22->_returnAddressProvider;
  v22->_returnAddressProvider = v20;
  v34 = v20;

  queue = v22->_queue;
  v22->_queue = v21;
  v36 = v21;

  v37 = [[STIDSTransportPrimitiveDestinationReachabilityMap alloc] initWithReachableDestinations:0 unreachableDestinations:0 unknownReachabilityDestinations:0];
  destinationReachabilityMap = v22->_destinationReachabilityMap;
  v22->_destinationReachabilityMap = v37;

  v22->_destinationReachabilityMapLock._os_unfair_lock_opaque = 0;
  v39 = objc_opt_new();
  pendingAcknowledgementIdentifiers = v22->_pendingAcknowledgementIdentifiers;
  v22->_pendingAcknowledgementIdentifiers = v39;

  return v22;
}

- (id)sendMessage:(id)a3 toAddresses:(id)a4 fromAddress:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[STLog familyMessaging];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 contentType];
    if ((v12 - 1) > 4)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = off_1001A4230[(v12 - 1)];
    }

    *buf = 136446978;
    v29 = "[STIDSMessageTransport sendMessage:toAddresses:fromAddress:]";
    v30 = 2114;
    v31 = v13;
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nmessage.contentType: %{public}@, \ntoAddresses: %@, \nfromAddress: %@", buf, 0x2Au);
  }

  v14 = [(STIDSMessageTransport *)self primitives];
  if ([v14 canSend])
  {
    v15 = [(STIDSMessageTransport *)self _prepareToSendToAddresses:v9];
    v16 = [v15 then];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100040754;
    v25[3] = &unk_1001A4110;
    v25[4] = self;
    v26 = v8;
    v27 = v10;
    v17 = (v16)[2](v16, v25);
  }

  else
  {
    v18 = [NSError alloc];
    v19 = [v18 initWithDomain:STErrorDomain code:27 userInfo:0];
    v20 = +[STLog idsMessageTransport];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10011702C();
    }

    v21 = [STPromise alloc];
    v22 = [STResult failure:v19];
    v23 = [(STIDSMessageTransport *)self queue];
    v17 = [(STPromise *)v21 initWithResolution:v22 onQueue:v23];
  }

  return v17;
}

- (id)_prepareToSendToAddresses:(id)a3
{
  v4 = a3;
  v5 = [(STIDSMessageTransport *)self messageAddressMap];
  v6 = [v5 primitiveDestinationsForMessageAddresses:v4];

  v7 = [v6 count];
  v8 = [v4 count];

  if (v7 == v8)
  {
    v9 = [(STIDSMessageTransport *)self _reachabilityMapFromDestinations:v6];
    v10 = [v9 then];
    v11 = (v10)[2](v10, &stru_1001A4150);
  }

  else
  {
    v12 = [NSError alloc];
    v9 = [v12 initWithDomain:STErrorDomain code:28 userInfo:0];
    v13 = +[STLog idsMessageTransport];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1001170A0();
    }

    v14 = [STPromise alloc];
    v15 = [STResult failure:v9];
    v16 = [(STIDSMessageTransport *)self queue];
    v11 = [(STPromise *)v14 initWithResolution:v15 onQueue:v16];
  }

  return v11;
}

- (void)_willSendMessage:(id)a3 usingDestinationReachabilityMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 reachableDestinations];
  if ([v8 count])
  {
    v9 = +[STLog idsMessageTransport];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446723;
      v33 = "[STIDSMessageTransport _willSendMessage:usingDestinationReachabilityMap:]";
      v34 = 2113;
      v35 = v6;
      v36 = 2113;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nMessage: %{private}@ will be sent to: %{private}@", buf, 0x20u);
    }
  }

  v26 = v8;
  v10 = [v7 unreachableDestinations];
  v11 = [v10 mutableCopy];

  v12 = [v7 unknownReachabilityDestinations];
  [v11 unionSet:v12];

  if ([v11 count])
  {
    v13 = +[STLog idsMessageTransport];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446723;
      v33 = "[STIDSMessageTransport _willSendMessage:usingDestinationReachabilityMap:]";
      v34 = 2113;
      v35 = v6;
      v36 = 2113;
      v37 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nMessage: %{private}@ will not be sent to destinations: %{private}@", buf, 0x20u);
    }
  }

  v14 = [(STIDSMessageTransport *)self messageAddressMap];
  v15 = [v14 messageAddressesForPrimitiveDestinations:v11];

  v16 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v15 count]);
  v17 = [NSError alloc];
  v18 = [v17 initWithDomain:STErrorDomain code:29 userInfo:0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [v16 setObject:v18 forKeyedSubscript:*(*(&v27 + 1) + 8 * v23)];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v21);
  }

  v24 = [(STIDSMessageTransport *)self delegate];
  v25 = [v16 copy];
  [v24 transport:self willSendMessage:v6 errorsByAddress:v25];
}

- (void)_mightSendMessage:(id)a3 toDestinationsWithUnknownReachability:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog idsMessageTransport];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446723;
    v11 = "[STIDSMessageTransport _mightSendMessage:toDestinationsWithUnknownReachability:]";
    v12 = 2113;
    v13 = v6;
    v14 = 2113;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nMessage: %{private}@ might be sent to destinations: %{private}@", &v10, 0x20u);
  }

  v9 = [(STIDSMessageTransport *)self delegate];
  [v9 transport:self willSendMessage:v6 errorsByAddress:&__NSDictionary0__struct];
}

- (id)_sendMessage:(id)a3 toReachableDestinations:(id)a4 fromAddress:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 contentType] - 1;
  if (v11 > 4)
  {
    v12 = @"Unknown";
  }

  else
  {
    v12 = off_1001A4230[v11];
  }

  v13 = +[STLog familyMessaging];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v51 = v12;
    v52 = 2082;
    v53 = "[STIDSMessageTransport _sendMessage:toReachableDestinations:fromAddress:]";
    v54 = 2112;
    v55 = v9;
    v56 = 2112;
    v57 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[v2] >>>>>>> SEND (message.contentType: %{public}@), %{public}s: destinations: %@, fromAddress: %@", buf, 0x2Au);
  }

  v14 = [[STMessageTransportReturnAddressedMessage alloc] initWithMessage:v8 returnAddress:v10];
  v47 = 0;
  v15 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v47];
  v16 = v47;
  v17 = v16;
  if (v15)
  {
    v43 = v16;
    v18 = +[STLog familyMessaging];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v15 length];
      *buf = 136446466;
      v51 = "[STIDSMessageTransport _sendMessage:toReachableDestinations:fromAddress:]";
      v52 = 2050;
      v53 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nSend message size %{public}lu", buf, 0x16u);
    }

    v20 = [(STIDSMessageTransport *)self userAliasResolver];
    v21 = [v10 userDSID];
    v22 = [v20 appleIDForUserDSID:v21];

    if (v22)
    {
      v23 = [(STIDSMessageTransport *)self primitives];
      v24 = [v23 primitiveDestinationFromRawAddress:v22];

      if (v24)
      {
        v25 = [(STIDSMessageTransport *)self primitives];
        v42 = [v25 sendData:v15 toDestinations:v9 fromDestination:v24];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_100041418;
        v44[3] = &unk_1001A4178;
        v45 = v8;
        v46 = self;
        [v42 flatMap:v44];
        v26 = v15;
        v27 = v10;
        v28 = v8;
        v29 = v14;
        v31 = v30 = v9;
        v32 = [v31 mapError:&stru_1001A4198];

        v9 = v30;
        v14 = v29;
        v8 = v28;
        v10 = v27;
        v15 = v26;
      }

      else
      {
        v39 = +[STLog idsMessageTransport];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_100117188();
        }

        v40 = [NSError alloc];
        v25 = [v40 initWithDomain:STErrorDomain code:28 userInfo:0];
        v32 = [STResult failure:v25];
      }
    }

    else
    {
      v37 = +[STLog idsMessageTransport];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1001171FC();
      }

      v38 = [NSError alloc];
      v24 = [v38 initWithDomain:STErrorDomain code:50 userInfo:0];
      v32 = [STResult failure:v24];
    }

    v17 = v43;
  }

  else
  {
    v33 = [NSError alloc];
    v34 = STErrorDomain;
    v48 = NSUnderlyingErrorKey;
    v49 = v17;
    v35 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v22 = [v33 initWithDomain:v34 code:26 userInfo:v35];

    v36 = +[STLog idsMessageTransport];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_100117270();
    }

    v32 = [STResult failure:v22];
  }

  return v32;
}

- (id)_reachabilityMapFromDestinations:(id)a3
{
  v4 = [(STIDSMessageTransport *)self _refreshReachabilityForDestinations:a3];
  v5 = [v4 then];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004168C;
  v8[3] = &unk_1001A41C0;
  v8[4] = self;
  v6 = (v5)[2](v5, v8);

  return v6;
}

- (id)_refreshReachabilityForDestinations:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_destinationReachabilityMapLock);
  v5 = [(STIDSMessageTransport *)self destinationReachabilityMap];
  os_unfair_lock_unlock(&self->_destinationReachabilityMapLock);
  v25 = v5;
  v26 = v4;
  v6 = [v5 intersectWithDestinations:v4];
  v7 = [v6 unknownReachabilityDestinations];
  v8 = [v7 mutableCopy];

  v9 = [v6 unreachableDestinations];
  [v8 unionSet:v9];

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v11 = [(STIDSMessageTransport *)self primitives];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v11 refreshedReachabilityOfPrimitiveDestination:*(*(&v29 + 1) + 8 * i)];
        [v10 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  v18 = [(STIDSMessageTransport *)self queue];
  v19 = [STPromise onQueue:v18 all:v10];
  v20 = [v19 then];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100041A78;
  v27[3] = &unk_1001A41E8;
  v28 = v6;
  v21 = v20[2];
  v22 = v6;
  v23 = v21(v20, v27);

  return v23;
}

- (void)_isCapabilityEnabledForUser:(id)a3 capability:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(STIDSMessageTransport *)self userAliasResolver];
  v12 = [v8 dsid];
  v13 = [v11 appleIDForUserDSID:v12];

  if (v13)
  {
    v14 = [(STIDSMessageTransport *)self primitives];
    v15 = [v14 primitiveDestinationFromRawAddress:v13];

    if (v15)
    {
      v16 = [(STIDSMessageTransport *)self primitives];
      [v16 isCapabilityEnabledForDestination:v15 capability:v9 completionHandler:v10];
    }

    else
    {
      v19 = +[STLog idsMessageTransport];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100117358();
      }

      v20 = [NSError alloc];
      v16 = [v20 initWithDomain:STErrorDomain code:28 userInfo:0];
      v10[2](v10, 0, v16);
    }
  }

  else
  {
    v17 = +[STLog idsMessageTransport];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1001173CC(v8, v17);
    }

    v18 = [NSError alloc];
    v15 = [v18 initWithDomain:STErrorDomain code:28 userInfo:0];
    v10[2](v10, 0, v15);
  }
}

- (void)stopTrackingMessageWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[STLog idsMessageTransport];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[STIDSMessageTransport stopTrackingMessageWithIdentifier:]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nStopping tracking of message: %{public}@", &v7, 0x16u);
  }

  v6 = [(STIDSMessageTransport *)self messageIdentifierMap];
  [v6 removeMessageIdentifier:v4];
}

- (void)primitives:(id)a3 didObserveUpdatedPrimitiveDestinationReachabilityMap:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_destinationReachabilityMapLock);
  v6 = [(STIDSMessageTransport *)self destinationReachabilityMap];
  v7 = [v6 merge:v5];

  [(STIDSMessageTransport *)self setDestinationReachabilityMap:v7];
  v8 = +[STLog idsMessageTransport];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(STIDSMessageTransport *)self destinationReachabilityMap];
    v10 = 136446467;
    v11 = "[STIDSMessageTransport primitives:didObserveUpdatedPrimitiveDestinationReachabilityMap:]";
    v12 = 2113;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nCurrent primitive destination reachability: %{private}@", &v10, 0x16u);
  }

  os_unfair_lock_unlock(&self->_destinationReachabilityMapLock);
}

- (void)primitives:(id)a3 didReceiveData:(id)a4 fromPrimitiveDestination:(id)a5 primitiveResponseIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[STLog familyMessaging];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446979;
    v32 = "[STIDSMessageTransport primitives:didReceiveData:fromPrimitiveDestination:primitiveResponseIdentifier:]";
    v33 = 2113;
    v34 = v10;
    v35 = 2113;
    v36 = v12;
    v37 = 2113;
    v38 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nprimatives: %{private}@, \nfromPrimativeDestination: %{private}@, \nprimitiveResponseIdentifier: %{private}@", buf, 0x2Au);
  }

  v15 = [(STIDSMessageTransport *)self primitives];
  v16 = [v15 rawAddressFromPrimitiveDestination:v12];

  v17 = [(STIDSMessageTransport *)self addressValidator];
  v18 = [v17 validateAddressIsAllowed:v16];

  if (v18)
  {
    [(STIDSMessageTransport *)self _sendAcknowledgementMessageForResponseIdentifier:v13 toDestination:v12];
    v30 = 0;
    v19 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v30];
    v20 = v30;
    if (v19)
    {
      v29 = v10;
      v21 = [v19 message];
      v22 = [v21 contentType];
      if ((v22 - 1) > 4)
      {
        v23 = @"Unknown";
      }

      else
      {
        v23 = off_1001A4230[(v22 - 1)];
      }

      v25 = +[STLog familyMessaging];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v11 length];
        *buf = 138544130;
        v32 = v23;
        v33 = 2050;
        v34 = v26;
        v35 = 2082;
        v36 = "[STIDSMessageTransport primitives:didReceiveData:fromPrimitiveDestination:primitiveResponseIdentifier:]";
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[v2] <<<<<<< RECEIVE (message.contentType: %{public}@, size: %{public}lu), %{public}s: fromPrimitiveDestination: %@", buf, 0x2Au);
      }

      v24 = [v19 returnAddress];
      v27 = [(STIDSMessageTransport *)self messageAddressMap];
      [v27 insertPrimitiveDestination:v12 forMessageAddress:v24];

      v28 = [(STIDSMessageTransport *)self delegate];
      [v28 transport:self didReceiveMessage:v19];

      v10 = v29;
    }

    else
    {
      v24 = +[STLog idsMessageTransport];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1001174E0();
      }
    }
  }

  else
  {
    v20 = +[STLog idsMessageTransport];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10011746C();
    }
  }
}

- (void)_sendAcknowledgementMessageForResponseIdentifier:(id)a3 toDestination:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog familyMessaging];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446723;
    v25 = "[STIDSMessageTransport _sendAcknowledgementMessageForResponseIdentifier:toDestination:]";
    v26 = 2112;
    v27 = v6;
    v28 = 2113;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nresponseIdentifier: %@, \ntoDestination: %{private}@", buf, 0x20u);
  }

  v9 = [(STIDSMessageTransport *)self returnAddressProvider];
  v10 = [v9 returnAddress];

  if (v10)
  {
    v11 = [(STIDSMessageTransport *)self userAliasResolver];
    v12 = [v10 userDSID];
    v13 = [v11 appleIDForUserDSID:v12];

    if (v13)
    {
      v14 = [(STIDSMessageTransport *)self primitives];
      v15 = [v14 primitiveDestinationFromRawAddress:v13];

      v16 = +[STLog idsMessageTransport];
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446467;
          v25 = "[STIDSMessageTransport _sendAcknowledgementMessageForResponseIdentifier:toDestination:]";
          v26 = 2113;
          v27 = v6;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nAcknowledging message: %{private}@", buf, 0x16u);
        }

        v18 = [(STIDSMessageTransport *)self primitives];
        v17 = [v18 sendAcknowledgementMessageForResponseIdentifier:v6 toDestination:v7 fromDestination:v15];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100042588;
        v21[3] = &unk_1001A4210;
        v22 = v6;
        v23 = self;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100042680;
        v19[3] = &unk_1001A4048;
        v20 = v22;
        [v17 evaluateWithSuccess:v21 failure:v19];
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100117554();
      }
    }

    else
    {
      v15 = +[STLog idsMessageTransport];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1001175C8();
      }
    }
  }

  else
  {
    v13 = +[STLog idsMessageTransport];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10011763C(v13);
    }
  }
}

- (void)primitives:(id)a3 didSendMessageWithPrimitiveIdentifier:(id)a4 success:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a6;
  v11 = +[STLog familyMessaging];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "NO";
    *&v20[4] = "[STIDSMessageTransport primitives:didSendMessageWithPrimitiveIdentifier:success:error:]";
    *&v20[12] = 2112;
    *v20 = 136446978;
    *&v20[14] = v9;
    if (v7)
    {
      v12 = "YES";
    }

    *&v20[22] = 2082;
    v21 = v12;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nprimitiveMessageIdentifier: %@, \nsuccess: %{public}s, \nerror: %{public}@", v20, 0x2Au);
  }

  v13 = [(STIDSMessageTransport *)self pendingAcknowledgementIdentifiers];
  if ([v13 containsObject:v9])
  {
    [v13 removeObject:v9];
  }

  else
  {
    v14 = [(STIDSMessageTransport *)self messageIdentifierMap];
    v15 = [v14 messageIdentifierForPrimitiveMessageIdentifier:v9];

    if (v15)
    {
      if (v7)
      {
        +[STResult success];
      }

      else
      {
        [STResult failure:v10];
      }
      v16 = ;
      v17 = [STLog idsMessageTransport:*v20];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = "NO";
        *&v20[4] = "[STIDSMessageTransport primitives:didSendMessageWithPrimitiveIdentifier:success:error:]";
        *&v20[12] = 2114;
        *v20 = 136446979;
        *&v20[14] = v15;
        if (v7)
        {
          v18 = "YES";
        }

        *&v20[22] = 2113;
        v21 = v9;
        v22 = 2082;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nDid send messageIdentifier: %{public}@, \nprimitiveMessageIdentifier: %{private}@, \nsuccess: %{public}s", v20, 0x2Au);
      }

      v19 = [(STIDSMessageTransport *)self delegate];
      [v19 transport:self didSendMessageWithIdentifier:v15 result:v16];
    }

    else
    {
      v16 = +[STLog idsMessageTransport];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100117744();
      }
    }
  }
}

- (void)primitives:(id)a3 didDeliverMessageWithPrimitiveIdentifier:(id)a4 toPrimitiveDestination:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(STIDSMessageTransport *)self messageIdentifierMap];
  v10 = [v9 messageIdentifierForPrimitiveMessageIdentifier:v7];

  if (v10)
  {
    v11 = [(STIDSMessageTransport *)self messageAddressMap];
    v12 = [NSSet setWithObject:v8];
    v13 = [v11 messageAddressesForPrimitiveDestinations:v12];
    v14 = [v13 anyObject];

    v15 = +[STLog idsMessageTransport];
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136446723;
        v18 = "[STIDSMessageTransport primitives:didDeliverMessageWithPrimitiveIdentifier:toPrimitiveDestination:]";
        v19 = 2114;
        v20 = v10;
        v21 = 2113;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nDid deliver message: \nmessageIdentifier: %{public}@, \nprimitiveMessageIdentifier: %{private}@)", &v17, 0x20u);
      }

      v16 = [(STIDSMessageTransport *)self delegate];
      [v16 transport:self didDeliverMessageWithIdentifier:v10 toMessageAddress:v14];
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1001177B8();
    }
  }

  else
  {
    v14 = +[STLog idsMessageTransport];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100117844();
    }
  }
}

- (STMessageTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end