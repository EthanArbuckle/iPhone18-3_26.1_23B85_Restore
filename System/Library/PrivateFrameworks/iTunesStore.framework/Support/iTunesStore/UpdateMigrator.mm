@interface UpdateMigrator
+ (id)sharedInstance;
- (BOOL)performMigration:(unint64_t)migration;
- (UpdateMigrator)init;
- (void)_loadBagAndPerformMigration;
- (void)_networkTypeChangedNotification:(id)notification;
- (void)_performMigration;
- (void)_queueMigration:(id)migration;
- (void)dealloc;
- (void)destroyInstance;
- (void)restoreDemotedBundleIdentifiers:(id)identifiers options:(id)options;
@end

@implementation UpdateMigrator

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012E860;
  block[3] = &unk_100327170;
  block[4] = self;
  if (qword_100383F08 != -1)
  {
    dispatch_once(&qword_100383F08, block);
  }

  v2 = qword_100383F00;

  return v2;
}

- (UpdateMigrator)init
{
  v6.receiver = self;
  v6.super_class = UpdateMigrator;
  v2 = [(UpdateMigrator *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.UpdateMigrator", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = ISNetworkTypeChangedNotification;
  v5 = +[ISNetworkObserver sharedInstance];
  [v3 removeObserver:self name:v4 object:v5];

  v6.receiver = self;
  v6.super_class = UpdateMigrator;
  [(UpdateMigrator *)&v6 dealloc];
}

- (void)destroyInstance
{
  v2 = qword_100383F00;
  qword_100383F00 = 0;

  v3 = qword_100383F00;
  qword_100383F00 = 0;
}

- (BOOL)performMigration:(unint64_t)migration
{
  self->_updateType = migration;
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    LODWORD(v37) = 138412290;
    *(&v37 + 4) = objc_opt_class();
    v8 = *(&v37 + 4);
    LODWORD(v36) = 12;
    v35 = &v37;
    v9 = _os_log_send_and_compose_impl();

    if (!v9)
    {
      goto LABEL_12;
    }

    oSLogObject = [NSString stringWithCString:v9 encoding:4, &v37, v36, v37];
    free(v9);
    v35 = oSLogObject;
    SSFileLog();
  }

LABEL_12:
  updateType = self->_updateType;
  if ((updateType & 2) == 0)
  {
    if ((updateType & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

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

  oSLogObject2 = [v11 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v13 &= 2u;
  }

  if (v13)
  {
    v15 = objc_opt_class();
    LODWORD(v37) = 138412290;
    *(&v37 + 4) = v15;
    v16 = v15;
    LODWORD(v36) = 12;
    v35 = &v37;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_27;
    }

    oSLogObject2 = [NSString stringWithCString:v17 encoding:4, &v37, v36];
    free(v17);
    v35 = oSLogObject2;
    SSFileLog();
  }

LABEL_27:
  v18 = [[UpdateMigratorPromotionOperation alloc] initWithBundleIdentifiers:&__NSArray0__struct options:&__NSDictionary0__struct];
  [(UpdateMigrator *)self _queueMigration:v18];
  v19 = objc_alloc_init(UpdateMigratorAutoUpdateOperation);
  [(UpdateMigrator *)self _queueMigration:v19];

  updateType = self->_updateType;
  if ((updateType & 4) == 0)
  {
LABEL_14:
    if ((updateType & 8) == 0)
    {
      return 1;
    }

LABEL_40:
    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v29 = shouldLog3 | 2;
    }

    else
    {
      v29 = shouldLog3;
    }

    oSLogObject3 = [v27 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v31 = objc_opt_class();
      LODWORD(v37) = 138412290;
      *(&v37 + 4) = v31;
      v32 = v31;
      LODWORD(v36) = 12;
      v33 = _os_log_send_and_compose_impl();

      if (!v33)
      {
LABEL_51:

        return 1;
      }

      oSLogObject3 = [NSString stringWithCString:v33 encoding:4, &v37, v36];
      free(v33);
      SSFileLog();
    }

    goto LABEL_51;
  }

LABEL_28:
  v20 = +[SSLogConfig sharedDaemonConfig];
  if (!v20)
  {
    v20 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v22 = shouldLog4 | 2;
  }

  else
  {
    v22 = shouldLog4;
  }

  oSLogObject4 = [v20 OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
  {
    v22 &= 2u;
  }

  if (v22)
  {
    v24 = objc_opt_class();
    LODWORD(v37) = 138412290;
    *(&v37 + 4) = v24;
    v25 = v24;
    LODWORD(v36) = 12;
    v35 = &v37;
    v26 = _os_log_send_and_compose_impl();

    if (!v26)
    {
      goto LABEL_39;
    }

    oSLogObject4 = [NSString stringWithCString:v26 encoding:4, &v37, v36];
    free(v26);
    v35 = oSLogObject4;
    SSFileLog();
  }

LABEL_39:
  if ((self->_updateType & 8) != 0)
  {
    goto LABEL_40;
  }

  return 1;
}

- (void)restoreDemotedBundleIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = objc_opt_class();
  v13 = v12;
  [identifiersCopy componentsJoinedByString:{@", "}];
  v17 = 138412546;
  v18 = v12;
  v20 = v19 = 2112;
  LODWORD(v16) = 22;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject = [NSString stringWithCString:v14 encoding:4, &v17, v16];
    free(v14);
    SSFileLog();
LABEL_11:
  }

  v15 = [[UpdateMigratorPromotionOperation alloc] initWithBundleIdentifiers:identifiersCopy options:optionsCopy];
  [(UpdateMigrator *)self _queueMigration:v15];
}

- (void)_networkTypeChangedNotification:(id)notification
{
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    LODWORD(v16) = 138412290;
    *(&v16 + 4) = objc_opt_class();
    v8 = *(&v16 + 4);
    LODWORD(v15) = 12;
    v9 = _os_log_send_and_compose_impl();

    if (!v9)
    {
      goto LABEL_12;
    }

    oSLogObject = [NSString stringWithCString:v9 encoding:4, &v16, v15, v16];
    free(v9);
    SSFileLog();
  }

LABEL_12:
  v10 = +[ISNetworkObserver sharedInstance];
  networkType = [v10 networkType];

  if (networkType)
  {
    v12 = +[NSNotificationCenter defaultCenter];
    v13 = ISNetworkTypeChangedNotification;
    v14 = +[ISNetworkObserver sharedInstance];
    [v12 removeObserver:self name:v13 object:v14];

    [(UpdateMigrator *)self _loadBagAndPerformMigration];
  }
}

