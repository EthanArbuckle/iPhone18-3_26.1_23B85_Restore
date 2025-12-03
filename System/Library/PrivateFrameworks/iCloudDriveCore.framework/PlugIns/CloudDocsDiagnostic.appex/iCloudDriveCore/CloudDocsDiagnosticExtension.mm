@interface CloudDocsDiagnosticExtension
- (BOOL)_backupDatabaseWithSession:(id)session toOutputPath:(id)path;
- (BOOL)_dumpDatabaseToOutputPath:(id)path;
- (BOOL)_dumpSystemLogsToOutputPath:(id)path;
- (BOOL)_getConfigureLogsParam:(id)param configureLogs:(BOOL *)logs;
- (double)_logCollectionInterval;
- (id)_displayStringForLogType:(unint64_t)type;
- (id)attachmentsForParameters:(id)parameters;
- (id)computeHomeDirPathForAccount:(id)account;
- (void)_enableLogSensitiveData:(BOOL)data;
@end

@implementation CloudDocsDiagnosticExtension

- (BOOL)_getConfigureLogsParam:(id)param configureLogs:(BOOL *)logs
{
  v4 = 0;
  if (param && logs)
  {
    v6 = [param objectForKey:@"configure_logs"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *logs = [v6 BOOLValue];
      v4 = 1;
    }

    else
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10000361C();
      }

      v4 = 0;
    }
  }

  return v4;
}

- (void)_enableLogSensitiveData:(BOOL)data
{
  dataCopy = data;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100003688(dataCopy, v4, v5);
  }

  if (dataCopy)
  {
    v6 = &off_100008688;
  }

  else
  {
    v6 = 0;
  }

  CFPreferencesSetValue(@"com.apple.fileprovider.log-sensitive-data", v6, kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

- (id)computeHomeDirPathForAccount:(id)account
{
  accountCopy = account;
  v4 = +[NSProcessInfo processInfo];
  environment = [v4 environment];

  if (geteuid() || ([accountCopy isDataSeparated] & 1) != 0)
  {
    v6 = +[BRSpecialFolders homeDirForCurrentPersona];
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = [environment objectForKeyedSubscript:@"HOME"];
  v6 = NSHomeDirectoryForUser(@"mobile");

  if (!v6)
  {
LABEL_4:
    accountIdentifier = [accountCopy accountIdentifier];
    printf("couldn't get home path for account %s\n", [accountIdentifier UTF8String]);
  }

LABEL_5:

  return v6;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100001D04;
  v29 = sub_100001D14;
  v30 = +[NSMutableArray array];
  v17 = NSTemporaryDirectory();
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100003718();
  }

  v24 = 0;
  v5 = [(CloudDocsDiagnosticExtension *)self _getConfigureLogsParam:parametersCopy configureLogs:&v24];
  if (v5 && v24 == 1)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100003784(v6, v7);
    }

    [(CloudDocsDiagnosticExtension *)self _enableLogSensitiveData:1];
    v8 = v26[5];
  }

  else
  {
    +[BRAccountDescriptor allLoggedInAccountDescriptors];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    obj = v21 = 0u;
    v9 = [obj countByEnumeratingWithState:&v20 objects:v31 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v19 = v17;
          BRPerformWithAccountDescriptorAndError();

          objc_autoreleasePoolPop(v13);
        }

        v9 = [obj countByEnumeratingWithState:&v20 objects:v31 count:16];
      }

      while (v9);
    }

    if (v5)
    {
      [(CloudDocsDiagnosticExtension *)self _enableLogSensitiveData:0];
    }

    v8 = v26[5];
  }

  _Block_object_dispose(&v25, 8);

  return v8;
}

- (BOOL)_backupDatabaseWithSession:(id)session toOutputPath:(id)path
{
  sessionCopy = session;
  v6 = [NSURL fileURLWithPath:path];
  v11 = 0;
  v7 = [sessionCopy backupDatabaseToURL:v6 error:&v11];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
    v9 = [v8 description];
    syslog(3, "unable to backup databases; %s", [v9 UTF8String]);
  }

  return v7;
}

