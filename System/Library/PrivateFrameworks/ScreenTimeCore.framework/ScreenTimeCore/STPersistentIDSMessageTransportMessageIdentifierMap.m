@interface STPersistentIDSMessageTransportMessageIdentifierMap
+ (id)_loadMessageIdentifiersByPrimitiveIdentifierFromKeyValueStore:(id)a3;
- (NSNumber)numberOfEntries;
- (STPersistentIDSMessageTransportMessageIdentifierMap)initWithKeyValueStore:(id)a3;
- (id)messageIdentifierForPrimitiveMessageIdentifier:(id)a3;
- (void)insertMessageIdentifier:(id)a3 forPrimitiveMessageIdentifier:(id)a4;
- (void)removeMessageIdentifier:(id)a3;
- (void)removePrimitiveMessageIdentifier:(id)a3;
- (void)save;
@end

@implementation STPersistentIDSMessageTransportMessageIdentifierMap

- (STPersistentIDSMessageTransportMessageIdentifierMap)initWithKeyValueStore:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = STPersistentIDSMessageTransportMessageIdentifierMap;
  v5 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)&v17 init];
  v6 = [STPersistentIDSMessageTransportMessageIdentifierMap _loadMessageIdentifiersByPrimitiveIdentifierFromKeyValueStore:v4];
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
  v11->_keyValueStore = v4;
  v13 = v4;

  return v11;
}

- (NSNumber)numberOfEntries
{
  v2 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 count]);

  return v3;
}

- (void)save
{
  v3 = objc_opt_new();
  v4 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100052534;
  v10[3] = &unk_1001A4868;
  v5 = v3;
  v11 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

  v9 = 0;
  v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:&v9];
  v7 = v9;
  if (v6)
  {
    v8 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self keyValueStore];
    [v8 persistValue:v6 forKey:@"messageIdentifiersByPrimitiveIdentifier"];
  }

  else
  {
    v8 = +[STLog idsTransportMessageIdentifierMap];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100119584();
    }
  }
}

+ (id)_loadMessageIdentifiersByPrimitiveIdentifierFromKeyValueStore:(id)a3
{
  v3 = a3;
  v4 = [v3 readValueForKey:@"messageIdentifiersByPrimitiveIdentifier"];
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

      [v3 removeValueForKey:@"messageIdentifiersByPrimitiveIdentifier"];
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

- (void)insertMessageIdentifier:(id)a3 forPrimitiveMessageIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 copy];
  v9 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
  [v9 setObject:v8 forKeyedSubscript:v6];

  v10 = [v6 copy];
  v11 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self primitiveIdentifiersByMessageIdentifier];
  [v11 setObject:v10 forKeyedSubscript:v7];

  [(STPersistentIDSMessageTransportMessageIdentifierMap *)self save];
}

- (void)removePrimitiveMessageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
  v8 = [v5 objectForKeyedSubscript:v4];

  v6 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
  [v6 removeObjectForKey:v4];

  if (v8)
  {
    v7 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self primitiveIdentifiersByMessageIdentifier];
    [v7 removeObjectForKey:v8];
  }

  [(STPersistentIDSMessageTransportMessageIdentifierMap *)self save];
}

- (void)removeMessageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self primitiveIdentifiersByMessageIdentifier];
  v8 = [v5 objectForKeyedSubscript:v4];

  v6 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self primitiveIdentifiersByMessageIdentifier];
  [v6 removeObjectForKey:v4];

  if (v8)
  {
    v7 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
    [v7 removeObjectForKey:v8];
  }

  [(STPersistentIDSMessageTransportMessageIdentifierMap *)self save];
}

- (id)messageIdentifierForPrimitiveMessageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(STPersistentIDSMessageTransportMessageIdentifierMap *)self messageIdentifiersByPrimitiveIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 copy];

  return v7;
}

@end