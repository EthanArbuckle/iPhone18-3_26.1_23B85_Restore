@interface MBLockdownPlugin
- (id)_restoreLockdownKeysWithEngine:(id)a3;
- (id)_savePurpleBuddyRestoreState:(id)a3 persona:(id)a4;
- (id)_setLockdownValue:(id)a3 forDomain:(id)a4 key:(id)a5 connection:(id)a6;
- (id)_setPurpleBuddyRestoreState:(id)a3 withEngine:(id)a4;
- (id)endedBackupWithEngine:(id)a3 error:(id)a4;
- (id)endedRestoreWithPolicy:(id)a3 engine:(id)a4 error:(id)a5;
- (id)endingRestoreWithPolicy:(id)a3 engine:(id)a4;
- (id)preparingBackupWithEngine:(id)a3;
- (id)startingRestoreWithPolicy:(id)a3 engine:(id)a4;
@end

@implementation MBLockdownPlugin

- (id)preparingBackupWithEngine:(id)a3
{
  v46 = a3;
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Backing up lockdown keys", buf, 2u);
    _MBLog();
  }

  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Connecting to lockdown", buf, 2u);
    _MBLog();
  }

  v57 = +[MBLockdown connect];
  if (v57)
  {
    v56 = [NSMutableDictionary dictionaryWithCapacity:0];
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Copying lockdown keys", buf, 2u);
      _MBLog();
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v6 = sub_100041020();
    v7 = [v6 countByEnumeratingWithState:&v74 objects:v86 count:16];
    if (v7)
    {
      v8 = *v75;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v75 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v74 + 1) + 8 * i);
          v11 = sub_100041020();
          v12 = [v11 objectForKeyedSubscript:v10];

          v13 = MBGetGestaltValueForKey();
          v14 = MBGetDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v83 = v10;
            v84 = 2112;
            v85 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
            _MBLog();
          }

          if (v13)
          {
            [v56 setObject:v13 forKeyedSubscript:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v74 objects:v86 count:16];
      }

      while (v7);
    }

    if ([v46 backsUpPrimaryAccount])
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = [NSSet setWithObjects:@"com.apple.Accessibility", @"com.apple.mobile.data_sync", @"com.apple.mobile.iTunes.accessories", @"com.apple.MobileDeviceCrashCopy", @"com.apple.TerminalFlashr", 0];
      v49 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
      if (v49)
      {
        v48 = *v71;
        do
        {
          for (j = 0; j != v49; j = j + 1)
          {
            if (*v71 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v70 + 1) + 8 * j);
            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v83 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Copying lockdown domain %{public}@", buf, 0xCu);
              v44 = v15;
              _MBLog();
            }

            v50 = v15;

            v17 = [v57 objectForDomain:v15 andKey:0];
            v52 = v17;
            if (v17)
            {
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v18 = v17;
              v19 = [v18 countByEnumeratingWithState:&v66 objects:v80 count:16];
              if (v19)
              {
                v20 = *v67;
                do
                {
                  for (k = 0; k != v19; k = k + 1)
                  {
                    if (*v67 != v20)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v22 = *(*(&v66 + 1) + 8 * k);
                    v23 = [v18 objectForKeyedSubscript:{v22, v44, v45}];
                    v24 = MBGetDefaultLog();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v83 = v22;
                      v84 = 2112;
                      v85 = v23;
                      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
                      v44 = v22;
                      v45 = v23;
                      _MBLog();
                    }
                  }

                  v19 = [v18 countByEnumeratingWithState:&v66 objects:v80 count:16];
                }

                while (v19);
              }

              [v56 setObject:v18 forKeyedSubscript:v50];
            }

            else
            {
              if (MBIsInternalInstall() && !dword_10011E414 && !atomic_fetch_add_explicit(&dword_10011E414, 1u, memory_order_relaxed))
              {
                v25 = MBGetDefaultLog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v83 = v15;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Failed to copy lockdown domain: %@", buf, 0xCu);
                  v44 = v15;
                  _MBLog();
                }
              }

              v26 = MBGetDefaultLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v83 = v15;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to copy lockdown domain %{public}@", buf, 0xCu);
                v44 = v15;
                _MBLog();
              }
            }
          }

          v49 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
        }

        while (v49);
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v53 = [&off_100109600 countByEnumeratingWithState:&v62 objects:v79 count:16];
      if (v53)
      {
        v51 = *v63;
        do
        {
          for (m = 0; m != v53; m = m + 1)
          {
            if (*v63 != v51)
            {
              objc_enumerationMutation(&off_100109600);
            }

            v27 = *(*(&v62 + 1) + 8 * m);
            v28 = MBGetDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v83 = v27;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Copying keys from lockdown domain %{public}@", buf, 0xCu);
              v44 = v27;
              _MBLog();
            }

            v29 = +[NSMutableDictionary dictionary];
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v30 = [&off_100109600 objectForKeyedSubscript:v27];
            v31 = [v30 countByEnumeratingWithState:&v58 objects:v78 count:16];
            if (v31)
            {
              v32 = *v59;
              do
              {
                for (n = 0; n != v31; n = n + 1)
                {
                  if (*v59 != v32)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v34 = *(*(&v58 + 1) + 8 * n);
                  v35 = [v57 objectForDomain:v27 andKey:{v34, v44, v45}];
                  v36 = MBGetDefaultLog();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v83 = v34;
                    v84 = 2112;
                    v85 = v35;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
                    v44 = v34;
                    v45 = v35;
                    _MBLog();
                  }

                  if (v35)
                  {
                    [v29 setObject:v35 forKeyedSubscript:v34];
                  }
                }

                v31 = [v30 countByEnumeratingWithState:&v58 objects:v78 count:16];
              }

              while (v31);
            }

            [v56 setObject:v29 forKeyedSubscript:v27];
          }

          v53 = [&off_100109600 countByEnumeratingWithState:&v62 objects:v79 count:16];
        }

        while (v53);
      }
    }

    v39 = MBGetDefaultLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Disconnecting from lockdown", buf, 2u);
      _MBLog();
    }

    [v57 disconnect];
    v41 = MBGetDefaultLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v83 = v56;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Saving lockdown keys in manifest properties: %@", buf, 0xCu);
      _MBLog();
    }

    v42 = [v46 properties];
    [v42 setLockdownKeys:v56];

    v38 = 0;
  }

  else
  {
    if (MBIsInternalInstall() && !dword_10011E410 && !atomic_fetch_add_explicit(&dword_10011E410, 1u, memory_order_relaxed))
    {
      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "Failed to connect to lockdown", buf, 2u);
        _MBLog();
      }
    }

    v38 = [MBError errorWithCode:1 format:@"Unable to connect to lockdown to backup keys"];
  }

  return v38;
}

