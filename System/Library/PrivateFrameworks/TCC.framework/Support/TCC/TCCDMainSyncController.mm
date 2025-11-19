@interface TCCDMainSyncController
+ (id)allowedClassesForWatchKitAppInfoUnarchiving;
+ (id)sharedSyncController;
- (BOOL)_initializeSyncEngineAfterDeviceUnlockHook;
- (BOOL)_initializeSyncEngineHook;
- (TCCDMainSyncController)init;
- (TCCDMainSyncController)initWithAsyncSyncEngineInitialization;
- (id)_beginResetSyncHook;
- (id)_changesFromUpdatingPerDeviceInstalledWatchKitApps:(id)a3 paringType:(unsigned int)a4;
- (id)_makePendingPostPairingContinuation:(id)a3;
- (id)_savedWatchKitAppInfoFile;
- (id)_syncStatusDescriptionString;
- (id)mainClientIdentifierForReplicaClientIdentifier:(id)a3;
- (id)replicaClientIdentifierForMainClientIdentifier:(id)a3;
- (void)_computeMainIdentifiersFromWatchKitAppInfo;
- (void)_didPairToNewDeviceHookWithContinuation:(id)a3;
- (void)_didReturnToPreviouslyPairedDeviceHookWithContinuation:(id)a3;
- (void)_didUnPairDeviceHook;
- (void)_failCoordinatorSyncSession:(id)a3 message:(id)a4 code:(int64_t)a5;
- (void)_getInstalledWatchKitAppsWithContinuation:(id)a3 pairingType:(unsigned int)a4;
- (void)_gotInstalledWatchKitApps:(id)a3 continuation:(id)a4 pairingType:(unsigned int)a5;
- (void)_handleAccessRequestMessageFromReplica:(id)a3;
- (void)_handlePairingSession;
- (void)_loadSavedWatchKitAppInfo;
- (void)_removeWatchKitAppInfoFile;
- (void)_sendSyncSessionDidFinishWithResult:(unsigned int)a3 error:(id)a4;
- (void)_updateInstalledWatchKitAppsWithBlock:(id)a3;
- (void)_writeSavedWatchKitAppInfo;
- (void)applicationDatabaseResyncedForDeviceWithPairingID:(id)a3;
- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)registerMainClientIdentifier:(id)a3 forReplicaClientIdentifier:(id)a4;
- (void)syncAccessUpdateForServiceIdentifier:(id)a3 clientIdentifier:(id)a4 clientType:(int)a5 accessStatus:(unint64_t)a6 authorizationVersion:(unint64_t)a7 flags:(int)a8 updateType:(unint64_t)a9;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4;
- (void)syncOverrideUpdateForServiceIdentifier:(id)a3 updateType:(unint64_t)a4;
- (void)testMainResetSync;
@end

@implementation TCCDMainSyncController

+ (id)sharedSyncController
{
  if (qword_1000C0F70 != -1)
  {
    sub_10005EFF4();
  }

  v3 = qword_1000C0F68;

  return v3;
}

+ (id)allowedClassesForWatchKitAppInfoUnarchiving
{
  if (qword_1000C0F80 != -1)
  {
    sub_10005F008();
  }

  v3 = qword_1000C0F78;

  return v3;
}

- (TCCDMainSyncController)init
{
  v4.receiver = self;
  v4.super_class = TCCDMainSyncController;
  v2 = [(TCCDSyncController *)&v4 init];
  if (v2)
  {
    [(TCCDMainSyncController *)v2 setPsySyncCoordinatorClass:off_1000C0908()];
    [(TCCDMainSyncController *)v2 setAcxDeviceConnectionClass:off_1000C0910()];
    if (![(TCCDMainSyncController *)v2 psySyncCoordinatorClass]|| ![(TCCDMainSyncController *)v2 acxDeviceConnectionClass])
    {

      return 0;
    }
  }

  return v2;
}

- (TCCDMainSyncController)initWithAsyncSyncEngineInitialization
{
  v2 = [(TCCDMainSyncController *)self init];
  v3 = v2;
  if (v2)
  {
    [(TCCDSyncController *)v2 setIsMain:1];
    [(TCCDSyncController *)v3 _beginAsyncSyncEngineInitialization];
  }

  return v3;
}

