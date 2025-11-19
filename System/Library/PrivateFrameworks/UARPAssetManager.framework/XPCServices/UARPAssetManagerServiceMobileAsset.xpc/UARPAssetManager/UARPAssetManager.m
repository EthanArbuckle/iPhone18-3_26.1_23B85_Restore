int main(int argc, const char **argv, const char **envp)
{
  v3 = os_log_create("com.apple.uarpassetmanager.uarp", "assetManagerService");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MobileAsset Asset Manager service started", v8, 2u);
  }

  v4 = AUSandboxPlatformInitWithHomeDirectory(v3, 0, "/private/var/db/accessoryupdater/");
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[NSXPCListener serviceListener];
    [v6 setDelegate:v5];
    [v6 resume];
  }

  return v4;
}

void sub_100002860(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copyAllSubscriptions];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    *&v5 = 138412290;
    v13 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        ++*(*(a1 + 32) + 32);
        v10 = [*(a1 + 32) saveSubscriptionAndCheckIfRunnable:v9 asyncUpdate:{1, v13, v14}];
        v11 = *(a1 + 32);
        if (v10)
        {
          [v11 downloadAssetForSubscription:v9 asyncUpdate:1];
        }

        else
        {
          v12 = v11[1];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v13;
            v19 = v9;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Queue up async download for subscription:%@", buf, 0xCu);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }
}

void sub_100002A9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 24) subscribeForAsset:v2];
  ++*(*(a1 + 40) + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = v4[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = v3;
      v23 = 2112;
      v24 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Found asset:%@ in cache for subscription:%@", buf, 0x16u);
    }

    v20 = 0;
    v6 = +[NSFileManager defaultManager];
    v7 = [v3 assetURL];
    v8 = [v7 path];
    v9 = [v6 fileExistsAtPath:v8 isDirectory:&v20];

    v10 = *(a1 + 40);
    if (v9)
    {
      [v10 notifyFirmwareUpdateAvailability:v2 cacheRecord:v3 asyncUpdate:0];
      goto LABEL_17;
    }

    v14 = [v10 saveSubscriptionAndCheckIfRunnable:v2 asyncUpdate:0];
    v15 = *(a1 + 40);
    v16 = *(v15 + 8);
    if (v14)
    {
      if (os_log_type_enabled(*(v15 + 8), OS_LOG_TYPE_INFO))
      {
        v17 = v16;
        v18 = [v3 assetURL];
        v19 = [v18 path];
        *buf = 138543362;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Cached asset missing:%{public}@. Starting new download.", buf, 0xCu);
      }

LABEL_12:
      [*(a1 + 40) downloadAssetForSubscription:v2 asyncUpdate:0];
      goto LABEL_17;
    }

    if (os_log_type_enabled(*(v15 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10000B700(v16, v3);
    }
  }

  else
  {
    v11 = [v4 saveSubscriptionAndCheckIfRunnable:v2 asyncUpdate:0];
    v12 = *(a1 + 40);
    v13 = *(v12 + 8);
    if (v11)
    {
      if (os_log_type_enabled(*(v12 + 8), OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Asset not found in cache, downloading asset for subscription:%@", buf, 0xCu);
      }

      goto LABEL_12;
    }

    if (os_log_type_enabled(*(v12 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10000B7B4();
    }
  }

LABEL_17:
}

uint64_t sub_100002E5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100002E74(void *a1)
{
  v2 = [*(a1[4] + 24) cacheRecordForSubscription:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_100002FA4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copyCache];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_1000030D0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copyAllSubscriptions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100003A54(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    *buf = 134349314;
    v21 = a2;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MobileAsset catalog download status:%{public}ld for subscription: %{public}@", buf, 0x16u);
  }

  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003C48;
    block[3] = &unk_100014400;
    block[4] = v6;
    v8 = &v17;
    v17 = *(a1 + 48);
    v9 = v18;
    v18[0] = *(a1 + 40);
    v18[1] = a2;
    v19 = *(a1 + 56);
    dispatch_sync(v7, block);
  }

  else
  {
    [*(a1 + 48) returnTypes:2];
    v10 = *(a1 + 48);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003C5C;
    v12[3] = &unk_100014428;
    v12[4] = *(a1 + 32);
    v8 = &v13;
    v11 = v10;
    v13 = v11;
    v9 = &v14;
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    [v11 queryMetaData:v12];
  }
}

void sub_100003C5C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D18;
  block[3] = &unk_100014400;
  block[4] = v5;
  v8 = v4;
  v9 = *(a1 + 48);
  v10 = a2;
  v11 = *(a1 + 56);
  dispatch_sync(v6, block);
}

void sub_10000438C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004448;
  block[3] = &unk_100014400;
  block[4] = v5;
  v8 = v4;
  v9 = *(a1 + 48);
  v10 = a2;
  v11 = *(a1 + 56);
  dispatch_sync(v6, block);
}

void sub_100004AF0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100004B48(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

__CFString *UARPAssetManagerServiceCacheTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    v1 = &kUARPAssetManagerServiceUnknown;
  }

  else
  {
    v1 = off_100014540[a1];
  }

  return *v1;
}

