@interface MBFileSystemManager
+ (BOOL)_createSnapshotForVolumeFd:(int)a3 volumeMountPoint:(id)a4 name:(id)a5 error:(id *)a6 cancelationHandler:(id)a7;
+ (BOOL)_deleteSnapshotForVolume:(id)a3 name:(id)a4 error:(id *)a5;
+ (BOOL)_mountSnapshotForVolumeFd:(int)a3 volumeMountPoint:(id)a4 name:(id)a5 mountPoint:(id)a6 error:(id *)a7;
+ (BOOL)_unmountWithRetry:(id)a3 startTime:(double)a4 timeout:(double)a5 error:(id *)a6 cancelationHandler:(id)a7;
+ (BOOL)createSnapshotForVolume:(id)a3 name:(id)a4 error:(id *)a5 cancelationHandler:(id)a6;
+ (BOOL)deleteAllSnapshotsAcrossVolumes:(id)a3 withPrefix:(id)a4 error:(id *)a5;
+ (BOOL)deleteAllSnapshotsForVolume:(id)a3 withPrefix:(id)a4 error:(id *)a5;
+ (BOOL)deleteAllSnapshotsForVolume:(id)a3 withPrefix:(id)a4 latestCreationDate:(id)a5 error:(id *)a6;
+ (BOOL)renameSnapshotForVolume:(id)a3 name:(id)a4 newName:(id)a5 error:(id *)a6;
+ (BOOL)startFilesystemKeyRollingWithPath:(id)a3 error:(id *)a4;
+ (BOOL)stopFilesystemKeyRollingWithPath:(id)a3 error:(id *)a4;
+ (BOOL)unmount:(id)a3 error:(id *)a4;
+ (BOOL)unmount:(id)a3 timeout:(double)a4 error:(id *)a5 cancelationHandler:(id)a6;
+ (BOOL)unmountAndDeleteSnapshotForVolume:(id)a3 name:(id)a4 mountPoint:(id)a5 error:(id *)a6;
+ (BOOL)unmountAndRenameSnapshotForVolume:(id)a3 name:(id)a4 mountPoint:(id)a5 newName:(id)a6 error:(id *)a7;
+ (BOOL)volumeSupportsLocalSnapshots:(id)a3;
+ (id)_deleteFileSystemSnapshots:(id)a3 block:(id)a4;
+ (id)createAndMountSnapshotForVolume:(id)a3 name:(id)a4 atFirstAvailableMountPoint:(id)a5 error:(id *)a6 cancelationHandler:(id)a7;
+ (id)fetchAllAPFSVolumeMountPoints;
+ (id)listSnapshotsForVolume:(id)a3 error:(id *)a4;
+ (id)volumeMountPointForFile:(id)a3 error:(id *)a4;
+ (id)volumeUUIDWithVolumeMountPoint:(id)a3 error:(id *)a4;
+ (unint64_t)fileSystemCapacity;
+ (void)removeAbandonedDriveBackupDirectoriesWithLatestCreationDate:(id)a3 persona:(id)a4;
+ (void)removeDeviceTransferDirectoryWithEarliestCreationDate:(id)a3;
@end

@implementation MBFileSystemManager

+ (BOOL)volumeSupportsLocalSnapshots:(id)a3
{
  v3 = a3;
  v4 = open([v3 fileSystemRepresentation], 0);
  if (v4 < 0)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *__error();
      *v17 = 138412546;
      *&v17[4] = v3;
      *&v17[12] = 1024;
      *&v17[14] = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Unable to open %@: %{errno}d while checking if FS supports snapshot", v17, 0x12u);
      v12 = *__error();
      _MBLog();
    }
  }

  else
  {
    v5 = v4;
    v14 = 0;
    v13 = xmmword_D188;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    if (!fgetattrlist(v4, &v13, v17, 0x24uLL, 0))
    {
      v10 = *&v17[8] & *&v17[24];
      close(v5);
      v9 = (v10 >> 17) & 1;
      goto LABEL_11;
    }

    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Couldn't get attr list for filesystem path %@", buf, 0xCu);
      _MBLog();
    }

    close(v5);
  }

  LOBYTE(v9) = 0;
LABEL_11:

  return v9;
}

+ (unint64_t)fileSystemCapacity
{
  v2 = atomic_load(&qword_16320);
  if (!v2)
  {
    v3 = +[NSFileManager defaultManager];
    v9 = 0;
    v4 = [v3 attributesOfFileSystemForPath:@"/var/mobile" error:&v9];
    v5 = v9;

    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:NSFileSystemSize];
      v2 = [v6 unsignedLongLongValue];

      atomic_store(v2, &qword_16320);
    }

    else
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = @"/var/mobile";
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to get filesystem capacity at %@: %@", buf, 0x16u);
        _MBLog();
      }

      v2 = -1;
    }
  }

  return v2;
}

