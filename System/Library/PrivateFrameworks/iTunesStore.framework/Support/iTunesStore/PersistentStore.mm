@interface PersistentStore
- (BOOL)_loadStoreCoordinatorWithIntegrityCheck:(BOOL)check error:(id *)error;
- (BOOL)loadStoreCoordinatorWithOptions:(id)options error:(id *)error;
- (BOOL)performLightweightMigration:(id *)migration;
- (BOOL)resetStore:(id *)store;
- (NSURL)databaseFileURL;
- (NSURL)modelFileURL;
- (PersistentStore)initWithConfiguration:(id)configuration error:(id *)error;
- (PersistentStoreConfiguration)configuration;
- (id)_baseFilePath;
- (id)_newLegacyManagedObjectModel;
- (id)beginThreadContextSession;
- (id)managedObjectModel;
- (void)checkIntegrityWithInitializationBlock:(id)block;
- (void)dealloc;
- (void)endThreadContextSession;
@end

@implementation PersistentStore

- (PersistentStore)initWithConfiguration:(id)configuration error:(id *)error
{
  if (!configuration)
  {
    sub_100272248(a2, self);
  }

  v10.receiver = self;
  v10.super_class = PersistentStore;
  v7 = [(PersistentStore *)&v10 init];
  if (v7)
  {
    v7->_configuration = [configuration copy];
    if ([(PersistentStore *)v7 _loadStoreCoordinatorWithIntegrityCheck:0 error:error])
    {
      storeType = [(PersistentStoreConfiguration *)v7->_configuration storeType];
      v7->_threadContextKey = [[NSString alloc] initWithFormat:@"itunesstored.store-context.%d", storeType];
      v7->_threadCountKey = [[NSString alloc] initWithFormat:@"itunesstored.store-count.%d", storeType];
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PersistentStore;
  [(PersistentStore *)&v3 dealloc];
}

- (id)beginThreadContextSession
{
  threadDictionary = [+[NSThread currentThread](NSThread threadDictionary];
  v4 = [(NSMutableDictionary *)threadDictionary objectForKey:self->_threadContextKey];
  if (!v4)
  {
    v5 = [NSManagedObjectContext alloc];
    v6 = [v5 initWithConcurrencyType:_NSBackgroundThreadConfinementConcurrencyType];
    v4 = v6;
    if (!v6)
    {
      return v4;
    }

    [v6 setPersistentStoreCoordinator:self->_storeCoordinator];
    [v4 setUndoManager:0];
    [(NSMutableDictionary *)threadDictionary setObject:v4 forKey:self->_threadContextKey];
  }

  v7 = [(NSMutableDictionary *)threadDictionary objectForKey:self->_threadCountKey];
  v8 = [NSNumber alloc];
  if (v7)
  {
    v9 = [v7 integerValue] + 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v8 initWithInteger:v9];
  [(NSMutableDictionary *)threadDictionary setObject:v10 forKey:self->_threadCountKey];

  return v4;
}

- (void)checkIntegrityWithInitializationBlock:(id)block
{
  v5 = [-[PersistentStore _baseFilePath](self "_baseFilePath")];
  if (v5)
  {
    v6 = v5;
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = v6;
      LODWORD(v22) = 22;
      v21 = &v23;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4, &v23, v22];
        free(v11);
        v21 = v12;
        SSFileLog();
      }
    }

    v13 = objc_alloc_init(NSFileManager);
    if ([v13 fileExistsAtPath:v6])
    {
      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v16 = shouldLog2 | 2;
      }

      else
      {
        v16 = shouldLog2;
      }

      if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v16 &= 2u;
      }

      if (v16)
      {
        v17 = objc_opt_class();
        v23 = 138412290;
        v24 = v17;
        LODWORD(v22) = 12;
        v21 = &v23;
        v18 = _os_log_send_and_compose_impl();
        if (v18)
        {
          v19 = v18;
          v20 = [NSString stringWithCString:v18 encoding:4, &v23, v22];
          free(v19);
          v21 = v20;
          SSFileLog();
        }
      }

      self->_storeCoordinator = 0;
      [(PersistentStore *)self _loadStoreCoordinatorWithIntegrityCheck:1 error:0];
    }

    [v13 createFileAtPath:v6 contents:0 attributes:{0, v21}];
    (*(block + 2))(block);
    [v13 removeItemAtPath:v6 error:0];
  }
}

