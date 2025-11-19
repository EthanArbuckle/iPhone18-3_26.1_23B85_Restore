void sub_10D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained enabled])
  {
    v3 = MKBGetDeviceLockState();
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v6 = kMobileKeyBagLockStatusNotifyToken;
      v7 = 1024;
      v8 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Received %{public}s: %d", buf, 0x12u);
      _MBLog();
    }

    if (v3)
    {
      if (v3 == 1)
      {
        [v2 setIsLocked:1];
      }

      else if (v3 == 2)
      {
        [v2 notifyDaemonThatDeviceIsLocking];
      }
    }

    else
    {
      [v2 notifyDaemonThatDeviceIsUnlocked];
    }
  }
}

void sub_121C(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v8 = kSBSLockStateNotifyKey;
    v9 = 2048;
    v10 = state64;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "Received %{public}s: %llu", buf, 0x16u);
    _MBLog();
  }

  v4 = state64 != 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsLocked:v4];
}

void sub_2DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59)
{
  objc_destroyWeak((v60 + 32));
  objc_destroyWeak((v59 + 32));
  objc_destroyWeak(&a41);
  objc_destroyWeak(&a54);
  objc_destroyWeak(&a59);
  objc_destroyWeak((v61 - 200));
  objc_destroyWeak((v61 - 160));
  objc_destroyWeak((v61 - 152));
  _Unwind_Resume(a1);
}

void sub_2F04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[6];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2FD8;
    block[3] = &unk_14498;
    v11 = v6;
    v12 = v5;
    v13 = v8;
    dispatch_async(v9, block);
  }
}

void sub_2FD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MBGetDefaultLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Registering ACMonitoredAccountStore failed:%@", buf, 0xCu);
      v13 = *(a1 + 32);
      _MBLog();
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) count];
      *buf = 134217984;
      v20 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Loading %lu accounts", buf, 0xCu);
      v12 = [*(a1 + 40) count];
      _MBLog();
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(a1 + 48) _updateEnabledStateForAccount:{*(*(&v14 + 1) + 8 * v11), v12}];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [*(a1 + 48) _updateGlobalEnabledState];
  }
}

void sub_31C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v7 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "Received %{public}@", buf, 0xCu);
    v5 = *(a1 + 32);
    _MBLog();
  }

  [WeakRetained notifyDaemonOfPasscodeChange];
}

uint64_t sub_32A4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 8) != -1)
  {
    v3 = *(result + 40);
    result = (*(v1[5] + 16))();
    v2 = v1[4];
  }

  if (*(v2 + 24) != -1)
  {
    v4 = *(v1[6] + 16);

    return v4();
  }

  return result;
}

void sub_331C(uint64_t a1)
{
  v2 = IOPSDrawingUnlimitedPower();
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = "com.apple.system.powersources.source";
    v7 = 1024;
    v8 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Received %{public}s: %d", buf, 0x12u);
    _MBLog();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsOnPower:v2];
}

void sub_3414(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _boostBackgroundRestore:0];
}

void sub_3458(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _boostManualBackup];
}

void sub_3498(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = nw_path_get_status(v3) & 0xFFFFFFFD;
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      *buf = 67109378;
      v14 = v7;
      v15 = 2114;
      *v16 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "status:%d, %{public}@", buf, 0x12u);
      v12 = *(a1 + 40);
      _MBLog();
    }

    if (v5 == 1)
    {
      v8 = nw_path_uses_interface_type(v3, nw_interface_type_wifi) || nw_path_uses_interface_type(v3, nw_interface_type_wired);
      if (nw_path_uses_interface_type(v3, nw_interface_type_cellular))
      {
        is_expensive = nw_path_is_expensive(v3);
        v10 = !is_expensive;
      }

      else
      {
        is_expensive = 0;
        v10 = 0;
      }
    }

    else
    {
      is_expensive = 0;
      v10 = 0;
      v8 = 0;
    }

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      v14 = v8;
      v15 = 1024;
      *v16 = v10;
      *&v16[4] = 1024;
      *&v16[6] = is_expensive;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "isOnWiFi:%d, isOnCellular:%d(%d)", buf, 0x14u);
      _MBLog();
    }

    [WeakRetained setIsOnWiFi:v8];
    [WeakRetained setIsOnCellular:v10];
  }
}

