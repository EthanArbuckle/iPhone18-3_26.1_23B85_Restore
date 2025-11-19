@interface STPersistentIDSMessageTransportMessageAddressMap
+ (id)_buildPrimitiveDestinationsByMessageAddressFromMessageAddressesByPrimitiveDestination:(id)a3;
+ (id)_loadMessageAddressesByPrimitiveDestinationFromKeyValueStore:(id)a3;
+ (id)_primitiveDestinationFromMessageAddress:(id)a3 primitiveDestinationsByMessageAddress:(id)a4 primitives:(id)a5 userAliasResolver:(id)a6;
- (STPersistentIDSMessageTransportMessageAddressMap)initWithPrimitives:(id)a3 userAliasResolver:(id)a4 keyValueStore:(id)a5;
- (id)_messageAddressFromPrimitiveDestination:(id)a3;
- (id)messageAddressesForPrimitiveDestinations:(id)a3;
- (id)primitiveDestinationsForMessageAddresses:(id)a3;
- (void)insertPrimitiveDestination:(id)a3 forMessageAddress:(id)a4;
- (void)removePrimitiveDestination:(id)a3;
- (void)save;
@end

@implementation STPersistentIDSMessageTransportMessageAddressMap

- (STPersistentIDSMessageTransportMessageAddressMap)initWithPrimitives:(id)a3 userAliasResolver:(id)a4 keyValueStore:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = STPersistentIDSMessageTransportMessageAddressMap;
  v11 = [(STPersistentIDSMessageTransportMessageAddressMap *)&v23 init];
  primitives = v11->_primitives;
  v11->_primitives = v8;
  v13 = v8;

  userAliasResolver = v11->_userAliasResolver;
  v11->_userAliasResolver = v9;
  v15 = v9;

  keyValueStore = v11->_keyValueStore;
  v11->_keyValueStore = v10;
  v17 = v10;

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
  v4 = [(STPersistentIDSMessageTransportMessageAddressMap *)self messageAddressesByPrimitiveDestination];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100051370;
  v9[3] = &unk_1001A4810;
  v10 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v8 = 0;
  v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:&v8];
  v7 = [(STPersistentIDSMessageTransportMessageAddressMap *)self keyValueStore];
  [v7 persistValue:v6 forKey:@"messageAddressesByPrimitiveDestination"];
}

+ (id)_loadMessageAddressesByPrimitiveDestinationFromKeyValueStore:(id)a3
{
  v3 = [a3 readValueForKey:@"messageAddressesByPrimitiveDestination"];
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

+ (id)_buildPrimitiveDestinationsByMessageAddressFromMessageAddressesByPrimitiveDestination:(id)a3
{
  v3 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100051860;
  v6[3] = &unk_1001A4810;
  v4 = objc_opt_new();
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (void)insertPrimitiveDestination:(id)a3 forMessageAddress:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 copy];
  v9 = [(STPersistentIDSMessageTransportMessageAddressMap *)self primitiveDestinationsByMessageAddress];
  [v9 setObject:v8 forKeyedSubscript:v6];

  v10 = [v6 copy];
  v11 = [(STPersistentIDSMessageTransportMessageAddressMap *)self messageAddressesByPrimitiveDestination];
  [v11 setObject:v10 forKeyedSubscript:v7];

  [(STPersistentIDSMessageTransportMessageAddressMap *)self save];
}

- (void)removePrimitiveDestination:(id)a3
{
  v4 = a3;
  v5 = [(STPersistentIDSMessageTransportMessageAddressMap *)self messageAddressesByPrimitiveDestination];
  v8 = [v5 objectForKeyedSubscript:v4];

  v6 = [(STPersistentIDSMessageTransportMessageAddressMap *)self messageAddressesByPrimitiveDestination];
  [v6 removeObjectForKey:v4];

  v7 = [(STPersistentIDSMessageTransportMessageAddressMap *)self primitiveDestinationsByMessageAddress];
  [v7 removeObjectForKey:v8];

  [(STPersistentIDSMessageTransportMessageAddressMap *)self save];
}

- (id)primitiveDestinationsForMessageAddresses:(id)a3
{
  v4 = a3;
  v17 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
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
        v10 = [(STPersistentIDSMessageTransportMessageAddressMap *)self primitiveDestinationsByMessageAddress];
        v11 = [(STPersistentIDSMessageTransportMessageAddressMap *)self primitives];
        v12 = [(STPersistentIDSMessageTransportMessageAddressMap *)self userAliasResolver];
        v13 = [STPersistentIDSMessageTransportMessageAddressMap _primitiveDestinationFromMessageAddress:v9 primitiveDestinationsByMessageAddress:v10 primitives:v11 userAliasResolver:v12];

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

+ (id)_primitiveDestinationFromMessageAddress:(id)a3 primitiveDestinationsByMessageAddress:(id)a4 primitives:(id)a5 userAliasResolver:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 objectForKeyedSubscript:v9];
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
    v17 = [v9 userDSID];
    v15 = [v12 appleIDForUserDSID:v17];

    if (v15)
    {
      v18 = [v11 primitiveDestinationFromRawAddress:v15];
      if (v18)
      {
        v14 = v18;
        [v10 setObject:v18 forKeyedSubscript:v9];
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
        sub_100119388(v9, v20);
      }
    }

    v14 = 0;
  }

  v19 = 0;
LABEL_16:

  return v19;
}

- (id)messageAddressesForPrimitiveDestinations:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

- (id)_messageAddressFromPrimitiveDestination:(id)a3
{
  v4 = a3;
  v5 = [(STPersistentIDSMessageTransportMessageAddressMap *)self messageAddressesByPrimitiveDestination];
  v6 = [v5 objectForKeyedSubscript:v4];

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
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nUnable to find corresponding message address for primitive destination: %{private}@. Attempting to create a partial one.", &v19, 0x16u);
  }

  v9 = [(STPersistentIDSMessageTransportMessageAddressMap *)self primitives];
  v10 = [v9 addressDestinationFromPrimitiveDestination:v4];

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

  v11 = [(STPersistentIDSMessageTransportMessageAddressMap *)self primitives];
  v12 = [v11 rawAddressFromPrimitiveDestination:v4];

  if (v12)
  {
    v13 = [(STPersistentIDSMessageTransportMessageAddressMap *)self userAliasResolver];
    v14 = [v13 userDSIDForAppleID:v12];

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
        v22 = v4;
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