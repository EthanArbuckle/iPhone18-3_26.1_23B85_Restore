@interface STPersistentIDSMessageTransportMessageAddressMap
+ (id)_buildPrimitiveDestinationsByMessageAddressFromMessageAddressesByPrimitiveDestination:(id)destination;
+ (id)_loadMessageAddressesByPrimitiveDestinationFromKeyValueStore:(id)store;
+ (id)_primitiveDestinationFromMessageAddress:(id)address primitiveDestinationsByMessageAddress:(id)messageAddress primitives:(id)primitives userAliasResolver:(id)resolver;
- (STPersistentIDSMessageTransportMessageAddressMap)initWithPrimitives:(id)primitives userAliasResolver:(id)resolver keyValueStore:(id)store;
- (id)_messageAddressFromPrimitiveDestination:(id)destination;
- (id)messageAddressesForPrimitiveDestinations:(id)destinations;
- (id)primitiveDestinationsForMessageAddresses:(id)addresses;
- (void)insertPrimitiveDestination:(id)destination forMessageAddress:(id)address;
- (void)removePrimitiveDestination:(id)destination;
- (void)save;
@end

@implementation STPersistentIDSMessageTransportMessageAddressMap

- (STPersistentIDSMessageTransportMessageAddressMap)initWithPrimitives:(id)primitives userAliasResolver:(id)resolver keyValueStore:(id)store
{
  primitivesCopy = primitives;
  resolverCopy = resolver;
  storeCopy = store;
  v23.receiver = self;
  v23.super_class = STPersistentIDSMessageTransportMessageAddressMap;
  v11 = [(STPersistentIDSMessageTransportMessageAddressMap *)&v23 init];
  primitives = v11->_primitives;
  v11->_primitives = primitivesCopy;
  v13 = primitivesCopy;

  userAliasResolver = v11->_userAliasResolver;
  v11->_userAliasResolver = resolverCopy;
  v15 = resolverCopy;

  keyValueStore = v11->_keyValueStore;
  v11->_keyValueStore = storeCopy;
  v17 = storeCopy;

  v18 = [STPersistentIDSMessageTransportMessageAddressMap _loadMessageAddressesByPrimitiveDestinationFromKeyValueStore:v17];
  messageAddressesByPrimitiveDestination = v11->_messageAddressesByPrimitiveDestination;
  v11->_messageAddressesByPrimitiveDestination = v18;

  v20 = [STPersistentIDSMessageTransportMessageAddressMap _buildPrimitiveDestinationsByMessageAddressFromMessageAddressesByPrimitiveDestination:v11->_messageAddressesByPrimitiveDestination];
  primitiveDestinationsByMessageAddress = v11->_primitiveDestinationsByMessageAddress;
  v11->_primitiveDestinationsByMessageAddress = v20;

  return v11;
}

- (void)save
{
  v3 = objc_opt_new();
  messageAddressesByPrimitiveDestination = [(STPersistentIDSMessageTransportMessageAddressMap *)self messageAddressesByPrimitiveDestination];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100051370;
  v9[3] = &unk_1001A4810;
  v10 = v3;
  v5 = v3;
  [messageAddressesByPrimitiveDestination enumerateKeysAndObjectsUsingBlock:v9];

  v8 = 0;
  v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:&v8];
  keyValueStore = [(STPersistentIDSMessageTransportMessageAddressMap *)self keyValueStore];
  [keyValueStore persistValue:v6 forKey:@"messageAddressesByPrimitiveDestination"];
}

