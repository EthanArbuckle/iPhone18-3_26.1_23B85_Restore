@interface AppStoreUtility
+ (id)_newManifestWithManifestType:(int64_t)a3;
+ (id)_newRequestWithManifest:(id)a3;
+ (void)_addDownloads:(id)a3 toManifest:(id)a4 forClientID:(id)a5;
+ (void)_checkClaimsForAccountID:(id)a3 claimStyle:(int64_t)a4 clientAuditTokenData:(id)a5 establishActiveAccounts:(BOOL)a6 ignoresPreviousClaimAttempts:(BOOL)a7 completionBlock:(id)a8;
+ (void)_sendSoftwareManifest:(id)a3 withReason:(id)a4;
+ (void)checkDownloadQueue;
+ (void)claimAppsWithPurchase:(id)a3;
+ (void)hidePendingUpdatesBadge;
+ (void)installManagedAppWithRequest:(id)a3 completionBlock:(id)a4;
+ (void)postBulletinWithTitle:(id)a3 message:(id)a4 destinations:(unint64_t)a5 actionButtonTitle:(id)a6 actionButtonURL:(id)a7 launchURL:(id)a8 completionBlock:(id)a9;
+ (void)reloadUpdatesWithCompletionBlock:(id)a3;
+ (void)repairAppWithRequest:(id)a3 completionBlock:(id)a4;
+ (void)restoreDemotedAppsWithBundleIDs:(id)a3;
+ (void)sendActivitySubscriptionEntitlementsWithDictionary:(id)a3 forAccountID:(id)a4;
+ (void)sendAppStoreSubscriptionEntitlementsWithDictionary:(id)a3 forAccountID:(id)a4;
+ (void)sendClusterMappings:(id)a3;
+ (void)sendNewsSubscriptionEntitlementsWithDictionary:(id)a3 forAccountID:(id)a4;
+ (void)sendSoftwareDownloads:(id)a3 withReason:(id)a4 forClientID:(id)a5 manifestType:(int64_t)a6;
@end

@implementation AppStoreUtility

+ (void)checkDownloadQueue
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
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
    v6 = [NSString stringWithCString:v8 encoding:4, &v13, v11];
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
  v12[4] = a1;
  [v10 sendRequestCompletionBlock:v12];
}

+ (void)claimAppsWithPurchase:(id)a3
{
  v4 = a3;
  v5 = [v4 gratisIdentifiers];
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = objc_opt_class();
  v11 = v10;
  [v5 componentsJoinedByString:{@", "}];
  v22 = 138543618;
  v23 = v10;
  v25 = v24 = 2114;
  LODWORD(v20) = 22;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v9 = [NSString stringWithCString:v12 encoding:4, &v22, v20];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  v13 = [objc_alloc(ISWeakLinkedClassForString()) initWithBundleIdentifiers:v5];
  v14 = [v4 accountIdentifier];
  [v13 setAccountID:v14];

  v15 = [v4 valueForDownloadProperty:SSDownloadPropertyShouldSuppressErrorDialogs];
  [v13 setSuppressErrorDialogs:{objc_msgSend(v15, "BOOLValue")}];

  v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 uniqueIdentifier]);
  [v13 setPurchaseID:v16];

  v17 = [v4 requestProperties];

  v18 = [v17 HTTPHeaders];
  [v13 setHttpHeaders:v18];

  v19 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v13];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10022AADC;
  v21[3] = &unk_10032CCA8;
  v21[4] = a1;
  [v19 sendRequestWithCompletionBlock:v21];
}

+ (void)hidePendingUpdatesBadge
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
    v5 = [NSString stringWithCString:v7 encoding:4, &v10, v9, v10];
    free(v7);
    SSFileLog();
LABEL_11:
  }

  v8 = objc_alloc_init(ISWeakLinkedClassForString());
  [v8 hideApplicationBadgeForPendingUpdates];
}

+ (void)installManagedAppWithRequest:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 itemIdentifier];
  v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 longLongValue]);

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_11;
  }

  v13 = objc_opt_class();
  v14 = v13;
  [v5 externalVersionIdentifier];
  v23 = 138543874;
  v24 = v13;
  v25 = 2112;
  v26 = v8;
  v28 = v27 = 2112;
  LODWORD(v22) = 32;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v12 = [NSString stringWithCString:v15 encoding:4, &v23, v22];
    free(v15);
    SSFileLog();