+ (BOOL)createSnapshotForVolume:(id)a3 name:(id)a4 error:(id *)a5 cancelationHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v10;
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v28 = v11;
    v29 = 2114;
    v30 = v13;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Creating filesystem snapshot %{public}@ at %{public}@", buf, 0x16u);
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v16 = v15;
  v17 = open([v13 fileSystemRepresentation], 0);
  if ((v17 & 0x80000000) != 0)
  {
    v24 = *__error();
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v28 = v13;
      v29 = 1024;
      LODWORD(v30) = v24;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "Failed to open %{public}@: %{errno}d", buf, 0x12u);
      _MBLog();
    }

    if (a5)
    {
      [MBError errorWithErrno:v24 path:v13 format:@"Failed to open snapshot path"];
      *a5 = v23 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v23 = 0;
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [a1 _createSnapshotForVolumeFd:v17 volumeMountPoint:v13 name:v11 error:a5 cancelationHandler:v12];
  close(v18);
  if (!v19)
  {
    goto LABEL_12;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v21 = v20;
  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v28 = v11;
    v29 = 2114;
    v30 = v13;
    v31 = 2048;
    v32 = v21 - v16;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Created filesystem snapshot %{public}@ at %{public}@ in %.3fs", buf, 0x20u);
    _MBLog();
  }

  v23 = 1;
LABEL_13:

  return v23;
}

+ (BOOL)_createSnapshotForVolumeFd:(int)a3 volumeMountPoint:(id)a4 name:(id)a5 error:(id *)a6 cancelationHandler:(id)a7
{
  v9 = a4;
  v10 = a5;
  v11 = a7;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = objc_autoreleasePoolPush();
    if (v11)
    {
      if (v11[2](v11))
      {
        break;
      }
    }

    v15 = fs_snapshot_create(a3, [v10 fileSystemRepresentation], 0);
    v16 = v15 == 0;
    if (!v15)
    {
      goto LABEL_12;
    }

    v17 = *__error();
    v18 = [MBError errorWithErrno:v17 path:v9 format:@"Failed to create snapshot: %d", v17];

    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v28 = v10;
      v29 = 2114;
      v30 = v9;
      v31 = 1024;
      v32 = v13;
      v33 = 1024;
      v34 = v17;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Failed to create filesystem snapshot %{public}@ at %{public}@ (%d): %{errno}d", buf, 0x22u);
      _MBLog();
    }

    if (v17 != 36)
    {
      v12 = v18;
LABEL_12:
      v20 = a6;
      goto LABEL_16;
    }

    sleep(0xAu);
    objc_autoreleasePoolPop(v14);
    ++v13;
    v12 = v18;
    if (v13 == 30)
    {
      v16 = 0;
      v20 = a6;
      if (!a6)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v21 = MBGetDefaultLog();
  v20 = a6;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v28 = v10;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Failed to create filesystem snapshot %{public}@ at %{public}@ (canceled)", buf, 0x16u);
    _MBLog();
  }

  v22 = [MBError errorWithCode:202 format:@"Failed to create snapshot"];

  v16 = 0;
  v12 = v22;
LABEL_16:
  objc_autoreleasePoolPop(v14);
  v18 = v12;
  if (!v20)
  {
    goto LABEL_18;
  }

LABEL_17:
  v23 = v18;
  *v20 = v18;
LABEL_18:

  return v16;
}

+ (id)createAndMountSnapshotForVolume:(id)a3 name:(id)a4 atFirstAvailableMountPoint:(id)a5 error:(id *)a6 cancelationHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (![v13 count])
  {
    sub_AC8C();
  }

  v15 = open([v11 fileSystemRepresentation], 0x100000);
  if ((v15 & 0x80000000) != 0)
  {
    v27 = *__error();
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = v11;
      v43 = 1024;
      LODWORD(v44) = v27;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "Unable to open %@: %{errno}d", buf, 0x12u);
      _MBLog();
    }

    if (a6)
    {
      [MBError errorWithErrno:v27 path:v11 format:@"Unable to open snapshot path"];
      *a6 = v26 = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_36;
  }

  v16 = v15;
  if (![objc_opt_class() _createSnapshotForVolumeFd:v15 volumeMountPoint:v11 name:v12 error:a6 cancelationHandler:v14])
  {
    v26 = 0;
    goto LABEL_34;
  }

  v35 = v14;
  v32 = [v12 fileSystemRepresentation];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v13;
  v17 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
  v19 = *v38;
  v33 = v13;
  v34 = v12;
  while (2)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v38 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v37 + 1) + 8 * i);
      v22 = [v21 fileSystemRepresentation];
      v23 = [objc_opt_class() volumeMountPointForFile:v21 error:a6];
      v24 = v23;
      if (!v11)
      {
        v26 = 0;
        goto LABEL_32;
      }

      if (![v23 isEqualToString:v21])
      {
        if (fs_snapshot_mount(v16, v22, v32, 0))
        {
          v29 = *__error();
          v30 = MBGetDefaultLog();
          v12 = v34;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v42 = v34;
            v43 = 2080;
            v44 = v22;
            v45 = 1024;
            v46 = v29;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "Unable to mount snapshot %@ at mount point %s: %{errno}d", buf, 0x1Cu);
            _MBLog();
          }

          if (a6)
          {
            [MBError errorWithErrno:v29 path:v21 format:@"Unable to mount snapshot"];
            *a6 = v26 = 0;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_33;
        }

        v26 = v21;
