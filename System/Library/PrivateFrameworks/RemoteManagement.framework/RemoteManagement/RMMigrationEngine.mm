@interface RMMigrationEngine
- (BOOL)_migrateWithActions:(id)actions error:(id *)error;
- (BOOL)_writeProcessedActions:(id)actions error:(id *)error;
- (BOOL)migrateOnStartupReturningError:(id *)error;
- (BOOL)migrateWithCoreDataReturningError:(id *)error;
- (id)_coreDataActions;
- (id)_fixFilePermissionsAndReadDataForURL:(id)l;
- (id)_readMigrationStateReturningError:(id *)error;
- (id)_readProcessedActionsReturningError:(id *)error;
- (id)_startupActions;
@end

@implementation RMMigrationEngine

- (BOOL)migrateOnStartupReturningError:(id *)error
{
  v5 = +[RMLog migrationEngine];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting to migrate on startup", v9, 2u);
  }

  _startupActions = [(RMMigrationEngine *)self _startupActions];
  v7 = [(RMMigrationEngine *)self _migrateWithActions:_startupActions error:error];

  return v7;
}

- (BOOL)migrateWithCoreDataReturningError:(id *)error
{
  v5 = +[RMLog migrationEngine];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting to migrate with CoreData", v9, 2u);
  }

  _coreDataActions = [(RMMigrationEngine *)self _coreDataActions];
  v7 = [(RMMigrationEngine *)self _migrateWithActions:_coreDataActions error:error];

  return v7;
}

- (BOOL)_migrateWithActions:(id)actions error:(id *)error
{
  actionsCopy = actions;
  v58 = 0;
  selfCopy = self;
  v7 = [(RMMigrationEngine *)self _readProcessedActionsReturningError:&v58];
  v8 = v58;
  v9 = v8;
  if (v7)
  {
    errorCopy = error;
    v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v7 count]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v43 = v7;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v55;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v55 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v54 + 1) + 8 * i) objectForKeyedSubscript:@"Identifier"];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v13);
    }

    v17 = &DeviceIdentityIssueClientCertificateWithCompletion_ptr;
    v18 = +[RMLog migrationEngine];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100053A74(v10);
    }

    v19 = +[RMLog migrationEngine];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100053AF8(actionsCopy);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v44 = actionsCopy;
    v20 = actionsCopy;
    v21 = [v20 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v21)
    {
      v22 = v21;
      v47 = *v51;
      obj = v20;
      while (2)
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v51 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v50 + 1) + 8 * j);
          identifier = [v24 identifier];
          v26 = [v10 containsObject:identifier];
          v27 = v17;
          migrationEngine = [v17[235] migrationEngine];
          v29 = migrationEngine;
          if (v26)
          {
            if (os_log_type_enabled(migrationEngine, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v62 = identifier;
              _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Already processed migration action: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(migrationEngine, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v62 = identifier;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Processing migration action: %{public}@", buf, 0xCu);
            }

            v49 = v9;
            v30 = [v24 executeReturningError:&v49];
            v31 = v49;

            migrationEngine2 = [v27[235] migrationEngine];
            v33 = migrationEngine2;
            if ((v30 & 1) == 0)
            {
              if (os_log_type_enabled(migrationEngine2, OS_LOG_TYPE_ERROR))
              {
                sub_100053B84();
              }

              v7 = v43;
              actionsCopy = v44;
              v39 = errorCopy;
              if (!errorCopy || !v31)
              {
                goto LABEL_44;
              }

LABEL_43:
              v40 = v31;
              *v39 = v31;
LABEL_44:

              v37 = 0;
              v9 = v31;
              migrationEngine3 = obj;
              goto LABEL_45;
            }

            if (os_log_type_enabled(migrationEngine2, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v62 = identifier;
              _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Processed migration action: %{public}@", buf, 0xCu);
            }

            v59[0] = @"Identifier";
            v59[1] = @"Timestamp";
            v60[0] = identifier;
            v34 = +[NSDate now];
            v60[1] = v34;
            v35 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2];
            [v11 addObject:v35];

            v48 = v31;
            LOBYTE(v34) = [(RMMigrationEngine *)selfCopy _writeProcessedActions:v11 error:&v48];
            v9 = v48;

            if ((v34 & 1) == 0)
            {
              v39 = errorCopy;
              if (errorCopy)
              {
                v31 = v9;
                v7 = v43;
                actionsCopy = v44;
                if (v9)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                v31 = v9;
                v7 = v43;
                actionsCopy = v44;
              }

              goto LABEL_44;
            }
          }

          v17 = v27;
        }

        v20 = obj;
        v22 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    migrationEngine3 = [v17[235] migrationEngine];
    v37 = 1;
    if (os_log_type_enabled(migrationEngine3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, migrationEngine3, OS_LOG_TYPE_INFO, "Finished migrating", buf, 2u);
    }

    v7 = v43;
    actionsCopy = v44;
LABEL_45:
  }

  else
  {
    v37 = 0;
    if (error && v8)
    {
      v38 = v8;
      v37 = 0;
      *error = v9;
    }
  }

  return v37;
}

