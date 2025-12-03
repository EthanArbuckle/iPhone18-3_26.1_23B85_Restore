@interface STIDSMessageTransport
- (STIDSMessageTransport)initWithPrimitives:(id)primitives messageAddressMap:(id)map messageIdentifierMap:(id)identifierMap addressValidator:(id)validator userAliasResolver:(id)resolver returnAddressProvider:(id)provider transportQueue:(id)queue;
- (STMessageTransportDelegate)delegate;
- (id)_prepareToSendToAddresses:(id)addresses;
- (id)_reachabilityMapFromDestinations:(id)destinations;
- (id)_refreshReachabilityForDestinations:(id)destinations;
- (id)_sendMessage:(id)message toReachableDestinations:(id)destinations fromAddress:(id)address;
- (id)sendMessage:(id)message toAddresses:(id)addresses fromAddress:(id)address;
- (void)_isCapabilityEnabledForUser:(id)user capability:(id)capability completionHandler:(id)handler;
- (void)_mightSendMessage:(id)message toDestinationsWithUnknownReachability:(id)reachability;
- (void)_sendAcknowledgementMessageForResponseIdentifier:(id)identifier toDestination:(id)destination;
- (void)_willSendMessage:(id)message usingDestinationReachabilityMap:(id)map;
- (void)primitives:(id)primitives didDeliverMessageWithPrimitiveIdentifier:(id)identifier toPrimitiveDestination:(id)destination;
- (void)primitives:(id)primitives didObserveUpdatedPrimitiveDestinationReachabilityMap:(id)map;
- (void)primitives:(id)primitives didReceiveData:(id)data fromPrimitiveDestination:(id)destination primitiveResponseIdentifier:(id)identifier;
- (void)primitives:(id)primitives didSendMessageWithPrimitiveIdentifier:(id)identifier success:(BOOL)success error:(id)error;
- (void)stopTrackingMessageWithIdentifier:(id)identifier;
@end

@implementation STIDSMessageTransport

- (STIDSMessageTransport)initWithPrimitives:(id)primitives messageAddressMap:(id)map messageIdentifierMap:(id)identifierMap addressValidator:(id)validator userAliasResolver:(id)resolver returnAddressProvider:(id)provider transportQueue:(id)queue
{
  primitivesCopy = primitives;
  mapCopy = map;
  identifierMapCopy = identifierMap;
  validatorCopy = validator;
  resolverCopy = resolver;
  providerCopy = provider;
  queueCopy = queue;
  v42.receiver = self;
  v42.super_class = STIDSMessageTransport;
  v22 = [(STIDSMessageTransport *)&v42 init];
  primitives = v22->_primitives;
  v22->_primitives = primitivesCopy;
  v24 = primitivesCopy;

  [(STIDSTransportPrimitives *)v22->_primitives setDelegate:v22];
  messageAddressMap = v22->_messageAddressMap;
  v22->_messageAddressMap = mapCopy;
  v26 = mapCopy;

  messageIdentifierMap = v22->_messageIdentifierMap;
  v22->_messageIdentifierMap = identifierMapCopy;
  v28 = identifierMapCopy;

  addressValidator = v22->_addressValidator;
  v22->_addressValidator = validatorCopy;
  v30 = validatorCopy;

  userAliasResolver = v22->_userAliasResolver;
  v22->_userAliasResolver = resolverCopy;
  v32 = resolverCopy;

  returnAddressProvider = v22->_returnAddressProvider;
  v22->_returnAddressProvider = providerCopy;
  v34 = providerCopy;

  queue = v22->_queue;
  v22->_queue = queueCopy;
  v36 = queueCopy;

  v37 = [[STIDSTransportPrimitiveDestinationReachabilityMap alloc] initWithReachableDestinations:0 unreachableDestinations:0 unknownReachabilityDestinations:0];
  destinationReachabilityMap = v22->_destinationReachabilityMap;
  v22->_destinationReachabilityMap = v37;

  v22->_destinationReachabilityMapLock._os_unfair_lock_opaque = 0;
  v39 = objc_opt_new();
  pendingAcknowledgementIdentifiers = v22->_pendingAcknowledgementIdentifiers;
  v22->_pendingAcknowledgementIdentifiers = v39;

  return v22;
}