- (id)_setLockdownValue:(id)a3 forDomain:(id)a4 key:(id)a5 connection:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v12)
  {
    if (v9)
    {
      v20 = 0;
      v14 = [v12 setObject:v9 forDomain:v10 andKey:v11 withError:&v20];
      v15 = v20;
    }

    else
    {
      v19 = 0;
      v14 = [v12 removeObjectWithDomain:v10 andKey:v11 withError:&v19];
      v15 = v19;
    }

    v17 = v15;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v17 = v17;
      v16 = v17;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)endedBackupWithEngine:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 backsUpPrimaryAccount] && (objc_msgSend(v6, "isDeviceTransferEngine") & 1) == 0)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Connecting to lockdown", buf, 2u);
      _MBLog();
    }

    v9 = +[MBLockdown connect];
    if (v9)
    {
      *buf = 0;
      v31 = buf;
      v32 = 0x3032000000;
      v33 = sub_1000418CC;
      v34 = sub_1000418DC;
      v35 = 0;
      if (v7 && ([MBError isError:v7 withCode:500]& 1) == 0)
      {
        self = 0;
        v25 = 1;
      }

      else
      {
        v10 = +[NSTimeZone systemTimeZone];
        v11 = [v10 abbreviation];

        if ([v6 isCloudKitEngine])
        {
          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *v36 = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Getting last backup date from the CloudKit engine", v36, 2u);
            _MBLog();
          }

          v13 = v6;
          v14 = [v13 cache];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1000418E4;
          v29[3] = &unk_1000FDBA0;
          v29[4] = buf;
          v15 = [v14 enumerateSnapshots:v29];
          v16 = @"LastCloudBackupDate";
          v17 = @"LastCloudBackupTZ";
        }

        else
        {
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *v36 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Using the current date as the last backup", v36, 2u);
            _MBLog();
          }

          v13 = +[NSDate date];
          [v13 timeIntervalSinceReferenceDate];
          v21 = [NSNumber numberWithUnsignedLongLong:v20];
          v14 = *(v31 + 5);
          *(v31 + 5) = v21;
          v16 = @"LastiTunesBackupDate";
          v17 = @"LastiTunesBackupTZ";
        }

        if (*(v31 + 5))
        {
          v22 = MBGetDefaultLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = *(v31 + 5);
            *v36 = 138412802;
            v37 = v23;
            v38 = 2112;
            v39 = v11;
            v40 = 2112;
            v41 = v16;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Setting last backup date to %@/%@ for key %@", v36, 0x20u);
            v28 = *(v31 + 5);
            _MBLog();
          }

          v24 = [(MBLockdownPlugin *)self _setLockdownValue:*(v31 + 5) forDomain:@"com.apple.mobile.backup" key:v16 connection:v9];

          if (v24 || ([(MBLockdownPlugin *)self _setLockdownValue:v11 forDomain:@"com.apple.mobile.backup" key:v17 connection:v9], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v7 = v24;
            v25 = 1;
            self = v7;
          }

          else
          {
            v25 = 0;
            v7 = 0;
          }
        }

        else
        {
          v25 = 0;
        }
      }

      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Disconnecting from lockdown", v36, 2u);
        _MBLog();
      }

      [v9 disconnect];
      if (!v25)
      {
        self = 0;
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unable to connect to lockdown to set PurpleBuddy keys", buf, 2u);
        _MBLog();
      }

      self = 0;
    }
  }

  else
  {
    self = 0;
  }

  return self;
}

