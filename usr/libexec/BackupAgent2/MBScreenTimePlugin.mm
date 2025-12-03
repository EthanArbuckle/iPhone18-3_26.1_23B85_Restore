@interface MBScreenTimePlugin
- (id)startingBackupWithEngine:(id)engine;
- (id)startingRestoreWithPolicy:(id)policy engine:(id)engine;
- (void)_updatePathsForHomeDomainWithEngine:(id)engine;
@end

@implementation MBScreenTimePlugin

- (id)startingBackupWithEngine:(id)engine
{
  engineCopy = engine;
  if (!MBIsInternalInstall() || (+[MBBehaviorOptions sharedOptions](MBBehaviorOptions, "sharedOptions"), v5 = objc_claimAutoreleasedReturnValue(), [v5 domainsToBackUpRegex], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    if ([engineCopy isDeviceTransferEngine])
    {
      [(MBScreenTimePlugin *)self _updatePathsForHomeDomainWithEngine:engineCopy];
    }
  }

  return 0;
}

- (id)startingRestoreWithPolicy:(id)policy engine:(id)engine
{
  engineCopy = engine;
  if ([engineCopy isDeviceTransferEngine])
  {
    [(MBScreenTimePlugin *)self _updatePathsForHomeDomainWithEngine:engineCopy];
  }

  return 0;
}

- (void)_updatePathsForHomeDomainWithEngine:(id)engine
{
  engineCopy = engine;
  domainManager = [engineCopy domainManager];
  v5 = [domainManager domainForName:@"HomeDomain"];

  if (!v5)
  {
    sub_1000A0C70();
  }

  v6 = [v5 standardizedRelativePathFor:@"Library/Application Support/com.apple.remotemanagementd"];
  relativePathsNotToBackup = [v5 relativePathsNotToBackup];
  v8 = [relativePathsNotToBackup containsObject:v6];

  if (v8)
  {
    relativePathsNotToBackup2 = [v5 relativePathsNotToBackup];
    v10 = [relativePathsNotToBackup2 mutableCopy];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = v5;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %{public}@ from relativePathsNotToBackup", buf, 0x16u);
      v20 = v5;
      v21 = v6;
      _MBLog();
    }

    [v10 removeObject:v6];
    [v5 setRelativePathsNotToBackup:v10];
  }

  relativePathsToBackupAndRestore = [v5 relativePathsToBackupAndRestore];

  if (relativePathsToBackupAndRestore)
  {
    relativePathsToBackupAndRestore2 = [v5 relativePathsToBackupAndRestore];
    v14 = [relativePathsToBackupAndRestore2 mutableCopy];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = v5;
    v24 = 2114;
    v25 = @"Library/Application Support/com.apple.remotemanagementd";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsToBackupAndRestore", buf, 0x16u);
    _MBLog();
  }

  [v14 addObject:@"Library/Application Support/com.apple.remotemanagementd"];
  [v5 setRelativePathsToBackupAndRestore:v14];
  relativePathsToIgnoreExclusionsForDrive = [v5 relativePathsToIgnoreExclusionsForDrive];

  if (relativePathsToIgnoreExclusionsForDrive)
  {
    relativePathsToIgnoreExclusionsForDrive2 = [v5 relativePathsToIgnoreExclusionsForDrive];
    v18 = [relativePathsToIgnoreExclusionsForDrive2 mutableCopy];
  }

  else
  {
    v18 = objc_opt_new();
  }

  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = v5;
    v24 = 2114;
    v25 = @"Library/Application Support/com.apple.remotemanagementd";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsToIgnoreExclusionsForDrive", buf, 0x16u);
    _MBLog();
  }

  [v18 addObject:@"Library/Application Support/com.apple.remotemanagementd"];
  [v5 setRelativePathsToIgnoreExclusionsForDrive:v18];
}

@end