LABEL_32:
        v12 = v34;
LABEL_33:
        v14 = v35;

        v13 = v33;
        goto LABEL_34;
      }

      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = v24;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Mount point %@ is already in use", buf, 0xCu);
        _MBLog();
      }
    }

    v18 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    v13 = v33;
    v12 = v34;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_15:

  [objc_opt_class() _deleteSnapshotForVolume:v11 name:v12 error:0];
  if (a6)
  {
    [MBError errorWithCode:14 format:@"No free mount points for APFS snapshot"];
    *a6 = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

  v14 = v35;
LABEL_34:
  if (v16)
  {
    close(v16);
  }

LABEL_36:

  return v26;
}

+ (BOOL)_mountSnapshotForVolumeFd:(int)a3 volumeMountPoint:(id)a4 name:(id)a5 mountPoint:(id)a6 error:(id *)a7
{
  v10 = a5;
  v11 = a6;
  realpath_DARWIN_EXTSN([v11 fileSystemRepresentation], v22);
  v12 = fs_snapshot_mount(a3, v22, [v10 fileSystemRepresentation], 0);
  if (v12)
  {
    v13 = *__error();
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v17 = v10;
      v18 = 2080;
      v19 = v22;
      v20 = 1024;
      v21 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Unable to mount snapshot %@ at mount point %s: %{errno}d", buf, 0x1Cu);
      _MBLog();
    }

    if (a7)
    {
      *a7 = [MBError errorWithErrno:v13 path:v11 format:@"Unable to mount snapshot"];
    }
  }

  return v12 == 0;
}

+ (BOOL)_unmountWithRetry:(id)a3 startTime:(double)a4 timeout:(double)a5 error:(id *)a6 cancelationHandler:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = 31;
  while (!v12 || !v12[2](v12))
  {
    v24 = 0;
    v14 = [a1 unmount:v11 error:{&v24, v22}];
    v15 = v24;
    if ((v14 & 1) != 0 || ([MBError isError:v15 withCode:4]& 1) != 0)
    {
      v19 = 1;
LABEL_17:

      goto LABEL_18;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (![MBError isError:v15 withCode:14]|| vabdd_f64(Current, a4) > a5)
    {
      if (a6)
      {
        v20 = v15;
        v19 = 0;
        *a6 = v15;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_17;
    }

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Retrying unmount for %@ after EBUSY", buf, 0xCu);
      v22 = v11;
      _MBLog();
    }

    sleep(0xAu);
    if (!--v13)
    {
      v18 = a6;
      if (a6)
      {
        [MBError errorWithCode:15 format:@"Timed out trying to unmount %@", v11];
        goto LABEL_21;
      }

LABEL_22:
      v19 = 0;
      goto LABEL_18;
    }
  }

  v18 = a6;
  if (!a6)
  {
    goto LABEL_22;
  }

  [MBError errorWithCode:202 format:@"Cancelled while trying to unmount %@", v11];
LABEL_21:
  *v18 = v19 = 0;
LABEL_18:

  return v19;
}

+ (BOOL)unmount:(id)a3 timeout:(double)a4 error:(id *)a5 cancelationHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = objc_opt_new();
  Current = CFAbsoluteTimeGetCurrent();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v28 = 0;
        v20 = [a1 _unmountWithRetry:v19 startTime:&v28 timeout:v11 error:Current cancelationHandler:a4];
        v21 = v28;
        if ((v20 & 1) == 0)
        {
          [v12 addObject:v21];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v16);
  }

  v22 = [v12 count];
  if (v22)
  {
    if (a5)
    {
      *a5 = [MBError errorWithErrors:v12];
    }

    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v14 count];
      v25 = [v14 count];
      *buf = 134218240;
      v34 = v24;
      v35 = 2048;
      v36 = v25;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Failed to unmount %llu/%llu snapshots", buf, 0x16u);
      [v14 count];
      [v14 count];
LABEL_17:
      _MBLog();
    }
  }

  else
  {
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v14 count];
      *buf = 134217984;
      v34 = v26;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Unmounted %llu mount points", buf, 0xCu);
      [v14 count];
      goto LABEL_17;
    }
  }

  return v22 == 0;
}