id isRoamingEnabledCheck()
{
  result = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 16);
  if (result)
  {
    v1 = [[CoreTelephonyClient alloc] initWithQueue:0];
    v2 = [v1 getCurrentDataServiceDescriptorSync:0];
    v3 = [v1 getInternationalDataAccessSync:v2 error:0];

    return v3;
  }

  return result;
}

uint64_t allowConditionalDownloadOnCellular()
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  else
  {
    return isRoamingEnabledCheck() ^ 1;
  }
}

id getAssetBundle(void *a1)
{
  v1 = a1;
  v2 = [v1 attributes];
  v3 = [v2 objectForKey:@"FirmwareBundle"];

  if (v3)
  {
    v4 = [v1 getLocalFileUrl];
    v5 = [v4 URLByAppendingPathComponent:v3];
    v6 = [v5 filePathURL];

    if (v6)
    {
      v7 = [NSBundle bundleWithURL:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id getRestoreVersionForMAAsset(void *a1)
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"RestoreVersion"];

  return v2;
}

id getOSVersionForMAAsset(void *a1)
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"OSVersion"];

  return v2;
}

id getBuildVersionForMAAsset(void *a1)
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"Build"];

  return v2;
}

id getMinOSVersionForMAAsset(void *a1)
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"_MinOSVersion"];

  return v2;
}

id getMaxOSVersionForMAAsset(void *a1)
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"_MaxOSVersion"];

  return v2;
}

id getAssetVersionForMAAsset(void *a1)
{
  v1 = a1;
  v2 = [v1 attributes];
  v3 = [v2 objectForKey:@"FirmwareVersionMajor"];
  v4 = [v3 unsignedIntValue];
  v5 = [v1 attributes];
  v6 = [v5 objectForKey:@"FirmwareVersionMinor"];
  v7 = [v6 unsignedIntValue];
  v8 = [v1 attributes];
  v9 = [v8 objectForKey:@"FirmwareVersionRelease"];
  v10 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"%u.%u.%u", v4, v7, [v9 unsignedIntValue]);

  v11 = [v1 attributes];

  v12 = [v11 objectForKey:@"FirmwareVersionBuild"];

  if (v12)
  {
    [v10 appendFormat:@".%u", objc_msgSend(v12, "unsignedIntValue")];
  }

  v13 = [NSString stringWithString:v10];

  return v13;
}

id assetWithMaxVersion(void *a1)
{
  v1 = a1;
  if ([v1 count] > 1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v2 = 0;
      v6 = 0;
      v7 = *v15;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 state] != 3)
          {
            v10 = getAssetVersionForMAAsset(v9);
            if (isOSVersionNewer(v10, v6))
            {
              v11 = v10;

              v12 = v9;
              v2 = v12;
              v6 = v11;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    else
    {
      v2 = 0;
      v6 = 0;
    }
  }

  else
  {
    v2 = [v1 firstObject];
  }

  return v2;
}