void sub_3968(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    WeakRetained = MBGetDefaultLog();
    if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v10 = *(a1 + 40);
    *buf = 134217984;
    v17 = v10;
    _os_log_impl(&dword_0, WeakRetained, OS_LOG_TYPE_INFO, "Background restore boost finished successfully (%llu)", buf, 0xCu);
    v12 = *(a1 + 40);
LABEL_10:
    _MBLog();
    goto LABEL_11;
  }

  if (([MBError isError:v3 withCode:19]& 1) == 0)
  {
    WeakRetained = MBGetDefaultLog();
    if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v11 = *(a1 + 40);
    *buf = 134218242;
    v17 = v11;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_0, WeakRetained, OS_LOG_TYPE_ERROR, "Failed to boost background restore (%llu): %@", buf, 0x16u);
    v13 = *(a1 + 40);
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    *buf = 134218498;
    v17 = 2;
    v18 = 2048;
    v19 = v6;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Retrying background restore boost in %llu seconds after error (%llu): %@", buf, 0x20u);
    v14 = *(a1 + 40);
    _MBLog();
  }

  v7 = dispatch_time(0, 2000000000);
  isa = WeakRetained[6].isa;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3BE4;
  block[3] = &unk_145B0;
  v9 = *(a1 + 40);
  block[4] = WeakRetained;
  block[5] = v9;
  dispatch_after(v7, isa, block);
LABEL_11:
}

void sub_3CD4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = MBGetDefaultLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Failed to boost manual backup: %@", buf, 0xCu);
LABEL_6:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Manual backup boost finished successfully", buf, 2u);
    goto LABEL_6;
  }
}

id sub_4284(uint64_t a1)
{
  result = sub_42D0();
  if (result)
  {
    v3 = *(*(a1 + 32) + 80);

    return [v3 wakeUp];
  }

  return result;
}

uint64_t sub_42D0()
{
  v0 = MKBDeviceUnlockedSinceBoot();
  v1 = MKBGetDeviceLockState();
  v2 = v1;
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  v4 = v3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v8 = v4;
    v9 = 1024;
    v10 = v0 != 0;
    v11 = 1024;
    v12 = v2;
    v13 = 1024;
    v14 = v2 == 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "deviceUnlockedSinceBoot %d, MKBDeviceUnlockedSinceBoot %d, deviceLockState %d, deviceIsUnlocked %d", buf, 0x1Au);
    _MBLog();
  }

  return v4;
}

id sub_494C(uint64_t a1)
{
  result = sub_42D0();
  if (result)
  {
    v3 = *(*(a1 + 32) + 80);

    return [v3 wakeUp];
  }

  return result;
}

void sub_4A70(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(a1 + 48);
  if (v3 == 3)
  {
    [*(a1 + 40) _clearEnabledStateForAccount:*(a1 + 32)];
LABEL_7:
    [*(a1 + 40) _updateGlobalEnabledState];
    if (v2)
    {
      v4 = [*(a1 + 32) personaIdentifier];
      v5 = [[MBAccountChange alloc] initWithAccountIdentifier:v2 personaIdentifier:v4 isPrimaryAccount:objc_msgSend(*(a1 + 32) changeType:{"aa_isAccountClass:", AAAccountClassPrimary), *(a1 + 48)}];
      [*(a1 + 40) _notifyDaemonOfAccountChange:v5];
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v8 = v5;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notified daemon of account change:%@", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
      v4 = MBGetDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Nil account identifier found", buf, 2u);
        _MBLog();
      }
    }

    goto LABEL_14;
  }

  if (!v3)
  {
    sub_AC38();
  }

  if (([*(a1 + 40) _updateEnabledStateForAccount:*(a1 + 32)] & 1) != 0 || *(a1 + 48) == 1)
  {
    goto LABEL_7;
  }