+ (BOOL)unmount:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    if (a4)
    {
      v10 = [MBError errorWithCode:5 description:@"No mountpoint specified from which to unmount the current snapshot"];
      goto LABEL_17;
    }

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  if (unmount([v5 fileSystemRepresentation], 0))
  {
    v7 = *__error();
    v8 = MBGetDefaultLog();
    v9 = v8;
    if (v7 == 22)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Nothing to unmount at %{public}@", buf, 0xCu);
        _MBLog();
      }

      if (a4)
      {
        v10 = [MBError errorWithCode:4 path:v6 format:@"Nothing to unmount"];
LABEL_17:
        v12 = 0;
        *a4 = v10;
        goto LABEL_19;
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = v6;
        v16 = 1024;
        v17 = v7;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "unmount failed at %{public}@: %{errno}d", buf, 0x12u);
        _MBLog();
      }

      if (a4)
      {
        v10 = [MBError errorWithErrno:v7 path:v6 format:@"Unable to unmount snapshot"];
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Unmounted snapshot at %{public}@", buf, 0xCu);
    _MBLog();
  }

  v12 = 1;
LABEL_19:

  return v12;
}

+ (BOOL)_deleteSnapshotForVolume:(id)a3 name:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = open([v7 fileSystemRepresentation], 0);
  if (v9 < 0)
  {
    v15 = *__error();
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v22 = v7;
      v23 = 1024;
      LODWORD(v24) = v15;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Failed to open %{public}@: %{errno}d", buf, 0x12u);
      _MBLog();
    }

    v17 = [MBError errorWithErrno:v15 path:v7 format:@"Unable to open snapshot path"];
    if (a5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = v9;
    if (fs_snapshot_delete(v9, [v8 fileSystemRepresentation], 0))
    {
      v11 = *__error();
      v12 = MBGetDefaultLog();
      v13 = v12;
      if (v11 == 2)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v22 = v8;
          v23 = 2114;
          v24 = v7;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Snapshot %{public}@ not found at %{public}@", buf, 0x16u);
          _MBLog();
        }

        v14 = [MBError errorWithCode:4 path:v7 format:@"Snapshot not found"];
      }

      else
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v22 = v8;
          v23 = 2114;
          v24 = v7;
          v25 = 1024;
          v26 = v11;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Failed to delete snapshot %{public}@ at %{public}@: %{errno}d", buf, 0x1Cu);
          _MBLog();
        }

        v14 = [MBError errorWithErrno:v11 path:v7 format:@"Unable to delete snapshot"];
      }

      v17 = v14;
    }

    else
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v22 = v8;
        v23 = 2114;
        v24 = v7;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Deleted snapshot %{public}@ at %{public}@", buf, 0x16u);
        _MBLog();
      }

      v17 = 0;
    }

    close(v10);
    if (a5)
    {
LABEL_19:
      if (v17)
      {
        v19 = v17;
        *a5 = v17;
      }
    }
  }

  return v17 == 0;
}

+ (BOOL)renameSnapshotForVolume:(id)a3 name:(id)a4 newName:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = open([v9 fileSystemRepresentation], 0x100000);
  if (v12 < 0)
  {
    v17 = *__error();
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = v9;
      v24 = 1024;
      LODWORD(v25) = v17;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Unable to open %@: %{errno}d", buf, 0x12u);
      _MBLog();
    }

    if (a6)
    {
      [MBError errorWithErrno:v17 path:v9 format:@"Unable to open snapshot path"];
      *a6 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v13 = v12;
    if (fs_snapshot_rename(v12, [v10 fileSystemRepresentation], objc_msgSend(v11, "fileSystemRepresentation"), 0))
    {
      v14 = *__error();
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        v26 = 1024;
        v27 = v14;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Unable to rename snapshot: %@ -> %@: %{errno}d", buf, 0x1Cu);
        _MBLog();
      }

      v16 = [MBError errorWithErrno:v14 path:v9 format:@"Unable to rename snapshot"];
    }

    else
    {
      v16 = 0;
    }

    close(v13);
    v19 = v16 == 0;
    if (a6 && v16)
    {
      v20 = v16;
      *a6 = v16;
    }
  }

  return v19;
}

+ (BOOL)unmountAndDeleteSnapshotForVolume:(id)a3 name:(id)a4 mountPoint:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17 = 0;
  v12 = [objc_opt_class() unmount:v11 error:&v17];

  v13 = v17;
  if (v12)
  {
    goto LABEL_4;
  }

  if (([MBError isError:v13 withCode:4]& 1) != 0)
  {

    v13 = 0;
LABEL_4:
    v14 = [objc_opt_class() _deleteSnapshotForVolume:v9 name:v10 error:a6];
    goto LABEL_5;
  }

  if (a6)
  {
    v16 = v13;
    v14 = 0;
    *a6 = v13;
  }

  else
  {
    v14 = 0;
  }

LABEL_5:

  return v14;
}

