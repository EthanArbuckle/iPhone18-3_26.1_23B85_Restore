@interface BAApplicationInfo
+ (BOOL)applicationForIdentifierAllowsBackgroundActivity:(id)a3;
+ (id)classesForSerialization;
+ (id)extensionContainingApplicationList;
- (BAApplicationInfo)initWithCoder:(id)a3;
- (BAApplicationInfo)initWithIdentifier:(id)a3 applicationTeamIdentifier:(id)a4;
- (BOOL)_consumeAllowanceShouldStopWithAdditionalBytes:(unint64_t)a3 downloadNecessity:(int64_t)a4 isManifest:(BOOL)a5;
- (BOOL)allowsBackgroundActivity;
- (BOOL)awaitingNetworkConsent;
- (BOOL)hasManagedAssetPacks;
- (BOOL)isEqual:(id)a3;
- (BOOL)receivedInstalledNotification;
- (BOOL)receivedInstallingNotification;
- (BOOL)setAwaitingNetworkConsent:(BOOL)a3;
- (BOOL)shouldDoPeriodicCheck;
- (BOOL)userForceQuitApp;
- (BOOL)usesAppleHosting;
- (NSData)persistentIdentifier;
- (NSMutableArray)allowedDownloadDomainWildcards;
- (NSMutableArray)allowedDownloadDomains;
- (double)extensionRuntime;
- (id)applicationSecurityGroups;
- (id)debugDescription;
- (id)extensionIdentityWithParentAppRecordPtr:(id *)a3;
- (int64_t)applicationExtensionState;
- (int64_t)applicationState;
- (int64_t)installSource;
- (unint64_t)_remainingDownloadAllowanceWithNecessity:(int64_t)a3 isManifest:(BOOL)a4;
- (void)_debugConsumeTime:(double)a3;
- (void)_populateAllowedDomainInfoWithArray:(id)a3;
- (void)applicationInstalled;
- (void)applicationInstallingWithUpdateInstall:(BOOL)a3;
- (void)applicationLaunched;
- (void)applicationPrepareWithDescriptor:(id)a3;
- (void)determineInstallSourceIfUnsetFromAuditToken:(id *)a3;
- (void)donePeriodicCheck;
- (void)encodeWithCoder:(id)a3;
- (void)extensionExited;
- (void)performAfterNetworkConsentProvided:(id)a3 queue:(id)a4;
- (void)resetExtensionRuntime;
- (void)setAllowedDownloadDomainWildcards:(id)a3;
- (void)setAllowedDownloadDomains:(id)a3;
- (void)setApplicationExtensionState:(int64_t)a3;
- (void)setApplicationState:(int64_t)a3;
- (void)setHasManagedAssetPacks:(BOOL)a3;
- (void)setInstallSource:(int64_t)a3;
- (void)setPersistentIdentifier:(id)a3;
- (void)setReceivedInstalledNotification:(BOOL)a3;
- (void)setReceivedInstallingNotification:(BOOL)a3;
- (void)setUserForceQuitApp:(BOOL)a3;
- (void)setUsesAppleHosting:(BOOL)a3;
- (void)updateApplicationWithInfoDictionary:(id)a3 applicationRecord:(id)a4 overrides:(id)a5;
- (void)willLaunchExtension;
@end

@implementation BAApplicationInfo

+ (BOOL)applicationForIdentifierAllowsBackgroundActivity:(id)a3
{
  v3 = a3;
  if (qword_100089CB0 != -1)
  {
    sub_10004BCF0();
  }

  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 isLowPowerModeEnabled];

  if (v5)
  {
    v6 = sub_1000104FC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Denying background activity for %{public}@ because device is in low power mode.", &v13, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v6 = +[MCProfileConnection sharedConnection];
    if (([v6 isAutomaticAppUpdatesAllowed]& 1) != 0)
    {
      v8 = [qword_100089CA8 objectForKey:@"KeepAppsUpToDateAppList"];
      v9 = [v8 objectForKey:v3];
      v10 = v9;
      if (v9 && ([v9 BOOLValue] & 1) == 0)
      {
        v11 = sub_1000104FC();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138543362;
          v14 = v3;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Denying background activity for %{public}@ because background app refresh for this app is disabled.", &v13, 0xCu);
        }

        v7 = 0;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v8 = sub_1000104FC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Denying background activity for %{public}@ because background app refresh is globally disabled.", &v13, 0xCu);
      }

      v7 = 0;
    }
  }

  return v7;
}

+ (id)classesForSerialization
{
  if (qword_100089CC0 != -1)
  {
    sub_10004BD04();
  }

  v3 = qword_100089CB8;

  return v3;
}

+ (id)extensionContainingApplicationList
{
  v24 = +[NSMutableArray array];
  v23 = [objc_opt_class() extensionPointQueriesWithPostProcessing:1];
  v2 = [_EXQueryController executeQueries:?];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = &lockdown_checkin_xpc_ptr;
    p_inst_meths = &OBJC_PROTOCOL___BAAgentSystemXPCProtocol.inst_meths;
    v7 = *v28;
    v25 = *v28;
    do
    {
      v8 = 0;
      v26 = v4;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = [v9 containingBundleRecord];
        v11 = v5[361];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v10 bundleIdentifier];
          if (v12)
          {
            v13 = [v9 entitlementNamed:p_inst_meths[107] ofClass:objc_opt_class()];
            v14 = [NSBundle alloc];
            v15 = [v10 URL];
            v16 = [v14 _initUniqueWithURL:v15];

            v17 = [v16 infoDictionary];
            v18 = [[BAApplicationInfo alloc] initWithIdentifier:v12 applicationTeamIdentifier:v13];
            if (v18)
            {
              [v24 addObject:v18];
              if (v17)
              {
                [BAApplicationConfigurationOverrides overridesForAppBundleIdentifier:v12];
                v19 = v5;
                v21 = v20 = v2;
                [(BAApplicationInfo *)v18 updateApplicationWithInfoDictionary:v17 applicationRecord:v10 overrides:v21];

                v2 = v20;
                v5 = v19;
                p_inst_meths = (&OBJC_PROTOCOL___BAAgentSystemXPCProtocol + 24);
              }
            }

            v7 = v25;
            v4 = v26;
          }
        }

        v8 = v8 + 1;
      }

      while (v4 != v8);
      v4 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v4);
  }

  return v24;
}

