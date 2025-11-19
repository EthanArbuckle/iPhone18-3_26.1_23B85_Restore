id sub_100002118(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = sub_100002590();
  v5 = [v4 objectForKey:v2];

  if (v5)
  {
    v6 = [v5 objectForKey:@"BAEssentialMaxInstallSize"];
    [v3 setEssentialMaxInstallSize:v6];

    v7 = [v5 objectForKey:@"BAMaxInstallSize"];
    [v3 setMaxInstallSize:v7];

    v8 = [v5 objectForKey:@"BAEssentialDownloadAllowance"];
    [v3 setEssentialDownloadAllowance:v8];

    v9 = [v5 objectForKey:@"BADownloadAllowance"];
    [v3 setDownloadAllowance:v9];

    v10 = [v5 objectForKey:@"BAManifestURL"];
    [v3 setManifestURL:v10];

    v11 = [v5 objectForKey:@"BADownloadDomainAllowList"];
    [v3 setDomainAllowlist:v11];
  }

  return v3;
}

BOOL sub_1000022BC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = sub_100002590();
  v7 = v6;
  if (v4)
  {
    v8 = +[NSMutableDictionary dictionary];
    v9 = [v4 manifestURL];

    if (v9)
    {
      v10 = [v4 manifestURL];
      [v8 setValue:v10 forKey:@"BAManifestURL"];
    }

    v11 = [v4 domainAllowlist];

    if (v11)
    {
      v12 = [v4 domainAllowlist];
      [v8 setValue:v12 forKey:@"BADownloadDomainAllowList"];
    }

    v13 = [v4 essentialMaxInstallSize];

    if (v13)
    {
      v14 = [v4 essentialMaxInstallSize];
      [v8 setValue:v14 forKey:@"BAEssentialMaxInstallSize"];
    }

    v15 = [v4 maxInstallSize];

    if (v15)
    {
      v16 = [v4 maxInstallSize];
      [v8 setValue:v16 forKey:@"BAMaxInstallSize"];
    }

    v17 = [v4 essentialDownloadAllowance];

    if (v17)
    {
      v18 = [v4 essentialDownloadAllowance];
      [v8 setValue:v18 forKey:@"BAEssentialDownloadAllowance"];
    }

    v19 = [v4 downloadAllowance];

    if (v19)
    {
      v20 = [v4 downloadAllowance];
      [v8 setValue:v20 forKey:@"BADownloadAllowance"];
    }

    [v7 setValue:v8 forKey:v5];
  }

  else
  {
    [v6 removeObjectForKey:v5];
  }

  CFPreferencesSetAppValue(@"InternalAppOverrides", v7, @"com.apple.backgroundassets");
  v21 = CFPreferencesAppSynchronize(@"com.apple.backgroundassets") != 0;

  return v21;
}

id sub_100002590()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"InternalAppOverrides", @"com.apple.backgroundassets");
  v1 = v0;
  if (v0)
  {
    v2 = [v0 mutableCopy];
  }

  else
  {
    v2 = +[NSMutableDictionary dictionary];
  }

  v3 = v2;

  return v3;
}

void sub_1000026B8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1000032E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_100003334(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleChallenge:v6 authenticationHandler:v5];
}

void sub_1000033AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleChallenge:v6 authenticationHandler:v5];
}

void sub_100003424(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 downloadDidBegin:*(a1 + 32)];
}

id sub_100003478(uint64_t a1)
{
  v2 = sub_100010694();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = [*(a1 + 32) applicationIdentifier];
    *buf = 138543618;
    v50 = v3;
    v51 = 2114;
    v52 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "A streaming extractor was requested for the download with the identifier “%{public}@” for the application with the identifier “%{public}@”.", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v7 = sub_10004C28C(v6);
  v8 = sub_100010694();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = [*v5 identifier];
      v11 = [*v5 applicationIdentifier];
      *buf = 138543618;
      v50 = v10;
      v51 = 2114;
      v52 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating a new streaming extractor for the download with the identifier “%{public}@” for the application with the identifier “%{public}@” because the download is for a managed asset pack…", buf, 0x16u);
    }

    v12 = [*v5 applicationIdentifier];
    v46 = 0;
    v13 = [LSBundleRecord bundleRecordWithApplicationIdentifier:v12 error:&v46];
    v8 = v46;

    if (!v13)
    {
      v14 = sub_100010694();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000479A0(v5, v8, v14);
      }

      v36 = 0;
      goto LABEL_25;
    }

    v14 = [v13 bundleIdentifier];
    v15 = [*v5 applicationInfo];
    if (!v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = sub_100010694();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100047938();
        }

        v36 = 0;
        goto LABEL_24;
      }

      v16 = [BAApplicationInfo alloc];
      v17 = [*v5 applicationIdentifier];
      v15 = [(BAApplicationInfo *)v16 initWithIdentifier:v17];

      v18 = [NSBundle alloc];
      v19 = [v13 URL];
      v20 = [v18 _initUniqueWithURL:v19];

      v21 = [BAApplicationConfigurationOverrides overridesForAppBundleIdentifier:v14];
      v22 = [v20 infoDictionary];
      [v15 updateApplicationWithInfoDictionary:v22 applicationRecord:v13 overrides:v21];
    }

    v55[1] = @"TotalBytesExpectedCount";
    v56[0] = @"Managed Background Assets Processing Pipeline";
    v55[0] = STRemoteExtractorOptionsPluginBundleName;
    v23 = [NSNumber numberWithUnsignedInteger:sub_10004C1FC(*v5)];
    v56[1] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
    v25 = [NSMutableDictionary dictionaryWithDictionary:v24];

    if ([v15 usesAppleHosting])
    {
      v26 = +[BAManagedBackgroundAssetsInterface sharedInterface];
      v27 = [*v5 identifier];
      v45 = v8;
      v28 = [v26 versionIdentifiersOfAssetPackWithIdentifier:v27 forApplicationWithBundleIdentifier:v14 error:&v45];
      v29 = v45;

      if (!v28)
      {
        v38 = sub_100010694();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = [*v5 identifier];
          v40 = [v13 bundleIdentifier];
          *buf = 138543874;
          v50 = v39;
          v51 = 2114;
          v52 = v40;
          v53 = 2114;
          v54 = v29;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "The version identifiers of the asset pack with the identifier “%{public}@” for the application with the bundle identifier “%{public}@” couldn’t be retrieved: %{public}@", buf, 0x20u);
        }

        v36 = 0;
        goto LABEL_23;
      }

      v30 = [v28 versionIdentifiers];
      if (v30)
      {
        v47[0] = @"AssetPackID";
        v43 = [*v5 identifier];
        v48[0] = v43;
        v47[1] = @"VersionID";
        v42 = [v30 versionIdentifier];
        v41 = [v42 UUIDString];
        v48[1] = v41;
        v47[2] = @"InternalVersionID";
        [v30 internalVersionIdentifier];
        v31 = v44 = v26;
        v48[2] = v31;
        v47[3] = @"AppBundleID";
        v32 = [v13 bundleIdentifier];
        v48[3] = v32;
        v33 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
        [v25 setObject:v33 forKey:@"LicenseInfo"];

        v26 = v44;
      }
    }

    else
    {
      v29 = v8;
    }

    v36 = [[STRemoteExtractor alloc] initWithOptions:v25];
    [v36 setPrivileged:1];
LABEL_23:

    v8 = v29;
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  if (v9)
  {
    v34 = [*v5 identifier];
    v35 = [*v5 applicationIdentifier];
    *buf = 138543618;
    v50 = v34;
    v51 = 2114;
    v52 = v35;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "The download with the identifier “%{public}@” for the application with the identifier “%{public}@” isn’t for a managed asset pack, so no streaming extractor will be created.", buf, 0x16u);
  }

  v36 = 0;
LABEL_26:

  return v36;
}

void sub_100003B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleProgressWithBytesReceived:a2 totalBytesRecieved:a3 totalDownloadSize:a4 resuming:a5];
}

void sub_100003B78(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (v11)
  {
    os_unfair_lock_lock([*(a1 + 32) downloadLock]);
    if (!sub_10004C1FC(*(a1 + 32)) && ((*(a1 + 40) & 1) != 0 || [*(a1 + 32) necessity] != 1) || (v17 = objc_msgSend(*(a1 + 32), "amountDownloaded"), v17 == sub_10004C1FC(*(a1 + 32))))
    {
      os_unfair_lock_unlock([*(a1 + 32) downloadLock]);
      [*(a1 + 32) _handleDownloadCompletionWithFileLocation:v11 response:v13];
    }

    else
    {
      [*(a1 + 32) setStopRequest:0];
      os_unfair_lock_unlock([*(a1 + 32) downloadLock]);
      v18 = +[NSFileManager defaultManager];
      [v18 removeItemAtURL:v11 error:0];

      v19 = sub_100027CE0(@"BAURLDownloadErrorDomain", 101);
      [*(a1 + 32) _handleDownloadFailureWithError:v19 resumeData:0 response:0];
    }

LABEL_15:

    return;
  }

  if (!v12)
  {
    v20 = [v15 domain];
    v21 = [v20 isEqualToString:@"BAURLSessionErrorDomain"];

    if (v21)
    {
      if ([v16 code] == 100)
      {
        v29[0] = @"HTTPResponseStatusCode";
        v28 = [v16 userInfo];
        v22 = [v28 objectForKey:@"ResponseStatusCode"];
        v29[1] = @"HTTPResponseHeaders";
        v30[0] = v22;
        v23 = [v16 userInfo];
        v24 = [v23 objectForKey:@"ResponseHTTPHeaders"];
        v30[1] = v24;
        v25 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];

        v26 = sub_100027CE8(@"BAURLDownloadErrorDomain", 100, v25);

        v16 = v26;
      }

      else if ([v16 code] == 108)
      {
        [*(a1 + 32) setStopRequest:6];
      }
    }

    [*(a1 + 32) _handleDownloadFailureWithError:v16 resumeData:v14 response:v13];
    goto LABEL_15;
  }

  v27 = sub_100010694();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_100047A50(a1, v12, v27);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100047ADC();
  }

  qword_100089A98 = "BUG IN BackgroundAssets: BAURLDownload returned an NSData, which is highly unexpected.";
  qword_100089AC8 = 6;
  __break(0xB001u);
}

void sub_1000042E0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 download:*(a1 + 32) finishedWithFileURL:*(a1 + 40)];
  }

  os_unfair_lock_lock([*(a1 + 32) downloadLock]);
  [*(a1 + 32) _removeActivityAndPowerAssertion];
  v5 = [*(a1 + 32) downloadLock];

  os_unfair_lock_unlock(v5);
}

void sub_1000048F8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 downloadDidPause:*(a1 + 32)];
}

void sub_100004A64(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 downloadError];
  [v2 download:v3 failedWithError:v4];

  os_unfair_lock_lock([*(a1 + 32) downloadLock]);
  [*(a1 + 32) _removeActivityAndPowerAssertion];
  v5 = [*(a1 + 32) downloadLock];

  os_unfair_lock_unlock(v5);
}

void sub_100005010(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_100006980(uint64_t a1)
{
  v2 = sub_100010584();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100047C5C(a1);
  }

  return [*(a1 + 40) invalidate];
}

void sub_1000069D4(uint64_t a1)
{
  v2 = sub_100010584();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Extension invalidated for identifier: %{public}@", &v5, 0xCu);
  }

  if (*(a1 + 40))
  {
    v4 = +[BAAgentCore sharedCore];
    [v4 extensionDisconnectedWithIdentifier:*(a1 + 32) connectionProxy:*(a1 + 40)];
  }
}

void sub_100006AA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100047CD4();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100006D1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100047DF8();
  }

  v5 = *(a1 + 40);
  v6 = +[NSSet set];
  (*(v5 + 16))(v5, 0, v6);

  [*(a1 + 32) _checkForExit];
}

id sub_100006DBC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _checkForExit];
}

void sub_100006F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006F98(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100047EA8();
  }

  [*(a1 + 32) _checkForExit];
}

id sub_100007010(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _checkForExit];
}

void sub_1000070EC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_100010584();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100047F58();
  }
}

void sub_1000072B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100048008();
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _checkForExit];
}

id sub_100007330(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _checkForExit];
}

void sub_1000074D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000480B8();
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _checkForExit];
}

id sub_100007554(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _checkForExit];
}

id sub_100007884(uint64_t a1)
{
  [*(a1 + 32) setSentWillTerminateMessage:0];
  v2 = *(a1 + 32);
  v3 = [v2 extensionActiveCalls] + 1;

  return [v2 setExtensionActiveCalls:v3];
}

id sub_10000795C(uint64_t a1)
{
  if ([*(a1 + 32) extensionActiveCalls])
  {
    [*(a1 + 32) setExtensionActiveCalls:{objc_msgSend(*(a1 + 32), "extensionActiveCalls") - 1}];
  }

  result = [*(a1 + 32) extensionActiveCalls];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _startExitTimer];
  }

  return result;
}

void sub_100007A8C(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionActiveCalls];
  v3 = *(a1 + 32);
  if (!v2)
  {
    if ([v3 sentWillTerminateMessage])
    {
      return;
    }

    goto LABEL_7;
  }

  v8 = [v3 applicationInfo];
  [v8 extensionRuntime];
  if (v4 >= 600.0)
  {
    v7 = [*(a1 + 32) sentWillTerminateMessage];

    if (v7)
    {
      return;
    }

LABEL_7:
    [*(a1 + 32) setSentWillTerminateMessage:1];
    [*(a1 + 32) extensionWillTerminate];
    v5 = dispatch_time(0, 5000000000);
    v6 = [*(a1 + 32) shutdownQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007BDC;
    block[3] = &unk_100079260;
    block[4] = *(a1 + 32);
    dispatch_after(v5, v6, block);

    return;
  }
}

void sub_100007BDC(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionActiveCalls];
  v3 = *(a1 + 32);
  if (v2)
  {
    v7 = [v3 applicationInfo];
    [v7 extensionRuntime];
    if (v4 < 600.0)
    {

      return;
    }

    v5 = [*(a1 + 32) sentTerminatonMessage];

    if (v5)
    {
      return;
    }
  }

  else if ([v3 sentTerminatonMessage])
  {
    return;
  }

  [*(a1 + 32) setSentTerminatonMessage:1];
  v6 = *(a1 + 32);

  [v6 invalidate];
}

void sub_1000080DC(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) extensionWakeAssertions])
  {
    v2 = *v1;
    v3 = [v2 extensionWakeAssertions] - 1;

    [v2 setExtensionWakeAssertions:v3];
  }

  else
  {
    v4 = sub_100010584();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100048168(v1);
    }
  }
}

id sub_100008214(uint64_t a1)
{
  [*(a1 + 32) setSentWillTerminateMessage:0];
  [*(a1 + 32) setExtensionActiveCalls:{objc_msgSend(*(a1 + 32), "extensionActiveCalls") + 1}];
  v2 = *(a1 + 32);
  v3 = [v2 extensionWakeAssertions] + 1;

  return [v2 setExtensionWakeAssertions:v3];
}

void sub_100008814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100008838(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained terminationAssertion];
  [v3 removeObserver:*(a1 + 32)];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[NSRunLoop mainRunLoop];
  v2 = +[NSPort port];
  [v1 addPort:v2 forMode:NSRunLoopCommonModes];

  +[BAAgentCore sharedCore];
  objc_claimAutoreleasedReturnValue();
  while (1)
  {
    v3 = objc_autoreleasePoolPush();
    [v1 run];
    objc_autoreleasePoolPop(v3);
  }
}

void sub_100008F0C(id a1)
{
  v1 = sub_1000163FC();
  v2 = qword_100089BE0;
  qword_100089BE0 = v1;

  v3 = qword_100089BE0;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v4 = [NSArray arrayWithObjects:&v7 count:7];
  v5 = [v3 setByAddingObjectsFromArray:{v4, v7, v8, v9, v10, v11, v12}];
  v6 = qword_100089BE0;
  qword_100089BE0 = v5;
}

void sub_100009C6C(id a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v1 = [v2 deviceIdentifierForVendor];
  [v1 getUUIDBytes:&unk_100089BF0];
}

const __CFString *sub_10000A16C(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000794C0 + a1);
  }
}

void sub_10000BCD8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100010584();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100048764(v2, v3);
  }
}

void sub_10000BDCC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_10000C75C()
{
  result = *(v0 + 3600);
  v3 = *v1;
  return result;
}

void sub_10000CBC0(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = [*(a1 + 32) awaitingConnectivityTimer];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = sub_100010694();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v8 = 138543618;
      v9 = v5;
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BAURLSession: Task %{public}@ timed out waiting for connectivity after %.1f seconds.", &v8, 0x16u);
    }

    v7 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:108 userInfo:0];
    [*(a1 + 32) setMostRecentError:v7];

    [*(a1 + 48) cancel];
  }

  dispatch_source_cancel(*(a1 + 40));
  [*(a1 + 32) setAwaitingConnectivityTimer:0];
  os_unfair_lock_unlock((*(a1 + 32) + 16));
}

