@interface TRIRemoteAssetPatcher
- ($A5A652246548B43F8BC05201A1C72A70)applyPatchWithFilename:(id)filename toSrcDir:(id)dir writingToEmptyDestDir:(id)destDir postPatchCompression:(id)compression error:(id *)error;
- (TRIRemoteAssetPatcher)initWithMonitoredActivity:(id)activity;
- (id)_tokenForSandboxExtensionWithClass:(const char *)class path:(id)path;
@end

@implementation TRIRemoteAssetPatcher

- (TRIRemoteAssetPatcher)initWithMonitoredActivity:(id)activity
{
  activityCopy = activity;
  v9.receiver = self;
  v9.super_class = TRIRemoteAssetPatcher;
  v6 = [(TRIRemoteAssetPatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_monitoredActivity, activity);
  }

  return v7;
}

- (id)_tokenForSandboxExtensionWithClass:(const char *)class path:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [pathCopy fileSystemRepresentation];
  v5 = *MEMORY[0x277D861E8];
  v6 = sandbox_extension_issue_file();
  if (v6)
  {
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v6 encoding:4];
    free(v7);
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = pathCopy;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Failed to create sandbox extension for %{public}@", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- ($A5A652246548B43F8BC05201A1C72A70)applyPatchWithFilename:(id)filename toSrcDir:(id)dir writingToEmptyDestDir:(id)destDir postPatchCompression:(id)compression error:(id *)error
{
  filenameCopy = filename;
  dirCopy = dir;
  destDirCopy = destDir;
  v15 = objc_autoreleasePoolPush();
  v16 = [(TRIRemoteAssetPatcher *)self _tokenForSandboxExtensionWithClass:"com.apple.app-sandbox.read" path:filenameCopy];
  if (v16)
  {
    v17 = [(TRIRemoteAssetPatcher *)self _tokenForSandboxExtensionWithClass:"com.apple.app-sandbox.read" path:dirCopy];
    if (dirCopy)
    {
      v18 = [(TRIRemoteAssetPatcher *)self _tokenForSandboxExtensionWithClass:"com.apple.app-sandbox.read-write" path:destDirCopy];
      if (v18)
      {
        monitoredActivity = self->_monitoredActivity;
        if (monitoredActivity && xpc_activity_should_defer(monitoredActivity))
        {
          v20 = TRILogCategory_Archiving();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            LOBYTE(error) = 2;
            _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Deferring before start of patch application.", buf, 2u);
          }

          else
          {
            LOBYTE(error) = 2;
          }
        }

        else
        {
          v31 = v18;
          v21 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.trial.TrialArchivingService"];
          [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287FEF680];
          v22 = v32 = v17;
          [v21 setRemoteObjectInterface:v22];

          [v21 resume];
          *buf = 0;
          v58 = buf;
          v59 = 0x3032000000;
          v60 = __Block_byref_object_copy__38;
          v61 = __Block_byref_object_dispose__38;
          v62 = 0;
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __106__TRIRemoteAssetPatcher_applyPatchWithFilename_toSrcDir_writingToEmptyDestDir_postPatchCompression_error___block_invoke;
          v56[3] = &unk_279DE09F8;
          v56[4] = buf;
          v23 = MEMORY[0x2743948D0](v56);
          v51 = 0;
          v52 = &v51;
          v53 = 0x2810000000;
          v54 = &unk_26F7089E2;
          v55 = 0;
          v45 = 0;
          v46 = &v45;
          v47 = 0x3032000000;
          v48 = __Block_byref_object_copy__38;
          v49 = __Block_byref_object_dispose__38;
          v50 = 0;
          v30 = self->_monitoredActivity;
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __106__TRIRemoteAssetPatcher_applyPatchWithFilename_toSrcDir_writingToEmptyDestDir_postPatchCompression_error___block_invoke_2;
          v33[3] = &unk_279DE3360;
          v24 = v21;
          v18 = v31;
          v20 = v24;
          v34 = v24;
          v25 = v23;
          v17 = v32;
          v29 = v25;
          v41 = v25;
          v35 = filenameCopy;
          v36 = v16;
          v37 = dirCopy;
          v38 = v32;
          v39 = destDirCopy;
          v40 = v31;
          v42 = &v51;
          v43 = &v45;
          var0 = compression.var0;
          [TRIDeferralNotifier forwardDeferralsFromMonitoredActivity:v30 usingDarwinNotificationName:"com.apple.trial.TrialArchivingService.shouldDefer" whileExecutingBlock:v33];
          [v20 invalidate];
          v26 = *(v58 + 5);
          if (v26)
          {
            v27 = v29;
            if (error)
            {
              objc_storeStrong(error, v26);
              LOBYTE(error) = 0;
            }
          }

          else
          {
            v27 = v29;
            if (error)
            {
              objc_storeStrong(error, v46[5]);
            }

            LOBYTE(error) = *(v52 + 32);
          }

          _Block_object_dispose(&v45, 8);
          _Block_object_dispose(&v51, 8);

          _Block_object_dispose(buf, 8);
        }
      }

      else
      {
        LOBYTE(error) = 0;
      }
    }

    else
    {
      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 0;
  }

  objc_autoreleasePoolPop(v15);
  return error;
}

void __106__TRIRemoteAssetPatcher_applyPatchWithFilename_toSrcDir_writingToEmptyDestDir_postPatchCompression_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) synchronousRemoteObjectProxyWithErrorHandler:*(a1 + 88)];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 112);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __106__TRIRemoteAssetPatcher_applyPatchWithFilename_toSrcDir_writingToEmptyDestDir_postPatchCompression_error___block_invoke_3;
  v10[3] = &unk_279DE3338;
  v11 = *(a1 + 96);
  [v2 applyPatchWithFilename:v3 patchExtension:v4 toSrcDir:v5 srcDirExtension:v6 writingToDestDir:v7 destDirExtension:v8 postPatchCompression:v9 completion:v10];
}

@end