uint64_t isOSVersionNewer(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 componentsSeparatedByString:@"."];
  v5 = [v3 componentsSeparatedByString:@"."];
  v6 = 0;
  while (1)
  {
    if ([v4 count] <= v6 && objc_msgSend(v5, "count") <= v6 || objc_msgSend(v4, "count") <= v6)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_10;
    }

    if ([v5 count] <= v6)
    {
      break;
    }

    v7 = [v4 objectAtIndexedSubscript:v6];
    v8 = [v7 integerValue];

    v9 = [v5 objectAtIndexedSubscript:v6];
    v10 = [v9 integerValue];

    if (v8 > v10)
    {
      break;
    }

    ++v6;
    if (v8 < v10)
    {
      goto LABEL_8;
    }
  }

  v11 = 1;
LABEL_10:

  return v11;
}

BOOL isBuildVersionNewer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [NSRegularExpression regularExpressionWithPattern:@"([0-9]+)([A-Z]{1})([0-9]+)([a-z]?)" options:0 error:0];
  if (v5)
  {
    v6 = [v5 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
    v7 = [v6 objectAtIndex:0];
    if ([v7 numberOfRanges] >= 4)
    {
      v9 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
      v10 = [v9 objectAtIndex:0];
      if ([v10 numberOfRanges] >= 4)
      {
        v44 = v9;
        v8 = 1;
        v11 = [v7 rangeAtIndex:1];
        v13 = [v3 substringWithRange:{v11, v12}];
        v14 = [v10 rangeAtIndex:1];
        v16 = [v4 substringWithRange:{v14, v15}];
        v17 = [v13 integerValue];
        if (v17 <= [v16 integerValue])
        {
          v18 = [v16 integerValue];
          if (v18 <= [v13 integerValue])
          {
            v19 = [v7 rangeAtIndex:2];
            v21 = [v3 substringWithRange:{v19, v20}];
            v22 = [v10 rangeAtIndex:2];
            v24 = [v4 substringWithRange:{v22, v23}];
            v25 = [v24 caseInsensitiveCompare:v21];
            v43 = v24;
            if (v25 == -1)
            {
              v8 = 1;
            }

            else if (v25 == 1)
            {
              v8 = 0;
            }

            else
            {
              v40 = v21;
              v26 = [v7 rangeAtIndex:3];
              v42 = [v3 substringWithRange:{v26, v27}];
              v28 = [v10 rangeAtIndex:3];
              v30 = [v4 substringWithRange:{v28, v29}];
              v38 = [v42 integerValue];
              v41 = v30;
              if (v38 <= [v30 integerValue])
              {
                v31 = [v30 integerValue];
                if (v31 > [v42 integerValue] || objc_msgSend(v10, "numberOfRanges") == 4)
                {
                  v8 = 0;
                }

                else
                {
                  v32 = [v7 rangeAtIndex:4];
                  v39 = [v3 substringWithRange:{v32, v33}];
                  v34 = [v10 rangeAtIndex:4];
                  v36 = [v4 substringWithRange:{v34, v35}];
                  v8 = [v36 caseInsensitiveCompare:v39] == -1;
                }
              }

              else
              {
                v8 = 1;
              }

              v21 = v40;
            }
          }

          else
          {
            v8 = 0;
          }
        }

        v9 = v44;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id getSoftwareUpdateAssetVersionForMAAsset(void *a1)
{
  v1 = a1;
  v2 = getRestoreVersionForMAAsset(v1);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = getBuildVersionForMAAsset(v1);
    v6 = getOSVersionForMAAsset(v1);
    v7 = v6;
    v4 = 0;
    if (v5 && v6)
    {
      v4 = [NSString stringWithFormat:@"%@:%@", v6, v5];
    }
  }

  return v4;
}

id softwareUpdateAssetWithMaxVersion(void *a1, int a2)
{
  v2 = a1;
  if ([v2 count] <= 1)
  {
    v44 = [v2 firstObject];
    goto LABEL_49;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v34 = v2;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (!v4)
  {
    v44 = 0;
    goto LABEL_48;
  }

  v5 = v4;
  v40 = 0;
  v44 = 0;
  v6 = *v46;
  v7 = &_os_log_default;
  v38 = *v46;
  v39 = v3;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v46 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v45 + 1) + 8 * i);
      if ([v9 state] != 3)
      {
        v10 = [v9 attributes];
        v11 = [v10 objectForKeyedSubscript:@"_MinOSVersion"];

        v12 = [v9 attributes];
        v13 = [v12 objectForKeyedSubscript:@"_MaxOSVersion"];

        if (v11)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          v15 = v7;
          v16 = [v9 attributes];
          v17 = [v16 objectForKeyedSubscript:@"ReleaseType"];

          v7 = v15;
          if (v17)
          {
            if (!a2 || ([v17 isEqualToString:@"Darwin Internal"] & 1) != 0)
            {
              if (v44)
              {
                v18 = getRestoreVersionForMAAsset(v9);
                if (v18)
                {
                  v19 = v18;
                  v20 = getRestoreVersionForMAAsset(v44);
                  v41 = v19;
                  v21 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:v19];
                  v22 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:v20];
                  v42 = v21;
                  v23 = v21;
                  v24 = v22;
                  if (![v23 isComparable:v22] || objc_msgSend(v42, "compare:", v24) == 1)
                  {
                    v25 = v9;
                    v26 = v44;
                    v40 = 1;
                    v44 = v25;
                    v6 = v38;
                    goto LABEL_39;
                  }

                  v6 = v38;
LABEL_40:

                  v3 = v39;
                  v18 = v41;
                }

                else
                {
                  if ((v40 & 1) == 0)
                  {
                    v41 = 0;
                    v36 = getBuildVersionForMAAsset(v9);
                    v31 = getOSVersionForMAAsset(v9);
                    v35 = getBuildVersionForMAAsset(v44);
                    getOSVersionForMAAsset(v44);
                    v37 = v42 = v31;
                    if ((isOSVersionNewer(v31, v37) & 1) != 0 || [v31 isEqualToString:v37] && isBuildVersionNewer(v36, v35))
                    {
                      v32 = v9;

                      v40 = 0;
                      v44 = v32;
                    }

                    else
                    {
                      v40 = 0;
                    }

                    v7 = v15;
                    v24 = v35;
                    v20 = v36;
                    v26 = v37;
LABEL_39:

                    goto LABEL_40;
                  }

                  v40 = 1;
                }
              }

              else
              {
                v44 = v9;
              }

LABEL_42:

LABEL_43:
              continue;
            }

            if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              goto LABEL_42;
            }

            *buf = 136315394;
            v50 = "softwareUpdateAssetWithMaxVersion";
            v51 = 1024;
            v52 = a2;
            v27 = v15;
            v28 = OS_LOG_TYPE_INFO;
            v29 = "%s: Asset does not match internal=%d";
            v30 = 18;
          }

          else
          {
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_42;
            }

            *buf = 136315138;
            v50 = "softwareUpdateAssetWithMaxVersion";
            v27 = v15;
            v28 = OS_LOG_TYPE_DEFAULT;
            v29 = "%s: Asset missing ReleaseType";
            v30 = 12;
          }

          _os_log_impl(&_mh_execute_header, v27, v28, v29, buf, v30);
          goto LABEL_42;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v50 = "softwareUpdateAssetWithMaxVersion";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Asset missing _MinOSVersion or _MaxOSVersion", buf, 0xCu);
        }

        goto LABEL_43;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v45 objects:v53 count:16];
  }

  while (v5);
