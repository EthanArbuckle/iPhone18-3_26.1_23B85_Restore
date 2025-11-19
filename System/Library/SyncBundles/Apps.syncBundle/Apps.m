void sub_232C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Uninstall of %{public}@ with install coordinator succeeded with error %{public}@.", &v6, 0x16u);
  }

  [AITransactionLog logStep:7 byParty:1 phase:2 success:v3 == 0 forBundleID:*(a1 + 32) description:@"Uninstall app"];
}

void _handleATCStartupCompletedNotification(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 setupInstallCoordinatorObserver];
  }
}

void sub_597C(uint64_t a1, uint64_t a2)
{
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Prioritize %{public}@ finished with error %{public}@", &v6, 0x16u);
  }
}

void sub_5C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_5CA4(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 80) containsObject:a1[5]];
  v2 = a1[5];
  v3 = *(a1[4] + 80);

  return [v3 addObject:v2];
}

void sub_5CF4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 88) containsObject:*(a1 + 40)])
  {
    dispatch_group_leave(*(*(a1 + 32) + 24));
    --*(*(a1 + 32) + 128);
    [*(*(a1 + 32) + 88) removeObject:*(a1 + 40)];
    v2 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 128);
      v5 = 138543618;
      v6 = v3;
      v7 = 2048;
      v8 = v4;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "IC cancelled coordinator for restoring app bundle %{public}@ _restoringPlaceholderCount %lld", &v5, 0x16u);
    }
  }
}

BOOL sub_6A3C(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    return (objc_opt_isKindOfClass() & 1) != 0 && [v1 rangeOfString:@"/.."] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

intptr_t sub_6EE0(uint64_t a1, uint64_t a2)
{
  v4 = _ATLogCategorySyncBundle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v10 = 138543362;
      v11 = a2;
      v6 = "refreshReceiptsWithCompletionBlock failed: %{public}@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    v6 = "refreshReceiptsWithCompletionBlock succeeded";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

id sub_6FC0(uint64_t a1)
{
  [*(*(a1 + 32) + 72) removeAllObjects];
  v2 = *(*(a1 + 32) + 80);

  return [v2 removeAllObjects];
}

void sub_7638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_76AC(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 72) containsObject:{objc_msgSend(*(a1 + 40), "identifier")}];
  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 80) containsObject:{objc_msgSend(*(a1 + 40), "identifier")}];
  [*(*(a1 + 32) + 72) removeObject:{objc_msgSend(*(a1 + 40), "identifier")}];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);
  v4 = [v2 identifier];

  return [v3 removeObject:v4];
}

id sub_8A78(uint64_t a1, void *a2)
{
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = [a2 bundleVersion];
  if (v5)
  {
    [(NSMutableDictionary *)v4 setObject:v5 forKeyedSubscript:kCFBundleVersionKey];
  }

  v6 = [a2 bundleIdentifier];
  if (v6)
  {
    [(NSMutableDictionary *)v4 setObject:v6 forKeyedSubscript:kCFBundleIdentifierKey];
  }

  v7 = [objc_msgSend(a2 "bundleContainerURL")];
  if (v7)
  {
    [(NSMutableDictionary *)v4 setObject:v7 forKeyedSubscript:@"Container"];
  }

  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a2 installType] == &dword_0 + 2);
  if (v8)
  {
    [(NSMutableDictionary *)v4 setObject:v8 forKeyedSubscript:@"IsRestore"];
  }

  v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a2 installType] == &dword_8);
  if (v9)
  {
    [(NSMutableDictionary *)v4 setObject:v9 forKeyedSubscript:@"intentional_demoted_app"];
  }

  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a2 installType] == &dword_4 + 3);
  if (v10)
  {
    [(NSMutableDictionary *)v4 setObject:v10 forKeyedSubscript:@"auto_demoted_app"];
  }

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objc_msgSend(a2 "applicationType")]);
  if (v11)
  {
    [(NSMutableDictionary *)v4 setObject:v11 forKeyedSubscript:@"system_app"];
  }

  v12 = [objc_msgSend(a2 "bundleURL")];
  if (v12)
  {
    [(NSMutableDictionary *)v4 setObject:v12 forKeyedSubscript:@"Path"];
  }

  v13 = *(a1 + 32);
  v14 = [a2 applicationIdentifier];

  return [v13 setObject:v4 forKey:v14];
}

void *sub_8C54(void *result)
{
  if (*(result + 48) == 1)
  {
    return [*(result[4] + 72) addObject:result[5]];
  }

  return result;
}