- (BAApplicationInfo)initWithIdentifier:(id)a3 applicationTeamIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = BAApplicationInfo;
  v8 = [(BAApplicationInfo *)&v28 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    v26 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"identifier can not be nil" userInfo:0];
    [v26 raise];
LABEL_9:

    v25 = 0;
    goto LABEL_10;
  }

  v9 = [v6 _baassets_validUTI];
  v10 = [v9 isEqualToString:v6];

  if ((v10 & 1) == 0)
  {
    v26 = sub_1000104FC();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10004BD18();
    }

    goto LABEL_9;
  }

  v11 = objc_alloc_init(NSRecursiveLock);
  [(BAApplicationInfo *)v8 setAppInfoRecursiveLock:v11];

  v12 = [(BAApplicationInfo *)v8 appInfoRecursiveLock];
  v13 = [NSString stringWithFormat:@"%@ App Info Recursive Lock", v6];
  [v12 setName:v13];

  v14 = [(BAApplicationInfo *)v8 appInfoRecursiveLock];
  [v14 lock];

  [(BAApplicationInfo *)v8 setApplicationIdentifier:v6];
  [(BAApplicationInfo *)v8 setOptionalAmountDownloaded:0];
  [(BAApplicationInfo *)v8 setEssentialAmountDownloaded:0];
  [(BAApplicationInfo *)v8 setOptionalAssetDownloadAllowance:0];
  [(BAApplicationInfo *)v8 setEssentialAssetDownloadAllowance:0];
  [(BAApplicationInfo *)v8 setPermittedForInitialBackgroundActivity:0];
  [(BAApplicationInfo *)v8 setInitialBackgroundCellularPolicy:0];
  [(BAApplicationInfo *)v8 setReceivedInstallingNotification:0];
  [(BAApplicationInfo *)v8 setReceivedInstalledNotification:0];
  [(BAApplicationInfo *)v8 setHasLaunchedApplication:0];
  [(BAApplicationInfo *)v8 setApplicationTeamIdentifier:v7];
  [(BAApplicationInfo *)v8 setInstallSource:0];
  v15 = [NSMutableArray arrayWithCapacity:10];
  [(BAApplicationInfo *)v8 setExtensionRuntimeEvents:v15];

  v16 = +[NSDate distantPast];
  [(BAApplicationInfo *)v8 setLastPeriodicCheckTime:v16];

  v17 = +[NSDate distantPast];
  [(BAApplicationInfo *)v8 setLastApplicationLaunchTime:v17];

  [(BAApplicationInfo *)v8 setManifestURL:0];
  [(BAApplicationInfo *)v8 setUserForceQuitApp:0];
  v18 = objc_alloc_init(NSMutableArray);
  allowedDownloadDomains = v8->_allowedDownloadDomains;
  v8->_allowedDownloadDomains = v18;

  v20 = objc_alloc_init(NSMutableArray);
  allowedDownloadDomainWildcards = v8->_allowedDownloadDomainWildcards;
  v8->_allowedDownloadDomainWildcards = v20;

  v8->_awaitingNetworkConsent = 0;
  v22 = +[NSMutableDictionary dictionary];
  blocksAwaitingNetworkConsent = v8->_blocksAwaitingNetworkConsent;
  v8->_blocksAwaitingNetworkConsent = v22;

  *&v8->_hasManagedAssetPacks = 0;
  v24 = [(BAApplicationInfo *)v8 appInfoRecursiveLock];
  [v24 unlock];

LABEL_5:
  v25 = v8;
LABEL_10:

  return v25;
}