LABEL_48:

  v2 = v34;
LABEL_49:

  return v44;
}

id copyFileToLocalPath(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSURL fileURLWithPath:a1];
  v24 = 0;
  v5 = [v4 checkResourceIsReachableAndReturnError:&v24];
  v6 = v24;
  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "copyFileToLocalPath";
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: Valid firmware file %@", buf, 0x16u);
    }

    v7 = [v4 lastPathComponent];
    v8 = [v3 stringByAppendingPathComponent:v7];
    v9 = [NSURL fileURLWithPath:v8];
    v10 = [NSURL fileURLWithPath:v3 isDirectory:1];
    if ([v10 checkResourceIsReachableAndReturnError:0])
    {
      v11 = v6;
      goto LABEL_16;
    }

    v21 = v7;
    v31 = NSFilePosixPermissions;
    v32 = &off_1000153A0;
    v13 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v14 = +[NSFileManager defaultManager];
    v23 = v6;
    v15 = [v14 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:v13 error:&v23];
    v11 = v23;

    v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v16)
      {
        *buf = 136315394;
        v26 = "copyFileToLocalPath";
        v27 = 2112;
        v28 = v3;
        v17 = "%s: UARP Firmware directory created %@";
LABEL_14:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v17, buf, 0x16u);
      }
    }

    else if (v16)
    {
      *buf = 136315394;
      v26 = "copyFileToLocalPath";
      v27 = 2112;
      v28 = v11;
      v17 = "%s: Failed to create UARP Firmware directory error: %@";
      goto LABEL_14;
    }

    v7 = v21;
