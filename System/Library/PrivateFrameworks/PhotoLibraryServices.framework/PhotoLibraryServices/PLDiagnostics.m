@interface PLDiagnostics
+ (BOOL)shouldSuppressRadarUserNotificationWithMessage:(id)a3 radarTitle:(id)a4;
+ (BOOL)tapToRadarKitDisabled;
+ (id)_tapToRadarProcessName;
+ (id)createOrEmptyMemoriesRelatedSnapshotOutputFolderWithPathManager:(id)a3;
+ (id)diagnosticsURLs;
+ (id)excludingNameExpression;
+ (id)matchingNameExpression;
+ (id)memoriesAndRelatedDiagnosticsOutputURLWithPathManager:(id)a3;
+ (int64_t)_deviceClassesFromDeviceClassesString:(id)a3;
+ (unint64_t)addOSStateHandlerWithTitle:(id)a3 queue:(id)a4 propertyListHandler:(id)a5;
+ (void)_fallBackTapToRadarWithTitle:(id)a3 description:(id)a4 radarComponent:(int64_t)a5;
+ (void)_radarComponentDetailsForComponent:(int64_t)a3 reply:(id)a4;
+ (void)_tapToRadarKitDraftWithTitle:(id)a3 description:(id)a4 radarComponent:(int64_t)a5 isUserInitiated:(BOOL)a6 displayReason:(id)a7 attachments:(id)a8;
+ (void)collectMomentsStatWithLibraryContext:(id)a3 completionBlock:(id)a4;
+ (void)enumerateDiagnosticsURLsIncludingPropertyiesForKeys:(id)a3 handler:(id)a4;
+ (void)fileRadarUserNotificationWithHeader:(id)a3 message:(id)a4 radarTitle:(id)a5 radarDescription:(id)a6 radarComponent:(int64_t)a7 diagnosticTTRType:(signed __int16)a8 attachments:(id)a9 extensionItem:(id)a10;
+ (void)requestTapToRadarAuthorizationWithCompletion:(id)a3;
+ (void)tapToRadarWithTitle:(id)a3 description:(id)a4 radarComponent:(int64_t)a5 isUserInitiated:(BOOL)a6 displayReason:(id)a7 attachments:(id)a8;
@end

@implementation PLDiagnostics

+ (void)collectMomentsStatWithLibraryContext:(id)a3 completionBlock:(id)a4
{
  v55[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLMoment entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  [v10 setResultType:2];
  [v10 setPropertiesToFetch:&unk_1F0FC0300];
  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cachedCount" ascending:1];
  v54 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  [v10 setSortDescriptors:v12];

  v52 = 0;
  v13 = [v5 executeFetchRequest:v10 error:&v52];
  v14 = v52;
  if (!v14 && v13)
  {
    v43 = v10;
    v44 = v7;
    v45 = v6;
    v46 = v5;
    v47 = [v13 count];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v42 = v13;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = 0;
      v20 = *v49;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v49 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v48 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = [v22 objectForKeyedSubscript:@"cachedCount"];
          v25 = [v24 unsignedIntegerValue];

          v18 += v25;
          if (v25 == 1)
          {
            ++v19;
          }

          objc_autoreleasePoolPop(v23);
        }

        v17 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v26 = v47;
    v27 = v18 / v47;
    v28 = [v15 valueForKeyPath:@"cachedCount"];
    if ([v28 count])
    {
      v7 = v44;
      if ([v28 count] == 1)
      {
        v29 = [v28 firstObject];
        v30 = [v29 integerValue];
        v14 = 0;
      }

      else
      {
        v29 = [v28 sortedArrayUsingSelector:sel_compare_];
        v31 = [v28 count];
        v32 = [v29 count] >> 1;
        if (v31)
        {
          v37 = [v29 objectAtIndex:v32];
          v30 = [v37 integerValue];
        }

        else
        {
          v33 = [v29 objectAtIndex:v32 - 1];
          v55[0] = v33;
          v34 = [v29 objectAtIndex:v32];
          v55[1] = v34;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
          v36 = [v35 valueForKeyPath:@"@avg.self"];
          v30 = [v36 integerValue];

          v27 = v18 / v47;
          v26 = v47;

          v37 = v33;
        }

        v14 = 0;
      }
    }

    else
    {
      v30 = 0;
      v7 = v44;
      v14 = 0;
    }

    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v26];
    [v7 setObject:v38 forKey:@"numberOfMoments"];

    v39 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
    [v7 setObject:v39 forKey:@"averageNumberOfAssetsInMoments"];

    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
    [v7 setObject:v40 forKey:@"medianNumberOfAssetsInMoments"];

    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
    [v7 setObject:v41 forKey:@"numberOfMomentsWithSingleAsset"];

    v6 = v45;
    v5 = v46;
    v13 = v42;
    v10 = v43;
    if (v45)
    {
      (*(v45 + 2))(v45, v7, 0);
    }
  }
}