- (BOOL)_initializeSyncEngineHook
{
  v2 = self;
  v3 = [(objc_class *)[(TCCDMainSyncController *)self psySyncCoordinatorClass] syncCoordinatorWithServiceName:@"com.apple.pairedsync.tccd"];
  [(TCCDMainSyncController *)v2 setSyncCoordinator:v3];

  v4 = [(TCCDMainSyncController *)v2 syncCoordinator];
  [v4 setDelegate:v2];

  v5 = [(TCCDMainSyncController *)v2 syncCoordinator];
  LOBYTE(v2) = v5 != 0;

  return v2;
}

- (id)_savedWatchKitAppInfoFile
{
  v3 = [(TCCDSyncController *)self pairedDeviceStorageRoot];

  if (v3)
  {
    v4 = [(TCCDSyncController *)self pairedDeviceStorageRoot];
    v5 = [v4 stringByAppendingPathComponent:@"WatchKitApplications"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_removeWatchKitAppInfoFile
{
  v2 = [(TCCDMainSyncController *)self _savedWatchKitAppInfoFile];
  v3 = +[NSFileManager defaultManager];
  v4 = v3;
  if (v2 && v3)
  {
    v7 = 0;
    v5 = [v3 removeItemAtPath:v2 error:&v7];
    v6 = v7;
    if (v5)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
      {
        sub_10005F084();
      }
    }

    else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_10005F01C();
    }
  }
}

- (void)_computeMainIdentifiersFromWatchKitAppInfo
{
  v3 = objc_opt_new();
  [(TCCDMainSyncController *)self setPerDeviceMainIdentiferToReplicaIdentifier:v3];

  v4 = [(TCCDMainSyncController *)self perDeviceReplicaIdentiferToWatchAppInfo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B738;
  v5[3] = &unk_1000A4EE0;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

- (void)_loadSavedWatchKitAppInfo
{
  v3 = [(TCCDMainSyncController *)self _savedWatchKitAppInfoFile];
  if (v3)
  {
    v4 = [NSData dataWithContentsOfFile:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_new();
  [(TCCDMainSyncController *)self setPerDeviceReplicaIdentiferToWatchAppInfo:v5];

  v6 = objc_opt_new();
  [(TCCDMainSyncController *)self setPerDeviceMainIdentiferToReplicaIdentifier:v6];

  if (v4)
  {
    v7 = +[TCCDMainSyncController allowedClassesForWatchKitAppInfoUnarchiving];
    v22 = 0;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v4 error:&v22];
    v9 = v22;

    if (!v8)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_10005F284();
      }

      goto LABEL_27;
    }

    v10 = [v8 objectForKeyedSubscript:@"version"];
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v20 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v24 = v3;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Unversioned archive WatchKit data in: %{public}@", buf, 0xCu);
      }

      goto LABEL_26;
    }

    v11 = v10;
    v12 = [v11 integerValue];
    if (v12 != 3)
    {
      if (v12 != 2)
      {
LABEL_23:
        v21 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
        {
          sub_10005F1C0(v3, v11, v21);
        }

LABEL_26:
LABEL_27:

        goto LABEL_28;
      }

      v13 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Processing archive version 2 from %@", buf, 0xCu);
      }

      [(TCCDSyncController *)self setPendingSyncType:1];
      [(TCCDMainSyncController *)self _removeWatchKitAppInfoFile];
    }

    v14 = [v8 objectForKeyedSubscript:@"root"];
    if (v14)
    {
      v15 = v14;
      v16 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
      {
        v17 = v16;
        v18 = [v15 count];
        *buf = 134218242;
        v24 = v18;
        v25 = 2112;
        v26 = v3;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Loaded %lu WatchKit App Info dicts from %@", buf, 0x16u);
      }

      v19 = [v15 mutableCopy];
      [(TCCDMainSyncController *)self setPerDeviceReplicaIdentiferToWatchAppInfo:v19];

      [(TCCDMainSyncController *)self _computeMainIdentifiersFromWatchKitAppInfo];
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005F2EC();
  }

LABEL_28:
}

- (void)_writeSavedWatchKitAppInfo
{
  v3 = [(TCCDMainSyncController *)self _savedWatchKitAppInfoFile];
  v4 = [(TCCDMainSyncController *)self perDeviceReplicaIdentiferToWatchAppInfo];

  if (v4)
  {
    v22[0] = @"version";
    v5 = +[TCCDMainSyncController currentArchiveVersion];
    v22[1] = @"root";
    v23[0] = v5;
    v6 = [(TCCDMainSyncController *)self perDeviceReplicaIdentiferToWatchAppInfo];
    v23[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

    v15 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v15];
    v9 = v15;
    v10 = qword_1000C12F8;
    if (v3 && v8)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v17 = v3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Writing WatchKitAppInfo to: %{public}@", buf, 0xCu);
      }

      v14 = 0;
      v11 = [v8 writeToFile:v3 options:1 error:&v14];
      v12 = v14;
      v13 = qword_1000C12F8;
      if (v11)
      {
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v17 = v3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Wrote WatchKitAppInfo to: %{public}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_10005F35C();
      }
    }

    else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v17 = v8;
      v18 = 2114;
      v19 = v3;
      v20 = 2114;
      v21 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create archive: %p for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_10005F3C4();
  }
}

