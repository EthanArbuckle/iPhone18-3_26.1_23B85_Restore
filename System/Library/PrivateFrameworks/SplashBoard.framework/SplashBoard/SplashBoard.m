id XBLogFetchRequests()
{
  if (XBLogFetchRequests_onceToken != -1)
  {
    XBLogFetchRequests_cold_1();
  }

  v1 = XBLogFetchRequests___logObj;

  return v1;
}

uint64_t XBStatusBarStateMaskMatchesSettings(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __XBStatusBarStateMaskMatchesSettings_block_invoke;
  v7[3] = &unk_279CF9670;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  XBEnumerateStatusBarStatesMatchingMask(a1, v7);
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_26B5F08B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void XBEnumerateStatusBarStatesMatchingMask(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __XBEnumerateStatusBarStatesMatchingMask_block_invoke;
    v5[3] = &unk_279CF9218;
    v7 = a1;
    v6 = v3;
    XBEnumerateStatusBarStates(v5);
  }
}

uint64_t __XBEnumerateStatusBarStatesMatchingMask_block_invoke(uint64_t result, char a2)
{
  if ((*(result + 40) & (1 << a2)) != 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void XBEnumerateStatusBarStates(void *a1)
{
  v1 = a1;
  v2 = 0;
  v1[2](v1, 0, &v2);
  if ((v2 & 1) == 0)
  {
    v1[2](v1, 1, &v2);
    if ((v2 & 1) == 0)
    {
      v1[2](v1, 2, &v2);
    }
  }
}

uint64_t XBStatusBarStateMatchesSettings(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (a1)
    {
      [v3 style];
      v5 = (a1 != 2) ^ UIStatusBarStyleIsDoubleHeight();
    }

    else
    {
      v5 = [v3 isHidden];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __XBStatusBarStateMaskMatchesSettings_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = XBStatusBarStateMatchesSettings(a2, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t XBInterfaceOrientationMaskForInterfaceOrientationPair(uint64_t a1)
{
  v1 = 24;
  if ((a1 - 3) >= 2)
  {
    v1 = 0;
  }

  if ((a1 - 1) >= 2)
  {
    return v1;
  }

  else
  {
    return 6;
  }
}

id FAKE_NIL_PTR()
{
  if (FAKE_NIL_PTR_onceToken != -1)
  {
    FAKE_NIL_PTR_cold_1();
  }

  v1 = FAKE_NIL_PTR___fakeNil;

  return v1;
}

id XBLogSnapshot()
{
  if (XBLogSnapshot_onceToken != -1)
  {
    XBLogSnapshot_cold_1();
  }

  v1 = XBLogSnapshot___logObj;

  return v1;
}

uint64_t XBImageOrientationForInterfaceOrientationRotation(uint64_t a1, uint64_t a2)
{
  v2 = XBRotationDegreesForInterfaceOrientationRotation(a1, a2) % 360;
  if (v2 <= 89)
  {
    if (v2 != -180)
    {
      if (v2 == -90)
      {
        return 3;
      }

      return 0;
    }

    return 1;
  }

  if (v2 != 90)
  {
    return v2 == 180;
  }

  return 2;
}

uint64_t XBRotationDegreesForInterfaceOrientationRotation(uint64_t a1, uint64_t a2)
{
  v2 = 90;
  v3 = -90;
  v4 = 180;
  if (a2 != 2)
  {
    v4 = 0;
  }

  if (a2 != 4)
  {
    v3 = v4;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  v5 = -90;
  v6 = 90;
  v7 = -180;
  if (a1 != 2)
  {
    v7 = 0;
  }

  if (a1 != 4)
  {
    v6 = v7;
  }

  if (a1 != 3)
  {
    v5 = v6;
  }

  if (a1 == 1)
  {
    v5 = 0;
  }

  v8 = v5 + v2;
  v9 = v8 + 360;
  if (v8 >= -180)
  {
    v9 = v8;
  }

  if (v8 <= 180)
  {
    return v9;
  }

  else
  {
    return v8 - 360;
  }
}

id XBSplashBoardPathForSandboxPath(void *a1)
{
  v1 = XBLibraryPathForSandboxPath(a1);
  v2 = [v1 stringByAppendingPathComponent:@"SplashBoard"];

  return v2;
}

id XBLibraryPathForSandboxPath(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = XBCachedNSHomeDirectory();
  }

  v2 = [v1 stringByAppendingPathComponent:@"Library"];

  return v2;
}

id XBSnapshotPathForBundleIdentifierWithSandboxPath(void *a1, void *a2)
{
  v3 = a1;
  v4 = XBSplashBoardPathForSandboxPath(a2);
  v5 = [v4 stringByAppendingPathComponent:@"Snapshots"];

  if (v3 && !a2)
  {
    v6 = [v5 stringByAppendingPathComponent:v3];

    v5 = v6;
  }

  return v5;
}

id XBLogFileManifest()
{
  if (XBLogFileManifest_onceToken != -1)
  {
    XBLogFileManifest_cold_1();
  }

  v1 = XBLogFileManifest___logObj;

  return v1;
}

void sub_26B5F2A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id XBLogSnapshotReaper()
{
  if (XBLogSnapshotReaper_onceToken != -1)
  {
    XBLogSnapshotReaper_cold_1();
  }

  v1 = XBLogSnapshotReaper___logObj;

  return v1;
}

uint64_t XBApplicationSnapshotOnDiskFormatForFileExtension(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"png"])
  {
    if ([v1 caseInsensitiveCompare:@"ktx"])
    {
      if ([v1 caseInsensitiveCompare:@"jpeg"])
      {
        if ([v1 caseInsensitiveCompare:@"jpg"])
        {
          v2 = -1;
        }

        else
        {
          v2 = 3;
        }
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __XBLogSnapshot_block_invoke()
{
  XBLogSnapshot___logObj = os_log_create("com.apple.SplashBoard", "Snapshot");

  return MEMORY[0x2821F96F8]();
}

id XBLogMemory()
{
  if (XBLogMemory_onceToken != -1)
  {
    XBLogMemory_cold_1();
  }

  v1 = XBLogMemory___logObj;

  return v1;
}

uint64_t __XBLogMemory_block_invoke()
{
  XBLogMemory___logObj = os_log_create("com.apple.SplashBoard", "Memory");

  return MEMORY[0x2821F96F8]();
}

uint64_t __XBLogFetchRequests_block_invoke()
{
  XBLogFetchRequests___logObj = os_log_create("com.apple.SplashBoard", "FetchRequests");

  return MEMORY[0x2821F96F8]();
}

uint64_t __XBLogSnapshotReaper_block_invoke()
{
  XBLogSnapshotReaper___logObj = os_log_create("com.apple.SplashBoard", "SnapshotReaper");

  return MEMORY[0x2821F96F8]();
}

id XBLogDaemonLifecycle()
{
  if (XBLogDaemonLifecycle_onceToken != -1)
  {
    XBLogDaemonLifecycle_cold_1();
  }

  v1 = XBLogDaemonLifecycle___logObj;

  return v1;
}

uint64_t __XBLogDaemonLifecycle_block_invoke()
{
  XBLogDaemonLifecycle___logObj = os_log_create("com.apple.SplashBoard", "DaemonLifecycle");

  return MEMORY[0x2821F96F8]();
}

id XBLogCapture()
{
  if (XBLogCapture_onceToken != -1)
  {
    XBLogCapture_cold_1();
  }

  v1 = XBLogCapture___logObj;

  return v1;
}

uint64_t __XBLogCapture_block_invoke()
{
  XBLogCapture___logObj = os_log_create("com.apple.SplashBoard", "Capture");

  return MEMORY[0x2821F96F8]();
}

uint64_t __XBLogFileManifest_block_invoke()
{
  XBLogFileManifest___logObj = os_log_create("com.apple.SplashBoard", "FileManifest");

  return MEMORY[0x2821F96F8]();
}

id XBLogPurge()
{
  if (XBLogPurge_onceToken != -1)
  {
    XBLogPurge_cold_1();
  }

  v1 = XBLogPurge___logObj;

  return v1;
}

uint64_t __XBLogPurge_block_invoke()
{
  XBLogPurge___logObj = os_log_create("com.apple.SplashBoard", "Purge");

  return MEMORY[0x2821F96F8]();
}

id XBLogCommon()
{
  if (XBLogCommon_onceToken != -1)
  {
    XBLogCommon_cold_1();
  }

  v1 = XBLogCommon___logObj;

  return v1;
}

uint64_t __XBLogCommon_block_invoke()
{
  XBLogCommon___logObj = os_log_create("com.apple.SplashBoard", "Common");

  return MEMORY[0x2821F96F8]();
}

__CFString *XBStatusBarStateDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"invalid";
  }

  else
  {
    return off_279CF9238[a1];
  }
}

__CFString *XBStatusBarStateMaskDescription(uint64_t a1)
{
  if (a1 == -1)
  {
    v4 = @"All";
  }

  else
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __XBStatusBarStateMaskDescription_block_invoke;
    v6[3] = &unk_279CF9158;
    v7 = v2;
    v3 = v2;
    XBEnumerateStatusBarStatesMatchingMask(a1, v6);
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  return v4;
}

uint64_t __XBStatusBarStateMaskDescription_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 > 2)
  {
    v3 = @"invalid";
  }

  else
  {
    v3 = off_279CF9238[a2];
  }

  return [v2 addObject:v3];
}

__CFString *XBLaunchInterfaceTypeName(uint64_t a1)
{
  v1 = @"(null)";
  if (a1 == 1)
  {
    v1 = @"Storyboard";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"XIB";
  }
}

uint64_t _XBInterfaceWithNameExistsInBundle(id *a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  if ([*a1 length])
  {
    v6 = *a1;
    v7 = [v6 pathExtension];
    if (v7)
    {
      v8 = [v6 stringByDeletingPathExtension];

      v9 = @"storyboardc";
      if ([v7 isEqualToString:@"storyboardc"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"storyboard"))
      {
        v10 = 1;
        goto LABEL_6;
      }

      v9 = @"nib";
      if (([v7 isEqualToString:@"nib"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"xib"))
      {
        v10 = 0;
LABEL_6:
        v11 = [v5 pathForResource:v8 ofType:v9 inDirectory:0];

        if (!v11)
        {
          v10 = 0;
LABEL_21:
          v13 = v8;
          *a1 = v8;

          goto LABEL_22;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v8 = v6;
    }

    v12 = [v5 pathForResource:v8 ofType:@"storyboardc" inDirectory:0];

    if (v12)
    {
      v10 = 1;
      if (!a3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = [v5 pathForResource:v8 ofType:@"nib" inDirectory:0];

      if (!v10)
      {
        goto LABEL_21;
      }

      if (!a3)
      {
LABEL_20:
        v10 = 1;
        goto LABEL_21;
      }

      v10 = 0;
    }

LABEL_19:
    *a3 = v10;
    goto LABEL_20;
  }

  v10 = 0;
LABEL_22:

  return v10;
}

void sub_26B5F7798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double XBModificationDateForPath(void *a1)
{
  memset(&v3, 0, sizeof(v3));
  v1 = stat([a1 fileSystemRepresentation], &v3);
  result = 0.0;
  if (!v1)
  {
    return v3.st_mtimespec.tv_nsec / 1000000000.0 + v3.st_mtimespec.tv_sec + -978307200.0;
  }

  return result;
}

BOOL XBEnsureDirectoryExistsAtPath(void *a1)
{
  v1 = a1;
  v2 = mkdir([v1 fileSystemRepresentation], 0x1FFu);
  if (!v2 || v2 == -1 && *__error() == 17)
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = 0;
    [v4 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v7];
    v5 = v7;

    v3 = v5 == 0;
  }

  return v3;
}

id XBCachedNSHomeDirectory()
{
  if (XBCachedNSHomeDirectory_onceToken != -1)
  {
    XBCachedNSHomeDirectory_cold_1();
  }

  v1 = XBCachedNSHomeDirectory_sHomeDir;

  return v1;
}

void __XBCachedNSHomeDirectory_block_invoke()
{
  v2 = NSHomeDirectory();
  v0 = [v2 copy];
  v1 = XBCachedNSHomeDirectory_sHomeDir;
  XBCachedNSHomeDirectory_sHomeDir = v0;
}

id XBCachesPathForApplicationInfo(void *a1)
{
  v1 = [a1 dataContainerURL];
  v2 = [v1 path];
  v3 = XBCachesPathForSandboxPath(v2);

  return v3;
}

id XBCachesPathForSandboxPath(void *a1)
{
  v1 = XBLibraryPathForSandboxPath(a1);
  v2 = [v1 stringByAppendingPathComponent:@"Caches"];

  return v2;
}

id XBSnapshotPathForNonSandboxedSystemApplications()
{
  v0 = XBSplashBoardPathForSandboxPath(0);
  v1 = [v0 stringByAppendingPathComponent:@"Snapshots"];

  return v1;
}

BOOL XBLegacyCachesSnapshotPathForNonSandboxedSystemApplicationsExists()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = XBLegacyCachesSnapshotPathForNonSandboxedSystemApplications();
  v2 = v1 && ([v0 fileExistsAtPath:v1] & 1) != 0;

  return v2;
}

id XBLegacyCachesSnapshotPathForNonSandboxedSystemApplications()
{
  v0 = XBCachesPathForSandboxPath(0);
  v1 = [v0 stringByAppendingPathComponent:@"Snapshots"];

  return v1;
}

uint64_t XBDeleteLegacyCachesSnapshotPathForSandboxedApplicationIfNeeded(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 bundleIdentifier];
  v3 = [v1 dataContainerURL];

  v4 = [v3 path];

  if (v4)
  {
    v5 = XBCachesPathForSandboxPath(v4);
    v6 = [v5 stringByAppendingPathComponent:@"Snapshots"];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = v7;
    if (v6 && [v7 fileExistsAtPath:v6])
    {
      v9 = XBLogFileManifest();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v18 = v2;
        v19 = 2114;
        v20 = v4;
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_DEFAULT, "Deleting legacy cache snapshots path for bundleID: %{public}@, sandboxPath: %{public}@, legacySnapshotsPath: %{public}@", buf, 0x20u);
      }

      v16 = 0;
      v10 = [v8 removeItemAtPath:v6 error:&v16];
      v11 = v16;
      v12 = v11;
      if ((v10 & 1) == 0 && v11)
      {
        v13 = XBLogFileManifest();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544130;
          v18 = v2;
          v19 = 2114;
          v20 = v4;
          v21 = 2114;
          v22 = v6;
          v23 = 2114;
          v24 = v12;
          _os_log_error_impl(&dword_26B5EF000, v13, OS_LOG_TYPE_ERROR, "Error deleting legacy cache snapshots path for bundleID %{public}@, sandboxPath: %{public}@, legacySnapshotsPath: %{public}@: %{public}@", buf, 0x2Au);
        }
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t XBDeleteLegacyCachesSnapshotPathForNonSandboxedApplicationIfNeeded(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = [a1 bundleIdentifier];
  if (v1)
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = XBLegacyCachesSnapshotPathForNonSandboxedSystemApplications();
    v4 = [v3 stringByAppendingPathComponent:v1];
    if (v4 && [v2 fileExistsAtPath:v4])
    {
      v5 = XBLogFileManifest();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v1;
        _os_log_impl(&dword_26B5EF000, v5, OS_LOG_TYPE_DEFAULT, "Deleting legacy cache snapshots path for non-sandboxed system app: %{public}@", buf, 0xCu);
      }

      v12 = 0;
      v6 = [v2 removeItemAtPath:v4 error:&v12];
      v7 = v12;
      v8 = v7;
      if ((v6 & 1) == 0 && v7)
      {
        v9 = XBLogFileManifest();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v14 = v1;
          v15 = 2114;
          v16 = v4;
          v17 = 2114;
          v18 = v8;
          _os_log_error_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_ERROR, "Error deleting legacy cache snapshots path for non-sandboxed system app %{public}@ at %{public}@: %{public}@", buf, 0x20u);
        }
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void XBDeleteLegacyCachesSnapshotPathForNonSandboxedApplicationsIfNeeded()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = XBLegacyCachesSnapshotPathForNonSandboxedSystemApplications();
  if (v1 && [v0 fileExistsAtPath:v1])
  {
    v2 = XBLogFileManifest();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = v1;
      _os_log_impl(&dword_26B5EF000, v2, OS_LOG_TYPE_DEFAULT, "Deleting legacy cache snapshots path for non-sandboxed system apps: %{public}@", buf, 0xCu);
    }

    v7 = 0;
    v3 = [v0 removeItemAtPath:v1 error:&v7];
    v4 = v7;
    v5 = v4;
    if ((v3 & 1) == 0 && v4)
    {
      v6 = XBLogFileManifest();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        XBDeleteLegacyCachesSnapshotPathForNonSandboxedApplicationsIfNeeded_cold_1(v1, v5, v6);
      }
    }
  }
}

__CFString *XBApplicationSnapshotContentTypeDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279CF9250[a1];
  }
}

