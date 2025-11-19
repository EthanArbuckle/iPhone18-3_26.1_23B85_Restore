@interface SAHelper
+ (BOOL)isSAFSupported;
+ (id)dynamicRegistrationLock;
+ (unint64_t)getOVPFileAndVolumeSize;
+ (unsigned)runAppSizerWithBGTask:(id)a3;
- (BOOL)isValidMountPoint:(id)a3;
- (void)addAppSizerHandler:(id)a3 reply:(id)a4;
- (void)addURLSizerHandler:(id)a3 withURLs:(id)a4 reply:(id)a5;
- (void)adjustDenomAgeBy:(unint64_t)a3 reply:(id)a4;
- (void)clearLastTelemetryData:(id)a3;
- (void)computeSizeOfSystemVolume:(id)a3;
- (void)computeSizeOfVolumeAtURL:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)disableAppSizerResultsFilteringWithReply:(id)a3;
- (void)getAppPaths:(id)a3 options:(int)a4 reply:(id)a5;
- (void)getLastTelemetryData:(id)a3;
- (void)getPurgeableInfo:(id)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)importFromPlist:(id)a3 reply:(id)a4;
- (void)registerPaths:(id)a3 reply:(id)a4;
- (void)runAppSizerWithHandler:(id)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)runAppSizerWithScanOptions:(unint64_t)a3 reply:(id)a4;
- (void)runURLSizerWithID:(id)a3 reply:(id)a4;
- (void)setAppPathListPathOnDisk:(id)a3 reply:(id)a4;
- (void)setAppPathListPathOnDisktoDefaultWithReply:(id)a3;
- (void)setAppSizerResultsFilteringOptionsToDefaultWithReply:(id)a3;
- (void)setForceSDAAbort:(id)a3;
- (void)setForceTelemetry:(id)a3;
- (void)unregisterPaths:(id)a3 reply:(id)a4;
@end

@implementation SAHelper

+ (id)dynamicRegistrationLock
{
  if (qword_1000736A8 != -1)
  {
    sub_10003B370();
  }

  v3 = qword_1000736A0;

  return v3;
}

- (void)runAppSizerWithScanOptions:(unint64_t)a3 reply:(id)a4
{
  (*(a4 + 2))(a4, 0);
  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B384(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = objc_opt_new();
  v22 = 0;
  [v13 runAppSizerWithRunMode:2 BGTask:0 scanOptions:a3 error:&v22];
  v14 = SALog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B3FC(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

- (void)addURLSizerHandler:(id)a3 withURLs:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = SALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B474();
  }

  v11 = [SAURLSizerConfiguration newWithReplyController:v9 urls:v8];
  v12 = [SAURlSizersManager addURLSizerConfiguration:v11];
  v7[2](v7, v12);

  v13 = SALog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B4B0();
  }
}

- (void)runURLSizerWithID:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B4EC();
  }

  v8 = [SADUrlSizer newWithOptions:1];
  v9 = [SAURlSizersManager getURLSizerConfiguration:v6];

  v10 = [v9 urls];
  [v8 scanURLs:v10 withSizer:v9];

  v5[2](v5, 0);
  v11 = SALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B528();
  }
}

+ (BOOL)isSAFSupported
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [&off_100069098 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v15;
    v6 = 1;
    *&v3 = 136315394;
    v13 = v3;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(&off_100069098);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (![SASupport volumeSupportsCloneMapping:v8, v13])
        {
          v9 = SALog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v19 = "+[SAHelper isSAFSupported]";
            v20 = 2112;
            v21 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Volume (%@) doesn't support clone mapping", buf, 0x16u);
          }

          v6 = 0;
        }
      }

      v4 = [&off_100069098 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  v10 = SALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v6)
    {
      v11 = @"YES";
    }

    *buf = 136315394;
    v19 = "+[SAHelper isSAFSupported]";
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  return v6 & 1;
}