- (id)_startupActions
{
  v2 = objc_opt_new();
  v8[0] = v2;
  v3 = objc_opt_new();
  v8[1] = v3;
  v4 = objc_opt_new();
  v8[2] = v4;
  v5 = objc_opt_new();
  v8[3] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:4];

  return v6;
}

- (id)_coreDataActions
{
  v2 = objc_opt_new();
  v6[0] = v2;
  v3 = objc_opt_new();
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (id)_readProcessedActionsReturningError:(id *)error
{
  v14 = 0;
  v4 = [(RMMigrationEngine *)self _readMigrationStateReturningError:&v14];
  v5 = v14;
  v6 = v5;
  if (v4)
  {
    v7 = [v4 objectForKeyedSubscript:@"ProcessedActions"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = +[RMLog migrationEngine];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100053C08();
        }

        if (error)
        {
          v12 = +[RMErrorUtilities createInternalError];
          if (v12)
          {
            v12 = v12;
            *error = v12;
          }
        }

        v9 = 0;
        goto LABEL_17;
      }

      v8 = [v7 mutableCopy];
    }

    else
    {
      v8 = objc_opt_new();
    }

    v9 = v8;
LABEL_17:

    goto LABEL_18;
  }

  v9 = 0;
  if (error && v5)
  {
    v10 = v5;
    v9 = 0;
    *error = v6;
  }

LABEL_18:

  return v9;
}

- (id)_readMigrationStateReturningError:(id *)error
{
  v5 = [RMLocations migrationStatusFileURLCreateIfNeeded:0];
  v6 = +[NSFileManager defaultManager];
  path = [v5 path];
  v8 = [v6 fileExistsAtPath:path isDirectory:0];

  if (v8)
  {
    v22 = 0;
    v9 = [NSData dataWithContentsOfURL:v5 options:0 error:&v22];
    v10 = v22;
    v11 = v10;
    if (v9)
    {
LABEL_3:
      v21 = 0;
      v12 = [NSPropertyListSerialization propertyListWithData:v9 options:0 format:0 error:&v21];
      v13 = v21;

      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v16 = +[RMLog migrationEngine];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100053CB4();
        }

        if (error && v13)
        {
          v17 = v13;
          *error = v13;
        }
      }

      goto LABEL_23;
    }

    if ([v10 code]== 257)
    {
      v15 = [(RMMigrationEngine *)self _fixFilePermissionsAndReadDataForURL:v5];
      if (v15)
      {
        v9 = v15;
        goto LABEL_3;
      }
    }

    v18 = +[RMLog migrationEngine];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100053D1C();
    }

    v12 = 0;
    if (error && v11)
    {
      v19 = v11;
      v12 = 0;
      *error = v11;
    }

    v13 = v11;
  }

  else
  {
    v13 = +[RMLog migrationEngine];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100053C70(v13);
    }

    v12 = &__NSDictionary0__struct;
  }

LABEL_23:

  return v12;
}

- (BOOL)_writeProcessedActions:(id)actions error:(id *)error
{
  actionsCopy = actions;
  v20 = 0;
  v7 = [(RMMigrationEngine *)self _readMigrationStateReturningError:&v20];
  v8 = v20;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 mutableCopy];
    [v10 setObject:actionsCopy forKeyedSubscript:@"ProcessedActions"];
    v11 = [RMLocations migrationStatusFileURLCreateIfNeeded:1];
    v19 = v9;
    v12 = [v10 rm_atomicWriteToURL:v11 error:&v19];
    v13 = v19;

    v14 = +[RMLog migrationEngine];
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_100053DEC(v15);
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100053D84();
      }

      if (error && v13)
      {
        v17 = v13;
        *error = v13;
      }
    }
  }

  else
  {
    v12 = 0;
    if (error && v8)
    {
      v16 = v8;
      v12 = 0;
      *error = v9;
    }

    v13 = v9;
  }

  return v12;
}

- (id)_fixFilePermissionsAndReadDataForURL:(id)l
{
  lCopy = l;
  if ([RMLocations fixFilePermissionsForURL:lCopy])
  {
    v8 = 0;
    v4 = [NSData dataWithContentsOfURL:lCopy options:0 error:&v8];
    v5 = v8;
    if (!v4)
    {
      v6 = +[RMLog migrationEngine];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100053E30();
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end