void sub_10000D140(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  (*(*(a1[4] + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  v8 = a1[4];
  v9 = *(v8 + 32);
  *(v8 + 32) = 0;
}

void sub_10000E0F4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  (*(*(a1[4] + 56) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10000E240(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  (*(*(a1[4] + 56) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10000E320(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = a1[6];
  (*(*(a1[4] + 56) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10000E6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000E6C0(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    v7 = [(os_unfair_lock_s *)WeakRetained awaitingConnectivityTimer];

    if (!v7)
    {
      v8 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
      dispatch_source_set_timer(v5, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      [(os_unfair_lock_s *)WeakRetained setAwaitingConnectivityTimer:v5];
      dispatch_resume(v5);

      v5 = 0;
    }

    os_unfair_lock_unlock(WeakRetained + 4);
  }

  if (v5)
  {
    dispatch_source_set_event_handler(v5, 0);
    dispatch_resume(v5);
    dispatch_source_cancel(v5);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000E938(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = (*(*(a1[4] + 48) + 16))();
  (*(v5 + 16))(v5, v6);

  objc_autoreleasePoolPop(v2);
}

void sub_10000F05C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 baURLSessionDelegate];
  [v4 cancelWithResumeData:v3];
}

void sub_10000F610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F630(uint64_t a1)
{
  v11 = NSURLErrorFailingURLErrorKey;
  v2 = [*(a1 + 32) URL];
  v12 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v4 = 107;
  }

  else
  {
    v4 = 106;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F768;
  v7[3] = &unk_100079650;
  v5 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10000F768(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = [NSError errorWithDomain:@"BAURLSessionErrorDomain" code:a1[6] userInfo:a1[4]];
  (*(v3 + 16))(v3, 0, 0, 0, 0, v4);

  objc_autoreleasePoolPop(v2);
}

id sub_1000104FC()
{
  if (qword_100089C10 != -1)
  {
    sub_100048F2C();
  }

  v1 = qword_100089C08;

  return v1;
}

void sub_100010540(id a1)
{
  qword_100089C08 = os_log_create("com.apple.backgroundassets", "system");

  _objc_release_x1();
}

id sub_100010584()
{
  if (qword_100089C20 != -1)
  {
    sub_100048F40();
  }

  v1 = qword_100089C18;

  return v1;
}

void sub_1000105C8(id a1)
{
  qword_100089C18 = os_log_create("com.apple.backgroundassets", "client");

  _objc_release_x1();
}

id sub_10001060C()
{
  if (qword_100089C30 != -1)
  {
    sub_100048F54();
  }

  v1 = qword_100089C28;

  return v1;
}

void sub_100010650(id a1)
{
  qword_100089C28 = os_log_create("com.apple.backgroundassets", "client_connection");

  _objc_release_x1();
}

id sub_100010694()
{
  if (qword_100089C40 != -1)
  {
    sub_100048F68();
  }

  v1 = qword_100089C38;

  return v1;
}

void sub_1000106D8(id a1)
{
  qword_100089C38 = os_log_create("com.apple.backgroundassets", "download");

  _objc_release_x1();
}

void sub_100010E6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) token];
  [v2 drainSpecificWithToken:v3];

  v4 = *(a1 + 48);

  dispatch_source_cancel(v4);
}

void sub_1000111CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000111E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000111FC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 token];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10001146C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011484(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 token];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10001198C(id a1)
{
  v1 = +[NSMutableSet set];
  v2 = qword_100089C48;
  qword_100089C48 = v1;

  v3 = qword_100089C48;
  v4 = sub_1000163FC();
  [v3 unionSet:v4];

  v5 = qword_100089C48;
  v6 = +[BADownload classesForSerialization];
  [v5 unionSet:v6];

  v7 = qword_100089C48;
  v9 = objc_opt_class();
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [v7 addObjectsFromArray:v8];
}

void sub_1000143A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100027BE4(101);
  (*(v1 + 16))(v1, v2);
}

void sub_100014400(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100027BE4(109);
  (*(v1 + 16))(v1, v2);
}

void sub_100014460(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100027BE4(-110);
  (*(v1 + 16))(v1, v2);
}

void sub_100014D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100014D3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100014D54(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [v13 state];
  v8 = [v13 necessity];
  v9 = [v13 necessity];
  if (*(a1 + 40) == 1 && v8 == 1)
  {
    goto LABEL_11;
  }

  if (*(a1 + 41) != 1 || v9 != 0)
  {
    goto LABEL_15;
  }

  if (v8 == 1)
  {
LABEL_11:
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 42);
  }

  if (v7 <= 1 && (v12 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }

LABEL_15:
}

id sub_100016048()
{
  v0 = [@"/var/mobile/tmp" stringByAppendingPathComponent:@"com.apple.backgroundassets"];
  memset(&v6, 0, sizeof(v6));
  if (stat([v0 fileSystemRepresentation], &v6))
  {
    if (*__error() != 2)
    {
      v1 = __error();
      strerror(*v1);
      v2 = sub_1000104FC();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100049398();
      }

LABEL_12:

      goto LABEL_14;
    }
  }

  else
  {
    if ((v6.st_mode & 0xF000) == 0x4000)
    {
      goto LABEL_14;
    }

    v3 = sub_1000104FC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100049408(v0, &v6.st_mode);
    }
  }

  if (mkdir([v0 fileSystemRepresentation], 0x1FDu))
  {
    v4 = __error();
    strerror(*v4);
    v2 = sub_1000104FC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10004948C();
    }

    goto LABEL_12;
  }

  chmod([v0 fileSystemRepresentation], 0x1FDu);
LABEL_14:

  return v0;
}

uint64_t sub_1000161D0()
{
  objc_opt_self();
  if (qword_100089C60 != -1)
  {
    sub_1000494FC();
  }

  return byte_100089C58;
}

void sub_100016208(id a1)
{
  v2 = 8;
  v3 = 0;
  if (sysctlbyname("security.mac.amfi.developer_mode_status", &v3, &v2, 0, 0))
  {
    v1 = sub_1000104FC();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100049510(v1);
    }
  }

  else
  {
    byte_100089C58 = v3 == 1;
  }
}

BOOL sub_100016294()
{
  objc_opt_self();
  if (!CFPreferencesAppSynchronize(@"com.apple.appstored"))
  {
    v0 = sub_1000104FC();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_1000495A0(v0);
    }
  }

  keyExistsAndHasValidFormat = 0;
  return CFPreferencesGetAppBooleanValue(@"BackgroundAssetDownloadsEnabled", @"com.apple.appstored", &keyExistsAndHasValidFormat) || keyExistsAndHasValidFormat == 0;
}

NSSet *sub_100016348()
{
  objc_opt_self();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [NSSet setWithObjects:v0, v1, v2, v3, v4, objc_opt_class(), 0];
}

id sub_1000163FC()
{
  objc_opt_self();
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v0 = [NSArray arrayWithObjects:v3 count:10];
  v1 = [NSSet setWithArray:v0];

  return v1;
}

void sub_100016A24(id a1)
{
  qword_100089C68 = objc_alloc_init(BAAgentCore);

  _objc_release_x1();
}

id sub_100017024(uint64_t a1)
{
  [*(a1 + 32) _deserializeState];
  v2 = *(a1 + 32);

  return [v2 _pokeScheduler];
}

void sub_100017060()
{
  v0 = +[BAAgentCore sharedCore];
  [v0 _backgroundActivityStateDidChange];
}

void sub_1000170A8(uint64_t a1, uint64_t a2)
{
  if (sub_1000161D0())
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.backgroundassets.agentcore.lockdown.client", v6);
    [*(a1 + 32) _asyncAwaitLockdownClientMessage:a2 waitQueue:v4];
  }

  else
  {
    v5 = sub_1000104FC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Rejecting lockdown connection as developer mode is not enabled.", buf, 2u);
    }

    lockdown_disconnect();
  }
}

void sub_1000173A8(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100017464;
  v6[3] = &unk_100079918;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v5 = [v4 workQueue];
  [v2 callBlockWhenConnectionReady:v6 onQueue:v5];
}

void sub_100017464(id *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v12 = sub_10001060C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [a1[4] processIdentifier];
      v16 = 67240192;
      v17 = v13;
      v14 = "Client connection rejected (could not validate on connection setup) from pid:%{public}d";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, &v16, 8u);
    }

LABEL_13:

    [a1[5] invalidate];
    return;
  }

  v3 = a1[5];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = a1[6];
  v5 = a1[4];
  v6 = [v3 applicationBundleIdentifier];
  LODWORD(v4) = [v4 _checkConnection:v5 hasAllowedTeamIDForIdentifier:v6];

  if (!v4 || (v7 = a1[6], [a1[5] applicationBundleIdentifier], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "_checkIdentifierHasExtension:", v8), v8, !v7))
  {
LABEL_10:
    v12 = sub_10001060C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [a1[4] processIdentifier];
      v16 = 67240192;
      v17 = v15;
      v14 = "Client connection rejected (no extension, signing error or team-id mismatch) from pid:%{public}d";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v9 = [a1[6] connections];
  [v9 addObject:a1[5]];

  [a1[5] resume];
  v10 = sub_10001060C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [a1[4] processIdentifier];
    v16 = 67240192;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client connection accepted from pid:%{public}d", &v16, 8u);
  }
}

id sub_10001786C(id *a1)
{
  if (a1[4])
  {
    v2 = [a1[5] connections];
    [v2 addObject:a1[4]];

    v3 = sub_10001060C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [a1[6] processIdentifier];
      v7[0] = 67240192;
      v7[1] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System connection accepted from pid:%{public}d", v7, 8u);
    }

    return [a1[4] resume];
  }

  else
  {
    v6 = sub_10001060C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100049810(a1);
    }

    return [a1[4] invalidate];
  }
}

id sub_100017A34(uint64_t a1)
{
  v2 = [*(a1 + 32) connections];
  [v2 removeObject:*(a1 + 40)];

  v3 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 40);
    v5 = [v4 applicationBundleIdentifier];
    if (v5)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [*(a1 + 32) connections];
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
LABEL_5:
        v10 = 0;
        while (1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 applicationBundleIdentifier];
            v13 = [v12 isEqual:v5];

            if (v13)
            {
              break;
            }
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
            if (v8)
            {
              goto LABEL_5;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:

        v6 = [*(a1 + 32) connectionReplyQueue];
        [v6 removeObjectForKey:v5];
      }
    }
  }

  return [*(a1 + 40) connectionInvalidated];
}

uint64_t sub_100017E34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100017E4C(uint64_t a1)
{
  v2 = [*(a1 + 32) _downloaderExtensionForApplicationIdentifier:*(a1 + 40) cacheOnly:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001894C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) appBundleIdentifier];
  v6 = [v2 applicationInfoForIdentifier:v3];

  [v6 applicationPrepareWithDescriptor:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) appBundleIdentifier];
  [v4 _deleteDownloadQueueForIdentifier:v5];

  [*(a1 + 32) _serializeApplicationState];
  [*(a1 + 32) _serializeDownloadQueues];
}

void sub_100018ADC(uint64_t a1)
{
  v2 = sub_100010584();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) path];
    v9 = 138543874;
    v10 = v4;
    v11 = 2114;
    v12 = v3;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Placeholder ready for identifier: %{public}@ (UserInitiated: %{public}@, URL: %{public}@)", &v9, 0x20u);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [*(a1 + 48) applicationInfoForIdentifier:*(a1 + 32)];
    v7 = sub_100010584();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "GreenTeaPlaceholder Enabled: Potentially presenting network consent during placeholder install for identifier: %{public}@", &v9, 0xCu);
    }

    [*(a1 + 48) _requestNetworkConsentWithApplication:v6 userInitiated:*(a1 + 56)];
  }
}

void sub_100018F5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = sub_100010584();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = 138543874;
      v16 = v14;
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v7;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Requesting consent for network access failed for identifier: %{public}@ (Policies: %{public}@, Error: %{public}@)", &v15, 0x20u);
    }
  }

  else
  {
    v8 = [(__CFString *)v5 wifi];
    v9 = [(__CFString *)v5 cellular];
    v10 = sub_100010584();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      v12 = *(a1 + 32);
      if (v8 == 1)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      if (v9 == 1)
      {
        v11 = @"YES";
      }

      v18 = v13;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Network consent received for identifier: %{public}@. (Wi-Fi: %{public}@, Cellular: %{public}@)", &v15, 0x20u);
    }
  }

  [*(a1 + 40) setAwaitingNetworkConsent:0];
}

void sub_10001A24C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = sub_100010584();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10004A37C();
    }
  }
}

void sub_10001A2B4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = sub_100010584();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10004A404();
    }
  }
}

void sub_10001A31C(uint64_t a1)
{
  v2 = [*(a1 + 32) _downloadQueueForIdentifier:*(a1 + 40) create:1 error:0];
  [v2 thaw];
  [*(a1 + 48) applicationInstalled];
  [*(a1 + 32) _pokeScheduler];
  [*(a1 + 32) _serializeApplicationState];
}

void sub_10001A390(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100010584();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10004A48C();
    }
  }
}

void sub_10001A890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001B364(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v4 = [v2 __schedulingPermittedWithIdentifier:v3 downloadQueue:&v26 appInfo:&v25 error:&v24];
  v5 = v26;
  v6 = v25;
  v7 = v24;
  if (v4)
  {
    if ([v6 initialRestrictionsAreEnforced])
    {
      v8 = *(a1 + 56);
      objc_opt_class();
      LOBYTE(v8) = objc_opt_isKindOfClass();
      os_unfair_lock_lock([*(a1 + 56) downloadLock]);
      [*(a1 + 56) setApplicationInformationForRestrictedDownload:v6];
      if (v8)
      {
        if ([v6 initialBackgroundCellularPolicy])
        {
          [*(a1 + 56) setPermitInitialCellularDownload:1];
        }
      }

      else
      {
        [*(a1 + 56) setIsForegroundDownload:0];
      }

      os_unfair_lock_unlock([*(a1 + 56) downloadLock]);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001B5C8;
    v17[3] = &unk_100079A30;
    v10 = &v18;
    v11 = &v20;
    v12 = *(a1 + 56);
    v13 = *(a1 + 48);
    v20 = *(a1 + 64);
    v14 = *(a1 + 56);
    *&v15 = *(a1 + 40);
    *(&v15 + 1) = *(a1 + 32);
    *&v16 = v13;
    *(&v16 + 1) = v14;
    v18 = v16;
    v19 = v15;
    [v5 scheduleDownload:v12 completionHandler:v17];
  }

  else
  {
    v9 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B5B4;
    block[3] = &unk_100079810;
    v10 = &v23;
    v23 = *(a1 + 64);
    v11 = &v22;
    v22 = v7;
    dispatch_async(v9, block);
  }
}

void sub_10001B5C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B7FC;
    block[3] = &unk_100079810;
    v16 = *(a1 + 64);
    v15 = v3;
    dispatch_async(v4, block);

    v5 = v16;
  }

  else
  {
    v6 = sub_1000104FC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) identifier];
      v8 = *(a1 + 48);
      *buf = 138543618;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Scheduled download identifier: %{public}@ for client: %{public}@", buf, 0x16u);
    }

    v9 = [*(a1 + 56) workQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001B810;
    v13[3] = &unk_100079260;
    v13[4] = *(a1 + 56);
    dispatch_async(v9, v13);

    v10 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001B84C;
    v11[3] = &unk_100079838;
    v12 = *(a1 + 64);
    dispatch_async(v10, v11);
    v5 = v12;
  }
}

id sub_10001B810(uint64_t a1)
{
  [*(a1 + 32) _pokeScheduler];
  v2 = *(a1 + 32);

  return [v2 _serializeDownloadQueues];
}

void sub_10001B960(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v30 = 0;
  v4 = [v2 _downloadQueueForIdentifier:v3 create:1 error:&v30];
  v5 = v30;
  if (v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [v4 allDownloads];
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * v10);
          v12 = [*(a1 + 48) uniqueIdentifier];
          v13 = [v11 uniqueIdentifier];
          v14 = [v12 isEqual:v13];

          if (v14)
          {

            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_10001BD94;
            v20[3] = &unk_100079A80;
            v19 = *(a1 + 48);
            v21 = *(a1 + 56);
            [v4 startForegroundDownload:v19 completionHandler:v20];
            v18 = v21;
            goto LABEL_12;
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    [*(a1 + 48) setApplicationIdentifier:*(a1 + 40)];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001BBFC;
    v22[3] = &unk_100079AD0;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 32);
    v25 = v16;
    v22[4] = v17;
    v23 = v4;
    v24 = *(a1 + 48);
    [v23 scheduleDownload:v15 completionHandler:v22];

    v18 = v25;
LABEL_12:
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10001BBFC(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[7];
    v4 = *(a1[7] + 2);

    v4();
  }

  else
  {
    v5 = [a1[4] workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001BCF4;
    block[3] = &unk_100079AA8;
    v7 = a1[5];
    v8 = a1[6];
    v9 = a1[7];
    dispatch_async(v5, block);
  }
}

void sub_10001BCF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001BD84;
  v3[3] = &unk_100079A80;
  v4 = *(a1 + 48);
  [v1 startForegroundDownload:v2 completionHandler:v3];
}

