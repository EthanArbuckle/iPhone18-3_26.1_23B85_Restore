@interface AppStoreUtility
+ (id)_newManifestWithManifestType:(int64_t)type;
+ (id)_newRequestWithManifest:(id)manifest;
+ (void)_addDownloads:(id)downloads toManifest:(id)manifest forClientID:(id)d;
+ (void)_checkClaimsForAccountID:(id)d claimStyle:(int64_t)style clientAuditTokenData:(id)data establishActiveAccounts:(BOOL)accounts ignoresPreviousClaimAttempts:(BOOL)attempts completionBlock:(id)block;
+ (void)_sendSoftwareManifest:(id)manifest withReason:(id)reason;
+ (void)checkDownloadQueue;
+ (void)claimAppsWithPurchase:(id)purchase;
+ (void)hidePendingUpdatesBadge;
+ (void)installManagedAppWithRequest:(id)request completionBlock:(id)block;
+ (void)postBulletinWithTitle:(id)title message:(id)message destinations:(unint64_t)destinations actionButtonTitle:(id)buttonTitle actionButtonURL:(id)l launchURL:(id)rL completionBlock:(id)block;
+ (void)reloadUpdatesWithCompletionBlock:(id)block;
+ (void)repairAppWithRequest:(id)request completionBlock:(id)block;
+ (void)restoreDemotedAppsWithBundleIDs:(id)ds;
+ (void)sendActivitySubscriptionEntitlementsWithDictionary:(id)dictionary forAccountID:(id)d;
+ (void)sendAppStoreSubscriptionEntitlementsWithDictionary:(id)dictionary forAccountID:(id)d;
+ (void)sendClusterMappings:(id)mappings;
+ (void)sendNewsSubscriptionEntitlementsWithDictionary:(id)dictionary forAccountID:(id)d;
+ (void)sendSoftwareDownloads:(id)downloads withReason:(id)reason forClientID:(id)d manifestType:(int64_t)type;
@end

@implementation AppStoreUtility

+ (void)checkDownloadQueue
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
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v13 = 138543362;
  v14 = objc_opt_class();
  v7 = v14;
  LODWORD(v11) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [NSString stringWithCString:v8 encoding:4, &v13, v11];
    free(v8);
    SSFileLog();
LABEL_11:
  }

  v9 = [objc_alloc(ISWeakLinkedClassForString()) initWithReason:1];
  v10 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v9];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10022A5D4;
  v12[3] = &unk_10032CC88;
  v12[4] = self;
  [v10 sendRequestCompletionBlock:v12];
}

+ (void)claimAppsWithPurchase:(id)purchase
{
  purchaseCopy = purchase;
  gratisIdentifiers = [purchaseCopy gratisIdentifiers];
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = objc_opt_class();
  v11 = v10;
  [gratisIdentifiers componentsJoinedByString:{@", "}];
  v22 = 138543618;
  v23 = v10;
  v25 = v24 = 2114;
  LODWORD(v20) = 22;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4, &v22, v20];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  v13 = [objc_alloc(ISWeakLinkedClassForString()) initWithBundleIdentifiers:gratisIdentifiers];
  accountIdentifier = [purchaseCopy accountIdentifier];
  [v13 setAccountID:accountIdentifier];

  v15 = [purchaseCopy valueForDownloadProperty:SSDownloadPropertyShouldSuppressErrorDialogs];
  [v13 setSuppressErrorDialogs:{objc_msgSend(v15, "BOOLValue")}];

  v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [purchaseCopy uniqueIdentifier]);
  [v13 setPurchaseID:v16];

  requestProperties = [purchaseCopy requestProperties];

  hTTPHeaders = [requestProperties HTTPHeaders];
  [v13 setHttpHeaders:hTTPHeaders];

  v19 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v13];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10022AADC;
  v21[3] = &unk_10032CCA8;
  v21[4] = self;
  [v19 sendRequestWithCompletionBlock:v21];
}

+ (void)hidePendingUpdatesBadge
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = shouldLog | 2;
  }

  else
  {
    v4 = shouldLog;
  }

  oSLogObject = [v2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  LODWORD(v10) = 138543362;
  *(&v10 + 4) = objc_opt_class();
  v6 = *(&v10 + 4);
  LODWORD(v9) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [NSString stringWithCString:v7 encoding:4, &v10, v9, v10];
    free(v7);
    SSFileLog();
LABEL_11:
  }

  v8 = objc_alloc_init(ISWeakLinkedClassForString());
  [v8 hideApplicationBadgeForPendingUpdates];
}