+ (id)createOrEmptyMemoriesRelatedSnapshotOutputFolderWithPathManager:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [a1 memoriesAndRelatedDiagnosticsOutputURLWithPathManager:a3];
  v4 = [v3 path];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v5 fileExistsAtPath:v4])
  {
    v16 = 0;
    v6 = [v5 removeItemAtURL:v3 error:&v16];
    v7 = v16;
    if ((v6 & 1) == 0)
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v3 path];
        *buf = 138412546;
        v18 = v7;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "ERROR (%@) : Photo Diagnostics failed deleting snapshot output path (%@).", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if ([v5 fileExistsAtPath:v4])
  {
    v10 = v7;
  }

  else
  {
    v15 = v7;
    v11 = [v5 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v15];
    v10 = v15;

    if ((v11 & 1) == 0 && v10)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v3 path];
        *buf = 138412546;
        v18 = v10;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "ERROR (%@) : Photo Diagnostics failed creating snapshot output path (%@).", buf, 0x16u);
      }
    }
  }

  return v10;
}

+ (id)memoriesAndRelatedDiagnosticsOutputURLWithPathManager:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [a1 _memoriesRelatedOutputPathBaseDirectoryWithPathManager:a3];
  v5 = [v4 stringByAppendingPathComponent:@"Memories"];
  v6 = [v3 fileURLWithPath:v5];

  return v6;
}

