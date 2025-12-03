@interface STPersistLocalAppsOperation
+ (BOOL)_shouldSkipApplicationWithParentURLResourceValues:(id)values;
- (STPersistLocalAppsOperation)initWithPersistenceController:(id)controller installedApps:(id)apps backgroundActivity:(id)activity;
- (id)_collectInstalledApps:(id)apps;
- (void)_collectAppMetadata:(id)metadata;
- (void)main;
@end

@implementation STPersistLocalAppsOperation

- (STPersistLocalAppsOperation)initWithPersistenceController:(id)controller installedApps:(id)apps backgroundActivity:(id)activity
{
  appsCopy = apps;
  activityCopy = activity;
  v14.receiver = self;
  v14.super_class = STPersistLocalAppsOperation;
  v11 = [(STPersistenceOperation *)&v14 initWithPersistenceController:controller];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_predeterminedInstalledAppIdentifiers, apps);
    objc_storeStrong(&v12->_backgroundActivity, activity);
  }

  return v12;
}

- (id)_collectInstalledApps:(id)apps
{
  appsCopy = apps;
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
        appMonitor = [v6[357] appMonitor];
        if (os_log_type_enabled(appMonitor, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v44 = v9;
          _os_log_debug_impl(&_mh_execute_header, appMonitor, OS_LOG_TYPE_DEBUG, "Found applicationRecord %@", buf, 0xCu);
        }

        compatibilityObject = [v9 compatibilityObject];
        applicationType = [compatibilityObject applicationType];

        if (([applicationType isEqualToString:v37] & 1) == 0 && !objc_msgSend(applicationType, "isEqualToString:", v36))
        {
          v15 = v6;
          v16 = v3;
          bundleIdentifier = [v9 bundleIdentifier];
          appTags = [v9 appTags];
          v18 = [appTags containsObject:@"hidden"];

          if (v18)
          {
            appMonitor2 = [v15[357] appMonitor];
            v3 = v16;
            if (os_log_type_enabled(appMonitor2, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v44 = bundleIdentifier;
              v20 = appMonitor2;
              v21 = "Ignoring app %@ (hidden by SBAppTags)";
              goto LABEL_36;
            }

            goto LABEL_17;
          }

          if ([v9 isLaunchProhibited])
          {
            appMonitor2 = [v15[357] appMonitor];
            v3 = v16;
            if (os_log_type_enabled(appMonitor2, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v44 = bundleIdentifier;
              v20 = appMonitor2;
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
          if ([bundleIdentifier hasPrefix:@"com.apple.webapp"])
          {
            v6 = v15;
            appMonitor3 = [v15[357] appMonitor];
            if (os_log_type_enabled(appMonitor3, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v44 = bundleIdentifier;
              v23 = appMonitor3;
              v24 = "Ignoring app %@ (is a web clip)";
              goto LABEL_41;
            }
          }

          else
          {
            appClipMetadata = [v9 appClipMetadata];

            if (!appClipMetadata)
            {
              applicationState = [v9 applicationState];
              isRestricted = [applicationState isRestricted];

              if (isRestricted)
              {
                appMonitor4 = [v15[357] appMonitor];
                if (os_log_type_enabled(appMonitor4, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v44 = bundleIdentifier;
                  _os_log_debug_impl(&_mh_execute_header, appMonitor4, OS_LOG_TYPE_DEBUG, "Ignoring app %@ (hidden by restrictions)", buf, 0xCu);
                }
              }

              else
              {
                if (!bundleIdentifier)
                {
                  appMonitor5 = [v15[357] appMonitor];
                  v3 = v16;
                  if (os_log_type_enabled(appMonitor5, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100119878(v42, v9);
                  }

                  goto LABEL_18;
                }

                [v34 addObject:bundleIdentifier];
              }

              v3 = v16;
              goto LABEL_18;
            }

            v6 = v15;
            appMonitor3 = [v15[357] appMonitor];
            if (os_log_type_enabled(appMonitor3, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v44 = bundleIdentifier;
              v23 = appMonitor3;
              v24 = "Ignoring app %@ (is an app clip)";
LABEL_41:
              _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, v24, buf, 0xCu);
            }
          }

          goto LABEL_25;
        }

        bundleIdentifier = [v6[357] appMonitor];
        if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v44 = v9;
          v45 = 2112;
          v46 = applicationType;
          _os_log_debug_impl(&_mh_execute_header, bundleIdentifier, OS_LOG_TYPE_DEBUG, "Ignoring application record %@ with type %@ (is internal or hidden)", buf, 0x16u);
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

+ (BOOL)_shouldSkipApplicationWithParentURLResourceValues:(id)values
{
  v3 = [values objectForKeyedSubscript:NSURLContentTypeKey];
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

- (void)_collectAppMetadata:(id)metadata
{
  metadataCopy = metadata;
  bundleIdentifier = [metadataCopy bundleIdentifier];
  v24 = 0;
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v24];
  v6 = v24;
  if (v5)
  {
    v7 = [v5 URL];
    compatibilityObject = [v5 compatibilityObject];
    applicationType = [compatibilityObject applicationType];
    v10 = [applicationType isEqualToString:@"User"];

    if (v10)
    {
      iTunesMetadata = [v5 iTunesMetadata];
      distributorInfo = [iTunesMetadata distributorInfo];
      distributorID = [distributorInfo distributorID];
      [metadataCopy setDistributorID:distributorID];

      iTunesMetadata2 = [v5 iTunesMetadata];
      distributorInfo2 = [iTunesMetadata2 distributorInfo];
      [metadataCopy setDistributorIsThirdParty:{objc_msgSend(distributorInfo2, "distributorIsThirdParty")}];

      iTunesMetadata3 = [v5 iTunesMetadata];
      v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [iTunesMetadata3 storeItemIdentifier]);
      [metadataCopy setAdamID:v17];

      iTunesMetadata4 = [v5 iTunesMetadata];
      v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [iTunesMetadata4 versionIdentifier]);
      [metadataCopy setVersionIdentifier:v19];

      iTunesMetadata5 = [v5 iTunesMetadata];
      v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [iTunesMetadata5 betaVersionIdentifier]);
      [metadataCopy setBetaVersionIdentifier:v21];

      if ([v5 isProfileValidated])
      {
        localizedName = [v5 localizedName];
        [metadataCopy setDisplayName:localizedName];

        [metadataCopy updateIconDataWithURL:v7];
        v23 = +[STLog appMonitor];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_1001199EC(metadataCopy);
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
  activity = [(STOperation *)self activity];
  os_activity_scope_enter(activity, &state);

  persistenceController = [(STPersistenceOperation *)self persistenceController];
  newBackgroundContext = [persistenceController newBackgroundContext];

  [newBackgroundContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [newBackgroundContext setName:@"STPersistLocalAppsOperation"];
  v8 = +[STLog appMonitor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Beginning new app save activity", buf, 2u);
  }

  predeterminedInstalledAppIdentifiers = [(STPersistLocalAppsOperation *)self predeterminedInstalledAppIdentifiers];

  if (predeterminedInstalledAppIdentifiers)
  {
    [(STPersistLocalAppsOperation *)self predeterminedInstalledAppIdentifiers];
  }

  else
  {
    [(STPersistLocalAppsOperation *)self _collectInstalledApps:newBackgroundContext];
  }
  v10 = ;
  if ([v10 count])
  {
    backgroundActivity = [(STPersistLocalAppsOperation *)self backgroundActivity];
    v12 = backgroundActivity;
    if (backgroundActivity && [backgroundActivity shouldDefer])
    {
      [(STPersistLocalAppsOperation *)self endOperationWithResultObject:&off_1001B22A8];
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10005403C;
      v14[3] = &unk_1001A3E08;
      v15 = newBackgroundContext;
      selfCopy = self;
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