__CFString *XBApplicationSnapshotContentTypeMaskDescription(uint64_t a1)
{
  if (a1 != -1)
  {
    v1 = a1;
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = v2;
    if ((v1 & 4) != 0)
    {
      [v2 addObject:@"StaticDefault"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 1) == 0)
        {
LABEL_6:
          v4 = [v3 componentsJoinedByString:{@", "}];

          goto LABEL_8;
        }

LABEL_5:
        [v3 addObject:@"SceneContent"];
        goto LABEL_6;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"GeneratedDefault"];
    if ((v1 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = @"All Types";
LABEL_8:

  return v4;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t XBOppositeInterfaceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_26B61CD40[a1 - 1];
  }
}

uint64_t XBNextClockwiseInterfaceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_26B61CD60[a1 - 1];
  }
}

__CFString *XBStringForInterfaceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_279CF93B0[a1 - 1];
  }
}

uint64_t XBInterfaceOrientationForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Landscape"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"LandscapeLeft"))
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"LandscapeRight"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"PortraitUpsideDown"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t XBInterfaceOrientationForAffineTransform()
{
  BSRadiansFromAffineTransform();
  if (BSFloatIsZero())
  {
    return 1;
  }

  if (BSFloatEqualToFloat())
  {
    return 4;
  }

  if (BSFloatEqualToFloat())
  {
    return 3;
  }

  if (BSFloatEqualToFloat())
  {
    return 2;
  }

  return 0;
}