+ (BOOL)unmountAndRenameSnapshotForVolume:(id)a3 name:(id)a4 mountPoint:(id)a5 newName:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a5;
  v15 = [objc_opt_class() unmount:v14 error:a7];

  if (v15)
  {
    v16 = [objc_opt_class() renameSnapshotForVolume:v11 name:v12 newName:v13 error:a7];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_deleteFileSystemSnapshots:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = a1;
  v36 = 0;
  v28 = v6;
  v8 = [objc_opt_class() listSnapshotsForVolume:v6 error:&v36];
  v9 = v36;
  v10 = v9;
  if (v8)
  {
    if ([v8 count])
    {
      v30 = v10;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v25 = v8;
      obj = v8;
      v11 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (!v11)
      {
        goto LABEL_19;
      }

      v12 = v11;
      v13 = *v33;
      v26 = v7;
      while (1)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          if ((v7[2](v7, v15) & 1) == 0)
          {
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v39 = v15;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "Ignoring snapshot: %{public}@", buf, 0xCu);
              _MBLog();
            }

            goto LABEL_15;
          }

          v17 = v13;
          v18 = [v15 name];
          v31 = v30;
          v19 = [v27 _deleteSnapshotForVolume:v28 name:v18 error:&v31];
          v20 = v31;

          if (v19)
          {
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v39 = v15;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Deleted snapshot: %{public}@", buf, 0xCu);
              _MBLog();
            }

            v30 = v20;
            v13 = v17;
            v7 = v26;
LABEL_15:

            goto LABEL_17;
          }

          v30 = v20;
          v13 = v17;
          v7 = v26;
LABEL_17:
          objc_autoreleasePoolPop(v16);
        }

        v12 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (!v12)
        {
LABEL_19:

          v22 = 0;
          v8 = v25;
          v10 = v30;
          goto LABEL_24;
        }
      }
    }

    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v39 = v6;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "No snapshots to delete for %{public}@", buf, 0xCu);
      _MBLog();
    }

    v22 = 0;
  }

  else
  {
    v10 = v9;
    v22 = v10;
  }

LABEL_24:

  return v22;
}

+ (BOOL)deleteAllSnapshotsAcrossVolumes:(id)a3 withPrefix:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v21 = 0;
        v16 = [MBFileSystemManager deleteAllSnapshotsForVolume:v15 withPrefix:v8 error:&v21];
        v17 = v21;
        if ((v16 & 1) == 0)
        {
          [v9 addObject:v17];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v18 = [v9 count];
  v19 = v18;
  if (a5 && v18)
  {
    *a5 = [MBError errorWithErrors:v9];
  }

  return v19 == 0;
}

+ (BOOL)deleteAllSnapshotsForVolume:(id)a3 withPrefix:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_class();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_8A84;
  v14[3] = &unk_14760;
  v15 = v7;
  v10 = v7;
  v11 = [v9 _deleteFileSystemSnapshots:v8 block:v14];

  if (a5 && v11)
  {
    v12 = v11;
    *a5 = v11;
  }

  return v11 == 0;
}

+ (BOOL)deleteAllSnapshotsForVolume:(id)a3 withPrefix:(id)a4 latestCreationDate:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    sub_ACB8();
  }

  v12 = v11;
  v13 = objc_opt_class();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_8BE0;
  v19[3] = &unk_14788;
  v20 = v12;
  v21 = v10;
  v14 = v10;
  v15 = v12;
  v16 = [v13 _deleteFileSystemSnapshots:v9 block:v19];
  if (a6 && v16)
  {
    v16 = v16;
    *a6 = v16;
  }

  v17 = v16 == 0;

  return v17;
}