+ (unsigned)runAppSizerWithBGTask:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7 = 0;
  v5 = [v4 runAppSizerWithRunMode:1 BGTask:v3 scanOptions:51713 error:&v7];

  return v5;
}

- (void)addAppSizerHandler:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [SACallbackManager addAppSizerHandler:a3];
  v5[2](v5, v6);
}

- (void)setAppSizerResultsFilteringOptionsToDefaultWithReply:(id)a3
{
  v3 = a3;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B564(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  +[SAVolumeScanner setAppSizerResultsFilteringToDefault];
  +[SATelemetryManager setAppsFilteringToDefault];
  v3[2](v3, 0);

  v12 = SALog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B5DC(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

- (void)disableAppSizerResultsFilteringWithReply:(id)a3
{
  v3 = a3;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B654(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  +[SAVolumeScanner disableAppSizerResultsFiltering];
  +[SATelemetryManager disableAppsFiltering];
  v3[2](v3, 0);

  v12 = SALog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B6CC(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

- (BOOL)isValidMountPoint:(id)a3
{
  v3 = a3;
  v4 = +[SASupport getRelevantVolumes];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)setForceTelemetry:(id)a3
{
  v3 = a3;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B744(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  +[SAVolumeScanner setForceTelemetry];
  v3[2](v3, 0);

  v12 = SALog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B7BC(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

- (void)setForceSDAAbort:(id)a3
{
  v3 = a3;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B834(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  +[SAVolumeScanner setForceSDAAbort];
  v3[2](v3, 0);

  v12 = SALog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B8AC(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

- (void)adjustDenomAgeBy:(unint64_t)a3 reply:(id)a4
{
  v5 = a4;
  v6 = SALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B924(a3);
  }

  v7 = objc_opt_new();
  [v7 adjustDenomAgeBy:a3];
  v5[2](v5, 0);
}

- (void)registerPaths:(id)a3 reply:(id)a4
{
  v70 = a3;
  v69 = a4;
  v74 = objc_opt_new();
  v71 = objc_opt_new();
  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B9C0(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  if (v70 && [v70 count])
  {
    obj = +[SAHelper dynamicRegistrationLock];
    objc_sync_enter(obj);
    +[NSFileManager defaultManager];
    v66 = v88 = 0;
    v13 = [v66 createDirectoryAtPath:@"/var/db/spaceattribution" withIntermediateDirectories:1 attributes:0 error:&v88];
    v68 = v88;
    if ((v13 & 1) == 0)
    {
      v49 = SALog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = [v68 description];
        sub_10003BA38(v50, buf, v49);
      }

      v51 = v68;
      v69[2](v69, v68);
      goto LABEL_63;
    }

    v76 = objc_opt_new();
    if (([v76 loadFromDisk] & 1) == 0)
    {
      v14 = SALog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10003BAB4();
      }
    }

    [v76 validateAppPathsOnDisk];
    v15 = objc_autoreleasePoolPush();
    v16 = objc_opt_new();
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    v84 = 0u;
    v17 = v70;
    v18 = [v17 countByEnumeratingWithState:&v84 objects:v96 count:16];
    if (v18)
    {
      v19 = *v85;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v85 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = [*(*(&v84 + 1) + 8 * i) url];
          v22 = [v21 path];
          v23 = [NSURL fileURLWithPath:v22 isDirectory:1];

          [v16 addObject:v23];
        }

        v18 = [v17 countByEnumeratingWithState:&v84 objects:v96 count:16];
      }

      while (v18);
    }

    v65 = [v76 checkURLsAreOverlappingWithURLs:v16];
    objc_autoreleasePoolPop(v15);
    if ((v65 & 1) == 0)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v72 = v17;
      v24 = [v72 countByEnumeratingWithState:&v80 objects:v95 count:16];
      if (v24)
      {
        v75 = *v81;
        do
        {
          v25 = 0;
          do
          {
            if (*v81 != v75)
            {
              objc_enumerationMutation(v72);
            }

            v26 = *(*(&v80 + 1) + 8 * v25);
            v27 = objc_autoreleasePoolPush();
            v28 = [v26 bundleID];
            v29 = [[SAAppPath alloc] initWithBundleID:v28];
            v30 = [v26 url];
            v31 = [v30 path];
            v32 = [NSURL fileURLWithPath:v31 isDirectory:1];

            v33 = [v76 appPathForBundleID:v28];
            LODWORD(v30) = v33 == 0;

            if (v30)
            {
              v34 = SALog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v28;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "New app in appPathList %@", buf, 0xCu);
              }
            }

            v35 = [SASupport getURLMountPoint:v32];
            if (v35 && ![(SAHelper *)self isValidMountPoint:v35])
            {
              v39 = SALog();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v41 = [v26 url];
                *buf = 136315650;
                *&buf[4] = "[SAHelper registerPaths:reply:]";
                *&buf[12] = 2112;
                *&buf[14] = v41;
                *&buf[22] = 2112;
                v98 = v35;
                _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s: Rejecting URL (%@) - un-allowed mount point (%@).", buf, 0x20u);
              }

              v40 = [v26 url];
              [v71 addObject:v40];
            }

            else
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              LOBYTE(v98) = 0;
              v77[0] = _NSConcreteStackBlock;
              v77[1] = 3221225472;
              v77[2] = sub_100007C68;
              v77[3] = &unk_100064A40;
              v77[4] = v26;
              v78 = v74;
              v79 = buf;
              [v76 isPathInfoClaimedByAnotherApp:v26 reply:v77];
              if ((*(*&buf[8] + 24) & 1) == 0)
              {
                v36 = [v26 isDataURL];
                v37 = [v26 exclusive];
                if (v36)
                {
                  if (v37)
                  {
                    v38 = [v32 path];
                    [(SAAppPath *)v29 addUniquePath:v38];
                  }

                  else
                  {
                    v38 = [v32 path];
                    [(SAAppPath *)v29 addSharedPath:v38];
                  }
                }

                else
                {
                  v38 = [v32 path];
                  [(SAAppPath *)v29 addBinaryPath:v38];
                }

                [v76 updateWithAppPath:v29];
              }

              _Block_object_dispose(buf, 8);
            }

            objc_autoreleasePoolPop(v27);
            v25 = v25 + 1;
          }

          while (v24 != v25);
          v24 = [v72 countByEnumeratingWithState:&v80 objects:v95 count:16];
        }

        while (v24);
      }
    }

    if ([v71 count])
    {
      v42 = [NSError alloc];
      v93 = NSLocalizedFailureReasonErrorKey;
      v43 = +[SASupport getRelevantVolumes];
      v44 = [NSString stringWithFormat:@"The following URLs are mounted on un-allowed mount points:\n%@\nAllowed mount points: %@", v71, v43];
      v94 = v44;
      v45 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      v46 = [v42 initWithDomain:NSPOSIXErrorDomain code:22 userInfo:v45];

      v68 = v46;
    }

    else
    {
      if ([v74 count])
      {
        v52 = [NSError alloc];
        v91 = NSLocalizedFailureReasonErrorKey;
        v43 = [NSString stringWithFormat:@"The following paths were already registered as unique for other apps OR supplied twice on the same request:\n %@", v74];
        v92 = v43;
        v44 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v53 = [v52 initWithDomain:NSPOSIXErrorDomain code:17 userInfo:v44];
      }

      else
      {
        if (!v65)
        {
          goto LABEL_57;
        }

        v54 = [NSError alloc];
        v89 = NSLocalizedFailureReasonErrorKey;
        v43 = [NSString stringWithFormat:@"The provided paths contain overlapping paths or they overlap with existing paths."];
        v90 = v43;
        v44 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v53 = [v54 initWithDomain:NSPOSIXErrorDomain code:17 userInfo:v44];
      }

      v45 = v68;
      v68 = v53;
    }

LABEL_57:
    if (v68 || ([v76 saveToDisk] & 1) != 0)
    {
      v55 = SALog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        sub_10003BB70(v55, v56, v57, v58, v59, v60, v61, v62);
      }

      v69[2](v69, v68);
    }

    else
    {
      v63 = SALog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        sub_10003BAF0();
      }

      v64 = [NSError errorWithDomain:NSCocoaErrorDomain code:513 userInfo:0];
      v69[2](v69, v64);
    }

    v51 = v68;
LABEL_63:

    v48 = obj;
    objc_sync_exit(obj);
    goto LABEL_64;
  }

  v47 = SALog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    sub_10003BBE8();
  }

  v48 = [NSError errorWithDomain:NSCocoaErrorDomain code:1024 userInfo:0];
  v69[2](v69, v48);
LABEL_64:
}