+ (void)fileRadarUserNotificationWithHeader:(id)a3 message:(id)a4 radarTitle:(id)a5 radarDescription:(id)a6 radarComponent:(int64_t)a7 diagnosticTTRType:(signed __int16)a8 attachments:(id)a9 extensionItem:(id)a10
{
  v68 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a9;
  v21 = a10;
  if (([a1 shouldSuppressRadarUserNotificationWithMessage:v17 radarTitle:v18] & 1) == 0)
  {
    os_unfair_lock_lock(&s_userNotificationLock);
    if (s_userNotificationHandler)
    {
      os_unfair_lock_unlock(&s_userNotificationLock);
      v22 = PLBackendGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v65 = v18;
        v66 = 2112;
        v67 = v19;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "user notification already running: ignoring %@: %@", buf, 0x16u);
      }

      goto LABEL_31;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __148__PLDiagnostics_fileRadarUserNotificationWithHeader_message_radarTitle_radarDescription_radarComponent_diagnosticTTRType_attachments_extensionItem___block_invoke;
    aBlock[3] = &unk_1E7577D88;
    v60 = a8;
    v55 = v20;
    v56 = v18;
    v57 = v19;
    v59 = a7;
    v23 = v16;
    v58 = v23;
    v24 = _Block_copy(aBlock);
    v25 = s_userNotificationHandler;
    s_userNotificationHandler = v24;

    os_unfair_lock_unlock(&s_userNotificationLock);
    v26 = a8;
    v27 = a8 - 1;
    v51 = v26;
    if (v27)
    {
      if (v26 == 2)
      {
        v28 = @"File Radar";
        v29 = @"File Radar with Image and intermediates";
        goto LABEL_11;
      }

      v28 = @"Never for Photos Issues";
    }

    else
    {
      v28 = @"File Radar with Image and intermediates";
    }

    v29 = @"File Radar";
LABEL_11:
    v30 = *MEMORY[0x1E695EE60];
    v62[0] = *MEMORY[0x1E695EE58];
    v62[1] = v30;
    v50 = v23;
    v63[0] = v23;
    v63[1] = v17;
    v31 = *MEMORY[0x1E695EE70];
    v62[2] = *MEMORY[0x1E695EE78];
    v62[3] = v31;
    v63[2] = v29;
    v63[3] = @"Not Now";
    v62[4] = *MEMORY[0x1E695EE98];
    v32 = *MEMORY[0x1E695EE68];
    v63[4] = v28;
    v63[5] = MEMORY[0x1E695E118];
    v33 = *MEMORY[0x1E69D4530];
    v62[5] = v32;
    v62[6] = v33;
    v34 = *MEMORY[0x1E69D4538];
    v63[6] = MEMORY[0x1E695E118];
    v63[7] = MEMORY[0x1E695E118];
    v35 = *MEMORY[0x1E69D44D0];
    v62[7] = v34;
    v62[8] = v35;
    v63[8] = MEMORY[0x1E695E110];
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:9];
    v22 = v36;
    v52 = v16;
    if (v27 <= 1 && v21)
    {
      v37 = [v36 mutableCopy];
      [v37 setObject:@"com.apple.mobileslideshow.DestructiveChangeConfirmation" forKeyedSubscript:*MEMORY[0x1E69D44F0]];
      v38 = MEMORY[0x1E696ACC8];
      v61 = v21;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
      v40 = [v38 archivedDataWithRootObject:v39 requiringSecureCoding:1 error:0];
      [v37 setObject:v40 forKeyedSubscript:*MEMORY[0x1E69D44F8]];

      v16 = v52;
      v41 = [v37 copy];

      v22 = v41;
    }

    error = 0;
    v42 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v22);
    if (!v42 || error)
    {
      v48 = PLBackendGetLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v65) = error;
        _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "could not create user notification: %d", buf, 8u);
      }

      if (!v42)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v51 == 1)
      {
        v43 = PLDiagnosticsUserNotificationSharePhotoCallback;
      }

      else
      {
        v43 = PLDiagnosticsUserNotificationCallback;
      }

      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v42, v43, 0);
      if (RunLoopSource)
      {
        v45 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v45, *MEMORY[0x1E695E8D0]);
        CFRelease(v45);
        v47 = PLBackendGetLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = v50;
          _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_DEFAULT, "running user notification: %@", buf, 0xCu);
        }

        v16 = v52;
        goto LABEL_31;
      }

      v49 = PLBackendGetLog();
      v16 = v52;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v65) = error;
        _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "could not create user notification runloop: %d", buf, 8u);
      }
    }

    CFRelease(v42);
LABEL_31:
  }
}

void __148__PLDiagnostics_fileRadarUserNotificationWithHeader_message_radarTitle_radarDescription_radarComponent_diagnosticTTRType_attachments_extensionItem___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || *(a1 + 72) == 2)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  [PLDiagnostics tapToRadarWithTitle:*(a1 + 40) description:*(a1 + 48) radarComponent:*(a1 + 64) isUserInitiated:0 displayReason:*(a1 + 56) attachments:v3];
}

+ (BOOL)shouldSuppressRadarUserNotificationWithMessage:(id)a3 radarTitle:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (MEMORY[0x19EAEE230]())
  {
    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [v7 objectForKey:@"PhotoDiagnosticsIgnoreUntil"];

    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([MEMORY[0x1E695DF00] date], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[NSObject compare:](v8, "compare:", v9), v9, v10 != 1))
    {
      v12 = 0;
      goto LABEL_12;
    }

    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring Radar user notification request with ignore date=%@ for %@: %@", &v14, 0x20u);
    }
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring Radar user notification request on a customer install for %@: %@", &v14, 0x16u);
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

+ (void)_radarComponentDetailsForComponent:(int64_t)a3 reply:(id)a4
{
  if (a3 > 4)
  {
    v6 = 0;
    v7 = &stru_1F0F06D80;
    v8 = &stru_1F0F06D80;
    v9 = &stru_1F0F06D80;
  }

  else
  {
    v6 = qword_19C60FFF8[a3];
    v7 = off_1E7577DC0[a3];
    v8 = off_1E7577DE8[a3];
    v9 = off_1E7577E10[a3];
  }

  (*(a4 + 2))(a4, v6, v7, v8, v9);
}