+ (id)_loadMessageAddressesByPrimitiveDestinationFromKeyValueStore:(id)store
{
  v3 = [store readValueForKey:@"messageAddressesByPrimitiveDestination"];
  if (v3)
  {
    v14 = 0;
    v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:&v14];
    v5 = v14;
    if (v5)
    {
      v6 = +[STLog idsTransportMessageAddressMap];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001191A8();
      }

      v7 = +[STLog idsTransportMessageAddressMap];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v16 = "+[STPersistentIDSMessageTransportMessageAddressMap _loadMessageAddressesByPrimitiveDestinationFromKeyValueStore:]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[v2] %{public}s: \nCreating an empty map.", buf, 0xCu);
      }

      v8 = objc_opt_new();
    }

    else
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000516BC;
      v12[3] = &unk_1001A4838;
      v8 = objc_opt_new();
      v13 = v8;
      [v4 enumerateKeysAndObjectsUsingBlock:v12];
    }
  }

  else
  {
    v9 = +[STLog idsTransportMessageAddressMap];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10011921C(v9);
    }

    v10 = +[STLog idsTransportMessageAddressMap];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v16 = "+[STPersistentIDSMessageTransportMessageAddressMap _loadMessageAddressesByPrimitiveDestinationFromKeyValueStore:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[v2] %{public}s: \nCreating an empty map.", buf, 0xCu);
    }

    v8 = objc_opt_new();
  }

  return v8;
}

