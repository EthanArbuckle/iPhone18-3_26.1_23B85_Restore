@interface AppsClient
+ (BOOL)_makeIconFromBundlePath:(id)path saveTo:(id)to;
+ (id)_loadDemotedAppsPlist:(id)plist withError:(id *)error;
+ (id)_loadPlist:(id)plist withError:(id *)error;
+ (id)_orderTheItems:(id)items;
+ (void)_notifySpringBoard:(BOOL)board;
- (AppsClient)init;
- (BOOL)_isATCDaemon;
- (BOOL)_isRecoverableError:(id)error;
- (BOOL)_prepareDemotedAppForRestoreWithBundleId:(id)id iTunesMetadata:(id)metadata sinfData:(id)data iconData:(id)iconData demotionStatus:(unint64_t)status;
- (BOOL)_prepareNonDemotedAppForRestoreWithBundleId:(id)id iTunesMetadata:(id)metadata sinfData:(id)data iconData:(id)iconData;
- (BOOL)_processItunesRestoreInfo;
- (BOOL)createPlaceHolderPath:(id)path forBundleIdentifier:(id)identifier withAttributes:(id)attributes;
- (BOOL)prepareAppForRestoreUsingCoordination:(id)coordination iTunesMetadata:(id)metadata sinfData:(id)data iconData:(id)iconData demotionStatus:(unint64_t)status;
- (BOOL)reconcileRestoreOfType:(int)type withError:(id *)error;
- (BOOL)writeIconData:(id)data atPath:(id)path returningFileSize:(unint64_t *)size forBundleIdentifier:(id)identifier withAttributes:(id)attributes;
- (id)_createAppAssetPromiseForBundleIdentifier:(id)identifier atPath:(id)path andAddToCoordinatinator:(id)coordinatinator;
- (id)_createIconPromiseForBundleIdentifier:(id)identifier transferPath:(id)path diskSpaceNeeded:(unint64_t)needed andAddToPlaceHolder:(id)holder forAppInstall:(BOOL)install;
- (id)_getSystemAppPlaceholders;
- (id)_operationStateForIdentifier:(id)identifier;
- (id)_placeHolderForBundleIdentifier:(id)identifier name:(id)name installType:(unint64_t)type;
- (id)_placeHolderForBundleIdentifier:(id)identifier withiTunesMetadata:(id)metadata sinfData:(id)data iconData:(id)iconData demotionStatus:(unint64_t)status;
- (id)_progressForAssetIdentifier:(id)identifier;
- (id)_restoreStatePropertyForKey:(id)key identifier:(id)identifier version:(id)version;
- (id)_userDataPromiseForBundleIdentifier:(id)identifier;
- (id)accountsForAssets;
- (id)appleIDsForAssets;
- (id)disabledAssetTypes;
- (id)installedAssetMetrics;
- (id)installedAssets;
- (id)outstandingAssetTransfers;
- (id)placeholderAppPathForBundleIdentifier:(id)identifier;
- (int)_getAndResetNumAppInstallsAttempted;
- (void)_enumeratePlaceholdersWithBlock:(id)block;
- (void)_setRestoreStatePropertyValue:(id)value forKey:(id)key identifier:(id)identifier version:(id)version;
- (void)assetInstallFailed:(id)failed withError:(id)error;
- (void)assetInstallSucceeded:(id)succeeded;
- (void)assetSyncFinishedWithStatus:(BOOL)status outstandingItems:(id)items;
- (void)assetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error;
- (void)assetTransfer:(id)transfer updatedProgress:(double)progress;
- (void)changeAssetID:(id)d toDo:(id)do;
- (void)cleanRestoreStateForIdentifier:(id)identifier;
- (void)clearSyncData;
- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)coordinatorDidCompleteSuccessfully:(id)successfully;
- (void)coordinatorDidInstallPlaceholder:(id)placeholder;
- (void)coordinatorShouldPrioritize:(id)prioritize;
- (void)dataMigratorCancelledCoordinatorForRestoreAppBundle:(id)bundle;
- (void)dataMigratorSetPlaceHolderPromiseForRestoreAppBundle:(id)bundle;
- (void)dealloc;
- (void)icDidInstallPlaceHolderForAppBundle:(id)bundle;
- (void)prepareForBackup;
- (void)promiseDidBeginFulfillmentWithIdentifier:(unint64_t)identifier;
- (void)setupInstallCoordinatorObserver;
- (void)syncEndedWithSuccess:(BOOL)success;
- (void)uninstallAppUsingCoordination:(id)coordination;
@end

@implementation AppsClient

- (void)promiseDidBeginFulfillmentWithIdentifier:(unint64_t)identifier
{
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    identifierCopy = identifier;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "promiseDidBeginFulfillmentWithIdentifier %lu", &v5, 0xCu);
  }
}

- (void)coordinatorDidInstallPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [placeholderCopy bundleID];
    error = [placeholderCopy error];
    v9 = 138543618;
    v10 = bundleID;
    v11 = 2114;
    v12 = error;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "coordinatorDidInstallPlaceholder for %{public}@ with error %{public}@", &v9, 0x16u);
  }

  bundleID2 = [placeholderCopy bundleID];
  [(AppsClient *)self icDidInstallPlaceHolderForAppBundle:bundleID2];
}

- (void)coordinatorDidCompleteSuccessfully:(id)successfully
{
  successfullyCopy = successfully;
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [successfullyCopy bundleID];
    error = [successfullyCopy error];
    v13 = 138543618;
    v14 = bundleID;
    v15 = 2114;
    v16 = error;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "coordinatorDidCompleteSuccessfully for %{public}@ with error %{public}@", &v13, 0x16u);
  }

  error2 = [successfullyCopy error];
  v9 = @"FAILED";
  if (!error2)
  {
    v9 = @"INSTALLED";
  }

  v10 = v9;

  bundleID2 = [successfullyCopy bundleID];
  [(AppsClient *)self changeAssetID:bundleID2 toDo:v10];

  bundleID3 = [successfullyCopy bundleID];
  [(AppsClient *)self cleanRestoreStateForIdentifier:bundleID3];
}

- (void)uninstallAppUsingCoordination:(id)coordination
{
  coordinationCopy = coordination;
  [AITransactionLog logStep:7 byParty:1 phase:1 success:1 forBundleID:coordinationCopy description:@"Uninstall app"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_232C;
  v5[3] = &unk_18438;
  v6 = coordinationCopy;
  v4 = coordinationCopy;
  [IXAppInstallCoordinator uninstallAppWithBundleID:v4 requestUserConfirmation:0 completion:v5];
}

- (BOOL)prepareAppForRestoreUsingCoordination:(id)coordination iTunesMetadata:(id)metadata sinfData:(id)data iconData:(id)iconData demotionStatus:(unint64_t)status
{
  if (status)
  {
    return [(AppsClient *)self _prepareDemotedAppForRestoreWithBundleId:coordination iTunesMetadata:metadata sinfData:data iconData:iconData demotionStatus:?];
  }

  else
  {
    return [(AppsClient *)self _prepareNonDemotedAppForRestoreWithBundleId:coordination iTunesMetadata:metadata sinfData:data iconData:iconData];
  }
}

- (BOOL)_prepareDemotedAppForRestoreWithBundleId:(id)id iTunesMetadata:(id)metadata sinfData:(id)data iconData:(id)iconData demotionStatus:(unint64_t)status
{
  idCopy = id;
  dataCopy = data;
  iconDataCopy = iconData;
  v41 = 0;
  metadataCopy = metadata;
  v15 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = idCopy;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "processing app restore for demoted bundle '%{public}@' with install coordination", buf, 0xCu);
  }

  [AITransactionLog logStep:2 byParty:1 phase:1 success:1 forBundleID:idCopy description:@"Restore demoted app"];
  v40 = 0;
  v16 = [NSPropertyListSerialization propertyListWithData:metadataCopy options:0 format:0 error:&v40];

  v17 = v40;
  selfCopy = self;
  v35 = dataCopy;
  if (!v16)
  {
    v20 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v43 = idCopy;
      v44 = 2114;
      v45[0] = v17;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "failed to parse itunes metadata for '%{public}@'. err=%{public}@", buf, 0x16u);
    }

    v22 = 0;
    v18 = 0;
    v21 = 0;
    goto LABEL_13;
  }

  v39 = v17;
  v18 = [IXRestoringDemotedAppInstallCoordinator coordinatorForAppWithBundleID:idCopy withClientID:3 createIfNotExisting:1 created:&v41 error:&v39];
  v19 = v39;

  if (!v18)
  {
    v20 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v43 = v19;
      v44 = 2114;
      v45[0] = idCopy;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "Error %{public}@ creating restore coordinator for %{public}@", buf, 0x16u);
    }

    v22 = 0;
    v18 = 0;
    v21 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_25;
  }

  [v18 setObserver:self];
  if ([v18 hasUserDataPromise])
  {
    v20 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v43 = idCopy;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Coordinator for %{public}@ has a valid user data promise", buf, 0xCu);
    }

    v21 = 0;
    v17 = v19;
LABEL_9:

    v19 = v17;
    goto LABEL_21;
  }

  v21 = [(AppsClient *)self _userDataPromiseForBundleIdentifier:idCopy];
  if (v21)
  {
    v38 = v19;
    v25 = [v18 setUserDataPromise:v21 error:&v38];
    v17 = v38;

    v26 = _ATLogCategorySyncBundle();
    v20 = v26;
    if (v25)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v43 = idCopy;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Added out of band user data promise for for %{public}@", buf, 0xCu);
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v43 = v17;
      v44 = 2114;
      v45[0] = idCopy;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "Error %{public}@ adding out of band data promise for '%{public}@'", buf, 0x16u);
    }

    v22 = 0;
LABEL_13:
    v23 = 0;
    v24 = 0;
LABEL_26:

    v19 = v17;
    goto LABEL_27;
  }

LABEL_21:
  if ([v18 hasPlaceholderPromise])
  {
    v20 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v43 = idCopy;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Coordinator for %{public}@ has a valid placeholder promise", buf, 0xCu);
    }

    v22 = 0;
    v23 = 0;
    v24 = 1;
LABEL_25:
    v17 = v19;
    goto LABEL_26;
  }

  v22 = [(AppsClient *)selfCopy _placeHolderForBundleIdentifier:idCopy withiTunesMetadata:v16 sinfData:dataCopy iconData:iconDataCopy demotionStatus:status];
  if (v22)
  {
    v37 = v19;
    v33 = [v18 setPlaceholderPromise:v22 error:&v37];
    v17 = v37;

    if (v33)
    {
      [(AppsClient *)selfCopy dataMigratorSetPlaceHolderPromiseForRestoreAppBundle:idCopy];
      v20 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v43 = idCopy;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "added placeholder promise for %{public}@", buf, 0xCu);
      }

      v23 = 1;
      v24 = 1;
      goto LABEL_26;
    }

    v20 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v43 = v17;
      v44 = 2114;
      v45[0] = idCopy;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "Error %{public}@ setting placeholder promise for '%{public}@'", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v23 = 0;
  v24 = 0;
