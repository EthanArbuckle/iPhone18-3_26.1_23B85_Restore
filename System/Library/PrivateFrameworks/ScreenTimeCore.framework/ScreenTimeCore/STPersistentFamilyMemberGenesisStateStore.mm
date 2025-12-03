@interface STPersistentFamilyMemberGenesisStateStore
+ (id)_loadFromKeyValueStore:(id)store;
- (STPersistentFamilyMemberGenesisStateStore)initWithKeyValueStore:(id)store;
- (id)readFamilyMemberGenesisStateItems;
- (void)_saveToKeyValueStore;
- (void)writeFamilyMemberGenesisStateItems:(id)items;
@end

@implementation STPersistentFamilyMemberGenesisStateStore

- (STPersistentFamilyMemberGenesisStateStore)initWithKeyValueStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = STPersistentFamilyMemberGenesisStateStore;
  v5 = [(STPersistentFamilyMemberGenesisStateStore *)&v11 init];
  keyValueStore = v5->_keyValueStore;
  v5->_keyValueStore = storeCopy;
  v7 = storeCopy;

  v8 = [STPersistentFamilyMemberGenesisStateStore _loadFromKeyValueStore:v5->_keyValueStore];
  genesisStateItemsByUserDSID = v5->_genesisStateItemsByUserDSID;
  v5->_genesisStateItemsByUserDSID = v8;

  return v5;
}

- (void)writeFamilyMemberGenesisStateItems:(id)items
{
  itemsCopy = items;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [itemsCopy count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        userID = [v11 userID];
        dsid = [userID dsid];
        [v5 setObject:v11 forKeyedSubscript:dsid];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  [(STPersistentFamilyMemberGenesisStateStore *)self setGenesisStateItemsByUserDSID:v14];

  [(STPersistentFamilyMemberGenesisStateStore *)self _saveToKeyValueStore];
}

- (id)readFamilyMemberGenesisStateItems
{
  genesisStateItemsByUserDSID = [(STPersistentFamilyMemberGenesisStateStore *)self genesisStateItemsByUserDSID];
  allValues = [genesisStateItemsByUserDSID allValues];
  v4 = [NSSet setWithArray:allValues];

  return v4;
}

- (void)_saveToKeyValueStore
{
  genesisStateItemsByUserDSID = [(STPersistentFamilyMemberGenesisStateStore *)self genesisStateItemsByUserDSID];
  v7 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:genesisStateItemsByUserDSID requiringSecureCoding:1 error:&v7];
  v5 = v7;

  if (v4)
  {
    keyValueStore = [(STPersistentFamilyMemberGenesisStateStore *)self keyValueStore];
    [keyValueStore persistValue:v4 forKey:@"genesisStateItemsByUserDSID"];
  }

  else
  {
    keyValueStore = +[STLog familyMemberGenesisStateStore];
    if (os_log_type_enabled(keyValueStore, OS_LOG_TYPE_ERROR))
    {
      sub_100118EF0(v5, keyValueStore);
    }
  }
}

+ (id)_loadFromKeyValueStore:(id)store
{
  v3 = [store readValueForKey:@"genesisStateItemsByUserDSID"];
  if (v3)
  {
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v4 = [NSArray arrayWithObjects:v15 count:3];
    v5 = [NSSet setWithArray:v4];
    v13 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v3 error:&v13];
    v7 = v13;

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v11 = +[STLog familyMemberGenesisStateStore];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100118F68(v7, v11);
      }

      v8 = objc_opt_new();
    }

    v10 = v8;
  }

  else
  {
    v9 = +[STLog familyMemberGenesisStateStore];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No existing genesis store items to load", buf, 2u);
    }

    v10 = objc_opt_new();
  }

  return v10;
}

@end