- (BAApplicationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = BAApplicationInfo;
  v5 = [(BAApplicationInfo *)&v44 init];
  if (!v5)
  {
LABEL_37:
    v28 = v5;
    goto LABEL_38;
  }

  v6 = v4;
  v7 = objc_alloc_init(NSRecursiveLock);
  [(BAApplicationInfo *)v5 setAppInfoRecursiveLock:v7];

  v8 = [(BAApplicationInfo *)v5 appInfoRecursiveLock];
  [v8 lock];

  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_100089368[0]];
  [(BAApplicationInfo *)v5 setApplicationIdentifier:v9];

  v10 = [(BAApplicationInfo *)v5 applicationIdentifier];

  if (v10)
  {
    v11 = objc_alloc_init(NSMutableArray);
    allowedDownloadDomains = v5->_allowedDownloadDomains;
    v5->_allowedDownloadDomains = v11;

    v13 = objc_alloc_init(NSMutableArray);
    allowedDownloadDomainWildcards = v5->_allowedDownloadDomainWildcards;
    v5->_allowedDownloadDomainWildcards = v13;

    -[BAApplicationInfo setPermittedForInitialBackgroundActivity:](v5, "setPermittedForInitialBackgroundActivity:", [v6 decodeBoolForKey:off_1000893B0[0]]);
    -[BAApplicationInfo setInitialBackgroundCellularPolicy:](v5, "setInitialBackgroundCellularPolicy:", [v6 decodeIntegerForKey:off_1000893B8[0]]);
    -[BAApplicationInfo setHasLaunchedApplication:](v5, "setHasLaunchedApplication:", [v6 decodeBoolForKey:off_1000893D0[0]]);
    v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_1000893D8[0]];
    [(BAApplicationInfo *)v5 setLastApplicationLaunchTime:v15];

    v16 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_1000893F8[0]];
    [(BAApplicationInfo *)v5 setManifestURL:v16];

    v17 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_100089370[0]];
    [(BAApplicationInfo *)v5 setApplicationTeamIdentifier:v17];

    v18 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_1000893E8[0]];
    [(BAApplicationInfo *)v5 setLastPeriodicCheckTime:v18];

    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v19 = [NSArray arrayWithObjects:v46 count:2];
    v20 = [NSSet setWithArray:v19];
    v21 = [v6 decodeObjectOfClasses:v20 forKey:@"extensionRuntimeEvents"];
    v22 = [v21 mutableCopy];
    [(BAApplicationInfo *)v5 setExtensionRuntimeEvents:v22];

    v5->_awaitingNetworkConsent = 0;
    v23 = +[NSMutableDictionary dictionary];
    blocksAwaitingNetworkConsent = v5->_blocksAwaitingNetworkConsent;
    v5->_blocksAwaitingNetworkConsent = v23;

    if ([v6 containsValueForKey:off_1000893E0[0]])
    {
      -[BAApplicationInfo setUserForceQuitApp:](v5, "setUserForceQuitApp:", [v6 decodeBoolForKey:off_1000893E0[0]]);
    }

    if ([v6 containsValueForKey:off_1000893A8[0]])
    {
      v25 = objc_opt_class();
      v26 = off_1000893A8[0];
    }

    else
    {
      if (![v6 containsValueForKey:off_100089398[0]])
      {
        [(BAApplicationInfo *)v5 setOptionalAssetDownloadAllowance:0];
LABEL_12:
        if ([v6 containsValueForKey:off_1000893A0[0]])
        {
          v30 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_1000893A0[0]];
          -[BAApplicationInfo setEssentialAssetDownloadAllowance:](v5, "setEssentialAssetDownloadAllowance:", [v30 unsignedLongLongValue]);
        }

        if ([v6 containsValueForKey:off_100089390[0]])
        {
          v31 = objc_opt_class();
          v32 = off_100089390[0];
        }

        else
        {
          if (![v6 containsValueForKey:off_100089380[0]])
          {
            [(BAApplicationInfo *)v5 setOptionalAmountDownloaded:0];
            goto LABEL_20;
          }

          v31 = objc_opt_class();
          v32 = off_100089380[0];
        }

        v33 = [v6 decodeObjectOfClass:v31 forKey:v32];
        -[BAApplicationInfo setOptionalAmountDownloaded:](v5, "setOptionalAmountDownloaded:", [v33 unsignedLongLongValue]);

LABEL_20:
        if ([v6 containsValueForKey:off_1000893C0[0]])
        {
          v34 = [v6 decodeBoolForKey:off_1000893C0[0]];
        }

        else
        {
          v34 = 1;
        }

        [(BAApplicationInfo *)v5 setReceivedInstallingNotification:v34];
        if ([v6 containsValueForKey:off_1000893C8[0]])
        {
          v35 = [v6 decodeBoolForKey:off_1000893C8[0]];
        }

        else
        {
          v35 = 1;
        }

        [(BAApplicationInfo *)v5 setReceivedInstalledNotification:v35];
        if ([v6 containsValueForKey:off_100089378[0]])
        {
          v36 = [v6 decodeObjectOfClass:objc_opt_class() forKey:off_100089378[0]];
          [(BAApplicationInfo *)v5 setPersistentIdentifier:v36];
        }

        if ([v6 containsValueForKey:off_100089400[0]])
        {
          -[BAApplicationInfo setInstallSource:](v5, "setInstallSource:", [v6 decodeIntegerForKey:off_100089400[0]]);
        }

        if ([v6 containsValueForKey:off_100089408[0]])
        {
          v37 = [v6 decodeBoolForKey:off_100089408[0]];
        }

        else
        {
          v37 = 0;
        }

        [(BAApplicationInfo *)v5 setUsesAppleHosting:v37];
        if ([v6 containsValueForKey:off_100089410])
        {
          v38 = [v6 decodeBoolForKey:off_100089410];
        }

        else
        {
          v38 = 0;
        }

        [(BAApplicationInfo *)v5 setUsesAppleHosting:v38];
        v45[0] = objc_opt_class();
        v45[1] = objc_opt_class();
        v39 = [NSArray arrayWithObjects:v45 count:2];
        v40 = [NSSet setWithArray:v39];
        v41 = [v6 decodeObjectOfClasses:v40 forKey:off_1000893F0[0]];

        [(BAApplicationInfo *)v5 _populateAllowedDomainInfoWithArray:v41];
        v42 = [(BAApplicationInfo *)v5 appInfoRecursiveLock];
        [v42 unlock];

        goto LABEL_37;
      }

      v25 = objc_opt_class();
      v26 = off_100089398[0];
    }

    v29 = [v6 decodeObjectOfClass:v25 forKey:v26];
    -[BAApplicationInfo setOptionalAssetDownloadAllowance:](v5, "setOptionalAssetDownloadAllowance:", [v29 unsignedLongLongValue]);

    goto LABEL_12;
  }

  v27 = [(BAApplicationInfo *)v5 appInfoRecursiveLock];
  [v27 unlock];

  v28 = 0;
LABEL_38:

  return v28;
}