LABEL_27:
  v27 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v43 = idCopy;
    v44 = 1024;
    LODWORD(v45[0]) = v24;
    WORD2(v45[0]) = 2114;
    *(v45 + 6) = v19;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "processing app restore for demoted app %{public}@ finished with status %d error %{public}@", buf, 0x1Cu);
  }

  [AITransactionLog logStep:2 byParty:1 phase:2 success:v24 forBundleID:idCopy description:@"Restore demoted app"];
  if (!v24)
  {
    v28 = [NSError errorWithDomain:@"ATError" code:29 userInfo:0];
    if (v18)
    {
      v29 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v43 = idCopy;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Cancelling coordinator for appBundleIdentifier:%{public}@", buf, 0xCu);
      }

      [v18 cancelForReason:v28 client:3 error:0];
    }

    if (v22)
    {
      v30 = v23;
    }

    else
    {
      v30 = 1;
    }

    if ((v30 & 1) == 0)
    {
      v31 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v43 = idCopy;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Cancelling placeholder for appBundleIdentifier:%{public}@", buf, 0xCu);
      }

      [v22 cancelForReason:v28 client:3 error:0];
    }

    [(AppsClient *)selfCopy dataMigratorCancelledCoordinatorForRestoreAppBundle:idCopy, selfCopy];
  }

  return v24;
}

- (BOOL)_prepareNonDemotedAppForRestoreWithBundleId:(id)id iTunesMetadata:(id)metadata sinfData:(id)data iconData:(id)iconData
{
  idCopy = id;
  dataCopy = data;
  iconDataCopy = iconData;
  v47 = 0;
  metadataCopy = metadata;
  v14 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = idCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "processing app restore for non demoted bundle '%{public}@' with install coordination", buf, 0xCu);
  }

  [AITransactionLog logStep:2 byParty:1 phase:1 success:1 forBundleID:idCopy description:@"Restore app"];
  v46 = 0;
  v15 = [NSPropertyListSerialization propertyListWithData:metadataCopy options:0 format:0 error:&v46];

  v16 = v46;
  v41 = iconDataCopy;
  if (!v15)
  {
    selfCopy3 = self;
    v40 = dataCopy;
    v23 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v49 = idCopy;
      v50 = 2114;
      v51[0] = v16;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "failed to parse itunes metadata for '%{public}@'. err=%{public}@", buf, 0x16u);
    }

    v21 = 0;
    v17 = 0;
    v22 = 0;
    goto LABEL_12;
  }

  v45 = v16;
  v17 = [IXRestoringAppInstallCoordinator coordinatorForAppWithBundleID:idCopy withClientID:3 createIfNotExisting:1 created:&v47 error:&v45];
  v18 = v45;

  if (!v17)
  {
    selfCopy3 = self;
    v40 = dataCopy;
    v23 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v49 = v18;
      v50 = 2114;
      v51[0] = idCopy;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Error %{public}@ creating restore coordinator for %{public}@", buf, 0x16u);
    }

    v21 = 0;
    v17 = 0;
    v22 = 0;
    v24 = 0;
    hasPlaceholderPromise = 1;
    v16 = v18;
    goto LABEL_16;
  }

  if ([v17 appAssetPromiseResponsibleClientWithError:0] == &dword_0 + 1)
  {
    v19 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v49 = idCopy;
      v50 = 2048;
      v51[0] = 1;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "App asset DRI for %{public}@ is set to %lu - nothing more for atc to do", buf, 0x16u);
    }

    v20 = 1;
    [AITransactionLog logStep:2 byParty:1 phase:2 success:1 forBundleID:idCopy description:@"Restore app"];
    v21 = 0;
    v22 = 0;
    goto LABEL_32;
  }

  [v17 setObserver:self];
  selfCopy3 = self;
  v40 = dataCopy;
  if ([v17 hasUserDataPromise])
  {
    v23 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = idCopy;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Coordinator for %{public}@ has a valid user data promise", buf, 0xCu);
    }

    v22 = 0;
    v16 = v18;
  }

  else
  {
    v22 = [(AppsClient *)self _userDataPromiseForBundleIdentifier:idCopy];
    if (!v22)
    {
      goto LABEL_42;
    }

    v44 = v18;
    v32 = [v17 setUserDataPromise:v22 error:&v44];
    v16 = v44;

    v33 = _ATLogCategorySyncBundle();
    v23 = v33;
    if ((v32 & 1) == 0)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v49 = v16;
        v50 = 2114;
        v51[0] = idCopy;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Error %{public}@ adding out of band data promise for '%{public}@'", buf, 0x16u);
      }

      v21 = 0;
      goto LABEL_12;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = idCopy;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Added out of band user data promise for for %{public}@", buf, 0xCu);
    }
  }

  v18 = v16;
LABEL_42:
  hasPlaceholderPromise = [v17 hasPlaceholderPromise];
  if (hasPlaceholderPromise)
  {
    v34 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = idCopy;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Coordinator for %{public}@ has a valid placeholder promise", buf, 0xCu);
    }

    v21 = 0;
    v16 = v18;
LABEL_46:
    v35 = v16;

    v42 = v16;
    v36 = [v17 setAppAssetPromiseResponsibleClient:1 error:&v42];
    v16 = v42;

    v37 = _ATLogCategorySyncBundle();
    v23 = v37;
    if (v36)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v49 = idCopy;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "set IXClientAppStore to satisfy app asset promise for %{public}@", buf, 0xCu);
      }

      v24 = 1;
    }

    else
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v49 = v16;
        v50 = 2114;
        v51[0] = idCopy;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Error %{public}@ setting IXClientAppStore to satisfy app data promise for '%{public}@'", buf, 0x16u);
      }

      v24 = 0;
    }

    goto LABEL_16;
  }

  v21 = [(AppsClient *)selfCopy3 _placeHolderForBundleIdentifier:idCopy withiTunesMetadata:v15 sinfData:v40 iconData:iconDataCopy demotionStatus:0];
  if (!v21)
  {
    v24 = 0;
    hasPlaceholderPromise = 1;
    goto LABEL_17;
  }

  v43 = v18;
  v38 = [v17 setPlaceholderPromise:v21 error:&v43];
  v16 = v43;

  if (v38)
  {
    [(AppsClient *)selfCopy3 dataMigratorSetPlaceHolderPromiseForRestoreAppBundle:idCopy];
    v34 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = idCopy;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "added placeholder promise for %{public}@", buf, 0xCu);
    }

    goto LABEL_46;
  }

  v23 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v49 = v16;
    v50 = 2114;
    v51[0] = idCopy;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Error %{public}@ setting placeholder promise for '%{public}@'", buf, 0x16u);
  }

LABEL_12:
  v24 = 0;
  hasPlaceholderPromise = 1;
LABEL_16:

  v18 = v16;
LABEL_17:
  v26 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v49 = idCopy;
    v50 = 1024;
    LODWORD(v51[0]) = v24;
    WORD2(v51[0]) = 2114;
    *(v51 + 6) = v18;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "processing app restore for %{public}@ finished with status %d error %{public}@", buf, 0x1Cu);
  }

  v20 = 1;
  [AITransactionLog logStep:2 byParty:1 phase:2 success:v24 forBundleID:idCopy description:@"Restore app"];
  if (v24)
  {
    dataCopy = v40;
  }

  else
  {
    v27 = [NSError errorWithDomain:@"ATError" code:29 userInfo:0];
    if (v17)
    {
      v28 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v49 = idCopy;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Cancelling coordinator for appBundleIdentifier:%{public}@", buf, 0xCu);
      }

      [v17 cancelForReason:v27 client:3 error:0];
    }

    v29 = hasPlaceholderPromise ^ 1;
    if (!v21)
    {
      v29 = 1;
    }

    dataCopy = v40;
    if ((v29 & 1) == 0)
    {
      v30 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v49 = idCopy;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Cancelling placeholder for appBundleIdentifier:%{public}@", buf, 0xCu);
      }

      [v21 cancelForReason:v27 client:3 error:0];
    }

    [(AppsClient *)selfCopy3 dataMigratorCancelledCoordinatorForRestoreAppBundle:idCopy];

    v20 = 0;
  }

LABEL_32:

  return v20;
}

- (void)assetSyncFinishedWithStatus:(BOOL)status outstandingItems:(id)items
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = items;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138543618;
    v15 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v17 = 0;
        v11 = [IXAppInstallCoordinator coordinatorForAppWithBundleID:v10 withClientID:3 createIfNotExisting:0 created:0 error:&v17, v15];
        v12 = v17;
        if (v11 && !status)
        {
          v13 = [NSError errorWithDomain:@"ATError" code:30 userInfo:0];
          v14 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v23 = v13;
            v24 = 2114;
            v25 = v10;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Cancelling coordinator with error %{public}@ for %{public}@", buf, 0x16u);
          }

          [v11 cancelForReason:v13 client:3 error:0];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }
}

- (id)_createIconPromiseForBundleIdentifier:(id)identifier transferPath:(id)path diskSpaceNeeded:(unint64_t)needed andAddToPlaceHolder:(id)holder forAppInstall:(BOOL)install
{
  installCopy = install;
  identifierCopy = identifier;
  pathCopy = path;
  holderCopy = holder;
  if (!holderCopy)
  {
    v19 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = identifierCopy;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Placeholder to add icon promise is nil for '%{public}@'", buf, 0xCu);
    }

    v17 = 0;
    goto LABEL_17;
  }

  v14 = [IXPromisedTransferToPath alloc];
  v15 = [identifierCopy stringByAppendingString:@"-Icon"];
  v16 = [NSURL fileURLWithPath:pathCopy];
  v17 = [v14 initWithName:v15 client:3 transferPath:v16 diskSpaceNeeded:needed];

  if (v17)
  {
    [v17 setPercentComplete:1.0];
    [v17 setComplete:1];
    v26 = 0;
    v18 = [holderCopy setIconPromise:v17 error:&v26];
    v19 = v26;
    v20 = _ATLogCategorySyncBundle();
    v21 = v20;
    if (v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = identifierCopy;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Added icon promise to placeholder for '%{public}@'", buf, 0xCu);
      }

      v22 = v17;
      goto LABEL_18;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v28 = v19;
      v29 = 2114;
      v30 = identifierCopy;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Error %{public}@ adding icon promise to placeholder for '%{public}@'", buf, 0x16u);
    }

    if (installCopy)
    {
      v23 = 30;
    }

    else
    {
      v23 = 29;
    }

    v19 = [NSError errorWithDomain:@"ATError" code:v23 userInfo:0];
    [v17 cancelForReason:v19 client:3 error:0];