uint64_t XBImageOrientationForInterfaceOrientation(uint64_t a1)
{
  if ((a1 - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t XBImageOrientationForRotationDegrees(uint64_t a1)
{
  v1 = a1 % 360;
  if (a1 % 360 <= 89)
  {
    if (v1 != -180)
    {
      if (v1 == -90)
      {
        return 3;
      }

      return 0;
    }

    return 1;
  }

  if (v1 != 90)
  {
    return v1 == 180;
  }

  return 2;
}

uint64_t XBRotationDegreesForImageOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_26B61CD80[a1 - 1];
  }
}

__CFString *XBImageOrientationDescription(uint64_t a1)
{
  v3 = 0;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        v4 = 4294967206;
        v5 = @"LeftMirrored";
      }

      else
      {
        if (a1 != 7)
        {
          goto LABEL_23;
        }

        v4 = 90;
        v5 = @"RightMirrored";
      }
    }

    else
    {
      if (a1 == 4)
      {
        v3 = @"UpMirrored";

        return v3;
      }

      v4 = 180;
      v5 = @"DownMirrored";
    }

LABEL_22:
    v3 = [(__CFString *)v5 stringByAppendingFormat:@" (%d°)", v4];
LABEL_23:

    return v3;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v4 = 4294967206;
      v5 = @"Left";
    }

    else
    {
      v4 = 90;
      v5 = @"Right";
    }

    goto LABEL_22;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_23;
    }

    v4 = 180;
    v5 = @"Down";
    goto LABEL_22;
  }

  v3 = @"Up";

  return v3;
}