- (PersistentStoreConfiguration)configuration
{
  v2 = [(PersistentStoreConfiguration *)self->_configuration copy];

  return v2;
}

- (NSURL)databaseFileURL
{
  result = [-[PersistentStore _baseFilePath](self "_baseFilePath")];
  if (result)
  {

    return [NSURL fileURLWithPath:result];
  }

  return result;
}

- (void)endThreadContextSession
{
  threadDictionary = [+[NSThread currentThread](NSThread threadDictionary];
  v4 = [-[NSMutableDictionary objectForKey:](threadDictionary objectForKey:{self->_threadCountKey), "integerValue"}];
  if (v4 >= 1)
  {
    if (v4 == 1)
    {
      [(NSMutableDictionary *)threadDictionary removeObjectForKey:self->_threadCountKey];
      threadContextKey = self->_threadContextKey;

      [(NSMutableDictionary *)threadDictionary removeObjectForKey:threadContextKey];
    }

    else
    {
      v6 = [[NSNumber alloc] initWithInteger:v4 - 1];
      [(NSMutableDictionary *)threadDictionary setObject:v6 forKey:self->_threadCountKey];
    }
  }
}

- (NSURL)modelFileURL
{
  result = [objc_msgSend(-[NSArray objectAtIndex:](-[NSProcessInfo arguments](+[NSProcessInfo processInfo](NSProcessInfo "processInfo")];
  if (result)
  {

    return [NSURL fileURLWithPath:result];
  }

  return result;
}

- (BOOL)performLightweightMigration:(id *)migration
{
  v38 = 0;
  managedObjectModel = [(PersistentStore *)self managedObjectModel];
  _newLegacyManagedObjectModel = [(PersistentStore *)self _newLegacyManagedObjectModel];
  if (!_newLegacyManagedObjectModel)
  {
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = shouldLog | 2;
    }

    else
    {
      v23 = shouldLog;
    }

    if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v39 = 138412290;
      v40 = objc_opt_class();
      LODWORD(v35) = 12;
LABEL_33:
      v20 = _os_log_send_and_compose_impl();
      if (!v20)
      {
        goto LABEL_55;
      }

      [NSString stringWithCString:v20 encoding:4, &v39, v35];
      free(v20);
      SSFileLog();
    }

LABEL_35:
    LOBYTE(v20) = 0;
    goto LABEL_55;
  }

  v7 = [NSMappingModel inferredMappingModelForSourceModel:_newLegacyManagedObjectModel destinationModel:managedObjectModel error:&v38];
  if (!v7)
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = shouldLog2 | 2;
    }

    else
    {
      v26 = shouldLog2;
    }

    if (!os_log_type_enabled([v24 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v26 &= 2u;
    }

    if (v26)
    {
      v27 = objc_opt_class();
      v39 = 138412546;
      v40 = v27;
      v41 = 2112;
      v42 = v38;
      LODWORD(v35) = 22;
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  v8 = v7;
  migrationCopy = migration;
  databaseFileURL = [(PersistentStore *)self databaseFileURL];
  v10 = [(NSURL *)databaseFileURL URLByAppendingPathExtension:@"migrated"];
  v11 = objc_alloc_init(NSFileManager);
  [v11 removeItemAtURL:v10 error:0];
  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    shouldLog3 |= 2u;
  }

  if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_INFO))
  {
    shouldLog3 &= 2u;
  }

  if (shouldLog3)
  {
    v14 = objc_opt_class();
    v39 = 138412546;
    v40 = v14;
    v41 = 2112;
    v42 = databaseFileURL;
    LODWORD(v35) = 22;
    v34 = &v39;
    v15 = _os_log_send_and_compose_impl();
    if (v15)
    {
      v16 = v15;
      v17 = [NSString stringWithCString:v15 encoding:4, &v39, v35];
      free(v16);
      v34 = v17;
      SSFileLog();
    }
  }

  registeredStoreTypes = [objc_alloc(objc_msgSend(objc_msgSend(-[NSDictionary objectForKey:](+[NSPersistentStoreCoordinator registeredStoreTypes](NSPersistentStoreCoordinator registeredStoreTypes];
  if (([registeredStoreTypes migrateStoreFromURL:databaseFileURL type:NSSQLiteStoreType options:0 withMappingModel:v8 toDestinationURL:v10 destinationType:NSSQLiteStoreType destinationOptions:0 error:&v38] & 1) == 0)
  {
    v28 = +[SSLogConfig sharedDaemonConfig];
    v19 = v11;
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      shouldLog4 |= 2u;
    }

    if (!os_log_type_enabled([v28 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      shouldLog4 &= 2u;
    }

    migration = migrationCopy;
    if (!shouldLog4)
    {
      goto LABEL_53;
    }

LABEL_51:
    v32 = objc_opt_class();
    v39 = 138412546;
    v40 = v32;
    v41 = 2112;
    v42 = v38;
    LODWORD(v36) = 22;
    v20 = _os_log_send_and_compose_impl();
    if (!v20)
    {
      goto LABEL_54;
    }

    [NSString stringWithCString:v20 encoding:4, &v39, v36];
    free(v20);
    SSFileLog();
LABEL_53:
    LOBYTE(v20) = 0;
    goto LABEL_54;
  }

  v19 = v11;
  [v11 removeItemAtURL:databaseFileURL error:0];
  if (([v11 moveItemAtURL:v10 toURL:databaseFileURL error:&v38] & 1) == 0)
  {
    v30 = +[SSLogConfig sharedDaemonConfig];
    if (!v30)
    {
      v30 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v30 shouldLog];
    if ([v30 shouldLogToDisk])
    {
      shouldLog5 |= 2u;
    }

    if (!os_log_type_enabled([v30 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      shouldLog5 &= 2u;
    }

    migration = migrationCopy;
    if (!shouldLog5)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  LOBYTE(v20) = 1;
  migration = migrationCopy;
LABEL_54:

LABEL_55:
  if (migration)
  {
    *migration = v38;
  }

  return v20;
}

- (BOOL)resetStore:(id *)store
{
  v26 = 0;
  databaseFileURL = [(PersistentStore *)self databaseFileURL];
  v6 = databaseFileURL;
  if (self->_storeCoordinator)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v27 = 138412546;
      v28 = objc_opt_class();
      v29 = 2112;
      p_isa = &v6->super.isa;
      LODWORD(v25) = 22;
      v24 = &v27;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4, &v27, v25];
        free(v11);
        v24 = v12;
        SSFileLog();
      }
    }

    v13 = [(NSPersistentStoreCoordinator *)self->_storeCoordinator destroyPersistentStoreAtURL:v6 withType:NSSQLiteStoreType options:0 error:&v26, v24];
    if (store)
    {
LABEL_13:
      *store = v26;
    }
  }

  else
  {
    path = [(NSURL *)databaseFileURL path];
    v16 = objc_alloc_init(NSFileManager);
    v17 = [(NSString *)path stringByAppendingPathExtension:@"bad"];
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = shouldLog2 | 2;
    }

    else
    {
      v20 = shouldLog2;
    }

    if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v27 = 138412802;
      v28 = objc_opt_class();
      v29 = 2112;
      p_isa = path;
      v31 = 2112;
      v32 = v17;
      LODWORD(v25) = 32;
      v24 = &v27;
      v21 = _os_log_send_and_compose_impl();
      if (v21)
      {
        v22 = v21;
        v23 = [NSString stringWithCString:v21 encoding:4, &v27, v25];
        free(v22);
        v24 = v23;
        SSFileLog();
      }
    }

    [v16 removeItemAtPath:v17 error:{0, v24}];
    v13 = [v16 moveItemAtPath:path toPath:v17 error:&v26];

    if (store)
    {
      goto LABEL_13;
    }
  }

  return v13;
}

- (BOOL)loadStoreCoordinatorWithOptions:(id)options error:(id *)error
{
  v46 = 0;
  managedObjectModel = [(PersistentStore *)self managedObjectModel];
  if (!managedObjectModel)
  {
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = shouldLog | 2;
    }

    else
    {
      v22 = shouldLog;
    }

    if (!os_log_type_enabled([v20 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v22 &= 2u;
    }

    if (!v22)
    {
      goto LABEL_41;
    }

    v49 = 138412290;
    v50 = objc_opt_class();
    LODWORD(v44) = 12;
    v23 = _os_log_send_and_compose_impl();
    if (!v23)
    {
      goto LABEL_41;
    }

    v24 = v23;
    [NSString stringWithCString:v23 encoding:4, &v49, v44];
    free(v24);
LABEL_40:
    SSFileLog();
LABEL_41:
    if (error)
    {
      *error = v46;
    }

    return self->_storeCoordinator != 0;
  }

  v8 = managedObjectModel;
  databaseFileURL = [(PersistentStore *)self databaseFileURL];
  v10 = [NSFileManager ensureDirectoryExists:[(NSString *)[(NSURL *)databaseFileURL path] stringByDeletingLastPathComponent]];
  v11 = +[SSLogConfig sharedDaemonConfig];
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    if (!v11)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v26 = shouldLog2 | 2;
    }

    else
    {
      v26 = shouldLog2;
    }

    if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v26 &= 2u;
    }

    if (!v26)
    {
      goto LABEL_41;
    }

    v49 = 138412546;
    v50 = objc_opt_class();
    v51 = 2112;
    v52 = databaseFileURL;
    LODWORD(v44) = 22;
    v27 = _os_log_send_and_compose_impl();
    if (!v27)
    {
      goto LABEL_41;
    }

    v28 = v27;
    [NSString stringWithCString:v27 encoding:4, &v49, v44];
    free(v28);
    goto LABEL_40;
  }

  if (!v11)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = shouldLog3 | 2;
  }

  else
  {
    v14 = shouldLog3;
  }

  if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v14 &= 2u;
  }

  if (v14)
  {
    v49 = 138412546;
    v50 = objc_opt_class();
    v51 = 2112;
    v52 = databaseFileURL;
    LODWORD(v44) = 22;
    v15 = _os_log_send_and_compose_impl();
    if (v15)
    {
      v16 = v15;
      [NSString stringWithCString:v15 encoding:4, &v49, v44];
      free(v16);
      SSFileLog();
    }
  }

  v17 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v8];
  v18 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{NSFileProtectionCompleteUntilFirstUserAuthentication, NSPersistentStoreFileProtectionKey, 0}];
  v19 = v18;
  if (options)
  {
    [v18 addEntriesFromDictionary:options];
  }

  if (([objc_msgSend(v19 objectForKeyedSubscript:{NSPersistentStoreFileProtectionKey), "isEqualToString:", NSFileProtectionNone}] & 1) != 0 || MKBDeviceUnlockedSinceBoot())
  {
    if ([v17 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:databaseFileURL options:v19 error:&v46])
    {
      goto LABEL_18;
    }

    if (!ISErrorIsEqual())
    {
      goto LABEL_57;
    }

    v30 = +[SSLogConfig sharedDaemonConfig];
    if (!v30)
    {
      v30 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v30 shouldLog];
    if ([v30 shouldLogToDisk])
    {
      v32 = shouldLog4 | 2;
    }

    else
    {
      v32 = shouldLog4;
    }

    if (!os_log_type_enabled([v30 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v32 &= 2u;
    }

    if (v32)
    {
      v33 = objc_opt_class();
      v49 = 138412290;
      v50 = v33;
      LODWORD(v45) = 12;
      v43 = &v49;
      v34 = _os_log_send_and_compose_impl();
      if (v34)
      {
        v35 = v34;
        v36 = [NSString stringWithCString:v34 encoding:4, &v49, v45];
        free(v35);
        v43 = v36;
        SSFileLog();
      }
    }

    if (-[PersistentStore performLightweightMigration:](self, "performLightweightMigration:", &v46, v43) && [v17 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:databaseFileURL options:0 error:&v46])
    {
LABEL_18:

      self->_storeCoordinator = v17;
    }

    else
    {
LABEL_57:
      v37 = +[SSLogConfig sharedDaemonConfig];
      if (!v37)
      {
        v37 = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [v37 shouldLog];
      if ([v37 shouldLogToDisk])
      {
        v39 = shouldLog5 | 2;
      }

      else
      {
        v39 = shouldLog5;
      }

      if (!os_log_type_enabled([v37 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v39 &= 2u;
      }

      if (v39)
      {
        v40 = objc_opt_class();
        v49 = 138412546;
        v50 = v40;
        v51 = 2112;
        v52 = v46;
        LODWORD(v45) = 22;
        v41 = _os_log_send_and_compose_impl();
        if (v41)
        {
          v42 = v41;
          [NSString stringWithCString:v41 encoding:4, &v49, v45];
          free(v42);
          SSFileLog();
        }
      }
    }

    goto LABEL_41;
  }

  if (error)
  {
    v47 = NSSQLiteErrorDomain;
    v48 = &off_10034BE98;
    *error = [NSError errorWithDomain:NSCocoaErrorDomain code:256 userInfo:[NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1]];
  }

  return 0;
}

- (id)managedObjectModel
{
  if (!self->_model)
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v20 = 138412546;
      v21 = objc_opt_class();
      v22 = 2112;
      modelFileURL = [(PersistentStore *)self modelFileURL];
      LODWORD(v19) = 22;
      v18 = &v20;
      v6 = _os_log_send_and_compose_impl();
      if (v6)
      {
        v7 = v6;
        v8 = [NSString stringWithCString:v6 encoding:4, &v20, v19];
        free(v7);
        v18 = v8;
        SSFileLog();
      }
    }

    v9 = [[NSManagedObjectModel alloc] initWithContentsOfURL:{-[PersistentStore modelFileURL](self, "modelFileURL")}];
    self->_model = v9;
    if (!v9)
    {
      v11 = +[SSLogConfig sharedDaemonConfig];
      if (!v11)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v13 = shouldLog2 | 2;
      }

      else
      {
        v13 = shouldLog2;
      }

      if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v14 = objc_opt_class();
        modelFileURL2 = [(PersistentStore *)self modelFileURL];
        v20 = 138412546;
        v21 = v14;
        v22 = 2112;
        modelFileURL = modelFileURL2;
        LODWORD(v19) = 22;
        v16 = _os_log_send_and_compose_impl();
        if (v16)
        {
          v17 = v16;
          [NSString stringWithCString:v16 encoding:4, &v20, v19];
          free(v17);
          SSFileLog();
        }
      }
    }
  }

  return self->_model;
}