- (void)runAppSizerWithHandler:(id)a3 options:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  [(SAHelper *)self addAppSizerHandler:v9 reply:&stru_100064A80];

  v12 = 0;
  [v10 runAppSizerWithRunMode:2 BGTask:0 scanOptions:a4 error:&v12];
  v11 = v12;
  v8[2](v8, v11);
}

- (void)unregisterPaths:(id)a3 reply:(id)a4
{
  v36 = a3;
  v37 = a4;
  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10003BC68(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  obj = +[SAHelper dynamicRegistrationLock];
  objc_sync_enter(obj);
  v13 = objc_opt_new();
  if (([v13 loadFromDisk] & 1) == 0)
  {
    v33 = SALog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10003BCE0();
    }

    v34 = [NSError errorWithDomain:NSCocoaErrorDomain code:260 userInfo:0];
    v37[2](v37, v34);
    goto LABEL_28;
  }

  [v13 validateAppPathsOnDisk];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = v36;
  v14 = [v39 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v14)
  {
    v15 = *v41;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v39);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        v18 = [v17 bundleID];
        v19 = [v13 appPathForBundleID:v18];
        if (v19)
        {
          v20 = [v17 url];
          v21 = [v20 path];
          v22 = [NSURL fileURLWithPath:v21 isDirectory:1];

          if ([v17 isDataURL])
          {
            v23 = [v22 path];
            [v19 removeUniquePath:v23];

            v24 = [v22 path];
            [v19 removeSharedPath:v24];
          }

          else
          {
            v24 = [v22 path];
            [v19 removeBinaryPath:v24];
          }
        }

        else
        {
          v20 = SALog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v45 = "[SAHelper unregisterPaths:reply:]";
            v46 = 2112;
            v47 = v18;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: Unknown bundleID %@", buf, 0x16u);
          }
        }
      }

      v14 = [v39 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v14);
  }

  [v13 clearAppsWithZeroPath];
  if (([v13 saveToDisk] & 1) == 0)
  {
    v35 = SALog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10003BD60();
    }

    v34 = [NSError errorWithDomain:NSCocoaErrorDomain code:513 userInfo:0];
    v37[2](v37, v34);