+ (void)_fallBackTapToRadarWithTitle:(id)a3 description:(id)a4 radarComponent:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__113504;
  v28 = __Block_byref_object_dispose__113505;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73__PLDiagnostics__fallBackTapToRadarWithTitle_description_radarComponent___block_invoke;
  v23[3] = &unk_1E7577D38;
  v23[4] = &v24;
  [a1 _radarComponentDetailsForComponent:a5 reply:v23];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = v25[5];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __73__PLDiagnostics__fallBackTapToRadarWithTitle_description_radarComponent___block_invoke_114;
  v21 = &unk_1E7577D60;
  v12 = v10;
  v22 = v12;
  [v11 enumerateKeysAndObjectsUsingBlock:&v18];
  if (v8)
  {
    v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"Title" value:{v8, v18, v19, v20, v21}];
    [v12 addObject:v13];
  }

  if (v9)
  {
    v14 = [MEMORY[0x1E696AF60] queryItemWithName:@"Description" value:v9];
    [v12 addObject:v14];
  }

  v15 = [MEMORY[0x1E696AF20] componentsWithString:{@"tap-to-radar://new", v18, v19, v20, v21}];
  [v15 setQueryItems:v12];
  v16 = [MEMORY[0x1E6963608] defaultWorkspace];
  v17 = [v15 URL];
  [v16 openURL:v17 configuration:0 completionHandler:0];

  _Block_object_dispose(&v24, 8);
}

void __73__PLDiagnostics__fallBackTapToRadarWithTitle_description_radarComponent___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v18[8] = *MEMORY[0x1E69E9840];
  v18[0] = @"com.apple.PhotoLibraryServices.PhotosDiagnostics";
  v18[1] = @"Serious Bug";
  v18[2] = @"Not Applicable";
  v9 = MEMORY[0x1E696AEC0];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 stringWithFormat:@"%ld", a2, @"ExtensionIdentifiers", @"Classification", @"Reproducibility", @"ComponentID"];
  v18[3] = v13;
  v18[4] = v12;
  v17[4] = @"ComponentName";
  v17[5] = @"ComponentVersion";
  v18[5] = v11;
  v18[6] = v10;
  v17[6] = @"DeviceClasses";
  v17[7] = @"IncludeDevicePrefixInTitle";
  v18[7] = &unk_1F0FBEE48;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:8];
  v15 = *(*(a1 + 32) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

void __73__PLDiagnostics__fallBackTapToRadarWithTitle_description_radarComponent___block_invoke_114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AF60] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

+ (int64_t)_deviceClassesFromDeviceClassesString:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 componentsSeparatedByString:{@", ", 0}];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEqualToString:@"iPhone"])
        {
          v6 |= 1uLL;
        }

        else if ([v9 isEqualToString:@"iPad"])
        {
          v6 |= 2uLL;
        }

        else if ([v9 isEqualToString:@"Watch"])
        {
          v6 |= 4uLL;
        }

        else if ([v9 isEqualToString:@"AppleTV"])
        {
          v6 |= 8uLL;
        }

        else if ([v9 isEqualToString:@"HomePod"])
        {
          v6 |= 0x10uLL;
        }

        else if ([v9 isEqualToString:@"Mac"])
        {
          v6 |= 0x20uLL;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_tapToRadarProcessName
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processName];

  if ([v3 isEqualToString:@"assetsd"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"photolibraryd"))
  {
    v4 = @"Photos Library Service";
  }

  else if ([v3 isEqualToString:@"photoanalysisd"])
  {
    v4 = @"Photos Analysis Service";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (void)_tapToRadarKitDraftWithTitle:(id)a3 description:(id)a4 radarComponent:(int64_t)a5 isUserInitiated:(BOOL)a6 displayReason:(id)a7 attachments:(id)a8
{
  v10 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  if (!v17 && !v10)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"PLDiagnostics.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"isUserInitiated || displayReason != nil"}];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v19 = getRadarDraftClass_softClass;
  v40 = getRadarDraftClass_softClass;
  if (!getRadarDraftClass_softClass)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __getRadarDraftClass_block_invoke;
    v36[3] = &unk_1E7577EA0;
    v36[4] = &v37;
    __getRadarDraftClass_block_invoke(v36);
    v19 = v38[3];
  }

  v20 = v19;
  _Block_object_dispose(&v37, 8);
  v21 = objc_opt_new();
  [v21 setTitle:v15];
  [v21 setProblemDescription:v16];
  [v21 setClassification:6];
  [v21 setReproducibility:6];
  [v21 setAutoDiagnostics:0];
  [v21 setIsUserInitiated:v10];
  [v21 setKeywords:MEMORY[0x1E695E0F0]];
  [v21 setAttachments:v18];
  [v21 setDiagnosticExtensionIDs:&unk_1F0FC02E8];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __115__PLDiagnostics__tapToRadarKitDraftWithTitle_description_radarComponent_isUserInitiated_displayReason_attachments___block_invoke;
  v33[3] = &unk_1E7577CE8;
  v34 = v21;
  v35 = a1;
  v22 = v21;
  [a1 _radarComponentDetailsForComponent:a5 reply:v33];
  v23 = [getTapToRadarServiceClass() shared];
  v24 = [a1 _tapToRadarProcessName];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __115__PLDiagnostics__tapToRadarKitDraftWithTitle_description_radarComponent_isUserInitiated_displayReason_attachments___block_invoke_2;
  v28[3] = &unk_1E7577D10;
  v29 = v15;
  v30 = v16;
  v31 = a1;
  v32 = a5;
  v25 = v16;
  v26 = v15;
  [v23 createDraft:v22 forProcessNamed:v24 withDisplayReason:v17 completionHandler:v28];
}

