@interface PTParameterRecordsPersistenceManager
- (PTParameterRecordsPersistenceManager)init;
- (id)createParameterRecordsFromArchiveDictionary;
- (void)_writeToDiskWithParameterRecords:(id)records;
- (void)writeToDisk:(id)disk;
@end

@implementation PTParameterRecordsPersistenceManager

- (PTParameterRecordsPersistenceManager)init
{
  v7.receiver = self;
  v7.super_class = PTParameterRecordsPersistenceManager;
  v2 = [(PTParameterRecordsPersistenceManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.PrototypeTools.PTParameterRecordsPersistenceManager", 0);
    parameterRecordsArchiveQueue = v2->_parameterRecordsArchiveQueue;
    v2->_parameterRecordsArchiveQueue = v3;

    v5 = sub_100003088();
    [(PTParameterRecordsPersistenceManager *)v2 setPath:v5];
  }

  return v2;
}

- (id)createParameterRecordsFromArchiveDictionary
{
  path = [(PTParameterRecordsPersistenceManager *)self path];
  v15 = 0;
  v3 = [NSData dataWithContentsOfFile:path options:0 error:&v15];
  v4 = v15;

  if (v4)
  {
    v5 = PTLogObjectForTopic();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unexpected error: %@", buf, 0xCu);
    }
  }

  v6 = [NSSet alloc];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v16[2] = objc_opt_class();
  v16[3] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v16 count:4];
  v8 = [v6 initWithArray:v7];

  v14 = v4;
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v3 error:&v14];
  v10 = v14;

  if (!v9)
  {
    v11 = PTLogObjectForTopic();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Error unarchiving persisted proxy definition: %@", buf, 0xCu);
    }

    v9 = objc_alloc_init(NSMutableDictionary);
  }

  v12 = [[PTParameterRecords alloc] initWithDictionary:v9];

  return v12;
}

- (void)_writeToDiskWithParameterRecords:(id)records
{
  recordsCopy = records;
  parameterRecordsArchiveQueue = self->_parameterRecordsArchiveQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003448;
  v7[3] = &unk_1000188E0;
  v8 = recordsCopy;
  selfCopy = self;
  v6 = recordsCopy;
  dispatch_async(parameterRecordsArchiveQueue, v7);
}

- (void)writeToDisk:(id)disk
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003678;
  v4[3] = &unk_1000188E0;
  v4[4] = self;
  diskCopy = disk;
  v3 = diskCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

@end