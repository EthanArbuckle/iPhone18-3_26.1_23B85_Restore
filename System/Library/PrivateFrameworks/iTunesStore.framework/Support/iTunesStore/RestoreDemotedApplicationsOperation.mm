@interface RestoreDemotedApplicationsOperation
- (RestoreDemotedApplicationsOperation)initWithBundleIdentifiers:(id)identifiers options:(id)options;
- (id)_accountIdForAppleID:(id)d;
- (id)_appleIDForApp:(id)app;
- (void)_notifyCompletion;
- (void)restoreDownloadItemsOperation:(id)operation didReceiveResponse:(id)response;
- (void)run;
@end

@implementation RestoreDemotedApplicationsOperation

- (RestoreDemotedApplicationsOperation)initWithBundleIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = RestoreDemotedApplicationsOperation;
  v8 = [(RestoreDemotedApplicationsOperation *)&v14 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    bundleIDs = v8->_bundleIDs;
    v8->_bundleIDs = v9;

    v11 = [optionsCopy copy];
    options = v8->_options;
    v8->_options = v11;
  }

  return v8;
}

- (void)run
{
  v3 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
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

  shouldLog = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v15 = shouldLog;
  }

  else
  {
    v15 = shouldLog & 2;
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
    oSLogObject = [NSString stringWithCString:v19 encoding:4, &v91, v67];
    free(v19);
    v65 = oSLogObject;
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
    v21 = selfCopy;
    v22 = &CFDictionaryGetValue_ptr;
    goto LABEL_78;
  }

  v68 = 0;
  v73 = *v82;
  v20 = 1;
  v21 = selfCopy;
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
      restoreDownloadItem = [(DemotedApplication *)v75 restoreDownloadItem];
      bundleIdentifier = [v24 bundleIdentifier];
      [restoreDownloadItem setBundleID:bundleIdentifier];

      storeAccountID = [restoreDownloadItem storeAccountID];
      v28 = [NSNumber numberWithLongLong:0];

      if (storeAccountID != v28)
      {
        if (!storeAccountID)
        {
          goto LABEL_34;
        }

LABEL_33:
        v29 = [v71 accountWithUniqueIdentifier:{storeAccountID, v65}];
        accountName = [v29 accountName];
        [restoreDownloadItem setStoreAccountAppleID:accountName];

        goto LABEL_34;
      }

      v41 = [(RestoreDemotedApplicationsOperation *)v21 _appleIDForApp:v24];
      sharedDaemonConfig = [v22[412] sharedDaemonConfig];
      if (!sharedDaemonConfig)
      {
        sharedDaemonConfig = [v22[412] sharedConfig];
      }

      shouldLog2 = [sharedDaemonConfig shouldLog];
      if ([sharedDaemonConfig shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      oSLogObject2 = [sharedDaemonConfig OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog2 &= 2u;
      }

      if (shouldLog2)
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

        oSLogObject2 = [NSString stringWithCString:v47 encoding:4, &v91, v67];
        free(v47);
        v65 = oSLogObject2;
        SSFileLog();
      }

LABEL_57:
      if (!v41)
      {
        goto LABEL_69;
      }

      v48 = [(RestoreDemotedApplicationsOperation *)selfCopy _accountIdForAppleID:v41];

      v49 = +[SSLogConfig sharedDaemonConfig];
      if (!v49)
      {
        v49 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v49 shouldLog];
      if ([v49 shouldLogToDisk])
      {
        shouldLog3 |= 2u;
      }

      oSLogObject3 = [v49 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog3 &= 2u;
      }

      if (!shouldLog3)
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
        oSLogObject3 = [NSString stringWithCString:v54 encoding:4, &v91, v67];
        free(v54);
        v65 = oSLogObject3;
        SSFileLog();
LABEL_67:
      }

      storeAccountID = v48;
LABEL_69:
      v21 = selfCopy;
      v22 = &CFDictionaryGetValue_ptr;

      if (storeAccountID)
      {
        goto LABEL_33;
      }

