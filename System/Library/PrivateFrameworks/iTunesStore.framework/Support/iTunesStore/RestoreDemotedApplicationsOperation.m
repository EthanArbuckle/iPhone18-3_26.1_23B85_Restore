@interface RestoreDemotedApplicationsOperation
- (RestoreDemotedApplicationsOperation)initWithBundleIdentifiers:(id)a3 options:(id)a4;
- (id)_accountIdForAppleID:(id)a3;
- (id)_appleIDForApp:(id)a3;
- (void)_notifyCompletion;
- (void)restoreDownloadItemsOperation:(id)a3 didReceiveResponse:(id)a4;
- (void)run;
@end

@implementation RestoreDemotedApplicationsOperation

- (RestoreDemotedApplicationsOperation)initWithBundleIdentifiers:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RestoreDemotedApplicationsOperation;
  v8 = [(RestoreDemotedApplicationsOperation *)&v14 init];
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

- (void)run
{
  v3 = objc_alloc_init(NSMutableArray);
  v72 = self;
  if ([(NSArray *)self->_bundleIDs count])
  {
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v85 = 0u;
    v4 = self->_bundleIDs;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v85 objects:v98 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v86;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v86 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [LSApplicationProxy applicationProxyForIdentifier:*(*(&v85 + 1) + 8 * i)];
          v10 = v9;
          if (v9 && (([v9 isPlaceholder] & 1) != 0 || objc_msgSend(v10, "installType") == 7))
          {
            [v3 addObject:v10];
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v85 objects:v98 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v11 = +[LSApplicationWorkspace defaultWorkspace];
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_100100BD0;
    v89[3] = &unk_100328CB0;
    v90 = v3;
    [v11 enumerateBundlesOfType:0 block:v89];

    v4 = v90;
  }

  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v13 |= 2u;
  }

  v14 = [v12 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = objc_opt_class();
  v17 = v16;
  v18 = [v3 count];
  v91 = 138412546;
  v92 = v16;
  v93 = 2048;
  v94 = v18;
  LODWORD(v67) = 22;
  v65 = &v91;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    v14 = [NSString stringWithCString:v19 encoding:4, &v91, v67];
    free(v19);
    v65 = v14;
    SSFileLog();
LABEL_25:
  }

  v71 = +[SSAccountStore defaultStore];
  v69 = objc_alloc_init(NSMutableDictionary);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v3;
  v74 = [obj countByEnumeratingWithState:&v81 objects:v97 count:16];
  if (!v74)
  {
    v68 = 0;
    v20 = 1;
    v21 = v72;
    v22 = &CFDictionaryGetValue_ptr;
    goto LABEL_78;
  }

  v68 = 0;
  v73 = *v82;
  v20 = 1;
  v21 = v72;
  v22 = &CFDictionaryGetValue_ptr;
  do
  {
    for (j = 0; j != v74; j = j + 1)
    {
      if (*v82 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v81 + 1) + 8 * j);
      context = objc_autoreleasePoolPush();
      v75 = [[DemotedApplication alloc] initWithApplication:v24];
      v25 = [(DemotedApplication *)v75 restoreDownloadItem];
      v26 = [v24 bundleIdentifier];
      [v25 setBundleID:v26];

      v27 = [v25 storeAccountID];
      v28 = [NSNumber numberWithLongLong:0];

      if (v27 != v28)
      {
        if (!v27)
        {
          goto LABEL_34;
        }

LABEL_33:
        v29 = [v71 accountWithUniqueIdentifier:{v27, v65}];
        v30 = [v29 accountName];
        [v25 setStoreAccountAppleID:v30];

        goto LABEL_34;
      }

      v41 = [(RestoreDemotedApplicationsOperation *)v21 _appleIDForApp:v24];
      v42 = [v22[412] sharedDaemonConfig];
      if (!v42)
      {
        v42 = [v22[412] sharedConfig];
      }

      v43 = [v42 shouldLog];
      if ([v42 shouldLogToDisk])
      {
        v43 |= 2u;
      }

      v44 = [v42 OSLogObject];
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v43 &= 2u;
      }

      if (v43)
      {
        v45 = objc_opt_class();
        v91 = 138412546;
        v92 = v45;
        v93 = 2112;
        v94 = v41;
        v46 = v45;
        LODWORD(v67) = 22;
        v65 = &v91;
        v47 = _os_log_send_and_compose_impl();

        if (!v47)
        {
          goto LABEL_57;
        }

        v44 = [NSString stringWithCString:v47 encoding:4, &v91, v67];
        free(v47);
        v65 = v44;
        SSFileLog();
      }

LABEL_57:
      if (!v41)
      {
        goto LABEL_69;
      }

      v48 = [(RestoreDemotedApplicationsOperation *)v72 _accountIdForAppleID:v41];

      v49 = +[SSLogConfig sharedDaemonConfig];
      if (!v49)
      {
        v49 = +[SSLogConfig sharedConfig];
      }

      v50 = [v49 shouldLog];
      if ([v49 shouldLogToDisk])
      {
        v50 |= 2u;
      }

      v51 = [v49 OSLogObject];
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v50 &= 2u;
      }

      if (!v50)
      {
        goto LABEL_67;
      }

      v52 = objc_opt_class();
      v91 = 138412546;
      v92 = v52;
      v93 = 2112;
      v94 = v48;
      v53 = v52;
      LODWORD(v67) = 22;
      v65 = &v91;
      v54 = _os_log_send_and_compose_impl();

      if (v54)
      {
        v51 = [NSString stringWithCString:v54 encoding:4, &v91, v67];
        free(v54);
        v65 = v51;
        SSFileLog();
LABEL_67:
      }

      v27 = v48;