- (void)_loadBagAndPerformMigration
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

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v17 = 138412290;
    v18 = objc_opt_class();
    v7 = v18;
    LODWORD(v15) = 12;
    v8 = _os_log_send_and_compose_impl();

    if (!v8)
    {
      goto LABEL_12;
    }

    oSLogObject = [NSString stringWithCString:v8 encoding:4, &v17, v15];
    free(v8);
    SSFileLog();
  }

LABEL_12:
  v9 = [SSURLBagContext contextWithBagType:0];
  v10 = +[ISURLBagCache sharedCache];
  v11 = [v10 URLBagForContext:v9];

  if (v11)
  {
    [(UpdateMigrator *)self _performMigration];
  }

  else
  {
    v12 = [[ISLoadURLBagOperation alloc] initWithBagContext:v9];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10012F588;
    v16[3] = &unk_100327110;
    v16[4] = self;
    [v12 setCompletionBlock:v16];
    loadURLBagOperation = self->_loadURLBagOperation;
    self->_loadURLBagOperation = v12;
    v14 = v12;

    [(ISLoadURLBagOperation *)self->_loadURLBagOperation start];
  }
}

- (void)_performMigration
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012F7E4;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_queueMigration:(id)migration
{
  migrationCopy = migration;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012F988;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = migrationCopy;
  v6 = migrationCopy;
  dispatch_async(dispatchQueue, v7);
}

@end