- (BOOL)_dumpDatabaseToOutputPath:(id)path
{
  pathCopy = path;
  v4 = open([pathCopy fileSystemRepresentation], 525, 420);
  if ((v4 & 0x80000000) != 0)
  {
    fileSystemRepresentation = [pathCopy fileSystemRepresentation];
    v6 = __error();
    v7 = strerror(*v6);
    syslog(3, "unable open file at path %s; %s", fileSystemRepresentation, v7);
  }

  v8 = [[NSFileHandle alloc] initWithFileDescriptor:v4 closeOnDealloc:1];
  v9 = dispatch_group_create();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  dispatch_group_enter(v9);
  v10 = v9;
  BRDumpDatabaseToFileHandle();
  v11 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(v10, v11))
  {
    syslog(3, "unable to dump database; timeout");
  }

  v12 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v12;
}

- (id)_displayStringForLogType:(unint64_t)type
{
  if (type <= 1)
  {
    if (!type)
    {
      return @"Default";
    }

    if (type == 1)
    {
      return @"Info";
    }
  }

  else
  {
    switch(type)
    {
      case 2uLL:
        return @"Debug";
      case 0x10uLL:
        return @"Error";
      case 0x11uLL:
        return @"Fault";
    }
  }

  return @"Unknown";
}

- (double)_logCollectionInterval
{
  v2 = +[BRRuntimeBehavior isInternalBuild];
  result = 1800.0;
  if (v2)
  {
    return 172800.0;
  }

  return result;
}