uint64_t _XBDebugCaptureIsEnabled()
{
  if (_XBDebugCaptureIsEnabled_onceToken != -1)
  {
    _XBDebugCaptureIsEnabled_cold_1();
  }

  return _XBDebugCaptureIsEnabled_sEncodingEnabled;
}

void _XBPreparedLaunchInterfaceForCapture(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v43 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a6)
  {
    goto LABEL_5;
  }

  if (_XBDebugCaptureIsEnabled_onceToken != -1)
  {
    _XBDebugCaptureIsEnabled_cold_1();
  }

  if (_XBDebugCaptureIsEnabled_sEncodingEnabled == 1)
  {
LABEL_5:
    v15 = XBLogCapture();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      _XBPreparedLaunchInterfaceForCapture_cold_2(v11, v15);
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCAC38] processInfo];
    v18 = [v16 stringWithFormat:@"splashboardd-%d", objc_msgSend(v17, "processIdentifier")];

    v19 = MEMORY[0x277CCACA8];
    v20 = [v12 bundleIdentifier];
    v34 = v12;
    if ([v13 interfaceOrientation] == 1)
    {
      v21 = v11;
      v22 = @"UIInterfaceOrientationPortrait";
    }

    else
    {
      v21 = v11;
      if ([v13 interfaceOrientation] == 4)
      {
        v22 = @"UIInterfaceOrientationLandscapeLeft";
      }

      else if ([v13 interfaceOrientation] == 3)
      {
        v22 = @"UIInterfaceOrientationLandscapeRight";
      }

      else if ([v13 interfaceOrientation] == 2)
      {
        v22 = @"UIInterfaceOrientationPortraitUpsideDown";
      }

      else
      {
        v22 = 0;
      }
    }

    v23 = XBStringForUserInterfaceStyle([v13 userInterfaceStyle]);
    [v13 naturalSize];
    v25 = v24;
    [v13 naturalSize];
    v27 = [v19 stringWithFormat:@"%@-%@-%@-%.fx%.f-%u", v20, v22, v23, v25, v26, a1];

    v28 = NSTemporaryDirectory();
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@.caar", v18, v27];
    v30 = [v28 stringByAppendingPathComponent:v29];

    if (a6)
    {
      v31 = v30;
      *a6 = v30;
    }

    v11 = v21;
    v32 = [v21 layer];
    [v30 UTF8String];
    CAEncodeLayerTreeToFile();

    v33 = XBLogCapture();
    v12 = v34;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v36 = v30;
      v37 = 2114;
      v38 = v34;
      v39 = 2114;
      v40 = v13;
      v41 = 2114;
      v42 = v14;
      _os_log_impl(&dword_26B5EF000, v33, OS_LOG_TYPE_DEFAULT, "splashboardd wrote an encoded launch interface to: %{public}@\nappInfo: %{public}@\nlaunchRequest: %{public}@\nlaunchInterface: %{public}@", buf, 0x2Au);
    }
  }
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26B5FDAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_6()
{

  return objc_opt_class();
}