void sub_10001BE7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 _downloadQueueForIdentifier:v3 create:0 error:&v6];
  v5 = v6;
  if (v4)
  {
    [v4 freeze];
    [*(a1 + 32) _serializeDownloadQueues];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10001BFFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 _downloadQueueForIdentifier:v3 create:0 error:&v6];
  v5 = v6;
  if (v4)
  {
    [v4 thaw];
    [*(a1 + 32) _pokeScheduler];
    [*(a1 + 32) _serializeDownloadQueues];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10001C228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10001C24C(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationIdentifier];
  v3 = *(a1 + 40);
  v25 = 0;
  v4 = [v3 _downloadQueueForIdentifier:v2 create:0 error:&v25];
  v5 = v25;
  v6 = v25;
  v7 = v6;
  if (v4)
  {
    v19 = v6;
    v8 = sub_100010584();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "App (%{public}@) was canceled and removed by the App Store, all in-flight downloads will be canceled silently.", buf, 0xCu);
    }

    [v4 cancelAllDownloadsSilently];
    v20 = v4;
    [v4 thaw];
    v9 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [*(a1 + 40) unhandledDownloadEvents];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v15 download];
          v17 = [v16 applicationIdentifier];
          if ([v17 isEqualToString:v2])
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    v18 = [*(a1 + 40) unhandledDownloadEvents];
    [v18 removeObjectsInArray:v9];

    [*(a1 + 40) _serializeUndeliveredEvents];
    *(*(*(a1 + 56) + 8) + 24) = 1;

    v7 = v19;
    v4 = v20;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void sub_10001C5B0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 _downloadQueueForIdentifier:v3 create:0 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = a1[6];
    v8 = 0;
    [v4 cancelDownload:v6 error:&v8];
    v7 = v8;
    (*(a1[7] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void sub_10001C7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C800(uint64_t a1)
{
  v2 = [*(a1 + 32) _downloadQueueForIdentifier:*(a1 + 40) create:0 error:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001C98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C9A4(uint64_t a1)
{
  v2 = [*(a1 + 32) _downloadQueueForIdentifier:*(a1 + 40) create:0 error:0];
  v6 = v2;
  if (v2)
  {
    v3 = [v2 allDownloads];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001CEBC(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001CF4C;
  v3[3] = &unk_100079BC0;
  v3[4] = *(a1 + 32);
  v1 = [RBSProcessMonitor monitorWithConfiguration:v3];
  v2 = qword_100089C78;
  qword_100089C78 = v1;
}

void sub_10001CF4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:1];
  [v4 setEndowmentNamespaces:&off_10007D458];
  [v3 setStateDescriptor:v4];
  [v3 setEvents:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D02C;
  v5[3] = &unk_100079B98;
  v5[4] = *(a1 + 32);
  [v3 setUpdateHandler:v5];
}

void sub_10001D3AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  v3 = [*(a1 + 48) bundleIdentifier];
  [v2 _updateStateForAppExtensionBundleIdentifier:v4 appBundleIdentifier:v3 state:*(a1 + 56)];
}

void sub_10001D428(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 _updateStateForAppBundleIdentifier:v3 state:*(a1 + 48)];
}

void sub_10001D958(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationInfoForIdentifier:*(a1 + 40)];
  [*(a1 + 32) __handleApplicationLaunchedWithInfo:v2];
}

int64_t sub_10001E15C(id a1, BADownloadQueue *a2, BADownloadQueue *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(BADownloadQueue *)v4 numberOfActiveDownloads];
  if (v6 >= [(BADownloadQueue *)v5 numberOfActiveDownloads])
  {
    v8 = [(BADownloadQueue *)v4 numberOfActiveDownloads];
    if (v8 <= [(BADownloadQueue *)v5 numberOfActiveDownloads])
    {
      v9 = [(BADownloadQueue *)v4 lastDownloadStartDate];
      v10 = [(BADownloadQueue *)v5 lastDownloadStartDate];
      v7 = [v9 compare:v10];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_10001E324(uint64_t a1)
{
  v2 = sub_100010694();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Download did begin: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = sub_100017E34;
  v32 = sub_100017E44;
  v33 = 0;
  v4 = [*(a1 + 40) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E698;
  block[3] = &unk_100079B48;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  p_buf = &buf;
  block[4] = v5;
  v23 = v6;
  dispatch_sync(v4, block);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *(*(&buf + 1) + 40);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 isActive])
        {
          v27 = *(a1 + 32);
          v12 = [NSArray arrayWithObjects:&v27 count:1];
          [v11 syncDownloads:v12];

          v13 = [*(a1 + 32) uniqueIdentifier];
          [v11 downloadIdentifierDidBegin:v13];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v8);
  }

  v14 = sub_100010694();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    *v25 = 138543362;
    v26 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Download did begin finished: %{public}@", v25, 0xCu);
  }

  v16 = [*(a1 + 40) workQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001E6E8;
  v17[3] = &unk_100079260;
  v17[4] = *(a1 + 40);
  dispatch_sync(v16, v17);

  _Block_object_dispose(&buf, 8);
}

uint64_t sub_10001E698(uint64_t a1)
{
  v2 = [*(a1 + 32) _connectionsForApplicationIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001E7EC(uint64_t a1)
{
  v2 = sub_100010694();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Download did pause: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = sub_100017E34;
  v32 = sub_100017E44;
  v33 = 0;
  v4 = [*(a1 + 40) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EB60;
  block[3] = &unk_100079B48;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  p_buf = &buf;
  block[4] = v5;
  v23 = v6;
  dispatch_sync(v4, block);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *(*(&buf + 1) + 40);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 isActive])
        {
          v27 = *(a1 + 32);
          v12 = [NSArray arrayWithObjects:&v27 count:1];
          [v11 syncDownloads:v12];

          v13 = [*(a1 + 32) uniqueIdentifier];
          [v11 downloadIdentifierDidPause:v13];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v8);
  }

  v14 = sub_100010694();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    *v25 = 138543362;
    v26 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Download did pause finished: %{public}@", v25, 0xCu);
  }

  v16 = [*(a1 + 40) workQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001EBB0;
  v17[3] = &unk_100079260;
  v17[4] = *(a1 + 40);
  dispatch_sync(v16, v17);

  _Block_object_dispose(&buf, 8);
}

uint64_t sub_10001EB60(uint64_t a1)
{
  v2 = [*(a1 + 32) _connectionsForApplicationIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001ED10(uint64_t a1)
{
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_100017E34;
  v70 = sub_100017E44;
  v71 = 0;
  v2 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F438;
  block[3] = &unk_100079B48;
  v3 = *(a1 + 40);
  v33 = (a1 + 40);
  v4 = *(a1 + 32);
  v65 = &v66;
  block[4] = v4;
  v64 = v3;
  dispatch_sync(v2, block);

  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 2;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100017E34;
  v57 = sub_100017E44;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100017E34;
  v47 = sub_100017E44;
  v48 = objc_opt_new();
  group = dispatch_group_create();
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = v67[5];
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v77 count:16];
  if (v6)
  {
    v7 = *v40;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        if ([v9 isActive])
        {
          v76 = *(a1 + 48);
          v10 = [NSArray arrayWithObjects:&v76 count:1];
          [v9 syncDownloads:v10];

          dispatch_group_enter(group);
          v11 = [*(a1 + 48) uniqueIdentifier];
          v12 = *(a1 + 56);
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_10001F488;
          v38[3] = &unk_100079C50;
          v38[4] = &v43;
          v38[5] = &v49;
          v38[6] = &v59;
          v38[7] = &v53;
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_10001F534;
          v35[3] = &unk_100079C78;
          v36 = group;
          v37 = *(a1 + 64);
          [v9 downloadIdentifier:v11 didReceiveChallenge:v12 authChallengeHandler:v38 withCompletion:v35];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v39 objects:v77 count:16];
    }

    while (v6);
  }

  v13 = dispatch_time(0, 30000000000);
  v14 = dispatch_group_wait(group, v13);
  [v44[5] lock];
  v15 = v50;
  if (v14 && (v50[3] & 1) == 0)
  {
    v16 = sub_100010584();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10004AD34(v33, a1);
    }

    v15 = v50;
  }

  if (*(v15 + 24) != 1)
  {
    *(v15 + 24) = 1;
    [v44[5] unlock];
    v18 = [*(a1 + 32) _downloaderExtensionForApplicationIdentifier:*(a1 + 40) cacheOnly:0];
    v19 = v18;
    if (v18)
    {
      if ([v18 sendAuthenticationChallenge:*(a1 + 56) download:*(a1 + 48) completionHandler:*(a1 + 72)])
      {
LABEL_35:

        goto LABEL_36;
      }

      v20 = sub_100010584();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10004ADAC(v33, (a1 + 48));
      }

      v21 = *(a1 + 72);
      v22 = 2;
LABEL_32:
      (*(v21 + 16))(v21, v22, 0);
      goto LABEL_35;
    }

    v23 = sub_100010584();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      *buf = 138543618;
      v73 = v24;
      v74 = 2114;
      v75 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Cannot message extension for '%{public}@' to answer auth challenge, performing default handling for download: %{public}@", buf, 0x16u);
    }

    v26 = [*(a1 + 56) protectionSpace];
    v27 = [v26 authenticationMethod];
    if ([v27 isEqualToString:NSURLAuthenticationMethodServerTrust])
    {
      v28 = [*(a1 + 56) previousFailureCount] == 0;

      if (v28)
      {
        v29 = *(a1 + 72);
        v30 = [*(a1 + 56) protectionSpace];
        v31 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v30 serverTrust]);
        (*(v29 + 16))(v29, 0, v31);

        goto LABEL_34;
      }
    }

    else
    {
    }

    v32 = [*(a1 + 56) previousFailureCount];
    v21 = *(a1 + 72);
    if (v32)
    {
      v22 = 1;
      goto LABEL_32;
    }

    v30 = [*(a1 + 56) proposedCredential];
    (*(v21 + 16))(v21, 0, v30);
LABEL_34:

    goto LABEL_35;
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    (*(v17 + 16))(v17, v60[3], v54[5]);
  }

  [v44[5] unlock];
LABEL_36:

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v66, 8);
}

void sub_10001F3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001F438(uint64_t a1)
{
  v2 = [*(a1 + 32) _connectionsForApplicationIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001F488(void *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [*(*(a1[4] + 8) + 40) lock];
  v6 = *(a1[5] + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    *(*(a1[6] + 8) + 24) = a2;
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
  }

  [*(*(a1[4] + 8) + 40) unlock];
}

uint64_t sub_10001F748(uint64_t a1)
{
  v2 = [*(a1 + 32) _connectionsForApplicationIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001F798(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isActive])
        {
          v8 = [*(a1 + 32) uniqueIdentifier];
          [v7 downloadIdentifier:v8 didWriteBytes:*(a1 + 56) totalBytesWritten:*(a1 + 64) totalBytesExpectedToWrite:*(a1 + 72)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

id sub_10001FB8C(uint64_t a1)
{
  v2 = sub_100010584();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Awaiting app install for %{public}@. Deferring failure delivery for %{public}@", &v7, 0x16u);
  }

  v5 = [*(a1 + 48) unhandledDownloadEvents];
  [v5 addObject:*(a1 + 40)];

  [*(a1 + 48) _serializeUndeliveredEvents];
  return [*(a1 + 48) _pokeScheduler];
}

void sub_10001FC6C(uint64_t a1)
{
  v2 = sub_100010694();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10004AE24(a1);
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_100017E34;
  v59 = sub_100017E44;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v3 = [*(a1 + 48) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020248;
  block[3] = &unk_100079B48;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v50 = &v55;
  block[4] = v4;
  v49 = v5;
  dispatch_sync(v3, block);

  group = dispatch_group_create();
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = v56[5];
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v65 count:16];
  if (v7)
  {
    v8 = *v45;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        if ([v10 isActive])
        {
          v11 = [*(a1 + 48) asyncClientNotificationQueue];
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_100020298;
          v39[3] = &unk_100079CF0;
          v39[4] = v10;
          v40 = *(a1 + 32);
          v12 = group;
          v41 = v12;
          v42 = *(a1 + 40);
          v43 = &v51;
          dispatch_group_async(v12, v11, v39);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v44 objects:v65 count:16];
    }

    while (v7);
  }

  v13 = dispatch_time(0, 120000000000);
  dispatch_group_wait(group, v13);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000203D4;
  v34[3] = &unk_100079940;
  v35 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v36 = v14;
  v37 = v15;
  v38 = *(a1 + 64);
  v16 = objc_retainBlock(v34);
  if ((v52[3] & 1) == 0)
  {
    if ([*(a1 + 72) allowsBackgroundActivity])
    {
      v17 = [*(a1 + 48) _downloaderExtensionForApplicationIdentifier:*(a1 + 56) cacheOnly:0];
      if (v17)
      {
        v18 = [*(a1 + 48) asyncClientNotificationQueue];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000204C4;
        v27[3] = &unk_100079D40;
        v17 = v17;
        v28 = v17;
        v29 = *(a1 + 32);
        v19 = *(a1 + 40);
        v20 = *(a1 + 48);
        v30 = v19;
        v31 = v20;
        v33 = v16;
        v32 = *(a1 + 64);
        dispatch_async(v18, v27);
      }
    }

    else
    {
      v21 = sub_100010584();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 56);
        *buf = 136315394;
        v62 = "[BAAgentCore download:failedWithError:]_block_invoke";
        v63 = 2114;
        v64 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s, Will not message extension for %{public}@ because background activity is disabled.", buf, 0x16u);
      }

      v17 = [*(a1 + 48) workQueue];
      dispatch_async(v17, v16);
    }
  }

  v23 = sub_100010694();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_10004AEA0();
  }

  v24 = [*(a1 + 48) workQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100020604;
  v26[3] = &unk_100079260;
  v26[4] = *(a1 + 48);
  dispatch_sync(v24, v26);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
}

void sub_100020200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100020248(uint64_t a1)
{
  v2 = [*(a1 + 32) _connectionsForApplicationIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100020298(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v10 count:1];
  [v2 syncDownloads:v3];

  dispatch_group_enter(*(a1 + 48));
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) uniqueIdentifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000203B8;
  v7[3] = &unk_100079350;
  v6 = *(a1 + 56);
  v9 = *(a1 + 64);
  v8 = *(a1 + 48);
  [v4 downloadIdentifier:v5 didFailWithError:v6 wasHandled:v7];
}

void sub_1000203D4(uint64_t a1)
{
  v2 = [[BAUnhandledDownloadEvent alloc] initWithEventType:2 download:*(a1 + 32) error:*(a1 + 40)];
  v3 = [*(a1 + 48) unhandledDownloadEvents];
  [v3 addObject:v2];

  [*(a1 + 48) _serializeUndeliveredEvents];
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Added undelivered event: %{public}@", &v5, 0xCu);
  }
}

void sub_1000204C4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020594;
  v7[3] = &unk_100079D18;
  v5 = v2;
  v6 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  v11 = *(a1 + 72);
  v10 = *(a1 + 64);
  [v3 backgroundDownload:v5 failedWithError:v4 completionHandler:v7];
}

void sub_100020594(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_1000104FC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10004AEE0(a1);
    }

    v4 = [*(a1 + 40) workQueue];
    dispatch_async(v4, *(a1 + 56));
  }
}

id sub_100020604(uint64_t a1)
{
  [*(a1 + 32) _serializeDownloadQueues];
  v2 = *(a1 + 32);

  return [v2 _pokeScheduler];
}

id sub_100020938(uint64_t a1)
{
  v2 = sub_100010584();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) applicationIdentifier];
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Awaiting app install for %{public}@. Deferring success delivery for %{public}@", &v7, 0x16u);
  }

  v5 = [*(a1 + 48) unhandledDownloadEvents];
  [v5 addObject:*(a1 + 40)];

  [*(a1 + 48) _serializeUndeliveredEvents];
  return [*(a1 + 48) _pokeScheduler];
}

void sub_100020A34(id *a1)
{
  v2 = sub_100010694();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Download did finish: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v75 = 0x3032000000;
  v76 = sub_100017E34;
  v77 = sub_100017E44;
  v78 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v4 = [a1[5] workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021180;
  block[3] = &unk_100079B48;
  v5 = a1[5];
  v6 = a1[6];
  p_buf = &buf;
  block[4] = v5;
  v63 = v6;
  dispatch_sync(v4, block);

  group = dispatch_group_create();
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v7 = *(*(&buf + 1) + 40);
  v8 = [v7 countByEnumeratingWithState:&v58 objects:v73 count:16];
  if (v8)
  {
    v9 = *v59;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        if ([v11 isActive])
        {
          v12 = [a1[5] asyncClientNotificationQueue];
          v52[0] = _NSConcreteStackBlock;
          v52[1] = 3221225472;
          v52[2] = sub_1000211F0;
          v52[3] = &unk_100079D90;
          v52[4] = v11;
          v13 = a1[4];
          v14 = a1[5];
          v53 = v13;
          v54 = v14;
          v55 = a1[7];
          v56 = group;
          v57 = &v65;
          dispatch_group_async(v56, v12, v52);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v58 objects:v73 count:16];
    }

    while (v8);
  }

  v15 = dispatch_time(0, 120000000000);
  dispatch_group_wait(group, v15);
  v16 = atomic_load(v66 + 24);
  if (v16)
  {
    v27 = sub_100010584();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = a1[4];
      *v69 = 138543362;
      v70 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Result was handled by a client of BADownloadManager, removing download. %{public}@", v69, 0xCu);
    }

    v29 = +[NSFileManager defaultManager];
    v31 = sub_10004C614(a1[4], v30);
    [v29 removeItemAtURL:v31 error:0];
  }

  else
  {
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100021498;
    v48[3] = &unk_100079720;
    v17 = a1[4];
    v18 = a1[5];
    v49 = v17;
    v50 = v18;
    v51 = a1[7];
    v19 = objc_retainBlock(v48);
    if ([a1[6] allowsBackgroundActivity])
    {
      v20 = a1[5];
      v21 = [a1[6] applicationIdentifier];
      v22 = [v20 _downloaderExtensionForApplicationIdentifier:v21 cacheOnly:0];

      if (v22)
      {
        v23 = [a1[5] asyncClientNotificationQueue];
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10002158C;
        v42[3] = &unk_100079A58;
        v43 = v22;
        v24 = a1[4];
        v25 = a1[5];
        v44 = v24;
        v45 = v25;
        v47 = v19;
        v46 = a1[7];
        dispatch_async(v23, v42);

        v26 = v43;
      }

      else
      {
        v34 = sub_1000104FC();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_10004AFD0(a1 + 4);
        }

        v26 = +[NSFileManager defaultManager];
        v36 = sub_10004C614(a1[4], v35);
        [v26 removeItemAtURL:v36 error:0];
      }
    }

    else
    {
      v32 = sub_100010584();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [a1[6] applicationIdentifier];
        *v69 = 136315394;
        v70 = "[BAAgentCore download:finishedWithFileURL:]_block_invoke";
        v71 = 2114;
        v72 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s, Will not message extension for %{public}@ because background activity is disabled.", v69, 0x16u);
      }

      v22 = [a1[5] workQueue];
      dispatch_async(v22, v19);
    }

    v29 = v49;
  }

  v37 = sub_100010694();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Download did finish done.", v69, 2u);
  }

  v38 = [a1[5] workQueue];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000219E8;
  v40[3] = &unk_100079300;
  v40[4] = a1[5];
  v41 = a1[7];
  dispatch_sync(v38, v40);

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&buf, 8);
}

void sub_100021128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose((v59 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100021180(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) applicationIdentifier];
  v3 = [v2 _connectionsForApplicationIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000211F0(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = sub_10004C614(*(a1 + 40), a2);
  v5 = [v3 extendClientSandboxForStagedURL:v4 allowWrites:0];

  if (v5)
  {
    v6 = *(a1 + 32);
    v26 = *(a1 + 40);
    v7 = [NSArray arrayWithObjects:&v26 count:1];
    [v6 syncDownloads:v7];

    dispatch_group_enter(*(a1 + 64));
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) uniqueIdentifier];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100021478;
    v22[3] = &unk_100079D68;
    v10 = *(a1 + 64);
    v25 = *(a1 + 72);
    v23 = v10;
    v24 = *(a1 + 56);
    [v8 downloadIdentifierDidFinish:v9 sandboxExtensionToken:v5 wasHandled:v22];

    v11 = v23;
  }

  else
  {
    v12 = sub_1000104FC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v15 = sub_10004C614(v14, v13);
      v16 = [*(a1 + 32) applicationBundleIdentifier];
      v17 = __error();
      v18 = strerror(*v17);
      *buf = 138544130;
      v29 = v14;
      v30 = 2114;
      v31 = v15;
      v32 = 2114;
      v33 = v16;
      v34 = 2082;
      v35 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: No sandbox token issued for finished download: %{public}@ URL: %{public}@ for client: %{public}@. -- %{public}s", buf, 0x2Au);
    }

    v11 = [*(a1 + 40) copy];
    v19 = sub_100027BE4(-107);
    sub_10004C130(v11, -1);
    v20 = *(a1 + 32);
    v27 = v11;
    v21 = [NSArray arrayWithObjects:&v27 count:1];
    [v20 syncDownloads:v21];

    [*(a1 + 48) download:v11 failedWithError:v19];
  }
}

void sub_100021478(uint64_t a1, int a2)
{
  if (a2)
  {
    atomic_store(1u, (*(*(a1 + 48) + 8) + 24));
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100021498(uint64_t a1)
{
  v2 = [[BAUnhandledDownloadEvent alloc] initWithEventType:1 download:*(a1 + 32) error:0];
  v3 = [*(a1 + 40) unhandledDownloadEvents];
  [v3 addObject:v2];

  [*(a1 + 40) _serializeUndeliveredEvents];
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Added undelivered event: %{public}@", &v5, 0xCu);
  }
}

void sub_10002158C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = sub_10004C614(*(a1 + 40), a2);
  v5 = [v3 extendClientSandboxForStagedURL:v4 allowWrites:0];

  if (v5)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000218B8;
    v23[3] = &unk_100079D18;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *&v8 = v7;
    *(&v8 + 1) = *(a1 + 48);
    v21 = v8;
    v9 = *(a1 + 64);
    *&v10 = *(a1 + 56);
    *(&v10 + 1) = v9;
    v24 = v21;
    v25 = v10;
    [v6 backgroundDownload:v7 finishedWithSandboxToken:v5 completionHandler:v23];

    v11 = v24;
  }

  else
  {
    v11 = [*(a1 + 40) copy];
    v12 = sub_1000104FC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_10004C614(v11, v13);
      v15 = [*(a1 + 32) identifier];
      *buf = 138543874;
      v30 = v11;
      v31 = 2114;
      v32 = v14;
      v33 = 2114;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: No sandbox token issued for extension for finished download: %{public}@ URL: %{public}@ for client: %{public}@", buf, 0x20u);
    }

    v16 = sub_100027BE4(-107);
    sub_10004C130(v11, -1);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100021848;
    v26[3] = &unk_100079D18;
    v17 = *(a1 + 32);
    *&v18 = *(a1 + 40);
    *(&v18 + 1) = *(a1 + 48);
    v22 = v18;
    v19 = *(a1 + 64);
    *&v20 = *(a1 + 56);
    *(&v20 + 1) = v19;
    v27 = v22;
    v28 = v20;
    [v17 backgroundDownload:v11 failedWithError:v16 completionHandler:v26];
  }
}

void sub_100021848(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_1000104FC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10004B03C(a1);
    }

    v4 = [*(a1 + 40) workQueue];
    dispatch_async(v4, *(a1 + 56));
  }
}

void sub_1000218B8(id *a1, char a2)
{
  if (a2)
  {
    v3 = sub_100010584();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = a1[4];
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Extension handled the background download, removing download. %{public}@", &v9, 0xCu);
    }

    v5 = +[NSFileManager defaultManager];
    v7 = sub_10004C614(a1[4], v6);
    [v5 removeItemAtURL:v7 error:0];
  }

  else
  {
    v8 = sub_1000104FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004B0A4(a1);
    }

    v5 = [a1[5] workQueue];
    dispatch_async(v5, a1[7]);
  }
}

id sub_1000219E8(uint64_t a1)
{
  [*(a1 + 32) _serializeDownloadQueues];
  v2 = *(a1 + 32);

  return [v2 _pokeScheduler];
}