- (id)sendMessage:(id)message toAddresses:(id)addresses fromAddress:(id)address
{
  messageCopy = message;
  addressesCopy = addresses;
  addressCopy = address;
  v11 = +[STLog familyMessaging];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    contentType = [messageCopy contentType];
    if ((contentType - 1) > 4)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = off_1001A4230[(contentType - 1)];
    }

    *buf = 136446978;
    v29 = "[STIDSMessageTransport sendMessage:toAddresses:fromAddress:]";
    v30 = 2114;
    v31 = v13;
    v32 = 2112;
    v33 = addressesCopy;
    v34 = 2112;
    v35 = addressCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nmessage.contentType: %{public}@, \ntoAddresses: %@, \nfromAddress: %@", buf, 0x2Au);
  }

  primitives = [(STIDSMessageTransport *)self primitives];
  if ([primitives canSend])
  {
    v15 = [(STIDSMessageTransport *)self _prepareToSendToAddresses:addressesCopy];
    then = [v15 then];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100040754;
    v25[3] = &unk_1001A4110;
    v25[4] = self;
    v26 = messageCopy;
    v27 = addressCopy;
    v17 = (then)[2](then, v25);
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
    queue = [(STIDSMessageTransport *)self queue];
    v17 = [(STPromise *)v21 initWithResolution:v22 onQueue:queue];
  }

  return v17;
}

- (id)_prepareToSendToAddresses:(id)addresses
{
  addressesCopy = addresses;
  messageAddressMap = [(STIDSMessageTransport *)self messageAddressMap];
  v6 = [messageAddressMap primitiveDestinationsForMessageAddresses:addressesCopy];

  v7 = [v6 count];
  v8 = [addressesCopy count];

  if (v7 == v8)
  {
    v9 = [(STIDSMessageTransport *)self _reachabilityMapFromDestinations:v6];
    then = [v9 then];
    v11 = (then)[2](then, &stru_1001A4150);
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
    queue = [(STIDSMessageTransport *)self queue];
    v11 = [(STPromise *)v14 initWithResolution:v15 onQueue:queue];
  }

  return v11;
}

- (void)_willSendMessage:(id)message usingDestinationReachabilityMap:(id)map
{
  messageCopy = message;
  mapCopy = map;
  reachableDestinations = [mapCopy reachableDestinations];
  if ([reachableDestinations count])
  {
    v9 = +[STLog idsMessageTransport];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446723;
      v33 = "[STIDSMessageTransport _willSendMessage:usingDestinationReachabilityMap:]";
      v34 = 2113;
      v35 = messageCopy;
      v36 = 2113;
      v37 = reachableDestinations;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nMessage: %{private}@ will be sent to: %{private}@", buf, 0x20u);
    }
  }

  v26 = reachableDestinations;
  unreachableDestinations = [mapCopy unreachableDestinations];
  v11 = [unreachableDestinations mutableCopy];

  unknownReachabilityDestinations = [mapCopy unknownReachabilityDestinations];
  [v11 unionSet:unknownReachabilityDestinations];

  if ([v11 count])
  {
    v13 = +[STLog idsMessageTransport];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446723;
      v33 = "[STIDSMessageTransport _willSendMessage:usingDestinationReachabilityMap:]";
      v34 = 2113;
      v35 = messageCopy;
      v36 = 2113;
      v37 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nMessage: %{private}@ will not be sent to destinations: %{private}@", buf, 0x20u);
    }
  }

  messageAddressMap = [(STIDSMessageTransport *)self messageAddressMap];
  v15 = [messageAddressMap messageAddressesForPrimitiveDestinations:v11];

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

  delegate = [(STIDSMessageTransport *)self delegate];
  v25 = [v16 copy];
  [delegate transport:self willSendMessage:messageCopy errorsByAddress:v25];
}

- (void)_mightSendMessage:(id)message toDestinationsWithUnknownReachability:(id)reachability
{
  messageCopy = message;
  reachabilityCopy = reachability;
  v8 = +[STLog idsMessageTransport];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446723;
    v11 = "[STIDSMessageTransport _mightSendMessage:toDestinationsWithUnknownReachability:]";
    v12 = 2113;
    v13 = messageCopy;
    v14 = 2113;
    v15 = reachabilityCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nMessage: %{private}@ might be sent to destinations: %{private}@", &v10, 0x20u);
  }

  delegate = [(STIDSMessageTransport *)self delegate];
  [delegate transport:self willSendMessage:messageCopy errorsByAddress:&__NSDictionary0__struct];
}