LABEL_28:

    goto LABEL_29;
  }

  v25 = SALog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    sub_10003BDE0(v25, v26, v27, v28, v29, v30, v31, v32);
  }

  v37[2](v37, 0);
LABEL_29:

  objc_sync_exit(obj);
}

- (void)getAppPaths:(id)a3 options:(int)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100008660;
  v38 = sub_100008670;
  v39 = 0;
  if (a4 == 1)
  {
    v15 = objc_opt_new();
    [v15 importDefaultList];
    v21 = objc_opt_new();
    [v21 updateWithAppPathList:v15];
    v22 = [v21 generateDictionary];
    v20 = 0;
  }

  else
  {
    if (a4)
    {
      v22 = 0;
      v20 = 0;
LABEL_16:
      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0, v24];

      v22 = 0;
      goto LABEL_17;
    }

    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v11 = v35[5];
    v35[5] = v10;

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100008678;
    v31[3] = &unk_100064AA8;
    v33 = &v34;
    v12 = v9;
    v32 = v12;
    [SAQuery installedAppsAtVolume:0 sortForUrgency:4 options:1 block:v31];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000887C;
    v28[3] = &unk_100064AD0;
    v30 = &v34;
    v13 = v12;
    v29 = v13;
    [SAQuery installedAppGroupsAtVolume:v28];
    v14 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v40 count:16];
    if (v16)
    {
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [*(*(&v24 + 1) + 8 * i) getDictionary];
          [v14 addObject:v19];
        }

        v16 = [v15 countByEnumeratingWithState:&v24 objects:v40 count:16];
      }

      while (v16);
    }

    v20 = v14;
    v21 = v32;
    v22 = v20;
  }

  if (!v22 || ![v22 count])
  {
    goto LABEL_16;
  }

  v23 = 0;