- (id)_changesFromUpdatingPerDeviceInstalledWatchKitApps:(id)a3 paringType:(unsigned int)a4
{
  v6 = a3;
  v7 = [(TCCDMainSyncController *)self perDeviceReplicaIdentiferToWatchAppInfo];
  v68 = [v7 mutableCopy];

  v66 = objc_opt_new();
  v67 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v8 = v6;
  v9 = &qword_1000C12F8;
  v65 = v8;
  v71 = [v8 countByEnumeratingWithState:&v81 objects:v96 count:16];
  if (v71)
  {
    v69 = *v82;
    *&v10 = 138412802;
    v62 = v10;
    v64 = self;
    v63 = a4;
    do
    {
      v11 = 0;
      do
      {
        if (*v82 != v69)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v81 + 1) + 8 * v11);
        v13 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          v22 = v13;
          v23 = [v12 bundleIdentifier];
          v24 = [v12 companionAppBundleID];
          v25 = [v12 applicationType];
          *buf = v62;
          v91 = v23;
          v92 = 2112;
          v93 = v24;
          v94 = 2048;
          v95 = v25;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "fetched Remote app %@: companion: %@; type: %lu", buf, 0x20u);
        }

        if ([v12 applicationType] == 2 || objc_msgSend(v12, "applicationType") == 1)
        {
          v14 = [(TCCDMainSyncController *)self perDeviceReplicaIdentiferToWatchAppInfo];
          v15 = [v12 bundleIdentifier];
          v16 = [v14 objectForKeyedSubscript:v15];

          if (v16)
          {
            v17 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
            {
              sub_10005F400(v89, v17);
            }

            v18 = [v12 bundleIdentifier];
            [v68 removeObjectForKey:v18];

            if (a4 == 2)
            {
              v19 = [v12 bundleIdentifier];
              [v67 addObject:v19];
              goto LABEL_35;
            }

            goto LABEL_36;
          }

          v19 = [v12 companionAppBundleID];
          if ([v12 applicationMode] == 3)
          {
            v20 = [v12 counterpartIdentifiers];
            if ([v20 count])
            {
              v21 = [v12 applicationType];

              if (v21 == 1)
              {
                goto LABEL_21;
              }
            }

            else
            {
            }

            v26 = [v12 bundleIdentifier];

            v19 = v26;
          }

LABEL_21:
          if ([v12 applicationType] == 1 && !v19)
          {
            v27 = [v12 counterpartIdentifiers];
            v28 = v27;
            if (v27 && [v27 count])
            {
              v19 = [v28 objectAtIndexedSubscript:0];
            }

            else
            {
              v19 = 0;
            }
          }

          if (v19)
          {
            v87 = @"companionAppBundleId";
            v88 = v19;
            v29 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
            v30 = [(TCCDMainSyncController *)self perDeviceReplicaIdentiferToWatchAppInfo];
            [v12 bundleIdentifier];
            v31 = self;
            v33 = v32 = v9;
            [v30 setObject:v29 forKeyedSubscript:v33];

            v34 = [v29 objectForKeyedSubscript:@"companionAppBundleId"];
            v35 = [v12 bundleIdentifier];
            v36 = [(TCCDMainSyncController *)v31 perDeviceMainIdentiferToReplicaIdentifier];
            [v36 setObject:v35 forKeyedSubscript:v34];

            v37 = v32;
            v38 = *v32;
            if (os_log_type_enabled(*v32, OS_LOG_TYPE_INFO))
            {
              v39 = v38;
              v40 = [v12 bundleIdentifier];
              *buf = 138412546;
              v91 = v40;
              v92 = 2112;
              v93 = v34;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "New WatchKit application id: %@ -> main id: %@", buf, 0x16u);
            }

            v41 = [v12 bundleIdentifier];
            [v66 addObject:v41];

            self = v64;
            v8 = v65;
            v9 = v37;
            a4 = v63;
          }

          else if ([v12 applicationType] == 2)
          {
            v42 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
            {
              sub_10005F464(v86, v42);
            }
          }