void sub_26B5FF608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromXBApplicationSnapshotOnDiskFormat(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279CF9708[a1 + 1];
  }
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _fsEventStreamCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a3)
  {
    v9 = 0;
    v10 = @"path";
    v11 = @"fileID";
    *&v8 = 138543362;
    v30 = v8;
    do
    {
      if ((*(a5 + 4 * v9) & 0x100200) != 0)
      {
        v12 = [v7 objectAtIndex:v9];
        v13 = [v12 objectForKeyedSubscript:v10];
        v14 = [v12 objectForKeyedSubscript:v11];
        v15 = v14;
        if (v13 && v14)
        {
          v16 = v7;
          v17 = v11;
          v18 = v10;
          v19 = XBLogFileManifest();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v30;
            v38 = v13;
            _os_log_impl(&dword_26B5EF000, v19, OS_LOG_TYPE_DEFAULT, "fsEventStream: file removed at %{public}@", buf, 0xCu);
          }

          v35 = @"LaunchImageDeleted";
          v36 = v13;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          [v31 addObject:v20];

          v10 = v18;
          v11 = v17;
          v7 = v16;
        }
      }

      ++v9;
    }

    while (a3 != v9);
  }

  if ([v31 count])
  {
    v21 = __LastLogEventTime;
    if (*&__LastLogEventTime == 0.0 || (BSContinuousMachTimeNow(), v22 - *&__LastLogEventTime >= 300.0))
    {
      BSContinuousMachTimeNow();
      __LastLogEventTime = v23;
      v24 = objc_alloc_init(MEMORY[0x277D6AFC8]);
      v25 = [MEMORY[0x277CCAC38] processInfo];
      v26 = [v25 processName];
      v27 = [v24 signatureWithDomain:@"SplashBoard" type:@"Manifest" subType:@"LaunchImagesDeleted" subtypeContext:0 detectedProcess:v26 triggerThresholdValues:0];

      v28 = *MEMORY[0x277D6AFF0];
      v33[0] = *MEMORY[0x277D6AFF8];
      v33[1] = v28;
      v34[0] = MEMORY[0x277CBEC28];
      v34[1] = MEMORY[0x277CBEC28];
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = ___fsEventStreamCallback_block_invoke;
      v32[3] = &__block_descriptor_40_e22_v16__0__NSDictionary_8l;
      v32[4] = v21;
      [v24 snapshotWithSignature:v27 duration:v31 events:0 payload:v29 actions:v32 reply:0.0];
    }
  }
}