LABEL_11:
  }

  v16 = objc_alloc(ISWeakLinkedClassForString());
  v17 = [v5 externalVersionIdentifier];
  v18 = [v5 bundleIdentifier];
  v19 = [v5 bundleVersion];
  v20 = [v16 initWithItemIdentifer:v8 externalVersionIdentifier:v17 bundleIdentifier:v18 bundleVersion:v19 skipDownloads:{objc_msgSend(v5, "skipDownloads")}];

  v21 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v20];
  [v21 sendRequestWithCompletionBlock:v6];
}

+ (void)postBulletinWithTitle:(id)a3 message:(id)a4 destinations:(unint64_t)a5 actionButtonTitle:(id)a6 actionButtonURL:(id)a7 launchURL:(id)a8 completionBlock:(id)a9
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a4;
  v19 = +[SSLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  v20 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v20 |= 2u;
  }

  v21 = [v19 OSLogObject];
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v20 &= 2u;
  }

  if (v20)
  {
    v29 = 138543618;
    v30 = objc_opt_class();
    v31 = 2112;
    v32 = v13;
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
  [v25 setTitle:v13];
  [v25 setMessage:v18];

  [v25 setDestinations:a5];
  if (v14)
  {
    [v25 setActionButtonTitle:v14];
  }

  if (v15)
  {
    [v25 setActionButtonURL:v15];
  }

  if (v16)
  {
    [v25 setLaunchURL:v16];
  }

  v26 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v25];
  [v26 startWithCompletionBlock:v17];
}

+ (void)reloadUpdatesWithCompletionBlock:(id)a3
{
  v3 = a3;
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
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
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
    v7 = [NSString stringWithCString:v9 encoding:4, &v15, v12];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  v10 = objc_alloc_init(ISWeakLinkedClassForString());
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10022B5D8;
  v13[3] = &unk_10032CCD0;
  v14 = v3;
  v11 = v3;
  [v10 reloadForSettingsFromServerWithCompletionBlock:v13];
}

+ (void)repairAppWithRequest:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = objc_opt_class();
  v12 = v11;
  v13 = [v5 bundleID];
  [v5 accountDSID];
  v22 = 138544130;
  v23 = v11;
  v24 = 2112;
  v25 = v13;
  v27 = v26 = 2112;
  v28 = 2048;
  v29 = [v5 claimStyle];
  LODWORD(v21) = 42;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v10 = [NSString stringWithCString:v14 encoding:4, &v22, v21];
    free(v14);
    SSFileLog();
LABEL_11:
  }

  v15 = [v5 claimStyle] != 0;
  v16 = objc_alloc(ISWeakLinkedClassForString());
  v17 = [v5 bundleID];
  v18 = [v5 accountDSID];
  v19 = [v16 initWithBundleID:v17 accountIdentifier:v18 claimStyle:v15];

  v20 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v19];
  [v20 sendRequestWithCompletionBlock:v6];
}

+ (void)restoreDemotedAppsWithBundleIDs:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = objc_opt_class();
  v10 = v9;
  v11 = [v4 count];
  [v4 componentsJoinedByString:{@", "}];
  v17 = 138543874;
  v18 = v9;
  v19 = 2048;
  v20 = v11;
  v22 = v21 = 2112;
  LODWORD(v15) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v8 = [NSString stringWithCString:v12 encoding:4, &v17, v15];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  v13 = [objc_alloc(ISWeakLinkedClassForString()) initWithBundleIDs:v4];
  v14 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v13];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10022BB0C;
  v16[3] = &unk_10032CCF0;
  v16[4] = a1;
  [v14 startWithCompletionBlock:v16];
}

+ (void)sendClusterMappings:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  v30 = a1;
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = v10;
    v39 = 138543618;
    v40 = v10;
    v41 = 2048;
    v42 = [v4 count];
    LODWORD(v29) = 22;
    v12 = _os_log_send_and_compose_impl();

    if (!v12)
    {
      goto LABEL_13;
    }

    v8 = [NSString stringWithCString:v12 encoding:4, &v39, v29];
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
  v15 = v4;
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
        v22 = [v20 bundleID];
        [v21 setBundleID:v22];

        v23 = [v20 clusterID];
        [v21 setClusterID:v23];

        v24 = [v20 clusterVersionID];
        [v21 setClusterVersion:v24];

        v25 = [v20 itemID];
        [v21 setItemID:v25];

        v26 = [v20 launchWeight];
        [v21 setLaunchesWeight:v26];

        v27 = [v20 foregroundUsageWeight];
        [v21 setUsageWeight:v27];

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
  v33 = v30;
  v28 = v15;
  [v13 setClusterMappings:v14 completionBlock:v31];
}