void sub_100021C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100021C70(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationInfoIfExistsForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 32) _downloadQueueForIdentifier:*(a1 + 40) create:0 error:0];
    v4 = v3;
    if (v3)
    {
      v12 = 0;
      v13 = 0;
      v5 = [v3 essentialAssetsStateWithSizeDownloaded:&v13 totalDownloadSize:&v12];
      v6 = [*(a1 + 32) _essentialAssetsProgressDescriptorWithAppInfo:v2 essentialAssetState:v5 sizeDownloaded:v13 totalDownloadSize:v12];
    }

    else
    {
      v6 = sub_1000484F4([BAAppStoreProgressInfoDescriptor alloc], 1, -1, -1);
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v6;
  }

  else
  {
    v7 = sub_1000484F4([BAAppStoreProgressInfoDescriptor alloc], 0, -1, -1);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

void sub_100021EDC(id *a1)
{
  v2 = sub_100010694();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138543362;
    v39 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Download manifest did finish: %{public}@", buf, 0xCu);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100022348;
  v35[3] = &unk_100079DB8;
  v4 = a1[4];
  v5 = a1[5];
  v23 = *(a1 + 3);
  v6 = *(&v23 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v36 = v7;
  v37 = v23;
  v8 = objc_retainBlock(v35);
  v9 = a1 + 8;
  if ([a1[8] allowsBackgroundActivity])
  {
    if ([*v9 hasLaunchedApplication] & 1) != 0 || (objc_msgSend(*v9, "permittedForInitialBackgroundActivity"))
    {
      v10 = a1[6];
      v11 = [a1[8] applicationIdentifier];
      v12 = [v10 _downloaderExtensionForApplicationIdentifier:v11 cacheOnly:0];

      if (v12)
      {
        v13 = [v12 parentAppRecord];
        v14 = [v13 ba_isAppClip];

        v15 = sub_100048424(a1[4]);
        v16 = v15;
        if ((v15 - 1) < 2)
        {
LABEL_10:
          v17 = [a1[6] asyncClientNotificationQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000224EC;
          block[3] = &unk_100079E58;
          v26 = v12;
          v27 = a1[4];
          v32 = v8;
          v28 = a1[8];
          v33 = v16;
          v29 = a1[9];
          v34 = v14;
          v24 = *(a1 + 5);
          v18 = v24.i64[0];
          v30 = vextq_s8(v24, v24, 8uLL);
          v31 = a1[7];
          dispatch_async(v17, block);

LABEL_22:
          goto LABEL_23;
        }

        if (v15 == 7)
        {
          v16 = 3;
          goto LABEL_10;
        }

        v22 = sub_1000104FC();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10004B10C();
        }
      }

      else
      {
        v22 = sub_1000104FC();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10004B1D4(v9);
        }
      }

      (v8[2])(v8, 0);
      goto LABEL_22;
    }

    v19 = sub_100010584();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*v9 applicationIdentifier];
      *buf = 136315394;
      v39 = "[BAAgentCore downloadQueue:manifest:finishedWithFileURL:]_block_invoke";
      v40 = 2114;
      v41 = v20;
      v21 = "%s, Will not message extension for %{public}@. App not permitted for initial background activity.";
      goto LABEL_13;
    }
  }

  else
  {
    v19 = sub_100010584();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*v9 applicationIdentifier];
      *buf = 136315394;
      v39 = "[BAAgentCore downloadQueue:manifest:finishedWithFileURL:]_block_invoke_2";
      v40 = 2114;
      v41 = v20;
      v21 = "%s, Will not message extension for %{public}@ because background activity is disabled.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0x16u);
    }
  }

  (v8[2])(v8, 0);
LABEL_23:
}

void sub_100022348(uint64_t a1, char a2)
{
  v4 = sub_100010584();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing manifest as extension processed the manifest. %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10004B278(a1);
    }

    [*(a1 + 40) scheduleContentRequestAborted];
  }

  v7 = +[NSFileManager defaultManager];
  v9 = sub_10004C614(*(a1 + 32), v8);
  [v7 removeItemAtURL:v9 error:0];

  v10 = [*(a1 + 48) workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000224E4;
  v12[3] = &unk_100079300;
  v11 = *(a1 + 56);
  v12[4] = *(a1 + 48);
  v13 = v11;
  dispatch_async(v10, v12);
}

void sub_1000224EC(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = sub_10004C614(*(a1 + 40), a2);
  v5 = [v3 extendClientSandboxForStagedURL:v4 allowWrites:0];

  if (v5)
  {
    v6 = (a1 + 48);
    if (![*(a1 + 48) usesAppleHosting])
    {
      v27 = [*v6 hasManagedAssetPacks];
      v28 = sub_1000104FC();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v29)
        {
          v30 = [*v6 applicationIdentifier];
          *buf = 138543362;
          v53 = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "The application with the identifier “%{public}@” uses Managed Background Assets with third-party hosting.", buf, 0xCu);
        }

        v31 = sub_100048B64([BAManagedDownloaderExtensionInfo alloc], *v6, 4);
      }

      else
      {
        if (v29)
        {
          v32 = [*v6 applicationIdentifier];
          *buf = 138543362;
          v53 = v32;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "The application with the identifier “%{public}@” doesn’t use Managed Background Assets.", buf, 0xCu);
        }

        v31 = sub_10004BFB8([BAAppExtensionInfo alloc], *v6);
      }

      v13 = v31;
      goto LABEL_20;
    }

    v7 = sub_1000104FC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*v6 applicationIdentifier];
      *buf = 138543362;
      v53 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrieving the manifest data source for the application with the identifier “%{public}@” because it uses Apple hosting…", buf, 0xCu);
    }

    v9 = +[BAManagedBackgroundAssetsInterface sharedInterface];
    v10 = [*(a1 + 32) parentAppRecord];
    v11 = [v10 bundleIdentifier];
    v48 = 0;
    v12 = [v9 manifestDataSourceForApplicationWithBundleIdentifier:v11 error:&v48];
    v13 = v48;

    v14 = sub_1000104FC();
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*v6 applicationIdentifier];
        v17 = [v12 manifestDataSource];
        *buf = 138543618;
        v53 = v16;
        v54 = 2048;
        v55 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "The manifest data source for the application with the identifier “%{public}@” is “%ld”.", buf, 0x16u);
      }

      v18 = sub_100048B64([BAManagedDownloaderExtensionInfo alloc], *v6, [v12 manifestDataSource]);
      v13 = v18;
LABEL_20:
      v33 = *(a1 + 96);
      v34 = *(a1 + 32);
      v35 = sub_10004C614(*(a1 + 40), v19);
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100022B18;
      v40[3] = &unk_100079E30;
      v45 = *(a1 + 88);
      v36 = *(a1 + 56);
      v37 = *(a1 + 40);
      v46 = *(a1 + 96);
      v47 = *(a1 + 104);
      *&v38 = *(a1 + 48);
      *(&v38 + 1) = *(a1 + 64);
      *&v39 = v36;
      *(&v39 + 1) = v37;
      v41 = v39;
      v42 = v38;
      v43 = *(a1 + 72);
      v44 = *(a1 + 80);
      [v34 requestDownloadsWithContentRequest:v33 manifestURL:v35 extensionInfo:v13 completion:v40];

      goto LABEL_21;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004B2E0();
    }

    (*(*(a1 + 88) + 16))();
  }

  else
  {
    v20 = [*(a1 + 40) copy];
    v21 = sub_1000104FC();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_10004C614(v20, v22);
      v24 = [*(a1 + 32) identifier];
      *buf = 138543874;
      v53 = v20;
      v54 = 2114;
      v55 = v23;
      v56 = 2114;
      v57 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Warning: No sandbox token issued for extension for finished download: %{public}@ URL: %{public}@ for client: %{public}@", buf, 0x20u);
    }

    v13 = sub_100027BE4(-107);
    sub_10004C130(v20, -1);
    v25 = *(a1 + 32);
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100022AB4;
    v49[3] = &unk_100079DE0;
    v50 = v20;
    v51 = *(a1 + 88);
    v26 = v20;
    [v25 backgroundDownload:v26 failedWithError:v13 completionHandler:v49];
  }

LABEL_21:
}

uint64_t sub_100022AB4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_1000104FC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10004B378(a1);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100022B18(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 80) + 16))();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022C48;
  block[3] = &unk_100079E08;
  v20 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v19 = *(a1 + 88);
  v15 = v7;
  v16 = v5;
  v21 = *(a1 + 96);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = *(a1 + 56);
  v13 = v8;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v17 = v13;
  v18 = v11;
  v12 = v5;
  dispatch_async(v6, block);
}

void sub_100022C48(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v39;
      *&v4 = 138543618;
      v27 = v4;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v39 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v38 + 1) + 8 * i);
          os_unfair_lock_lock([v8 downloadLock]);
          if (*(a1 + 89) == 1 && [v8 necessity] == 1)
          {
            v9 = sub_100010584();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = [*(a1 + 48) applicationIdentifier];
              v11 = [v8 identifier];
              *buf = v27;
              v44 = v10;
              v45 = 2114;
              v46 = v11;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client %{public}@ is an App Clip and enqueued an essential download (%{public}@), demoting to optional.", buf, 0x16u);
            }

            [v8 setNecessity:0];
          }

          if ([*(a1 + 48) initialRestrictionsAreEnforced])
          {
            v12 = [*(a1 + 48) initialBackgroundCellularPolicy];
            [v8 setApplicationInformationForRestrictedDownload:*(a1 + 48)];
            v13 = [v8 necessity];
            v14 = [v8 necessity];
            if (v13 == 1)
            {
              if ((v12 & 2) != 0)
              {
                [v8 setPermitInitialCellularDownload:1];
              }

              [v8 setIsForegroundDownload:1];
            }

            if (!v14)
            {
              if (v12)
              {
                [v8 setPermitInitialCellularDownload:1];
              }

              [v8 setIsForegroundDownload:0];
            }
          }

          os_unfair_lock_unlock([v8 downloadLock]);
        }

        v5 = [v2 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v5);
    }

    v15 = [*(a1 + 56) telemetryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100023040;
    block[3] = &unk_100079538;
    v37 = *(a1 + 80);
    v34 = *(a1 + 48);
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    v35 = v16;
    v36 = v17;
    dispatch_async(v15, block);

    v18 = *(a1 + 64);
    v19 = *(a1 + 80);
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000230DC;
    v28[3] = &unk_100079940;
    v29 = v20;
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    v30 = v22;
    v31 = v23;
    v32 = *(a1 + 72);
    [v18 scheduleContentRequest:v19 downloads:v29 applicationInfo:v21 completionHandler:v28];

    v24 = v34;
  }

  else
  {
    v24 = sub_100010584();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 80);
      *buf = 138543618;
      v44 = v25;
      v45 = 2048;
      v46 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Client failed to enqueue requested downloads for manifest: %{public}@ with content request: %ld", buf, 0x16u);
    }
  }
}

void sub_100023040(uint64_t a1)
{
  v2 = [BAContentRequestTelemetry alloc];
  v3 = *(a1 + 56);
  v4 = [*(a1 + 32) applicationIdentifier];
  v5 = -[BAContentRequestTelemetry initWithContentRequest:applicationIdentifier:installSource:downloads:](v2, "initWithContentRequest:applicationIdentifier:installSource:downloads:", v3, v4, [*(a1 + 32) installSource], *(a1 + 40));

  [*(a1 + 48) setContentRequestTelemetry:v5 forDownloads:*(a1 + 40)];
}

void sub_1000230DC(uint64_t a1)
{
  v2 = sub_1000104FC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = [*(a1 + 40) applicationIdentifier];
    *buf = 134349314;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Scheduled content request downloads count: %{public}lu for client: %{public}@", buf, 0x16u);
  }

  v5 = [*(a1 + 48) workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100023230;
  v7[3] = &unk_100079300;
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 48);
  v8 = v6;
  dispatch_async(v5, v7);
}

id sub_100023230(uint64_t a1)
{
  [*(a1 + 32) _pokeScheduler];
  v2 = *(a1 + 32);

  return [v2 _serializeDownloadQueues];
}

void sub_100023368(uint64_t a1)
{
  v2 = [*(a1 + 32) _systemConnections];
  if ([v2 count])
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) identifier];
    v5 = [v3 applicationInfoIfExistsForIdentifier:v4];

    if (v5)
    {
      v6 = [*(a1 + 32) _essentialAssetsProgressDescriptorWithAppInfo:v5 essentialAssetState:*(a1 + 56) sizeDownloaded:*(a1 + 64) totalDownloadSize:*(a1 + 72)];
    }

    else
    {
      v6 = sub_1000484F4([BAAppStoreProgressInfoDescriptor alloc], 0, -1, -1);
    }

    v7 = v6;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v2;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          v14 = [*(a1 + 40) identifier];
          [v13 reportProgressForIdentifier:v14 progressInfo:v7];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

void sub_1000238CC(uint64_t a1)
{
  v2 = [*(a1 + 32) rulesEngine];
  v3 = [v2 isValidTimeForDownloads];

  v4 = [*(a1 + 32) workQueue];
  v5 = v4;
  if (v3)
  {
    v6 = v9;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v7 = sub_1000239C0;
  }

  else
  {
    v6 = v8;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v7 = sub_1000239C8;
  }

  v6[2] = v7;
  v6[3] = &unk_100079260;
  v6[4] = *(a1 + 32);
  dispatch_async(v4, v6);
}

void sub_100024284(uint64_t a1)
{
  v2 = sub_1000104FC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Dumping debug agent state:", buf, 2u);
  }

  v3 = sub_1000104FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) rulesEngine];
    v5 = [v4 isValidTimeForDownloads];
    v6 = @"NO";
    if (v5)
    {
      v6 = @"YES";
    }

    *buf = 138543362;
    v85 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Allowed time for downloads: %{public}@", buf, 0xCu);
  }

  obj = [*(a1 + 32) applicationState];
  objc_sync_enter(obj);
  v7 = sub_1000104FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "**** Application State Info ****", buf, 2u);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v8 = [*(a1 + 32) applicationState];
  v9 = [v8 countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v9)
  {
    v10 = *v77;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v77 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v76 + 1) + 8 * i);
        v13 = sub_1000104FC();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "**** ---------------------- ****", buf, 2u);
        }

        v14 = objc_autoreleasePoolPush();
        v15 = [v12 debugDescription];
        v16 = sub_1000104FC();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = v15;
          v18 = [v15 UTF8String];
          *buf = 136315138;
          v85 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
      }

      v9 = [v8 countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v9);
  }

  v19 = sub_1000104FC();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "**** ---------------------- ****", buf, 2u);
  }

  objc_sync_exit(obj);
  obja = [*(a1 + 32) connections];
  objc_sync_enter(obja);
  v20 = sub_1000104FC();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "**** Connection State Info  ****", buf, 2u);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v21 = [*(a1 + 32) connections];
  v22 = [v21 countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v22)
  {
    v23 = *v73;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v73 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v72 + 1) + 8 * j);
        v26 = sub_1000104FC();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "**** ---------------------- ****", buf, 2u);
        }

        v27 = [v25 debugDescription];
        v28 = sub_1000104FC();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = v27;
          v30 = [v27 UTF8String];
          *buf = 136315138;
          v85 = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v22);
  }

  v31 = sub_1000104FC();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "**** ---------------------- ****", buf, 2u);
  }

  objc_sync_exit(obja);
  objb = [*(a1 + 32) extensionConnections];
  objc_sync_enter(objb);
  v32 = sub_1000104FC();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "**** Extension Connection State Info ****", buf, 2u);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v33 = [*(a1 + 32) extensionConnections];
  v34 = [v33 countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v34)
  {
    v35 = *v69;
    do
    {
      for (k = 0; k != v34; k = k + 1)
      {
        if (*v69 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = *(*(&v68 + 1) + 8 * k);
        v38 = sub_1000104FC();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "**** ---------------------- ****", buf, 2u);
        }

        v39 = [*(a1 + 32) extensionConnections];
        v40 = [v39 objectForKey:v37];

        v41 = [v40 debugDescription];
        v42 = sub_1000104FC();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = v41;
          v44 = [v41 UTF8String];
          *buf = 136315138;
          v85 = v44;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
        }
      }

      v34 = [v33 countByEnumeratingWithState:&v68 objects:v81 count:16];
    }

    while (v34);
  }

  v45 = sub_1000104FC();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "**** ------------------------------- ****", buf, 2u);
  }

  objc_sync_exit(objb);
  objc = [*(a1 + 32) downloadQueuesByClientIdentifier];
  objc_sync_enter(objc);
  v46 = sub_1000104FC();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "**** Download Queue State Info ****", buf, 2u);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v47 = [*(a1 + 32) downloadQueuesByClientIdentifier];
  v48 = [v47 countByEnumeratingWithState:&v64 objects:v80 count:16];
  if (v48)
  {
    v49 = *v65;
    do
    {
      for (m = 0; m != v48; m = m + 1)
      {
        if (*v65 != v49)
        {
          objc_enumerationMutation(v47);
        }

        v51 = *(*(&v64 + 1) + 8 * m);
        v52 = sub_1000104FC();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "**** ---------------------- ****", buf, 2u);
        }

        v53 = [*(a1 + 32) downloadQueuesByClientIdentifier];
        v54 = [v53 objectForKey:v51];
        v55 = [v54 debugDescription];

        v56 = sub_1000104FC();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = v55;
          v58 = [v55 UTF8String];
          *buf = 136315138;
          v85 = v58;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
        }
      }

      v48 = [v47 countByEnumeratingWithState:&v64 objects:v80 count:16];
    }

    while (v48);
  }

  v59 = sub_1000104FC();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "**** ------------------------------- ****", buf, 2u);
  }

  objc_sync_exit(objc);
}

intptr_t sub_10002515C(uint64_t a1, int a2)
{
  if (a2 != 3)
  {
    if (a2)
    {
      v3 = sub_1000104FC();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10004B488(a1);
      }
    }

    else
    {
      v3 = sub_1000104FC();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v6 = 138543362;
        v7 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Extension removed with launchd: %{public}@", &v6, 0xCu);
      }
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100025244(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) _connectionsForApplicationIdentifier:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 isApplication] & 1) == 0)
        {
          [v7 invalidate];
          v8 = [*(a1 + 32) connections];
          [v8 removeObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

int64_t sub_10002551C(id a1, BAAgentClientConnection *a2, BAAgentClientConnection *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(BAAgentClientConnection *)v4 isApplication]&& ![(BAAgentClientConnection *)v5 isApplication])
  {
    v6 = -1;
  }

  else
  {
    v6 = ![(BAAgentClientConnection *)v4 isApplication]&& [(BAAgentClientConnection *)v5 isApplication];
  }

  return v6;
}

void sub_100026960(uint64_t a1)
{
  cf = 0;
  v2 = *(a1 + 48);
  if (lockdown_receive_message() || (v4 = CFGetTypeID(cf), v4 != CFDataGetTypeID()))
  {
    v3 = *(a1 + 48);
    lockdown_disconnect();
  }

  else
  {
    v5 = cf;
    v9 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:cf error:&v9];
    v7 = v9;
    if (v6)
    {
      [*(a1 + 32) _processLockdownClientMessage:v6 withConnection:*(a1 + 48) withQueue:*(a1 + 40)];
    }

    else
    {
      v8 = *(a1 + 48);
      lockdown_disconnect();
    }
  }
}