- (id)_sendMessage:(id)message toReachableDestinations:(id)destinations fromAddress:(id)address
{
  messageCopy = message;
  destinationsCopy = destinations;
  addressCopy = address;
  v11 = [messageCopy contentType] - 1;
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
    v55 = destinationsCopy;
    v56 = 2112;
    v57 = addressCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[v2] >>>>>>> SEND (message.contentType: %{public}@), %{public}s: destinations: %@, fromAddress: %@", buf, 0x2Au);
  }

  v14 = [[STMessageTransportReturnAddressedMessage alloc] initWithMessage:messageCopy returnAddress:addressCopy];
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

    userAliasResolver = [(STIDSMessageTransport *)self userAliasResolver];
    userDSID = [addressCopy userDSID];
    v22 = [userAliasResolver appleIDForUserDSID:userDSID];

    if (v22)
    {
      primitives = [(STIDSMessageTransport *)self primitives];
      v24 = [primitives primitiveDestinationFromRawAddress:v22];

      if (v24)
      {
        primitives2 = [(STIDSMessageTransport *)self primitives];
        v42 = [primitives2 sendData:v15 toDestinations:destinationsCopy fromDestination:v24];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_100041418;
        v44[3] = &unk_1001A4178;
        v45 = messageCopy;
        selfCopy = self;
        [v42 flatMap:v44];
        v26 = v15;
        v27 = addressCopy;
        v28 = messageCopy;
        v29 = v14;
        v31 = v30 = destinationsCopy;
        v32 = [v31 mapError:&stru_1001A4198];

        destinationsCopy = v30;
        v14 = v29;
        messageCopy = v28;
        addressCopy = v27;
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
        primitives2 = [v40 initWithDomain:STErrorDomain code:28 userInfo:0];
        v32 = [STResult failure:primitives2];
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

- (id)_reachabilityMapFromDestinations:(id)destinations
{
  v4 = [(STIDSMessageTransport *)self _refreshReachabilityForDestinations:destinations];
  then = [v4 then];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004168C;
  v8[3] = &unk_1001A41C0;
  v8[4] = self;
  v6 = (then)[2](then, v8);

  return v6;
}

- (id)_refreshReachabilityForDestinations:(id)destinations
{
  destinationsCopy = destinations;
  os_unfair_lock_lock(&self->_destinationReachabilityMapLock);
  destinationReachabilityMap = [(STIDSMessageTransport *)self destinationReachabilityMap];
  os_unfair_lock_unlock(&self->_destinationReachabilityMapLock);
  v25 = destinationReachabilityMap;
  v26 = destinationsCopy;
  v6 = [destinationReachabilityMap intersectWithDestinations:destinationsCopy];
  unknownReachabilityDestinations = [v6 unknownReachabilityDestinations];
  v8 = [unknownReachabilityDestinations mutableCopy];

  unreachableDestinations = [v6 unreachableDestinations];
  [v8 unionSet:unreachableDestinations];

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  primitives = [(STIDSMessageTransport *)self primitives];
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

        v17 = [primitives refreshedReachabilityOfPrimitiveDestination:*(*(&v29 + 1) + 8 * i)];
        [v10 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  queue = [(STIDSMessageTransport *)self queue];
  v19 = [STPromise onQueue:queue all:v10];
  then = [v19 then];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100041A78;
  v27[3] = &unk_1001A41E8;
  v28 = v6;
  v21 = then[2];
  v22 = v6;
  v23 = v21(then, v27);

  return v23;
}

- (void)_isCapabilityEnabledForUser:(id)user capability:(id)capability completionHandler:(id)handler
{
  userCopy = user;
  capabilityCopy = capability;
  handlerCopy = handler;
  userAliasResolver = [(STIDSMessageTransport *)self userAliasResolver];
  dsid = [userCopy dsid];
  v13 = [userAliasResolver appleIDForUserDSID:dsid];

  if (v13)
  {
    primitives = [(STIDSMessageTransport *)self primitives];
    v15 = [primitives primitiveDestinationFromRawAddress:v13];

    if (v15)
    {
      primitives2 = [(STIDSMessageTransport *)self primitives];
      [primitives2 isCapabilityEnabledForDestination:v15 capability:capabilityCopy completionHandler:handlerCopy];
    }

    else
    {
      v19 = +[STLog idsMessageTransport];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100117358();
      }

      v20 = [NSError alloc];
      primitives2 = [v20 initWithDomain:STErrorDomain code:28 userInfo:0];
      handlerCopy[2](handlerCopy, 0, primitives2);
    }
  }

  else
  {
    v17 = +[STLog idsMessageTransport];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1001173CC(userCopy, v17);
    }

    v18 = [NSError alloc];
    v15 = [v18 initWithDomain:STErrorDomain code:28 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v15);
  }
}

- (void)stopTrackingMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[STLog idsMessageTransport];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[STIDSMessageTransport stopTrackingMessageWithIdentifier:]";
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nStopping tracking of message: %{public}@", &v7, 0x16u);
  }

  messageIdentifierMap = [(STIDSMessageTransport *)self messageIdentifierMap];
  [messageIdentifierMap removeMessageIdentifier:identifierCopy];
}