+ (void)installManagedAppWithRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  itemIdentifier = [requestCopy itemIdentifier];
  v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [itemIdentifier longLongValue]);

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  oSLogObject = [v9 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_11;
  }

  v13 = objc_opt_class();
  v14 = v13;
  [requestCopy externalVersionIdentifier];
  v23 = 138543874;
  v24 = v13;
  v25 = 2112;
  v26 = v8;
  v28 = v27 = 2112;
  LODWORD(v22) = 32;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    oSLogObject = [NSString stringWithCString:v15 encoding:4, &v23, v22];
    free(v15);
    SSFileLog();
LABEL_11:
  }

  v16 = objc_alloc(ISWeakLinkedClassForString());
  externalVersionIdentifier = [requestCopy externalVersionIdentifier];
  bundleIdentifier = [requestCopy bundleIdentifier];
  bundleVersion = [requestCopy bundleVersion];
  v20 = [v16 initWithItemIdentifer:v8 externalVersionIdentifier:externalVersionIdentifier bundleIdentifier:bundleIdentifier bundleVersion:bundleVersion skipDownloads:{objc_msgSend(requestCopy, "skipDownloads")}];

  v21 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v20];
  [v21 sendRequestWithCompletionBlock:blockCopy];
}

+ (void)postBulletinWithTitle:(id)title message:(id)message destinations:(unint64_t)destinations actionButtonTitle:(id)buttonTitle actionButtonURL:(id)l launchURL:(id)rL completionBlock:(id)block
{
  titleCopy = title;
  buttonTitleCopy = buttonTitle;
  lCopy = l;
  rLCopy = rL;
  blockCopy = block;
  messageCopy = message;
  v19 = +[SSLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v19 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    shouldLog &= 2u;
  }

  if (shouldLog)
  {
    v29 = 138543618;
    v30 = objc_opt_class();
    v31 = 2112;
    v32 = titleCopy;
    v22 = v30;
    LODWORD(v27) = 22;
    v23 = _os_log_send_and_compose_impl();

    if (v23)
    {
      v24 = [NSString stringWithCString:v23 encoding:4, &v29, v27];
      free(v23);
      SSFileLog();
    }
  }

  else
  {
  }

  v25 = objc_alloc_init(ISWeakLinkedClassForString());
  [v25 setTitle:titleCopy];
  [v25 setMessage:messageCopy];

  [v25 setDestinations:destinations];
  if (buttonTitleCopy)
  {
    [v25 setActionButtonTitle:buttonTitleCopy];
  }

  if (lCopy)
  {
    [v25 setActionButtonURL:lCopy];
  }

  if (rLCopy)
  {
    [v25 setLaunchURL:rLCopy];
  }

  v26 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v25];
  [v26 startWithCompletionBlock:blockCopy];
}

+ (void)reloadUpdatesWithCompletionBlock:(id)block
{
  blockCopy = block;
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
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  v15 = 138543362;
  v16 = objc_opt_class();
  v8 = v16;
  LODWORD(v12) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [NSString stringWithCString:v9 encoding:4, &v15, v12];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  v10 = objc_alloc_init(ISWeakLinkedClassForString());
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10022B5D8;
  v13[3] = &unk_10032CCD0;
  v14 = blockCopy;
  v11 = blockCopy;
  [v10 reloadForSettingsFromServerWithCompletionBlock:v13];
}

+ (void)repairAppWithRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
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

  oSLogObject = [v7 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = objc_opt_class();
  v12 = v11;
  bundleID = [requestCopy bundleID];
  [requestCopy accountDSID];
  v22 = 138544130;
  v23 = v11;
  v24 = 2112;
  v25 = bundleID;
  v27 = v26 = 2112;
  v28 = 2048;
  claimStyle = [requestCopy claimStyle];
  LODWORD(v21) = 42;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject = [NSString stringWithCString:v14 encoding:4, &v22, v21];
    free(v14);
    SSFileLog();
LABEL_11:
  }

  v15 = [requestCopy claimStyle] != 0;
  v16 = objc_alloc(ISWeakLinkedClassForString());
  bundleID2 = [requestCopy bundleID];
  accountDSID = [requestCopy accountDSID];
  v19 = [v16 initWithBundleID:bundleID2 accountIdentifier:accountDSID claimStyle:v15];

  v20 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v19];
  [v20 sendRequestWithCompletionBlock:blockCopy];
}

+ (void)restoreDemotedAppsWithBundleIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = objc_opt_class();
  v10 = v9;
  v11 = [dsCopy count];
  [dsCopy componentsJoinedByString:{@", "}];
  v17 = 138543874;
  v18 = v9;
  v19 = 2048;
  v20 = v11;
  v22 = v21 = 2112;
  LODWORD(v15) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4, &v17, v15];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  v13 = [objc_alloc(ISWeakLinkedClassForString()) initWithBundleIDs:dsCopy];
  v14 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v13];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10022BB0C;
  v16[3] = &unk_10032CCF0;
  v16[4] = self;
  [v14 startWithCompletionBlock:v16];
}

+ (void)sendClusterMappings:(id)mappings
{
  mappingsCopy = mappings;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  selfCopy = self;
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = v10;
    v39 = 138543618;
    v40 = v10;
    v41 = 2048;
    v42 = [mappingsCopy count];
    LODWORD(v29) = 22;
    v12 = _os_log_send_and_compose_impl();

    if (!v12)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v12 encoding:4, &v39, v29];
    free(v12);
    SSFileLog();
  }

LABEL_13:
  ISWeakLinkedClassForString();
  ISWeakLinkedClassForString();
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = mappingsCopy;
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        v21 = objc_opt_new();
        bundleID = [v20 bundleID];
        [v21 setBundleID:bundleID];

        clusterID = [v20 clusterID];
        [v21 setClusterID:clusterID];

        clusterVersionID = [v20 clusterVersionID];
        [v21 setClusterVersion:clusterVersionID];

        itemID = [v20 itemID];
        [v21 setItemID:itemID];

        launchWeight = [v20 launchWeight];
        [v21 setLaunchesWeight:launchWeight];

        foregroundUsageWeight = [v20 foregroundUsageWeight];
        [v21 setUsageWeight:foregroundUsageWeight];

        [v14 addObject:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v17);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10022C070;
  v31[3] = &unk_10032CD18;
  v32 = v15;
  v33 = selfCopy;
  v28 = v15;
  [v13 setClusterMappings:v14 completionBlock:v31];
}

+ (void)sendSoftwareDownloads:(id)downloads withReason:(id)reason forClientID:(id)d manifestType:(int64_t)type
{
  downloadsCopy = downloads;
  reasonCopy = reason;
  dCopy = d;
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

  if (!v15)
  {
    goto LABEL_11;
  }

  v17 = objc_opt_class();
  v18 = v17;
  v22 = 138543874;
  v23 = v17;
  v24 = 2048;
  v25 = [downloadsCopy count];
  v26 = 2114;
  v27 = reasonCopy;
  LODWORD(v21) = 32;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    oSLogObject = [NSString stringWithCString:v19 encoding:4, &v22, v21];
    free(v19);
    SSFileLog();
LABEL_11:
  }

  v20 = [self _newManifestWithManifestType:type];
  [self _addDownloads:downloadsCopy toManifest:v20 forClientID:dCopy];

  [self _sendSoftwareManifest:v20 withReason:reasonCopy];
}

+ (void)sendNewsSubscriptionEntitlementsWithDictionary:(id)dictionary forAccountID:(id)d
{
  dCopy = d;
  dictionaryCopy = dictionary;
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

  oSLogObject = [v7 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  LODWORD(v15) = 138543362;
  *(&v15 + 4) = objc_opt_class();
  v11 = *(&v15 + 4);
  LODWORD(v14) = 12;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4, &v15, v14, v15];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  ISWeakLinkedClassForString();
  v13 = objc_opt_new();
  [v13 setSubscriptionEntitlementsWithDictionary:dictionaryCopy forAccountID:dCopy segment:0];
}