- (id)_savePurpleBuddyRestoreState:(id)a3 persona:(id)a4
{
  v5 = a3;
  v6 = [a4 userIncompleteRestoreDirectory];
  v7 = [v6 stringByAppendingPathComponent:@"/var/mobile/Library/Preferences/com.apple.purplebuddy.plist"];
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = v7;
    v32 = 2114;
    v33 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving the PurpleBuddy restore state at %{public}@: %{public}@", buf, 0x16u);
    v24 = v7;
    v26 = v5;
    _MBLog();
  }

  v9 = [NSMutableDictionary dictionaryWithContentsOfFile:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
  }

  v12 = v11;

  if (v5)
  {
    [v12 setObject:v5 forKeyedSubscript:@"SetupState"];
    [v12 setObject:v5 forKeyedSubscript:@"RestoreState"];
  }

  else
  {
    [v12 removeObjectForKey:@"SetupState"];
    [v12 removeObjectForKey:@"RestoreState"];
  }

  v13 = [v7 stringByDeletingLastPathComponent];
  v14 = +[NSFileManager defaultManager];
  v29 = 0;
  v15 = [v14 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v29];
  v16 = v29;

  if ((v15 & 1) == 0)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = v13;
      v32 = 2114;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create the directory at %{public}@: %{public}@", buf, 0x16u);
      v25 = v13;
      v27 = v16;
      _MBLog();
    }
  }

  v18 = [NSURL fileURLWithPath:v7 isDirectory:0, v25, v27];
  v28 = v16;
  v19 = [v12 writeToURL:v18 error:&v28];
  v20 = v28;

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = v7;
      v32 = 2114;
      v33 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to saved the PurpleBuddy plist at %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }

    v21 = v20;
  }

  return v21;
}