LABEL_35:

LABEL_36:
        }

        v11 = v11 + 1;
      }

      while (v71 != v11);
      v71 = [v8 countByEnumeratingWithState:&v81 objects:v96 count:16];
    }

    while (v71);
  }

  v43 = objc_opt_new();
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_10000C670;
  v80[3] = &unk_1000A4EE0;
  v80[4] = self;
  [v68 enumerateKeysAndObjectsUsingBlock:v80];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_10000C73C;
  v77[3] = &unk_1000A4F08;
  v77[4] = self;
  v44 = v43;
  v78 = v44;
  v45 = v66;
  v79 = v45;
  [v67 enumerateObjectsUsingBlock:v77];
  v46 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10005F4D8(v46);
  }

  if ([v45 count])
  {
    v70 = v44;
    v72 = v45;
    v47 = sub_10001E738();
    v48 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10005F568(v48);
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v49 = v47;
    v50 = [v49 countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v74;
      do
      {
        v53 = 0;
        do
        {
          if (*v74 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v73 + 1) + 8 * v53);
          v55 = [(TCCDMainSyncController *)self perDeviceMainIdentiferToReplicaIdentifier];
          v56 = [v54 mainClientIdentifier];
          v57 = [v55 objectForKeyedSubscript:v56];

          if (v57)
          {
            if ([v72 containsObject:v57])
            {
              [v54 setReplicaClientIdentifier:v57];
              [v54 setSyncChangeType:1];
              [v70 addObject:v54];
              v58 = qword_1000C12F8;
              if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
              {
                sub_10005F5F8(buf, v58);
              }
            }
          }

          v53 = v53 + 1;
        }

        while (v51 != v53);
        v51 = [v49 countByEnumeratingWithState:&v73 objects:v85 count:16];
      }

      while (v51);
    }

    v8 = v65;
    v44 = v70;
    v45 = v72;
  }

  if ([v45 count] || objc_msgSend(v68, "count"))
  {
    [(TCCDMainSyncController *)self _writeSavedWatchKitAppInfo];
  }

  v59 = v79;
  v60 = v44;

  return v44;
}

- (void)_gotInstalledWatchKitApps:(id)a3 continuation:(id)a4 pairingType:(unsigned int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  v10 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v18 = 134217984;
    v19 = [v8 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Got %lu installed WatchKit applications", &v18, 0xCu);
  }

  v12 = [(TCCDMainSyncController *)self _changesFromUpdatingPerDeviceInstalledWatchKitApps:v8 paringType:v5];
  v13 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [(TCCDMainSyncController *)self perDeviceReplicaIdentiferToWatchAppInfo];
    v16 = [v15 count];
    v17 = [v12 count];
    v18 = 134218240;
    v19 = v16;
    v20 = 2048;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Got %lu currently installed WatchKit applications; results in %lu changes", &v18, 0x16u);
  }

  v9[2](v9, v12);
}

- (void)_getInstalledWatchKitAppsWithContinuation:(id)a3 pairingType:(unsigned int)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Getting installed WatchKit applications...", buf, 2u);
  }

  v9 = [(TCCDMainSyncController *)self acxDeviceConnection];
  v10 = [(TCCDSyncController *)self pairedDevice];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000CC64;
  v20[3] = &unk_1000A4FA8;
  v20[4] = self;
  v11 = v6;
  v24 = a4;
  v22 = v11;
  v23 = &v26;
  v12 = v7;
  v21 = v12;
  [v9 enumerateInstalledApplicationsOnPairedDevice:v10 withBlock:v20];

  if (*(v27 + 6))
  {
    v13 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Getting locally available WatchKit applications...", buf, 2u);
    }

    v14 = [(TCCDMainSyncController *)self acxDeviceConnection];
    v15 = [(TCCDSyncController *)self pairedDevice];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000D0D8;
    v16[3] = &unk_1000A4FD0;
    v16[4] = self;
    v17 = v12;
    v18 = v11;
    v19 = a4;
    [v14 enumerateLocallyAvailableApplicationsForPairedDevice:v15 options:1 withBlock:v16];
  }

  _Block_object_dispose(&v26, 8);
}