- (void)encodeWithCoder:(id)a3
{
  v29 = a3;
  v4 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v4 lock];

  v5 = [(BAApplicationInfo *)self applicationIdentifier];
  [v29 encodeObject:v5 forKey:off_100089368[0]];

  v6 = [NSNumber numberWithUnsignedLongLong:[(BAApplicationInfo *)self optionalAmountDownloaded]];
  [v29 encodeObject:v6 forKey:off_100089390[0]];

  v7 = [NSNumber numberWithUnsignedLongLong:[(BAApplicationInfo *)self essentialAmountDownloaded]];
  [v29 encodeObject:v7 forKey:off_100089388[0]];

  v8 = [NSNumber numberWithUnsignedLongLong:[(BAApplicationInfo *)self optionalAssetDownloadAllowance]];
  [v29 encodeObject:v8 forKey:off_1000893A8[0]];

  v9 = [NSNumber numberWithUnsignedLongLong:[(BAApplicationInfo *)self essentialAssetDownloadAllowance]];
  [v29 encodeObject:v9 forKey:off_1000893A0[0]];

  v10 = [(BAApplicationInfo *)self permittedForInitialBackgroundActivity];
  [v29 encodeBool:v10 forKey:off_1000893B0[0]];
  v11 = [(BAApplicationInfo *)self initialBackgroundCellularPolicy];
  [v29 encodeInteger:v11 forKey:off_1000893B8[0]];
  v12 = [(BAApplicationInfo *)self receivedInstallingNotification];
  [v29 encodeBool:v12 forKey:off_1000893C0[0]];
  v13 = [(BAApplicationInfo *)self receivedInstalledNotification];
  [v29 encodeBool:v13 forKey:off_1000893C8[0]];
  v14 = [(BAApplicationInfo *)self hasLaunchedApplication];
  [v29 encodeBool:v14 forKey:off_1000893D0[0]];
  v15 = [(BAApplicationInfo *)self lastApplicationLaunchTime];
  [v29 encodeObject:v15 forKey:off_1000893D8[0]];

  v16 = [(BAApplicationInfo *)self userForceQuitApp];
  [v29 encodeBool:v16 forKey:off_1000893E0[0]];
  v17 = [(BAApplicationInfo *)self lastPeriodicCheckTime];
  [v29 encodeObject:v17 forKey:off_1000893E8[0]];

  v18 = [(BAApplicationInfo *)self applicationTeamIdentifier];

  if (v18)
  {
    v19 = [(BAApplicationInfo *)self applicationTeamIdentifier];
    [v29 encodeObject:v19 forKey:off_100089370[0]];
  }

  v20 = [(BAApplicationInfo *)self persistentIdentifier];

  if (v20)
  {
    v21 = [(BAApplicationInfo *)self persistentIdentifier];
    [v29 encodeObject:v21 forKey:off_100089378[0]];
  }

  v22 = [(BAApplicationInfo *)self _serializableAllowedDomainInfo];
  [v29 encodeObject:v22 forKey:off_1000893F0[0]];
  v23 = [(BAApplicationInfo *)self manifestURL];
  [v29 encodeObject:v23 forKey:off_1000893F8[0]];

  v24 = [(BAApplicationInfo *)self extensionRuntimeEvents];
  [v29 encodeObject:v24 forKey:@"extensionRuntimeEvents"];

  v25 = [(BAApplicationInfo *)self installSource];
  [v29 encodeInteger:v25 forKey:off_100089400[0]];
  v26 = [(BAApplicationInfo *)self hasManagedAssetPacks];
  [v29 encodeBool:v26 forKey:off_100089408[0]];
  v27 = [(BAApplicationInfo *)self usesAppleHosting];
  [v29 encodeBool:v27 forKey:off_100089410];
  v28 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v28 unlock];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BAApplicationInfo *)self applicationIdentifier];
      v6 = [(BAApplicationInfo *)v4 applicationIdentifier];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)applicationState
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  applicationState = self->_applicationState;
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 unlock];

  return applicationState;
}

- (void)setApplicationState:(int64_t)a3
{
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  self->_applicationState = a3;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    [(BAApplicationInfo *)self applicationLaunched];
  }

  v6 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v6 unlock];
}

- (int64_t)applicationExtensionState
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  applicationExtensionState = self->_applicationExtensionState;
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 unlock];

  return applicationExtensionState;
}

- (void)setApplicationExtensionState:(int64_t)a3
{
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  self->_applicationExtensionState = a3;
  v6 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v6 unlock];
}

- (BOOL)userForceQuitApp
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  LOBYTE(v3) = self->_userForceQuitApp;
  v4 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v4 unlock];

  return v3;
}

- (void)setUserForceQuitApp:(BOOL)a3
{
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  self->_userForceQuitApp = a3;
  v6 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v6 unlock];
}

- (int64_t)installSource
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  installSource = self->_installSource;
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 unlock];

  return installSource;
}

- (void)setInstallSource:(int64_t)a3
{
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  self->_installSource = a3;
  v6 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v6 unlock];
}

- (void)determineInstallSourceIfUnsetFromAuditToken:(id *)a3
{
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  if (!self->_installSource)
  {
    v6 = [(BAApplicationInfo *)self applicationIdentifier];
    v7 = *&a3->var0[4];
    v9[0] = *a3->var0;
    v9[1] = v7;
    self->_installSource = [BAInstallationSourceUtilities installationSourceFromAuditToken:v9 applicationIdentifier:v6];
  }

  v8 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v8 unlock];
}

- (NSMutableArray)allowedDownloadDomains
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  v4 = [(NSMutableArray *)self->_allowedDownloadDomains copy];
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 unlock];

  return v4;
}

- (void)setAllowedDownloadDomains:(id)a3
{
  v4 = a3;
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  v6 = [NSMutableArray arrayWithArray:v4];

  allowedDownloadDomains = self->_allowedDownloadDomains;
  self->_allowedDownloadDomains = v6;

  v8 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v8 unlock];
}

- (NSMutableArray)allowedDownloadDomainWildcards
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  v4 = [(NSMutableArray *)self->_allowedDownloadDomainWildcards copy];
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 unlock];

  return v4;
}

- (void)setAllowedDownloadDomainWildcards:(id)a3
{
  v4 = a3;
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  v6 = [NSMutableArray arrayWithArray:v4];

  allowedDownloadDomainWildcards = self->_allowedDownloadDomainWildcards;
  self->_allowedDownloadDomainWildcards = v6;

  v8 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v8 unlock];
}

- (void)applicationPrepareWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  [v4 clientType];
  [(BAApplicationInfo *)self setPermittedForInitialBackgroundActivity:sub_100016294()];
  v6 = [v4 cellularPolicy];

  [(BAApplicationInfo *)self setInitialBackgroundCellularPolicy:v6];
  v7 = sub_1000104FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(BAApplicationInfo *)self applicationIdentifier];
    v9 = [(BAApplicationInfo *)self permittedForInitialBackgroundActivity];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Preparing app using descriptor for: %{public}@. Permitted for initial background activity: %{public}@", &v12, 0x16u);
  }

  [(BAApplicationInfo *)self setReceivedInstalledNotification:0];
  v11 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v11 unlock];
}

- (BOOL)receivedInstalledNotification
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  LOBYTE(v3) = self->_receivedInstalledNotification;
  v4 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v4 unlock];

  return v3;
}

- (void)setReceivedInstalledNotification:(BOOL)a3
{
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  self->_receivedInstalledNotification = a3;
  v6 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v6 unlock];
}

- (BOOL)receivedInstallingNotification
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  LOBYTE(v3) = self->_receivedInstallingNotification;
  v4 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v4 unlock];

  return v3;
}