+ (id)_buildPrimitiveDestinationsByMessageAddressFromMessageAddressesByPrimitiveDestination:(id)destination
{
  destinationCopy = destination;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100051860;
  v6[3] = &unk_1001A4810;
  v4 = objc_opt_new();
  v7 = v4;
  [destinationCopy enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (void)insertPrimitiveDestination:(id)destination forMessageAddress:(id)address
{
  addressCopy = address;
  destinationCopy = destination;
  v8 = [destinationCopy copy];
  primitiveDestinationsByMessageAddress = [(STPersistentIDSMessageTransportMessageAddressMap *)self primitiveDestinationsByMessageAddress];
  [primitiveDestinationsByMessageAddress setObject:v8 forKeyedSubscript:addressCopy];

  v10 = [addressCopy copy];
  messageAddressesByPrimitiveDestination = [(STPersistentIDSMessageTransportMessageAddressMap *)self messageAddressesByPrimitiveDestination];
  [messageAddressesByPrimitiveDestination setObject:v10 forKeyedSubscript:destinationCopy];

  [(STPersistentIDSMessageTransportMessageAddressMap *)self save];
}

- (void)removePrimitiveDestination:(id)destination
{
  destinationCopy = destination;
  messageAddressesByPrimitiveDestination = [(STPersistentIDSMessageTransportMessageAddressMap *)self messageAddressesByPrimitiveDestination];
  v8 = [messageAddressesByPrimitiveDestination objectForKeyedSubscript:destinationCopy];

  messageAddressesByPrimitiveDestination2 = [(STPersistentIDSMessageTransportMessageAddressMap *)self messageAddressesByPrimitiveDestination];
  [messageAddressesByPrimitiveDestination2 removeObjectForKey:destinationCopy];

  primitiveDestinationsByMessageAddress = [(STPersistentIDSMessageTransportMessageAddressMap *)self primitiveDestinationsByMessageAddress];
  [primitiveDestinationsByMessageAddress removeObjectForKey:v8];

  [(STPersistentIDSMessageTransportMessageAddressMap *)self save];
}

- (id)primitiveDestinationsForMessageAddresses:(id)addresses
{
  addressesCopy = addresses;
  v17 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [addressesCopy count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = addressesCopy;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        primitiveDestinationsByMessageAddress = [(STPersistentIDSMessageTransportMessageAddressMap *)self primitiveDestinationsByMessageAddress];
        primitives = [(STPersistentIDSMessageTransportMessageAddressMap *)self primitives];
        userAliasResolver = [(STPersistentIDSMessageTransportMessageAddressMap *)self userAliasResolver];
        v13 = [STPersistentIDSMessageTransportMessageAddressMap _primitiveDestinationFromMessageAddress:v9 primitiveDestinationsByMessageAddress:primitiveDestinationsByMessageAddress primitives:primitives userAliasResolver:userAliasResolver];

        if (v13)
        {
          [v17 addObject:v13];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v14 = [v17 copy];

  return v14;
}

+ (id)_primitiveDestinationFromMessageAddress:(id)address primitiveDestinationsByMessageAddress:(id)messageAddress primitives:(id)primitives userAliasResolver:(id)resolver
{
  addressCopy = address;
  messageAddressCopy = messageAddress;
  primitivesCopy = primitives;
  resolverCopy = resolver;
  v13 = [messageAddressCopy objectForKeyedSubscript:addressCopy];
  if (v13)
  {
    v14 = v13;
    v15 = IDSCopyRawAddressForDestination();
    if ([v15 _appearsToBeEmail])
    {
      v16 = IDSCopyIDForEmailAddress();
LABEL_9:
      v19 = v16;
      goto LABEL_16;
    }

    if ([v15 _appearsToBePhoneNumber])
    {
      v16 = IDSCopyIDForPhoneNumber();
      goto LABEL_9;
    }
  }

  else
  {
    userDSID = [addressCopy userDSID];
    v15 = [resolverCopy appleIDForUserDSID:userDSID];

    if (v15)
    {
      v18 = [primitivesCopy primitiveDestinationFromRawAddress:v15];
      if (v18)
      {
        v14 = v18;
        [messageAddressCopy setObject:v18 forKeyedSubscript:addressCopy];
        v16 = [v14 copy];
        goto LABEL_9;
      }

      v20 = +[STLog idsTransportMessageAddressMap];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100119314();
      }
    }

    else
    {
      v20 = +[STLog idsTransportMessageAddressMap];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100119388(addressCopy, v20);
      }
    }

    v14 = 0;
  }

  v19 = 0;
LABEL_16:

  return v19;
}

- (id)messageAddressesForPrimitiveDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [destinationsCopy count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = destinationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(STPersistentIDSMessageTransportMessageAddressMap *)self _messageAddressFromPrimitiveDestination:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)_messageAddressFromPrimitiveDestination:(id)destination
{
  destinationCopy = destination;
  messageAddressesByPrimitiveDestination = [(STPersistentIDSMessageTransportMessageAddressMap *)self messageAddressesByPrimitiveDestination];
  v6 = [messageAddressesByPrimitiveDestination objectForKeyedSubscript:destinationCopy];

  if (v6)
  {
    v7 = [(STMessageTransportMessageAddress *)v6 copy];
    goto LABEL_22;
  }

  v8 = +[STLog idsTransportMessageAddressMap];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136446467;
    v20 = "[STPersistentIDSMessageTransportMessageAddressMap _messageAddressFromPrimitiveDestination:]";
    v21 = 2113;
    v22 = destinationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nUnable to find corresponding message address for primitive destination: %{private}@. Attempting to create a partial one.", &v19, 0x16u);
  }

  primitives = [(STPersistentIDSMessageTransportMessageAddressMap *)self primitives];
  v10 = [primitives addressDestinationFromPrimitiveDestination:destinationCopy];

  if (!v10)
  {
    v12 = +[STLog idsTransportMessageAddressMap];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100119510();
    }

    v6 = 0;
    goto LABEL_21;
  }

  primitives2 = [(STPersistentIDSMessageTransportMessageAddressMap *)self primitives];
  v12 = [primitives2 rawAddressFromPrimitiveDestination:destinationCopy];

  if (v12)
  {
    userAliasResolver = [(STPersistentIDSMessageTransportMessageAddressMap *)self userAliasResolver];
    v14 = [userAliasResolver userDSIDForAppleID:v12];

    if (v14)
    {
      v15 = [[STMessageTransportMessageAddress alloc] initWithUserDSID:v14];
      [(STPersistentIDSMessageTransportMessageAddressMap *)self insertPrimitiveDestination:v10 forMessageAddress:v15];
      v16 = +[STLog idsTransportMessageAddressMap];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136446467;
        v20 = "[STPersistentIDSMessageTransportMessageAddressMap _messageAddressFromPrimitiveDestination:]";
        v21 = 2113;
        v22 = destinationCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nCreated partial message address from primitive destination: %{private}@", &v19, 0x16u);
      }

      v6 = v15;
      goto LABEL_20;
    }

    v17 = +[STLog idsTransportMessageAddressMap];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100119428();
    }
  }

  else
  {
    v14 = +[STLog idsTransportMessageAddressMap];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10011949C();
    }
  }

  v6 = 0;
LABEL_20:

LABEL_21:
  v7 = v6;
LABEL_22:

  return v7;
}

@end