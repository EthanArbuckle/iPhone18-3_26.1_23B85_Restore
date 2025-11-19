@interface BCDatabase
- (BCDatabase)initWithDatabasePath:(id)a3;
- (id)databaseURL;
- (id)model;
- (id)newManagedObjectContext;
- (id)persistentStoreCoordinator;
- (void)dealloc;
@end

@implementation BCDatabase

- (BCDatabase)initWithDatabasePath:(id)a3
{
  v6.receiver = self;
  v6.super_class = BCDatabase;
  v4 = [(BCDatabase *)&v6 init];
  if (v4)
  {
    v4->_path = a3;
  }

  return v4;
}

- (void)dealloc
{
  self->_psc = 0;

  self->_path = 0;
  v3.receiver = self;
  v3.super_class = BCDatabase;
  [(BCDatabase *)&v3 dealloc];
}

- (id)model
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  if (!v4)
  {
    sub_13774();
  }

  v5 = [NSManagedObjectModel mergedModelFromBundles:[NSArray arrayWithObject:v4]];
  if (!v5)
  {
    sub_137E4(a2, self, v4);
  }

  return v5;
}

- (id)databaseURL
{
  if (![(NSString *)self->_path length])
  {
    sub_1384C();
  }

  path = self->_path;

  return [NSURL fileURLWithPath:path isDirectory:0];
}

- (id)persistentStoreCoordinator
{
  result = self->_psc;
  if (!result)
  {
    v5 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:1], NSMigratePersistentStoresAutomaticallyOption, [NSNumber numberWithBool:1], NSInferMappingModelAutomaticallyOption, NSFileProtectionNone, NSPersistentStoreFileProtectionKey, 0];
    v6 = [(BCDatabase *)self model];
    if (!v6)
    {
      sub_138A4();
    }

    self->_psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v6];
    v7 = [(BCDatabase *)self databaseURL];
    if (!v7)
    {
      sub_138FC();
    }

    while (1)
    {
      v21 = 0;
      if ([(NSPersistentStoreCoordinator *)self->_psc addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v7 options:v5 error:&v21])
      {
        break;
      }

      v8 = v21;
      v9 = BCDefaultLog();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v10)
        {
          *buf = 138412290;
          v25 = v21;
          _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Failed to addPersistentStoreWithType: %@", buf, 0xCu);
        }
      }

      else
      {
        if (v10)
        {
          sub_13954(&v19, v20, v9);
        }

        v21 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
      }

      v18 = 0;
      if (([(NSPersistentStoreCoordinator *)self->_psc _destroyPersistentStoreAtURL:v7 withType:NSSQLiteStoreType options:0 error:&v18]& 1) == 0)
      {
        v11 = v18;
        v12 = BCDefaultLog();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          if (v13)
          {
            *buf = 138412290;
            v25 = v18;
            _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Failed to destroyPersistentStoreAtURL: %@", buf, 0xCu);
          }
        }

        else if (v13)
        {
          sub_13994(&v16, v17, v12);
        }

        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"BCDatabase.m" description:111, @"_destroyPersistentStoreAtURL failed: %@ -- URL: %@", self, v7];
      }

      if (![(BCDatabase *)self shouldRetryAddingPersistentStoreAfterError:v21])
      {
        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"BCDatabase.m" description:116, @"invalid Persistent Store: %@ -- URL: %@", self, v7];
        break;
      }
    }

    v14 = objc_alloc_init(NSFileManager);
    v15 = [v14 attributesOfItemAtPath:objc_msgSend(v7 error:{"path"), 0}];
    if (v15)
    {
      if (([objc_msgSend(v15 "fileOwnerAccountName")] & 1) == 0)
      {
        v22[0] = NSFileOwnerAccountName;
        v22[1] = NSFileGroupOwnerAccountName;
        v23[0] = @"mobile";
        v23[1] = @"mobile";
        [v14 setAttributes:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary ofItemAtPath:"dictionaryWithObjects:forKeys:count:" error:{v23, v22, 2), objc_msgSend(v7, "path"), 0}];
      }
    }

    return self->_psc;
  }

  return result;
}

- (id)newManagedObjectContext
{
  if (![(BCDatabase *)self persistentStoreCoordinator])
  {
    return 0;
  }

  v3 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  [v3 setPersistentStoreCoordinator:{-[BCDatabase persistentStoreCoordinator](self, "persistentStoreCoordinator")}];
  [v3 setUndoManager:0];
  return v3;
}

@end