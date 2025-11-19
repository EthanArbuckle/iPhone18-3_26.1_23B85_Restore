@interface MBSiriPlugin
- (BOOL)_deviceIsNonAopDevice;
- (id)startingBackupWithEngine:(id)a3;
- (id)startingRestoreWithPolicy:(id)a3 engine:(id)a4;
@end

@implementation MBSiriPlugin

- (id)startingBackupWithEngine:(id)a3
{
  v4 = a3;
  if ([v4 isDeviceTransferEngine] && -[MBSiriPlugin _deviceIsNonAopDevice](self, "_deviceIsNonAopDevice"))
  {
    v5 = [v4 domainManager];
    v6 = [v5 domainForName:@"HomeDomain"];

    if (!v6)
    {
      sub_1000A0508();
    }

    v7 = [v6 standardizedRelativePathFor:@"Library/VoiceTrigger/SAT"];
    v8 = [v6 relativePathsToOnlyBackupEncrypted];
    v9 = [v8 containsObject:v7];

    if (v9)
    {
      v10 = [v6 relativePathsToOnlyBackupEncrypted];
      v11 = [v10 mutableCopy];

      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v28 = v6;
        v29 = 2114;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %{public}@ from relativePathsToOnlyBackupEncrypted", buf, 0x16u);
        v23 = v6;
        v25 = v7;
        _MBLog();
      }

      [v11 removeObject:v7];
      [v6 setRelativePathsToOnlyBackupEncrypted:v11];
    }

    v13 = [v6 relativePathsToRestoreOnly];
    v14 = [v13 containsObject:v7];

    if (v14)
    {
      v15 = [v6 relativePathsToRestoreOnly];
      v16 = [v15 mutableCopy];

      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v28 = v6;
        v29 = 2114;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %{public}@ from relativePathsToRestoreOnly", buf, 0x16u);
        v24 = v6;
        v26 = v7;
        _MBLog();
      }

      [v16 removeObject:v7];
      [v6 setRelativePathsToRestoreOnly:v16];
    }

    v18 = [v6 relativePathsNotToRestore];

    if (v18)
    {
      v19 = [v6 relativePathsNotToRestore];
      v20 = [v19 mutableCopy];
    }

    else
    {
      v20 = objc_opt_new();
    }

    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = v6;
      v29 = 2114;
      v30 = @"Library/VoiceTrigger/SAT";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsNotToRestore", buf, 0x16u);
      _MBLog();
    }

    [v20 addObject:@"Library/VoiceTrigger/SAT"];
    [v6 setRelativePathsNotToRestore:v20];
  }

  return 0;
}

- (id)startingRestoreWithPolicy:(id)a3 engine:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isDeviceTransferEngine])
  {
    v7 = [v6 domainManager];
    v8 = [v7 domainForName:@"HomeDomain"];

    if (!v8)
    {
      sub_1000A0534();
    }

    v9 = [v8 relativePathsNotToRemoveIfNotRestored];

    if (v9)
    {
      v10 = [v8 relativePathsNotToRemoveIfNotRestored];
      v11 = [v10 mutableCopy];
    }

    else
    {
      v11 = objc_opt_new();
    }

    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = @"Library/VoiceTrigger/SAT";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsNotToRemoveIfNotRestored", buf, 0x16u);
      _MBLog();
    }

    [v11 addObject:@"Library/VoiceTrigger/SAT"];
    [v8 setRelativePathsNotToRemoveIfNotRestored:v11];
  }

  return 0;
}

- (BOOL)_deviceIsNonAopDevice
{
  v2 = [[NSSet alloc] initWithObjects:{@"iPhone5, 1", @"iPhone5, 2", @"iPhone5, 3", @"iPhone5, 4", @"iPhone6, 1", @"iPhone6, 2", @"iPhone7, 1", @"iPhone7, 2", @"iPad3, 4", @"iPad3, 5", @"iPad3, 6", @"iPad4, 1", @"iPad4, 2", @"iPad4, 3", @"iPad4, 4", @"iPad4, 5", @"iPad4, 6", @"iPad4, 7", @"iPad4, 8", @"iPad4, 9", @"iPad5, 1", @"iPad5, 2", @"iPad5, 3", @"iPad5, 4", @"iPad6, 7", @"iPad6, 8", @"iPad6, 11", @"iPad6, 12", 0}];
  v3 = MBProductType();
  v4 = [v2 containsObject:v3];

  return v4;
}

@end