void sub_8FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_8FEC(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 "applicationType")];
  if (result)
  {
    result = [objc_msgSend(objc_msgSend(a2 "diskUsage")];
    *(*(*(a1 + 32) + 8) + 24) += result;
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

void sub_91A8(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_msgSend(objc_msgSend(a2 "bundleContainerURL")];
  v6 = [NSDictionary dictionaryWithContentsOfFile:v5];
  v7 = [(NSDictionary *)v6 objectForKey:@"appleId"];
  v8 = objc_opt_class();
  v9 = sub_944C(v7, v8, @"appleID");
  v10 = [(NSDictionary *)v6 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
  v11 = objc_opt_class();
  v12 = [sub_944C(v10 v11];
  v13 = objc_opt_class();
  v14 = [sub_944C(v12 v13];
  v15 = objc_opt_class();
  v16 = sub_944C(v14, v15, @"AppleID");
  if ([v9 length] && objc_msgSend(v16, "length"))
  {
    if (([v9 isEqual:v16] & 1) == 0)
    {
      v17 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543874;
        v22 = [a2 applicationIdentifier];
        v23 = 2114;
        v24 = v9;
        v25 = 2114;
        v26 = v16;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "mismatched AppleID keys for %{public}@: %{public}@ vs %{public}@", &v21, 0x20u);
      }
    }

    [*(a1 + 32) addObject:v9];
    goto LABEL_10;
  }

  if ([v9 length])
  {
    v18 = *(a1 + 32);
    v19 = v9;
LABEL_11:
    [v18 addObject:v19];
    goto LABEL_12;
  }

  if ([v16 length])
  {
LABEL_10:
    v18 = *(a1 + 32);
    v19 = v16;
    goto LABEL_11;
  }

  v20 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543618;
    v22 = [a2 applicationIdentifier];
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "unknown AppleID for %{public}@ (plist at %{public}@)", &v21, 0x16u);
  }

LABEL_12:
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_944C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = a3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "unexpected type for %{public}@", &v7, 0xCu);
    }

    return 0;
  }

  return v3;
}

void sub_9660(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSDictionary dictionaryWithContentsOfFile:](NSDictionary, "dictionaryWithContentsOfFile:", [objc_msgSend(objc_msgSend(a2 "bundleContainerURL")]);
  v6 = [(NSDictionary *)v5 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
  v7 = objc_opt_class();
  v8 = [sub_944C(v6 v7];
  v9 = objc_opt_class();
  v10 = sub_944C(v8, v9, @"accountInfo");
  v11 = [v10 objectForKey:@"AppleID"];
  v12 = objc_opt_class();
  v13 = sub_944C(v11, v12, @"AppleID");
  if (v13 || (v14 = [(NSDictionary *)v5 objectForKey:@"appleId"], v15 = objc_opt_class(), (v13 = sub_944C(v14, v15, @"appleID")) != 0))
  {
    v16 = v13;
    if (([*(a1 + 32) containsObject:v13] & 1) == 0)
    {
      v17 = [v10 objectForKey:@"DSPersonID"];
      v18 = objc_opt_class();
      v19 = sub_944C(v17, v18, @"DSPersonID");
      v20 = [v10 objectForKey:@"AltDSID"];
      v21 = objc_opt_class();
      v22 = sub_944C(v20, v21, @"AltDSID");
      v23 = objc_alloc_init(ATMutableAccountInfo);
      [v23 setDSID:v19];
      [v23 setAppleID:v16];
      [v23 setAltDSID:v22];
      [*(a1 + 40) addObject:v23];
      [*(a1 + 32) addObject:v16];
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_99E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_99FC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) containsObject:{objc_msgSend(*(a1 + 40), "identifier")}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_9B54(id a1, LSBundleProxy *a2, BOOL *a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_msgSend(-[LSBundleProxy bundleContainerURL](a2 "bundleContainerURL")];
  v6 = [NSMutableDictionary dictionaryWithContentsOfFile:v5];
  if (v6)
  {
    v7 = v6;
    v8 = [(NSMutableDictionary *)v6 objectForKey:@"DeviceBasedVPP"];
    v9 = [(LSBundleProxy *)a2 hasMIDBasedSINF];
    v10 = (v8 != 0) | v9;
    if ((v8 != 0) | v9 & 1)
    {
      v11 = v9;
      v12 = (v9 & 1) != 0 ? &__kCFBooleanTrue : &__kCFBooleanFalse;
      [(NSMutableDictionary *)v7 setObject:v12 forKey:@"DeviceBasedVPP"];
      v13 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543618;
        v18 = [(LSBundleProxy *)a2 bundleIdentifier];
        v19 = 1024;
        v20 = v11 & 1;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Updated DeviceBasedVPP state for : %{public}@ to %d", &v17, 0x12u);
      }
    }

    v14 = [(NSMutableDictionary *)v7 objectForKey:@"is-auto-download"];
    if (v14 && [v14 BOOLValue])
    {
      [(NSMutableDictionary *)v7 removeObjectForKey:@"is-auto-download"];
      v15 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(LSBundleProxy *)a2 bundleIdentifier];
        v17 = 138543362;
        v18 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "clearing is-auto-download value for %{public}@", &v17, 0xCu);
      }

      goto LABEL_13;
    }

    if (v10)
    {
LABEL_13:
      [(NSMutableDictionary *)v7 writeToFile:v5 atomically:1];
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_A954(uint64_t a1)
{
  if (([*(*(a1 + 32) + 88) containsObject:*(a1 + 40)] & 1) == 0)
  {
    dispatch_group_enter(*(*(a1 + 32) + 24));
    ++*(*(a1 + 32) + 128);
    [*(*(a1 + 32) + 88) addObject:*(a1 + 40)];
    v2 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 128);
      v5 = 138543618;
      v6 = v3;
      v7 = 2048;
      v8 = v4;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "DataMigrator will wait for IC to install placeholder for %{public}@, _restoringPlaceholderCount %lld", &v5, 0x16u);
    }
  }
}