- (id)_baseFilePath
{
  v2 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];

  return [v2 stringByAppendingPathComponent:@"com.apple.itunesstored"];
}

- (BOOL)_loadStoreCoordinatorWithIntegrityCheck:(BOOL)check error:(id *)error
{
  v6 = 0;
  v10 = 0;
  if (check)
  {
    v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNull null](NSNull, "null"), @"integrity_check", 0}];
    v6 = [[NSDictionary alloc] initWithObjectsAndKeys:{v7, NSSQLitePragmasOption, 0}];
  }

  if ([(PersistentStore *)self loadStoreCoordinatorWithOptions:v6 error:&v10])
  {
    v8 = 1;
  }

  else if (ISErrorIsEqual() && [objc_msgSend(objc_msgSend(v10 "userInfo")] == 23)
  {
    v8 = 0;
  }

  else
  {
    [(PersistentStore *)self resetStore:0];
    v8 = [(PersistentStore *)self loadStoreCoordinatorWithOptions:v6 error:&v10];
  }

  if (error)
  {
    *error = v10;
  }

  return v8;
}

- (id)_newLegacyManagedObjectModel
{
  v3 = [(NSDictionary *)[NSPersistentStoreCoordinator metadataForPersistentStoreOfType:[(PersistentStore *)self databaseFileURL] URL:0 options:0 error:?], "objectForKey:", @"NSStoreModelVersionHashes"];
  if (v3)
  {
    v4 = v3;
    legacyModelVersionIdentifiers = [(PersistentStoreConfiguration *)self->_configuration legacyModelVersionIdentifiers];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(NSArray *)legacyModelVersionIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(legacyModelVersionIdentifiers);
          }

          v10 = [[NSManagedObjectModel alloc] initWithContentsOfURL:{-[NSURL URLByAppendingPathExtension:](-[NSURL URLByAppendingPathComponent:](-[PersistentStore modelFileURL](self, "modelFileURL"), "URLByAppendingPathComponent:", *(*(&v13 + 1) + 8 * v9)), "URLByAppendingPathExtension:", @"mom"}];
          if ([objc_msgSend(v10 "entityVersionHashesByName")])
          {
            v11 = v10;

            if (v11)
            {
              return v11;
            }
          }

          else
          {
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSArray *)legacyModelVersionIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return 0;
}

@end