void sub_100027040(uint64_t a1)
{
  v2 = sub_1000104FC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NSProcessInfoPowerStateDidChangeNotification received.", buf, 2u);
  }

  v3 = [*(a1 + 32) applicationState];
  objc_sync_enter(v3);
  v4 = [*(a1 + 32) applicationState];
  v5 = [v4 copy];

  objc_sync_exit(v3);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 applicationIdentifier];
        if ([v10 allowsBackgroundActivity])
        {

          goto LABEL_17;
        }

        v12 = [*(a1 + 32) extensionConnections];
        objc_sync_enter(v12);
        v13 = [*(a1 + 32) extensionConnections];
        v14 = [v13 objectForKey:v11];

        objc_sync_exit(v12);
        if (v14)
        {
          [v14 invalidate];
        }

        v15 = [*(a1 + 32) _downloadQueueForIdentifier:v11 create:0 error:0];
        v16 = v15;
        if (v15)
        {
          [v15 cancelAllDownloads];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

Class sub_100027988(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100089C90)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100027ACC;
    v4[4] = &unk_100079F48;
    v4[5] = v4;
    v5 = off_100079F30;
    v6 = 0;
    qword_100089C90 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100089C90)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ASDBackgroundAssets");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10004BA70();
  }

  qword_100089C88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100027ACC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100089C90 = result;
  return result;
}

void sub_100027B6C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_100027BC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

id sub_100027BF8(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if (a3)
  {
    v9 = NSUnderlyingErrorKey;
    v10 = a3;
    v6 = a3;
    a3 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  v7 = sub_100027CE8(v5, a2, a3);

  return v7;
}

void sub_100027CE8(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [NSURL fileURLWithPath:@"/System/Library/Frameworks/BackgroundAssets.framework" isDirectory:1];
  v8 = [NSBundle bundleWithURL:v7];

  v9 = [NSString stringWithFormat:@"%ld", a2];
  if ([v5 isEqualToString:@"BAErrorDomain"])
  {
    v10 = @"BAError";
LABEL_5:
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];
    if (v6)
    {
      v12 = [v6 mutableCopy];
    }

    else
    {
      v12 = +[NSMutableDictionary dictionary];
    }

    v13 = v12;
    [v12 setObject:v11 forKey:NSLocalizedFailureReasonErrorKey];
    v14 = [v13 copy];
    v15 = [NSError errorWithDomain:v5 code:a2 userInfo:v14];

    v16 = v15;
    return;
  }

  if ([v5 isEqualToString:@"BAURLDownloadErrorDomain"])
  {
    v10 = @"BAURLDownloadError";
    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10004BA98();
  }

  qword_100089A98 = "BUG IN BackgroundAssets: NSErrorWithBAErrorDomainCodeUserInfo() called with unsupported NSErrorDomain.";
  qword_100089AC8 = 6;
  __break(0xB001u);
}

void sub_1000280F0(uint64_t a1)
{
  [*(a1 + 32) setDebugRuleValidity:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 downloadTimeValidityDidChange];
    }
  }
}

void sub_100028740(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100028760(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    if (xpc_activity_should_defer(v3) && xpc_activity_set_state(v3, 3))
    {
      v4 = sub_1000104FC();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Periodic check fired, but activity was deferred.", v12, 2u);
      }

      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained delegate];
    if (!v6)
    {

      goto LABEL_11;
    }

    v7 = v6;
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      v11 = [v4 delegate];
      [v11 doPeriodicUpdateCheck];

LABEL_9:
    }
  }

LABEL_11:
}

void sub_10002889C(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  v3 = sub_1000104FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = string;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received distnoted event: %s", &v4, 0xCu);
  }
}

void sub_1000289F8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 downloadTimeValidityDidChange];
    }
  }
}

void sub_100028FC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_100028FF8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    [WeakRetained _downloadFailedWithError:v6];
LABEL_3:

    goto LABEL_18;
  }

  if (v5)
  {
    v8 = sub_1000104FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004BB20(v8);
    }

    v9 = [[CKQueryOperation alloc] initWithCursor:v5];
    [a1[4] addOperation:v9];
    goto LABEL_8;
  }

  v10 = [a1[5] stateLock];
  [v10 lock];

  if ([a1[5] recordFound])
  {
    v11 = [a1[5] assetFound];
    v12 = [a1[5] stateLock];
    [v12 unlock];

    v13 = objc_loadWeakRetained(a1 + 6);
    v9 = v13;
    if (v11)
    {
      v14 = [v13 _consumeAvailableDownloadSize];

      v15 = objc_loadWeakRetained(a1 + 6);
      WeakRetained = v15;
      if (v14)
      {
        [v15 _downloadActualAsset];
      }

      else
      {
        v23 = sub_100027BE4(204);
        [WeakRetained _downloadFailedWithError:v23];
      }

      goto LABEL_3;
    }

    v21 = sub_100027BE4(-301);
    [v9 _downloadFailedWithError:v21];

LABEL_8:
    goto LABEL_18;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000292C4;
  v29 = sub_1000292D4;
  v30 = 0;
  v16 = [a1[5] recordErrors];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000292DC;
  v24[3] = &unk_10007A020;
  v24[4] = &v25;
  [v16 enumerateKeysAndObjectsUsingBlock:v24];

  v17 = [a1[5] stateLock];
  [v17 unlock];

  v18 = v26[5];
  v19 = objc_loadWeakRetained(a1 + 6);
  v20 = v19;
  if (v18)
  {
    [v19 _downloadFailedWithError:v26[5]];
  }

  else
  {
    v22 = sub_100027BE4(-300);
    [v20 _downloadFailedWithError:v22];
  }

  _Block_object_dispose(&v25, 8);
LABEL_18:
}

void sub_1000292AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000292C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000292DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9)
  {
    objc_storeStrong(v8, a3);
  }

  v10 = sub_100010584();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10004BB64();
  }
}

void sub_100029368(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) stateLock];
  [v9 lock];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v11 = [WeakRetained recordErrors];
    [v11 setObject:v8 forKey:v16];
  }

  else
  {
    [*(a1 + 32) setRecordFound:1];
    v12 = objc_loadWeakRetained((a1 + 40));
    v13 = [v12 download];
    v14 = [v13 assetKey];
    WeakRetained = [v7 objectForKey:v14];

    if (WeakRetained)
    {
      [*(a1 + 32) setAssetFound:1];
      [*(a1 + 32) setAssetSize:{objc_msgSend(WeakRetained, "size")}];
    }
  }

  v15 = [*(a1 + 32) stateLock];
  [v15 unlock];
}

void sub_10002957C(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 downloadDidPause];
}

void sub_1000296B4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 downloadFailedWithError:*(a1 + 40)];
    }
  }
}

void sub_100029818(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 downloadSucceededWithURL:*(a1 + 40)];
    }
  }
}

void sub_100029C20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100029C50(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    [WeakRetained _downloadFailedWithError:v6];
LABEL_3:

    goto LABEL_17;
  }

  if (v5)
  {
    v8 = sub_1000104FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004BB20(v8);
    }

    v9 = [[CKQueryOperation alloc] initWithCursor:v5];
    [a1[4] addOperation:v9];
  }

  else
  {
    v10 = [a1[5] stateLock];
    [v10 lock];

    if ([a1[5] recordFound])
    {
      v11 = [a1[5] assetFound];
      v12 = a1[5];
      if (v11)
      {
        v13 = [v12 assetURL];

        v14 = a1[5];
        if (v13)
        {
          v15 = [v14 assetURL];
          v16 = [v15 copy];

          v17 = [a1[5] stateLock];
          [v17 unlock];

          v18 = objc_loadWeakRetained(a1 + 6);
          [v18 _downloadSucceededWithURL:v16];

          goto LABEL_17;
        }

        v27 = [v14 stateLock];
        [v27 unlock];

        WeakRetained = objc_loadWeakRetained(a1 + 6);
        v25 = -302;
      }

      else
      {
        v24 = [v12 stateLock];
        [v24 unlock];

        WeakRetained = objc_loadWeakRetained(a1 + 6);
        v25 = -301;
      }

      v28 = sub_100027BE4(v25);
      [WeakRetained _downloadFailedWithError:v28];

      goto LABEL_3;
    }

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_1000292C4;
    v34 = sub_1000292D4;
    v35 = 0;
    v19 = [a1[5] recordErrors];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100029F5C;
    v29[3] = &unk_10007A020;
    v29[4] = &v30;
    [v19 enumerateKeysAndObjectsUsingBlock:v29];

    v20 = [a1[5] stateLock];
    [v20 unlock];

    v21 = v31[5];
    v22 = objc_loadWeakRetained(a1 + 6);
    v23 = v22;
    if (v21)
    {
      [v22 _downloadFailedWithError:v31[5]];
    }

    else
    {
      v26 = sub_100027BE4(-300);
      [v23 _downloadFailedWithError:v26];
    }

    _Block_object_dispose(&v30, 8);
  }

LABEL_17:
}

void sub_100029F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100029F5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9)
  {
    objc_storeStrong(v8, a3);
  }

  v10 = sub_100010584();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10004BB64();
  }
}

void sub_100029FE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) stateLock];
  [v9 lock];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v11 = [WeakRetained recordErrors];
    [v11 setObject:v8 forKey:v16];
  }

  else
  {
    [*(a1 + 32) setRecordFound:1];
    v12 = objc_loadWeakRetained((a1 + 40));
    v13 = [v12 download];
    v14 = [v13 assetKey];
    WeakRetained = [v7 objectForKey:v14];

    if (!WeakRetained)
    {
      goto LABEL_6;
    }

    [*(a1 + 32) setAssetFound:1];
    v11 = [WeakRetained fileURL];
    [*(a1 + 32) setAssetURL:v11];
  }

LABEL_6:
  v15 = [*(a1 + 32) stateLock];
  [v15 unlock];
}

void sub_10002A76C(id a1)
{
  v1 = +[NSMutableSet set];
  v2 = sub_1000163FC();
  [v1 unionSet:v2];

  v3 = +[BADownload classesForSerialization];
  [v1 unionSet:v3];

  v7 = objc_opt_class();
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  [v1 addObjectsFromArray:v4];

  v5 = [v1 copy];
  v6 = qword_100089C98;
  qword_100089C98 = v5;
}

const __CFString *sub_10002AFD8(uint64_t a1)
{
  v1 = @"<Unknown>";
  if (a1 == 1)
  {
    v1 = @"Essential";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Optional";
  }
}

const __CFString *sub_10002B004(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"<Unknown>";
  }

  else
  {
    return *(&off_10007A0B0 + a1 - 1);
  }
}

void sub_10002B240(id a1)
{
  qword_100089CA8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mt"];

  _objc_release_x1();
}

void sub_10002B2D4(id a1)
{
  v1 = objc_alloc_init(NSMutableSet);
  v2 = qword_100089CB8;
  qword_100089CB8 = v1;

  v3 = qword_100089CB8;
  v4 = sub_1000163FC();
  [v3 unionSet:v4];

  [qword_100089CB8 addObject:objc_opt_class()];
  [qword_100089CB8 addObject:objc_opt_class()];
  v5 = qword_100089CB8;
  v6 = objc_opt_class();

  [v5 addObject:v6];
}

void sub_10002D0D4(id a1, id a2)
{
  v3 = v2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D168;
  block[3] = &unk_100079838;
  v6 = a2;
  v4 = v6;
  dispatch_async(v3, block);
}

void sub_10002E86C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10002E774);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002FB88(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 downloadDidBegin:*(a1 + 32)];
}

void sub_10002FEB4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 download:*(a1 + 32) failedWithError:*(a1 + 40)];
}

void sub_10002FFF8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 downloadDidPause:*(a1 + 32)];
}

void sub_10003023C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 download:*(a1 + 32) finishedWithFileURL:*(a1 + 40)];
}

void sub_1000307E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100030820(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void sub_100030860(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void sub_10003173C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 necessity];
    if (a2 || v4 != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      sub_10004C748(a1, a2);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_10004C6C0();
      }

      qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: The provided fileSize for BADownload must be a positive number that matches the actual file size on the server.";
      __break(0xB001u);
    }
  }
}

void sub_100032E9C(id a1)
{
  qword_100089CD0 = objc_opt_new();

  _objc_release_x1();
}

void sub_100032ED8(uint64_t a1)
{
  [*(a1 + 32) _validateAndSetClientIdentifier];
  v2 = [*(a1 + 32) applicationBundleIdentifier];

  if (v2)
  {
    v3 = qword_100089CD0;
    v5 = [*(a1 + 32) applicationBundleIdentifier];
    v4 = [v3 blockQueueWithIdentifier:v5];
    [*(a1 + 32) setExclusiveAccessBlockQueue:v4];
  }
}

void sub_100033028(uint64_t a1)
{
  v2 = [*(a1 + 32) lastExclusiveAccessBlockToken];

  if (v2)
  {
    v4 = [*(a1 + 32) exclusiveAccessBlockQueue];
    v3 = [*(a1 + 32) lastExclusiveAccessBlockToken];
    [v4 drainSpecificWithToken:v3];
  }
}

uint64_t sub_1000331F8(uint64_t a1)
{
  result = [*(a1 + 32) connectionIsValid];
  if (result)
  {
    v3 = +[BAAgentCore sharedCore];
    v4 = [*(a1 + 32) applicationBundleIdentifier];
    [v3 downloadsForIdentifier:v4];
    objc_claimAutoreleasedReturnValue();

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5);
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      return result;
    }

    sub_100027BE4(56);
    objc_claimAutoreleasedReturnValue();
    (*(v6 + 16))(v6);
  }

  return _objc_release_x1();
}

void sub_1000333D4(id *a1)
{
  if ([a1[4] connectionIsValid])
  {
    if (a1[5])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = a1[4];
        v3 = a1[5];
        v21 = 0;
        v4 = [v2 _entitledForCloudKitWithDownload:v3 outError:&v21];
        v5 = v21;
        v6 = v5;
        if ((v4 & 1) == 0)
        {
LABEL_19:
          v17 = a1[6];
          if (v17)
          {
            v17[2](v17, 0, v6);
          }

          return;
        }
      }

      if ([a1[4] isApplication] & 1) != 0 || (objc_msgSend(a1[4], "applicationBundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = +[BAApplicationInfo applicationForIdentifierAllowsBackgroundActivity:](BAApplicationInfo, "applicationForIdentifierAllowsBackgroundActivity:", v7), v7, (v8))
      {
        if ([a1[4] isApplication])
        {
          if ([a1[4] isActive])
          {
            os_unfair_lock_lock([a1[5] downloadLock]);
            [a1[5] setIsForegroundDownload:1];
            os_unfair_lock_unlock([a1[5] downloadLock]);
          }
        }

        v9 = a1[5];
        v10 = [a1[4] applicationBundleIdentifier];
        [v9 setApplicationIdentifier:v10];

        v11 = +[BAAgentCore sharedCore];
        v12 = a1[5];
        v13 = [a1[4] applicationBundleIdentifier];
        v14 = [a1[4] clientWorkQueue];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100033648;
        v19[3] = &unk_100079A80;
        v20 = a1[6];
        [v11 scheduleDownload:v12 forClientIdentifier:v13 notifyQueue:v14 completionBlock:v19];

        return;
      }

      v6 = sub_100027BE4(111);
      goto LABEL_19;
    }

    v15 = a1[6];
    v16 = 113;
  }

  else
  {
    v15 = a1[6];
    if (!v15)
    {
      return;
    }

    v16 = 55;
  }

  v18 = sub_100027BE4(v16);
  v15[2](v15, 0, v18);
}

void sub_100033720(uint64_t a1)
{
  if ([*(a1 + 32) connectionIsValid])
  {
    objc_initWeak(&location, *(a1 + 32));
    v2 = [*(a1 + 32) exclusiveAccessBlockQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100033878;
    v5[3] = &unk_10007A310;
    objc_copyWeak(&v7, &location);
    v6 = *(a1 + 40);
    [v2 enqueue:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = sub_100027BE4(55);
    (*(v3 + 16))(v3, 0, v4, 0);
  }
}

void sub_100033854(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100033878(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLastExclusiveAccessBlockToken:v8];

  v6 = *(a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(v6, 1, 0, v8);
  }

  else
  {
    v7 = sub_100027BE4(-400);
    (*(v6 + 16))(v6, 0, v7, v8);
  }
}

void sub_100033A0C(uint64_t a1)
{
  if ([*(a1 + 32) connectionIsValid])
  {
    objc_initWeak(&location, *(a1 + 32));
    v2 = [*(a1 + 32) exclusiveAccessBlockQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100033B68;
    v5[3] = &unk_10007A310;
    objc_copyWeak(&v7, &location);
    v6 = *(a1 + 48);
    [v2 enqueue:v5 waitLimitDate:*(a1 + 40)];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = sub_100027BE4(55);
    (*(v3 + 16))(v3, 0, v4, 0);
  }
}

void sub_100033B44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100033B68(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLastExclusiveAccessBlockToken:v8];

  v6 = *(a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(v6, 1, 0, v8);
  }

  else
  {
    v7 = sub_100027BE4(-400);
    (*(v6 + 16))(v6, 0, v7, v8);
  }
}

void sub_100033CD8(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) connectionIsValid])
  {
    v3 = [*(a1 + 32) exclusiveAccessBlockQueue];
    v5 = *(a1 + 40);
    v4 = (a1 + 40);
    v6 = [v3 consumeToken:v5];

    if ((v6 & 1) == 0)
    {
      v7 = sub_100010584();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10004C838(v4, v2);
      }
    }
  }
}

void sub_100034C1C(uint64_t a1)
{
  if ([*(a1 + 32) connectionIsValid])
  {
    if ([*(a1 + 32) isApplication])
    {
      if ([*(a1 + 32) isActive])
      {
        v2 = *(a1 + 40);
        if (v2)
        {
          v3 = [*(a1 + 32) applicationBundleIdentifier];
          [v2 setApplicationIdentifier:v3];

          v4 = +[BAAgentCore sharedCore];
          v5 = *(a1 + 40);
          v6 = [*(a1 + 32) applicationBundleIdentifier];
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_100034DA8;
          v10[3] = &unk_100079A80;
          v11 = *(a1 + 48);
          [v4 startForegroundDownload:v5 forClientIdentifier:v6 completionBlock:v10];

          return;
        }

        v7 = *(a1 + 48);
        v8 = 113;
      }

      else
      {
        v7 = *(a1 + 48);
        v8 = 51;
      }
    }

    else
    {
      v7 = *(a1 + 48);
      v8 = 50;
    }
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = 55;
  }

  v9 = sub_100027BE4(v8);
  (*(v7 + 16))(v7, 0, v9);
}

void sub_100034EA4(uint64_t a1)
{
  v2 = +[BAAgentCore sharedCore];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) applicationBundleIdentifier];
  v5 = [v2 downloadForIdentifier:v3 forClientIdentifier:v4];

  if ([*(a1 + 40) connectionIsValid])
  {
    if (v5)
    {
      v6 = +[BAAgentCore sharedCore];
      v7 = [*(a1 + 40) applicationBundleIdentifier];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100035024;
      v11[3] = &unk_10007A338;
      v12 = *(a1 + 48);
      [v6 cancelDownload:v5 forClientIdentifier:v7 completionBlock:v11];
    }

    else
    {
      v9 = *(a1 + 48);
      v10 = sub_100027BE4(113);
      (*(v9 + 16))(v9, 0, v10);
    }
  }

  else
  {
    v8 = sub_100027BE4(55);
    [v2 download:v5 failedWithError:v8];
  }
}

