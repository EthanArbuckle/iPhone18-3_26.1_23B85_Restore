@interface FTPersistentContainer
- (FTPersistentContainer)initWithStoreType:(int64_t)a3;
- (NSManagedObjectContext)managedObjectContext;
- (void)loadPersistentStoresWithCompletionHandler:(id)a3;
@end

@implementation FTPersistentContainer

- (NSManagedObjectContext)managedObjectContext
{
  managedObjectContext = self->_managedObjectContext;
  if (!managedObjectContext)
  {
    v4 = [(FTPersistentContainer *)self newBackgroundContext];
    v5 = self->_managedObjectContext;
    self->_managedObjectContext = v4;

    managedObjectContext = self->_managedObjectContext;
  }

  return managedObjectContext;
}

- (FTPersistentContainer)initWithStoreType:(int64_t)a3
{
  v16.receiver = self;
  v16.super_class = FTPersistentContainer;
  v4 = [(FTPersistentContainer *)&v16 initWithName:@"FaceTime"];
  if (v4)
  {
    v5 = objc_alloc_init(TUUserConfiguration);
    userConfiguration = v4->_userConfiguration;
    v4->_userConfiguration = v5;

    if (a3 == 1)
    {
      v13 = FTCServiceLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C688();
      }

      v9 = +[NSPersistentStoreDescription inMemoryPersistentStoreDescription];
    }

    else if (a3)
    {
      v9 = 0;
    }

    else
    {
      v7 = FTCServiceLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C6BC();
      }

      v8 = FTGetUserDataStoreClassCFileURL();
      v9 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v8];

      v10 = FTCServiceLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C6F0();
      }

      [v9 setOption:NSFileProtectionCompleteUntilFirstUserAuthentication forKey:NSPersistentStoreFileProtectionKey];
      v11 = FTCServiceLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C724();
      }

      [v9 setValue:@"1" forPragmaNamed:@"secure_delete"];
      v12 = FTCServiceLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C758();
      }

      [v9 setShouldMigrateStoreAutomatically:1];
    }

    v17 = v9;
    v14 = [NSArray arrayWithObjects:&v17 count:1];
    [(FTPersistentContainer *)v4 setPersistentStoreDescriptions:v14];
  }

  return v4;
}

- (void)loadPersistentStoresWithCompletionHandler:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001890;
  v5[3] = &unk_1000183F0;
  v6 = self;
  v7 = a3;
  v4.receiver = v6;
  v4.super_class = FTPersistentContainer;
  v3 = v7;
  [(FTPersistentContainer *)&v4 loadPersistentStoresWithCompletionHandler:v5];
}

@end