- (void)setReceivedInstallingNotification:(BOOL)a3
{
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  self->_receivedInstallingNotification = a3;
  v6 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v6 unlock];
}

- (BOOL)awaitingNetworkConsent
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  LOBYTE(v3) = self->_awaitingNetworkConsent;
  v4 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v4 unlock];

  return v3;
}

- (BOOL)setAwaitingNetworkConsent:(BOOL)a3
{
  v3 = a3;
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  awaitingNetworkConsent = self->_awaitingNetworkConsent;
  if (awaitingNetworkConsent == v3)
  {
    v11 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [v11 unlock];
  }

  else
  {
    v7 = sub_1000104FC();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v8)
      {
        v9 = [(BAApplicationInfo *)self applicationIdentifier];
        v15 = 138543362;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "App awaiting network consent: %{public}@", &v15, 0xCu);
      }

      v10 = 0;
      self->_awaitingNetworkConsent = v3;
    }

    else
    {
      if (v8)
      {
        v12 = [(BAApplicationInfo *)self applicationIdentifier];
        v15 = 138543362;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "App no longer awaiting network consent: %{public}@", &v15, 0xCu);
      }

      self->_awaitingNetworkConsent = 0;
      v10 = [(NSMutableDictionary *)self->_blocksAwaitingNetworkConsent copy];
      [(NSMutableDictionary *)self->_blocksAwaitingNetworkConsent removeAllObjects];
    }

    v13 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [v13 unlock];

    if (v10)
    {
      [v10 enumerateKeysAndObjectsWithOptions:1 usingBlock:&stru_10007A128];
    }
  }

  return awaitingNetworkConsent != v3;
}

- (void)setPersistentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  persistentIdentifier = self->_persistentIdentifier;
  self->_persistentIdentifier = v4;

  v7 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v7 unlock];
}

- (NSData)persistentIdentifier
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  v4 = self->_persistentIdentifier;
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 unlock];

  return v4;
}

- (void)setHasManagedAssetPacks:(BOOL)a3
{
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  self->_hasManagedAssetPacks = a3;
  v6 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v6 unlock];
}

- (BOOL)hasManagedAssetPacks
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  LOBYTE(v3) = self->_hasManagedAssetPacks;
  v4 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v4 unlock];

  return v3;
}

- (void)setUsesAppleHosting:(BOOL)a3
{
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  self->_usesAppleHosting = a3;
  v6 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v6 unlock];
}

- (BOOL)usesAppleHosting
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  LOBYTE(v3) = self->_usesAppleHosting;
  v4 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v4 unlock];

  return v3;
}

- (void)applicationInstallingWithUpdateInstall:(BOOL)a3
{
  v3 = a3;
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  v6 = sub_1000104FC();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      v8 = [(BAApplicationInfo *)self applicationIdentifier];
      v11 = 138543362;
      v12 = v8;
      v9 = "Application is updating: %{public}@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);
    }
  }

  else if (v7)
  {
    v8 = [(BAApplicationInfo *)self applicationIdentifier];
    v11 = 138543362;
    v12 = v8;
    v9 = "Application is installing: %{public}@";
    goto LABEL_6;
  }

  [(BAApplicationInfo *)self setReceivedInstallingNotification:1];
  [(BAApplicationInfo *)self setReceivedInstalledNotification:0];
  [(BAApplicationInfo *)self setHasLaunchedApplication:0];
  [(BAApplicationInfo *)self setOptionalAmountDownloaded:0];
  [(BAApplicationInfo *)self setEssentialAmountDownloaded:0];
  [(BAApplicationInfo *)self resetExtensionRuntime];
  v10 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v10 unlock];
}

- (void)applicationInstalled
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  v4 = sub_1000104FC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(BAApplicationInfo *)self applicationIdentifier];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Application installed to final location: %{public}@", &v7, 0xCu);
  }

  [(BAApplicationInfo *)self setReceivedInstallingNotification:1];
  [(BAApplicationInfo *)self setReceivedInstalledNotification:1];
  v6 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v6 unlock];
}