LABEL_17:
    v22 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v22 = 0;
LABEL_19:
  v24 = v22;

  return v22;
}

- (id)_placeHolderForBundleIdentifier:(id)identifier name:(id)name installType:(unint64_t)type
{
  identifierCopy = identifier;
  nameCopy = name;
  [AITransactionLog logStep:4 byParty:1 phase:1 success:1 forBundleID:identifierCopy description:@"Create placeholder"];
  v9 = [[IXPlaceholder alloc] initAppPlaceholderWithBundleName:nameCopy bundleID:identifierCopy installType:type client:3];

  [AITransactionLog logStep:4 byParty:1 phase:2 success:v9 != 0 forBundleID:identifierCopy description:@"Finished creating placeholder"];
  v10 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = identifierCopy;
    v16 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Created placeholder %{public}@ for '%{public}@' of type %lu", &v12, 0x20u);
  }

  return v9;
}

- (id)_createAppAssetPromiseForBundleIdentifier:(id)identifier atPath:(id)path andAddToCoordinatinator:(id)coordinatinator
{
  identifierCopy = identifier;
  pathCopy = path;
  coordinatinatorCopy = coordinatinator;
  if (coordinatinatorCopy)
  {
    v10 = [IXPromisedTransferToPath alloc];
    v11 = [identifierCopy stringByAppendingString:@"-Asset"];
    if (pathCopy)
    {
      v12 = [NSURL fileURLWithPath:pathCopy];
      v13 = [v10 initWithName:v11 client:3 transferPath:v12 diskSpaceNeeded:0];
    }

    else
    {
      v13 = [v10 initWithName:v11 client:3 diskSpaceNeeded:0];
    }

    if (v13)
    {
      v22 = 0;
      v16 = [coordinatinatorCopy setAppAssetPromise:v13 error:&v22];
      v14 = v22;
      v17 = _ATLogCategorySyncBundle();
      v18 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v24 = identifierCopy;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Added app asset promise to coordinator for '%{public}@'", buf, 0xCu);
        }

        v15 = v13;
        goto LABEL_20;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v24 = v14;
        v25 = 2114;
        v26 = pathCopy;
        v27 = 2114;
        v28 = identifierCopy;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Error %{public}@ adding app asset promise at %{public}@ to '%{public}@'", buf, 0x20u);
      }

      v19 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v24 = identifierCopy;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Cancelling asset promise for '%{public}@'", buf, 0xCu);
      }

      v18 = [NSError errorWithDomain:@"ATError" code:30 userInfo:0];
      [v13 cancelForReason:v18 client:3 error:0];
    }

    else
    {
      v18 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v24 = identifierCopy;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Error creating asset promise for '%{public}@'", buf, 0xCu);
      }

      v14 = 0;
      v13 = 0;
    }

    v15 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v14 = 0;
  v13 = 0;
  v15 = 0;
LABEL_21:
  v20 = v15;

  return v15;
}

- (id)_userDataPromiseForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [IXPromisedOutOfBandTransfer alloc];
  v5 = [identifierCopy stringByAppendingString:@"-UserData"];

  v6 = [v4 initWithName:v5 client:3 diskSpaceNeeded:0];
  if (v6)
  {
    [v6 setPercentComplete:1.0];
    [v6 setComplete:1];
  }

  return v6;
}

- (id)_placeHolderForBundleIdentifier:(id)identifier withiTunesMetadata:(id)metadata sinfData:(id)data iconData:(id)iconData demotionStatus:(unint64_t)status
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  dataCopy = data;
  iconDataCopy = iconData;
  v60 = 0;
  v15 = [metadataCopy objectForKey:@"title"];
  if (!v15)
  {
    v15 = [metadataCopy objectForKey:@"itemName"];
    if (!v15)
    {
      v15 = identifierCopy;
    }
  }

  v54 = iconDataCopy;
  v55 = v15;
  v53 = [metadataCopy objectForKey:@"bundleVersion"];
  v16 = [(AppsClient *)self placeholderAppPathForBundleIdentifier:identifierCopy];
  v17 = [metadataCopy objectForKey:@"LSApplicationLaunchProhibited"];
  if (!v17)
  {
    v17 = [metadataCopy objectForKey:@"launchProhibited"];
  }

  v50 = v17;
  v51 = metadataCopy;
  bOOLValue = [v17 BOOLValue];
  v67[0] = NSFileOwnerAccountName;
  v67[1] = NSFileGroupOwnerAccountName;
  v68[0] = @"mobile";
  v68[1] = @"mobile";
  v18 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:2];
  v19 = [(AppsClient *)self createPlaceHolderPath:v16 forBundleIdentifier:identifierCopy withAttributes:v18];

  v52 = v16;
  if (!v19)
  {
    v25 = identifierCopy;
    v31 = 0;
    v20 = 0;
    v26 = 0;
    v41 = 0;
    v34 = v51;
    v27 = dataCopy;
    v22 = v54;
    goto LABEL_40;
  }

  [v16 stringByAppendingPathComponent:@"Icon.png"];
  v65[0] = NSFileOwnerAccountName;
  v65[1] = NSFileGroupOwnerAccountName;
  v66[0] = @"mobile";
  v20 = v66[1] = @"mobile";
  v21 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];
  v22 = v54;
  [(AppsClient *)self writeIconData:v54 atPath:v20 returningFileSize:&v60 forBundleIdentifier:identifierCopy withAttributes:v21];

  v23 = 7;
  if (status != 2)
  {
    v23 = 2;
  }

  if (status == 1)
  {
    v24 = 8;
  }

  else
  {
    v24 = v23;
  }

  v25 = identifierCopy;
  v26 = [(AppsClient *)self _placeHolderForBundleIdentifier:identifierCopy name:v55 installType:v24];
  if (!v26)
  {
    v31 = 0;
    v41 = 0;
    v34 = v51;
    v27 = dataCopy;
    goto LABEL_40;
  }

  v27 = dataCopy;
  if (!v60 || ([(AppsClient *)self _createIconPromiseForBundleIdentifier:v25 transferPath:v20 diskSpaceNeeded:v60 andAddToPlaceHolder:v26 forAppInstall:0], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
  {
    v29 = objc_alloc_init(IXPlaceholderAttributes);
    [v29 setLaunchProhibited:bOOLValue];
    [v29 setBundleVersion:v53];
    v59 = 0;
    v30 = [v26 setPlaceholderAttributes:v29 error:&v59];
    v31 = v59;
    v32 = _ATLogCategorySyncBundle();
    v33 = v32;
    v34 = v51;
    if (v30)
    {
      v49 = v20;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v62 = v29;
        v63 = 2114;
        v64 = v25;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "set %{public}@ placeholder attributes for %{public}@", buf, 0x16u);
      }

      v29 = [[MIStoreMetadata alloc] initWithDictionary:v51];
      v58 = v31;
      v35 = [v26 setMetadata:v29 error:&v58];
      v36 = v58;

      v37 = _ATLogCategorySyncBundle();
      v38 = v37;
      if ((v35 & 1) == 0)
      {
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v62 = v36;
          v63 = 2114;
          v64 = v25;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "Error %{public}@ setting store metadata for '%{public}@'", buf, 0x16u);
        }

        v31 = v36;
        v22 = v54;
LABEL_36:
        v20 = v49;
        goto LABEL_37;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v62 = v25;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "set store metadata on placeholder for %{public}@", buf, 0xCu);
      }

      if (!v27)
      {
        v31 = v36;
LABEL_44:
        v22 = v54;
        v44 = v31;
        v56 = v31;
        v45 = [v26 setConfigurationCompleteWithError:&v56];
        v31 = v56;

        v46 = _ATLogCategorySyncBundle();
        v29 = v46;
        if (v45)
        {
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v62 = v25;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "set placeholder configuration complete for %{public}@", buf, 0xCu);
          }

          v41 = v26;
          v20 = v49;
          goto LABEL_39;
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v62 = v31;
          v63 = 2114;
          v64 = v25;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "Error %{public}@ setting placeholder configuration as complete for '%{public}@'", buf, 0x16u);
        }

        goto LABEL_36;
      }

      v57 = v36;
      v39 = [v26 setSinfData:v27 error:&v57];
      v31 = v57;

      v40 = _ATLogCategorySyncBundle();
      v29 = v40;
      if (v39)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v62 = v25;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "set SINF data on placeholder for %{public}@", buf, 0xCu);
        }

        goto LABEL_44;
      }

      v20 = v49;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v62 = v31;
        v63 = 2114;
        v64 = v25;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "Error %{public}@ setting SINF data for '%{public}@'", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v62 = v31;
        v63 = 2114;
        v64 = v25;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "Error %{public}@ setting placeholder attributes for '%{public}@'", buf, 0x16u);
      }
    }

    v22 = v54;
LABEL_37:

    goto LABEL_38;
  }

  v31 = 0;
  v34 = metadataCopy;
LABEL_38:
  v29 = [NSError errorWithDomain:@"ATError" code:29 userInfo:0];
  [v26 cancelForReason:v29 client:3 error:0];
  v41 = 0;
LABEL_39:

LABEL_40:
  v42 = v41;

  return v42;
}