LABEL_16:
    v18 = +[NSFileManager defaultManager];
    [v18 removeItemAtURL:v9 error:0];

    v19 = +[NSFileManager defaultManager];
    v22 = v11;
    v12 = [v19 copyItemAtURL:v4 toURL:v9 error:&v22];
    v6 = v22;

    if ((v12 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v26 = "copyFileToLocalPath";
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: Failed to write to path %@ error: %@", buf, 0x20u);
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000BB70(v4, v6);
  }

  v12 = 0;
LABEL_20:

  return v12;
}

id AssetManagerDirectoryPath()
{
  if (qword_10001A6B0 != -1)
  {
    sub_10000BC0C();
  }

  v1 = qword_10001A6A8;

  return v1;
}

void sub_100006030(id a1)
{
  v1 = qword_10001A6A8;
  qword_10001A6A8 = @"/var/db/accessoryupdater/";
}

uint64_t isDeploymentAllowed(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v34 = objc_alloc_init(NSMutableArray);
    v31 = objc_alloc_init(NSDateFormatter);
    [v31 setDateFormat:@"MM/dd/yyyy"];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = v1;
    obj = v1;
    v2 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v41;
      v30 = *v41;
      do
      {
        v5 = 0;
        v32 = v3;
        do
        {
          if (*v41 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v40 + 1) + 8 * v5);
          v7 = [v6 objectForKey:@"minOSVersion"];
          v8 = [v6 objectForKey:@"maxOSVersion"];
          v9 = v8;
          if (v7)
          {
            v10 = v8 == 0;
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            v11 = [v6 objectForKey:@"rampPeriod"];
            v12 = [v6 objectForKey:@"deploymentLimit"];
            v13 = [v6 objectForKey:@"countryList"];
            v14 = [v6 objectForKey:@"goLiveDate"];
            v15 = [v31 dateFromString:v14];
            v16 = objc_alloc_init(UARPDeploymentRuleConfig);
            [(UARPDeploymentRuleConfig *)v16 setGoLiveDate:v15];
            [(UARPDeploymentRuleConfig *)v16 setCountryList:v13];
            [(UARPDeploymentRuleConfig *)v16 setRampPeriod:v11];
            [(UARPDeploymentRuleConfig *)v16 setDeploymentLimit:v12];
            v17 = [[UARPDeploymentRule alloc] initWithConfig:v16];
            if (v17)
            {
              [v34 addObject:v17];
            }

            v3 = v32;
            v4 = v30;
          }

          else
          {
            v18 = [[UARPDeploymentRule alloc] initWithMinOSVersion:v7 maxOSVersion:v8];
            v11 = v18;
            if (v18)
            {
              [v34 addObject:v18];
            }
          }

          v5 = v5 + 1;
        }

        while (v3 != v5);
        v3 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v3);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = v34;
    v20 = [v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v37;
LABEL_21:
      v24 = 0;
      v25 = v22;
      while (1)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v36 + 1) + 8 * v24);
        v35 = v25;
        v27 = [v26 isDeploymentAllowed:&v35];
        v22 = v35;

        if (v27)
        {
          break;
        }

        v24 = v24 + 1;
        v25 = v22;
        if (v21 == v24)
        {
          v21 = [v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v21)
          {
            goto LABEL_21;
          }

          break;
        }
      }
    }

    else
    {
      v27 = 1;
    }

    v1 = v29;
  }

  else
  {
    v27 = 1;
  }

  return v27;
}

id nullableObjectsAreEqual(void *a1, uint64_t a2)
{
  if (a1)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return (a2 == 0);
  }
}