+ (void)sendSoftwareDownloads:(id)a3 withReason:(id)a4 forClientID:(id)a5 manifestType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
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

  if (!v15)
  {
    goto LABEL_11;
  }

  v17 = objc_opt_class();
  v18 = v17;
  v22 = 138543874;
  v23 = v17;
  v24 = 2048;
  v25 = [v10 count];
  v26 = 2114;
  v27 = v11;
  LODWORD(v21) = 32;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    v16 = [NSString stringWithCString:v19 encoding:4, &v22, v21];
    free(v19);
    SSFileLog();
LABEL_11:
  }

  v20 = [a1 _newManifestWithManifestType:a6];
  [a1 _addDownloads:v10 toManifest:v20 forClientID:v12];

  [a1 _sendSoftwareManifest:v20 withReason:v11];
}

+ (void)sendNewsSubscriptionEntitlementsWithDictionary:(id)a3 forAccountID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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
    v10 = [NSString stringWithCString:v12 encoding:4, &v15, v14, v15];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  ISWeakLinkedClassForString();
  v13 = objc_opt_new();
  [v13 setSubscriptionEntitlementsWithDictionary:v6 forAccountID:v5 segment:0];
}

+ (void)sendActivitySubscriptionEntitlementsWithDictionary:(id)a3 forAccountID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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
    v10 = [NSString stringWithCString:v12 encoding:4, &v15, v14, v15];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  ISWeakLinkedClassForString();
  v13 = objc_opt_new();
  [v13 setSubscriptionEntitlementsWithDictionary:v6 forAccountID:v5 segment:2];
}

+ (void)sendAppStoreSubscriptionEntitlementsWithDictionary:(id)a3 forAccountID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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
    v10 = [NSString stringWithCString:v12 encoding:4, &v15, v14, v15];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  ISWeakLinkedClassForString();
  v13 = objc_opt_new();
  [v13 setSubscriptionEntitlementsWithDictionary:v6 forAccountID:v5 segment:1];
}

+ (void)_addDownloads:(id)a3 toManifest:(id)a4 forClientID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = +[SSAccountStore defaultStore];
  v11 = [v10 activeAccount];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10022CBEC;
  v15[3] = &unk_10032CD40;
  v16 = v8;
  v17 = v11;
  v18 = v7;
  v12 = v7;
  v13 = v11;
  v14 = v8;
  [v9 enumerateObjectsUsingBlock:v15];
}

+ (void)_checkClaimsForAccountID:(id)a3 claimStyle:(int64_t)a4 clientAuditTokenData:(id)a5 establishActiveAccounts:(BOOL)a6 ignoresPreviousClaimAttempts:(BOOL)a7 completionBlock:(id)a8
{
  v9 = a7;
  v10 = a6;
  v13 = a3;
  v14 = a8;
  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  v16 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v15 OSLogObject];
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v17 &= 2u;
  }

  if (v17)
  {
    v30 = 138543874;
    v31 = objc_opt_class();
    v32 = 2112;
    v33 = v13;
    v34 = 2048;
    v35 = a4;
    v19 = v31;
    LODWORD(v26) = 32;
    v25 = &v30;
    v20 = _os_log_send_and_compose_impl();

    if (!v20)
    {
      goto LABEL_12;
    }

    v18 = [NSString stringWithCString:v20 encoding:4, &v30, v26];
    free(v20);
    v25 = v18;
    SSFileLog();
  }

LABEL_12:
  v21 = [objc_alloc(ISWeakLinkedClassForString()) initWithClaimStyle:a4];
  v22 = v21;
  if (v13)
  {
    [v21 setAccountID:v13];
  }

  [v22 setEstablishesActiveAccount:{v10, v25}];
  [v22 setIgnoresPreviousClaimAttempts:v9];
  v23 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v22];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10022CFD8;
  v27[3] = &unk_10032CD68;
  v28 = v14;
  v29 = a1;
  v24 = v14;
  [v23 sendRequestWithCompletionBlock:v27];
}

+ (id)_newManifestWithManifestType:(int64_t)a3
{
  v4 = objc_alloc(ISWeakLinkedClassForString());

  return [v4 initWithManifestType:a3];
}

+ (id)_newRequestWithManifest:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(ISWeakLinkedClassForString()) initWithManifest:v3];

  v5 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v4];
  return v5;
}

+ (void)_sendSoftwareManifest:(id)a3 withReason:(id)a4
{
  v6 = a4;
  v7 = [a1 _newRequestWithManifest:a3];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10022D35C;
  v9[3] = &unk_10032CD90;
  v10 = v6;
  v11 = a1;
  v8 = v6;
  [v7 startWithCompletionBlock:v9];
}

@end