void sub_AAB0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 88) containsObject:*(a1 + 40)])
  {
    dispatch_group_leave(*(*(a1 + 32) + 24));
    --*(*(a1 + 32) + 128);
    [*(*(a1 + 32) + 88) removeObject:*(a1 + 40)];
    v2 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 128);
      v5 = 138543618;
      v6 = v3;
      v7 = 2048;
      v8 = v4;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "DataMigrator cancelled coordinator for restoring app bundle %{public}@ _restoringPlaceholderCount %lld", &v5, 0x16u);
    }
  }
}

void sub_AC0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 96) & 1) == 0)
  {
    if ([*(v1 + 88) containsObject:*(a1 + 40)])
    {
      dispatch_group_leave(*(*(a1 + 32) + 24));
      --*(*(a1 + 32) + 128);
      [*(*(a1 + 32) + 88) removeObject:*(a1 + 40)];
      v3 = _ATLogCategorySyncBundle();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v4 = *(a1 + 40);
      v5 = *(*(a1 + 32) + 128);
      v12 = 138543618;
      v13 = v4;
      v14 = 2048;
      v15 = v5;
      v6 = "IC finished installing placeholder for %{public}@, _restoringPlaceholderCount %lld";
      v7 = v3;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 22;
    }

    else
    {
      v10 = _ATLogCategorySyncBundle();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v11 = *(a1 + 40);
      v12 = 138543362;
      v13 = v11;
      v6 = "Ignoring notification from IC about installing placeholder for %{public}@";
      v7 = v10;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 12;
    }

    _os_log_impl(&dword_0, v7, v8, v6, &v12, v9);
  }
}

void sub_B6A4(uint64_t a1)
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Finished waiting for placeholder installs", v3, 2u);
  }

  *(*(a1 + 32) + 96) = 1;
}

uint64_t sub_BB68(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [objc_msgSend(a2 "appState")];
    if (result)
    {
      v5 = *(*(a1 + 32) + 16);

      return v5();
    }
  }

  return result;
}

void sub_BD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_BDA0(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [objc_msgSend(a2 "appState")];
    if (result)
    {
      v5 = *(*(*(a1 + 32) + 8) + 40);
      v6 = [a2 bundleIdentifier];

      return [v5 addObject:v6];
    }
  }

  return result;
}

void sub_BEA4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_BEC4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

BOOL sub_BEE4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_C0DC(_BYTE *a1)
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_BEC4(&dword_0, v3, v4, "can't create work area", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void sub_C134(_BYTE *a1)
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_BEC4(&dword_0, v3, v4, "Nothing to do", v5, v6, v7, v8, 0);
  }

  *a1 = 1;
}

void sub_C190(_BYTE *a1)
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_BEC4(&dword_0, v3, v4, "Can't move staging area", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void sub_C1E8(const void *a1)
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_BEA4(&dword_0, v3, v4, "couldn't create bundle from URL", v5, v6, v7, v8, 0);
  }

  CFRelease(a1);
}

void sub_C244(_BYTE *a1)
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_BEA4(&dword_0, v3, v4, "couldn't create URL", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

void sub_C29C(_BYTE *a1)
{
  v2 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_BEA4(&dword_0, v3, v4, "missing bundlePath", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}