void __115__PLDiagnostics__tapToRadarKitDraftWithTitle_description_radarComponent_isUserInitiated_displayReason_attachments___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v12 = getRadarComponentClass_softClass;
  v19 = getRadarComponentClass_softClass;
  if (!getRadarComponentClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getRadarComponentClass_block_invoke;
    v15[3] = &unk_1E7577EA0;
    v15[4] = &v16;
    __getRadarComponentClass_block_invoke(v15);
    v12 = v17[3];
  }

  v13 = v12;
  _Block_object_dispose(&v16, 8);
  v14 = [[v12 alloc] initWithName:v9 version:v10 identifier:a2];
  [*(a1 + 32) setComponent:v14];

  [*(a1 + 32) setRemoteDeviceClasses:{objc_msgSend(*(a1 + 40), "_deviceClassesFromDeviceClassesString:", v11)}];
}

void __115__PLDiagnostics__tapToRadarKitDraftWithTitle_description_radarComponent_isUserInitiated_displayReason_attachments___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLBackendGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "TapToRadarService returned error: (%@)", &v6, 0xCu);
    }

    [*(a1 + 48) _fallBackTapToRadarWithTitle:*(a1 + 32) description:*(a1 + 40) radarComponent:*(a1 + 56)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "TapToRadarService draft submitted", &v6, 2u);
    }
  }
}

+ (void)tapToRadarWithTitle:(id)a3 description:(id)a4 radarComponent:(int64_t)a5 isUserInitiated:(BOOL)a6 displayReason:(id)a7 attachments:(id)a8
{
  v10 = a6;
  v17 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  if (([a1 tapToRadarKitDisabled] & 1) != 0 || !TapToRadarKitLibraryCore())
  {
    [a1 _fallBackTapToRadarWithTitle:v17 description:v14 radarComponent:a5];
  }

  else
  {
    [a1 _tapToRadarKitDraftWithTitle:v17 description:v14 radarComponent:a5 isUserInitiated:v10 displayReason:v15 attachments:v16];
  }
}

+ (void)requestTapToRadarAuthorizationWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [getTapToRadarServiceClass() shared];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PLDiagnostics_requestTapToRadarAuthorizationWithCompletion___block_invoke;
  v6[3] = &unk_1E7577CC0;
  v7 = v3;
  v5 = v3;
  [v4 getServiceSettingsWithCompletionHandler:v6];
}

uint64_t __62__PLDiagnostics_requestTapToRadarAuthorizationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 authorizationStatus] == 3;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

+ (BOOL)tapToRadarKitDisabled
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PLPhotosDiagnosticsTapToRadarKitDisabled"];

  return v3;
}