- (AppsClient)init
{
  v7.receiver = self;
  v7.super_class = AppsClient;
  v2 = [(AppsClient *)&v7 init];
  if (v2)
  {
    v2->_installGroup = dispatch_group_create();
    v2->_restorePlaceHoldersWaitGroup = dispatch_group_create();
    v2->_outstandingAFCTransfers = [[NSMutableSet alloc] initWithCapacity:0];
    v2->_vppAppsToIgnore = [[NSMutableSet alloc] initWithCapacity:0];
    v2->_placeholdersForRestoringApps = objc_alloc_init(NSMutableSet);
    v3 = objc_alloc_init(NSOperationQueue);
    v2->_installOperationQueue = v3;
    [(NSOperationQueue *)v3 setMaxConcurrentOperationCount:10];
    v2->_backupManager = objc_alloc_init(MBManager);
    v2->_accessQueue = dispatch_queue_create("com.apple.amp.AirTraffic.AppSync", 0);
    v2->_restoreQueue = dispatch_queue_create("com.apple.amp.AirTraffic.AppRestore", 0);
    [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
    v4 = os_log_create("com.apple.appinstallation", "atc.appsync");
    [AITransactionLog initializeWithLog:v4];

    v2->_finishedWaitingForPlaceHolderInstalls = 0;
    v2->_restoringPlaceholderCount = 0;
    v2->_updatingApps = objc_alloc_init(NSMutableSet);
    v2->_userCancelledApps = objc_alloc_init(NSMutableSet);
    if ([(AppsClient *)v2 _isATCDaemon])
    {
      v2->_finishedWaitingForPlaceHolderInstalls = 1;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _handleATCStartupCompletedNotification, @"com.apple.atc.ATStartupCompleteNotification", 0, CFNotificationSuspensionBehaviorDrop);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(NSMutableSet *)self->_outstandingAFCTransfers count];
  if (v3)
  {
    v4 = v3;
    v5 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v14 = 2048;
      v15 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@ getting dealloc'd with %lu outstanding AFC transfers!", buf, 0x16u);
    }
  }

  if ([(NSMutableSet *)self->_placeholdersForRestoringApps count])
  {
    v6 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      placeholdersForRestoringApps = self->_placeholdersForRestoringApps;
      *buf = 138543618;
      selfCopy2 = self;
      v14 = 2114;
      v15 = placeholdersForRestoringApps;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%{public}@ getting dealloc'd with %{public}@pending placeholder install complete notifications", buf, 0x16u);
    }
  }

  installGroup = self->_installGroup;
  if (installGroup)
  {
    dispatch_release(installGroup);
  }

  restorePlaceHoldersWaitGroup = self->_restorePlaceHoldersWaitGroup;
  if (restorePlaceHoldersWaitGroup)
  {
    dispatch_release(restorePlaceHoldersWaitGroup);
  }

  [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
  if ([(AppsClient *)self _isATCDaemon])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.atc.ATStartupCompleteNotification", 0);
    self->_appInstallObserver = 0;
  }

  v11.receiver = self;
  v11.super_class = AppsClient;
  [(AppsClient *)&v11 dealloc];
}

- (void)coordinatorShouldPrioritize:(id)prioritize
{
  bundleID = [prioritize bundleID];
  if ([(AppsClient *)self _isATCDaemon]&& bundleID)
  {
    v6 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      bundleID2 = [prioritize bundleID];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Prioritize %{public}@", buf, 0xCu);
    }

    v7 = +[ATDeviceService sharedInstance];
    if (objc_opt_respondsToSelector())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_597C;
      v9[3] = &unk_18460;
      v9[4] = bundleID;
      [(ATDeviceService *)v7 prioritizeAsset:[ATAsset withCompletion:"downloadAssetWithIdentifier:dataclass:prettyName:" downloadAssetWithIdentifier:bundleID dataclass:@"Application" prettyName:0], v9];
    }

    else
    {
      v8 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        bundleID2 = bundleID;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Cannot prioritize %{public}@ as it's not supported", buf, 0xCu);
      }
    }
  }
}

- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  bundleID = [coordinator bundleID];
  if ([(AppsClient *)self _isATCDaemon]&& bundleID)
  {
    v7 = +[ATDeviceService sharedInstance];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5CA4;
    block[3] = &unk_18488;
    block[5] = bundleID;
    block[6] = &v15;
    block[4] = self;
    dispatch_sync(accessQueue, block);
    restoreQueue = self->_restoreQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_5CF4;
    v13[3] = &unk_184B0;
    v13[4] = self;
    v13[5] = bundleID;
    dispatch_sync(restoreQueue, v13);
    if ((v16[3] & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v11 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(v16 + 24);
        *buf = 138543618;
        v20 = bundleID;
        v21 = 1024;
        v22 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Cannot cancel %{public}@ as it's already cancelled %d OR the call is not supported", buf, 0x12u);
      }
    }

    else
    {
      v10 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = bundleID;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Cancelling asset sync for %{public}@", buf, 0xCu);
      }

      [(ATDeviceService *)v7 cancelAssetTransferForFailedAsset:[ATAsset downloadAssetWithIdentifier:bundleID dataclass:@"Application" prettyName:0]];
    }

    _Block_object_dispose(&v15, 8);
  }
}

- (id)installedAssets
{
  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "getting installed assets", buf, 2u);
  }

  v38 = +[NSMutableDictionary dictionary];
  v40 = +[NSMutableArray array];
  v4 = [AppsClient _loadPlist:@"/var/mobile/Library/ApplicationSync/iTunesStuff/ApplicationsSync.plist" withError:0];
  v5 = [AppsClient _loadPlist:@"/var/mobile/Library/ApplicationSync/LastSyncAppState.plist" withError:0];
  v6 = +[NSMutableSet set];
  v7 = MobileInstallationLookupUninstalled();
  selfCopy = self;
  if (v7)
  {
    v8 = v7;

    allKeys = [v8 allKeys];
    self->_uninstalledApps = allKeys;
    [v6 addObjectsFromArray:allKeys];
    CFRelease(v8);
  }

  else
  {
    v10 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "MobileInstallationLookupUninstalled returned NULL", buf, 2u);
    }
  }

  if (v5)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v11 = [v5 countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v50;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(v5);
          }

          v15 = *(*(&v49 + 1) + 8 * i);
          if (([+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")] & 1) == 0)
          {
            [v6 addObject:v15];
          }
        }

        v12 = [v5 countByEnumeratingWithState:&v49 objects:v60 count:16];
      }

      while (v12);
    }
  }

  v36 = v5;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v6;
  v16 = [v6 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v46;
    do
    {
      v19 = 0;
      do
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * v19);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v21 = [v4 countByEnumeratingWithState:&v41 objects:v58 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v42;
LABEL_24:
          v24 = 0;
          while (1)
          {
            if (*v42 != v23)
            {
              objc_enumerationMutation(v4);
            }

            v25 = *(*(&v41 + 1) + 8 * v24);
            if ([objc_msgSend(v25 objectForKey:{@"identifier", "isEqualToString:", v20}])
            {
              break;
            }

            if (v22 == ++v24)
            {
              v22 = [v4 countByEnumeratingWithState:&v41 objects:v58 count:16];
              if (v22)
              {
                goto LABEL_24;
              }

              goto LABEL_30;
            }
          }

          v29 = [v25 objectForKey:@"operation"];
          if ([v29 isEqualToString:@"FAILED"])
          {
            v28 = 0;
            v26 = 1;
            v27 = 1;
            goto LABEL_35;
          }

          if ([v29 isEqualToString:@"INSTALLED"])
          {
            v27 = 0;
            v26 = 1;
            v28 = 1;
            goto LABEL_35;
          }

          v31 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v54 = v20;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ not installed, but is in our todo list. Not marking deleted", buf, 0xCu);
          }
        }

        else
        {
LABEL_30:
          v26 = 0;
          v27 = 0;
          v28 = 0;
LABEL_35:
          v30 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544130;
            v54 = v20;
            v55 = 1024;
            *v56 = v26;
            *&v56[4] = 1024;
            *&v56[6] = v28;
            LOWORD(v57) = 1024;
            *(&v57 + 2) = v27;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ not installed, and no todo (found=%d pi=%d failed=%d) Marking as deleted", buf, 0x1Eu);
          }

          [v40 addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v20, kCFBundleIdentifierKey, 0)}];
        }

        v19 = v19 + 1;
      }

      while (v19 != v17);
      v32 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
      v17 = v32;
    }

    while (v32);
  }

  [v38 setObject:v40 forKey:@"_Deleted"];
  v33 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    uninstalledApps = selfCopy->_uninstalledApps;
    *buf = 138543874;
    v54 = v4;
    v55 = 2114;
    *v56 = uninstalledApps;
    *&v56[8] = 2114;
    v57 = v36;
    _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "finished getting installed assets toDoList:%{public}@, uninstalled apps %{public}@, last synced apps%{public}@", buf, 0x20u);
  }

  return v38;
}

- (BOOL)reconcileRestoreOfType:(int)type withError:(id *)error
{
  v7 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    typeCopy2 = type;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "reconcileRestoreOfType %d", buf, 8u);
  }

  [AppsClient _notifySpringBoard:1];
  v10 = 0;
  [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:@"/var/mobile/Library/ApplicationSync" attributes:1 error:0, error];
  if ((type & 0xFFFFFFFE) == 2)
  {
    if ([(MBManager *)self->_backupManager airTrafficShouldCreateAppPlaceholdersWithError:&v10])
    {
      [(AppsClient *)self _processItunesRestoreInfo];
    }

    else
    {
      v8 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        typeCopy2 = type;
        v13 = 2114;
        v14 = v10;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Will not reconcile restore of type %d - error %{public}@", buf, 0x12u);
      }
    }
  }

  if (error)
  {
    *error = v10;
  }

  return 1;
}

- (void)syncEndedWithSuccess:(BOOL)success
{
  successCopy = success;
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (successCopy)
    {
      v6 = 121;
    }

    else
    {
      v6 = 110;
    }

    v14 = 67109120;
    LODWORD(v15) = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "sync ended with success: %c", &v14, 8u);
  }

  if (successCopy)
  {
    if (utimes("/var/mobile/Library/ApplicationSync", 0))
    {
      v7 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = __error();
        v9 = strerror(*v8);
        v14 = 136315394;
        v15 = "/var/mobile/Library/ApplicationSync";
        v16 = 2080;
        v17 = v9;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to update utimes of %s: %s", &v14, 0x16u);
      }
    }

    if (self->_uninstalledApps)
    {
      v10 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        uninstalledApps = self->_uninstalledApps;
        v14 = 138543362;
        v15 = uninstalledApps;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "clearing uninstalled apps: %{public}@", &v14, 0xCu);
      }

      v12 = self->_uninstalledApps;
      if (MobileInstallationClearUninstalled())
      {
        v13 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Failed to clear uninstalled apps from MobileInstallation.", &v14, 2u);
        }
      }

      else
      {

        self->_uninstalledApps = 0;
      }
    }

    [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:@"/var/mobile/Library/ApplicationSync/LastSyncAppState.plist", 0];
  }
}

