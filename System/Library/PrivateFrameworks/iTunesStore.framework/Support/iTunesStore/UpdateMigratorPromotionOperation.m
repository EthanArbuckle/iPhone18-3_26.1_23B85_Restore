@interface UpdateMigratorPromotionOperation
- (UpdateMigratorPromotionOperation)initWithBundleIdentifiers:(id)a3 options:(id)a4;
- (void)performMigration;
@end

@implementation UpdateMigratorPromotionOperation

- (UpdateMigratorPromotionOperation)initWithBundleIdentifiers:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UpdateMigratorPromotionOperation;
  v8 = [(UpdateMigratorPromotionOperation *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    bundleIDs = v8->_bundleIDs;
    v8->_bundleIDs = v9;

    v11 = [v7 copy];
    options = v8->_options;
    v8->_options = v11;
  }

  return v8;
}

- (void)performMigration
{
  bundleIDs = self->_bundleIDs;
  if (bundleIDs && [(NSArray *)bundleIDs count])
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (!v6)
    {
      goto LABEL_23;
    }

    v8 = objc_opt_class();
    v9 = self->_bundleIDs;
    v10 = v8;
    [(NSArray *)v9 componentsJoinedByString:@", "];
    v21 = 138412546;
    v22 = v8;
    v24 = v23 = 2112;
    LODWORD(v18) = 22;
    v11 = _os_log_send_and_compose_impl();
  }

  else
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v12 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 &= 2u;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v21 = 138412290;
    v22 = objc_opt_class();
    v14 = v22;
    LODWORD(v18) = 12;
    v11 = _os_log_send_and_compose_impl();
  }

  if (v11)
  {
    v7 = [NSString stringWithCString:v11 encoding:4, &v21, v18];
    free(v11);
    SSFileLog();
LABEL_23:
  }

  v15 = +[NetworkRequestQueue sharedNetworkRequestQueue];
  v16 = [[RestoreDemotedApplicationsOperation alloc] initWithBundleIdentifiers:self->_bundleIDs options:self->_options];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013027C;
  v19[3] = &unk_100327110;
  v20 = dispatch_semaphore_create(0);
  v17 = v20;
  [(RestoreDemotedApplicationsOperation *)v16 setCompletionBlock:v19];
  [v15 addOperation:v16];
  dispatch_semaphore_wait(v17, 0x6FC23AC00uLL);
}

@end