+ (void)removeAbandonedDriveBackupDirectoriesWithLatestCreationDate:(id)a3 persona:(id)a4
{
  v54 = a3;
  v5 = a4;
  v6 = [v5 cacheDirectory];
  v7 = [NSURL fileURLWithPath:v6 isDirectory:1];

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v80 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Removing drive backup snapshots underneath %@", buf, 0xCu);
    v49 = v7;
    _MBLog();
  }

  v9 = +[NSFileManager defaultManager];
  v10 = NSURLIsDirectoryKey;
  v84[0] = NSURLIsDirectoryKey;
  v84[1] = NSURLCreationDateKey;
  v11 = [NSArray arrayWithObjects:v84 count:2];
  v12 = objc_opt_new();
  v13 = [v5 snapshotDatabaseDirectory];
  [v12 addObject:v13];

  v14 = [v5 restoreSnapshotsDatabaseDirectory];
  [v12 addObject:v14];

  v53 = v5;
  v15 = [v5 restoreDepotRootsByVolume];
  v16 = [v15 allValues];
  v58 = v12;
  [v12 addObjectsFromArray:v16];

  v55 = v9;
  v51 = v11;
  v52 = v7;
  [v9 enumeratorAtURL:v7 includingPropertiesForKeys:v11 options:1 errorHandler:&stru_147C8];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v17 = v77 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v75;
    v21 = &xpc_event_module_get_queue_ptr;
    v57 = v17;
    v56 = *v75;
    do
    {
      v22 = 0;
      v59 = v19;
      do
      {
        if (*v75 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v74 + 1) + 8 * v22);
        context = objc_autoreleasePoolPush();
        v24 = objc_alloc(v21[129]);
        v25 = [v23 lastPathComponent];
        v26 = [v24 initWithUUIDString:v25];

        if (v26)
        {
          v63 = v26;
          v72 = 0;
          v73 = 0;
          v27 = [v23 getResourceValue:&v73 forKey:v10 error:&v72];
          v28 = v73;
          v62 = v72;
          if (v27)
          {
            if ([v28 BOOLValue])
            {
              v60 = v22;
              v61 = v28;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v29 = v58;
              v30 = [v29 countByEnumeratingWithState:&v68 objects:v78 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v69;
                do
                {
                  for (i = 0; i != v31; i = i + 1)
                  {
                    if (*v69 != v32)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v34 = *(*(&v68 + 1) + 8 * i);
                    v35 = [v23 path];
                    v36 = [v34 mb_stringByAppendingSlash];
                    if ([v35 hasPrefix:v36])
                    {
                      v37 = MBGetDefaultLog();
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v80 = v34;
                        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Ignoring %@ since it's in the exclude list", buf, 0xCu);
                        v49 = v34;
                        _MBLog();
                      }
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v68 objects:v78 count:16];
                }

                while (v31);
              }

              v66 = 0;
              v67 = 0;
              v38 = [v23 getResourceValue:&v67 forKey:NSURLCreationDateKey error:&v66];
              v39 = v67;
              v40 = v66;

              if (v38)
              {
                v20 = v56;
                if (v39 && [v54 compare:v39] == -1)
                {
                  v44 = MBGetDefaultLog();
                  v17 = v57;
                  v19 = v59;
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                  {
                    [v39 timeIntervalSince1970];
                    *buf = 138412546;
                    v80 = v23;
                    v81 = 2048;
                    v82 = v46;
                    _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "Ignoring %@ since it was created at %.3f", buf, 0x16u);
                    [v39 timeIntervalSince1970];
                    v50 = v47;
                    v49 = v23;
                    _MBLog();
                  }
                }

                else
                {
                  v65 = v40;
                  v41 = [v55 removeItemAtURL:v23 error:{&v65, v49}];
                  v42 = v65;

                  v43 = MBGetDefaultLog();
                  v44 = v43;
                  if (v41)
                  {
                    v17 = v57;
                    v19 = v59;
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v80 = v23;
                      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "Removed drive backup snapshot directory: %@", buf, 0xCu);
                      v49 = v23;
                      goto LABEL_38;
                    }
                  }

                  else
                  {
                    v17 = v57;
                    v19 = v59;
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v80 = v23;
                      v81 = 2112;
                      v82 = v42;
                      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "Failed to remove drive backup snapshot directory %@: %@", buf, 0x16u);
                      v49 = v23;
                      v50 = v42;
LABEL_38:
                      _MBLog();
                    }
                  }

                  v40 = v42;
                }
              }

              else
              {
                v44 = MBGetDefaultLog();
                v20 = v56;
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v80 = v23;
                  v81 = 2112;
                  v82 = v40;
                  _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "Failed to get NSURLCreationDateKey for %@: %@", buf, 0x16u);
                  v49 = v23;
                  v50 = v40;
                  _MBLog();
                }

                v17 = v57;
                v19 = v59;
              }

              v26 = v63;

              v45 = v40;
              v10 = NSURLIsDirectoryKey;
              v21 = &xpc_event_module_get_queue_ptr;
              v22 = v60;
LABEL_41:

              v28 = v61;
            }

            else
            {
              v45 = v62;
              v26 = v63;
            }

            goto LABEL_43;
          }

          v61 = v28;
          v39 = MBGetDefaultLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v80 = v23;
            v81 = 2112;
            v82 = v62;
            _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "Failed to get NSURLIsDirectoryKey for %@: %@", buf, 0x16u);
            v49 = v23;
            v50 = v62;
            v45 = v62;
            _MBLog();
          }

          else
          {
            v45 = v62;
          }

          v26 = v63;
          goto LABEL_41;
        }

LABEL_43:

        objc_autoreleasePoolPop(context);
        v22 = v22 + 1;
      }

      while (v22 != v19);
      v48 = [v17 countByEnumeratingWithState:&v74 objects:v83 count:16];
      v19 = v48;
    }

    while (v48);
  }
}

+ (id)listSnapshotsForVolume:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v50 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "Listing all snapshots at %{public}@", buf, 0xCu);
    _MBLog();
  }

  v44 = v4;
  v43 = open([v4 fileSystemRepresentation], 0);
  if (v43 != -1)
  {
    v6 = objc_opt_new();
    while (1)
    {
      *&v47.bitmapcount = xmmword_D1A0;
      *&v47.fileattr = 0;
      v7 = fs_snapshot_list(v43, &v47, buf, 0x400uLL, 0);
      if (v7 < 0)
      {
        v37 = *__error();
        v38 = MBGetDefaultLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *v48 = 138543618;
          *&v48[4] = v44;
          *&v48[12] = 1024;
          *&v48[14] = v37;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "fs_snapshot_list failed at %{public}@: %{errno}d", v48, 0x12u);
          _MBLog();
        }

        v31 = [MBError errorWithErrno:v37 path:v44 format:@"fs_snapshot_list failed"];
        close(v43);
        v32 = a4;
        if (!v31)
        {
          goto LABEL_45;
        }

LABEL_40:
        v39 = MBGetDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v50 = v44;
          v51 = 2114;
          v52 = v31;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "Failed to list file system snapshots at %{public}@: %{public}@", buf, 0x16u);
          v32 = a4;
          _MBLog();
        }

        if (v32)
        {
          v40 = v31;
          v36 = 0;
          *v32 = v31;
        }

        else
        {
          v36 = 0;
        }