void sub_26B60C3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B60F1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___fsEventStreamCallback_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  v5 = __ManifestFSEventsQueue;
  if (v4)
  {

    dispatch_async(v5, &__block_literal_global_447);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___fsEventStreamCallback_block_invoke_3;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = *(a1 + 32);
    dispatch_async(__ManifestFSEventsQueue, block);
  }
}

uint64_t ___fsEventStreamCallback_block_invoke_2()
{
  result = BSContinuousMachTimeNow();
  __LastLogEventTime = v1;
  return result;
}

double ___fsEventStreamCallback_block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  __LastLogEventTime = *&result;
  return result;
}

void OUTLINED_FUNCTION_6_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_15(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_26B6103C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26B6109A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_26B6122B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B613068(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *XBStringForUserInterfaceStyle(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279CF9EA0[a1];
  }
}

BOOL XBValidateResource(void *a1, void *a2, int a3, void *a4, void *a5)
{
  v86 = *MEMORY[0x277D85DE8];
  v9 = COERCE_DOUBLE(a1);
  v10 = a2;
  v11 = a4;
  staticCode = 0;
  v12 = XBLogCapture();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v81 = v9;
    v82 = 2114;
    v83 = v10;
    v84 = 2114;
    v85 = v11;
    _os_log_impl(&dword_26B5EF000, v12, OS_LOG_TYPE_DEFAULT, "Validating resource %{public}@.%{public}@ in %{public}@", buf, 0x20u);
  }

  v13 = v11;
  v14 = [0 pathExtension];
  v15 = [v14 isEqualToString:v10];

  if (v15)
  {
    [*&v9 stringByDeletingPathExtension];
    *&v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v9 = *&v16;
  }

  v17 = [v13 pathForResource:*&v9 ofType:v10];
  if (v17)
  {
    v70 = v10;
    v71 = v17;
    v18 = v13;
    goto LABEL_9;
  }

  v18 = [MEMORY[0x277CCA8D8] mainBundle];

  v19 = [v18 pathForResource:*&v9 ofType:v10];
  if (v19)
  {
    v70 = v10;
    v71 = v19;
LABEL_9:
    v20 = [v13 bundleIdentifier];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &stru_287C1E488;
    }

    v23 = v22;

    v24 = v13;
    v25 = [v24 infoDictionary];
    v26 = [v25 objectForKeyedSubscript:*MEMORY[0x277CBED58]];

    if (!v26)
    {
      v27 = [v24 infoDictionary];
      [v27 objectForKeyedSubscript:*MEMORY[0x277CBEC50]];
      v26 = &stru_287C1E488;
      v28 = v23;
      v29 = v13;
      v30 = v9;
      v31 = a5;
      v32 = a3;
      v34 = v33 = v18;

      if (v34)
      {
        v26 = v34;
      }

      v18 = v33;
      a3 = v32;
      a5 = v31;
      v9 = v30;
      v13 = v29;
      v23 = v28;
    }

    v35 = SecStaticCodeCreateWithPath([v24 bundleURL], 0, &staticCode);
    if (v35)
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create SecStaticCodeRef: %d, %@ v%@", v35, v23, v26];
      v37 = XBLogCapture();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        XBValidateResource_cold_1();
      }

      v69 = v36;
      if (!a5)
      {
        v42 = 0;
        v10 = v70;
        v43 = v71;
LABEL_45:

        goto LABEL_46;
      }

      v38 = [XBLaunchImageError alloc];
      v39 = [v24 bundleIdentifier];
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bundle validation failed: %@", v36];
      *a5 = [(XBLaunchImageError *)v38 initWithCode:11 bundleID:v39 reason:v40 fatal:0];
      v41 = v39;

      v42 = 0;
      v10 = v70;
      v43 = v71;
    }

    else
    {
      v43 = v71;
      v44 = [MEMORY[0x277CBEBC0] fileURLWithPath:v71];
      v68 = [MEMORY[0x277CBEAA8] date];
      v69 = v44;
      if (a3)
      {
        v66 = v18;
        v67 = v9;
        v45 = objc_alloc_init(MEMORY[0x277CCAA00]);
        v46 = *MEMORY[0x277CBE868];
        v79 = *MEMORY[0x277CBE868];
        v47 = v44;
        v42 = 1;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
        v65 = v45;
        v49 = [v45 enumeratorAtURL:v47 includingPropertiesForKeys:v48 options:4 errorHandler:0];

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v50 = v49;
        v51 = [v50 countByEnumeratingWithState:&v73 objects:v78 count:16];
        if (v51)
        {
          v52 = v51;
          v64 = v13;
          v53 = *v74;
          while (2)
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v74 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v55 = *(*(&v73 + 1) + 8 * i);
              v72 = 0;
              [v55 getResourceValue:&v72 forKey:v46 error:0];
              v56 = v72;
              if (([v56 BOOLValue] & 1) == 0 && !validateFile(v23, v26, v55, staticCode, a5))
              {

                v42 = 0;
                goto LABEL_39;
              }
            }

            v52 = [v50 countByEnumeratingWithState:&v73 objects:v78 count:16];
            if (v52)
            {
              continue;
            }

            break;
          }

          v42 = 1;
LABEL_39:
          v13 = v64;
          v43 = v71;
        }

        v18 = v66;
        v9 = v67;
      }

      else
      {
        v42 = validateFile(v23, v26, v44, staticCode, a5);
      }

      v41 = v68;
      [v68 timeIntervalSinceNow];
      v61 = v60;
      v62 = XBLogCapture();
      v10 = v70;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v81 = -v61;
        _os_log_impl(&dword_26B5EF000, v62, OS_LOG_TYPE_DEFAULT, "Validated resource in %fs", buf, 0xCu);
      }

      CFRelease(staticCode);
    }

    goto LABEL_45;
  }

  v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find the resource '%@' in bundle %@.", *&v9, v18];
  v58 = XBLogCapture();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    XBValidateResource_cold_1();
  }

  if (!a5)
  {
    v42 = 0;
    v43 = v57;
    goto LABEL_47;
  }

  v59 = [XBLaunchImageError alloc];
  v23 = [v13 bundleIdentifier];
  v43 = v57;
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bundle validation couldn't find resource: %@", v57];
  v42 = 0;
  *a5 = [(XBLaunchImageError *)v59 initWithCode:1 bundleID:v23 reason:v26 fatal:0];
