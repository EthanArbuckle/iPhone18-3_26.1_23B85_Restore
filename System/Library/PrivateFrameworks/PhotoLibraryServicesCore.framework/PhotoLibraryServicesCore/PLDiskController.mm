@interface PLDiskController
+ (BOOL)freeSpaceBelowDesiredSpaceThresholdForPath:(id)a3;
+ (id)mountPointForPath:(id)a3;
+ (int64_t)diskSpaceAvailableForPath:(id)a3;
+ (int64_t)diskSpaceAvailableForUse;
+ (int64_t)fileSystemSizeForPath:(id)a3;
+ (int64_t)freeDiskSpaceThreshold;
@end

@implementation PLDiskController

+ (BOOL)freeSpaceBelowDesiredSpaceThresholdForPath:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PLDiskController_freeSpaceBelowDesiredSpaceThresholdForPath___block_invoke;
  block[3] = &unk_1E7932D68;
  block[4] = &v14;
  if (freeSpaceBelowDesiredSpaceThresholdForPath__onceToken != -1)
  {
    dispatch_once(&freeSpaceBelowDesiredSpaceThresholdForPath__onceToken, block);
  }

  if (v15[3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [a1 mountPointForPath:v4];
    if (v6)
    {
      v7 = [freeSpaceBelowDesiredSpaceThresholdForPath__mountPointToThreshold objectForKeyedSubscript:v6];
      if (v7 || (v11 = -[PLVolumeInfo initWithMountPoint:]([PLVolumeInfo alloc], "initWithMountPoint:", v6), (v12 = v11) != 0) && ([MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLVolumeInfo desiredDiskThreshold](v11, "desiredDiskThreshold")}], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(freeSpaceBelowDesiredSpaceThresholdForPath__mountPointToThreshold, "setObject:forKeyedSubscript:", v7, v6), v12, v7))
      {
        v8 = [a1 diskSpaceAvailableForPath:v4];
        v9 = v8 < [v7 longLongValue];
        *(v15 + 24) = v9;
      }
    }

    v5 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);

  return v5 & 1;
}

uint64_t __63__PLDiskController_freeSpaceBelowDesiredSpaceThresholdForPath___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFPreferencesGetAppBooleanValue(@"PLForceLowDiskSpace", @"com.apple.mobileslideshow", 0) != 0;
  freeSpaceBelowDesiredSpaceThresholdForPath__mountPointToThreshold = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)mountPointForPath:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26.f_bsize) = 0;
      v14 = "nil path for mountPoint";
      v15 = v13;
      v16 = 2;
LABEL_11:
      _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_ERROR, v14, &v26, v16);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (([v4 hasPrefix:@"/"] & 1) == 0)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v26.f_bsize = 138412290;
      *&v26.f_iosize = v5;
      v14 = "Path %@ must be an absolute path, retuning nil for mount point";
      v15 = v13;
      v16 = 12;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  memset(&v26, 0, 512);
  if (!statfs([v5 fileSystemRepresentation], &v26))
  {
    if (v26.f_mntonname[0])
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26.f_mntonname];
      goto LABEL_27;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_27;
  }

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
  v23 = 0;
  v7 = *MEMORY[0x1E695DEB0];
  v22 = 0;
  v8 = [v6 getResourceValue:&v23 forKey:v7 error:&v22];
  v9 = v23;
  v10 = v22;
  v11 = v10;
  if (!v8 || v10)
  {
    v17 = [v5 stringByDeletingLastPathComponent];
    while (([v17 isEqualToString:&stru_1F1F75560] & 1) == 0)
    {
      if ([v17 isEqualToString:@"/Volumes"])
      {
        v19 = PLBackendGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v5;
          _os_log_impl(&dword_1AA9BD000, v19, OS_LOG_TYPE_ERROR, "Searched up to '/Volumes', cannot find mount point for '%@', returning nil for mount point", buf, 0xCu);
        }

        break;
      }

      v18 = [a1 mountPointForPath:v17];
      if (v18)
      {
        v12 = v18;
        goto LABEL_25;
      }
    }

    v12 = 0;
LABEL_25:
  }

  else
  {
    v12 = [v9 path];
  }

LABEL_27:
  v20 = PLBackendGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v26.f_bsize = 138412546;
    *&v26.f_iosize = v5;
    WORD2(v26.f_blocks) = 2112;
    *(&v26.f_blocks + 6) = v12;
    _os_log_impl(&dword_1AA9BD000, v20, OS_LOG_TYPE_DEFAULT, "Mount point for %@: %@", &v26, 0x16u);
  }

  return v12;
}

+ (int64_t)fileSystemSizeForPath:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [a1 mountPointForPath:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = 0;
    v5 = [v4 attributesOfFileSystemForPath:v3 error:&v10];
    v6 = v10;

    if (v5)
    {
      v7 = [v5 objectForKey:*MEMORY[0x1E696A3D0]];
      v8 = [v7 unsignedLongLongValue];
    }

    else
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v12 = v3;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Unable to get file system attributes for %@: %@", buf, 0x16u);
      }

      v8 = -1;
    }
  }

  else
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Missing path to get free space", buf, 2u);
    }

    v8 = -1;
  }

  return v8;
}

+ (int64_t)diskSpaceAvailableForPath:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = 0;
    v6 = [v5 attributesOfFileSystemForPath:v4 error:&v14];
    v7 = v14;

    if (v6)
    {
      v8 = [v6 objectForKey:*MEMORY[0x1E696A3C0]];
      v9 = [v8 unsignedLongLongValue];

      v10 = [a1 freeDiskSpaceThreshold];
      if (v9 <= v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = v9 - v10;
      }
    }

    else
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = v4;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_1AA9BD000, v12, OS_LOG_TYPE_ERROR, "Unable to get file system attributes for %@: %@", buf, 0x16u);
      }

      v11 = -1;
    }
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Missing path to get free space", buf, 2u);
    }

    v11 = -1;
  }

  return v11;
}

+ (int64_t)diskSpaceAvailableForUse
{
  v3 = NSHomeDirectory();
  v4 = [a1 diskSpaceAvailableForPath:v3];

  return v4;
}

+ (int64_t)freeDiskSpaceThreshold
{
  if ((freeDiskSpaceThreshold_didSetFreeDiskSpaceThreshold & 1) == 0)
  {
    v2 = MGCopyAnswer();
    v3 = [v2 objectForKey:*MEMORY[0x1E69E5110]];
    freeDiskSpaceThreshold_freeDiskSpaceThreshold = [v3 longLongValue];

    freeDiskSpaceThreshold_didSetFreeDiskSpaceThreshold = 1;
  }

  return freeDiskSpaceThreshold_freeDiskSpaceThreshold;
}

@end