- (id)_setPurpleBuddyRestoreState:(id)a3 withEngine:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Connecting to lockdown", buf, 2u);
    _MBLog();
  }

  v9 = +[MBLockdown connect];
  if (v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v18 = @"com.apple.purplebuddy";
      v19 = 2112;
      v20 = @"SetupState";
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting %@ %@ to %@", buf, 0x20u);
      _MBLog();
    }

    v11 = [(MBLockdownPlugin *)self _setLockdownValue:v6 forDomain:@"com.apple.purplebuddy" key:@"SetupState" connection:v9];
    if (!v11)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v18 = @"com.apple.purplebuddy";
        v19 = 2112;
        v20 = @"RestoreState";
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting %@ %@ to %@", buf, 0x20u);
        _MBLog();
      }

      v11 = [(MBLockdownPlugin *)self _setLockdownValue:v6 forDomain:@"com.apple.purplebuddy" key:@"RestoreState" connection:v9];
      if (!v11)
      {
        if ([v7 isForegroundRestore])
        {
          v13 = [v7 persona];
          v11 = [(MBLockdownPlugin *)self _savePurpleBuddyRestoreState:v6 persona:v13];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Disconnecting from lockdown", buf, 2u);
      _MBLog();
    }

    [v9 disconnect];
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to connect to lockdown to set PurpleBuddy keys", buf, 2u);
      _MBLog();
    }

    v11 = [MBError errorWithCode:1 format:@"Unable to connect to lockdown to set PurpleBuddy keys"];
  }

  return v11;
}

- (id)startingRestoreWithPolicy:(id)a3 engine:(id)a4
{
  v5 = a4;
  if (![v5 restoresPrimaryAccount])
  {
    goto LABEL_17;
  }

  if (([v5 isServiceEngine] & 1) == 0)
  {
    v19 = self;
    v6 = 1;
    while (1)
    {
      v7 = v6;
      v8 = +[FMDFMIPManager sharedInstance];
      v9 = [v8 lockdownShouldDisableDeviceRestore];

      v10 = fmdFMIPLastOperationResult;
      v11 = MBGetDefaultLog();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        break;
      }

      if (v12)
      {
        *buf = 134217984;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[FMDFMIPManager lockdownShouldDisableDeviceRestore] failed: %ld", buf, 0xCu);
        v18 = v10;
        _MBLog();
      }

      v6 = 0;
      if ((v7 & 1) == 0)
      {
        v13 = @"Failed to determine the Find My iPhone state";
        v14 = 1;
LABEL_13:
        v15 = [MBError errorWithCode:v14 format:v13, v18];
        goto LABEL_16;
      }
    }

    self = v19;
    if (v12)
    {
      *buf = 67109120;
      LODWORD(v21) = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[FMDFMIPManager lockdownShouldDisableDeviceRestore] returned %d", buf, 8u);
      v18 = v9;
      _MBLog();
    }

    if (v9)
    {
      v13 = @"Find My iPhone must be disabled before restoring";
      v14 = 211;
      goto LABEL_13;
    }
  }

  if ([v5 isServiceEngine])
  {
    v15 = [(MBLockdownPlugin *)self _setPurpleBuddyRestoreState:@"RestoringFromBackup" withEngine:v5];
LABEL_16:
    v16 = v15;
  }

  else
  {
LABEL_17:
    v16 = 0;
  }

  return v16;
}

- (id)endingRestoreWithPolicy:(id)a3 engine:(id)a4
{
  v5 = a4;
  if (![v5 restoresPrimaryAccount])
  {
    v7 = 0;
    goto LABEL_12;
  }

  if ([v5 isDeviceTransferEngine])
  {
    v6 = @"RestoredFromDevice";
  }

  else if ([v5 isDriveEngine])
  {
    v6 = @"RestoredFromiTunesBackup";
  }

  else
  {
    if (![v5 isServiceEngine])
    {
LABEL_10:
      v8 = [(MBLockdownPlugin *)self _restoreLockdownKeysWithEngine:v5];
      goto LABEL_11;
    }

    v6 = @"BackgroundRestoringFromiCloudBackup";
  }

  v8 = [(MBLockdownPlugin *)self _setPurpleBuddyRestoreState:v6 withEngine:v5];
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_11:
  v7 = v8;
LABEL_12:

  return v7;
}