- (BOOL)_initializeSyncEngineAfterDeviceUnlockHook
{
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005F934();
  }

  v3 = [(objc_class *)[(TCCDMainSyncController *)self acxDeviceConnectionClass] sharedDeviceConnection];
  [(TCCDMainSyncController *)self setAcxDeviceConnection:v3];

  v4 = [(TCCDMainSyncController *)self acxDeviceConnection];

  if (v4)
  {
    objc_initWeak(&location, self);
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_10005F9AC();
    }

    v5 = [(TCCDSyncController *)self messageController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000D4A4;
    v7[3] = &unk_1000A4FF8;
    objc_copyWeak(&v8, &location);
    [v5 setIncomingMessageType:@"TCCDSyncMessageTypeReplicaAccessRequestForService" handler:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_10005F970();
  }

  return v4 != 0;
}

- (id)_makePendingPostPairingContinuation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000D604;
  v9[3] = &unk_1000A5020;
  objc_copyWeak(&v11, &location);
  v5 = v4;
  v10 = v5;
  v6 = objc_retainBlock(v9);
  v7 = [v6 copy];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (void)_didReturnToPreviouslyPairedDeviceHookWithContinuation:(id)a3
{
  v4 = a3;
  v5 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_didReturnToPreviouslyPairedDeviceHookWithContinuation", v9, 2u);
  }

  v6 = [(TCCDMainSyncController *)self acxDeviceConnection];
  [v6 addObserver:self];

  [(TCCDMainSyncController *)self _loadSavedWatchKitAppInfo];
  v7 = [(TCCDMainSyncController *)self _makePendingPostPairingContinuation:v4];
  [(TCCDMainSyncController *)self setPendingPostPairingContinuation:v7];

  v8 = [(TCCDMainSyncController *)self pendingPostPairingContinuation];
  [(TCCDMainSyncController *)self _getInstalledWatchKitAppsWithContinuation:v8 pairingType:1];
}

- (void)_handlePairingSession
{
  v3 = [(PSYSyncCoordinator *)self->_syncCoordinator activeSyncSession];
  v4 = [(TCCDMainSyncController *)self pendingPostPairingContinuation];

  if (v4 && v3)
  {
    v5 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = [v3 pairedDevice];
      v8 = off_1000C0A50();
      v9 = [v7 valueForProperty:v8];
      v10 = [v3 syncSessionType];
      v11 = (off_1000C0A58)(v10);
      v19 = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Handling new pairing session to: %{public}@ for '%{public}@' Session Type.", &v19, 0x16u);
    }

    if ([v3 syncSessionType])
    {
      [(TCCDMainSyncController *)self _loadSavedWatchKitAppInfo];
    }

    else
    {
      v15 = objc_opt_new();
      [(TCCDMainSyncController *)self setPerDeviceReplicaIdentiferToWatchAppInfo:v15];

      v16 = objc_opt_new();
      [(TCCDMainSyncController *)self setPerDeviceMainIdentiferToReplicaIdentifier:v16];
    }

    [(TCCDSyncController *)self setPendingSyncType:1];
    v17 = [(TCCDMainSyncController *)self acxDeviceConnection];
    [v17 addObserver:self];

    v18 = [(TCCDMainSyncController *)self pendingPostPairingContinuation];
    [(TCCDMainSyncController *)self _getInstalledWatchKitAppsWithContinuation:v18 pairingType:3];
  }

  else
  {
    v12 = [(TCCDMainSyncController *)self pendingPostPairingContinuation];

    if (!v12)
    {
      v13 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Waiting on CompanionSync didPair callback.", &v19, 2u);
      }
    }

    if (!v3)
    {
      v14 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Waiting on PSYServiceSyncSession to start.", &v19, 2u);
      }
    }
  }
}

- (void)_didPairToNewDeviceHookWithContinuation:(id)a3
{
  v4 = a3;
  v5 = [(TCCDSyncController *)self pairedDevice];
  v6 = off_1000C0A48(v5);

  v7 = qword_1000C12F8;
  if (v6 > 0x10001)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109120;
      v9[1] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Newly paired device OS version: 0x%x", v9, 8u);
    }

    v8 = [(TCCDMainSyncController *)self _makePendingPostPairingContinuation:v4];
    [(TCCDMainSyncController *)self setPendingPostPairingContinuation:v8];

    [(TCCDMainSyncController *)self _handlePairingSession];
  }

  else
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_10005FA30();
    }

    [(TCCDSyncController *)self _setSyncingEnabled:0];
  }
}

- (void)_didUnPairDeviceHook
{
  v3 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_didUnPairDeviceHook", v7, 2u);
  }

  syncCoordinator = self->_syncCoordinator;
  if (syncCoordinator)
  {
    v5 = [(PSYSyncCoordinator *)syncCoordinator activeSyncSession];
    if (v5 && os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_10005FAA4();
    }
  }

  v6 = [(TCCDMainSyncController *)self acxDeviceConnection];
  [v6 removeObserver:self];

  [(TCCDMainSyncController *)self setPendingPostPairingContinuation:0];
}

