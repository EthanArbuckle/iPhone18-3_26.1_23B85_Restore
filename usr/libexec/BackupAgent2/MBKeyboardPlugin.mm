@interface MBKeyboardPlugin
- (id)startingBackupWithEngine:(id)a3;
- (id)startingRestoreWithPolicy:(id)a3 engine:(id)a4;
- (void)_addRelativePathsToPathsToBackupAndRestore:(id)a3 forDomain:(id)a4;
- (void)_removeRelativePathsFromPathsNotToBackup:(id)a3 forDomain:(id)a4;
- (void)_removeRelativePathsFromPathsNotToRestore:(id)a3 forDomain:(id)a4;
- (void)_updatePathsForKeyboardDomainWithEngine:(id)a3;
@end

@implementation MBKeyboardPlugin

- (id)startingBackupWithEngine:(id)a3
{
  v4 = a3;
  if (!MBIsInternalInstall() || (+[MBBehaviorOptions sharedOptions](MBBehaviorOptions, "sharedOptions"), v5 = objc_claimAutoreleasedReturnValue(), [v5 domainsToBackUpRegex], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    if ([v4 isDeviceTransferEngine])
    {
      [(MBKeyboardPlugin *)self _updatePathsForKeyboardDomainWithEngine:v4];
    }
  }

  return 0;
}

- (id)startingRestoreWithPolicy:(id)a3 engine:(id)a4
{
  v5 = a4;
  if ([v5 isDeviceTransferEngine])
  {
    [(MBKeyboardPlugin *)self _updatePathsForKeyboardDomainWithEngine:v5];
  }

  return 0;
}

- (void)_removeRelativePathsFromPathsNotToBackup:(id)a3 forDomain:(id)a4
{
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v6 standardizedRelativePathFor:{v11, v18, v19}];
        v13 = [v6 relativePathsNotToBackup];
        v14 = [v13 containsObject:v12];

        if (v14)
        {
          v15 = [v6 relativePathsNotToBackup];
          v16 = [v15 mutableCopy];

          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v25 = v6;
            v26 = 2114;
            v27 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %{public}@ from relativePathsNotToBackup", buf, 0x16u);
            v18 = v6;
            v19 = v11;
            _MBLog();
          }

          [v16 removeObject:v12];
          [v6 setRelativePathsNotToBackup:v16];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }
}

- (void)_removeRelativePathsFromPathsNotToRestore:(id)a3 forDomain:(id)a4
{
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v6 standardizedRelativePathFor:{v11, v18, v19}];
        v13 = [v6 relativePathsNotToRestore];
        v14 = [v13 containsObject:v12];

        if (v14)
        {
          v15 = [v6 relativePathsNotToRestore];
          v16 = [v15 mutableCopy];

          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v25 = v6;
            v26 = 2114;
            v27 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %{public}@ from relativePathsNotToRestore", buf, 0x16u);
            v18 = v6;
            v19 = v11;
            _MBLog();
          }

          [v16 removeObject:v12];
          [v6 setRelativePathsNotToRestore:v16];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }
}

- (void)_addRelativePathsToPathsToBackupAndRestore:(id)a3 forDomain:(id)a4
{
  v5 = a3;
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v6 relativePathsToBackupAndRestore];

        if (v12)
        {
          v13 = [v6 relativePathsToBackupAndRestore];
          v14 = [v13 mutableCopy];
        }

        else
        {
          v14 = objc_opt_new();
        }

        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v23 = v6;
          v24 = 2114;
          v25 = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsToBackupAndRestore", buf, 0x16u);
          v16 = v6;
          v17 = v11;
          _MBLog();
        }

        [v14 addObject:@"Library/Keyboard"];
        [v6 setRelativePathsToBackupAndRestore:v14];
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }
}

- (void)_updatePathsForKeyboardDomainWithEngine:(id)a3
{
  v4 = a3;
  v5 = [v4 domainManager];
  v6 = [v5 domainForName:@"KeyboardDomain"];

  if (!v6)
  {
    sub_10009C908();
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing all paths from relativePathsNotToBackupToDrive", buf, 0xCu);
    _MBLog();
  }

  v8 = objc_opt_new();
  [v6 setRelativePathsNotToBackupToDrive:v8];

  v9 = [NSMutableArray arrayWithObjects:@"Library/Keyboard", @"Library/KeyboardServices/TextReplacements.db", @"Library/KeyboardServices/TextReplacements.db-wal", @"Library/KeyboardServices/TextReplacements.db-shm", @"Library/Keyboard/CoreDataUbiquitySupport", 0];
  [(MBKeyboardPlugin *)self _removeRelativePathsFromPathsNotToBackup:v9 forDomain:v6];
  [(MBKeyboardPlugin *)self _removeRelativePathsFromPathsNotToRestore:v9 forDomain:v6];
  [v9 removeObject:@"Library/Keyboard/CoreDataUbiquitySupport"];
  [(MBKeyboardPlugin *)self _addRelativePathsToPathsToBackupAndRestore:v9 forDomain:v6];
  v10 = [v6 relativePathsToIgnoreExclusionsForDrive];

  if (v10)
  {
    v11 = [v6 relativePathsToIgnoreExclusionsForDrive];
    v12 = [v11 mutableCopy];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = @"Library/Keyboard";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsToIgnoreExclusionsForDrive", buf, 0x16u);
    _MBLog();
  }

  [v12 addObject:@"Library/Keyboard"];
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = @"Library/KeyboardServices";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsToIgnoreExclusionsForDrive", buf, 0x16u);
    _MBLog();
  }

  [v12 addObject:@"Library/KeyboardServices"];
  [v6 setRelativePathsToIgnoreExclusionsForDrive:v12];
}

@end