- (void)updateApplicationWithInfoDictionary:(id)a3 applicationRecord:(id)a4 overrides:(id)a5
{
  v8 = a3;
  v52 = a4;
  v9 = a5;
  v10 = [v8 objectForKey:@"BAInitialDownloadRestrictions"];
  -[BAApplicationInfo setHasManagedAssetPacks:](self, "setHasManagedAssetPacks:", [v8 infoDictionaryHasManagedAssetPacks]);
  -[BAApplicationInfo setUsesAppleHosting:](self, "setUsesAppleHosting:", [v8 infoDictionaryUsesAppleHosting]);
  if (v10)
  {
    v11 = [v10 objectForKey:@"BADownloadDomainAllowList"];
    v12 = [v10 objectForKey:@"BAEssentialDownloadAllowance"];
    v13 = [v10 objectForKey:@"BADownloadAllowance"];
  }

  else if ([(BAApplicationInfo *)self usesAppleHosting])
  {
    v14 = sub_1000104FC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(BAApplicationInfo *)self applicationIdentifier];
      *buf = 138543362;
      v55 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "The application with the identifier “%{public}@” is configured to use Apple hosting.", buf, 0xCu);
    }

    v16 = [BADevelopmentOverrides URLForApplicationRecord:v52];
    v17 = [v16 host];

    if (v17)
    {
      v18 = sub_1000104FC();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(BAApplicationInfo *)self applicationIdentifier];
        *buf = 138543618;
        v55 = v16;
        v56 = 2114;
        v57 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Using the development-override URL “%{public}@” for the application with the identifier “%{public}@”…", buf, 0x16u);
      }

      v53[0] = @"*.apple.com";
      v20 = [v16 host];
      v53[1] = v20;
      v11 = [NSArray arrayWithObjects:v53 count:2];
    }

    else
    {
      v11 = &off_10007D470;
    }

    v12 = [NSNumber numberWithUnsignedLongLong:-1];
    v13 = [NSNumber numberWithUnsignedLongLong:-1];
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  v21 = [v8 objectForKey:@"BAManifestURL"];
  if (os_variant_has_internal_content())
  {
    v51 = v10;
    v22 = [v9 essentialDownloadAllowance];

    if (v22)
    {
      v23 = sub_1000104FC();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(BAApplicationInfo *)self applicationIdentifier];
        [v9 essentialDownloadAllowance];
        v26 = v25 = v11;
        *buf = 138543618;
        v55 = v24;
        v56 = 2114;
        v57 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Essential download allowance for %{public}@ overridden to %{public}@", buf, 0x16u);

        v11 = v25;
      }

      v27 = [v9 essentialDownloadAllowance];

      v12 = v27;
    }

    v28 = [v9 downloadAllowance];

    if (v28)
    {
      v29 = sub_1000104FC();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(BAApplicationInfo *)self applicationIdentifier];
        [v9 downloadAllowance];
        v32 = v31 = v11;
        *buf = 138543618;
        v55 = v30;
        v56 = 2114;
        v57 = v32;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Download allowance for %{public}@ overridden to %{public}@", buf, 0x16u);

        v11 = v31;
      }

      v33 = [v9 downloadAllowance];

      v13 = v33;
    }

    v34 = [v9 manifestURL];

    if (v34)
    {
      v35 = sub_1000104FC();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [(BAApplicationInfo *)self applicationIdentifier];
        [v9 manifestURL];
        v38 = v37 = v11;
        *buf = 138543618;
        v55 = v36;
        v56 = 2114;
        v57 = v38;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Manifest URL overridden for %{public}@ to %{public}@", buf, 0x16u);

        v11 = v37;
      }

      v39 = [v9 manifestURL];

      v21 = v39;
    }

    v40 = [v9 domainAllowlist];

    if (v40)
    {
      v41 = sub_1000104FC();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [(BAApplicationInfo *)self applicationIdentifier];
        [v9 domainAllowlist];
        v43 = v50 = v11;
        v44 = [v43 componentsJoinedByString:{@", "}];
        *buf = 138543618;
        v55 = v42;
        v56 = 2114;
        v57 = v44;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Domain allowlist for %{public}@ overridden to %{public}@", buf, 0x16u);

        v11 = v50;
      }

      v45 = [v9 domainAllowlist];

      v11 = v45;
    }

    v10 = v51;
  }

  v46 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v46 lock];

  [(BAApplicationInfo *)self _populateAllowedDomainInfoWithArray:v11];
  v47 = [v52 persistentIdentifier];
  [(BAApplicationInfo *)self setPersistentIdentifier:v47];

  -[BAApplicationInfo setOptionalAssetDownloadAllowance:](self, "setOptionalAssetDownloadAllowance:", [v13 unsignedLongLongValue]);
  -[BAApplicationInfo setEssentialAssetDownloadAllowance:](self, "setEssentialAssetDownloadAllowance:", [v12 unsignedLongLongValue]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = [NSURL URLWithString:v21];
    [(BAApplicationInfo *)self setManifestURL:v48];
  }

  v49 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v49 unlock];
}

- (id)extensionIdentityWithParentAppRecordPtr:(id *)a3
{
  v4 = self;
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 lock];

  v6 = [(BAApplicationInfo *)v4 applicationIdentifier];
  v7 = [v6 copy];

  LODWORD(v6) = [(BAApplicationInfo *)v4 receivedInstalledNotification];
  v8 = [(BAApplicationInfo *)v4 appInfoRecursiveLock];
  [v8 unlock];

  v9 = [objc_opt_class() extensionPointQueriesWithPostProcessing:v6 ^ 1];
  [_EXQueryController executeQueries:v9];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v44 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v38 = a3;
    v39 = v9;
    v13 = 0;
    v14 = *v42;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      v40 = v12;
      do
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v41 + 1) + 8 * v15);
        v18 = [v17 bundleIdentifier];
        v19 = [v18 hasPrefix:v7];

        if (v19)
        {
          v13 = v17;

          v20 = [(BAApplicationInfo *)v4 persistentIdentifier];
          v21 = [v13 containingBundleRecord];
          v22 = v21;
          if (v20)
          {
            if (v21)
            {
              [v21 persistentIdentifier];
              v23 = v14;
              v24 = v4;
              v25 = v7;
              v27 = v26 = v10;
              v28 = _LSPersistentIdentifierCompare();

              v10 = v26;
              v7 = v25;
              v4 = v24;
              v14 = v23;
              v12 = v40;
              if (v28 == 100)
              {
                v29 = v13;

                v9 = v39;
                if (!v29)
                {
                  goto LABEL_26;
                }

LABEL_19:
                v31 = [v29 containingBundleRecord];
                if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v32 = [v31 bundleIdentifier];
                  v33 = [v32 isEqualToString:v7];

                  if (v33)
                  {
                    if (v38)
                    {
                      v34 = v31;
                      *v38 = v31;
                    }

                    v35 = v29;
                    goto LABEL_32;
                  }

                  v36 = sub_100010584();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004BD8C(v31, v7, v36);
                  }
                }

                else
                {
                  v36 = sub_100010584();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004BE38(v29, v36);
                  }
                }

                v35 = 0;
LABEL_32:

                goto LABEL_33;
              }
            }
          }

          v16 = v13;
        }

        else
        {
          v13 = v16;
        }

        v15 = v15 + 1;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v9 = v39;
    if (v13)
    {
      v29 = v13;
      v30 = sub_100010584();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v46 = v7;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Could not find extension identity from persistant identifier, falling back to bundle identifier match. (ID:%{public}@)", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

LABEL_26:
  v29 = sub_100010584();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_10004BECC();
  }

  v35 = 0;
LABEL_33:

  return v35;
}

- (id)applicationSecurityGroups
{
  v2 = [(BAApplicationInfo *)self extensionIdentity];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [LSApplicationExtensionRecord alloc];
      v6 = [v3 url];
      v17 = 0;
      v7 = [v5 initWithURL:v6 requireValid:0 error:&v17];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 groupContainerURLs];
        v9 = [v8 allKeys];

        v10 = [v4 groupContainerURLs];
        v11 = [v10 allKeys];

        if (v9 && v11)
        {
          v12 = [NSSet setWithArray:v9];
          v13 = [NSSet setWithArray:v11];
          v14 = [v13 mutableCopy];

          [v14 intersectSet:v12];
          v15 = [v14 allObjects];
        }

        else
        {
          v15 = +[NSArray array];
        }
      }

      else
      {
        v15 = +[NSArray array];
      }
    }

    else
    {
      v15 = +[NSArray array];
    }
  }

  else
  {
    v15 = +[NSArray array];
  }

  return v15;
}