__CFString *mobileAssetPrefixForAppleModelNumber(void *a1)
{
  if ([a1 isEqualToString:@"A2525"])
  {
    v1 = @"com.apple.MobileAsset.DarwinAccessoryUpdate.";
  }

  else
  {
    v1 = @"com.apple.MobileAsset.UARP.";
  }

  return v1;
}

void sub_100006EF8(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Could not report status to daemon", v2, 2u);
  }
}

uint64_t sub_1000078D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000078E8(void *a1)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 subscription];
        v9 = [v8 isEqual:a1[5]];

        if (v9)
        {
          v10 = [v7 cachedRecord];
          v11 = [v10 copy];
          v12 = *(a1[6] + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

id sub_100007B4C(uint64_t a1)
{
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [(UARPAssetManagerServiceAssetCacheEntry *)v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [v7 subscription];
        v9 = [v8 isEqual:*(a1 + 40)];

        if (v9)
        {
          v17 = +[NSDate date];
          [v7 setLastSeen:v17];

          v18 = [v7 cachedRecord];
          v19 = [v18 copy];
          v20 = *(*(a1 + 48) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;

          goto LABEL_15;
        }

        v10 = [v7 subscription];
        v11 = [v10 isEqualForAnyDomain:*(a1 + 40)];

        if (v11)
        {
          v12 = [v7 cachedRecord];
          v13 = [v12 copy];
          v14 = *(*(a1 + 48) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;
        }
      }

      v4 = [(UARPAssetManagerServiceAssetCacheEntry *)v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v16 = [[UARPAssetManagerServiceAssetCacheEntry alloc] initWithSubscription:*(a1 + 40)];
  v2 = v16;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [(UARPAssetManagerServiceAssetCacheEntry *)v16 setCachedRecord:?];
  }

  [*(*(a1 + 32) + 24) addObject:{v2, v23}];
LABEL_15:

  return [*(a1 + 32) save];
}

void sub_100007F00(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 subscription];
        v9 = [v8 isEqual:*(a1 + 40)];

        if (v9)
        {
          v10 = [*(a1 + 32) createCacheRecordForAsset:*(a1 + 48) withSubscription:*(a1 + 40) withPath:*(a1 + 56)];
          v11 = *(*(a1 + 64) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v10;

          if (*(*(*(a1 + 64) + 8) + 40))
          {
            [v7 setCachedRecord:?];
            *(*(*(a1 + 72) + 8) + 24) = 1;
          }

          else if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
          {
            sub_10000BD94((a1 + 48));
          }

          goto LABEL_14;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [*(a1 + 32) save];
  }
}

void sub_1000081C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000081DC(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(*(a1 + 40) + 8) + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) subscription];
        v9 = [v8 copy];
        [v7 addObject:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_100008410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008428(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = *(*(*(a1 + 40) + 8) + 40);
        v9 = [v7 cachedRecord];
        v10 = [v9 copy];
        v11 = [v7 subscription];
        v12 = [v11 copy];
        [v8 setValue:v10 forKey:v12];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void sub_100008674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000868C(void *a1)
{
  v2 = +[NSDate distantPast];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1[4] + 24);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 136315650;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 subscription];
        v11 = [v10 domain];
        v12 = [v11 isEqualToString:a1[5]];

        if (v12)
        {
          [v9 setLastSeen:v2];
          *(*(a1[6] + 8) + 24) = 1;
          v13 = *(a1[4] + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = a1[5];
            *buf = v15;
            v21 = "[UARPAssetManagerServiceAssetCache clearAssetCacheForDomain:]_block_invoke";
            v22 = 2112;
            v23 = v9;
            v24 = 2112;
            v25 = v14;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Marking entry %@ for deletion for domain: %@", buf, 0x20u);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v6);
  }
}

void sub_10000893C(uint64_t a1)
{
  v62 = +[NSDate date];
  v2 = +[NSMutableArray array];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v77;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v77 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v76 + 1) + 8 * i);
        v9 = [v8 lastSeen];
        [*(a1 + 32) assetExpirationTime];
        v10 = [v9 dateByAddingTimeInterval:?];

        if ([v10 compare:v62] == -1)
        {
          v11 = *(*(a1 + 32) + 8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v85 = "[UARPAssetManagerServiceAssetCache pruneExpiredRegistryEntries]_block_invoke";
            v86 = 2114;
            v87 = v8;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: Detected expired entry in registry: %{public}@", buf, 0x16u);
          }

          [v2 addObject:v8];
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v76 objects:v88 count:16];
    }

    while (v5);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v12 = v2;
  v13 = [v12 countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v73;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v73 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(a1 + 32) + 24) removeObject:*(*(&v72 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v72 objects:v83 count:16];
    }

    while (v14);
  }

  v57 = v12;

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) save];
  }

  v17 = [*(a1 + 32) assetCacheRootDirectory];
  v18 = [NSURL fileURLWithPath:v17];

  v19 = +[NSFileManager defaultManager];
  v82[0] = NSURLNameKey;
  v82[1] = NSURLIsDirectoryKey;
  v20 = [NSArray arrayWithObjects:v82 count:2];
  v56 = v18;
  v21 = [v19 enumeratorAtURL:v18 includingPropertiesForKeys:v20 options:4 errorHandler:0];

  v58 = objc_opt_new();
  v22 = 0;
  v59 = v21;