- (id)_beginResetSyncHook
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = sub_10001E738();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 mainClientIdentifier];
        v11 = [(TCCDMainSyncController *)self replicaClientIdentifierForMainClientIdentifier:v10];

        if (v11)
        {
          [v9 setReplicaClientIdentifier:v11];
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  v12 = objc_alloc_init(NSMutableArray);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001046C;
  v20[3] = &unk_1000A5188;
  v13 = v12;
  v21 = v13;
  if (db_eval("SELECT service FROM access_overrides", 0, v20))
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_10005FAE0();
    }

    _db_error(0);
  }

  [v3 addObjectsFromArray:v13];
  v14 = [v3 copy];

  return v14;
}

- (void)_failCoordinatorSyncSession:(id)a3 message:(id)a4 code:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_FAULT))
    {
      sub_10005FB68();
    }

    v11 = NSLocalizedDescriptionKey;
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.tccd.TCCDSyncControllerErrorDomain" code:a5 userInfo:v9];
    [v7 syncDidFailWithError:v10];
  }
}

- (void)_sendSyncSessionDidFinishWithResult:(unsigned int)a3 error:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(TCCDMainSyncController *)self syncCoordinator];
  if (v7)
  {
    v8 = [(TCCDMainSyncController *)self syncCoordinator];
    v9 = [v8 activeSyncSession];
  }

  else
  {
    v9 = 0;
  }

  v10 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = sub_100014FFC(v4);
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Main: Send-Sync Session did finish: %{public}@, error: %@", buf, 0x16u);
  }

  if (v4 <= 3)
  {
    if (v4 >= 3)
    {
      if (v4 == 3)
      {
        v13 = @"Unable send sync data: session cancelled.";
        v14 = self;
        v15 = v9;
        v16 = 1003;
        goto LABEL_24;
      }
    }

    else if (v9)
    {
      v17 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Issuing [PSYServiceSyncSession syncDidComplete]", buf, 2u);
      }

      [v9 syncDidComplete];
    }
  }

  else
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        v13 = @"Unable send sync data: CompanionSync session failed.";
        v14 = self;
        v15 = v9;
        v16 = 1000;
      }

      else
      {
        v13 = @"Unable send sync data: retry failure.";
        v14 = self;
        v15 = v9;
        v16 = 1001;
      }

      goto LABEL_24;
    }

    switch(v4)
    {
      case 6:
        v13 = @"Unable send sync data: too many retries.";
        v14 = self;
        v15 = v9;
        v16 = 1002;
        goto LABEL_24;
      case 7:
        v13 = @"Unable send sync data: process may shutdown.";
        v14 = self;
        v15 = v9;
        v16 = 1004;
        goto LABEL_24;
      case 8:
        v13 = @"Unable send sync data: AppConduit error.";
        v14 = self;
        v15 = v9;
        v16 = 1005;
LABEL_24:
        [(TCCDMainSyncController *)v14 _failCoordinatorSyncSession:v15 message:v13 code:v16];
        break;
    }
  }

  v18.receiver = self;
  v18.super_class = TCCDMainSyncController;
  [(TCCDSyncController *)&v18 _sendSyncSessionDidFinishWithResult:v4 error:v6];
}

- (void)_handleAccessRequestMessageFromReplica:(id)a3
{
  v4 = a3;
  v5 = [TCCDSyncRequestAccessAction requestAccessActionFromIDSMessage:v4 mainSyncController:self];
  if (v5)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_10005FBDC();
    }

    sub_10001C74C(v5);
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_10005FC58();
  }
}

- (id)replicaClientIdentifierForMainClientIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000074C0;
  v16 = sub_100007560;
  v17 = 0;
  v5 = [(TCCDSyncController *)self syncControllerQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E444;
  v9[3] = &unk_1000A5048;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  sub_100014EEC(v5, self, v9);

  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005FCC8();
  }

  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)mainClientIdentifierForReplicaClientIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000074C0;
  v16 = sub_100007560;
  v17 = 0;
  v5 = [(TCCDSyncController *)self syncControllerQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E65C;
  v9[3] = &unk_1000A5070;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  sub_100014EEC(v5, self, v9);

  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005FD4C();
  }

  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)registerMainClientIdentifier:(id)a3 forReplicaClientIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TCCDSyncController *)self syncControllerQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E7F4;
  v11[3] = &unk_1000A5098;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  sub_100014EEC(v8, self, v11);
}

