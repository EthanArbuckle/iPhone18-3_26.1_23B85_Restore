@interface STPersistLocalAppsOperation
+ (BOOL)_shouldSkipApplicationWithParentURLResourceValues:(id)a3;
- (STPersistLocalAppsOperation)initWithPersistenceController:(id)a3 installedApps:(id)a4 backgroundActivity:(id)a5;
- (id)_collectInstalledApps:(id)a3;
- (void)_collectAppMetadata:(id)a3;
- (void)main;
@end

@implementation STPersistLocalAppsOperation

- (STPersistLocalAppsOperation)initWithPersistenceController:(id)a3 installedApps:(id)a4 backgroundActivity:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = STPersistLocalAppsOperation;
  v11 = [(STPersistenceOperation *)&v14 initWithPersistenceController:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_predeterminedInstalledAppIdentifiers, a4);
    objc_storeStrong(&v12->_backgroundActivity, a5);
  }

  return v12;
}

- (id)_collectInstalledApps:(id)a3
{
  v33 = a3;
  v34 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = [LSApplicationRecord enumeratorWithOptions:0];
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = &_sSo17OS_dispatch_queueC8DispatchE10AttributesVMa_ptr;
    v7 = *v39;
    v36 = LSHiddenAppType;
    v37 = LSInternalApplicationType;
    v35 = *v39;
    do
    {
      v8 = 0;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v6[357] appMonitor];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v44 = v9;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Found applicationRecord %@", buf, 0xCu);
        }

        v12 = [v9 compatibilityObject];
        v13 = [v12 applicationType];

        if (([v13 isEqualToString:v37] & 1) == 0 && !objc_msgSend(v13, "isEqualToString:", v36))
        {
          v15 = v6;
          v16 = v3;
          v14 = [v9 bundleIdentifier];
          v17 = [v9 appTags];
          v18 = [v17 containsObject:@"hidden"];

          if (v18)
          {
            v19 = [v15[357] appMonitor];
            v3 = v16;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v44 = v14;
              v20 = v19;
              v21 = "Ignoring app %@ (hidden by SBAppTags)";
              goto LABEL_36;
            }

            goto LABEL_17;
          }

          if ([v9 isLaunchProhibited])
          {
            v19 = [v15[357] appMonitor];
            v3 = v16;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v44 = v14;
              v20 = v19;
              v21 = "Ignoring app %@ (is an iMessage app)";
LABEL_36:
              _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, v21, buf, 0xCu);
            }

LABEL_17:

LABEL_18:
            v6 = v15;
LABEL_25:
            v7 = v35;
            goto LABEL_26;
          }

          v3 = v16;
          if ([v14 hasPrefix:@"com.apple.webapp"])
          {
            v6 = v15;
            v22 = [v15[357] appMonitor];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v44 = v14;
              v23 = v22;
              v24 = "Ignoring app %@ (is a web clip)";
              goto LABEL_41;
            }
          }

          else
          {
            v25 = [v9 appClipMetadata];

            if (!v25)
            {
              v26 = [v9 applicationState];
              v27 = [v26 isRestricted];

              if (v27)
              {
                v28 = [v15[357] appMonitor];
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v44 = v14;
                  _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Ignoring app %@ (hidden by restrictions)", buf, 0xCu);
                }
              }

              else
              {
                if (!v14)
                {
                  v29 = [v15[357] appMonitor];
                  v3 = v16;
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100119878(v42, v9);
                  }

                  goto LABEL_18;
                }

                [v34 addObject:v14];
              }

              v3 = v16;
              goto LABEL_18;
            }

            v6 = v15;
            v22 = [v15[357] appMonitor];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v44 = v14;
              v23 = v22;
              v24 = "Ignoring app %@ (is an app clip)";
LABEL_41:
              _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, v24, buf, 0xCu);
            }
          }

          goto LABEL_25;
        }

        v14 = [v6[357] appMonitor];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v44 = v9;
          v45 = 2112;
          v46 = v13;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Ignoring application record %@ with type %@ (is internal or hidden)", buf, 0x16u);
        }

LABEL_26:

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v30 = [v3 countByEnumeratingWithState:&v38 objects:v47 count:16];
      v5 = v30;
    }

    while (v30);
  }

  v31 = [v34 copy];

  return v31;
}

+ (BOOL)_shouldSkipApplicationWithParentURLResourceValues:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:NSURLContentTypeKey];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 conformsToType:UTTypeFolder] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)_collectAppMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  v24 = 0;
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v24];
  v6 = v24;
  if (v5)
  {
    v7 = [v5 URL];
    v8 = [v5 compatibilityObject];
    v9 = [v8 applicationType];
    v10 = [v9 isEqualToString:@"User"];

    if (v10)
    {
      v11 = [v5 iTunesMetadata];
      v12 = [v11 distributorInfo];
      v13 = [v12 distributorID];
      [v3 setDistributorID:v13];

      v14 = [v5 iTunesMetadata];
      v15 = [v14 distributorInfo];
      [v3 setDistributorIsThirdParty:{objc_msgSend(v15, "distributorIsThirdParty")}];

      v16 = [v5 iTunesMetadata];
      v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v16 storeItemIdentifier]);
      [v3 setAdamID:v17];

      v18 = [v5 iTunesMetadata];
      v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 versionIdentifier]);
      [v3 setVersionIdentifier:v19];

      v20 = [v5 iTunesMetadata];
      v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v20 betaVersionIdentifier]);
      [v3 setBetaVersionIdentifier:v21];

      if ([v5 isProfileValidated])
      {
        v22 = [v5 localizedName];
        [v3 setDisplayName:v22];

        [v3 updateIconDataWithURL:v7];
        v23 = +[STLog appMonitor];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_1001199EC(v3);
        }
      }

      else
      {
        v23 = +[STLog appMonitor];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_100119960(v5);
        }
      }
    }

    else
    {
      v23 = +[STLog appMonitor];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        sub_1001198EC();
      }
    }
  }

  else
  {
    v7 = +[STLog appMonitor];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100119AA8();
    }
  }
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  v4 = _os_activity_create(&_mh_execute_header, "STPersistLocalAppsOperation start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  [(STOperation *)self setActivity:v4];

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = [(STOperation *)self activity];
  os_activity_scope_enter(v5, &state);

  v6 = [(STPersistenceOperation *)self persistenceController];
  v7 = [v6 newBackgroundContext];

  [v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v7 setName:@"STPersistLocalAppsOperation"];
  v8 = +[STLog appMonitor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Beginning new app save activity", buf, 2u);
  }

  v9 = [(STPersistLocalAppsOperation *)self predeterminedInstalledAppIdentifiers];

  if (v9)
  {
    [(STPersistLocalAppsOperation *)self predeterminedInstalledAppIdentifiers];
  }

  else
  {
    [(STPersistLocalAppsOperation *)self _collectInstalledApps:v7];
  }
  v10 = ;
  if ([v10 count])
  {
    v11 = [(STPersistLocalAppsOperation *)self backgroundActivity];
    v12 = v11;
    if (v11 && [v11 shouldDefer])
    {
      [(STPersistLocalAppsOperation *)self endOperationWithResultObject:&off_1001B22A8];
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10005403C;
      v14[3] = &unk_1001A3E08;
      v15 = v7;
      v16 = self;
      v17 = v10;
      v18 = v12;
      [v15 performBlockAndWait:v14];
    }
  }

  else
  {
    v13 = +[STLog appMonitor];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No installed apps found, will try again later", buf, 2u);
    }

    [(STPersistLocalAppsOperation *)self endOperationWithResultObject:&off_1001B2290];
  }

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v3);
}

@end