- (void)assetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error
{
  succeededCopy = succeeded;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_76AC;
  block[3] = &unk_18500;
  block[4] = self;
  block[5] = transfer;
  block[6] = &v42;
  block[7] = &v38;
  dispatch_sync(accessQueue, block);
  -[NSMutableSet removeObject:](self->_outstandingAFCTransfers, "removeObject:", [transfer identifier]);
  if (error)
  {
    v10 = _ATLogCategorySyncBundle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v11 = *(v43 + 24);
    msv_description = [error msv_description];
    *buf = 138544130;
    if (succeededCopy)
    {
      v13 = 121;
    }

    else
    {
      v13 = 110;
    }

    transferCopy3 = transfer;
    v48 = 1024;
    *v49 = v13;
    *&v49[4] = 1024;
    *&v49[6] = v11;
    v50 = 2114;
    v51 = msv_description;
    v14 = "transfer for asset %{public}@ ended with success %c existingApp:%d error=%{public}@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 34;
  }

  else
  {
    v18 = _ATLogCategorySyncBundle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    if (succeededCopy)
    {
      v19 = 121;
    }

    else
    {
      v19 = 110;
    }

    v20 = *(v43 + 24);
    *buf = 138543874;
    transferCopy3 = transfer;
    v48 = 1024;
    *v49 = v19;
    *&v49[4] = 1024;
    *&v49[6] = v20;
    v14 = "transfer for asset %{public}@ ended with success %c existingApp:%d";
    v15 = v18;
    v16 = OS_LOG_TYPE_DEFAULT;
    v17 = 24;
  }

  _os_log_impl(&dword_0, v15, v16, v14, buf, v17);
LABEL_13:
  v21 = -[AppsClient _progressForAssetIdentifier:](self, "_progressForAssetIdentifier:", [transfer identifier]);
  if (succeededCopy)
  {
    v22 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [transfer identifier];
      *buf = 138543362;
      transferCopy3 = identifier;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "asset transfer succeeded for %{public}@", buf, 0xCu);
    }

    if ([transfer path])
    {
      if ([objc_msgSend(transfer "path")])
      {
        goto LABEL_35;
      }

      v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/%@", "/var/mobile/Media/PublicStaging", [transfer path]);
    }

    else
    {
      v24 = -[AppsClient _restoreStatePropertyForKey:identifier:version:](self, "_restoreStatePropertyForKey:identifier:version:", @"path", [transfer identifier], objc_msgSend(objc_msgSend(transfer, "variantOptions"), "objectForKeyedSubscript:", @"Version"));
    }

    [transfer setPath:v24];
LABEL_35:
    if (sub_6A3C([transfer path]))
    {
      if ([transfer isDownload])
      {
        v32 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          path = [transfer path];
          *buf = 138543362;
          transferCopy3 = path;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Received file at %{public}@", buf, 0xCu);
        }

        -[AppsClient changeAssetID:toDo:](self, "changeAssetID:toDo:", [transfer identifier], @"DOWNLOADED");
        if (([transfer isRestore] & 1) == 0)
        {
          v34 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            transferCopy3 = transfer;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Installing synced asset %{public}@", buf, 0xCu);
          }

          [(AppsClient *)self transferCompleteForApp:transfer withError:0 isExistingApp:*(v43 + 24)];
        }
      }

      else
      {
        -[AppsClient changeAssetID:toDo:](self, "changeAssetID:toDo:", [transfer identifier], @"SENT");
      }
    }

    else
    {
      v35 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [transfer path];
        *buf = 138543362;
        transferCopy3 = path2;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Ignoring invalid path: %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_46;
  }

  v25 = v21;
  if ([(AppsClient *)self _isRecoverableError:error])
  {
    v26 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [transfer identifier];
      *buf = 138543618;
      transferCopy3 = identifier2;
      v48 = 2114;
      *v49 = error;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Failed to transfer asset %{public}@ with recoverable error=%{public}@", buf, 0x16u);
    }

    [v25 setInstallState:4];
  }

  else
  {
    v28 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      identifier3 = [transfer identifier];
      *buf = 138543618;
      transferCopy3 = identifier3;
      v48 = 2114;
      *v49 = error;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "Failed to transfer asset %{public}@ with unrecoverable error=%{public}@", buf, 0x16u);
    }

    if ([+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")] && (objc_msgSend(transfer, "isRestore") & 1) == 0)
    {
      if ([v25 installState] < 3)
      {
        [v25 cancel];
      }

      v30 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        identifier4 = [transfer identifier];
        *buf = 138543362;
        transferCopy3 = identifier4;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Uninstalling placeholder %{public}@", buf, 0xCu);
      }

      if ((v39[3] & 1) == 0)
      {
        [(AppsClient *)self transferCompleteForApp:transfer withError:error isExistingApp:*(v43 + 24)];
      }
    }
  }

LABEL_46:
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
}

- (void)assetInstallSucceeded:(id)succeeded
{
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    identifier = [succeeded identifier];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ install succeeded", &v6, 0xCu);
  }

  -[AppsClient changeAssetID:toDo:](self, "changeAssetID:toDo:", [succeeded identifier], @"INSTALLED");
  -[AppsClient cleanRestoreStateForIdentifier:](self, "cleanRestoreStateForIdentifier:", [succeeded identifier]);
}

- (void)assetInstallFailed:(id)failed withError:(id)error
{
  if (-[AppsClient _isRecoverableError:](self, "_isRecoverableError:", error) || ([failed isRestore] & 1) != 0)
  {
    v7 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      identifier = [failed identifier];
      v13 = 2114;
      errorCopy2 = error;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ install failed but was recoverable: %{public}@", &v11, 0x16u);
    }

    +[AITransactionLog logScenario:step:success:forBundleID:description:](AITransactionLog, "logScenario:step:success:forBundleID:description:", @"iCloud restore", 0, 0, [failed identifier], @"install failed recoverably");
  }

  else
  {
    v8 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543618;
      identifier = [failed identifier];
      v13 = 2114;
      errorCopy2 = error;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%{public}@ install failed unrecoverably: %{public}@", &v11, 0x16u);
    }

    -[AppsClient changeAssetID:toDo:](self, "changeAssetID:toDo:", [failed identifier], @"FAILED");
    if ([failed isRestore])
    {
      v9 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [failed identifier];
        v11 = 138543362;
        identifier = identifier2;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "not uninstalling restore asset %{public}@ as install coordination is enabled", &v11, 0xCu);
      }
    }

    else
    {
      -[AppsClient uninstallAppUsingCoordination:](self, "uninstallAppUsingCoordination:", [failed identifier]);
    }
  }

  -[AppsClient cleanRestoreStateForIdentifier:](self, "cleanRestoreStateForIdentifier:", [failed identifier]);
}

- (id)outstandingAssetTransfers
{
  v88 = [NSMutableArray arrayWithCapacity:16];
  _appInstallationAllowed = [(AppsClient *)self _appInstallationAllowed];
  v3 = [AppsClient _loadPlist:@"/var/mobile/Library/ApplicationSync/iTunesStuff/ApplicationsSync.plist" withError:0];
  v92 = +[NSMutableSet set];
  v4 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v117 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "outstandingAssetTransfers starting with todoList %{public}@", buf, 0xCu);
  }

  v99 = v3;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v6 = objc_opt_new();
  _getSystemAppPlaceholders = [(AppsClient *)self _getSystemAppPlaceholders];
  v115[0] = _NSConcreteStackBlock;
  v115[1] = 3221225472;
  v115[2] = sub_8A78;
  v115[3] = &unk_18528;
  v115[4] = v6;
  selfCopy = self;
  [(AppsClient *)self _enumeratePlaceholdersWithBlock:v115];
  [(NSMutableDictionary *)v5 addEntriesFromDictionary:v6];
  v7 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v117 = v6;
    v118 = 2114;
    *v119 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "outstandingAssetTransfers preExistingPlaceHolders %{public}@, idsWeWant %{public}@", buf, 0x16u);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v8 = v99;
  v9 = [v99 countByEnumeratingWithState:&v111 objects:v134 count:16];
  v10 = v92;
  if (v9)
  {
    v11 = v9;
    v12 = *v112;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v112 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v111 + 1) + 8 * i);
        if ([objc_msgSend(v14 objectForKey:{@"operation", "isEqualToString:", @"install"}])
        {
          v15 = [v14 objectForKey:@"identifier"];
          if (!sub_6A3C(v15))
          {
            v19 = _ATLogCategorySyncBundle();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              continue;
            }

            *buf = 138543362;
            v117 = v15;
            v17 = v19;
            v18 = "Ignoring invalid path: %{public}@";
            goto LABEL_17;
          }

          if ([(NSMutableDictionary *)v5 objectForKey:v15])
          {
            [v10 addObject:v15];
            v16 = _ATLogCategorySyncBundle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              continue;
            }

            *buf = 138543362;
            v117 = v15;
            v17 = v16;
            v18 = "%{public}@ already has a placeholder - skipping";
LABEL_17:
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
            continue;
          }

          v20 = v5;
          v21 = [NSString stringWithFormat:@"%s/%@", "/var/mobile/Library/ApplicationSync/iTunesStuff", v15];
          v22 = [v14 objectForKey:@"version"];
          v23 = [v14 objectForKey:@"name"];
          v24 = +[NSMutableDictionary dictionary];
          [v24 setObject:v21 forKey:@"Path"];
          [v24 setObject:v15 forKey:kCFBundleIdentifierKey];
          [v24 setObject:v21 forKey:@"Container"];
          if (v22)
          {
            [v24 setObject:v22 forKey:kCFBundleVersionKey];
          }

          v10 = v92;
          if (v23)
          {
            [v24 setObject:v23 forKey:@"NameFromItunes"];
          }

          v5 = v20;
          [(NSMutableDictionary *)v20 setObject:v24 forKey:v15];
          [v92 addObject:v15];
          v8 = v99;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v111 objects:v134 count:16];
    }

    while (v11);
  }

  v109 = 0;
  v110 = 0;
  [InProgressAssetQuery currentInProgressAssetIDs:&v110 restoringAssetIDs:&v109];
  v25 = v110;
  v26 = _ATLogCategorySyncBundle();
  v27 = v26;
  if (v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v117 = v110;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Assets already in progress (not returning these): %{public}@", buf, 0xCu);
    }

    [(NSMutableDictionary *)v5 removeObjectsForKeys:v110];
  }

  else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "Failed to get list of assets already in progress!", buf, 2u);
  }

  v28 = v109;
  v29 = _ATLogCategorySyncBundle();
  v30 = v29;
  if (v28)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v117 = v109;
      v31 = "Assets currently restoring: %{public}@";
      v32 = v30;
      v33 = OS_LOG_TYPE_DEFAULT;
      v34 = 12;
