@interface PLAssetsdDemoService
- (PLAssetsdDemoService)initWithConnectionAuthorization:(id)authorization;
- (void)cleanupForStoreDemoModeByStagingTemplateOrResettingLibrary:(id)library;
- (void)hasCompletedMomentAnalysisWithReply:(id)reply;
- (void)hasCompletedRestorePostProcessingWithReply:(id)reply;
@end

@implementation PLAssetsdDemoService

- (void)hasCompletedMomentAnalysisWithReply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v12 = 0u;
  *sel = 0u;
  v10 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v10) = enabled;
  if (enabled)
  {
    *(&v10 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: hasCompletedMomentAnalysisWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v10 + 1), (&v12 + 8));
  }

  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v6 = [PLPhotoLibrary newPhotoLibraryWithName:"[PLAssetsdDemoService hasCompletedMomentAnalysisWithReply:]" loadedFromURL:systemLibraryURL options:0 error:0];

  replyCopy[2](replyCopy, [v6 hasCompletedMomentAnalysis]);
  if (v11 == 1)
  {
    os_activity_scope_leave((&v12 + 8));
  }

  if (v12)
  {
    v7 = PLRequestGetLog();
    v8 = v7;
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v15 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_END, v12, "Cleanup for store demo mode [requested by SpringBoard]", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)hasCompletedRestorePostProcessingWithReply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v12 = 0u;
  *sel = 0u;
  v10 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v10) = enabled;
  if (enabled)
  {
    *(&v10 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: hasCompletedRestorePostProcessingWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v10 + 1), (&v12 + 8));
  }

  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v6 = [PLPhotoLibrary newPhotoLibraryWithName:"[PLAssetsdDemoService hasCompletedRestorePostProcessingWithReply:]" loadedFromURL:systemLibraryURL options:0 error:0];

  replyCopy[2](replyCopy, [v6 hasCompletedRestorePostProcessing]);
  if (v11 == 1)
  {
    os_activity_scope_leave((&v12 + 8));
  }

  if (v12)
  {
    v7 = PLRequestGetLog();
    v8 = v7;
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v15 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_END, v12, "Cleanup for store demo mode [requested by SpringBoard]", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)cleanupForStoreDemoModeByStagingTemplateOrResettingLibrary:(id)library
{
  v35 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v27 = 0u;
  *sel = 0u;
  v26 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v26) = enabled;
  if (enabled)
  {
    *(&v26 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: cleanupForStoreDemoModeByStagingTemplateOrResettingLibrary:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v26 + 1), (&v27 + 8));
  }

  v5 = objc_autoreleasePoolPush();
  v6 = +[PLDemoModeUtilities newDemoModeUtilitiesWithDefaultSystemPaths];
  v7 = PLStoreDemoModeGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Cleanup for store demo mode [requested by SpringBoard]", buf, 2u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  demoContentPhotoLibraryTemplatePath = [v6 demoContentPhotoLibraryTemplatePath];
  v10 = [defaultManager fileExistsAtPath:demoContentPhotoLibraryTemplatePath];

  if (v10)
  {
    v11 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      demoContentPhotoLibraryTemplatePath2 = [v6 demoContentPhotoLibraryTemplatePath];
      *buf = 138543362;
      v34 = demoContentPhotoLibraryTemplatePath2;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Found demo content template, staging photo library from %{public}@", buf, 0xCu);
    }

    if ([v6 prepareForStoreDemoModeByStagingDemoLibraryContentFromTemplate])
    {
      v13 = 0;
      v14 = 1;
LABEL_14:
      v16 = 1;
      goto LABEL_18;
    }

    v20 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A278];
    v32 = @"unable to stage demo library content from template";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v19 = [v20 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v18];
  }

  else
  {
    v15 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "No demo content template found, performing legacy demo library content cleanup by resetting library", buf, 2u);
    }

    if ([v6 cleanupForStoreDemoModeByRemovingNonDemoContentFromTargetLibrary])
    {
      v14 = 0;
      v13 = 0;
      goto LABEL_14;
    }

    v17 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A278];
    v30 = @"unable to remove non-demo content";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v18];
  }

  v13 = v19;

  v14 = 0;
  v16 = 0;
LABEL_18:

  objc_autoreleasePoolPop(v5);
  if ((v16 & 1) == 0)
  {
    v21 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v13;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to cleanup demo library, %{public}@", buf, 0xCu);
    }
  }

  libraryCopy[2](libraryCopy, v16, v13);
  if ((v14 & v16) == 1)
  {
    v22 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Cleanup for store demo mode force exiting photos clients to kickstart staged library installation", buf, 2u);
    }

    [v6 kickstartStagedDemoContentInstallationByKillingAllClients];
  }

  if (v26 == 1)
  {
    os_activity_scope_leave((&v27 + 8));
  }

  if (v27)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v34 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, v27, "Cleanup for store demo mode [requested by SpringBoard]", "%{public}s", buf, 0xCu);
    }
  }
}

- (PLAssetsdDemoService)initWithConnectionAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v9.receiver = self;
  v9.super_class = PLAssetsdDemoService;
  v6 = [(PLAssetsdDemoService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionAuthorization, authorization);
  }

  return v7;
}

@end