- (BOOL)_dumpSystemLogsToOutputPath:(id)path
{
  pathCopy = path;
  v60 = +[OSLogEventStore localStore];
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_100001D04;
  v80 = sub_100001D14;
  v81 = 0;
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_1000031BC;
  v75[3] = &unk_100008328;
  v75[4] = &v76;
  [v60 prepareWithCompletionHandler:v75];
  if (v77[5])
  {
    v4 = COERCE_DOUBLE(pathCopy);
    v5 = objc_alloc_init(NSData);
    v74 = 0;
    v6 = [v5 writeToFile:*&v4 options:1 error:&v74];
    v56 = v74;

    if (v6)
    {
      v7 = [NSFileHandle fileHandleForWritingAtPath:*&v4];
      v57 = v7;
      if (v7)
      {
        v73 = 0;
        v58 = [v7 truncateAtOffset:0 error:&v73];
        v55 = v73;
        if (v58)
        {
          v8 = brc_bread_crumbs();
          v9 = brc_default_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v83 = v4;
            v84 = 2112;
            v85 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] Writing to file: %@%@", buf, 0x16u);
          }

          v10 = dispatch_group_create();
          [v77[5] setFlags:403];
          v11 = +[NSMutableArray array];
          v53 = v10;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v12 = [&off_1000086B0 countByEnumeratingWithState:&v69 objects:v90 count:16];
          if (v12)
          {
            v13 = *v70;
            do
            {
              for (i = 0; i != v12; i = i + 1)
              {
                if (*v70 != v13)
                {
                  objc_enumerationMutation(&off_1000086B0);
                }

                v15 = [NSPredicate predicateWithFormat:@"subsystem == %@", *(*(&v69 + 1) + 8 * i)];
                [v11 addObject:v15];
              }

              v12 = [&off_1000086B0 countByEnumeratingWithState:&v69 objects:v90 count:16];
            }

            while (v12);
          }

          if ([v11 count])
          {
            v16 = [NSCompoundPredicate orPredicateWithSubpredicates:v11];
            [v77[5] setFilterPredicate:v16];
          }

          v17 = objc_opt_new();
          [v17 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS Z"];
          v18 = v77[5];
          v64[0] = _NSConcreteStackBlock;
          v64[1] = 3221225472;
          v64[2] = sub_100003284;
          v64[3] = &unk_100008350;
          v19 = v17;
          v65 = v19;
          selfCopy = self;
          v20 = v57;
          v67 = v20;
          v52 = *&v4;
          v68 = v52;
          [v18 setEventHandler:v64];
          v21 = v77[5];
          v62[0] = _NSConcreteStackBlock;
          v62[1] = 3221225472;
          v62[2] = sub_100003538;
          v62[3] = &unk_100008378;
          v22 = v53;
          v63 = v22;
          [v21 setInvalidationHandler:v62];
          [(CloudDocsDiagnosticExtension *)self _logCollectionInterval];
          v24 = v23;
          v25 = [NSDate dateWithTimeIntervalSinceReferenceDate:CFAbsoluteTimeGetCurrent()];
          v26 = [v25 dateByAddingTimeInterval:0.0 - v24];

          dispatch_group_enter(v22);
          v27 = brc_bread_crumbs();
          v28 = brc_default_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            v83 = v24 / 60.0;
            v84 = 2112;
            v85 = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[INFO] Getting clouddocs oslog for past %f mins%@", buf, 0x16u);
          }

          v29 = v77[5];
          v30 = [NSDate dateWithTimeIntervalSinceReferenceDate:CFAbsoluteTimeGetCurrent()];
          [v29 activateStreamFromDate:v26 toDate:v30];

          v31 = dispatch_time(0, 180000000000);
          if (dispatch_group_wait(v22, v31))
          {
            [v77[5] invalidate];
            v32 = brc_bread_crumbs();
            v33 = brc_default_log();
            if (os_log_type_enabled(v33, 0x90u))
            {
              sub_1000038D0(v32, v33);
            }

            v34 = [@"\nERROR: Log Collection could not complete timed out."];
            v61 = 0;
            v35 = [v20 writeData:v34 error:&v61];
            v36 = v61;

            if ((v35 & 1) == 0)
            {
              v37 = brc_bread_crumbs();
              v38 = brc_default_log();
              if (os_log_type_enabled(v38, 0x90u))
              {
                v51 = v37;
                fp_prettyPath = [v52 fp_prettyPath];
                fp_prettyDescription = [v36 fp_prettyDescription];
                *buf = 138413058;
                v83 = COERCE_DOUBLE(@"\nERROR: Log Collection could not complete, timed out.");
                v84 = 2112;
                v85 = fp_prettyPath;
                v86 = 2112;
                v87 = fp_prettyDescription;
                v88 = 2112;
                v89 = v51;
                _os_log_error_impl(&_mh_execute_header, v38, 0x90u, "[ERROR] Failed writing log line '%@' to file %@: %@%@", buf, 0x2Au);

                v37 = v51;
              }
            }
          }

          [v20 closeFile];
        }

        else
        {
          v45 = brc_bread_crumbs();
          v46 = brc_default_log();
          if (os_log_type_enabled(v46, 0x90u))
          {
            fp_prettyDescription2 = [v55 fp_prettyDescription];
            *buf = 138412802;
            v83 = v4;
            v84 = 2112;
            v85 = fp_prettyDescription2;
            v86 = 2112;
            v87 = v45;
            _os_log_error_impl(&_mh_execute_header, v46, 0x90u, "[ERROR] Failed to truncate file: %@ : %@%@", buf, 0x20u);
          }

          [v57 closeFile];
          v47 = *&v4;
          unlink([*&v4 UTF8String]);
        }

        goto LABEL_42;
      }

      v42 = brc_bread_crumbs();
      v43 = brc_default_log();
      if (os_log_type_enabled(v43, 0x90u))
      {
        sub_100003948();
      }

      v44 = *&v4;
      unlink([*&v4 UTF8String]);
    }

    else
    {
      v57 = brc_bread_crumbs();
      v40 = brc_default_log();
      if (os_log_type_enabled(v40, 0x90u))
      {
        fp_prettyDescription3 = [v56 fp_prettyDescription];
        sub_100003868(fp_prettyDescription3, v57, buf, v40);
      }
    }

    v58 = 0;
LABEL_42:

    v39 = v56;
    goto LABEL_43;
  }

  brc_bread_crumbs();
  v4 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v39 = brc_default_log();
  if (os_log_type_enabled(v39, 0x90u))
  {
    sub_1000039B4(*&v4, v39);
  }

  v58 = 0;
LABEL_43:

  _Block_object_dispose(&v76, 8);
  return v58;
}

@end