- (unint64_t)_remainingDownloadAllowanceWithNecessity:(int64_t)a3 isManifest:(BOOL)a4
{
  if (a4)
  {
    v5 = [(BAApplicationInfo *)self _remainingDownloadAllowanceWithNecessity:0 isManifest:0];
    return [(BAApplicationInfo *)self _remainingDownloadAllowanceWithNecessity:1 isManifest:0]+ v5;
  }

  else
  {
    if (a3 == 1)
    {
      v7 = [(BAApplicationInfo *)self essentialAssetDownloadAllowance];
      if (v7 < [(BAApplicationInfo *)self essentialAmountDownloaded])
      {
        [(BAApplicationInfo *)self setEssentialAmountDownloaded:[(BAApplicationInfo *)self essentialAssetDownloadAllowance]];
      }

      v8 = [(BAApplicationInfo *)self essentialAssetDownloadAllowance];
      v9 = [(BAApplicationInfo *)self essentialAmountDownloaded];
    }

    else
    {
      v10 = [(BAApplicationInfo *)self optionalAssetDownloadAllowance];
      if (v10 < [(BAApplicationInfo *)self optionalAmountDownloaded])
      {
        [(BAApplicationInfo *)self setOptionalAmountDownloaded:[(BAApplicationInfo *)self optionalAssetDownloadAllowance]];
      }

      v8 = [(BAApplicationInfo *)self optionalAssetDownloadAllowance];
      v9 = [(BAApplicationInfo *)self optionalAmountDownloaded];
    }

    return v8 - v9;
  }
}

- (BOOL)_consumeAllowanceShouldStopWithAdditionalBytes:(unint64_t)a3 downloadNecessity:(int64_t)a4 isManifest:(BOOL)a5
{
  v5 = a5;
  v9 = [(BAApplicationInfo *)self _remainingDownloadAllowanceWithNecessity:a4 isManifest:0];
  if (a4 != 1)
  {
    if (v9 > a3)
    {
      [(BAApplicationInfo *)self setOptionalAmountDownloaded:[(BAApplicationInfo *)self optionalAmountDownloaded]+ a3];
      return 0;
    }

    [(BAApplicationInfo *)self setOptionalAmountDownloaded:[(BAApplicationInfo *)self optionalAssetDownloadAllowance]];
    return 1;
  }

  if (v9 > a3)
  {
    [(BAApplicationInfo *)self setEssentialAmountDownloaded:[(BAApplicationInfo *)self essentialAmountDownloaded]+ a3];
    return 0;
  }

  if (!v5)
  {
    [(BAApplicationInfo *)self setEssentialAmountDownloaded:[(BAApplicationInfo *)self essentialAssetDownloadAllowance]];
    return 1;
  }

  return [(BAApplicationInfo *)self _consumeAllowanceShouldStopWithAdditionalBytes:a3 downloadNecessity:0 isManifest:1];
}

- (BOOL)allowsBackgroundActivity
{
  v4 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v4 lock];

  v5 = [(BAApplicationInfo *)self hasLaunchedApplication];
  if ((v5 & 1) != 0 || ![(BAApplicationInfo *)self permittedForInitialBackgroundActivity])
  {
    if ([(BAApplicationInfo *)self userForceQuitApp])
    {
      v7 = sub_1000104FC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(BAApplicationInfo *)self applicationIdentifier];
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Background activity denied for (%{public}@) because the app was terminated by the user.", &v13, 0xCu);
      }

      v6 = 0;
      v2 = 0;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
    v2 = 1;
  }

  v9 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v9 unlock];

  if (v6)
  {
    if (v5)
    {
      v10 = [(BAApplicationInfo *)self applicationIdentifier];
      v2 = [BAApplicationInfo applicationForIdentifierAllowsBackgroundActivity:v10];
    }

    else
    {
      v10 = sub_1000104FC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(BAApplicationInfo *)self applicationIdentifier];
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Background activity denied for (%{public}@) because the user has not launched the app.", &v13, 0xCu);
      }

      v2 = 0;
    }
  }

  return v2 & 1;
}

- (BOOL)shouldDoPeriodicCheck
{
  v3 = [(BAApplicationInfo *)self lastPeriodicCheckTime];
  v4 = [(BAApplicationInfo *)self lastApplicationLaunchTime];
  if (![(BAApplicationInfo *)self hasLaunchedApplication]|| ![(BAApplicationInfo *)self allowsBackgroundActivity])
  {
    goto LABEL_8;
  }

  [v4 timeIntervalSinceNow];
  if (v5 <= -604800.0)
  {
    if (v5 > -2419200.0)
    {
      v6 = 604800.0;
      goto LABEL_7;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v6 = 86400.0;
LABEL_7:
  [v3 timeIntervalSinceNow];
  v8 = v6 <= -v7;
LABEL_9:

  return v8;
}

- (double)extensionRuntime
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  v4 = [(BAApplicationInfo *)self extensionRuntimeEvents];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(BAApplicationInfo *)self extensionRuntimeEvents];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 isMoreThan24HoursAgo])
        {
          [v5 addObject:v12];
        }

        else
        {
          [v12 elapsedTime];
          v10 = v10 + v13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v14 = [(BAApplicationInfo *)self extensionRuntimeEvents];
  [v14 removeObjectsInArray:v5];

  v15 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v15 unlock];

  return v10;
}

- (void)resetExtensionRuntime
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  v4 = sub_1000104FC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(BAApplicationInfo *)self applicationIdentifier];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting extension runtime for: %{public}@", &v8, 0xCu);
  }

  v6 = [(BAApplicationInfo *)self extensionRuntimeEvents];
  [v6 removeAllObjects];

  v7 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v7 unlock];
}