+ (void)sendActivitySubscriptionEntitlementsWithDictionary:(id)dictionary forAccountID:(id)d
{
  dCopy = d;
  dictionaryCopy = dictionary;
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

  oSLogObject = [v7 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  LODWORD(v15) = 138543362;
  *(&v15 + 4) = objc_opt_class();
  v11 = *(&v15 + 4);
  LODWORD(v14) = 12;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4, &v15, v14, v15];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  ISWeakLinkedClassForString();
  v13 = objc_opt_new();
  [v13 setSubscriptionEntitlementsWithDictionary:dictionaryCopy forAccountID:dCopy segment:2];
}

+ (void)sendAppStoreSubscriptionEntitlementsWithDictionary:(id)dictionary forAccountID:(id)d
{
  dCopy = d;
  dictionaryCopy = dictionary;
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

  oSLogObject = [v7 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  LODWORD(v15) = 138543362;
  *(&v15 + 4) = objc_opt_class();
  v11 = *(&v15 + 4);
  LODWORD(v14) = 12;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4, &v15, v14, v15];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  ISWeakLinkedClassForString();
  v13 = objc_opt_new();
  [v13 setSubscriptionEntitlementsWithDictionary:dictionaryCopy forAccountID:dCopy segment:1];
}

+ (void)_addDownloads:(id)downloads toManifest:(id)manifest forClientID:(id)d
{
  manifestCopy = manifest;
  dCopy = d;
  downloadsCopy = downloads;
  v10 = +[SSAccountStore defaultStore];
  activeAccount = [v10 activeAccount];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10022CBEC;
  v15[3] = &unk_10032CD40;
  v16 = dCopy;
  v17 = activeAccount;
  v18 = manifestCopy;
  v12 = manifestCopy;
  v13 = activeAccount;
  v14 = dCopy;
  [downloadsCopy enumerateObjectsUsingBlock:v15];
}

+ (void)_checkClaimsForAccountID:(id)d claimStyle:(int64_t)style clientAuditTokenData:(id)data establishActiveAccounts:(BOOL)accounts ignoresPreviousClaimAttempts:(BOOL)attempts completionBlock:(id)block
{
  attemptsCopy = attempts;
  accountsCopy = accounts;
  dCopy = d;
  blockCopy = block;
  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v17 = shouldLog | 2;
  }

  else
  {
    v17 = shouldLog;
  }

  oSLogObject = [v15 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v17 &= 2u;
  }

  if (v17)
  {
    v30 = 138543874;
    v31 = objc_opt_class();
    v32 = 2112;
    v33 = dCopy;
    v34 = 2048;
    styleCopy = style;
    v19 = v31;
    LODWORD(v26) = 32;
    v25 = &v30;
    v20 = _os_log_send_and_compose_impl();

    if (!v20)
    {
      goto LABEL_12;
    }

    oSLogObject = [NSString stringWithCString:v20 encoding:4, &v30, v26];
    free(v20);
    v25 = oSLogObject;
    SSFileLog();
  }

LABEL_12:
  v21 = [objc_alloc(ISWeakLinkedClassForString()) initWithClaimStyle:style];
  v22 = v21;
  if (dCopy)
  {
    [v21 setAccountID:dCopy];
  }

  [v22 setEstablishesActiveAccount:{accountsCopy, v25}];
  [v22 setIgnoresPreviousClaimAttempts:attemptsCopy];
  v23 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v22];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10022CFD8;
  v27[3] = &unk_10032CD68;
  v28 = blockCopy;
  selfCopy = self;
  v24 = blockCopy;
  [v23 sendRequestWithCompletionBlock:v27];
}

+ (id)_newManifestWithManifestType:(int64_t)type
{
  v4 = objc_alloc(ISWeakLinkedClassForString());

  return [v4 initWithManifestType:type];
}

+ (id)_newRequestWithManifest:(id)manifest
{
  manifestCopy = manifest;
  v4 = [objc_alloc(ISWeakLinkedClassForString()) initWithManifest:manifestCopy];

  v5 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v4];
  return v5;
}

+ (void)_sendSoftwareManifest:(id)manifest withReason:(id)reason
{
  reasonCopy = reason;
  v7 = [self _newRequestWithManifest:manifest];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10022D35C;
  v9[3] = &unk_10032CD90;
  v10 = reasonCopy;
  selfCopy = self;
  v8 = reasonCopy;
  [v7 startWithCompletionBlock:v9];
}

@end