+ (unint64_t)addOSStateHandlerWithTitle:(id)a3 queue:(id)a4 propertyListHandler:(id)a5
{
  v10 = a3;
  v11 = a5;
  v6 = v10;
  v7 = v11;
  v8 = os_state_add_handler();

  return v8;
}

_DWORD *__70__PLDiagnostics_addOSStateHandlerWithTitle_queue_propertyListHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    v16 = 0;
    v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:v2 format:200 options:0 error:&v16];
    v4 = v16;
    if (v3)
    {
      v5 = [v3 length];
      v6 = v5;
      if (v5 <= 0x8000)
      {
        v13 = v5;
        v14 = malloc_type_malloc(v5 + 200, 0x34D5CD35uLL);
        v11 = v14;
        if (v14)
        {
          bzero(v14, v13 + 200);
          *v11 = 1;
          v11[1] = v6;
          [*(a1 + 32) UTF8String];
          __strlcpy_chk();
          [v3 getBytes:v11 + 50 length:v6];
        }

        goto LABEL_13;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138412290;
        v18 = v7;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "state information archive for %@ too large";
        v10 = 12;
LABEL_9:
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v4;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "unable to archive process state information for %@: %@";
      v10 = 22;
      goto LABEL_9;
    }

    v11 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v11 = 0;
LABEL_14:

  return v11;
}

+ (id)excludingNameExpression
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6994978];
  v7 = 0;
  v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v2 options:1 error:&v7];
  v4 = v7;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v4 localizedDescription];
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Error creating excludingExpression %{public}@", buf, 0xCu);
  }

  return v3;
}

+ (id)matchingNameExpression
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [v2 initWithFormat:@"(CPL-diagnostics|%@)-.*.tgz", *MEMORY[0x1E6994988]];
  v8 = 0;
  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v3 options:1 error:&v8];
  v5 = v8;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v5 localizedDescription];
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Error creating matchingExpression %{public}@", buf, 0xCu);
  }

  return v4;
}

+ (void)enumerateDiagnosticsURLsIncludingPropertyiesForKeys:(id)a3 handler:(id)a4
{
  v41[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v30 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = *MEMORY[0x1E695DB78];
  v9 = *MEMORY[0x1E695DC30];
  v41[0] = *MEMORY[0x1E695DB78];
  v41[1] = v9;
  v31 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v11 = v10;
  v29 = v6;
  if (v6)
  {
    v12 = [v10 arrayByAddingObjectsFromArray:v6];

    v11 = v12;
  }

  v13 = [a1 logDirectoryURL];
  v27 = v11;
  v28 = v7;
  v14 = [v7 enumeratorAtURL:v13 includingPropertiesForKeys:v11 options:7 errorHandler:&__block_literal_global_113634];

  v15 = [a1 matchingNameExpression];
  v33 = [a1 excludingNameExpression];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v14;
  v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v36 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v35 = 0;
        [v20 getResourceValue:&v35 forKey:v8 error:0];
        v22 = v35;
        if (([v22 BOOLValue] & 1) == 0)
        {
          v34 = 0;
          [v20 getResourceValue:&v34 forKey:v31 error:0];
          v23 = v34;
          v24 = v23;
          if (!v15 || ([v15 firstMatchInString:v23 options:0 range:{0, objc_msgSend(v23, "length")}], v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
          {
            if (!v33 || ([v33 firstMatchInString:v24 options:0 range:{0, objc_msgSend(v24, "length")}], v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
            {
              v30[2](v30, v20, [v22 BOOLValue]);
            }
          }
        }

        objc_autoreleasePoolPop(v21);
      }

      v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v17);
  }
}

uint64_t __77__PLDiagnostics_enumerateDiagnosticsURLsIncludingPropertyiesForKeys_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [v3 code];

    if (v5 == 260)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 localizedDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "enumerate diagnostics error: %@\n", &v8, 0xCu);
  }

LABEL_7:

  return 1;
}

+ (id)diagnosticsURLs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__PLDiagnostics_diagnosticsURLs__block_invoke;
  v6[3] = &unk_1E7577C50;
  v4 = v3;
  v7 = v4;
  [a1 enumerateDiagnosticsURLsIncludingPropertyiesForKeys:0 handler:v6];

  return v4;
}

@end