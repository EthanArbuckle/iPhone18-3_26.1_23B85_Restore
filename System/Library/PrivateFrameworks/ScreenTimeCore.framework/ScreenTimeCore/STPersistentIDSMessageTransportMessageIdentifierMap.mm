@interface STPersistentIDSMessageTransportMessageIdentifierMap
+ (id)_loadMessageIdentifiersByPrimitiveIdentifierFromKeyValueStore:(id)store;
- (NSNumber)numberOfEntries;
- (STPersistentIDSMessageTransportMessageIdentifierMap)initWithKeyValueStore:(id)store;
- (id)messageIdentifierForPrimitiveMessageIdentifier:(id)identifier;
- (void)insertMessageIdentifier:(id)identifier forPrimitiveMessageIdentifier:(id)messageIdentifier;
- (void)removeMessageIdentifier:(id)identifier;
- (void)removePrimitiveMessageIdentifier:(id)identifier;
- (void)save;
@end

@implementation STPersistentIDSMessageTransportMessageIdentifierMap

- (STPersistentIDSMessageTransportMessageIdentifierMap)initWithKeyValueStore:(id)store
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = STPersistentIDSMessageTransportMessageIdentifierMap;
  v5 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)&v17 init];
  v6 = [STPersistentIDSMessageTransportMessageIdentifierMap _loadMessageIdentifiersByPrimitiveIdentifierFromKeyValueStore:storeCopy];
  messageIdentifiersByPrimitiveIdentifier = v5->_messageIdentifiersByPrimitiveIdentifier;
  v5->_messageIdentifiersByPrimitiveIdentifier = v6;

  v8 = [NSMutableDictionary dictionaryWithCapacity:[(NSMutableDictionary *)v5->_messageIdentifiersByPrimitiveIdentifier count]];
  primitiveIdentifiersByMessageIdentifier = v5->_primitiveIdentifiersByMessageIdentifier;
  v5->_primitiveIdentifiersByMessageIdentifier = v8;

  v10 = v5->_messageIdentifiersByPrimitiveIdentifier;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005236C;
  v15[3] = &unk_1001A4868;
  v11 = v5;
  v16 = v11;
  [(NSMutableDictionary *)v10 enumerateKeysAndObjectsUsingBlock:v15];
  keyValueStore = v11->_keyValueStore;
  v11->_keyValueStore = storeCopy;
  v13 = storeCopy;

  return v11;
}

- (NSNumber)numberOfEntries
{
  messageIdentifiersByPrimitiveIdentifier = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [messageIdentifiersByPrimitiveIdentifier count]);

  return v3;
}

- (void)save
{
  v3 = objc_opt_new();
  messageIdentifiersByPrimitiveIdentifier = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100052534;
  v10[3] = &unk_1001A4868;
  v5 = v3;
  v11 = v5;
  [messageIdentifiersByPrimitiveIdentifier enumerateKeysAndObjectsUsingBlock:v10];

  v9 = 0;
  v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:&v9];
  v7 = v9;
  if (v6)
  {
    keyValueStore = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self keyValueStore];
    [keyValueStore persistValue:v6 forKey:@"messageIdentifiersByPrimitiveIdentifier"];
  }

  else
  {
    keyValueStore = +[STLog idsTransportMessageIdentifierMap];
    if (os_log_type_enabled(keyValueStore, OS_LOG_TYPE_ERROR))
    {
      sub_100119584();
    }
  }
}