LABEL_46:

LABEL_47:
  return v42;
}

BOOL validateFile(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = XBLogCapture();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    validateFile_cold_1();
  }

  v12 = SecStaticCodeValidateResourceWithErrors();
  if (v12)
  {
    if (v12 == -67054)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Security error errSecCSBadResource reading resource from bundle: %@, path: '%@'", v8, v10, v18, v19];
    }

    else if (v12 == -67062)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot validate resource. Bundle is not codesigned: %@, %@ v%@", v10, v8, v9, v19];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Security error %ld reading resource from bundle: %@, %@ v%@", objc_msgSend(0, "code"), v10, v8, v9];
    }
    v13 = ;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = XBLogCapture();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      validateFile_cold_2();
    }

    if (a5)
    {
      v15 = [XBLaunchImageError alloc];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource validation failed: %@", v13];
      *a5 = [(XBLaunchImageError *)v15 initWithCode:11 bundleID:v8 reason:v16 fatal:0];
    }
  }

  return v13 == 0;
}

void XBDeleteLegacyCachesSnapshotPathForNonSandboxedApplicationsIfNeeded_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_26B5EF000, log, OS_LOG_TYPE_ERROR, "Error deleting legacy cache snapshots path for non-sandboxed system apps %{public}@: %{public}@", &v3, 0x16u);
}

void _XBPreparedLaunchInterfaceForCapture_cold_2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 recursiveDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_26B5EF000, a2, OS_LOG_TYPE_DEBUG, "dumping caar for view hierarchy:\n %@", &v4, 0xCu);
}

void validateFile_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(&dword_26B5EF000, v0, OS_LOG_TYPE_DEBUG, "Resource validation working on %@", v1, 0xCu);
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}