LABEL_22:
  while (1)
  {
    v23 = v22;
    v22 = [v21 nextObject];

    if (!v22)
    {
      break;
    }

    if (([v22 hasDirectoryPath] & 1) == 0)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = *(*(a1 + 32) + 24);
      v24 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
      if (v24)
      {
        v25 = v24;
        v63 = *v69;
        while (2)
        {
          for (k = 0; k != v25; k = k + 1)
          {
            if (*v69 != v63)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v68 + 1) + 8 * k);
            v28 = [v22 URLByStandardizingPath];
            v29 = [v27 cachedRecord];
            v30 = [v29 assetURL];
            v31 = [v30 URLByStandardizingPath];

            if (v31)
            {
              v32 = v22;
              v33 = [v28 absoluteString];
              v34 = [v31 absoluteString];
              v35 = [v33 hasPrefix:v34];

              if (v35)
              {

                v21 = v59;
                v22 = v32;
                goto LABEL_22;
              }

              v22 = v32;
              if ([v31 isEqual:v28])
              {

                v21 = v59;
                goto LABEL_22;
              }
            }
          }

          v25 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      v36 = [v22 lastPathComponent];
      v37 = [v36 isEqualToString:@"UARPCacheRegistry.plist"];

      v21 = v59;
      if ((v37 & 1) == 0)
      {
        [v58 addObject:v22];
      }
    }
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obja = v58;
  v38 = [obja countByEnumeratingWithState:&v64 objects:v80 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v65;
    do
    {
      for (m = 0; m != v39; m = m + 1)
      {
        if (*v65 != v40)
        {
          objc_enumerationMutation(obja);
        }

        v42 = *(*(&v64 + 1) + 8 * m);
        v43 = *(*(a1 + 32) + 8);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v85 = v42;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Deleting expired cache file:%{public}@", buf, 0xCu);
        }

        v44 = +[NSFileManager defaultManager];
        [v44 removeItemAtURL:v42 error:0];

        *(*(*(a1 + 48) + 8) + 24) = 1;
        v45 = [v42 path];
        v46 = [v45 stringByDeletingLastPathComponent];

        v47 = [*(a1 + 32) assetCacheRootDirectory];
        v48 = [v46 isEqualToString:v47];

        if ((v48 & 1) == 0)
        {
          while (1)
          {
            v49 = +[NSFileManager defaultManager];
            v50 = [v49 contentsOfDirectoryAtPath:v46 error:0];

            if ([v50 count])
            {
              break;
            }

            v51 = *(*(a1 + 32) + 8);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v85 = v46;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Deleting empty cache directory:%{public}@", buf, 0xCu);
            }

            v52 = +[NSFileManager defaultManager];
            [v52 removeItemAtPath:v46 error:0];

            v53 = [v46 stringByDeletingLastPathComponent];

            v54 = [*(a1 + 32) assetCacheRootDirectory];
            v55 = [v53 isEqualToString:v54];

            v46 = v53;
            if (v55)
            {
              goto LABEL_53;
            }
          }
        }

        v53 = v46;
LABEL_53:
      }

      v39 = [obja countByEnumeratingWithState:&v64 objects:v80 count:16];
    }

    while (v39);
  }
}

