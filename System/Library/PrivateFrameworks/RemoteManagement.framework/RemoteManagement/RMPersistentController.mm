@interface RMPersistentController
+ (BOOL)startPersistentController;
+ (NSManagedObjectModel)managedObjectModel;
+ (NSURL)managedObjectModelURL;
+ (RMPersistentController)sharedController;
+ (id)_createLoadedPersistentContainerWithURL:(id)a3;
+ (id)currentPersistentHistoryTokenForContainer:(id)a3;
+ (id)unarchiveObjectOfClass:(Class)a3 forKey:(id)a4 fromMetadataForPersistentStore:(id)a5;
+ (id)unarchiveObjectOfClasses:(id)a3 forKey:(id)a4 fromMetadataForPersistentStore:(id)a5;
+ (void)archiveObject:(id)a3 forKey:(id)a4 intoMetadataForPersistentStore:(id)a5;
+ (void)metadataOnPersistentStore:(id)a3 updateHandler:(id)a4;
- (RMPersistentController)initWithPersistentContainer:(id)a3;
@end

@implementation RMPersistentController

- (RMPersistentController)initWithPersistentContainer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RMPersistentController;
  v6 = [(RMPersistentController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentContainer, a3);
  }

  return v7;
}

+ (RMPersistentController)sharedController
{
  if (qword_1000E69E8 != -1)
  {
    sub_1000592E0();
  }

  v3 = qword_1000E69E0;

  return v3;
}

+ (BOOL)startPersistentController
{
  v2 = +[RMPersistentController sharedController];
  [v2 persistentContainer];

  return byte_1000E69F0;
}

+ (id)_createLoadedPersistentContainerWithURL:(id)a3
{
  v4 = a3;
  v5 = +[RMLog persistentController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000592F4(v4, v5);
  }

  v6 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v4];
  [v6 setType:NSSQLiteStoreType];
  [v6 setOption:&__kCFBooleanTrue forKey:NSPersistentHistoryTrackingKey];
  [v6 setShouldMigrateStoreAutomatically:1];
  [v6 setShouldInferMappingModelAutomatically:1];
  v7 = [NSPersistentContainer alloc];
  v8 = NSStringFromClass(a1);
  v9 = +[RMPersistentController managedObjectModel];
  v10 = [v7 initWithName:v8 managedObjectModel:v9];

  v24 = v6;
  v11 = [NSArray arrayWithObjects:&v24 count:1];
  [v10 setPersistentStoreDescriptions:v11];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100058910;
  v20 = sub_100058920;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100058928;
  v15[3] = &unk_1000D25A0;
  v15[4] = &v16;
  [v10 loadPersistentStoresWithCompletionHandler:v15];
  if (v17[5])
  {
    v12 = 0;
  }

  else
  {
    v13 = +[RMLog persistentController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v23 = v4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Created loaded persistent container at %{public}@", buf, 0xCu);
    }

    v12 = v10;
  }

  _Block_object_dispose(&v16, 8);

  return v12;
}

+ (NSURL)managedObjectModelURL
{
  if (qword_1000E6A00 != -1)
  {
    sub_10005941C();
  }

  v3 = qword_1000E69F8;

  return v3;
}

+ (NSManagedObjectModel)managedObjectModel
{
  if (qword_1000E6A10 != -1)
  {
    sub_100059430();
  }

  v3 = qword_1000E6A08;

  return v3;
}

+ (void)metadataOnPersistentStore:(id)a3 updateHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 persistentStoreCoordinator];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100058BE4;
  v11 = v10[3] = &unk_1000D2608;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = v11;
  [v9 performBlockAndWait:v10];
}

+ (void)archiveObject:(id)a3 forKey:(id)a4 intoMetadataForPersistentStore:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100058D34;
  v10[3] = &unk_1000D2630;
  v11 = a3;
  v12 = a4;
  v8 = v12;
  v9 = v11;
  [a1 metadataOnPersistentStore:a5 updateHandler:v10];
}

+ (id)unarchiveObjectOfClass:(Class)a3 forKey:(id)a4 fromMetadataForPersistentStore:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [NSSet setWithObject:a3];
  v11 = [a1 unarchiveObjectOfClasses:v10 forKey:v9 fromMetadataForPersistentStore:v8];

  return v11;
}

+ (id)unarchiveObjectOfClasses:(id)a3 forKey:(id)a4 fromMetadataForPersistentStore:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100058910;
  v23 = sub_100058920;
  v24 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000590A4;
  v15[3] = &unk_1000D2658;
  v11 = v9;
  v16 = v11;
  v18 = &v19;
  v12 = v8;
  v17 = v12;
  [a1 metadataOnPersistentStore:v10 updateHandler:v15];
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

+ (id)currentPersistentHistoryTokenForContainer:(id)a3
{
  v3 = [a3 persistentStoreCoordinator];
  v4 = [v3 persistentStores];
  v5 = [v3 currentPersistentHistoryTokenFromStores:v4];

  return v5;
}

@end