void sub_100035134(uint64_t a1)
{
  if ([*(a1 + 32) connectionIsValid])
  {
    [*(a1 + 40) UTF8String];
    if (sandbox_extension_consume() == -1)
    {
      v10 = *__error();
      v21 = @"FileURL";
      v11 = *(a1 + 48);
      v12 = v11;
      if (!v11)
      {
        v12 = +[NSNull null];
      }

      v22 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v10 userInfo:v13];

      if (!v11)
      {
      }

      v15 = *(a1 + 56);
      v16 = sub_100027BF8(@"BAErrorDomain", -108, v14);
      (*(v15 + 16))(v15, 0, v16);
    }

    else
    {
      v18 = 66564;
      if (fsctl([*(a1 + 48) fileSystemRepresentation], 0xC0084A44uLL, &v18, 0))
      {
        v2 = *__error();
        v19 = @"FileURL";
        v3 = *(a1 + 48);
        v4 = v3;
        if (!v3)
        {
          v4 = +[NSNull null];
        }

        v20 = v4;
        v5 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v2 userInfo:v5];

        if (!v3)
        {
        }

        sandbox_extension_release();
        v7 = *(a1 + 56);
        v8 = sub_100027BF8(@"BAErrorDomain", -57, v6);
        (*(v7 + 16))(v7, 0, v8);
      }

      else
      {
        sandbox_extension_release();
        (*(*(a1 + 56) + 16))();
      }
    }
  }

  else
  {
    v9 = *(a1 + 56);
    v17 = sub_100027BE4(55);
    (*(v9 + 16))(v9, 0);
  }
}

void sub_1000354C4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100010584();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10004D0F8(v2);
  }
}

void sub_1000355F0(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionIsValid];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100035694;
  v4[3] = &unk_10007A3A8;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v2;
  dispatch_async(v3, v4);
}

void sub_100035774(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10004D194(a1, v3);
  }
}

void sub_1000358A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10004D234(a1, v3);
  }
}

void sub_1000359CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10004D2D4(a1, v3);
  }
}

void sub_100035B18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10004D374(a1, v3);
  }
}

void sub_100035CA4(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v2 = [*(a1 + 32) connection];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100035DC4;
  v8 = &unk_1000793C8;
  v10 = &v11;
  v9 = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&v5];
  [v3 downloadIdentifier:*(a1 + 40) didReceiveChallenge:*(a1 + 48) authChallengeHandler:{*(a1 + 56), v5, v6, v7, v8}];

  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, *(v12 + 24));
  }

  _Block_object_dispose(&v11, 8);
}

void sub_100035DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100035DC4(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10004D414(a1, v3);
  }
}

void sub_100035F9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10004D4B4(a1, v3);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10003618C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100010584();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10004D554(a1, v3);
  }

  (*(*(a1 + 40) + 16))();
}

id sub_10003682C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for AssetPackVersionIDsResult.VersionIDs()
{
  result = qword_1000895C8;
  if (!qword_1000895C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000368EC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for ManifestDataSource()
{
  if (!qword_1000895D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000895D8);
    }
  }
}

id sub_100036A18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManifestDataSourceResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100036A70()
{
  result = sub_100036A90();
  qword_10008B9F0 = result;
  return result;
}

id sub_100036A90()
{
  memset(v2, 0, sizeof(v2));
  v0 = objc_allocWithZone(type metadata accessor for ManagedBackgroundAssetsInterface());
  return sub_100036CFC(v2);
}

uint64_t sub_100036C7C()
{
  v0 = type metadata accessor for Logger();
  sub_100039304(v0, qword_100089610);
  sub_100038DC0(v0, qword_100089610);
  return Logger.init(subsystem:category:)();
}

id sub_100036CFC(uint64_t a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  sub_100039368(a1, &qword_1000896A0, &unk_1000596B0);
  if (qword_100089548 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100038DC0(v6, qword_100089610);
  v7 = static os_log_type_t.debug.getter();
  v8 = Logger.logObject.getter();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, v7, "Init", v9, 2u);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Connecting to the helper service…", v12, 2u);
  }

  type metadata accessor for Helper();
  v13 = static Helper.newProxy()();
  if (v2)
  {
    return swift_deallocPartialClassInstance();
  }

  *&v3[OBJC_IVAR___BAManagedBackgroundAssetsInterface_helper] = v13;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_100036EDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100089548 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100038DC0(v3, qword_100089610);
  v4 = static os_log_type_t.debug.getter();
  v5 = Logger.logObject.getter();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, v4, "Deinit", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

id sub_10003701C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  if (qword_100089548 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100038DC0(v7, qword_100089610);
  v8 = static os_log_type_t.debug.getter();

  v9 = Logger.logObject.getter();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_10003F5F4(a1, a2, &v20);
    _os_log_impl(&_mh_execute_header, v9, v8, "Manifest data source for app with bundle ID: %{public}s", v10, 0xCu);
    sub_100039204(v11);
  }

  v12 = *(v4 + OBJC_IVAR___BAManagedBackgroundAssetsInterface_helper);
  result = Helper.Proxy.manifestDataSource(forAppWithBundleID:)();
  if (!v3)
  {
    v14 = result;
    if (sub_100037210(a1, a2))
    {
      v17 = v16;

      if (v17)
      {
        v14 = 3;
      }
    }

    v18 = type metadata accessor for ManifestDataSourceResult();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR___BAManifestDataSourceResult_manifestDataSource] = v14;
    v21.receiver = v19;
    v21.super_class = v18;
    return objc_msgSendSuper2(&v21, "init");
  }

  return result;
}