LABEL_69:
      v21 = v72;
      v22 = &CFDictionaryGetValue_ptr;

      if (v27)
      {
        goto LABEL_33;
      }

LABEL_34:
      v80 = 0;
      v31 = [v25 isEligibleForRestore:{&v80, v65}];
      v32 = v80;
      if ((v31 & 1) == 0)
      {
        v34 = [v22[412] sharedDaemonConfig];
        if (!v34)
        {
          v34 = [v22[412] sharedConfig];
        }

        v35 = [v34 shouldLog];
        if ([v34 shouldLogToDisk])
        {
          v35 |= 2u;
        }

        v36 = [v34 OSLogObject];
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v35 &= 2u;
        }

        if (v35)
        {
          v37 = objc_opt_class();
          v38 = v37;
          v39 = [v24 bundleIdentifier];
          v91 = 138412802;
          v92 = v37;
          v93 = 2112;
          v94 = v39;
          v95 = 2112;
          v96 = v32;
          LODWORD(v67) = 32;
          v65 = &v91;
          v40 = _os_log_send_and_compose_impl();

          if (!v40)
          {
            v20 = 0;
            v21 = v72;
            goto LABEL_73;
          }

          v36 = [NSString stringWithCString:v40 encoding:4, &v91, v67];
          free(v40);
          v65 = v36;
          SSFileLog();
          v21 = v72;
        }

        v20 = 0;
LABEL_73:
        v22 = &CFDictionaryGetValue_ptr;
        goto LABEL_74;
      }

      v33 = [v69 objectForKey:v27];
      if (v33)
      {
        v34 = v33;
        [v33 addObject:v25];
      }

      else
      {
        v65 = 0;
        v34 = [[NSMutableArray alloc] initWithObjects:v25];
        [v69 setObject:v34 forKey:v27];
        ++v68;
      }

LABEL_74:

      objc_autoreleasePoolPop(context);
    }

    v74 = [obj countByEnumeratingWithState:&v81 objects:v97 count:16];
  }

  while (v74);
LABEL_78:

  v55 = [v22[412] sharedDaemonConfig];
  if (!v55)
  {
    v55 = [v22[412] sharedConfig];
  }

  v56 = [v55 shouldLog];
  if ([v55 shouldLogToDisk])
  {
    v56 |= 2u;
  }

  v57 = [v55 OSLogObject];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    v58 = v56;
  }

  else
  {
    v58 = v56 & 2;
  }

  if (v58)
  {
    v59 = objc_opt_class();
    v60 = v59;
    v61 = [v69 count];
    v91 = 138412802;
    v92 = v59;
    v93 = 2048;
    v94 = v68;
    v95 = 2048;
    v96 = v61;
    LODWORD(v67) = 32;
    v66 = &v91;
    v62 = _os_log_send_and_compose_impl();

    v21 = v72;
    v63 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
    v64 = v71;
    if (v62)
    {
      v57 = [NSString stringWithCString:v62 encoding:4, &v91, v67];
      free(v62);
      v66 = v57;
      SSFileLog();
      goto LABEL_89;
    }
  }

  else
  {
    v63 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
    v64 = v71;
LABEL_89:
  }

  if (v68 >= 1)
  {
    v77[0] = _NSConcreteStackBlock;
    v77[1] = v63[442];
    v77[2] = sub_100100C58;
    v77[3] = &unk_100328CD8;
    v78 = v64;
    v79 = v21;
    [v69 enumerateKeysAndObjectsUsingBlock:v77];
  }

  [(RestoreDemotedApplicationsOperation *)v21 setError:0, v66];
  [(RestoreDemotedApplicationsOperation *)v21 setSuccess:v20 & 1];
  [(RestoreDemotedApplicationsOperation *)v21 _notifyCompletion];
}

- (void)restoreDownloadItemsOperation:(id)a3 didReceiveResponse:(id)a4
{
  v5 = a4;
  v6 = [v5 requestItems];
  v7 = [v5 serverResponse];

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [v7 downloads];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10010132C;
  v27[3] = &unk_100328D00;
  v10 = v8;
  v28 = v10;
  [v9 enumerateObjectsUsingBlock:v27];

  if (![v10 count])
  {
    v12 = [v6 valueForKey:@"bundleID"];
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v18 = v17;
      v19 = [v7 error];
      v29 = 138412802;
      v30 = v17;
      v31 = 2112;
      v32 = v19;
      v33 = 2112;
      v34 = v12;
      LODWORD(v21) = 32;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_14:

        goto LABEL_15;
      }

      v16 = [NSString stringWithCString:v20 encoding:4, &v29, v21];
      free(v20);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v11 = +[DownloadsDatabase downloadsDatabase];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001013B8;
  v22[3] = &unk_100328D28;
  v23 = v6;
  v24 = v10;
  v25 = self;
  v26 = v7;
  [v11 modifyAsyncUsingTransactionBlock:v22];

  v12 = v23;
LABEL_15:
}

- (id)_appleIDForApp:(id)a3
{
  v3 = [a3 bundleContainerURL];
  v4 = [v3 path];
  v5 = [v4 stringByAppendingPathComponent:@"iTunesMetadata.plist"];

  v6 = [[NSMutableDictionary alloc] initWithContentsOfFile:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"appleId"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_accountIdForAppleID:(id)a3
{
  v4 = a3;
  accountsCacheDB = self->_accountsCacheDB;
  if (!accountsCacheDB)
  {
    v6 = objc_alloc_init(AccountCacheDBClient);
    v7 = self->_accountsCacheDB;
    self->_accountsCacheDB = v6;

    accountsCacheDB = self->_accountsCacheDB;
  }

  v8 = [(AccountCacheDBClient *)accountsCacheDB dSIDForAppleID:v4];

  return v8;
}

- (void)_notifyCompletion
{
  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &stru_100328D48);
}

@end