LABEL_14:
}

id sub_5A68(uint64_t a1)
{
  result = sub_42D0();
  if (result)
  {
    v3 = *(*(a1 + 32) + 80);

    return [v3 deviceIsLocking];
  }

  return result;
}

id sub_5B28(uint64_t a1)
{
  result = sub_42D0();
  if (result)
  {
    v3 = *(*(a1 + 32) + 80);

    return [v3 deviceIsUnlocked];
  }

  return result;
}

id sub_5C0C(uint64_t a1)
{
  result = sub_42D0();
  if (result)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Notifying daemon of passcode changed", v4, 2u);
      _MBLog();
    }

    return [*(*(a1 + 32) + 80) passcodeChanged];
  }

  return result;
}

void MBInstallAgent()
{
  if (!qword_162F8)
  {
    v0 = objc_autoreleasePoolPush();
    v1 = [MBUEAPlugin alloc];
    xpc_event_module_get_queue();
  }
}

id MBTemporaryPath()
{
  if (qword_16300 != -1)
  {
    sub_AC64();
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_60D8;
  v11 = sub_60E8;
  v12 = 0;
  v0 = sub_60F0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6134;
  block[3] = &unk_146F8;
  block[4] = &v7;
  dispatch_sync(v0, block);

  v1 = v8[5];
  if (!v1)
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *MBTemporaryPath(void)"];
    [v4 handleFailureInFunction:v5 file:@"MBTempPathUtils.m" lineNumber:76 description:@"Unable to obtain MBTemporaryPath()"];

    v1 = v8[5];
  }

  v2 = v1;
  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_6000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6018(id a1)
{
  strcpy(v4, "/var/tmp/backupd-XXXXXXXXXXXXXXX");
  v1 = mkdtemp(v4);
  qword_16308 = v1;
  if (!v1)
  {
    v2 = [MBException alloc];
    v3 = @"Unable to create /var/tmp/backupd-XXXXXXXXXX directory (mkdtemp)";
    goto LABEL_6;
  }

  qword_16308 = strdup(v1);
  if (!qword_16308)
  {
    v2 = [MBException alloc];
    v3 = @"Unable to create /var/tmp/backupd-XXXXXXXXXX directory (strdup)";
LABEL_6:
    objc_exception_throw([v2 initWithCode:1 format:v3]);
  }
}

uint64_t sub_60D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_60F0()
{
  if (qword_16318 != -1)
  {
    sub_AC78();
  }

  v1 = qword_16310;

  return v1;
}

void sub_6134(uint64_t a1)
{
  if (!qword_16308)
  {
    objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Unable to create /var/tmp/backupd-XXXXXXXXXX directory"]);
  }

  snprintf(__str, 0x401uLL, "%s/XXXXXXXXXXXXXXX", qword_16308);
  if (mktemp(__str))
  {
    v2 = [[NSString alloc] initWithUTF8String:__str];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      *buf = 67109120;
      v8 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "mktemp failed: %{errno}d", buf, 8u);
      v6 = *__error();
      _MBLog();
    }
  }
}

void MBRemoveTemporaryDirectory()
{
  v0 = sub_60F0();
  dispatch_sync(v0, &stru_14718);
}

void sub_62C4(id a1)
{
  if (qword_16308)
  {
    v1 = [NSString stringWithUTF8String:?];
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v6 = v1;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Removing temporary directory at %{public}@", buf, 0xCu);
      _MBLog();
    }

    v3 = +[NSFileManager defaultManager];
    v4 = [v3 removeItemAtPath:v1 error:0];

    if (v4)
    {
      free(qword_16308);
      qword_16308 = 0;
    }
  }
}