- (void)willLaunchExtension
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  v4 = [(BAApplicationInfo *)self currentRuntime];

  if (v4)
  {
    [(BAApplicationInfo *)self extensionExited];
  }

  v7 = objc_alloc_init(BAExtensionRuntime);
  v5 = [(BAApplicationInfo *)self extensionRuntimeEvents];
  [v5 addObject:v7];

  [(BAApplicationInfo *)self setCurrentRuntime:v7];
  v6 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v6 unlock];
}

- (void)extensionExited
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  v4 = [(BAApplicationInfo *)self currentRuntime];

  if (v4)
  {
    v5 = [(BAApplicationInfo *)self currentRuntime];
    [v5 extensionExited];

    v6 = sub_1000104FC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(BAApplicationInfo *)self applicationIdentifier];
      v8 = [(BAApplicationInfo *)self currentRuntime];
      [v8 elapsedTime];
      v11 = 138543618;
      v12 = v7;
      v13 = 2050;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Extension for app identifier %{public}@ ran for %{public}.1f seconds.", &v11, 0x16u);
    }

    [(BAApplicationInfo *)self setCurrentRuntime:0];
  }

  v10 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v10 unlock];
}

- (void)donePeriodicCheck
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  v4 = +[NSDate date];
  [(BAApplicationInfo *)self setLastPeriodicCheckTime:v4];

  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 unlock];
}

- (void)applicationLaunched
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  if ((self->_applicationState & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    self->_applicationState = 5;
  }

  [(BAApplicationInfo *)self setHasLaunchedApplication:1];
  v4 = +[NSDate date];
  [(BAApplicationInfo *)self setLastApplicationLaunchTime:v4];

  [(BAApplicationInfo *)self setUserForceQuitApp:0];
  v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v5 unlock];
}

- (void)performAfterNetworkConsentProvided:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v8 lock];

  if (!self->_awaitingNetworkConsent)
  {
    v16 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [v16 unlock];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002F1C4;
    block[3] = &unk_100079838;
    v18 = v6;
    dispatch_async(v7, block);

    v14 = v18;
LABEL_6:

    goto LABEL_7;
  }

  v9 = [(BAApplicationInfo *)self blocksAwaitingNetworkConsent];
  v10 = objc_retainBlock(v6);
  [v9 setObject:v7 forKey:v10];

  v11 = [(BAApplicationInfo *)self blocksAwaitingNetworkConsent];
  v12 = [v11 count];

  v13 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v13 unlock];

  if (v12)
  {
    v14 = sub_1000104FC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(BAApplicationInfo *)self applicationIdentifier];
      *buf = 134218242;
      v20 = v12;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "There are %lu blocks enqueued awaiting network for identifier: %{public}@", buf, 0x16u);
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (void)_debugConsumeTime:(double)a3
{
  v11 = [NSDate dateWithTimeIntervalSinceNow:-a3];
  if (a3 <= 0.0)
  {
    v9 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [v9 lock];

    v10 = [(BAApplicationInfo *)self extensionRuntimeEvents];
    [v10 removeAllObjects];

    v5 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [(BAExtensionRuntime *)v5 unlock];
  }

  else
  {
    v5 = [[BAExtensionRuntime alloc] initWithStartDate:v11];
    [(BAExtensionRuntime *)v5 extensionExited];
    v6 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [v6 lock];

    v7 = [(BAApplicationInfo *)self extensionRuntimeEvents];
    [v7 addObject:v5];

    v8 = [(BAApplicationInfo *)self appInfoRecursiveLock];
    [v8 unlock];
  }
}

- (void)_populateAllowedDomainInfoWithArray:(id)a3
{
  v4 = a3;
  p_allowedDownloadDomainWildcards = &self->_allowedDownloadDomainWildcards;
  [(NSMutableArray *)self->_allowedDownloadDomainWildcards removeAllObjects];
  allowedDownloadDomains = self->_allowedDownloadDomains;
  p_allowedDownloadDomains = &self->_allowedDownloadDomains;
  [(NSMutableArray *)allowedDownloadDomains removeAllObjects];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (![v13 hasPrefix:{@"*", v18}])
        {
          v15 = [v13 _baassets_validUTI];
          v17 = p_allowedDownloadDomains;
          if (!v15)
          {
            goto LABEL_12;
          }

LABEL_11:
          [*v17 addObject:v15];
          goto LABEL_12;
        }

        v14 = [v13 _baassets_validUTIWithWildcard];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 length];
          v17 = p_allowedDownloadDomainWildcards;
          if (v16 > 1)
          {
            goto LABEL_11;
          }
        }

LABEL_12:
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (id)debugDescription
{
  v3 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v3 lock];

  v4 = [(BAApplicationInfo *)self applicationIdentifier];
  v18 = [(BAApplicationInfo *)self optionalAssetDownloadAllowance];
  v17 = [(BAApplicationInfo *)self essentialAssetDownloadAllowance];
  v5 = [(BAApplicationInfo *)self optionalAmountDownloaded];
  v6 = [(BAApplicationInfo *)self essentialAmountDownloaded];
  v7 = @"YES";
  if ([(BAApplicationInfo *)self receivedInstallingNotification])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(BAApplicationInfo *)self receivedInstalledNotification])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [(BAApplicationInfo *)self _serializableAllowedDomainInfo];
  v11 = [(BAApplicationInfo *)self lastPeriodicCheckTime];
  if (![(BAApplicationInfo *)self hasLaunchedApplication])
  {
    v7 = @"NO";
  }

  v12 = [(BAApplicationInfo *)self lastApplicationLaunchTime];
  [(BAApplicationInfo *)self extensionRuntime];
  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", CFSTR("Application Identifier: %@\nInitial (Optional Download Allowance: %llu\nInitial (Essential Download Allowance: %llu\nAmount Downloaded (Optional): %llu\nAmount Downloaded (Essential): %llu\nReceived Installing Notification: %@\nReceived Installed Notification: %@\nAllowed Domains: %@\nLast Check Time: %@\nApp Has Been Launched: %@\nLast Launch Time: %@\nExtension Runtime In Last 24h: %lf"), v4, v18, v17, v5, v6, v8, v9, v10, v11, v7, v12, v13);

  v15 = [(BAApplicationInfo *)self appInfoRecursiveLock];
  [v15 unlock];

  return v14;
}

@end