LABEL_17:
  v8[2](v8, v22, v23);
  _Block_object_dispose(&v34, 8);
}

- (void)getPurgeableInfo:(id)a3 options:(unint64_t)a4 reply:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [v7 path];
  v10 = [SAQuery getFSPurgeableInfo:v9 options:(2 * v6) & 4];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = SALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003BE58();
    }

    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
  }

  v8[2](v8, v10, v11);
}

+ (unint64_t)getOVPFileAndVolumeSize
{
  v25 = 0;
  theArray = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v2 = APFSOverProvModel();
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "+[SAHelper getOVPFileAndVolumeSize]";
    v29 = 1024;
    LODWORD(v30) = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: overprovisioning model %d", buf, 0x12u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000090C4;
  v19[3] = &unk_100064AF8;
  v19[4] = &v21;
  v20 = v2 == 1;
  [SAUtilities getFileSize:@"/private/var/.overprovisioning_file" reply:v19];
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "+[SAHelper getOVPFileAndVolumeSize]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Try to get OVP volume reserved size", buf, 0xCu);
  }

  if (APFSContainerGetBootDevice())
  {
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003ADFC();
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_27;
  }

  v9 = 0;
  [0 UTF8String];
  v10 = APFSVolumeRoleFind();
  if (v2 != 2 || !theArray)
  {
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No OVP volume found", buf, 2u);
    }

    goto LABEL_26;
  }

  if (v10)
  {
    if (v10 != 49245)
    {
      v5 = SALog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10003BFAC();
      }

LABEL_26:
      v6 = 0;
      v7 = 0;
      v8 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003BF70();
    }

    goto LABEL_26;
  }

  if (!CFArrayGetCount(theArray))
  {
    goto LABEL_24;
  }

  v8 = theArray;
  v7 = [(__CFArray *)theArray objectAtIndexedSubscript:0];
  v11 = v7;
  [v7 UTF8String];
  if (APFSExtendedSpaceInfo() || (v5 = v25) == 0)
  {
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003BE94();
    }

    v6 = 0;
  }

  else
  {
    v12 = [v25 objectForKey:@"fs_reserve"];
    v6 = v12;
    if (v12)
    {
      v13 = [v12 unsignedLongLongValue];
      v14 = SALog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "+[SAHelper getOVPFileAndVolumeSize]";
        v29 = 2048;
        v30 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: OVP volume reserved size %llu", buf, 0x16u);
      }

      v22[3] += v13;
    }

    else
    {
      v17 = SALog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        sub_10003BF04(v18, buf, v17);
      }
    }
  }

LABEL_27:

  v15 = v22[3];
  _Block_object_dispose(&v21, 8);

  return v15;
}