- (void)syncAccessUpdateForServiceIdentifier:(id)a3 clientIdentifier:(id)a4 clientType:(int)a5 accessStatus:(unint64_t)a6 authorizationVersion:(unint64_t)a7 flags:(int)a8 updateType:(unint64_t)a9
{
  v12 = *&a5;
  v15 = a3;
  v16 = a4;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005FDD0();
  }

  v17 = [(TCCDMainSyncController *)self replicaClientIdentifierForMainClientIdentifier:v16];
  if (v17)
  {
    LODWORD(v18) = a8;
    [(TCCDSyncController *)self syncAccessUpdateForServiceIdentifier:v15 mainClientIdentifier:v16 replicaClientIdentifier:v17 clientType:v12 accessStatus:a6 authorizationVersion:a7 flags:v18 updateType:a9];
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_10005FE58();
  }
}

- (void)syncOverrideUpdateForServiceIdentifier:(id)a3 updateType:(unint64_t)a4
{
  v6 = a3;
  if ([(TCCDSyncController *)self isSyncingEnabled])
  {
    v7 = [(TCCDSyncAccessAction *)[TCCDSyncOverrideAccessAction alloc] initWithServiceIdentifier:v6];
    [(TCCDSyncController *)self syncAccessAction:v7 updateType:a4];
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005FEE0();
  }
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v6 = a3;
  v7 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005FF60(v7, a4);
  }

  v8 = [(TCCDSyncController *)self syncControllerQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000ECB4;
  v10[3] = &unk_1000A50C0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  sub_100014F74(v8, self, v10);
}

- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4
{
  v6 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_100060100(v6, a4, a3);
  }
}

- (void)_updateInstalledWatchKitAppsWithBlock:(id)a3
{
  v4 = a3;
  v5 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating Watch app list...", buf, 2u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000F0DC;
  v12[3] = &unk_1000A5110;
  v12[4] = self;
  v13 = v4;
  v6 = v4;
  v7 = objc_retainBlock(v12);
  v8 = [(TCCDSyncController *)self syncControllerQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000F1C8;
  v10[3] = &unk_1000A5138;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  sub_100014F74(v8, self, v10);
}

- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TCCDSyncController *)self pairedDevice];
  v9 = off_1000C0920();
  v10 = [v8 valueForProperty:v9];

  if ([v10 isEqual:v7])
  {
    if ([(TCCDMainSyncController *)self waitingForACXResync])
    {
      v11 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ACX applicationsInstalled: skipping due to waitingForACXResync.", buf, 2u);
      }
    }

    else if ([v6 count])
    {
      v24 = self;
      v12 = objc_alloc_init(NSMutableString);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v25 = v6;
      v13 = v6;
      v14 = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v26 + 1) + 8 * i);
            v19 = [v18 bundleIdentifier];
            v20 = [v18 companionAppBundleID];
            v21 = v20;
            if (v20)
            {
              v22 = v20;
            }

            else
            {
              v22 = @"--";
            }

            [v12 appendFormat:@"\t%@ : %@\n", v19, v22];
          }

          v15 = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v15);
      }

      v23 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v12;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ACX applicationsInstalled: new remote apps:\n%{public}@", buf, 0xCu);
      }

      [(TCCDMainSyncController *)v24 _updateInstalledWatchKitApps];

      v6 = v25;
    }
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100060210();
  }
}

- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TCCDSyncController *)self pairedDevice];
  v9 = off_1000C0920();
  v10 = [v8 valueForProperty:v9];

  if ([v10 isEqual:v7])
  {
    v32 = self;
    if ([(TCCDMainSyncController *)self waitingForACXResync])
    {
      v11 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ACX applicationsUninstalled: skipping due to waitingForACXResync.", buf, 2u);
      }
    }

    else if ([v6 count])
    {
      v29 = v10;
      v30 = v7;
      v12 = objc_alloc_init(NSMutableString);
      v33 = objc_alloc_init(NSMutableArray);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v31 = v6;
      v13 = v6;
      v14 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
      v15 = self;
      if (v14)
      {
        v16 = v14;
        v17 = *v37;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            [v12 appendFormat:@"\t%@\n", v19];
            v20 = [(TCCDMainSyncController *)v15 mainClientIdentifierForReplicaClientIdentifier:v19];
            v21 = v20;
            if (v20)
            {
              if ([v20 isEqualToString:v19])
              {
                [v33 addObject:v19];
              }

              else
              {
                v22 = [LSApplicationProxy applicationProxyForIdentifier:v21];
                v23 = v22;
                if (!v22 || ([v22 appState], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isInstalled"), v24, v15 = v32, (v25 & 1) == 0))
                {
                  [v33 addObject:v21];
                }
              }
            }
          }

          v16 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v16);
      }

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10000F844;
      v34[3] = &unk_1000A4F58;
      v26 = v33;
      v35 = v26;
      v27 = objc_retainBlock(v34);
      v28 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v41 = v12;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "ACX applicationsUninstalled: uninstalled WatchKit bundle IDs:\n%{public}@", buf, 0xCu);
      }

      [(TCCDMainSyncController *)v15 _updateInstalledWatchKitAppsWithBlock:v27];

      v7 = v30;
      v6 = v31;
      v10 = v29;
    }
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100060278();
  }
}