- (void)primitives:(id)primitives didObserveUpdatedPrimitiveDestinationReachabilityMap:(id)map
{
  mapCopy = map;
  os_unfair_lock_lock(&self->_destinationReachabilityMapLock);
  destinationReachabilityMap = [(STIDSMessageTransport *)self destinationReachabilityMap];
  v7 = [destinationReachabilityMap merge:mapCopy];

  [(STIDSMessageTransport *)self setDestinationReachabilityMap:v7];
  v8 = +[STLog idsMessageTransport];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    destinationReachabilityMap2 = [(STIDSMessageTransport *)self destinationReachabilityMap];
    v10 = 136446467;
    v11 = "[STIDSMessageTransport primitives:didObserveUpdatedPrimitiveDestinationReachabilityMap:]";
    v12 = 2113;
    v13 = destinationReachabilityMap2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nCurrent primitive destination reachability: %{private}@", &v10, 0x16u);
  }

  os_unfair_lock_unlock(&self->_destinationReachabilityMapLock);
}

- (void)primitives:(id)primitives didReceiveData:(id)data fromPrimitiveDestination:(id)destination primitiveResponseIdentifier:(id)identifier
{
  primitivesCopy = primitives;
  dataCopy = data;
  destinationCopy = destination;
  identifierCopy = identifier;
  v14 = +[STLog familyMessaging];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446979;
    v32 = "[STIDSMessageTransport primitives:didReceiveData:fromPrimitiveDestination:primitiveResponseIdentifier:]";
    v33 = 2113;
    v34 = primitivesCopy;
    v35 = 2113;
    v36 = destinationCopy;
    v37 = 2113;
    v38 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nprimatives: %{private}@, \nfromPrimativeDestination: %{private}@, \nprimitiveResponseIdentifier: %{private}@", buf, 0x2Au);
  }

  primitives = [(STIDSMessageTransport *)self primitives];
  v16 = [primitives rawAddressFromPrimitiveDestination:destinationCopy];

  addressValidator = [(STIDSMessageTransport *)self addressValidator];
  v18 = [addressValidator validateAddressIsAllowed:v16];

  if (v18)
  {
    [(STIDSMessageTransport *)self _sendAcknowledgementMessageForResponseIdentifier:identifierCopy toDestination:destinationCopy];
    v30 = 0;
    v19 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v30];
    v20 = v30;
    if (v19)
    {
      v29 = primitivesCopy;
      message = [v19 message];
      contentType = [message contentType];
      if ((contentType - 1) > 4)
      {
        v23 = @"Unknown";
      }

      else
      {
        v23 = off_1001A4230[(contentType - 1)];
      }

      v25 = +[STLog familyMessaging];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [dataCopy length];
        *buf = 138544130;
        v32 = v23;
        v33 = 2050;
        v34 = v26;
        v35 = 2082;
        v36 = "[STIDSMessageTransport primitives:didReceiveData:fromPrimitiveDestination:primitiveResponseIdentifier:]";
        v37 = 2112;
        v38 = destinationCopy;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[v2] <<<<<<< RECEIVE (message.contentType: %{public}@, size: %{public}lu), %{public}s: fromPrimitiveDestination: %@", buf, 0x2Au);
      }

      returnAddress = [v19 returnAddress];
      messageAddressMap = [(STIDSMessageTransport *)self messageAddressMap];
      [messageAddressMap insertPrimitiveDestination:destinationCopy forMessageAddress:returnAddress];

      delegate = [(STIDSMessageTransport *)self delegate];
      [delegate transport:self didReceiveMessage:v19];

      primitivesCopy = v29;
    }

    else
    {
      returnAddress = +[STLog idsMessageTransport];
      if (os_log_type_enabled(returnAddress, OS_LOG_TYPE_ERROR))
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

- (void)_sendAcknowledgementMessageForResponseIdentifier:(id)identifier toDestination:(id)destination
{
  identifierCopy = identifier;
  destinationCopy = destination;
  v8 = +[STLog familyMessaging];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446723;
    v25 = "[STIDSMessageTransport _sendAcknowledgementMessageForResponseIdentifier:toDestination:]";
    v26 = 2112;
    v27 = identifierCopy;
    v28 = 2113;
    v29 = destinationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nresponseIdentifier: %@, \ntoDestination: %{private}@", buf, 0x20u);
  }

  returnAddressProvider = [(STIDSMessageTransport *)self returnAddressProvider];
  returnAddress = [returnAddressProvider returnAddress];

  if (returnAddress)
  {
    userAliasResolver = [(STIDSMessageTransport *)self userAliasResolver];
    userDSID = [returnAddress userDSID];
    v13 = [userAliasResolver appleIDForUserDSID:userDSID];

    if (v13)
    {
      primitives = [(STIDSMessageTransport *)self primitives];
      v15 = [primitives primitiveDestinationFromRawAddress:v13];

      v16 = +[STLog idsMessageTransport];
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446467;
          v25 = "[STIDSMessageTransport _sendAcknowledgementMessageForResponseIdentifier:toDestination:]";
          v26 = 2113;
          v27 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nAcknowledging message: %{private}@", buf, 0x16u);
        }

        primitives2 = [(STIDSMessageTransport *)self primitives];
        v17 = [primitives2 sendAcknowledgementMessageForResponseIdentifier:identifierCopy toDestination:destinationCopy fromDestination:v15];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100042588;
        v21[3] = &unk_1001A4210;
        v22 = identifierCopy;
        selfCopy = self;
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

- (void)primitives:(id)primitives didSendMessageWithPrimitiveIdentifier:(id)identifier success:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  v11 = +[STLog familyMessaging];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "NO";
    *&v20[4] = "[STIDSMessageTransport primitives:didSendMessageWithPrimitiveIdentifier:success:error:]";
    *&v20[12] = 2112;
    *v20 = 136446978;
    *&v20[14] = identifierCopy;
    if (successCopy)
    {
      v12 = "YES";
    }

    *&v20[22] = 2082;
    v21 = v12;
    v22 = 2114;
    v23 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nprimitiveMessageIdentifier: %@, \nsuccess: %{public}s, \nerror: %{public}@", v20, 0x2Au);
  }

  pendingAcknowledgementIdentifiers = [(STIDSMessageTransport *)self pendingAcknowledgementIdentifiers];
  if ([pendingAcknowledgementIdentifiers containsObject:identifierCopy])
  {
    [pendingAcknowledgementIdentifiers removeObject:identifierCopy];
  }

  else
  {
    messageIdentifierMap = [(STIDSMessageTransport *)self messageIdentifierMap];
    v15 = [messageIdentifierMap messageIdentifierForPrimitiveMessageIdentifier:identifierCopy];

    if (v15)
    {
      if (successCopy)
      {
        +[STResult success];
      }

      else
      {
        [STResult failure:errorCopy];
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
        if (successCopy)
        {
          v18 = "YES";
        }

        *&v20[22] = 2113;
        v21 = identifierCopy;
        v22 = 2082;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nDid send messageIdentifier: %{public}@, \nprimitiveMessageIdentifier: %{private}@, \nsuccess: %{public}s", v20, 0x2Au);
      }

      delegate = [(STIDSMessageTransport *)self delegate];
      [delegate transport:self didSendMessageWithIdentifier:v15 result:v16];
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

- (void)primitives:(id)primitives didDeliverMessageWithPrimitiveIdentifier:(id)identifier toPrimitiveDestination:(id)destination
{
  identifierCopy = identifier;
  destinationCopy = destination;
  messageIdentifierMap = [(STIDSMessageTransport *)self messageIdentifierMap];
  v10 = [messageIdentifierMap messageIdentifierForPrimitiveMessageIdentifier:identifierCopy];

  if (v10)
  {
    messageAddressMap = [(STIDSMessageTransport *)self messageAddressMap];
    v12 = [NSSet setWithObject:destinationCopy];
    v13 = [messageAddressMap messageAddressesForPrimitiveDestinations:v12];
    anyObject = [v13 anyObject];

    v15 = +[STLog idsMessageTransport];
    delegate = v15;
    if (anyObject)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136446723;
        v18 = "[STIDSMessageTransport primitives:didDeliverMessageWithPrimitiveIdentifier:toPrimitiveDestination:]";
        v19 = 2114;
        v20 = v10;
        v21 = 2113;
        v22 = identifierCopy;
        _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nDid deliver message: \nmessageIdentifier: %{public}@, \nprimitiveMessageIdentifier: %{private}@)", &v17, 0x20u);
      }

      delegate = [(STIDSMessageTransport *)self delegate];
      [delegate transport:self didDeliverMessageWithIdentifier:v10 toMessageAddress:anyObject];
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1001177B8();
    }
  }

  else
  {
    anyObject = +[STLog idsMessageTransport];
    if (os_log_type_enabled(anyObject, OS_LOG_TYPE_ERROR))
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