- (void)computeSizeOfSystemVolume:(id)a3
{
  v20 = a3;
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10003C098(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v34 = 0;
  v35[0] = &v34;
  v35[1] = 0x2020000000;
  v35[2] = 0;
  v32 = 0;
  v33[0] = &v32;
  v33[1] = 0x2020000000;
  v33[2] = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100008660;
  v30 = sub_100008670;
  v31 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [&off_1000690B0 countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v11)
  {
    v12 = *v23;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(&off_1000690B0);
      }

      v14 = *(*(&v22 + 1) + 8 * v13);
      v15 = v14;
      v16 = [v14 UTF8String];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100009538;
      v21[3] = &unk_100064B20;
      v21[4] = v14;
      v21[5] = &v34;
      v21[6] = &v32;
      v21[7] = &v26;
      [SASupport getVolSizeFromAttrList:v16 completionHandler:v21];
      if (v27[5])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [&off_1000690B0 countByEnumeratingWithState:&v22 objects:v36 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v17 = +[SAHelper getOVPFileAndVolumeSize];
  *(v35[0] + 24) += v17;
  v18 = SALog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_10003C110(v35, v33, v18);
  }

  v19 = objc_opt_new();
  [v19 setUsed:*(v35[0] + 24)];
  [v19 setCapacity:*(v33[0] + 24)];
  v20[2](v20, v19, v27[5]);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v34, 8);
}

- (void)computeSizeOfVolumeAtURL:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 fileSystemRepresentation];
  if (*v10 == 47 && !v10[1])
  {
    [(SAHelper *)self computeSizeOfSystemVolume:v9];
  }

  else
  {
    v11 = SALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10003C230(v8);
    }

    bzero(&v44, 0x878uLL);
    v12 = v8;
    if (statfs([v8 fileSystemRepresentation], &v44))
    {
      v13 = *__error();
      v14 = SALog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10003C2C4(v8, v13, v14);
      }

      v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v13 userInfo:0];
      v9[2](v9, 0, v15);
    }

    else
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = sub_100008660;
      v26 = sub_100008670;
      v27 = 0;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100009A80;
      v21[3] = &unk_100064B48;
      v21[4] = &v32;
      v21[5] = &v28;
      v21[6] = &v22;
      [SASupport getVolSizeFromAttrList:v44.f_mntonname completionHandler:v21];
      if (v23[5])
      {
        (v9[2])(v9, 0);
      }

      else
      {
        v16 = SALog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v19 = v33[3];
          v20 = v29[3];
          *buf = 136315906;
          v37 = "[SAHelper computeSizeOfVolumeAtURL:options:completionHandler:]";
          v38 = 1024;
          v39 = v6;
          v40 = 2048;
          v41 = v19;
          v42 = 2048;
          v43 = v20;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s:with options = %u, attrListUsed  = %llu, capacity = %llu", buf, 0x26u);
        }

        v17 = objc_opt_new();
        [v17 setUsed:v33[3]];
        [v17 setRawUsed:v33[3]];
        [v17 setCapacity:v29[3]];
        v18 = [NSString stringWithUTF8String:v44.f_mntonname];
        [v17 setMountedOn:v18];

        (v9)[2](v9, v17, 0);
      }

      _Block_object_dispose(&v22, 8);

      _Block_object_dispose(&v28, 8);
      _Block_object_dispose(&v32, 8);
    }
  }
}

- (void)getLastTelemetryData:(id)a3
{
  v3 = a3;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10003C5C8(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  [SATelemetryManager getLastTelemetryData:v3];
}

- (void)importFromPlist:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10003C640();
  }

  v8 = objc_opt_new();
  [v8 loadFromDisk];
  v9 = [v8 importFromPlists:v5];
  [v8 saveToDisk];
  v6[2](v6, v9);
}

- (void)clearLastTelemetryData:(id)a3
{
  v3 = a3;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10003C6BC(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  [SATelemetryManager clearLastTelemetryData:v3];
}

- (void)setAppPathListPathOnDisk:(id)a3 reply:(id)a4
{
  v5 = a4;
  [SAAppPathList setPathToDisk:a3];
  v5[2](v5, 0);
}

- (void)setAppPathListPathOnDisktoDefaultWithReply:(id)a3
{
  v3 = a3;
  [SAAppPathList setPathToDisk:@"/var/db/spaceattribution/AppPathList.db"];
  v3[2](v3, 0);
}

@end