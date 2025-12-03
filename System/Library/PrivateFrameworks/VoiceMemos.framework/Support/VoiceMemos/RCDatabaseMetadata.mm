@interface RCDatabaseMetadata
- (RCDatabaseMetadata)initWithPersistentStore:(id)store;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)migrate:(id)migrate;
- (void)save;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation RCDatabaseMetadata

- (RCDatabaseMetadata)initWithPersistentStore:(id)store
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = RCDatabaseMetadata;
  v6 = [(RCDatabaseMetadata *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    persistentStoreCoordinator = [storeCopy persistentStoreCoordinator];
    coordinator = v7->_coordinator;
    v7->_coordinator = persistentStoreCoordinator;

    metadata = [(NSPersistentStore *)v7->_store metadata];
    v11 = [metadata objectForKeyedSubscript:@"com.apple.VoiceMemos.DatabaseProperties"];
    v12 = [v11 mutableCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = objc_opt_new();
    }

    metadata = v7->_metadata;
    v7->_metadata = v14;
  }

  return v7;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100001DAC;
  v16 = sub_10000E928;
  v17 = 0;
  coordinator = self->_coordinator;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E930;
  v9[3] = &unk_100055958;
  v11 = &v12;
  v9[4] = self;
  v6 = subscriptCopy;
  v10 = v6;
  [(NSPersistentStoreCoordinator *)coordinator performBlockAndWait:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  coordinator = self->_coordinator;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000EA48;
  v11[3] = &unk_1000556A0;
  v11[4] = self;
  v12 = subscriptCopy;
  v13 = objectCopy;
  v9 = objectCopy;
  v10 = subscriptCopy;
  [(NSPersistentStoreCoordinator *)coordinator performBlockAndWait:v11];
}

- (void)save
{
  coordinator = self->_coordinator;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000EAF8;
  v3[3] = &unk_1000556F0;
  v3[4] = self;
  [(NSPersistentStoreCoordinator *)coordinator performBlockAndWait:v3];
}

- (void)migrate:(id)migrate
{
  migrateCopy = migrate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100001DAC;
  v15 = sub_10000E928;
  v16 = 0;
  coordinator = self->_coordinator;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000ED10;
  v10[3] = &unk_1000558B0;
  v10[4] = self;
  v10[5] = &v11;
  [(NSPersistentStoreCoordinator *)coordinator performBlockAndWait:v10];
  if ([v12[5] count])
  {
    v6 = migrateCopy[2];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000ED5C;
    v7[3] = &unk_1000558B0;
    v9 = &v11;
    v8 = migrateCopy;
    [v6 performBlockAndWait:v7];
  }

  _Block_object_dispose(&v11, 8);
}

@end