void sub_63E0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("MBTemporaryPath", v3);
  v2 = qword_16310;
  qword_16310 = v1;
}

id sub_8A84(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

id sub_8BE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 creationDate];
  v5 = v4;
  if (v4 && [v4 compare:*(a1 + 32)] == -1)
  {
    v7 = [v3 name];
    v6 = [v7 hasPrefix:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MBSnapshotNameWithCurrentDate(void *a1)
{
  v1 = a1;
  v2 = +[NSDate now];
  v3 = objc_alloc_init(NSDateFormatter);
  v4 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [v3 setDateFormat:@"yyyy-MM-dd.HH:mm:ss"];
  v5 = +[NSTimeZone localTimeZone];
  [v3 setTimeZone:v5];

  v6 = [NSString alloc];
  v7 = [v3 stringFromDate:v2];
  v8 = [v6 initWithFormat:@"%@-%@", v1, v7];

  return v8;
}

id MBSnapshotPathFromLivePath(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6 && !v7)
  {
    sub_AE44();
  }

  if (![v6 length])
  {
    v5 = v5;
    v11 = v5;
    goto LABEL_34;
  }

  if (![v5 length])
  {
    v9 = v8;

    v5 = v9;
  }

  v10 = @"/private/var";
  if ([v8 isEqualToString:@"/private/var"])
  {
    if ([v5 hasPrefix:@"/var/"])
    {
      v10 = @"/var";
    }

    else if (![v5 hasPrefix:@"/private/var/"])
    {
      v10 = 0;
    }
  }

  else
  {
    if ([v5 hasPrefix:@"/private/var/"])
    {
      v12 = [v5 substringFromIndex:{objc_msgSend(@"/private", "length")}];

      v5 = v12;
    }

    if ([v5 hasPrefix:@"/var/"])
    {
      if ([v8 hasPrefix:@"/private/var/"])
      {
        v13 = [v8 substringFromIndex:{objc_msgSend(@"/private", "length")}];
      }

      else
      {
        v13 = v8;
      }

      v10 = v13;
    }

    else
    {
      v10 = 0;
    }
  }

  v14 = [v5 length];
  v15 = [(__CFString *)v10 length];
  v16 = v15;
  if (!v10 || v14 != v15)
  {
    if (!v10)
    {
LABEL_32:
      v17 = v5;
      goto LABEL_33;
    }

LABEL_26:
    if ([v5 hasPrefix:v10] && v14 != v16 && objc_msgSend(v5, "characterAtIndex:", v16) == 47)
    {
      if ([v5 rangeOfString:v10] || !v18)
      {
        sub_AE18();
      }

      v17 = [v5 stringByReplacingCharactersInRange:0 withString:{v18, v6}];
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (![v5 hasPrefix:v10])
  {
    goto LABEL_26;
  }

  v17 = v6;
LABEL_33:
  v11 = v17;

LABEL_34:

  return v11;
}

id MBLivePathFromSnapshotPath(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  v9 = v6;
  v10 = v7;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (![v8 hasPrefix:v9])
  {
    goto LABEL_4;
  }

  v11 = [v9 length];
  if (v11 > [v8 length])
  {
    goto LABEL_4;
  }

  if ([v8 rangeOfString:v9])
  {
    sub_AE70();
  }

  v16 = v15;
  if (v15 == [v8 length])
  {
    v12 = v10;
  }

  else
  {
    if ([v8 characterAtIndex:v16] != 47)
    {
LABEL_4:
      v12 = v8;
      goto LABEL_5;
    }

    v12 = [v8 stringByReplacingCharactersInRange:0 withString:{v16, v10}];
  }

LABEL_5:
  v13 = v12;

  return v13;
}

void xpc_event_module_get_queue()
{
    ;
  }
}