LABEL_34:
      v80 = 0;
      v31 = [restoreDownloadItem isEligibleForRestore:{&v80, v65}];
      v32 = v80;
      if ((v31 & 1) == 0)
      {
        sharedDaemonConfig2 = [v22[412] sharedDaemonConfig];
        if (!sharedDaemonConfig2)
        {
          sharedDaemonConfig2 = [v22[412] sharedConfig];
        }

        shouldLog4 = [sharedDaemonConfig2 shouldLog];
        if ([sharedDaemonConfig2 shouldLogToDisk])
        {
          shouldLog4 |= 2u;
        }

        oSLogObject4 = [sharedDaemonConfig2 OSLogObject];
        if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          shouldLog4 &= 2u;
        }

        if (shouldLog4)
        {
          v37 = objc_opt_class();
          v38 = v37;
          bundleIdentifier2 = [v24 bundleIdentifier];
          v91 = 138412802;
          v92 = v37;
          v93 = 2112;
          v94 = bundleIdentifier2;
          v95 = 2112;
          v96 = v32;
          LODWORD(v67) = 32;
          v65 = &v91;
          v40 = _os_log_send_and_compose_impl();

          if (!v40)
          {
            v20 = 0;
            v21 = selfCopy;
            goto LABEL_73;
          }

          oSLogObject4 = [NSString stringWithCString:v40 encoding:4, &v91, v67];
          free(v40);
          v65 = oSLogObject4;
          SSFileLog();
          v21 = selfCopy;
        }

        v20 = 0;
LABEL_73:
        v22 = &CFDictionaryGetValue_ptr;
        goto LABEL_74;
      }

      v33 = [v69 objectForKey:storeAccountID];
      if (v33)
      {
        sharedDaemonConfig2 = v33;
        [v33 addObject:restoreDownloadItem];
      }

      else
      {
        v65 = 0;
        sharedDaemonConfig2 = [[NSMutableArray alloc] initWithObjects:restoreDownloadItem];
        [v69 setObject:sharedDaemonConfig2 forKey:storeAccountID];
        ++v68;
      }

LABEL_74:

      objc_autoreleasePoolPop(context);
    }

    v74 = [obj countByEnumeratingWithState:&v81 objects:v97 count:16];
  }

  while (v74);
LABEL_78:

  sharedDaemonConfig3 = [v22[412] sharedDaemonConfig];
  if (!sharedDaemonConfig3)
  {
    sharedDaemonConfig3 = [v22[412] sharedConfig];
  }

  shouldLog5 = [sharedDaemonConfig3 shouldLog];
  if ([sharedDaemonConfig3 shouldLogToDisk])
  {
    shouldLog5 |= 2u;
  }

  oSLogObject5 = [sharedDaemonConfig3 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
  {
    v58 = shouldLog5;
  }

  else
  {
    v58 = shouldLog5 & 2;
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

    v21 = selfCopy;
    v63 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
    v64 = v71;
    if (v62)
    {
      oSLogObject5 = [NSString stringWithCString:v62 encoding:4, &v91, v67];
      free(v62);
      v66 = oSLogObject5;
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

- (void)restoreDownloadItemsOperation:(id)operation didReceiveResponse:(id)response
{
  responseCopy = response;
  requestItems = [responseCopy requestItems];
  serverResponse = [responseCopy serverResponse];

  v8 = objc_alloc_init(NSMutableDictionary);
  downloads = [serverResponse downloads];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10010132C;
  v27[3] = &unk_100328D00;
  v10 = v8;
  v28 = v10;
  [downloads enumerateObjectsUsingBlock:v27];

  if (![v10 count])
  {
    v12 = [requestItems valueForKey:@"bundleID"];
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v18 = v17;
      error = [serverResponse error];
      v29 = 138412802;
      v30 = v17;
      v31 = 2112;
      v32 = error;
      v33 = 2112;
      v34 = v12;
      LODWORD(v21) = 32;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4, &v29, v21];
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
  v23 = requestItems;
  v24 = v10;
  selfCopy = self;
  v26 = serverResponse;
  [v11 modifyAsyncUsingTransactionBlock:v22];

  v12 = v23;
LABEL_15:
}

- (id)_appleIDForApp:(id)app
{
  bundleContainerURL = [app bundleContainerURL];
  path = [bundleContainerURL path];
  v5 = [path stringByAppendingPathComponent:@"iTunesMetadata.plist"];

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

- (id)_accountIdForAppleID:(id)d
{
  dCopy = d;
  accountsCacheDB = self->_accountsCacheDB;
  if (!accountsCacheDB)
  {
    v6 = objc_alloc_init(AccountCacheDBClient);
    v7 = self->_accountsCacheDB;
    self->_accountsCacheDB = v6;

    accountsCacheDB = self->_accountsCacheDB;
  }

  v8 = [(AccountCacheDBClient *)accountsCacheDB dSIDForAppleID:dCopy];

  return v8;
}

- (void)_notifyCompletion
{
  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &stru_100328D48);
}

@end