char *sub_100037210(uint64_t a1, unint64_t a2)
{
  if (qword_100089548 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100038DC0(v5, qword_100089610);
  v6 = static os_log_type_t.debug.getter();

  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v18[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10003F5F4(a1, a2, v18);
    _os_log_impl(&_mh_execute_header, v7, v6, "Manifest in local cache for app with bundle ID: %{public}s", v8, 0xCu);
    sub_100039204(v9);
  }

  result = sub_100037780(a1, a2);
  if (!v2)
  {
    if (v11 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      v12 = result;
      v13 = v11;
      v14 = type metadata accessor for JSONDecoder();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      dispatch thunk of JSONDecoder.allowsJSON5.setter();
      sub_1000453B0(2, v20);
      v17 = v21;
      v22 = v20[0];
      v18[0] = v20[0];
      v18[1] = v20[1];
      v18[2] = v21;
      sub_100039138();
      dispatch thunk of JSONDecoder.decode<A>(_:from:configuration:)();

      sub_10003918C(v12, v13);
      sub_100039368(&v22, &qword_100089670, &unk_100059820);
      sub_1000391F4(v17);
      return v19;
    }
  }

  return result;
}

char *sub_100037540(uint64_t a1, unint64_t a2)
{
  if (qword_100089548 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100038DC0(v5, qword_100089610);
  v6 = static os_log_type_t.debug.getter();

  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10003F5F4(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v7, v6, "Manifest data from local cache for app with bundle ID: %{public}s", v8, 0xCu);
    sub_100039204(v9);
  }

  result = sub_100037780(a1, a2);
  if (!v2 && v11 >> 60 == 15)
  {
    v12 = result;
    type metadata accessor for ManagedBackgroundAssetsInterfaceError();
    sub_100039644(&qword_100089688, type metadata accessor for ManagedBackgroundAssetsInterfaceError);
    swift_allocError();
    v14 = v13;
    v15 = sub_100038D78(&qword_100089690, &qword_1000596A0);
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    swift_willThrow();
    return v12;
  }

  return result;
}

char *sub_100037780(uint64_t a1, unint64_t a2)
{
  v56 = a1;
  v51 = type metadata accessor for URL.DirectoryHint();
  v49 = *(v51 - 8);
  v3 = *(v49 + 64);
  (__chkstk_darwin)();
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(sub_100038D78(&qword_100089678, &qword_100059690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = &v44 - v6;
  v8 = type metadata accessor for URL();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  (__chkstk_darwin)();
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FilePath();
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  v13 = (__chkstk_darwin)();
  v47 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v44 - v15;
  v17 = sub_100038D78(&qword_100089680, &qword_100059698);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v44 - v22;
  if (qword_100089548 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100038DC0(v24, qword_100089610);
  v25 = static os_log_type_t.debug.getter();

  v26 = Logger.logObject.getter();

  v27 = os_log_type_enabled(v26, v25);
  v50 = v7;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v44 = v16;
    v45 = v23;
    v29 = v28;
    v7 = v11;
    v30 = swift_slowAlloc();
    v58 = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_10003F5F4(v56, a2, &v58);
    _os_log_impl(&_mh_execute_header, v26, v25, "Contents of manifest in local cache for app with bundle ID: %{public}s", v29, 0xCu);
    sub_100039204(v30);
    v11 = v7;

    v16 = v44;
    v23 = v45;
  }

  v31 = *(v55 + OBJC_IVAR___BAManagedBackgroundAssetsInterface_helper);
  v32 = v57;
  Helper.Proxy.path(toManifestInLocalCacheForAppWithBundleID:)();
  if (!v32)
  {
    sub_100039250(v23, v21, &qword_100089680, &qword_100059698);
    if ((*(v54 + 48))(v21, 1, v11) == 1)
    {
      sub_100039368(v23, &qword_100089680, &qword_100059698);
      v7 = 0;
      v23 = v21;
    }

    else
    {
      v34 = v54;
      (*(v54 + 32))(v16, v21, v11);
      v35 = *(v34 + 16);
      v36 = v47;
      v35(v47, v16, v11);
      v37 = v48;
      (*(v49 + 104))(v48, enum case for URL.DirectoryHint.notDirectory(_:), v51);
      v7 = v50;
      sub_100038A10(v36, v37, v50);
      v39 = v52;
      v38 = v53;
      if ((*(v52 + 48))(v7, 1, v53) == 1)
      {
        sub_100039368(v7, &qword_100089678, &qword_100059690);
        type metadata accessor for ManagedBackgroundAssetsInterfaceError();
        sub_100039644(&qword_100089688, type metadata accessor for ManagedBackgroundAssetsInterfaceError);
        swift_allocError();
        v41 = v40;
        v35(v40, v16, v11);
        v42 = sub_100038D78(&qword_100089690, &qword_1000596A0);
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
        swift_willThrow();
        (*(v54 + 8))(v16, v11);
        sub_100039368(v23, &qword_100089680, &qword_100059698);
        return v7;
      }

      v43 = v46;
      (*(v39 + 32))(v46, v7, v38);
      v7 = Data.init(contentsOf:options:)();
      (*(v39 + 8))(v43, v38);
      (*(v54 + 8))(v16, v11);
    }

    sub_100039368(v23, &qword_100089680, &qword_100059698);
  }

  return v7;
}

uint64_t sub_100037F60(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100089548 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100038DC0(v6, qword_100089610);
  v7 = static os_log_type_t.debug.getter();

  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_10003F5F4(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v8, v7, "Manifest request for App Store app with bundle ID: %{public}s", v9, 0xCu);
    sub_100039204(v10);
  }

  v11 = *(v3 + OBJC_IVAR___BAManagedBackgroundAssetsInterface_helper);
  return Helper.Proxy.manifestRequest(forAppStoreAppWithBundleID:)();
}

char *sub_100038254(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v61 = a1;
  v62 = a3;
  v6 = type metadata accessor for AssetPackHost();
  v60 = *(v6 - 8);
  v7 = *(v60 + 64);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for UUID();
  v51 = *(v53 - 8);
  v10 = *(v51 + 64);
  v11 = __chkstk_darwin(v53);
  v52 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v51 - v13;
  v14 = type metadata accessor for AssetPack();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100038D78(&qword_100089658, &qword_100059678);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v57 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v51 - v22;
  if (qword_100089548 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100038DC0(v24, qword_100089610);
  v25 = static os_log_type_t.debug.getter();

  v26 = Logger.logObject.getter();

  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    v55 = v23;
    v28 = v27;
    v29 = swift_slowAlloc();
    v54 = v17;
    v66 = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_10003F5F4(v61, a2, &v66);
    *(v28 + 12) = 2082;
    v30 = v62;
    *(v28 + 14) = sub_10003F5F4(v62, a4, &v66);
    _os_log_impl(&_mh_execute_header, v26, v25, "Internal version ID of asset pack with ID: %{public}s for app with bundle ID: %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    v17 = v54;

    v23 = v55;
  }

  else
  {

    v30 = v62;
  }

  v31 = v63;
  result = sub_100037210(v30, a4);
  if (!v31)
  {
    v63 = 0;
    p_align = &stru_100084FE8.align;
    if (result)
    {
      sub_100042348(v61, a2, result, v23);

      v34 = v57;
      sub_100039250(v23, v57, &qword_100089658, &qword_100059678);
      v35 = v59;
      if ((*(v58 + 48))(v34, 1, v59) == 1)
      {
        sub_100039368(v23, &qword_100089658, &qword_100059678);
      }

      else
      {
        sub_100038DF8(v34, v17);
        v36 = *(v35 + 48);
        v37 = v60;
        (*(v60 + 16))(v9, &v17[v36], v6);
        if ((*(v37 + 88))(v9, v6) == enum case for AssetPackHost.apple(_:))
        {
          (*(v60 + 96))(v9, v6);
          v38 = sub_100038D78(&qword_100089660, &unk_100059680);
          v39 = *&v9[*(v38 + 64)];
          v40 = v51;
          v41 = v56;
          v42 = v53;
          (*(v51 + 32))(v56, &v9[*(v38 + 48)], v53);
          v43 = *(v40 + 8);
          v43(v9, v42);
          v54 = v17;
          v55 = v23;
          v44 = *(v40 + 16);
          v45 = v52;
          v44(v52, v41, v42);
          v46 = type metadata accessor for AssetPackVersionIDsResult.VersionIDs();
          v47 = objc_allocWithZone(v46);
          v44(&v47[OBJC_IVAR___BAAssetPackVersionIdentifiers_versionID], v45, v42);
          *&v47[OBJC_IVAR___BAAssetPackVersionIdentifiers_internalVersionID] = UInt64._bridgeToObjectiveC()();
          v64.receiver = v47;
          v64.super_class = v46;
          v48 = objc_msgSendSuper2(&v64, "init");
          v43(v45, v42);
          v43(v56, v42);
          p_align = (&stru_100084FE8 + 24);
          sub_100038E5C(v54);
          sub_100039368(v55, &qword_100089658, &qword_100059678);
LABEL_14:
          v49 = type metadata accessor for AssetPackVersionIDsResult();
          v50 = objc_allocWithZone(v49);
          *&v50[OBJC_IVAR___BAAssetPackVersionIdentifiersResult_versionIDs] = v48;
          v65.receiver = v50;
          v65.super_class = v49;
          return objc_msgSendSuper2(&v65, *(p_align + 190));
        }

        sub_100038E5C(v17);
        sub_100039368(v23, &qword_100089658, &qword_100059678);
        (*(v60 + 8))(v9, v6);
      }
    }

    v48 = 0;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100038A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = (*(*(sub_100038D78(&qword_100089678, &qword_100059690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v28 = v25 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  (*(v13 + 16))(v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = String.init(validating:)();
  if (v17)
  {
    v18 = *(v8 + 16);
    v25[1] = v16;
    v27 = v7;
    v18(v11, a2, v7);
    v19 = type metadata accessor for URL();
    v25[0] = a2;
    v20 = v19;
    v21 = *(*(v19 - 8) + 56);
    v26 = a1;
    v22 = v29;
    v21(v28, 1, 1, v19);
    URL.init(filePath:directoryHint:relativeTo:)();
    (*(v8 + 8))(v25[0], v27);
    (*(v13 + 8))(v26, v12);
    return (v21)(v22, 0, 1, v20);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v13 + 8))(a1, v12);
    v24 = type metadata accessor for URL();
    return (*(*(v24 - 8) + 56))(v29, 1, 1, v24);
  }
}

uint64_t sub_100038D78(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100038DC0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100038DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPack();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038E5C(uint64_t a1)
{
  v2 = type metadata accessor for AssetPack();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100038EB8()
{
  v1 = v0;
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ManagedBackgroundAssetsInterfaceError();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000395E0(v1, v10);
  v11 = sub_100038D78(&qword_100089690, &qword_1000596A0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    return 0xD000000000000029;
  }

  (*(v3 + 32))(v6, v10, v2);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v13._object = 0x8000000100066570;
  v13._countAndFlagsBits = 0x1000000000000011;
  String.append(_:)(v13);
  sub_100039644(&qword_100089750, &type metadata accessor for FilePath);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x1000000000000027;
  v15._object = 0x8000000100066590;
  String.append(_:)(v15);
  v12 = v17[0];
  (*(v3 + 8))(v6, v2);
  return v12;
}

unint64_t sub_100039138()
{
  result = qword_100089668;
  if (!qword_100089668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089668);
  }

  return result;
}

uint64_t sub_10003918C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000391A0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000391A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000391F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100039204(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100039250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100038D78(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for ManagedBackgroundAssetsInterfaceError()
{
  result = qword_100089718;
  if (!qword_100089718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_100039304(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100039368(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100038D78(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000393DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100038D78(&qword_100089690, &qword_1000596A0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100039468(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100038D78(&qword_100089690, &qword_1000596A0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000394F8()
{
  sub_100039550();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100039550()
{
  if (!qword_100089728)
  {
    v0 = type metadata accessor for FilePath();
    if (!v1)
    {
      atomic_store(v0, &qword_100089728);
    }
  }
}

uint64_t sub_1000395E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedBackgroundAssetsInterfaceError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039644(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_100039768(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100039798@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000397C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1000398B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000398E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE007963696C6F50;
  v3 = 0xD000000000000011;
  v4 = 0x64616F6C6E776F64;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (v5)
    {
      v6 = 0x8000000100066150;
    }

    else
    {
      v6 = 0x8000000100066130;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0x64616F6C6E776F64;
    v6 = 0xEE007963696C6F50;
  }

  else if (a1 == 3)
  {
    v6 = 0x8000000100066180;
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = 0xEB000000006C7255;
    v7 = 0x64616F6C6E776F64;
  }

  v8 = 0x8000000100066180;
  v9 = 0xD00000000000001BLL;
  if (a2 != 3)
  {
    v9 = 0x64616F6C6E776F64;
    v8 = 0xEB000000006C7255;
  }

  if (a2 != 2)
  {
    v4 = v9;
    v2 = v8;
  }

  v10 = 0x8000000100066150;
  if (a2)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v10 = 0x8000000100066130;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v2;
  }

  if (v7 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100039A50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100041E8C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100039A90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x506E6F6973726576;
  v4 = 0xEF644963696C6275;
  if (v2 != 1)
  {
    v3 = 0x496E6F6973726576;
    v4 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4E6E6F6973726576;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00007265626D75;
  }

  v7 = 0x506E6F6973726576;
  v8 = 0xEF644963696C6275;
  if (*a2 != 1)
  {
    v7 = 0x496E6F6973726576;
    v8 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4E6E6F6973726576;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00007265626D75;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100039BBC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100039C7C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100039D28()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100039DE4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100041EC4(*a1);
  *a2 = result;
  return result;
}

void sub_100039E14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007265626D75;
  v4 = 0xEF644963696C6275;
  v5 = 0x506E6F6973726576;
  if (v2 != 1)
  {
    v5 = 0x496E6F6973726576;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4E6E6F6973726576;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100039E90()
{
  v1 = 0x506E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x496E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E6E6F6973726576;
  }
}

unint64_t sub_100039F08@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100041EC4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100039F48(uint64_t a1)
{
  v2 = sub_10003FE14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100039F84(uint64_t a1)
{
  v2 = sub_10003FE14();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100039FD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10003A04C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10003A0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001000666C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000666E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10003A1B4(uint64_t a1)
{
  v2 = sub_10003FE68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003A1F0(uint64_t a1)
{
  v2 = sub_10003FE68();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10003A238()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003A330()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10003A414()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10003A508@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100041F10(*a1);
  *a2 = result;
  return result;
}

void sub_10003A538(uint64_t *a1@<X8>)
{
  v2 = 0x64616F6C6E776F64;
  v3 = *v1;
  v4 = 0xEE007963696C6F50;
  v5 = 0x8000000100066180;
  v6 = 0xD00000000000001BLL;
  if (v3 != 3)
  {
    v6 = 0x64616F6C6E776F64;
    v5 = 0xEB000000006C7255;
  }

  if (v3 != 2)
  {
    v2 = v6;
    v4 = v5;
  }

  v7 = 0xD000000000000011;
  v8 = 0x8000000100066130;
  if (*v1)
  {
    v7 = 0xD000000000000013;
    v8 = 0x8000000100066150;
  }

  if (*v1 > 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v7;
    v9 = v8;
  }

  *a1 = v2;
  a1[1] = v9;
}

unint64_t sub_10003A5EC()
{
  v1 = 0x64616F6C6E776F64;
  v2 = *v0;
  v3 = 0xD00000000000001BLL;
  if (v2 != 3)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (v2 != 2)
  {
    v1 = v3;
  }

  v4 = 0xD000000000000011;
  if (*v0)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10003A69C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100041F10(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10003A6D0(uint64_t a1)
{
  v2 = sub_10003FDC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003A70C(uint64_t a1)
{
  v2 = sub_10003FDC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003A764()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x7475626972747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10003A7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100041F5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003A7D8(uint64_t a1)
{
  v2 = sub_10003FD6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003A814(uint64_t a1)
{
  v2 = sub_10003FD6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003A850()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 7107189;
  if (v1 != 5)
  {
    v3 = 1953722216;
  }

  v4 = 0x6F666E4972657375;
  if (v1 != 3)
  {
    v4 = 0x64616F6C6E776F64;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64616F6C6E776F64;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003A924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100042074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003A958(uint64_t a1)
{
  v2 = sub_10003FCB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003A994(uint64_t a1)
{
  v2 = sub_10003FCB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AssetPack.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AssetPack.userInfo.getter()
{
  v1 = *(v0 + 32);
  sub_10003AA44(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_10003AA44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003AA58(a1, a2);
  }

  return a1;
}

uint64_t sub_10003AA58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t AssetPack.description.getter()
{
  object = v0[2]._object;
  if (object >> 60 == 15)
  {
    _StringGuts.grow(_:)(51);
    v2._countAndFlagsBits = 0xD000000000000012;
    v2._object = 0x80000001000665F0;
    String.append(_:)(v2);
    String.append(_:)(*v0);
    v3._object = 0x8000000100066610;
    v3._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v3);
    countAndFlagsBits = v0[1]._countAndFlagsBits;
    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v4);

    v5._countAndFlagsBits = 0x6E6F697372657620;
    v5._object = 0xEA0000000000203ALL;
    String.append(_:)(v5);
    v19 = v0[1]._object;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 62;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
  }

  else
  {
    v8 = v0[2]._countAndFlagsBits;
    sub_10003AA58(v8, object);
    _StringGuts.grow(_:)(65);
    v9._countAndFlagsBits = 0xD000000000000012;
    v9._object = 0x80000001000665F0;
    String.append(_:)(v9);
    String.append(_:)(*v0);
    v10._object = 0x8000000100066610;
    v10._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v10);
    v20 = v0[1]._countAndFlagsBits;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0x6E6F697372657620;
    v12._object = 0xEA0000000000203ALL;
    String.append(_:)(v12);
    v21 = v0[1]._object;
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 0x6E69207265737520;
    v14._object = 0xEC000000203A6F66;
    String.append(_:)(v14);
    v15._countAndFlagsBits = Data.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 62;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    sub_10003918C(v8, object);
  }

  return 0;
}

uint64_t sub_10003AD5C()
{
  v0 = type metadata accessor for Logger();
  sub_100039304(v0, qword_100089758);
  sub_100038DC0(v0, qword_100089758);
  return Logger.init(subsystem:category:)();
}

uint64_t AssetPack.init(id:downloadSize:version:downloadPolicy:url:appGroupID:appleID:appleVersionID:appleInternalVersionID:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, objc_class *a3@<X2>, objc_class *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, os_log_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v151 = a5;
  v152 = a6;
  v147 = a2;
  v148 = a3;
  v146 = a1;
  v139 = a7;
  v140 = a12;
  v153 = a10;
  v154 = a11;
  v138 = type metadata accessor for UUID();
  v150 = *(v138 - 8);
  v15 = v150[8];
  v16 = __chkstk_darwin(v138);
  v18 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v133 - v20;
  v22 = __chkstk_darwin(v19);
  v142 = &v133 - v23;
  __chkstk_darwin(v22);
  v141 = &v133 - v24;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v155 = v25;
  v156 = v26;
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v30 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v133 - v31;
  v33 = type metadata accessor for DownloadPolicy();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v37 = __chkstk_darwin(v36);
  v40 = &v133 - v39;
  v143 = a8;
  v144 = v37;
  v149 = a4;
  v145 = v34;
  if (a8)
  {
    v137 = a9;
    v41 = qword_100089550;

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100038DC0(v42, qword_100089758);
    v43 = static os_log_type_t.debug.getter();
    (*(v34 + 16))(v40, v151, v33);
    v44 = v156;
    v45 = v32;
    (*(v156 + 16))(v32, v152, v155);
    v46 = v150;
    v47 = v150[2];
    v48 = v138;
    v47(v141, v153, v138);
    v47(v142, v154, v48);

    v49 = v147;

    v50 = Logger.logObject.getter();

    v136 = v43;
    if (os_log_type_enabled(v50, v43))
    {
      v51 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v157[0] = v135;
      *v51 = 136448258;
      *(v51 + 4) = sub_10003F5F4(v146, v49, v157);
      *(v51 + 12) = 2048;
      *(v51 + 14) = v148;
      *(v51 + 22) = 2048;
      *(v51 + 24) = v149;
      *(v51 + 32) = 2082;
      sub_100040E38(&qword_100089770, &type metadata accessor for DownloadPolicy);
      v134 = v50;
      v52 = v144;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v145 + 8))(v40, v52);
      v56 = v45;
      v57 = sub_10003F5F4(v53, v55, v157);

      *(v51 + 34) = v57;
      *(v51 + 42) = 2082;
      sub_100040E38(&qword_100089778, &type metadata accessor for URL);
      v58 = v155;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v44 + 8))(v56, v58);
      v62 = sub_10003F5F4(v59, v61, v157);

      *(v51 + 44) = v62;
      *(v51 + 52) = 2082;
      v63 = v139;
      v64 = sub_10003F5F4(v139, v143, v157);

      *(v51 + 54) = v64;
      *(v51 + 62) = 2082;
      sub_100040E38(&qword_100089780, &type metadata accessor for UUID);
      v65 = v141;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v69 = v46[1];
      v70 = v65;
      v71 = v148;
      v69(v70, v48);
      v72 = sub_10003F5F4(v66, v68, v157);

      *(v51 + 64) = v72;
      *(v51 + 72) = 2082;
      v73 = v142;
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v69(v73, v48);
      v46 = v150;
      v77 = sub_10003F5F4(v74, v76, v157);

      *(v51 + 74) = v77;
      v78 = v147;
      *(v51 + 82) = 2048;
      v79 = v140;
      *(v51 + 84) = v140;
      v80 = v134;
      _os_log_impl(&_mh_execute_header, v134, v136, "Init ID: %{public}s download size: %ld version: %ld download policy: %{public}s URL: %{public}s app group ID: %{public}s Apple ID: %{public}s Apple version ID: %{public}s Apple internal version ID: %llu", v51, 0x5Cu);
      swift_arrayDestroy();

      v81 = v149;
      v83 = v145;
      v82 = v146;
      v84 = v58;
      v85 = v144;
    }

    else
    {

      v118 = v46[1];
      v118(v142, v48);
      v118(v141, v48);
      v84 = v155;
      (*(v44 + 8))(v45, v155);
      v83 = v145;
      v119 = v40;
      v85 = v144;
      (*(v145 + 8))(v119, v144);
      v78 = v49;
      v63 = v139;
      v79 = v140;
      v71 = v148;
      v81 = v149;
      v82 = v146;
    }

    a9 = v137;
  }

  else
  {
    v86 = v38;
    if (qword_100089550 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_100038DC0(v87, qword_100089758);
    v88 = static os_log_type_t.debug.getter();
    (*(v34 + 16))(v86, v151, v33);
    v89 = v30;
    (*(v156 + 16))(v30, v152, v155);
    v90 = v150[2];
    v91 = v21;
    v92 = v21;
    v48 = v138;
    v90(v92, v153, v138);
    v90(v18, v154, v48);
    v78 = v147;

    v93 = Logger.logObject.getter();

    LODWORD(v142) = v88;
    if (os_log_type_enabled(v93, v88))
    {
      v94 = v91;
      v95 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v157[0] = v141;
      *v95 = 136448002;
      *(v95 + 4) = sub_10003F5F4(v146, v78, v157);
      *(v95 + 12) = 2048;
      v96 = v149;
      *(v95 + 14) = v148;
      *(v95 + 22) = 2048;
      *(v95 + 24) = v96;
      *(v95 + 32) = 2082;
      sub_100040E38(&qword_100089770, &type metadata accessor for DownloadPolicy);
      v137 = v93;
      v97 = v144;
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v99;
      (*(v145 + 8))(v86, v97);
      v101 = sub_10003F5F4(v98, v100, v157);

      *(v95 + 34) = v101;
      *(v95 + 42) = 2082;
      sub_100040E38(&qword_100089778, &type metadata accessor for URL);
      v102 = v155;
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v104;
      (*(v156 + 8))(v89, v102);
      v106 = sub_10003F5F4(v103, v105, v157);

      *(v95 + 44) = v106;
      *(v95 + 52) = 2082;
      sub_100040E38(&qword_100089780, &type metadata accessor for UUID);
      v107 = v94;
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v110 = v109;
      v111 = v150[1];
      v111(v107, v48);
      v112 = sub_10003F5F4(v108, v110, v157);

      *(v95 + 54) = v112;
      *(v95 + 62) = 2082;
      v113 = dispatch thunk of CustomStringConvertible.description.getter();
      v115 = v114;
      v111(v18, v48);
      v116 = sub_10003F5F4(v113, v115, v157);

      *(v95 + 64) = v116;
      v78 = v147;
      *(v95 + 72) = 2048;
      v79 = v140;
      *(v95 + 74) = v140;
      v117 = v137;
      _os_log_impl(&_mh_execute_header, v137, v142, "Init ID: %{public}s download size: %ld version: %ld download policy: %{public}s URL: %{public}s Apple ID: %{public}s Apple version ID: %{public}s Apple internal version ID: %llu", v95, 0x52u);
      swift_arrayDestroy();

      v71 = v148;

      v81 = v149;
      v46 = v150;
      v83 = v145;
      v82 = v146;
      v63 = v139;
      v84 = v155;
      v85 = v144;
    }

    else
    {

      v120 = v18;
      v46 = v150;
      v121 = v150[1];
      v121(v120, v48);
      v121(v91, v48);
      v84 = v155;
      (*(v156 + 8))(v89, v155);
      v85 = v144;
      v83 = v145;
      (*(v145 + 8))(v86, v144);
      v63 = v139;
      v79 = v140;
      v71 = v148;
      v81 = v149;
      v82 = v146;
    }
  }

  a9->isa = v82;
  a9[1].isa = v78;
  a9[2].isa = v71;
  a9[3].isa = v81;
  *&a9[4].isa = xmmword_100059790;
  v122 = type metadata accessor for AssetPack();
  (*(v83 + 32))(a9 + v122[8], v151, v85);
  (*(v156 + 32))(a9 + v122[9], v152, v84);
  v123 = (a9 + v122[10]);
  v124 = v143;
  *v123 = v63;
  v123[1] = v124;
  *(&a9->isa + v122[11]) = 1;
  v125 = a9 + v122[12];
  v126 = sub_100038D78(&qword_100089660, &unk_100059680);
  v127 = *(v126 + 48);
  v128 = *(v126 + 64);
  v129 = v46[4];
  v129(v125, v153, v48);
  v129(&v125[v127], v154, v48);
  *&v125[v128] = v79;
  v130 = enum case for AssetPackHost.apple(_:);
  v131 = type metadata accessor for AssetPackHost();
  return (*(*(v131 - 8) + 104))(v125, v130, v131);
}

uint64_t type metadata accessor for AssetPack()
{
  result = qword_1000898E8;
  if (!qword_1000898E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetPack.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v186 = a3;
  v198 = type metadata accessor for DecodingError();
  v197 = *(v198 - 8);
  v5 = *(v197 + 64);
  __chkstk_darwin(v198);
  v199 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100038D78(&qword_100089788, &qword_1000597F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v189 = &v177 - v9;
  v190 = type metadata accessor for AssetPackHost();
  v185 = *(v190 - 8);
  v10 = *(v185 + 64);
  __chkstk_darwin(v190);
  v184 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DownloadPolicy();
  v208 = *(v12 - 8);
  v13 = *(v208 + 64);
  __chkstk_darwin(v12);
  v195 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_100038D78(&qword_100089790, &qword_1000597F8);
  v205 = *(v206 - 8);
  v15 = *(v205 + 64);
  __chkstk_darwin(v206);
  *&v211[4] = &v177 - v16;
  v182 = type metadata accessor for UUID();
  v179 = *(v182 - 8);
  v17 = v179[8];
  v18 = __chkstk_darwin(v182);
  v180 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v181 = &v177 - v20;
  v209 = type metadata accessor for URL();
  v207 = *(v209 - 8);
  v21 = *(v207 + 64);
  v22 = __chkstk_darwin(v209);
  v192 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v183 = &v177 - v24;
  v188 = sub_100038D78(&qword_100089798, &qword_100059800);
  v187 = *(v188 - 8);
  v25 = *(v187 + 64);
  __chkstk_darwin(v188);
  v191 = &v177 - v26;
  v194 = sub_100038D78(&qword_1000897A0, &qword_100059808);
  v193 = *(v194 - 8);
  v27 = *(v193 + 64);
  __chkstk_darwin(v194);
  v196 = &v177 - v28;
  v201 = sub_100038D78(&qword_1000897A8, &qword_100059810);
  v200 = *(v201 - 8);
  v29 = *(v200 + 64);
  __chkstk_darwin(v201);
  v204 = &v177 - v30;
  v203 = sub_100038D78(&qword_1000897B0, &qword_100059818);
  v202 = *(v203 - 8);
  v31 = *(v202 + 64);
  __chkstk_darwin(v203);
  v210 = &v177 - v32;
  v213 = type metadata accessor for AssetPack();
  v33 = *(*(v213 - 1) + 64);
  __chkstk_darwin(v213);
  v215 = (&v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100089550 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = sub_100038DC0(v35, qword_100089758);
  v37 = static os_log_type_t.debug.getter();
  sub_10003FF68(a1, &v220);
  v222 = *a2;
  v39 = *(a2 + 4);
  v38 = *(a2 + 5);
  sub_10003FB9C(&v222, &v219);
  sub_10003FC0C(v39);
  v40 = Logger.logObject.getter();
  sub_100039368(&v222, &qword_100089670, &unk_100059820);
  sub_1000391F4(v39);
  *v211 = v37;
  v41 = os_log_type_enabled(v40, v37);
  v214 = v12;
  v216 = a1;
  v217 = v39;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v218 = v178;
    *v42 = 136446466;
    v43 = v221;
    v44 = sub_10003FC70(&v220, v221);
    v45 = *(*(v43 - 8) + 64);
    __chkstk_darwin(v44);
    (*(v47 + 16))(&v177 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    v48 = String.init<A>(describing:)();
    v50 = v49;
    v51 = v36;
    sub_100039204(&v220);
    v52 = sub_10003F5F4(v48, v50, &v218);

    *(v42 + 4) = v52;
    *(v42 + 12) = 2082;
    sub_10003FB9C(&v222, &v219);
    v53 = sub_10003FC0C(v39);
    v54 = AssetPackManifest.DecodingConfiguration.description.getter(v53);
    v56 = v55;
    sub_100039368(&v222, &qword_100089670, &unk_100059820);
    sub_1000391F4(v39);
    v57 = sub_10003F5F4(v54, v56, &v218);
    a1 = v216;

    *(v42 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v40, v211[0], "Init from: %{public}s configuration: %{public}s", v42, 0x16u);
    swift_arrayDestroy();

    v58 = v38;
  }

  else
  {

    sub_100039204(&v220);
    v58 = v38;
    v51 = v36;
  }

  v59 = *(a2 + 3);
  if (v59 > 5)
  {
    v73 = static os_log_type_t.fault.getter();
    sub_10003FB9C(&v222, &v220);
    v60 = v217;
    sub_10003FC0C(v217);
    v74 = Logger.logObject.getter();
    sub_100039368(&v222, &qword_100089670, &unk_100059820);
    sub_1000391F4(v60);
    if (os_log_type_enabled(v74, v73))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v212 = v51;
      v77 = v76;
      v220 = v76;
      *v75 = 136315138;
      v78 = MBAManifestDataSource.description.getter();
      v80 = sub_10003F5F4(v78, v79, &v220);
      v60 = v217;

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v74, v73, "The manifest data source “%s” is unknown.", v75, 0xCu);
      sub_100039204(v77);
    }

    sub_10003FC1C();
    swift_allocError();
    *v81 = v59;
    *(v81 + 8) = 0;
    *(v81 + 16) = 4;
    swift_willThrow();
    v67 = 0;
    LODWORD(v210) = 0;
    *v211 = 0;
    LODWORD(v212) = 0;
    goto LABEL_22;
  }

  v60 = v217;
  if (((1 << v59) & 0x34) != 0)
  {
    v204 = a2;
    v61 = static os_log_type_t.info.getter();
    v62 = Logger.logObject.getter();
    if (os_log_type_enabled(v62, v61))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v62, v61, "Decoding an asset pack using a local-cache (third-party-server/development-override) configuration…", v63, 2u);
    }

    v64 = a1[4];
    sub_10003FC70(a1, a1[3]);
    sub_10003FCB4();
    v65 = v212;
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    if (v65)
    {
      v67 = 0;
      LODWORD(v210) = 0;
      *v211 = 0;
      LODWORD(v212) = 0;
      goto LABEL_22;
    }

    LOBYTE(v220) = 0;
    v66 = KeyedDecodingContainer.decode(_:forKey:)();
    v100 = v215;
    *v215 = v66;
    v100[1] = v101;
    LOBYTE(v220) = 1;
    v100[2] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v220) = 2;
    v100[3] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v220) = 3;
    KeyedDecodingContainer.decodeUserInfo(forKey:)();
    v105 = 0;
    v110 = objc_opt_self();
    sub_100038D78(&qword_1000897F0, &qword_100059840);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v220 = 0;
    v112 = [v110 dataWithJSONObject:isa options:8 error:&v220];

    v113 = v220;
    a2 = v204;
    if (v112)
    {
      v114 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;

      v117 = v215;
      v215[4] = v114;
      v117[5] = v116;
      goto LABEL_43;
    }

    v125 = v113;
    v126 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v212 = 0;
    v127 = v215;
    v128 = v206;
    v220 = v126;
    swift_errorRetain();
    sub_100038D78(&qword_1000897C8, &qword_100059830);
    v106 = v198;
    if (swift_dynamicCast())
    {
      if ((*(v197 + 88))(v199, v106) == enum case for DecodingError.keyNotFound(_:))
      {

        v107 = v199;
        (*(v197 + 96))(v199, v106);
        v108 = *(sub_100038D78(&qword_1000897D0, &qword_100059838) + 48);
        *(v127 + 2) = xmmword_100059790;
        v109 = type metadata accessor for DecodingError.Context();
        (*(*(v109 - 8) + 8))(v107 + v108, v109);
        sub_100039204(v107);

        v105 = v212;
LABEL_43:
        LOBYTE(v220) = 4;
        sub_100040E38(&qword_1000897D8, &type metadata accessor for DownloadPolicy);
        v118 = v195;
        v119 = v214;
        v120 = *&v211[4];
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        if (v105)
        {
          (*(v205 + 8))(v120, v206);
          *v211 = 0;
          LODWORD(v212) = 0;
          v67 = 1;
          LODWORD(v210) = 1;
          goto LABEL_22;
        }

        v122 = v215;
        (*(v208 + 32))(v215 + v213[8], v118, v119);
        LOBYTE(v220) = 5;
        sub_100040E38(&qword_1000897E0, &type metadata accessor for URL);
        v123 = v192;
        v124 = v209;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v207 + 32))(v122 + v213[9], v123, v124);
        *(v122 + v213[10]) = v222;
        LOBYTE(v219) = 6;
        sub_10003FB9C(&v222, &v220);
        sub_100040E38(&qword_1000897E8, &type metadata accessor for AssetPackHost);
        v130 = v189;
        v131 = v190;
        v132 = v206;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        (*(v205 + 8))(v120, v132);
        v135 = v185;
        v214 = *(v185 + 48);
        if ((v214)(v130, 1, v131) == 1)
        {
          v136 = v184;
          (*(v135 + 104))(v184, enum case for AssetPackHost.thirdParty(_:), v131);
          if ((v214)(v130, 1, v131) != 1)
          {
            sub_100039368(v130, &qword_100089788, &qword_1000597F0);
          }
        }

        else
        {
          v136 = v184;
          (*(v135 + 32))(v184, v130, v131);
        }

        v138 = v213;
        v139 = v215;
        (*(v135 + 32))(v215 + v213[12], v136, v131);
        sub_100039368(&v222, &qword_100089670, &unk_100059820);
LABEL_57:
        sub_1000391F4(v217);
        *(v139 + v138[11]) = a2[16];
        sub_10003FD08(v139, v186);
        sub_100039204(a1);
        return sub_100038E5C(v139);
      }

      (*(v205 + 8))(*&v211[4], v128);
      (*(v197 + 8))(v199, v106);
    }

    else
    {
      (*(v205 + 8))(*&v211[4], v128);
    }

    LODWORD(v210) = 0;
    *v211 = 0;
    LODWORD(v212) = 0;
    v67 = 1;
LABEL_22:
    v82 = static os_log_type_t.error.getter();
    sub_10003FB9C(&v222, &v220);
    sub_10003FC0C(v60);
    swift_errorRetain();
    v83 = Logger.logObject.getter();
    sub_100039368(&v222, &qword_100089670, &unk_100059820);
    sub_1000391F4(v60);

    if (os_log_type_enabled(v83, v82))
    {
      v84 = swift_slowAlloc();
      LODWORD(v206) = v67;
      v85 = v84;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v219 = v87;
      *v85 = 136446466;
      sub_10003FB9C(&v222, &v220);
      v88 = sub_10003FC0C(v217);
      v89 = AssetPackManifest.DecodingConfiguration.description.getter(v88);
      v91 = v90;
      sub_100039368(&v222, &qword_100089670, &unk_100059820);
      sub_1000391F4(v217);
      v92 = sub_10003F5F4(v89, v91, &v219);

      *(v85 + 4) = v92;
      *(v85 + 12) = 2114;
      swift_errorRetain();
      v93 = _swift_stdlib_bridgeErrorToNSError();
      *(v85 + 14) = v93;
      *v86 = v93;
      _os_log_impl(&_mh_execute_header, v83, v82, "An asset pack couldn’t be decoded with the configuration “%{public}s”: %{public}@", v85, 0x16u);
      sub_100039368(v86, &qword_100089698, &qword_1000596A8);
      v60 = v217;

      sub_100039204(v87);
      v94 = v215;

      v67 = v206;
    }

    else
    {

      v94 = v215;
    }

    swift_willThrow();
    sub_100039368(&v222, &qword_100089670, &unk_100059820);
    sub_1000391F4(v60);
    result = sub_100039204(v216);
    v97 = v213;
    v96 = v214;
    if (v67)
    {
      v98 = *(v94 + 1);

      if (!v210)
      {
        goto LABEL_27;
      }
    }

    else if (!v210)
    {
LABEL_27:
      if (*v211)
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }

    result = sub_10003918C(*(v94 + 4), *(v94 + 5));
    if (*v211)
    {
LABEL_28:
      result = (*(v208 + 8))(&v94[v97[8]], v96);
      if (!*&v211[4])
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!*&v211[4])
    {
LABEL_29:
      if (!v212)
      {
        return result;
      }

LABEL_35:
      v99 = *&v94[v97[10] + 8];
    }

LABEL_34:
    result = (*(v207 + 8))(&v94[v97[9]], v209);
    if (!v212)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (((1 << v59) & 3) != 0)
  {
    v68 = static os_log_type_t.info.getter();
    v69 = Logger.logObject.getter();
    if (os_log_type_enabled(v69, v68))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v69, v68, "Decoding an asset pack using an App Store (TestFlight) configuration…", v70, 2u);
    }

    v71 = a1[4];
    sub_10003FC70(a1, a1[3]);
    sub_10003FD6C();
    v72 = v212;
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    if (v72)
    {
      v67 = 0;
      LODWORD(v210) = 0;
      *v211 = 0;
      LODWORD(v212) = 0;
      v60 = v217;
      goto LABEL_22;
    }

    LOBYTE(v220) = 2;
    sub_10003FDC0();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v220) = 3;
    v102 = KeyedDecodingContainer.decode(_:forKey:)();
    v103 = v215;
    *v215 = v102;
    v103[1] = v104;
    LOBYTE(v220) = 1;
    v103[2] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v220) = 0;
    sub_10003FE14();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v220) = 0;
    v121 = KeyedDecodingContainer.decode(_:forKey:)();
    v129 = v215;
    v215[3] = v121;
    *(v129 + 2) = xmmword_100059790;
    LOBYTE(v220) = 2;
    sub_10003FE68();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v220) = 0;
    v133 = KeyedDecodingContainer.decode(_:forKey:)();
    v177 = v58;
    if (v133 == 0x6169746E65737365 && v134 == 0xE90000000000006CLL)
    {
      v137 = v215;
    }

    else
    {
      v137 = v215;
      v140 = v133;
      v141 = v134;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v140 == 0x637465662D657270 && v141 == 0xE900000000000068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          LOBYTE(v220) = 1;
          v148 = KeyedDecodingContainer.decode(_:forKey:)();
          v145 = v148;
          v144 = v149;
          if (v148 == 0x6E692D7473726966 && v149 == 0xED00006C6C617473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v146 = v137 + v213[8];
            static DownloadPolicy.InstallationEventTypes.firstInstallation.getter();
          }

          else if (v145 == 0x657461647075 && v144 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v146 = v137 + v213[8];
            static DownloadPolicy.InstallationEventTypes.subsequentUpdate.getter();
          }

          else
          {
            if ((v145 != 0xD000000000000017 || 0x80000001000666A0 != v144) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
LABEL_99:
              sub_10003FC1C();
              swift_allocError();
              *v166 = v145;
              *(v166 + 8) = v144;
              v67 = 1;
              *(v166 + 16) = 1;
              swift_willThrow();
              (*(v187 + 8))(v191, v188);
              (*(v193 + 8))(v196, v194);
              (*(v200 + 8))(v204, v201);
              (*(v202 + 8))(v210, v203);
              *v211 = 0;
              LODWORD(v212) = 0;
              goto LABEL_69;
            }

            v146 = v137 + v213[8];
            sub_100038D78(&qword_100089820, &qword_100059848);
            v162 = *(type metadata accessor for DownloadPolicy.InstallationEventTypes() - 8);
            v163 = *(v162 + 72);
            v164 = (*(v162 + 80) + 32) & ~*(v162 + 80);
            v165 = swift_allocObject();
            *(v165 + 1) = xmmword_1000597A0;
            static DownloadPolicy.InstallationEventTypes.firstInstallation.getter();
            static DownloadPolicy.InstallationEventTypes.subsequentUpdate.getter();
            v220 = v165;
            sub_100040E38(&qword_100089828, &type metadata accessor for DownloadPolicy.InstallationEventTypes);
            sub_100038D78(&qword_100089830, &qword_100059850);
            sub_10003FEBC();
            dispatch thunk of SetAlgebra.init<A>(_:)();
          }

          v147 = &enum case for DownloadPolicy.prefetch(_:);
        }

        else
        {
          if ((v140 != 0x6E616D65642D6E6FLL || v141 != 0xE900000000000064) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            sub_10003FC1C();
            swift_allocError();
            *v161 = v140;
            *(v161 + 8) = v141;
            *(v161 + 16) = 0;
            swift_willThrow();
            (*(v187 + 8))(v191, v188);
            (*(v193 + 8))(v196, v194);
            (*(v200 + 8))(v204, v201);
            (*(v202 + 8))(v210, v203);
            *v211 = 0;
            LODWORD(v212) = 0;
            v67 = 1;
LABEL_69:
            LODWORD(v210) = 1;
LABEL_70:
            v60 = v217;
            goto LABEL_22;
          }

          v146 = v137 + v213[8];
          v147 = &enum case for DownloadPolicy.onDemand(_:);
        }

LABEL_64:
        (*(v208 + 104))(v146, *v147, v214);
        LOBYTE(v220) = 4;
        sub_100040E38(&qword_1000897E0, &type metadata accessor for URL);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v207 + 32))(v137 + v213[9], v183, v209);
        LOBYTE(v220) = 0;
        sub_100040E38(&qword_100089818, &type metadata accessor for UUID);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        LOBYTE(v220) = 1;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        LOBYTE(v220) = 2;
        v150 = KeyedDecodingContainer.decode(_:forKey:)();
        v152 = v151;

        v212 = sub_10003E49C(v150, v152);
        if ((v153 & 1) == 0)
        {

          (*(v187 + 8))(v191, v188);
          (*(v193 + 8))(v196, v194);
          (*(v200 + 8))(v204, v201);
          (*(v202 + 8))(v210, v203);
          v167 = v213;
          v168 = v137;
          *(v137 + v213[10]) = v222;
          v169 = v137 + v167[12];
          v170 = sub_100038D78(&qword_100089660, &unk_100059680);
          v171 = *(v170 + 48);
          v214 = *(v170 + 64);
          v172 = v179[4];
          v173 = v182;
          v172(v169, v181, v182);
          v172(&v169[v171], v180, v173);
          v139 = v168;
          *&v169[v214] = v212;
          v138 = v167;
          (*(v185 + 104))(v169, enum case for AssetPackHost.apple(_:), v190);
          a1 = v216;
          goto LABEL_57;
        }

        sub_10003FC1C();
        swift_allocError();
        *v154 = v150;
        *(v154 + 8) = v152;
        *(v154 + 16) = 2;
        swift_willThrow();
        v155 = v179[1];
        v156 = v182;
        v155(v180, v182);
        v155(v181, v156);
        (*(v187 + 8))(v191, v188);
        (*(v193 + 8))(v196, v194);
        (*(v200 + 8))(v204, v201);
        (*(v202 + 8))(v210, v203);
        LODWORD(v212) = 0;
        v67 = 1;
        LODWORD(v210) = 1;
        *v211 = 0x100000001;
        goto LABEL_70;
      }
    }

    LOBYTE(v220) = 1;
    v142 = KeyedDecodingContainer.decode(_:forKey:)();
    v144 = v143;
    v145 = v142;
    if (v142 == 0x6E692D7473726966 && v143 == 0xED00006C6C617473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v146 = v137 + v213[8];
      static DownloadPolicy.InstallationEventTypes.firstInstallation.getter();
LABEL_63:
      v147 = &enum case for DownloadPolicy.essential(_:);
      goto LABEL_64;
    }

    if (v145 == 0x657461647075 && v144 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v146 = v137 + v213[8];
      static DownloadPolicy.InstallationEventTypes.subsequentUpdate.getter();
      goto LABEL_63;
    }

    if (v145 == 0xD000000000000017 && 0x80000001000666A0 == v144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v146 = v137 + v213[8];
      sub_100038D78(&qword_100089820, &qword_100059848);
      v157 = *(type metadata accessor for DownloadPolicy.InstallationEventTypes() - 8);
      v158 = *(v157 + 72);
      v159 = (*(v157 + 80) + 32) & ~*(v157 + 80);
      v160 = swift_allocObject();
      *(v160 + 1) = xmmword_1000597A0;
      static DownloadPolicy.InstallationEventTypes.firstInstallation.getter();
      static DownloadPolicy.InstallationEventTypes.subsequentUpdate.getter();
      v220 = v160;
      sub_100040E38(&qword_100089828, &type metadata accessor for DownloadPolicy.InstallationEventTypes);
      sub_100038D78(&qword_100089830, &qword_100059850);
      sub_10003FEBC();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      goto LABEL_63;
    }

    goto LABEL_99;
  }

  v174 = static os_log_type_t.info.getter();
  v175 = Logger.logObject.getter();
  if (os_log_type_enabled(v175, v174))
  {
    v176 = swift_slowAlloc();
    *v176 = 0;
    _os_log_impl(&_mh_execute_header, v175, v174, "Decoding an asset pack using an App Review configuration…", v176, 2u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10003E49C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_100040020(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t AssetPack.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_100038D78(&qword_100089840, &qword_100059858);
  v80 = *(v4 - 8);
  v5 = *(v80 + 64);
  __chkstk_darwin(v4);
  v7 = &v74 - v6;
  v75 = type metadata accessor for AssetPack();
  v8 = *(*(v75 - 8) + 64);
  v9 = __chkstk_darwin(v75);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v74 - v12;
  if (qword_100089550 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100038DC0(v14, qword_100089758);
  v16 = static os_log_type_t.debug.getter();
  sub_10003FF68(a1, v84);
  v81 = v15;
  v17 = Logger.logObject.getter();
  v18 = os_log_type_enabled(v17, v16);
  v78 = v7;
  v79 = v4;
  v76 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v82 = v20;
    *v19 = 136446210;
    v21 = v85;
    v22 = sub_10003FC70(v84, v85);
    v74 = v2;
    v23 = *(*(v21 - 8) + 64);
    __chkstk_darwin(v22);
    (*(v25 + 16))(&v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = String.init<A>(describing:)();
    v28 = v27;
    v2 = v74;
    sub_100039204(v84);
    v29 = sub_10003F5F4(v26, v28, &v82);

    *(v19 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v17, v16, "Encode to: %{public}s", v19, 0xCu);
    sub_100039204(v20);
  }

  else
  {

    sub_100039204(v84);
  }

  v30 = static os_log_type_t.info.getter();
  sub_10003FD08(v2, v13);
  v31 = Logger.logObject.getter();
  if (os_log_type_enabled(v31, v30))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v84[0] = v33;
    *v32 = 136446210;
    v34 = AssetPack.description.getter();
    v36 = v35;
    sub_100038E5C(v13);
    v37 = sub_10003F5F4(v34, v36, v84);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v30, "Encoding the asset pack “%{public}s”…", v32, 0xCu);
    sub_100039204(v33);
  }

  else
  {

    sub_100038E5C(v13);
  }

  v38 = v79;
  v39 = v76[4];
  sub_10003FC70(v76, v76[3]);
  sub_10003FCB4();
  v40 = v78;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v41 = *v2;
  v42 = v2[1];
  LOBYTE(v84[0]) = 0;
  v43 = v77;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v43)
  {
    (*(v80 + 8))(v40, v38);
  }

  else
  {
    v44 = v2[2];
    LOBYTE(v84[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v45 = v2[3];
    LOBYTE(v84[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v58 = v2[5];
    if (v58 >> 60 == 15)
    {
      goto LABEL_17;
    }

    v63 = v2;
    v64 = v2[4];
    v65 = objc_opt_self();
    sub_10003AA58(v64, v58);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v84[0] = 0;
    v67 = [v65 JSONObjectWithData:isa options:8 error:v84];

    if (v67)
    {
      v68 = v84[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        v69 = v40;
        v70 = v82;
        v71 = v83;
        v84[0] = v82;
        v84[1] = v83;
        LOBYTE(v82) = 3;
        sub_10003FFCC();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        sub_10003918C(v64, v58);
        sub_1000391A0(v70, v71);
        v40 = v69;
LABEL_17:
        v59 = v75;
        v60 = *(v75 + 32);
        LOBYTE(v84[0]) = 4;
        type metadata accessor for DownloadPolicy();
        sub_100040E38(&qword_100089848, &type metadata accessor for DownloadPolicy);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v61 = *(v59 + 36);
        LOBYTE(v84[0]) = 5;
        type metadata accessor for URL();
        sub_100040E38(&qword_100089850, &type metadata accessor for URL);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v62 = *(v59 + 48);
        LOBYTE(v84[0]) = 6;
        type metadata accessor for AssetPackHost();
        sub_100040E38(&qword_100089858, &type metadata accessor for AssetPackHost);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        return (*(v80 + 8))(v40, v38);
      }

      sub_10003FC1C();
      swift_allocError();
      *v73 = v64;
      *(v73 + 8) = v58;
      *(v73 + 16) = 3;
      swift_willThrow();
    }

    else
    {
      v72 = v84[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10003918C(v64, v58);
    }

    (*(v80 + 8))(v40, v38);
    v2 = v63;
  }

  v46 = static os_log_type_t.error.getter();
  sub_10003FD08(v2, v11);
  swift_errorRetain();
  v47 = Logger.logObject.getter();

  if (os_log_type_enabled(v47, v46))
  {
    v48 = swift_slowAlloc();
    v49 = v11;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v84[0] = v51;
    *v48 = 136446466;
    v52 = AssetPack.description.getter();
    v54 = v53;
    sub_100038E5C(v49);
    v55 = sub_10003F5F4(v52, v54, v84);

    *(v48 + 4) = v55;
    *(v48 + 12) = 2114;
    swift_errorRetain();
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 14) = v56;
    *v50 = v56;
    _os_log_impl(&_mh_execute_header, v47, v46, "The asset pack “%{public}s” couldn’t be encoded: %{public}@", v48, 0x16u);
    sub_100039368(v50, &qword_100089698, &qword_1000596A8);

    sub_100039204(v51);
  }

  else
  {

    sub_100038E5C(v11);
  }

  return swift_willThrow();
}

uint64_t AssetPack.hash(into:)()
{
  v1 = v0;
  if (qword_100089550 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100038DC0(v2, qword_100089758);
  v3 = static os_log_type_t.debug.getter();
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10003F5F4(0x2972656873614828, 0xE800000000000000, &v10);
    _os_log_impl(&_mh_execute_header, v4, v3, "Hash into: %{public}s", v5, 0xCu);
    sub_100039204(v6);
  }

  v7 = *v1;
  v8 = v1[1];

  return String.hash(into:)();
}

Swift::Int AssetPack.hashValue.getter()
{
  Hasher.init(_seed:)();
  AssetPack.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003F334@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  return AssetPack.init(from:configuration:)(a1, v5, a3);
}