LABEL_36:
      _os_log_impl(&dword_0, v32, v33, v31, buf, v34);
    }
  }

  else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v31 = "Failed to get list of assets currently restoring!";
    v32 = v30;
    v33 = OS_LOG_TYPE_ERROR;
    v34 = 2;
    goto LABEL_36;
  }

  obj = [AppsClient _orderTheItems:v5];
  v35 = +[NSFileManager defaultManager];
  [(NSFileManager *)v35 removeItemAtPath:@"/var/mobile/Library/ApplicationSync/Icons" error:0];
  v108 = 0;
  if (![(NSFileManager *)v35 createDirectoryAtPath:@"/var/mobile/Library/ApplicationSync/Icons" withIntermediateDirectories:0 attributes:0 error:&v108])
  {
    v36 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v117 = v108;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "Can't create icon scratch dir! %{public}@", buf, 0xCu);
    }
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v98 = [obj countByEnumeratingWithState:&v104 objects:v133 count:16];
  if (v98)
  {
    v96 = *v105;
    v95 = _kCFBundleDisplayNameKey;
    do
    {
      v37 = 0;
      do
      {
        if (*v105 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v104 + 1) + 8 * v37);
        v39 = [v38 objectForKey:kCFBundleIdentifierKey];
        v40 = [v38 objectForKey:@"Path"];
        v101 = v39;
        v41 = [NSString stringWithFormat:@"%s/%@.png", "/var/mobile/Library/ApplicationSync/Icons", v39];
        v42 = [[NSBundle bundleWithPath:?], "objectForInfoDictionaryKey:", v95];
        v100 = [v38 objectForKey:kCFBundleVersionKey];
        v43 = [v38 valueForKey:@"IsRestore"];
        if (objc_opt_respondsToSelector())
        {
          bOOLValue = [v43 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        v45 = [v38 valueForKey:@"auto_demoted_app"];
        if (objc_opt_respondsToSelector())
        {
          bOOLValue2 = [v45 BOOLValue];
        }

        else
        {
          bOOLValue2 = 0;
        }

        v47 = [v38 valueForKey:@"intentional_demoted_app"];
        if (objc_opt_respondsToSelector())
        {
          bOOLValue3 = [v47 BOOLValue];
        }

        else
        {
          bOOLValue3 = 0;
        }

        v49 = [v38 valueForKey:@"system_app"];
        if (objc_opt_respondsToSelector())
        {
          bOOLValue4 = [v49 BOOLValue];
        }

        else
        {
          bOOLValue4 = 0;
        }

        if (((_appInstallationAllowed | bOOLValue) & 1) == 0)
        {
          v56 = _ATLogCategorySyncBundle();
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_66;
          }

          *buf = 138543362;
          v117 = v101;
          v54 = v56;
          v55 = "skipping %{public}@ - its not a restore and app installation is disabled";
          goto LABEL_64;
        }

        if (bOOLValue)
        {
          v51 = [(NSMutableSet *)selfCopy->_vppAppsToIgnore containsObject:v101];
          v52 = _ATLogCategorySyncBundle();
          v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
          if (v51)
          {
            if (!v53)
            {
              goto LABEL_66;
            }

            *buf = 138543362;
            v117 = v101;
            v54 = v52;
            v55 = "%{public}@ is currenlty marked as to be ignored for download - skipping";
LABEL_64:
            v57 = 12;
LABEL_65:
            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, v55, buf, v57);
            goto LABEL_66;
          }

          if (v53)
          {
            *buf = 138543362;
            v117 = v101;
            v54 = v52;
            v55 = "%{public}@ is currenlty marked to be restored and will be handled by appstored - skipping";
            goto LABEL_64;
          }
        }

        else if (bOOLValue4)
        {
          v58 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544130;
            v117 = v101;
            v118 = 1024;
            *v119 = bOOLValue2;
            *&v119[4] = 1024;
            *&v119[6] = bOOLValue3;
            LOWORD(v120) = 1024;
            *(&v120 + 2) = 1;
            v54 = v58;
            v55 = "%{public}@ is auto demoted: %d, manual demoted: %d, system app:%d - skipping";
            v57 = 30;
            goto LABEL_65;
          }
        }

        else if ([_getSystemAppPlaceholders containsObject:v101])
        {
          v59 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v117 = v101;
            v54 = v59;
            v55 = "%{public}@ is system app placeholder - skipping";
            goto LABEL_64;
          }
        }

        else
        {
          if (((bOOLValue2 | bOOLValue3) & 1) == 0)
          {
            goto LABEL_80;
          }

          v60 = [v92 containsObject:v101];
          v61 = _ATLogCategorySyncBundle();
          v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
          if (v60)
          {
            if (v62)
            {
              *buf = 138543874;
              v117 = v101;
              v118 = 1024;
              *v119 = bOOLValue2;
              *&v119[4] = 1024;
              *&v119[6] = bOOLValue3;
              _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "%{public}@ is currenlty demoted (manual:%d, auto:%d) - but will be installed as it's requested by client", buf, 0x18u);
            }

LABEL_80:
            v63 = selfCopy;
            if (!v42)
            {
              v42 = [v38 objectForKey:@"NameFromItunes"];
            }

            if (v42)
            {
              v64 = v42;
            }

            else
            {
              v64 = v101;
            }

            if (![AppsClient _makeIconFromBundlePath:v40 saveTo:v41])
            {
              v41 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/iTunesArtwork", [v38 objectForKey:@"Container"]);
            }

            v65 = [NSURL fileURLWithPath:v41 isDirectory:0];
            v90 = v64;
            v66 = [ATAsset downloadAssetWithIdentifier:v101 dataclass:@"Application" prettyName:v64];
            v89 = v65;
            [v66 setIcon:v65];
            [v66 setIsRestore:0];
            v67 = objc_opt_new();
            v68 = [(AppsClient *)selfCopy _restoreStatePropertyForKey:@"path" identifier:v101 version:v100];
            if (v68)
            {
              v69 = v68;
              v70 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", v68];
              v71 = _ATLogCategorySyncBundle();
              v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
              if (v70)
              {
                if (v72)
                {
                  *buf = 138543618;
                  v117 = v101;
                  v118 = 2114;
                  *v119 = v69;
                  _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, "Recovered download path for %{public}@ at %{public}@", buf, 0x16u);
                }

                isRestore = [v66 isRestore];
                v74 = &off_19620;
                if (isRestore)
                {
                  goto LABEL_101;
                }

                goto LABEL_98;
              }

              if (v72)
              {
                *buf = 138543618;
                v117 = v101;
                v118 = 2114;
                *v119 = v69;
                _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, "Download path recovered for %{public}@ but the file is missing: %{public}@", buf, 0x16u);
              }
            }

            [v66 isRestore];
LABEL_98:
            if ([v66 isRestore])
            {
              v74 = &off_19638;
            }

            else
            {
              v74 = &off_19650;
            }

LABEL_101:
            [v67 setObject:v74 forKeyedSubscript:@"AssetParts"];
            if (v100)
            {
              [v67 setObject:v100 forKeyedSubscript:@"Version"];
            }

            if ([v67 count])
            {
              [v66 setVariantOptions:v67];
            }

            [v66 setStorePlist:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/iTunesMetadata.plist", objc_msgSend(v38, "objectForKey:", @"Container"}];
            [v66 setInfoPlist:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/Info.plist", v40)}];
            [v66 setAssetType:@"Application"];
            v75 = _ATLogCategorySyncBundle();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              storePlist = [v66 storePlist];
              infoPlist = [v66 infoPlist];
              storePID = [v66 storePID];
              isRestore2 = [v66 isRestore];
              *buf = 138545410;
              if (isRestore2)
              {
                v80 = 121;
              }

              else
              {
                v80 = 110;
              }

              v117 = v101;
              v118 = 2114;
              *v119 = v90;
              *&v119[8] = 2114;
              v120 = v100;
              v121 = 2114;
              v122 = v89;
              v123 = 2114;
              v124 = v40;
              v125 = 2114;
              v126 = storePlist;
              v127 = 2114;
              v128 = infoPlist;
              v129 = 2048;
              v130 = storePID;
              v63 = selfCopy;
              v131 = 1024;
              v132 = v80;
              _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEFAULT, "Asset %{public}@ (pretty=%{public}@, version=%{public}@) prepped with icon %{public}@, at %{public}@, meta at %{public}@, info at %{public}@, storePid=%lld, isRestore=%c", buf, 0x58u);
            }

            v81 = [LSApplicationProxy applicationProxyForIdentifier:v101 placeholder:0];
            v82 = v81;
            if (v81)
            {
              if ([v81 isInstalled] && (objc_msgSend(v82, "isPlaceholder") & 1) == 0)
              {
                v83 = _ATLogCategorySyncBundle();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v117 = v101;
                  _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "App %{public}@ is already installed and will be updated.", buf, 0xCu);
                }

                v82 = &dword_0 + 1;
              }

              else
              {
                v82 = 0;
              }
            }

            if ([(AppsClient *)v63 prepareAppForInstallUsingCoordination:v66 existingApp:v82])
            {
              [(NSMutableArray *)v88 addObject:v66];
              accessQueue = v63->_accessQueue;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_8C54;
              block[3] = &unk_18550;
              v103 = v82;
              block[4] = v63;
              block[5] = v101;
              dispatch_sync(accessQueue, block);
            }

            else
            {
              v85 = _ATLogCategorySyncBundle();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v117 = v101;
                _os_log_impl(&dword_0, v85, OS_LOG_TYPE_ERROR, "Not requesting app asset for %{public}@", buf, 0xCu);
              }

              [(AppsClient *)v63 changeAssetID:v101 toDo:@"FAILED"];
            }

            goto LABEL_66;
          }

          if (v62)
          {
            *buf = 138543874;
            v117 = v101;
            v118 = 1024;
            *v119 = bOOLValue2;
            *&v119[4] = 1024;
            *&v119[6] = bOOLValue3;
            v54 = v61;
            v55 = "%{public}@ is currenlty demoted (manual:%d, auto:%d) - skipping";
            v57 = 24;
            goto LABEL_65;
          }
        }

LABEL_66:
        v37 = v37 + 1;
      }

      while (v98 != v37);
      v86 = [obj countByEnumeratingWithState:&v104 objects:v133 count:16];
      v98 = v86;
    }

    while (v86);
  }

  return v88;
}

- (void)clearSyncData
{
  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "blasting work area", buf, 2u);
  }

  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:@"/var/mobile/Library/ApplicationSync", 0];
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Cancelling remaining coordinator installs", v11, 2u);
  }

  [(AppsClient *)self assetSyncFinishedWithStatus:0 outstandingItems:self->_outstandingAFCTransfers];
  v5 = MobileInstallationLookupUninstalled();
  if (v5)
  {
    v6 = v5;
    [v5 allKeys];
    if (MobileInstallationClearUninstalled())
    {
      v7 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to clear uninstalled apps list", v10, 2u);
      }
    }

    CFRelease(v6);
  }

  else
  {
    v8 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failed to fetch uninstalled apps list to clear it", v9, 2u);
    }
  }
}

- (id)installedAssetMetrics
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_8FEC;
  v8[3] = &unk_18578;
  v8[4] = &v13;
  v8[5] = &v9;
  [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v10[3];
    v4 = v14[3];
    *buf = 134218496;
    v18 = v3;
    v19 = 2048;
    v20 = v4;
    v21 = 2048;
    v22 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "found %ld apps using %lld bytes (%lld purgeable)", buf, 0x20u);
  }

  v5 = [NSNumber numberWithUnsignedLongLong:v10[3]];
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:v5, @"_Count", [NSNumber numberWithUnsignedLongLong:v14[3]], @"_PhysicalSize", [NSNumber numberWithUnsignedLongLong:0], @"_PurgeableSize", 0];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

