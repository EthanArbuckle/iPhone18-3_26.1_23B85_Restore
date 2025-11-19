@interface MBPersona
+ (id)allPersonae;
+ (id)personalPersonaWithError:(id *)a3;
+ (void)removeBackupSnapshotsForAllPersonae;
+ (void)removeBackupSnapshotsForPersonalPersona;
+ (void)removeTemporaryDirectoriesForAllPersonae;
- (void)_removeTemporaryDirectories;
@end

@implementation MBPersona

+ (id)personalPersonaWithError:(id *)a3
{
  v4 = [UMUserPersonaAttributes personaAttributesForPersonaType:0 withError:a3];
  if (v4)
  {
    v5 = [MBPersona personaWithAttributes:v4 volumeMountPoint:@"/private/var/mobile"];
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v9 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "nil personaAttributes for %ld persona", buf, 0xCu);
      _MBLog();
    }

    if (a3)
    {
      [MBError errorWithCode:1 format:@"nil personaAttributes"];
      *a3 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)allPersonae
{
  v2 = objc_opt_new();
  v13 = 0;
  v3 = [MBPersona personalPersonaWithError:&v13];
  v4 = v13;
  if (v3)
  {
    [v2 addObject:v3];
  }

  v5 = [UMUserPersonaAttributes personaAttributesForPersonaType:2];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 personaLayoutPathURL];
    v8 = [v7 path];

    if (v8)
    {
      v9 = [MBPersona personaWithAttributes:v6 volumeMountPoint:v8];
      [v2 addObject:v9];
    }

    else
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v6 userPersonaUniqueString];
        *buf = 134218242;
        v15 = 2;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "nil volumeMountPoint for %ld persona (%{public}@)", buf, 0x16u);

        v12 = [v6 userPersonaUniqueString];
        _MBLog();
      }
    }
  }

  return v2;
}

+ (void)removeBackupSnapshotsForAllPersonae
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = MBD2DSnapshotMountPoints();
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [MBFileSystemManager unmount:*(*(&v28 + 1) + 8 * v6) error:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v4);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = MBiCloudUserSessionSnapshotMountPoints();
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [MBFileSystemManager unmount:*(*(&v24 + 1) + 8 * v11) error:0];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = +[MBPersona allPersonae];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = [v17 volumesToBackUp];
        [MBFileSystemManager deleteAllSnapshotsAcrossVolumes:v19 withPrefix:@"com.apple.mobilebackup" error:0];

        objc_autoreleasePoolPop(v18);
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v14);
  }
}

+ (void)removeBackupSnapshotsForPersonalPersona
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = MBD2DSnapshotMountPoints();
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [MBFileSystemManager unmount:*(*(&v17 + 1) + 8 * v6) error:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = MBiCloudUserSessionSnapshotMountPoints();
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [MBFileSystemManager unmount:*(*(&v13 + 1) + 8 * v11) error:0];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = [NSSet setWithObjects:@"/private/var/mobile", @"/private/var", 0, v13];
  [MBFileSystemManager deleteAllSnapshotsAcrossVolumes:v12 withPrefix:@"com.apple.mobilebackup" error:0];
}

- (void)_removeTemporaryDirectories
{
  if ([(MBPersona *)self isPersonalPersona])
  {

    MBRemoveTemporaryDirectory();
  }

  else
  {
    v3 = [(MBPersona *)self volumeMountPoint];
    if (!v3)
    {
      sub_ABB4();
    }

    v17 = v3;
    v4 = [v3 stringByAppendingPathComponent:@"tmp"];
    v5 = +[NSFileManager defaultManager];
    v6 = [v5 enumeratorAtPath:v4];

    v7 = [v6 nextObject];
    if (v7)
    {
      v8 = v7;
      do
      {
        v9 = objc_autoreleasePoolPush();
        if ([v8 hasPrefix:@"backupd-"])
        {
          v10 = [v4 stringByAppendingPathComponent:v8];
          v11 = MBGetDefaultLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v20 = v10;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Removing temporary directory at %{public}@", buf, 0xCu);
            _MBLog();
          }

          v12 = +[NSFileManager defaultManager];
          v18 = 0;
          v13 = [v12 removeItemAtPath:v10 error:&v18];
          v14 = v18;

          if ((v13 & 1) == 0)
          {
            v15 = MBGetDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v20 = v10;
              v21 = 2114;
              v22 = v14;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Failed to remove the temporary directory at %{public}@: %{public}@", buf, 0x16u);
              _MBLog();
            }
          }
        }

        objc_autoreleasePoolPop(v9);
        v16 = [v6 nextObject];

        v8 = v16;
      }

      while (v16);
    }
  }
}

+ (void)removeTemporaryDirectoriesForAllPersonae
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = +[MBPersona allPersonae];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        [v7 _removeTemporaryDirectories];
        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

@end