void sub_1000094F0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100009510(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_10000954C()
{

  return objc_opt_class();
}

uint64_t AUSandboxPlatformInitWithBundleIdentifierHomeDirectory(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  v3 = v1;
  bzero(v7, 0x400uLL);
  v4 = v3;
  if (_set_user_dir_suffix())
  {
    if (confstr(65537, v7, 0x400uLL))
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000C274();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000C1F4();
  }

  v5 = 1;
LABEL_11:

  return v5;
}

void sub_100009C14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_10000B678(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0xCu);
}

void sub_10000B700(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 assetURL];
  v5 = [v4 path];
  sub_100004B2C();
  sub_100004B38();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_10000B884()
{
  v2 = 136315650;
  sub_100004B0C();
  sub_100004B48(&_mh_execute_header, v0, v1, "%s: Failed to disable pallas for asset type %{public}@ with result: %{public}lld", v2);
}

void sub_10000B8F8()
{
  v2 = 136315650;
  sub_100004B0C();
  sub_100004B48(&_mh_execute_header, v0, v1, "%s: Failed to enable pallas for asset type %{public}@ with result: %{public}lld", v2);
}

void sub_10000B9D4(void *a1, void *a2)
{
  v3 = a1;
  [a2 state];
  sub_100004B2C();
  sub_100004B38();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10000BA64(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 getLocalFileUrl];
  v10 = [a2 attributes];
  sub_100004B38();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10000BB70(uint64_t a1, uint64_t a2)
{
  v2 = 136315650;
  v3 = "copyFileToLocalPath";
  v4 = 2112;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Invalid firmware file %@ error: %@", &v2, 0x20u);
}

void sub_10000BD94(uint64_t *a1)
{
  v1 = *a1;
  sub_100009538();
  sub_100009510(&_mh_execute_header, v2, v3, "%s: Could not create cache record for asset: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_10000BE88(os_log_t log)
{
  v1 = 136315138;
  v2 = "[UARPAssetManagerServiceAssetCache save]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to save asset cache registry to file", &v1, 0xCu);
}

void sub_10000BF0C(uint64_t *a1)
{
  v1 = *a1;
  sub_100009538();
  sub_100009510(&_mh_execute_header, v2, v3, "%s: Failed to archive asset cache registry: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_10000BF84(void *a1)
{
  v2 = a1;
  v3 = sub_10000954C();
  v4 = NSStringFromClass(v3);
  sub_1000094DC();
  sub_1000094F0(&_mh_execute_header, v5, v6, "%@ does not provide %s", v7, v8, v9, v10, v11);
}

void sub_10000C020(void *a1)
{
  v2 = a1;
  v3 = sub_10000954C();
  v4 = NSStringFromClass(v3);
  sub_1000094DC();
  sub_1000094F0(&_mh_execute_header, v5, v6, "%@ does not provide %s", v7, v8, v9, v10, v11);
}

void sub_10000C0BC(void *a1)
{
  v2 = a1;
  v3 = sub_10000954C();
  v4 = NSStringFromClass(v3);
  sub_1000094DC();
  sub_1000094F0(&_mh_execute_header, v5, v6, "%@ does not provide %s", v7, v8, v9, v10, v11);
}

void sub_10000C158(void *a1)
{
  v2 = a1;
  v3 = sub_10000954C();
  v4 = NSStringFromClass(v3);
  sub_1000094DC();
  sub_1000094F0(&_mh_execute_header, v5, v6, "%@ does not provide %s", v7, v8, v9, v10, v11);
}

void sub_10000C448(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[UARPDeploymentRule initWithConfig:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Failed to initialize deployment limits with error %@", &v2, 0x16u);
}

void sub_10000C4D4(void *a1)
{
  v2 = [NSError errorWithDomain:@"com.apple.uarp" code:6 userInfo:0];
  *a1 = v2;
}