LABEL_48:

LABEL_49:
        v35 = v44;
        goto LABEL_50;
      }

      if (!v7)
      {
        close(v43);
LABEL_45:
        v36 = v6;
        v31 = 0;
        goto LABEL_48;
      }

      v46 = v7;
      v45 = 0;
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = &buf[v8];
        v11 = v8 + 24;
        v13 = *&buf[v8];
        v12 = *&buf[v8 + 4];
        if ((v12 & 0x20000000) != 0)
        {
          v14 = *&buf[v11];
          if (v14)
          {
            v15 = MBGetDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *v48 = 67109120;
              *&v48[4] = v14;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Failed to read attributes for directory entry: %{errno}d\n", v48, 8u);
              _MBLog();
            }

            v16 = [MBError errorWithErrno:v14 path:v44 format:@"Failed to read snapshot attributes"];

            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v45 = v16;
            goto LABEL_29;
          }

          v11 = v8 + 28;
        }

        if ((v12 & 1) != 0 && (v21 = &buf[v11], v11 += 8, (v22 = *(v21 + 1)) != 0))
        {
          v23 = &v21[*v21];
          v24 = (v22 - 1);
          if (v23[v24])
          {
            sub_ACE4();
          }

          v19 = [[NSString alloc] initWithBytes:v23 length:v24 encoding:4];
          v12 = *(v10 + 1);
          if ((v12 & 0x200) != 0)
          {
LABEL_18:
            v25 = &buf[v11];
            v11 += 16;
            v17 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*v25 - kCFAbsoluteTimeIntervalSince1970 + v25[1] * 0.000000001];
            if ((*(v10 + 1) & 0x800000) != 0)
            {
              goto LABEL_19;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v19 = 0;
          if ((v12 & 0x200) != 0)
          {
            goto LABEL_18;
          }
        }

        v17 = 0;
        if ((v12 & 0x800000) != 0)
        {
LABEL_19:
          *v48 = *&buf[v11];
          v11 += 16;
          v26 = [[NSUUID alloc] initWithUUIDBytes:v48];
          v18 = [v26 UUIDString];

          if (v19)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }

LABEL_23:
        v18 = 0;
        if (v19)
        {
LABEL_24:
          v27 = [[MBFileSystemSnapshot alloc] initWithName:v19 uuid:v18 creationDate:v17];
          v28 = v6;
          [v6 addObject:v27];
          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *v48 = 138543362;
            *&v48[4] = v27;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Found file system snapshot: %{public}@", v48, 0xCu);
            _MBLog();
          }

          v6 = v28;
        }

LABEL_27:
        if (v11 >= 1025)
        {
          sub_AD10();
        }

        v20 = 1;
LABEL_29:

        if (!v20)
        {
          break;
        }

        v8 += v13;
      }

      while (v9++ < v46);
      v31 = v45;
      if (v45)
      {
        close(v43);
        v32 = a4;
        goto LABEL_40;
      }
    }
  }

  v33 = *__error();
  v34 = MBGetDefaultLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v50 = v44;
    v51 = 1024;
    LODWORD(v52) = v33;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "Failed to open %{public}@: %{errno}d", buf, 0x12u);
    _MBLog();
  }

  if (!a4)
  {
    v36 = 0;
    goto LABEL_49;
  }

  v35 = v44;
  [MBError errorWithErrno:v33 path:v44 format:@"Unable to open snapshot path"];
  *a4 = v36 = 0;
LABEL_50:

  return v36;
}

+ (id)volumeMountPointForFile:(id)a3 error:(id *)a4
{
  v5 = a3;
  memset(&v9, 0, 512);
  if (statfs([v5 fileSystemRepresentation], &v9))
  {
    v6 = __error();
    if (a4)
    {
      [MBError errorWithErrno:*v6 path:v5 format:@"statfs failed"];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [NSString mb_stringWithFileSystemRepresentation:v9.f_mntonname];
  }

  return v7;
}

+ (id)fetchAllAPFSVolumeMountPoints
{
  v2 = getfsstat(&v8, 43360, 1);
  v3 = [[NSMutableArray alloc] initWithCapacity:v2 & ~(v2 >> 31)];
  if (v2 >= 1)
  {
    v4 = v2;
    f_mntonname = v8.f_mntonname;
    do
    {
      if (!strcmp("apfs", f_mntonname - 16) && (*(f_mntonname - 22) & 0x10) == 0)
      {
        v6 = [NSString mb_stringWithFileSystemRepresentation:f_mntonname];
        [v3 addObject:v6];
      }

      f_mntonname += 2168;
      --v4;
    }

    while (v4);
  }

  return v3;
}

+ (BOOL)startFilesystemKeyRollingWithPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    sub_AD3C();
  }

  v6 = v5;
  v12 = xmmword_D1D0;
  v7 = fsctl([v5 fileSystemRepresentation], 0xC0104A3DuLL, &v12, 0);
  if (v7 == -1)
  {
    v9 = *__error();
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v14) = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "fsctl(APFS_KEY_ROLLING_START) failed: %{errno}d", buf, 8u);
      _MBLog();
    }

    if (a4)
    {
      *a4 = [MBError errorWithErrno:v9 format:@"Failed to start APFS key rolling"];
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Started APFS key rolling for %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  return v7 != -1;
}