- (void)applicationDatabaseResyncedForDeviceWithPairingID:(id)a3
{
  v4 = a3;
  [(TCCDMainSyncController *)self setWaitingForACXResync:0];
  v5 = [(TCCDSyncController *)self pairedDevice];
  v6 = off_1000C0920();
  v7 = [v5 valueForProperty:v6];

  if ([v7 isEqual:v4])
  {
    v8 = [(TCCDMainSyncController *)self pendingPostPairingContinuation];

    v9 = qword_1000C12F8;
    v10 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AppConduit Database Resync with pendingPostPairingContinuation; get installed WatchKit apps list.", buf, 2u);
      }

      v11 = [(TCCDSyncController *)self syncControllerQueue];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000FBC8;
      v15[3] = &unk_1000A4F58;
      v15[4] = self;
      sub_100014F74(v11, self, v15);
      goto LABEL_10;
    }

    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AppConduit Database Resync; update installed WatchKit apps list.", buf, 2u);
    }

    [(TCCDMainSyncController *)self _updateInstalledWatchKitApps];
  }

  else
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_1000602E0();
    }

    v12 = [(TCCDMainSyncController *)self syncCoordinator];
    v13 = [v12 activeSyncSession];

    if (v13)
    {
      v11 = [(TCCDSyncController *)self syncControllerQueue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10000FC24;
      v14[3] = &unk_1000A4F58;
      v14[4] = self;
      sub_100014EEC(v11, self, v14);
LABEL_10:
    }
  }
}

- (id)_syncStatusDescriptionString
{
  v3 = objc_opt_new();
  v19.receiver = self;
  v19.super_class = TCCDMainSyncController;
  v4 = [(TCCDSyncController *)&v19 _syncStatusDescriptionString];
  [v3 appendFormat:@"%@\n\n", v4];

  [v3 appendFormat:@"Main Sync Status:\n"];
  syncCoordinator = self->_syncCoordinator;
  if (syncCoordinator)
  {
    v6 = [(PSYSyncCoordinator *)syncCoordinator activeSyncSession];
    if (v6)
    {
      v7 = [(PSYSyncCoordinator *)self->_syncCoordinator serviceName];
      v8 = [v6 pairedDevice];
      v9 = off_1000C0A50();
      v10 = [v8 valueForProperty:v9];
      [v3 appendFormat:@" _syncCoordinator: %@, PSYServiceSyncSession device name: %@\n", v7, v10];
    }
  }

  v11 = [(TCCDMainSyncController *)self syncCoordinator];
  v12 = [v11 activeSyncSession];

  if (v12)
  {
    [v3 appendFormat:@"  -> syncCoordinator.activeSyncSession\n"];
  }

  v13 = [(TCCDMainSyncController *)self pendingPostPairingContinuation];

  if (v13)
  {
    [v3 appendFormat:@"  -> pendingPostPairingContinuation\n"];
  }

  if ([(TCCDMainSyncController *)self waitingForACXResync])
  {
    [v3 appendFormat:@"  -> waitingForACXResync\n"];
  }

  v14 = [(TCCDMainSyncController *)self acxDeviceConnection];

  if (v14)
  {
    [v3 appendFormat:@"  perDeviceMainIdentiferToReplicaIdentifier mapping:\n"];
    v15 = [(TCCDMainSyncController *)self perDeviceMainIdentiferToReplicaIdentifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000FE9C;
    v17[3] = &unk_1000A5160;
    v18 = v3;
    [v15 enumerateKeysAndObjectsUsingBlock:v17];
  }

  [v3 appendFormat:@"\n"];

  return v3;
}

- (void)testMainResetSync
{
  v3 = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000FF68;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014F74(v3, self, v4);
}

@end