- (id)appleIDsForAssets
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "getting id's for assets", buf, 2u);
  }

  v3 = +[NSMutableSet set];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_91A8;
  v6[3] = &unk_185A0;
  v6[4] = v3;
  [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Returning apple ID set: %{public}@", buf, 0xCu);
  }

  return v3;
}

- (id)accountsForAssets
{
  v2 = +[NSMutableSet set];
  v3 = +[NSMutableSet set];
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "getting accounts for assets", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9660;
  v7[3] = &unk_185C8;
  v7[4] = v3;
  v7[5] = v2;
  [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v2;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Returning accountInfo: %{public}@", buf, 0xCu);
  }

  return v2;
}

- (void)assetTransfer:(id)transfer updatedProgress:(double)progress
{
  v7 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = progress;
    *&buf[12] = 2114;
    *&buf[14] = [transfer identifier];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "finished transferring %lf for %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v11 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_99FC;
  block[3] = &unk_18488;
  block[5] = transfer;
  block[6] = buf;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  [(AppsClient *)self updateTransferProgressForApp:transfer existingApp:*(*&buf[8] + 24)];
  -[NSMutableSet addObject:](self->_outstandingAFCTransfers, "addObject:", [transfer identifier]);
  _Block_object_dispose(buf, 8);
}

- (id)disabledAssetTypes
{
  if ([(AppsClient *)self _appInstallationAllowed]|| [(AppsClient *)self _appRemovalAllowed])
  {
    return 0;
  }

  else
  {
    return [NSSet setWithObjects:@"Application", 0];
  }
}

- (void)prepareForBackup
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "preparing for backup", buf, 2u);
  }

  [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "finished preparing for backup", v4, 2u);
  }
}

+ (void)_notifySpringBoard:(BOOL)board
{
  boardCopy = board;
  out_token = 0;
  v4 = notify_register_check("com.apple.springboard.atc.wsyncnotify", &out_token);
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "done";
    if (boardCopy)
    {
      v6 = "starting";
    }

    *buf = 136315138;
    v10 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Notifying SB we are %s syncing", buf, 0xCu);
  }

  SBSSpringBoardBlockableServerPort();
  if (v4)
  {
    v7 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v10) = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Uh Oh...can't send notification to SB:%d", buf, 8u);
    }
  }

  else
  {
    notify_set_state(out_token, boardCopy);
    notify_post("com.apple.springboard.atc.wsyncnotify");
  }
}

+ (BOOL)_makeIconFromBundlePath:(id)path saveTo:(id)to
{
  v6 = +[NSMutableData data];
  if (!path)
  {
    sub_C29C(&v24);
    return v24;
  }

  v7 = v6;
  v8 = CFURLCreateWithFileSystemPath(0, path, kCFURLPOSIXPathStyle, 1u);
  if (!v8)
  {
    sub_C244(&v24);
    return v24;
  }

  v9 = v8;
  v10 = CFBundleCreate(0, v8);
  if (!v10)
  {
    sub_C1E8(v9);
    return 0;
  }

  v11 = v10;
  v12 = LICreateDeviceAppropriateHomeScreenIconImageFromBundle();
  if (!v12)
  {
    v17 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      v18 = "couldn't create SB icon from bundle";
LABEL_21:
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, v18, &v24, 2u);
    }

LABEL_22:
    v15 = 0;
    v14 = 0;
    goto LABEL_8;
  }

  v13 = CGImageDestinationCreateWithData(v7, @"public.png", 1uLL, 0);
  if (!v13)
  {
    v17 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      v18 = "couldn't create image";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v14 = v13;
  CGImageDestinationAddImage(v13, v12, 0);
  if (!CGImageDestinationFinalize(v14))
  {
    v19 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      v20 = "Couldn't finalize image";
      v21 = v19;
      v22 = 2;
LABEL_27:
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, v20, &v24, v22);
    }

LABEL_28:
    v15 = 0;
    goto LABEL_8;
  }

  v15 = 1;
  if (([(__CFData *)v7 writeToFile:to atomically:1]& 1) == 0)
  {
    v23 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = 138543362;
      toCopy = to;
      v20 = "Couldn't save image file to %{public}@";
      v21 = v23;
      v22 = 12;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

LABEL_8:
  CFRelease(v9);
  CFRelease(v11);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v15;
}

+ (id)_orderTheItems:(id)items
{
  memset(size, 0, sizeof(size));
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [items count]);
  SBSSpringBoardBlockableServerPort();
  SBGetFlattenedIconState();
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "got no icon sort order from SB", buf, 2u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [0 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v31;
    *&v7 = 138543362;
    v24 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(0);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [items objectForKey:{v11, v24}];
        if (v12)
        {
          v13 = v12;
          v14 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v24;
            v37 = v11;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "prioritize %{public}@", buf, 0xCu);
          }

          [(NSMutableArray *)v4 addObject:v13];
          [items removeObjectForKey:v11];
        }
      }

      v8 = [0 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [items countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v27;
    *&v16 = 138543362;
    v25 = v16;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(items);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        v21 = [items objectForKey:{v20, v25}];
        v22 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v25;
          v37 = v20;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "lastly %{public}@", buf, 0xCu);
        }

        [(NSMutableArray *)v4 addObject:v21];
      }

      v17 = [items countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v17);
  }

  return v4;
}

- (BOOL)_isATCDaemon
{
  bundleIdentifier = [+[NSBundle mainBundle](NSBundle bundleIdentifier];

  return [(NSString *)bundleIdentifier isEqualToString:@"com.apple.atc"];
}

- (id)_restoreStatePropertyForKey:(id)key identifier:(id)identifier version:(id)version
{
  v10 = 0;
  result = [NSData dataWithContentsOfFile:@"/var/mobile/Library/ApplicationSync/RestoreState.plist" options:2 error:&v10];
  if (result)
  {
    result = [NSPropertyListSerialization propertyListWithData:result options:1 format:0 error:&v10];
    if (result)
    {
      v9 = result;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return [objc_msgSend(objc_msgSend(v9 objectForKeyedSubscript:{identifier), "objectForKeyedSubscript:", version), "objectForKeyedSubscript:", key}];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)_setRestoreStatePropertyValue:(id)value forKey:(id)key identifier:(id)identifier version:(id)version
{
  v13 = 0;
  v10 = [NSData dataWithContentsOfFile:@"/var/mobile/Library/ApplicationSync/RestoreState.plist" options:2 error:&v13];
  if (v10)
  {
    v11 = [NSPropertyListSerialization propertyListWithData:v10 options:1 format:0 error:&v13];
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
  }

  v12 = v11;
  if (![v11 objectForKeyedSubscript:identifier])
  {
    [v12 setObject:+[NSMutableDictionary dictionary](NSMutableDictionary forKeyedSubscript:{"dictionary"), identifier}];
  }

  if (![objc_msgSend(v12 objectForKeyedSubscript:{identifier), "objectForKeyedSubscript:", version}])
  {
    [objc_msgSend(v12 objectForKeyedSubscript:{identifier), "setObject:forKeyedSubscript:", +[NSMutableDictionary dictionary](NSMutableDictionary, "dictionary"), version}];
  }

  [objc_msgSend(objc_msgSend(v12 objectForKeyedSubscript:{identifier), "objectForKeyedSubscript:", version), "setObject:forKeyedSubscript:", value, key}];
  [v12 writeToFile:@"/var/mobile/Library/ApplicationSync/RestoreState.plist" atomically:1];
}

- (void)cleanRestoreStateForIdentifier:(id)identifier
{
  v6 = 0;
  v4 = [NSData dataWithContentsOfFile:@"/var/mobile/Library/ApplicationSync/RestoreState.plist" options:2 error:&v6];
  if (v4)
  {
    v5 = [NSPropertyListSerialization propertyListWithData:v4 options:1 format:0 error:&v6];
    [v5 removeObjectForKey:identifier];
    if ([v5 count])
    {
      [v5 writeToFile:@"/var/mobile/Library/ApplicationSync/RestoreState.plist" atomically:1];
    }

    else
    {
      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:@"/var/mobile/Library/ApplicationSync/RestoreState.plist", 0];
    }
  }
}

- (void)changeAssetID:(id)d toDo:(id)do
{
  v6 = [AppsClient _loadPlist:@"/var/mobile/Library/ApplicationSync/iTunesStuff/ApplicationsSync.plist" withError:0];
  if ([v6 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v6 objectAtIndex:v7];
      if ([objc_msgSend(v8 objectForKey:{@"identifier", "isEqualToString:", d}])
      {
        break;
      }

      if (++v7 >= [v6 count])
      {
        return;
      }
    }

    v9 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543874;
      dCopy = d;
      v12 = 2114;
      v13 = [v8 objectForKey:@"operation"];
      v14 = 2114;
      doCopy = do;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Changing %{public}@ from %{public}@ to %{public}@", &v10, 0x20u);
    }

    [v8 setObject:do forKey:@"operation"];
    [(NSData *)[NSPropertyListSerialization dataWithPropertyList:0 format:0 options:? error:?], "writeToFile:atomically:", @"/var/mobile/Library/ApplicationSync/iTunesStuff/ApplicationsSync.plist", 1];
  }
}

- (void)dataMigratorSetPlaceHolderPromiseForRestoreAppBundle:(id)bundle
{
  restoreQueue = self->_restoreQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A954;
  v4[3] = &unk_184B0;
  v4[4] = self;
  v4[5] = bundle;
  dispatch_sync(restoreQueue, v4);
}

- (void)dataMigratorCancelledCoordinatorForRestoreAppBundle:(id)bundle
{
  restoreQueue = self->_restoreQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_AAB0;
  v4[3] = &unk_184B0;
  v4[4] = self;
  v4[5] = bundle;
  dispatch_sync(restoreQueue, v4);
}

- (void)icDidInstallPlaceHolderForAppBundle:(id)bundle
{
  restoreQueue = self->_restoreQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_AC0C;
  v4[3] = &unk_184B0;
  v4[4] = self;
  v4[5] = bundle;
  dispatch_sync(restoreQueue, v4);
}

- (id)_operationStateForIdentifier:(id)identifier
{
  v4 = [AppsClient _loadPlist:@"/var/mobile/Library/ApplicationSync/iTunesStuff/ApplicationsSync.plist" withError:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([objc_msgSend(v9 objectForKeyedSubscript:{@"identifier", "isEqualToString:", identifier}])
        {
          return [v9 objectForKeyedSubscript:@"operation"];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)_progressForAssetIdentifier:(id)identifier
{
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    identifierCopy = identifier;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Not returning NSProgress * for %{public}@ as installcoordination is enabled", &v6, 0xCu);
  }

  return 0;
}

- (id)placeholderAppPathForBundleIdentifier:(id)identifier
{
  v3 = [[NSArray alloc] initWithObjects:{NSTemporaryDirectory(), @"com.apple.atc.Apps", identifier, 0}];
  v4 = [[NSString pathWithComponents:?], "stringByAppendingPathExtension:", @"app"];

  return v4;
}

- (int)_getAndResetNumAppInstallsAttempted
{
  do
  {
    numAppInstallsAttempted = self->_numAppInstallsAttempted;
    v3 = numAppInstallsAttempted;
    atomic_compare_exchange_strong_explicit(&self->_numAppInstallsAttempted, &v3, 0, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != numAppInstallsAttempted);
  return numAppInstallsAttempted;
}

- (BOOL)_processItunesRestoreInfo
{
  v45 = 0;
  v3 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v3 fileExistsAtPath:@"/var/mobile/Media/iTunesRestore/RestoreApplications.plist" isDirectory:0])
  {
    v26 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "no itunes restore plist found - skipping processing of itunes restored apps", buf, 2u);
    }

    v12 = 1;
    return v12 & 1;
  }

  v4 = [NSData dataWithContentsOfFile:@"/var/mobile/Media/iTunesRestore/RestoreApplications.plist" options:2 error:&v45];
  v5 = _ATLogCategorySyncBundle();
  v6 = v5;
  if (!v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v47 = v45;
      v27 = "failed to read itunes app restore info. err=%{public}@";
LABEL_40:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);
    }