+ (BOOL)stopFilesystemKeyRollingWithPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    sub_AD68();
  }

  v6 = v5;
  v12 = xmmword_D1E0;
  v7 = fsctl([v5 fileSystemRepresentation], 0xC0104A3DuLL, &v12, 0);
  if (v7 == -1)
  {
    v9 = *__error();
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v14) = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "fsctl(APFS_KEY_ROLLING_STOP) failed: %{errno}d", buf, 8u);
      _MBLog();
    }

    if (a4)
    {
      *a4 = [MBError errorWithErrno:v9 format:@"Failed to stop APFS key rolling"];
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Stopped APFS key rolling for %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  return v7 != -1;
}

+ (void)removeDeviceTransferDirectoryWithEarliestCreationDate:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:@"/var/mobile/Library/Caches/Backup/DT"])
  {
    v19 = 0;
    v5 = [v4 attributesOfItemAtPath:@"/var/mobile/Library/Caches/Backup/DT" error:&v19];
    v6 = COERCE_DOUBLE(v19);
    if (!v5)
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v21 = @"/var/mobile/Library/Caches/Backup/DT";
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to fetch attributes at %@: %@", buf, 0x16u);
        _MBLog();
      }

      goto LABEL_18;
    }

    v7 = [v5 objectForKeyedSubscript:NSFileCreationDate];
    if (!v7)
    {
LABEL_18:

      goto LABEL_19;
    }

    if (v3 && [v3 compare:v7] == -1)
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        [v7 timeIntervalSince1970];
        *buf = 138412546;
        v21 = @"/var/mobile/Library/Caches/Backup/DT";
        v22 = 2048;
        v23 = v17;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Ignoring %@ since it was created at %.3f", buf, 0x16u);
        [v7 timeIntervalSince1970];
        _MBLog();
      }

      goto LABEL_17;
    }

    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [v7 timeIntervalSince1970];
      *buf = 138412546;
      v21 = @"/var/mobile/Library/Caches/Backup/DT";
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Removing %@ created at %.3f", buf, 0x16u);
      [v7 timeIntervalSince1970];
      _MBLog();
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v11 = v10;
    v18 = v6;
    v12 = [v4 mb_moveToTmpDirThenRemoveItemAtPath:@"/var/mobile/Library/Caches/Backup/DT" error:&v18];
    v13 = COERCE_DOUBLE(*&v18);

    if (v12)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v15 = v14;
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v21 = @"/var/mobile/Library/Caches/Backup/DT";
        v22 = 2048;
        v23 = v15 - v11;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Removed %@ in %.3fs", buf, 0x16u);
LABEL_15:
        _MBLog();
      }
    }

    else
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v21 = @"/var/mobile/Library/Caches/Backup/DT";
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
        goto LABEL_15;
      }
    }

    v6 = v13;
LABEL_17:

    goto LABEL_18;
  }

LABEL_19:
}

+ (id)volumeUUIDWithVolumeMountPoint:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    sub_ADEC();
  }

  if (!a4)
  {
    sub_ADC0();
  }

  v6 = v5;
  v7 = open([v5 fileSystemRepresentation], 0);
  if (v7 < 0)
  {
    v10 = *__error();
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v20 = 138543618;
      *&v20[4] = v6;
      *&v20[12] = 1024;
      *&v20[14] = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "open failed at %{public}@: %{errno}d", v20, 0x12u);
      goto LABEL_9;
    }

LABEL_10:

    [MBError errorWithErrno:v10 path:v6 format:@"open error"];
    *a4 = v12 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  *&v20[16] = 0;
  *v20 = xmmword_D1B8;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v9 = fgetattrlist(v7, v20, v18, 0x14uLL, 0);
  v10 = *__error();
  close(v8);
  if (v9)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v6;
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "fgetattrlist failed at %{public}@: %{errno}d", buf, 0x12u);
LABEL_9:
      _MBLog();
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v12 = [[NSUUID alloc] initWithUUIDBytes:v18 + 4];
  if (!v12)
  {
    sub_AD94();
  }

LABEL_12:

  return v12;
}

@end