+ (id)_loadMessageIdentifiersByPrimitiveIdentifierFromKeyValueStore:(id)store
{
  storeCopy = store;
  v4 = [storeCopy readValueForKey:@"messageIdentifiersByPrimitiveIdentifier"];
  if (v4)
  {
    v5 = objc_opt_new();
    if ([v4 length] >> 11 > 4)
    {
      v14 = +[STLog idsTransportMessageIdentifierMap];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100119600();
      }

      [storeCopy removeValueForKey:@"messageIdentifiersByPrimitiveIdentifier"];
      v6 = +[NSUserDefaults standardUserDefaults];
      if ([v6 BOOLForKey:@"DidPurgeOversizedIdentifierMap"])
      {
        v15 = +[STLog idsTransportMessageIdentifierMap];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          sub_100119680(v15);
        }
      }

      [v6 setBool:1 forKey:@"DidPurgeOversizedIdentifierMap"];
    }

    else
    {
      v19 = 0;
      v6 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v19];
      v7 = v19;
      if (v7)
      {
        v8 = v7;
        v9 = +[STLog idsTransportMessageIdentifierMap];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100119704();
        }

        v10 = +[STLog idsTransportMessageIdentifierMap];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          v21 = "+[STPersistentIDSMessageTransportMessageIdentifierMap _loadMessageIdentifiersByPrimitiveIdentifierFromKeyValueStore:]";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[v2] %{public}s: \nCreating an empty map.", buf, 0xCu);
        }

        v11 = objc_opt_new();
        goto LABEL_23;
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100052908;
      v17[3] = &unk_1001A4890;
      v18 = v5;
      [v6 enumerateKeysAndObjectsUsingBlock:v17];
    }

    v11 = v5;
LABEL_23:

    goto LABEL_24;
  }

  v12 = +[STLog idsTransportMessageIdentifierMap];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100119780();
  }

  v13 = +[STLog idsTransportMessageIdentifierMap];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v21 = "+[STPersistentIDSMessageTransportMessageIdentifierMap _loadMessageIdentifiersByPrimitiveIdentifierFromKeyValueStore:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[v2] %{public}s: \nCreating an empty map.", buf, 0xCu);
  }

  v11 = objc_opt_new();
LABEL_24:

  return v11;
}

- (void)insertMessageIdentifier:(id)identifier forPrimitiveMessageIdentifier:(id)messageIdentifier
{
  messageIdentifierCopy = messageIdentifier;
  identifierCopy = identifier;
  v8 = [identifierCopy copy];
  messageIdentifiersByPrimitiveIdentifier = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
  [messageIdentifiersByPrimitiveIdentifier setObject:v8 forKeyedSubscript:messageIdentifierCopy];

  v10 = [messageIdentifierCopy copy];
  primitiveIdentifiersByMessageIdentifier = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self primitiveIdentifiersByMessageIdentifier];
  [primitiveIdentifiersByMessageIdentifier setObject:v10 forKeyedSubscript:identifierCopy];

  [(STPersistentIDSMessageTransportMessageIdentifierMap *)self save];
}

- (void)removePrimitiveMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  messageIdentifiersByPrimitiveIdentifier = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
  v8 = [messageIdentifiersByPrimitiveIdentifier objectForKeyedSubscript:identifierCopy];

  messageIdentifiersByPrimitiveIdentifier2 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
  [messageIdentifiersByPrimitiveIdentifier2 removeObjectForKey:identifierCopy];

  if (v8)
  {
    primitiveIdentifiersByMessageIdentifier = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self primitiveIdentifiersByMessageIdentifier];
    [primitiveIdentifiersByMessageIdentifier removeObjectForKey:v8];
  }

  [(STPersistentIDSMessageTransportMessageIdentifierMap *)self save];
}

- (void)removeMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  primitiveIdentifiersByMessageIdentifier = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self primitiveIdentifiersByMessageIdentifier];
  v8 = [primitiveIdentifiersByMessageIdentifier objectForKeyedSubscript:identifierCopy];

  primitiveIdentifiersByMessageIdentifier2 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self primitiveIdentifiersByMessageIdentifier];
  [primitiveIdentifiersByMessageIdentifier2 removeObjectForKey:identifierCopy];

  if (v8)
  {
    messageIdentifiersByPrimitiveIdentifier = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
    [messageIdentifiersByPrimitiveIdentifier removeObjectForKey:v8];
  }

  [(STPersistentIDSMessageTransportMessageIdentifierMap *)self save];
}

- (id)messageIdentifierForPrimitiveMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  messageIdentifiersByPrimitiveIdentifier = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
  v6 = [messageIdentifiersByPrimitiveIdentifier objectForKeyedSubscript:identifierCopy];

  v7 = [v6 copy];

  return v7;
}

@end