LABEL_41:
    v12 = 0;
    goto LABEL_46;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "processing itunes restore info", buf, 2u);
  }

  v38 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v45];
  if (!v38)
  {
    v6 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v47 = v45;
      v27 = "failed to parse itunes app restore info. err=%{public}@";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v35 = v3;
  v7 = [AppsClient _loadDemotedAppsPlist:@"/var/mobile/Library/Preferences/com.apple.MobileBackup.DemotedApps.plist" withError:0];
  v8 = [v7 objectForKey:@"AutomaticDowngrades"];
  v37 = [v7 objectForKey:@"IntentionalDowngrades"];
  v9 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Demoted Apps: %{public}@", buf, 0xCu);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [v38 allKeys];
  v10 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_43;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v42;
  do
  {
    v14 = 0;
    v36 = v11;
    do
    {
      if (*v42 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v41 + 1) + 8 * v14);
      if ([v8 containsObject:v15])
      {
        v16 = 2;
      }

      else
      {
        v16 = [v37 containsObject:v15];
      }

      v17 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v47 = v15;
        v48 = 2048;
        v49 = v16;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "processing itunes restore info for '%{public}@' demotionStatus :%lu", buf, 0x16u);
      }

      if ([(AppsClient *)self _placeholderExistsForApplication:v15])
      {
        v18 = _ATLogCategorySyncBundle();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        *buf = 138543362;
        v47 = v15;
        v19 = v18;
        v20 = "placeholder already exists for '%{public}@' - skiping'";
LABEL_26:
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
        goto LABEL_30;
      }

      v21 = [v38 objectForKey:v15];
      if (!v21)
      {
        v24 = _ATLogCategorySyncBundle();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        *buf = 138543362;
        v47 = v15;
        v19 = v24;
        v20 = "no itunes restore info for '%{public}@' - skipping";
        goto LABEL_26;
      }

      v22 = v21;
      v23 = [v21 objectForKey:@"iTunesMetadata"];
      if (v23)
      {
        v12 = -[AppsClient prepareAppForRestoreUsingCoordination:iTunesMetadata:sinfData:iconData:demotionStatus:](self, "prepareAppForRestoreUsingCoordination:iTunesMetadata:sinfData:iconData:demotionStatus:", v15, v23, [v22 objectForKey:@"ApplicationSINF"], objc_msgSend(v22, "objectForKey:", @"PlaceholderIcon"), v16);
      }

      else
      {
        v25 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v47 = v15;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "no iTunesMetadata for '%{public}@' - ignoring", buf, 0xCu);
        }
      }

      v11 = v36;
LABEL_30:
      v14 = v14 + 1;
    }

    while (v11 != v14);
    v11 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  }

  while (v11);
LABEL_43:
  restoringPlaceholderCount = self->_restoringPlaceholderCount;
  v29 = dispatch_time(0, 5000000000 * restoringPlaceholderCount);
  v30 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = self->_restoringPlaceholderCount;
    *buf = 134218240;
    v47 = 5 * restoringPlaceholderCount;
    v48 = 2048;
    v49 = v31;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Will wait for %lld seconds for %lld placeholders to install", buf, 0x16u);
  }

  dispatch_group_wait(self->_restorePlaceHoldersWaitGroup, v29);
  restoreQueue = self->_restoreQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B6A4;
  block[3] = &unk_184D8;
  block[4] = self;
  dispatch_sync(restoreQueue, block);
  v3 = v35;
LABEL_46:
  [(NSFileManager *)v3 removeItemAtPath:@"/var/mobile/Library/Logs/MediaServices/RestoreApplications.plist" error:0];
  if (![(NSFileManager *)v3 moveItemAtPath:@"/var/mobile/Media/iTunesRestore/RestoreApplications.plist" toPath:@"/var/mobile/Library/Logs/MediaServices/RestoreApplications.plist" error:&v45])
  {
    v33 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v47 = v45;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "failed to copy itunes metadata. err=%{public}@", buf, 0xCu);
    }
  }

  return v12 & 1;
}

- (BOOL)createPlaceHolderPath:(id)path forBundleIdentifier:(id)identifier withAttributes:(id)attributes
{
  v17 = 0;
  v7 = [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:path attributes:1 error:attributes, &v17];
  v8 = v7 && v17 == 0;
  if (v8 || ([AITransactionLog logScenario:@"iTunes App Restore" step:0 success:0 forBundleID:identifier description:@"Failed to create app directory"], !v17))
  {
    v15 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      identifierCopy2 = identifier;
      v20 = 2114;
      pathCopy2 = path;
      v11 = "Created app directory for '%{public}@' at %{public}@.";
      v12 = v15;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 22;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      msv_description = [v17 msv_description];
      *buf = 138543874;
      identifierCopy2 = identifier;
      v20 = 2114;
      pathCopy2 = path;
      v22 = 2114;
      v23 = msv_description;
      v11 = "Created app directory for '%{public}@' at %{public}@. error=%{public}@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
LABEL_10:
      _os_log_impl(&dword_0, v12, v13, v11, buf, v14);
    }
  }

  return v7;
}

- (BOOL)writeIconData:(id)data atPath:(id)path returningFileSize:(unint64_t *)size forBundleIdentifier:(id)identifier withAttributes:(id)attributes
{
  v21 = 0;
  if (data)
  {
    v12 = +[NSFileManager defaultManager];
    v13 = [(NSFileManager *)v12 createFileAtPath:path contents:data attributes:attributes];
    if (v13 && ((v14 = [(NSFileManager *)v12 attributesOfItemAtPath:path error:&v21]) != 0 ? (v15 = v21 == 0) : (v15 = 0), v15))
    {
      fileSize = [(NSDictionary *)v14 fileSize];
      v16 = fileSize;
      if (size)
      {
        *size = fileSize;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      identifierCopy2 = identifier;
      v24 = 2114;
      pathCopy = path;
      v26 = 1024;
      v27 = v13;
      v28 = 2048;
      v29 = v16;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "icon data for '%{public}@' was writen to %{public}@ with status:%d fileSize:%llu", buf, 0x26u);
    }
  }

  else
  {
    v18 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      identifierCopy2 = identifier;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "no icon data for '%{public}@'", buf, 0xCu);
    }

    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)_isRecoverableError:(id)error
{
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    errorCopy = error;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Treating error %{public}@ as non recoverable", &v6, 0xCu);
  }

  return 0;
}

- (void)_enumeratePlaceholdersWithBlock:(id)block
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_BB68;
  v3[3] = &unk_18630;
  v3[4] = block;
  [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
}

- (id)_getSystemAppPlaceholders
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_BD84;
  v11 = sub_BD94;
  v12 = +[NSMutableSet set];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_BDA0;
  v6[3] = &unk_18658;
  v6[4] = &v7;
  [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v8[5];
    *buf = 138543362;
    v14 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "SystemAppPlaceholders %{public}@", buf, 0xCu);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setupInstallCoordinatorObserver
{
  if (!self->_appInstallObserver)
  {
    self->_appInstallObserver = [[IXAppInstallObserver alloc] initWithMachServiceName:@"com.apple.atc.xpc.icappobserverdelegate" forClients:+[NSSet setWithObjects:](NSSet delegate:{"setWithObjects:", &off_19668, 0), self}];
  }
}

+ (id)_loadPlist:(id)plist withError:(id *)error
{
  errorCopy = error;
  v5 = [NSData dataWithContentsOfFile:plist options:2 error:error];
  if (![(NSData *)v5 length])
  {
    return 0;
  }

  v6 = [NSPropertyListSerialization propertyListWithData:v5 options:1 format:0 error:errorCopy];
  if (!v6)
  {
    v8 = _ATLogCategorySyncBundle();
    if (sub_BEE4(v8))
    {
      v13 = 0;
      v9 = "couldn't parse todo list";
      v10 = &v13;
LABEL_9:
      _os_log_impl(&dword_0, errorCopy, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    }

    return 0;
  }

  errorCopy = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = _ATLogCategorySyncBundle();
    if (sub_BEE4(v11))
    {
      v12 = 0;
      v9 = "todo list is not an array";
      v10 = &v12;
      goto LABEL_9;
    }

    return 0;
  }

  return errorCopy;
}

+ (id)_loadDemotedAppsPlist:(id)plist withError:(id *)error
{
  errorCopy = error;
  v5 = [NSData dataWithContentsOfFile:plist options:2 error:error];
  if (![(NSData *)v5 length])
  {
    return 0;
  }

  v6 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:errorCopy];
  if (!v6)
  {
    v8 = _ATLogCategorySyncBundle();
    if (sub_BEE4(v8))
    {
      v13 = 0;
      v9 = "couldn't parse demoted apps list";
      v10 = &v13;
LABEL_9:
      _os_log_impl(&dword_0, errorCopy, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    }

    return 0;
  }

  errorCopy = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = _ATLogCategorySyncBundle();
    if (sub_BEE4(v11))
    {
      v12 = 0;
      v9 = "demoted apps list is not a dictionary";
      v10 = &v12;
      goto LABEL_9;
    }

    return 0;
  }

  return errorCopy;
}

@end