- (id)_restoreLockdownKeysWithEngine:(id)a3
{
  v59 = a3;
  v3 = [v59 settingsContext];
  v4 = [v3 shouldRestoreSystemFiles];

  if (v4)
  {
    v5 = [v59 properties];
    v58 = [v5 lockdownKeys];

    if (v58)
    {
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v85 = v58;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Loaded saved lockdown keys: %@", buf, 0xCu);
        _MBLog();
      }

      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Connecting to lockdown", buf, 2u);
        _MBLog();
      }

      v8 = +[MBLockdown connect];
      if (v8)
      {
        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Restoring lockdown domains", buf, 2u);
          _MBLog();
        }

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v10 = [NSSet setWithObjects:@"com.apple.Accessibility", @"com.apple.mobile.data_sync", @"com.apple.mobile.iTunes.accessories", @"com.apple.MobileDeviceCrashCopy", @"com.apple.TerminalFlashr", 0];
        v51 = [v10 countByEnumeratingWithState:&v78 objects:v90 count:16];
        if (v51)
        {
          v53 = *v79;
          v52 = v10;
          while (2)
          {
            for (i = 0; i != v51; i = i + 1)
            {
              if (*v79 != v53)
              {
                objc_enumerationMutation(v10);
              }

              v11 = *(*(&v78 + 1) + 8 * i);
              v12 = MBGetDefaultLog();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v85 = v11;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Restoring lockdown domain %@", buf, 0xCu);
                v49 = v11;
                _MBLog();
              }

              v13 = MBGetDefaultLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v85 = v11;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Clearing lockdown domain %@", buf, 0xCu);
                v49 = v11;
                _MBLog();
              }

              v14 = [v8 objectForDomain:v11 andKey:0];
              v15 = v14;
              if (!v14)
              {
                v43 = [MBError errorWithCode:1 format:@"Error copying lockdown domain %@", v11];
                v44 = 0;
LABEL_74:

                goto LABEL_75;
              }

              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v15 = v14;
              v16 = [v15 countByEnumeratingWithState:&v74 objects:v89 count:16];
              if (v16)
              {
                v17 = *v75;
                while (2)
                {
                  for (j = 0; j != v16; j = j + 1)
                  {
                    if (*v75 != v17)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v19 = *(*(&v74 + 1) + 8 * j);
                    v20 = MBGetDefaultLog();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v85 = v19;
                      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
                      v49 = v19;
                      _MBLog();
                    }

                    v73 = 0;
                    v21 = [v8 removeObjectWithDomain:v11 andKey:v19 withError:&v73];
                    v22 = v73;
                    v23 = v22;
                    if ((v21 & 1) == 0)
                    {
                      v43 = [MBError errorWithCode:1 format:@"Error clearing lockdown key %@ from domain %@: %@", v19, v11, v22];
                      v44 = 0;
LABEL_73:

                      goto LABEL_74;
                    }
                  }

                  v16 = [v15 countByEnumeratingWithState:&v74 objects:v89 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }
              }

              v24 = MBGetDefaultLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v85 = v11;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Setting lockdown keys for domain %@", buf, 0xCu);
                v49 = v11;
                _MBLog();
              }

              v25 = [v58 objectForKeyedSubscript:v11];

              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v15 = v25;
              v26 = [v15 countByEnumeratingWithState:&v69 objects:v88 count:16];
              if (v26)
              {
                v27 = *v70;
                while (2)
                {
                  for (k = 0; k != v26; k = k + 1)
                  {
                    if (*v70 != v27)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v29 = *(*(&v69 + 1) + 8 * k);
                    v23 = [v15 objectForKeyedSubscript:{v29, v49, v50}];
                    v30 = MBGetDefaultLog();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v85 = v29;
                      v86 = 2112;
                      v87 = v23;
                      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%@: %@", buf, 0x16u);
                      v49 = v29;
                      v50 = v23;
                      _MBLog();
                    }

                    v31 = [(MBLockdownPlugin *)self _setLockdownValue:v23 forDomain:v11 key:v29 connection:v8];
                    if (v31)
                    {
                      v44 = v31;
                      v43 = v44;
                      goto LABEL_73;
                    }
                  }

                  v26 = [v15 countByEnumeratingWithState:&v69 objects:v88 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }
              }

              v10 = v52;
            }

            v51 = [v52 countByEnumeratingWithState:&v78 objects:v90 count:16];
            if (v51)
            {
              continue;
            }

            break;
          }
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v54 = [&off_100109600 countByEnumeratingWithState:&v65 objects:v83 count:16];
        if (v54)
        {
          v56 = *v66;
          do
          {
            for (m = 0; m != v54; m = m + 1)
            {
              if (*v66 != v56)
              {
                objc_enumerationMutation(&off_100109600);
              }

              v32 = *(*(&v65 + 1) + 8 * m);
              v33 = MBGetDefaultLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v85 = v32;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Restoring lockdown keys for domain %@", buf, 0xCu);
                v49 = v32;
                _MBLog();
              }

              v34 = [v58 objectForKeyedSubscript:v32];
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v35 = [&off_100109600 objectForKeyedSubscript:v32];
              v36 = [v35 countByEnumeratingWithState:&v61 objects:v82 count:16];
              if (v36)
              {
                v37 = *v62;
                while (2)
                {
                  for (n = 0; n != v36; n = n + 1)
                  {
                    if (*v62 != v37)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v39 = *(*(&v61 + 1) + 8 * n);
                    v40 = [v34 objectForKeyedSubscript:{v39, v49, v50}];
                    if (v40)
                    {
                      v41 = MBGetDefaultLog();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v85 = v39;
                        v86 = 2112;
                        v87 = v40;
                        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%@: %@", buf, 0x16u);
                        v49 = v39;
                        v50 = v40;
                        _MBLog();
                      }

                      v42 = [(MBLockdownPlugin *)self _setLockdownValue:v40 forDomain:v32 key:v39 connection:v8];
                      if (v42)
                      {
                        v43 = v42;

                        v44 = v43;
                        goto LABEL_75;
                      }
                    }
                  }

                  v36 = [v35 countByEnumeratingWithState:&v61 objects:v82 count:16];
                  if (v36)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v43 = 0;
            v44 = 0;
            v54 = [&off_100109600 countByEnumeratingWithState:&v65 objects:v83 count:16];
          }

          while (v54);
        }

        else
        {
          v43 = 0;
          v44 = 0;
        }

LABEL_75:
        v47 = MBGetDefaultLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Disconnecting from lockdown", buf, 2u);
          _MBLog();
        }

        [v8 disconnect];
      }

      else
      {
        v43 = [MBError errorWithCode:1 format:@"Unable to connect to lockdown to restore keys"];
        v44 = 0;
      }
    }

    else
    {
      v43 = [MBError errorWithCode:1 format:@"Saved lockdown keys not found in manifest properties"];
    }

    v46 = v58;
  }

  else
  {
    v45 = MBGetDefaultLog();
    v46 = v45;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Not restoring lockdown keys since system files weren't restored", buf, 2u);
      _MBLog();
      v43 = 0;
      v46 = v45;
    }

    else
    {
      v43 = 0;
    }
  }

  return v43;
}

- (id)endedRestoreWithPolicy:(id)a3 engine:(id)a4 error:(id)a5
{
  v7 = a4;
  if ([v7 restoresPrimaryAccount])
  {
    v8 = [v7 isServiceEngine];
    v9 = 0;
    if (a5 && v8)
    {
      v9 = [(MBLockdownPlugin *)self _setPurpleBuddyRestoreState:0 withEngine:v7];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end