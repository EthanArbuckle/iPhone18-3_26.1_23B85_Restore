@interface SUDownloader
+ (id)purgeOptionsForDescriptor:(id)a3 downloadOptions:(id)a4 completionQueue:(id)a5;
- (BOOL)_isWithinAutoDownloadWindowForPolicy:(id)a3 descriptor:(id)a4;
- (BOOL)_reapplyExistingDownloadPolicyIfDownloadable:(BOOL)a3;
- (BOOL)_shouldSendUpdatedProgressToDelegate;
- (BOOL)isClearingSpace;
- (BOOL)isDownloadHalted;
- (BOOL)isDownloading;
- (BOOL)isForeground;
- (BOOL)isReadyForDownload:(id)a3 ignoreExistingDownload:(BOOL)a4 error:(id *)a5;
- (BOOL)isSplatDownload;
- (BOOL)isUpdateDownloaded;
- (BOOL)needToWaitForUnlockForLoadingBrainForDescriptor:(id)a3;
- (BOOL)updateDownloadOptions:(id)a3 error:(id *)a4;
- (MAAsset)downloadAsset;
- (SUDownload)download;
- (SUDownloader)initWithCore:(id)a3;
- (SUManagerCore)core;
- (id)slaVersion;
- (int)_orderForPhase:(id)a3;
- (void)_changeDownloadPhase:(id)a3 progress:(float)a4 timeRemaining:(double)a5;
- (void)_downloadFailedWithError:(id)a3;
- (void)_downloadFinished:(BOOL)a3;
- (void)_downloadInvalidatedWithUpdates:(id)a3;
- (void)_loadBrainOnUnlockCallback;
- (void)_notePhaseCompleted:(id)a3;
- (void)_setDownloadDiscretionary:(BOOL)a3;
- (void)_snapshotProgress;
- (void)_updateLastSavedDownloadsOptions:(id)a3;
- (void)_updateNormalizedDownloadProgress;
- (void)_updateNormalizedDownloadProgressAndNotifyDelegate;
- (void)autoUpdateFound:(id)a3 downloadNow:(BOOL)a4;
- (void)cleanupPreviousDownloadState:(BOOL)a3;
- (void)dealloc;
- (void)deviceIsUpToDate;
- (void)downloadProgress:(id)a3;
- (void)endAutoDownloadTasksAndResetState;
- (void)ensureSSOTokenIfNeededForDownload:(id)a3;
- (void)loadBrainOnUnlockForDescriptor:(id)a3;
- (void)noteAutoDownloadFailedToStart:(id)a3 withError:(id)a4;
- (void)noteAutoDownloadFailedToStartWithError:(id)a3;
- (void)notifyClientOfClearingSpace:(BOOL)a3;
- (void)operatorBundleChanged;
- (void)resetDownloadStateOnStartup;
- (void)setClearingSpace:(BOOL)a3;
- (void)setDownload:(id)a3;
- (void)setDownloadAsset:(id)a3;
- (void)setDownloading:(BOOL)a3;
- (void)setForeground:(BOOL)a3;
- (void)startDownloadWithOptions:(id)a3 withResult:(id)a4;
- (void)tryAutoDownload;
@end

@implementation SUDownloader

- (SUDownloader)initWithCore:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SUDownloader;
  v5 = [(SUDownloader *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_core, v4);
    *&v6->_foreground = 0;
    downloadAsset = v6->_downloadAsset;
    v6->_downloadAsset = 0;

    download = v6->_download;
    v6->_download = 0;

    downloadProgressSnapshot = v6->_downloadProgressSnapshot;
    v6->_downloadProgressSnapshot = 0;

    v10 = [MEMORY[0x277CBEAA8] now];
    downloadProgressSnapshotDate = v6->_downloadProgressSnapshotDate;
    v6->_downloadProgressSnapshotDate = v10;

    v12 = +[SUNetworkMonitor sharedInstance];
    [v12 addObserver:v6];

    v6->_goNonDiscretionaryOnDownload = 0;
    brainLoadedForDescriptor = v6->_brainLoadedForDescriptor;
    v6->_brainLoadedForDescriptor = 0;

    v6->_brainLoadAttemptsForDescriptor = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[SUNetworkMonitor sharedInstance];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SUDownloader;
  [(SUDownloader *)&v5 dealloc];
}

- (BOOL)isDownloading
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  return self->_downloading;
}

- (void)setDownloading:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_downloading != v3)
  {
    self->_downloading = v3;
    if (v3)
    {
      v7 = +[SUTransactionManager sharedInstance];
      [v7 beginTransaction:@"downloading" keepAlive:1];
    }

    else
    {
      self->_downloadStateResetSinceStartup = 1;
      v7 = +[SUTransactionManager sharedInstance];
      [v7 endTransaction:@"downloading"];
    }
  }
}

- (BOOL)isForeground
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  return self->_foreground;
}

- (void)setForeground:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_foreground != v3)
  {
    self->_foreground = v3;
    v14 = @"No";
    if (v3)
    {
      v14 = @"Yes";
    }

    SULogDebug(@"Foreground status changed: isForeground? %@", v7, v8, v9, v10, v11, v12, v13, v14);
    if (self->_downloading && self->_foreground)
    {
      SULogDebug(@"Updating download options for foreground status change if necessary.", v15, v16, v17, v18, v19, v20, v21, v22);

      [(SUDownloader *)self _setDownloadDiscretionary:0];
    }
  }
}

- (BOOL)isClearingSpace
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  return self->_clearingSpace;
}

- (void)setClearingSpace:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_clearingSpace != v3)
  {
    self->_clearingSpace = v3;
    v14 = @"No";
    if (v3)
    {
      v14 = @"Yes";
    }

    SULogDebug(@"ClearingSpace status changed: %@", v7, v8, v9, v10, v11, v12, v13, v14);
    clearingSpace = self->_clearingSpace;

    [(SUDownloader *)self notifyClientOfClearingSpace:clearingSpace];
  }
}

- (MAAsset)downloadAsset
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  downloadAsset = self->_downloadAsset;

  return downloadAsset;
}

- (void)setDownloadAsset:(id)a3
{
  v4 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  downloadAsset = self->_downloadAsset;
  self->_downloadAsset = v4;
}

- (SUDownload)download
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  download = self->_download;

  return download;
}

- (void)setDownload:(id)a3
{
  v4 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  download = self->_download;
  self->_download = v4;
  v8 = v4;

  LODWORD(download) = [(SUDownload *)v8 isPromoted];
  if (download)
  {

    [(SUDownloader *)self setGoNonDiscretionaryOnDownload:1];
  }
}

- (void)_setDownloadDiscretionary:(BOOL)a3
{
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  if (!a3)
  {
    v7 = [(SUDownloader *)self download];

    if (v7)
    {
      v8 = [(SUDownloader *)self download];
      [v8 setPromoted:1];

      v9 = [(SUDownloader *)self core];
      v10 = [v9 state];
      v11 = [v10 lastDownload];

      if (v11)
      {
        [v11 setPromoted:1];
        v12 = [(SUDownloader *)self core];
        v13 = [v12 state];
        [v13 setLastDownload:v11];

        v14 = [(SUDownloader *)self core];
        v15 = [v14 state];
        [v15 save];
      }
    }
  }

  v16 = self->_downloadAsset;
  v17 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUDownloader__setDownloadDiscretionary___block_invoke;
  block[3] = &unk_279CAAE40;
  v22 = a3;
  v20 = v16;
  v21 = self;
  v18 = v16;
  dispatch_async(v17, block);
}

void __42__SUDownloader__setDownloadDiscretionary___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 32);
  if (v10)
  {
    if (([v10 refreshState] & 1) == 0)
    {
      SULogInfo(@"Could not determine state of asset while trying to adjust priority, attempting anyway", v11, v12, v13, v14, v15, v16, v17, v35);
    }

    if ([*(a1 + 32) state] == 4)
    {
      v36 = objc_opt_new();
      [v36 setDiscretionary:*(a1 + 48)];
      if ([*(a1 + 32) configDownloadSync:v36])
      {
        SULogInfo(@"Attempt to change download priority failed", v18, v19, v20, v21, v22, v23, v24, v35);
      }
    }

    else if ((*(a1 + 48) & 1) == 0)
    {
      v25 = *(a1 + 32);
      [v25 state];
      SULogInfo(@"Attempt to change download priority for asset:%@, asset state is %ld, postponing to download start", v26, v27, v28, v29, v30, v31, v32, v25);
      v33 = [*(a1 + 40) core];
      v34 = [v33 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__SUDownloader__setDownloadDiscretionary___block_invoke_2;
      block[3] = &unk_279CAA708;
      block[4] = *(a1 + 40);
      dispatch_async(v34, block);
    }
  }

  else
  {

    SULogInfo(@"Attempted to change download priority of a nil asset", a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t __42__SUDownloader__setDownloadDiscretionary___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogInfo(@"Setting goNonDiscretionaryOnDownload to YES", a2, a3, a4, a5, a6, a7, a8, v11);
  v9 = *(a1 + 32);

  return [v9 setGoNonDiscretionaryOnDownload:1];
}

- (void)resetDownloadStateOnStartup
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  if (self->_downloadStateResetSinceStartup)
  {

    SULogInfo(@"Not resetting download state on start up since it was already reset", v5, v6, v7, v8, v9, v10, v11, v16);
  }

  else
  {
    v12 = [(SUDownloader *)self core];
    v13 = [v12 state];
    [v13 setLastDownload:0];

    [(SUDownloader *)self setDownload:0];
    [(SUDownloader *)self setDownloading:0];
    [(SUDownloader *)self setDownloadAsset:0];
    [(SUDownloader *)self setGoNonDiscretionaryOnDownload:0];
    v14 = [(SUDownloader *)self core];
    [v14 clearUnlockCallbacks];
  }
}

- (void)autoUpdateFound:(id)a3 downloadNow:(BOOL)a4
{
  v51 = a3;
  v6 = [(SUDownloader *)self core];
  v7 = [v6 workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v51 humanReadableUpdateName];
  SULogInfo(@"Auto scan found update available: %@", v9, v10, v11, v12, v13, v14, v15, v8);

  if ([v51 isSplatOnly])
  {
    SULogInfo(@"Auto scan found a Splat update; download it now", v16, v17, v18, v19, v20, v21, v22, v50);
    a4 = 1;
  }

  v23 = [(SUDownloader *)self download];
  if (!v23)
  {
    goto LABEL_18;
  }

  v24 = v23;
  v25 = [(SUDownloader *)self download];
  v26 = [v25 downloadOptions];
  v27 = [v26 isAutoDownload];

  if ((v27 & 1) == 0)
  {
    v31 = [(SUDownloader *)self download];
    v32 = [v31 progress];
    v33 = [v32 isDone];
    v41 = @"ing";
    if (v33)
    {
      v41 = @"ed";
    }

    SULogInfo(@"User initiated update download%@. Skipping auto download", v34, v35, v36, v37, v38, v39, v40, v41);

    v30 = +[SUScheduler sharedInstance];
    [v30 cancelAllAutoDownloadTasks];
  }

  else
  {
LABEL_18:
    if (a4 || (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 disableAutoDownloadJitter], v28, (v29 & 1) != 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{+[SUUtility randomIntWithMinVal:maxVal:](SUUtility, "randomIntWithMinVal:maxVal:", 0, 3600)}];
      SULogInfo(@"Random jittering enabled for this auto download; will start downloading after %@", v42, v43, v44, v45, v46, v47, v48, v30);
    }

    v49 = +[SUScheduler sharedInstance];
    [v49 scheduleAutoDownloadWithDate:v30 requirePower:0 minimumPowerRquirement:0];

    [(SUDownloader *)self loadBrainOnUnlockForDescriptor:v51];
  }
}

- (BOOL)isReadyForDownload:(id)a3 ignoreExistingDownload:(BOOL)a4 error:(id *)a5
{
  v67[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(SUDownloader *)self core];
  v10 = [v9 workQueue];
  dispatch_assert_queue_V2(v10);

  if (!a4 && [(SUDownloader *)self isDownloading])
  {
    goto LABEL_5;
  }

  if (![(SUDownloader *)self isClearingSpace])
  {
    v20 = [(SUDownloader *)self core];
    v21 = [v20 isInstalling];

    if (v21)
    {
      v18 = a5;
      v19 = 14;
      goto LABEL_18;
    }

    v22 = [(SUDownloader *)self core];
    v23 = [v22 preferredLastScannedDescriptor];

    if (!v23)
    {
      v18 = a5;
      v19 = 3;
      goto LABEL_18;
    }

    v24 = [v8 descriptor];
    if (!a4)
    {
      v25 = [(SUDownload *)self->_download descriptor];
      v26 = [v25 isEqual:v24];

      if (v26)
      {
        SULogInfo(@"Attempted to download update that's already on disk and downloaded.", v27, v28, v29, v30, v31, v32, v33, v65);
        v34 = a5;
        v35 = 41;
LABEL_26:
        [SUUtility assignError:v34 withCode:v35];
LABEL_27:
        v53 = 0;
LABEL_29:

        goto LABEL_19;
      }
    }

    v36 = [(SUDownloader *)self core];
    v37 = [v36 state];
    v38 = [v37 failedPatchBuildVersions];
    v39 = [v24 productBuildVersion];
    v40 = [v38 containsObject:v39];

    if ([v8 isAutoDownload])
    {
      v41 = [v24 prerequisiteBuild];
      v42 = (v41 != 0) & v40;

      if (v42 == 1)
      {
        SULogInfo(@"Auto download attempted to download failed patch descriptor", v43, v44, v45, v46, v47, v48, v49, v65);
        v65 = 0;
        [SUUtility assignError:&v65 withCode:53];
        v50 = v65;
        if (a5)
        {
          v66 = @"SUAutoDownloadWillRetry";
          v51 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v67[0] = v51;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
          *a5 = [SUUtility translateError:v50 withAddedUserInfo:v52];
        }

        goto LABEL_27;
      }
    }

    v56 = +[SUNetworkMonitor sharedInstance];
    if ([v56 isCurrentNetworkTypeCellular])
    {
      v57 = [v8 isEnabledForCellular];

      if ((v57 & 1) == 0)
      {
        v34 = a5;
        v35 = 81;
        goto LABEL_26;
      }
    }

    else
    {
    }

    if (!+[SUUtility isReturnToServiceModeActive])
    {
      v53 = 1;
      goto LABEL_29;
    }

    SULogInfo(@"Not allowing download to start in RRTS mode", v58, v59, v60, v61, v62, v63, v64, v65);
    v34 = a5;
    v35 = 31;
    goto LABEL_26;
  }

  SULogInfo(@"Another download is already clearing space for download", v11, v12, v13, v14, v15, v16, v17, v65);
LABEL_5:
  v18 = a5;
  v19 = 11;
LABEL_18:
  [SUUtility assignError:v18 withCode:v19];
  v53 = 0;
LABEL_19:

  v54 = *MEMORY[0x277D85DE8];
  return v53;
}

- (void)startDownloadWithOptions:(id)a3 withResult:(id)a4
{
  v151 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SUDownloader *)self core];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v148[0] = MEMORY[0x277D85DD0];
  v148[1] = 3221225472;
  v148[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke;
  v148[3] = &unk_279CAAE18;
  v148[4] = self;
  v10 = v7;
  v149 = v10;
  v130 = MEMORY[0x26D668B30](v148);
  SULogInfo(@"Got download request with download options: %@", v11, v12, v13, v14, v15, v16, v17, v6);
  v18 = [(SUDownloadOptions *)v6 descriptor];
  v19 = [v18 productBuildVersion];

  if (v19)
  {
    v27 = self;
    v28 = [(SUDownloader *)self core];
    v29 = [(SUDownloadOptions *)v6 descriptor];
    v30 = [v29 productBuildVersion];
    v31 = [(SUDownloadOptions *)v6 descriptor];
    v32 = [v31 productVersionExtra];
    v33 = [(SUDownloadOptions *)v6 descriptor];
    v34 = [v28 coreDescriptorForBuildVersion:v30 versionExtra:v32 isSplombo:{objc_msgSend(v33, "isSplombo")}];

    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v27 = self;
  v34 = 0;
  if (!v6)
  {
LABEL_3:
    v35 = [(SUDownloader *)v27 core];
    v36 = [v35 preferredLastScannedDescriptor];

    v34 = v36;
  }

LABEL_4:
  v37 = v130;
  v38 = v10;
  if (!v34)
  {
    v50 = @"Failed to get the core descriptor for the request";
LABEL_13:
    SULogError(v50, v20, v21, v22, v23, v24, v25, v26, v121);
    v40 = [SUUtility errorWithCode:3];
    (*(v130 + 16))(v130, 0, v40);
    goto LABEL_43;
  }

  v39 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v34];
  if (!v39)
  {
    v50 = @"Failed to get the su descriptor for the request";
    goto LABEL_13;
  }

  v40 = v39;
  v41 = [v34 getMASoftwareUpdateAsset];
  if (v41)
  {
    v49 = v41;
    if (v6)
    {
      [(SUDownloadOptions *)v6 setDescriptor:v40];
    }

    else
    {
      v6 = [[SUDownloadOptions alloc] initWithDescriptor:v40];
    }

    v59 = v27;
    if ([(SUDownloadOptions *)v6 _clientIsLivabilityd])
    {
      [(SUDownloadOptions *)v6 setDownloadOnly:1];
    }

    v147 = 0;
    v60 = [(SUDownloader *)v27 isReadyForDownload:v6 ignoreExistingDownload:0 error:&v147];
    v61 = v147;
    if (v60)
    {
      v62 = v34;
      [(SUDownloader *)v59 ensureSSOTokenIfNeededForDownload:v6];
      [(SUDownloader *)v59 cleanupPreviousDownloadState:0];
      [(SUDownloader *)v59 setDownloading:1];
      v63 = objc_alloc_init(SUDownload);
      v64 = objc_alloc_init(SUOperationProgress);
      [(SUOperationProgress *)v64 setIsDone:0];
      [(SUOperationProgress *)v64 setPhase:@"SUDownloadPhaseStarting"];
      v124 = v64;
      [(SUDownload *)v63 setProgress:v64];
      [(SUDownload *)v63 setDescriptor:v40];
      v131 = v63;
      [(SUDownload *)v63 setDownloadOptions:v6];
      if (v59->_foreground && [(SUDownloadOptions *)v6 isAutoDownload])
      {
        SULogInfo(@"Starting auto download while client in foreground, go non discretionary once download start", v65, v66, v67, v68, v69, v70, v71, v121);
        [(SUDownloader *)v59 setGoNonDiscretionaryOnDownload:1];
        [(SUDownload *)v63 setPromoted:1];
      }

      else
      {
        [(SUDownloader *)v59 setGoNonDiscretionaryOnDownload:0];
      }

      v125 = v61;
      v127 = v38;
      v128 = v6;
      [(SUDownloader *)v59 setDownload:v63];
      v126 = v49;
      [(SUDownloader *)v59 setDownloadAsset:v49];
      v72 = [(SUDownloader *)v59 core];
      v73 = [v72 state];
      [v73 setLastDownload:v131];

      v74 = [(SUDownloader *)v59 core];
      v75 = [v74 state];
      [v75 save];

      (*(v130 + 16))(v130, 1, 0);
      v76 = [(SUDownloader *)v59 core];
      v77 = [v76 delegate];
      v78 = objc_opt_respondsToSelector();

      if (v78)
      {
        v79 = [(SUDownloader *)v59 core];
        v80 = [v79 externWorkQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_2;
        block[3] = &unk_279CAA7C0;
        block[4] = v59;
        v146 = v131;
        dispatch_async(v80, block);
      }

      v129 = v62;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v81 = v59;
      v82 = [(SUDownloader *)v59 core];
      v83 = [v82 observers];
      v84 = [v83 allObjects];

      v85 = [v84 countByEnumeratingWithState:&v141 objects:v150 count:16];
      if (v85)
      {
        v86 = v85;
        v87 = *v142;
        do
        {
          for (i = 0; i != v86; ++i)
          {
            if (*v142 != v87)
            {
              objc_enumerationMutation(v84);
            }

            v89 = *(*(&v141 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v90 = [(SUDownloader *)v81 core];
              v91 = [v90 externWorkQueue];
              v139[0] = MEMORY[0x277D85DD0];
              v139[1] = 3221225472;
              v139[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_3;
              v139[3] = &unk_279CAA7C0;
              v139[4] = v89;
              v140 = v131;
              dispatch_async(v91, v139);
            }
          }

          v86 = [v84 countByEnumeratingWithState:&v141 objects:v150 count:16];
        }

        while (v86);
      }

      v6 = v128;
      v123 = [(SUDownloadOptions *)v128 activeDownloadPolicy];
      v92 = objc_opt_class();
      SULogInfo(@"Active download policy class: %@", v93, v94, v95, v96, v97, v98, v99, v92);
      v100 = v81;
      [(SUDownloader *)v81 setClearingSpace:1];
      v101 = [(SUDownloader *)v81 core];
      v102 = [v101 workQueue];
      v103 = [SUDownloader purgeOptionsForDescriptor:v40 downloadOptions:v128 completionQueue:v102];

      v104 = +[SUPreferences sharedInstance];
      LOBYTE(v101) = [v104 skipDownload];

      v61 = v125;
      if ((v101 & 1) == 0)
      {
        v105 = [v103 neededBytes];
        v106 = [v129 bundleAttributes];
        v107 = [v106 objectForKeyedSubscript:@"AssetFormat"];

        if ((!v107 || [v107 isEqualToString:@"StreamingZip"]) && v105 >= objc_msgSend(v40, "_unarchiveSize"))
        {
          v105 -= [v40 _unarchiveSize];
        }

        [v103 neededBytes];
        [v40 unentitledReserveAmount];
        [v40 unentitledReserveAmount];
        SULogInfo(@"[Space] %s Setting entitled space to %llu (%llu MB) and unentitled to %llu (%llu MB)", v108, v109, v110, v111, v112, v113, v114, "[SUDownloader startDownloadWithOptions:withResult:]");
        v115 = MEMORY[0x277D641E8];
        v116 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v105];
        v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v40, "unentitledReserveAmount")}];
        [v115 cacheDeletePauseReserveSpace:v116 unentitledSpace:v117 withPurpose:@"SUSController-startDownloadWithOptions"];
      }

      v118 = +[SUUtility taskQueue];
      v132[0] = MEMORY[0x277D85DD0];
      v132[1] = 3221225472;
      v132[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_4;
      v132[3] = &unk_279CACF18;
      v133 = v103;
      v134 = v100;
      v135 = v40;
      v136 = v128;
      v49 = v126;
      v137 = v126;
      v138 = v129;
      v119 = v103;
      dispatch_async(v118, v132);

      v34 = v129;
      v38 = v127;
      v37 = v130;
    }

    else
    {
      (*(v130 + 16))(v130, 0, v61);
    }
  }

  else
  {
    SULogError(@"assetToDownloadFromLastScan is nil, trying to locally find a matching asset for descriptor:%@", v42, v43, v44, v45, v46, v47, v48, v40);
    SULogError(@"Could not find a matching asset, fail with no update found", v51, v52, v53, v54, v55, v56, v57, v122);
    v58 = [SUUtility errorWithCode:3];
    (*(v130 + 16))(v130, 0, v58);
  }

LABEL_43:

  v120 = *MEMORY[0x277D85DE8];
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v5 = [*(a1 + 32) core];
    [v5 donateSUErrorToBiome:v7];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 downloadDidStart:*(a1 + 40)];
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_5;
  v8[3] = &unk_279CACEF0;
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 72);
  [SUSpace makeRoomForUpdate:v2 completion:v8];
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  SULogInfo(@"[makeRoom] result = %d, cleanupLevel = %d, error = %@", v8, v9, v10, v11, v12, v13, v14, a2);
  v15 = [*(a1 + 32) core];
  v16 = [v15 state];
  v17 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  [v16 setLastSpaceCleanupLevel:v17];

  v18 = [*(a1 + 32) core];
  v19 = [v18 state];
  [v19 save];

  [*(a1 + 32) setClearingSpace:0];
  if ((a2 & 1) == 0)
  {
    if ([*(a1 + 48) isAutoDownload])
    {
      v71 = [*(a1 + 32) core];
      v72 = [v71 workQueue];
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_7;
      v108[3] = &unk_279CAA7C0;
      v73 = *(a1 + 40);
      v108[4] = *(a1 + 32);
      v109 = v73;
      dispatch_async(v72, v108);
    }

    SULogInfo(@"Download failed due to insufficient space: %@", v64, v65, v66, v67, v68, v69, v70, v7);
    v107 = 0;
    +[SUUtility assignError:withCode:](SUUtility, "assignError:withCode:", &v107, [v7 code]);
    v25 = v107;
    goto LABEL_12;
  }

  v20 = [*(a1 + 32) core];
  v21 = [v20 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_6;
  block[3] = &unk_279CAA7C0;
  v22 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v111 = v22;
  dispatch_async(v21, block);

  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  v106 = 0;
  LOBYTE(v21) = [v23 isReadyForDownload:v24 ignoreExistingDownload:1 error:&v106];
  v25 = v106;
  if ((v21 & 1) == 0)
  {
LABEL_12:
    [*(a1 + 32) _downloadFailedWithError:v25];
    goto LABEL_18;
  }

  v105 = 0;
  v26 = [*(a1 + 48) activeDownloadPolicy];
  v27 = objc_opt_class();
  SULogInfo(@"Active download policy class: %@", v28, v29, v30, v31, v32, v33, v34, v27);
  if ([v26 isDownloadableForCurrentNetworkConditions:&v105 cellularFeesApply:0])
  {
    if ([*(a1 + 48) activeDownloadPolicyType] != 1)
    {
      [*(a1 + 32) endAutoDownloadTasksAndResetState];
    }

    v42 = [*(a1 + 32) core];
    v43 = [*(a1 + 32) core];
    [v42 updateInstallPolicyAutoUpdateEnabled:{objc_msgSend(v43, "isAutoUpdateEnabled")}];

    if ([*(a1 + 32) _reapplyExistingDownloadPolicyIfDownloadable:0])
    {
      v51 = [*(a1 + 32) core];
      [v51 dismissInsufficientDiskSpaceFollowupForUpdate:0 orForce:1];

      v52 = +[SUPreferences sharedInstance];
      v53 = [v52 skipDownload];

      if (v53)
      {
        SULogInfo(@"SUSkipDownload is set, skip the download phase and return YES.", v54, v55, v56, v57, v58, v59, v60, v94);
        v61 = dispatch_time(0, 5000000000);
        v62 = [*(a1 + 32) core];
        v63 = [v62 workQueue];
        v103[0] = MEMORY[0x277D85DD0];
        v103[1] = 3221225472;
        v103[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_8;
        v103[3] = &unk_279CAA708;
        v103[4] = *(a1 + 32);
        dispatch_after(v61, v63, v103);
      }

      else
      {
        v77 = [*(a1 + 32) core];
        v78 = [v77 engine];
        [v78 createBrainLoadLockAssertion:&__block_literal_global_21];

        v79 = [SUManagerEngineDownloadDescriptor alloc];
        v98 = *(a1 + 56);
        v99 = v79;
        v97 = [*(a1 + 40) releaseDate];
        v102 = [*(a1 + 32) core];
        v96 = [v102 sessionID];
        v101 = [*(a1 + 32) core];
        v80 = [v101 lastScannedDescriptorScanOptions];
        v95 = *(a1 + 48);
        v81 = [*(a1 + 32) core];
        v82 = [v81 newInstallTonightConfig];
        v83 = *(a1 + 64);
        v84 = [MEMORY[0x277CCABB0] numberWithInt:a3];
        v100 = [(SUManagerEngineDownloadDescriptor *)v99 initWithAsset:v98 releaseDate:v97 sessionID:v96 scanOptions:v80 downloadOptions:v95 installTonightConfig:v82 coreDescriptor:v83 downloadAtPhase:1 cleanupLevel:v84];

        SULogInfo(@"Starting SU download with options: %@", v85, v86, v87, v88, v89, v90, v91, *(a1 + 48));
        v92 = [*(a1 + 32) core];
        v93 = [v92 engine];
        v62 = v100;
        [v93 downloadUpdate:v100];
      }
    }

    else
    {
      SULogInfo(@"_reapplyExistingDownloadPolicyIfDownloadable returned NO. Bailing on download", v44, v45, v46, v47, v48, v49, v50, v94);
      v75 = *(a1 + 32);
      v76 = [SUUtility errorWithCode:31];
      [v75 _downloadFailedWithError:v76];
    }
  }

  else
  {
    SULogInfo(@"Download policy prevents download: %ld", v35, v36, v37, v38, v39, v40, v41, v105);
    v104 = v25;
    [SUUtility assignError:&v104 withCode:v105];
    v74 = v104;

    [*(a1 + 32) _downloadFailedWithError:v74];
    v25 = v74;
  }

LABEL_18:
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 dismissInsufficientDiskSpaceFollowupForUpdate:*(a1 + 40) orForce:0];
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_7(uint64_t a1)
{
  if (([*(a1 + 32) isDownloading] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isUpdateDownloaded") & 1) == 0)
  {
    v2 = [*(a1 + 32) core];
    [v2 showInsufficientDiskSpaceFollowupForUpdate:*(a1 + 40)];
  }
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    SULogInfo(@"Failed to create brain load lock assertion: %@", a2, a3, a4, a5, a6, a7, a8, a2);
  }
}

- (void)notifyClientOfClearingSpace:(BOOL)a3
{
  v5 = [(SUDownloader *)self core];
  v6 = [v5 delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = self->_download;
    v9 = [(SUDownloader *)self core];
    v10 = [v9 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__SUDownloader_notifyClientOfClearingSpace___block_invoke;
    block[3] = &unk_279CAAE40;
    block[4] = self;
    v13 = v8;
    v14 = a3;
    v11 = v8;
    dispatch_async(v10, block);
  }
}

void __44__SUDownloader_notifyClientOfClearingSpace___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 clearingSpaceForDownload:*(a1 + 40) clearing:*(a1 + 48)];
}

- (BOOL)_reapplyExistingDownloadPolicyIfDownloadable:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUDownload *)self->_download downloadOptions];
  v8 = [v7 activeDownloadPolicy];
  v9 = [v8 isDownloadable];
  if (v9)
  {
    [v7 setActiveDownloadPolicy:v8];
    if (v3)
    {
      [(SUDownloader *)self _setDownloadDiscretionary:0];
    }

    [(SUDownloader *)self _updateLastSavedDownloadsOptions:v7];
  }

  return v9;
}

- (void)_updateLastSavedDownloadsOptions:(id)a3
{
  v4 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUDownloader *)self core];
  v8 = [v7 state];
  v13 = [v8 lastDownload];

  [v13 setDownloadOptions:v4];
  v9 = [(SUDownloader *)self core];
  v10 = [v9 state];
  [v10 setLastDownload:v13];

  v11 = [(SUDownloader *)self core];
  v12 = [v11 state];
  [v12 save];
}

- (void)_loadBrainOnUnlockCallback
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SUDownloader *)self core];
  [v5 removeUnlockCallback:@"unlockCallbackLoadBrain"];

  v13 = [(SUDownloader *)self loadBrainForDescriptor];
  if (!v13)
  {
    SULogInfo(@"%s: No descriptor, skip preloading brain on unlock", v6, v7, v8, v9, v10, v11, v12, "[SUDownloader _loadBrainOnUnlockCallback]");
    goto LABEL_12;
  }

  v14 = +[SUPreferences sharedInstance];
  v15 = [v14 autoInstallSecurityResponse];

  v16 = +[SUPreferences sharedInstance];
  v17 = [v16 isAutoDownloadDisabled];

  if ([v13 isSplatOnly])
  {
    if ((v15 & 1) == 0)
    {
      SULogInfo(@"%s: Auto install security response disabled. No need to preload brain", v18, v19, v20, v21, v22, v23, v24, "[SUDownloader _loadBrainOnUnlockCallback]");
      goto LABEL_12;
    }
  }

  else if (v17)
  {
    SULogInfo(@"%s: Auto download disabled via preferences. No need to preload brain", v18, v19, v20, v21, v22, v23, v24, "[SUDownloader _loadBrainOnUnlockCallback]");
    goto LABEL_12;
  }

  v25 = [(SUDownloader *)self download];

  if (v25)
  {
    SULogInfo(@"%s: Found existing download, skip preloading brain", v26, v27, v28, v29, v30, v31, v32, "[SUDownloader _loadBrainOnUnlockCallback]");
  }

  else if ([v13 rampEnabled])
  {
    SULogInfo(@"%s: Ramp is enabled for asset, skip preloading brain", v33, v34, v35, v36, v37, v38, v39, "[SUDownloader _loadBrainOnUnlockCallback]");
  }

  else
  {
    v40 = +[SUNetworkMonitor sharedInstance];
    v41 = [v40 currentNetworkType];

    if (v41 == 1)
    {
      v49 = [(SUDownloader *)self core];
      v50 = [v49 coreDescriptorForSUDescriptor:v13];

      v51 = objc_opt_new();
      [v51 setDiscretionary:0];
      [v51 setAllowsCellularAccess:0];
      v52 = [(SUDownloader *)self core];
      v53 = [v52 isManaged];

      if (v53)
      {
        [v51 setSupervised:1];
        v54 = [v50 productVersion];
        [v51 setRequestedProductVersion:v54];
      }

      v55 = [v50 assetAudienceUUID];

      if (v55)
      {
        v56 = [v50 assetAudienceUUID];
        v57 = [v56 copy];
        [v51 setLiveAssetAudienceUUID:v57];
      }

      v58 = [v50 getMASoftwareUpdateAsset];
      if (!v58)
      {
        v59 = [(SUDownloader *)self core];
        v58 = [v59 preferredAssetToDownloadFromLastScan];
      }

      v60 = [objc_alloc(MEMORY[0x277D292C0]) initWithUpdateAsset:v58];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __42__SUDownloader__loadBrainOnUnlockCallback__block_invoke;
      v63[3] = &unk_279CACF40;
      v63[4] = self;
      v64 = v58;
      v65 = v13;
      v61 = v58;
      [v60 loadUpdateBrainWithMAOptions:v51 progressHandler:v63];
    }

    else
    {
      SULogInfo(@"%s: Skip brain preload when not on wifi", v42, v43, v44, v45, v46, v47, v48, "[SUDownloader _loadBrainOnUnlockCallback]");
      v62 = [(SUDownloader *)self core];
      [v62 addUnlockCallback:sel__loadBrainOnUnlockCallback forKey:@"unlockCallbackLoadBrain"];
    }
  }

LABEL_12:
}

void __42__SUDownloader__loadBrainOnUnlockCallback__block_invoke(id *a1, void *a2, uint64_t a3)
{
  v18 = a2;
  SULogInfo(@"%s: Got brain load progress: %@, error: %@", v5, v6, v7, v8, v9, v10, v11, "[SUDownloader _loadBrainOnUnlockCallback]_block_invoke");
  v12 = [v18 objectForKeyedSubscript:*MEMORY[0x277D28998]];

  v13 = [v12 isEqualToString:*MEMORY[0x277D28988]];
  if (a3 || v13)
  {
    v14 = [a1[4] core];
    v15 = [v14 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__SUDownloader__loadBrainOnUnlockCallback__block_invoke_2;
    block[3] = &unk_279CAA798;
    v16 = a1[5];
    v17 = a1[4];
    v20 = v16;
    v21 = v17;
    v22 = a1[6];
    dispatch_async(v15, block);
  }
}

void __42__SUDownloader__loadBrainOnUnlockCallback__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) attributes];
  v3 = SUCoreBorder_MSUBrainIsLoadable();

  if (v3)
  {
    [*(a1 + 40) setBrainLoadAttemptsForDescriptor:{objc_msgSend(*(a1 + 40), "brainLoadAttemptsForDescriptor") + 1}];
    if ([*(a1 + 40) brainLoadAttemptsForDescriptor] < 5)
    {
      [*(a1 + 40) brainLoadAttemptsForDescriptor];
      SULogInfo(@"%s: brain is not loaded on attempt %lu, add unlock callback", v18, v19, v20, v21, v22, v23, v24, "[SUDownloader _loadBrainOnUnlockCallback]_block_invoke_2");
      v25 = [*(a1 + 40) core];
      [v25 addUnlockCallback:sel__loadBrainOnUnlockCallback forKey:@"unlockCallbackLoadBrain"];
    }

    else
    {
      SULogInfo(@"%s: brain is not loaded, but reached max attempts", v4, v5, v6, v7, v8, v9, v10, "[SUDownloader _loadBrainOnUnlockCallback]_block_invoke_2");
    }
  }

  else
  {
    [*(a1 + 40) setBrainLoadedForDescriptor:*(a1 + 48)];
    [*(a1 + 40) setLoadBrainForDescriptor:0];
    SULogInfo(@"%s: brain is loaded", v11, v12, v13, v14, v15, v16, v17, "[SUDownloader _loadBrainOnUnlockCallback]_block_invoke_2");
  }
}

- (void)loadBrainOnUnlockForDescriptor:(id)a3
{
  v22 = a3;
  v4 = [(SUDownloader *)self core];
  v5 = [v4 workQueue];
  dispatch_assert_queue_V2(v5);

  if (v22)
  {
    v13 = [(SUDownloader *)self brainLoadedForDescriptor];
    v14 = [v13 isEqual:v22];

    if (v14)
    {
      SULogInfo(@"%s: Already loaded brain for this descriptor. No need to preload brain", v15, v16, v17, v18, v19, v20, v21, "[SUDownloader loadBrainOnUnlockForDescriptor:]");
    }

    else
    {
      [(SUDownloader *)self setLoadBrainForDescriptor:v22];
      [(SUDownloader *)self setBrainLoadAttemptsForDescriptor:0];
      [(SUDownloader *)self _loadBrainOnUnlockCallback];
    }
  }

  else
  {
    SULogInfo(@"%s: No descriptor, skip preloading brain", v6, v7, v8, v9, v10, v11, v12, "[SUDownloader loadBrainOnUnlockForDescriptor:]");
  }
}

- (BOOL)needToWaitForUnlockForLoadingBrainForDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  if (!v4)
  {
    SULogInfo(@"%s: No descriptor, skip loading brain", v7, v8, v9, v10, v11, v12, v13, "[SUDownloader needToWaitForUnlockForLoadingBrainForDescriptor:]");
    goto LABEL_5;
  }

  v14 = [(SUDownloader *)self brainLoadedForDescriptor];
  v15 = [v14 isEqual:v4];

  if (!v15)
  {
    v24 = [(SUDownloader *)self core];
    v25 = [v24 coreDescriptorForSUDescriptor:v4];
    v26 = [v25 getMASoftwareUpdateAsset];

    if (!v26)
    {
      v27 = [(SUDownloader *)self core];
      v26 = [v27 preferredAssetToDownloadFromLastScan];
    }

    v28 = [v26 attributes];
    v29 = SUCoreBorder_MSUBrainIsLoadable();

    if (v29)
    {
      v37 = +[SUKeybagInterface sharedInstance];
      v38 = [v37 isPasscodeLocked];

      if (v38)
      {
        v23 = 1;
LABEL_14:

        goto LABEL_15;
      }

      v39 = @"%s: device is not locked, should be able to load brain";
    }

    else
    {
      v39 = @"%s: brain is loadable";
    }

    SULogInfo(v39, v30, v31, v32, v33, v34, v35, v36, "[SUDownloader needToWaitForUnlockForLoadingBrainForDescriptor:]");
    v23 = 0;
    goto LABEL_14;
  }

  SULogInfo(@"%s: Already loaded brain for this descriptor. No need to reload brain", v16, v17, v18, v19, v20, v21, v22, "[SUDownloader needToWaitForUnlockForLoadingBrainForDescriptor:]");
LABEL_5:
  v23 = 0;
LABEL_15:

  return v23;
}

- (void)tryAutoDownload
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SUDownloader *)self core];
  v6 = [v5 updateToAutoDownload];

  if (!v6)
  {
    v16 = @"Unable to autodownload with nil download descriptor";
    goto LABEL_5;
  }

  v14 = [(SUDownloader *)self core];
  v15 = [v14 isInstallTonightScheduled];

  if (!v15)
  {
    v17 = [v6 isSplatOnly];
    v18 = +[SUPreferences sharedInstance];
    v19 = v18;
    if (v17)
    {
      v20 = [v18 autoInstallSecurityResponse];

      if ((v20 & 1) == 0)
      {
        v16 = @"Auto install security response disabled. Skipping auto download attempt";
        goto LABEL_5;
      }
    }

    else
    {
      v21 = [v18 isAutoDownloadDisabled];

      if (v21)
      {
        v16 = @"Auto download disabled via preferences. Skipping auto download attempt";
        goto LABEL_5;
      }
    }

    v22 = +[SUNetworkMonitor sharedInstance];
    v23 = [v22 currentNetworkType];

    if (v23 != 1)
    {
      v16 = @"Auto download only allowed over wifi";
      goto LABEL_5;
    }

    v24 = [v6 assetID];
    v25 = [(SUDownloader *)self core];
    v26 = [v25 state];
    v27 = [v26 lastDeletedSUAssetID];
    if ([v24 isEqualToString:v27])
    {
      v28 = +[SUPreferences sharedInstance];
      v29 = [v28 autoDownloadDeletedBuild];

      if ((v29 & 1) == 0)
      {
        v16 = @"Attempting to auto-download previously deleted update. Skipping auto downlaod attempt";
        goto LABEL_5;
      }
    }

    else
    {
    }

    if ([v6 rampEnabled])
    {
      v16 = @"Ramp is enabled for asset. Skipping auto downlaod attempt";
      goto LABEL_5;
    }

    v30 = [[SUAutoDownloadPolicy alloc] initWithDescriptor:v6];
    if (![(SUDefaultDownloadPolicy *)v30 isDownloadable])
    {
      SULogInfo(@"SUAutoDownloadPolicy prevents SU asset download: %@", v31, v32, v33, v34, v35, v36, v37, v30);
      v54 = [SUUtility errorWithCode:31];
      [(SUDownloader *)self noteAutoDownloadFailedToStart:v6 withError:v54];
LABEL_25:

LABEL_36:
      goto LABEL_6;
    }

    v38 = [(SUDownloader *)self core];
    v39 = [v38 download];
    v40 = [v39 descriptor];
    v41 = [v6 isEqual:v40];

    if (v41)
    {
      v42 = [(SUDownloader *)self core];
      v43 = [v42 download];
      v44 = [v43 progress];
      v45 = [v44 isDone];

      if (v45)
      {
        v53 = @"Background scan found build already downloaded; Skipping auto downlaod attempt";
LABEL_35:
        SULogInfo(v53, v46, v47, v48, v49, v50, v51, v52, v92);
        goto LABEL_36;
      }
    }

    v55 = [(SUDownloader *)self _isWithinAutoDownloadWindowForPolicy:v30 descriptor:v6];
    if (v55)
    {
      SULogInfo(@"%s: Scheduling a new auto download in 4 hours in case this one fails", v46, v47, v48, v49, v50, v51, v52, "[SUDownloader tryAutoDownload]");
      v56 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:14400.0];
      v57 = +[SUPreferences sharedInstance];
      v58 = [v57 disableAutoDownloadJitter];

      if ((v58 & 1) == 0)
      {
        v59 = [v56 dateByAddingTimeInterval:{+[SUUtility randomIntWithMinVal:maxVal:](SUUtility, "randomIntWithMinVal:maxVal:", 0, 1800)}];

        v93 = [SUUtility prettyPrintDate:v59];
        SULogInfo(@"%s: Random jittering enabled to retry the auto download; will retry after %@", v60, v61, v62, v63, v64, v65, v66, "[SUDownloader tryAutoDownload]");

        v56 = v59;
      }

      v67 = +[SUScheduler sharedInstance];
      [v67 scheduleAutoDownloadWithDate:v56 requirePower:0 minimumPowerRquirement:0];
    }

    if (v41)
    {
      v53 = @"Background scan found build already downloading; Skipping auto downlaod attempt";
      goto LABEL_35;
    }

    if (-[SUDownloader isDownloading](self, "isDownloading") || (-[SUDownloader core](self, "core"), v68 = objc_claimAutoreleasedReturnValue(), v69 = [v68 isInstalling], v68, v69))
    {
      v53 = @"Currently downloading or installing. Skipping auto download attempt";
      goto LABEL_35;
    }

    v70 = [(SUDownloader *)self core];
    v71 = [v6 productBuildVersion];
    v54 = [v70 fullyUnrampedDateForBuildVersion:v71];

    if (SUHasEnoughBatteryForAutoDownloadForDescriptor(v6, v54))
    {
      if (v55)
      {
        if ([(SUDownloader *)self needToWaitForUnlockForLoadingBrainForDescriptor:v6])
        {
          v79 = @"We can't load the brain now, skipping auto download attempt";
LABEL_42:
          SULogInfo(v79, v72, v73, v74, v75, v76, v77, v78, v92);
          goto LABEL_25;
        }

        v81 = +[SUTransactionManager sharedInstance];
        [v81 beginTransaction:@"auto-tryDownload"];
        SULogInfo(@"Attempting to autodownload...", v82, v83, v84, v85, v86, v87, v88, v92);
        v80 = [[SUDownloadOptions alloc] initWithDescriptor:v6];
        [(SUDownloadOptions *)v80 setAutoDownload:1];
        [(SUDownloadOptions *)v80 setActiveDownloadPolicyType:1];
        v89 = +[SUState currentState];
        v90 = [MEMORY[0x277CBEAA8] date];
        [v89 setLastAutoDownloadDate:v90];

        [(SUDownloadOptions *)v80 setClientName:@"com.apple.softwareupdateservicesd.autodownload"];
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __31__SUDownloader_tryAutoDownload__block_invoke;
        v94[3] = &unk_279CACF68;
        v94[4] = self;
        v95 = v6;
        v96 = v81;
        v91 = v81;
        [(SUDownloader *)self startDownloadWithOptions:v80 withResult:v94];
      }

      else
      {
        SULogInfo(@"No longer in auto download window. No longer attempting auto download for this update", v72, v73, v74, v75, v76, v77, v78, v92);
        v80 = [SUUtility autoDownloadExpiredError:0];
        [(SUDownloader *)self noteAutoDownloadFailedToStart:v6 withError:v80];
      }

      goto LABEL_25;
    }

    v79 = @"Auto-download power policy not satisfied. Skipping auto download attempt";
    goto LABEL_42;
  }

  v16 = @"There is a tonight activity scheduled. Skipping auto download attempt";
LABEL_5:
  SULogInfo(v16, v7, v8, v9, v10, v11, v12, v13, v92);
LABEL_6:
}

void __31__SUDownloader_tryAutoDownload__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) core];
  v7 = [v6 workQueue];
  dispatch_assert_queue_V2(v7);

  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
      v5 = [SUUtility errorWithCode:-1];
    }

    if ([v5 code] != 41)
    {
      if ([v5 code] == 53)
      {
        v15 = dispatch_time(0, 3600000000000);
        v16 = [*(a1 + 32) core];
        v17 = [v16 workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __31__SUDownloader_tryAutoDownload__block_invoke_2;
        block[3] = &unk_279CAA708;
        block[4] = *(a1 + 32);
        dispatch_after(v15, v17, block);
      }

      SULogInfo(@"tryAutoDownload: Error starting autodownload: %@", v8, v9, v10, v11, v12, v13, v14, v5);
      [*(a1 + 32) noteAutoDownloadFailedToStart:*(a1 + 40) withError:v5];
    }
  }

  [*(a1 + 48) endTransaction:@"auto-tryDownload"];
}

void __31__SUDownloader_tryAutoDownload__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 autoScanAndDownloadIfAvailable:0 withResult:0];
}

- (void)endAutoDownloadTasksAndResetState
{
  v2 = [(SUDownloader *)self core];
  v3 = [v2 workQueue];
  dispatch_assert_queue_V2(v3);

  SULogInfo(@"Ending/clearing any oustanding autodownload tasks and state", v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = +[SUScheduler sharedInstance];
  [v12 cancelAllAutoDownloadTasks];
}

- (BOOL)updateDownloadOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SUDownloader *)self core];
  v8 = [v7 workQueue];
  dispatch_assert_queue_V2(v8);

  if (!self->_downloadAsset || (download = self->_download) == 0)
  {
    v26 = a4;
    v27 = 3;
LABEL_14:
    [SUUtility assignError:v26 withCode:v27];
    v25 = 0;
    goto LABEL_15;
  }

  if (!v6)
  {
    v26 = a4;
    v27 = 22;
    goto LABEL_14;
  }

  v10 = [(SUDownload *)download downloadOptions];
  if ([v10 isAutoDownload] && objc_msgSend(v6, "activeDownloadPolicyType") != 1 || objc_msgSend(v10, "isAutoDownload") && (objc_msgSend(v6, "isAutoDownload") & 1) == 0)
  {
    [(SUDownloader *)self endAutoDownloadTasksAndResetState];
    if (([v10 isEqual:v6] & 1) == 0)
    {
      [(SUDownloader *)self _setDownloadDiscretionary:0];
    }
  }

  [(SUDownload *)self->_download setDownloadOptions:v6];
  SULogInfo(@"Download options changed from: %@ \nto:\n %@", v11, v12, v13, v14, v15, v16, v17, v10);
  v18 = [(SUDownloader *)self core];
  v19 = [v18 delegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = self->_download;
    v22 = [(SUDownloader *)self core];
    v23 = [v22 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__SUDownloader_updateDownloadOptions_error___block_invoke;
    block[3] = &unk_279CAA7C0;
    block[4] = self;
    v30 = v21;
    v24 = v21;
    dispatch_async(v23, block);
  }

  [(SUDownloader *)self _updateLastSavedDownloadsOptions:v6];

  v25 = 1;
LABEL_15:

  return v25;
}

void __44__SUDownloader_updateDownloadOptions_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 downloadProgressDidChange:*(a1 + 40)];
}

- (void)noteAutoDownloadFailedToStart:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUDownloader *)self core];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  [(SUDownloader *)self endAutoDownloadTasksAndResetState];
  SULogInfo(@"Sending autodownload did fail to start notification to clients.", v10, v11, v12, v13, v14, v15, v16, v22);
  v17 = [(SUDownloader *)self core];
  v18 = [v17 delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(SUDownloader *)self core];
    v21 = [v20 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SUDownloader_noteAutoDownloadFailedToStart_withError___block_invoke;
    block[3] = &unk_279CAA798;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v21, block);
  }
}

void __56__SUDownloader_noteAutoDownloadFailedToStart_withError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 automaticDownloadDidFailToStartForNewUpdateAvailable:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)noteAutoDownloadFailedToStartWithError:(id)a3
{
  v4 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUDownload *)self->_download descriptor];
  [(SUDownloader *)self noteAutoDownloadFailedToStart:v7 withError:v4];
}

- (void)deviceIsUpToDate
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[SUScheduler sharedInstance];
  [v5 cancelAllAutoDownloadTasks];

  downloadAsset = self->_downloadAsset;
  if (downloadAsset && (![(MAAsset *)downloadAsset refreshState]|| [(MAAsset *)self->_downloadAsset state]== 3 || [(MAAsset *)self->_downloadAsset isDownloading]))
  {
    SULogInfo(@"Purging SU asset because server says device is up to date", v7, v8, v9, v10, v11, v12, v13, v17);
    v14 = [(SUDownloader *)self core];
    [v14 clearKeybagStash];

    v15 = [(SUDownloader *)self core];
    v16 = [v15 engine];
    [v16 removeUpdateKeepingDocAssets:0];

    [(SUDownloader *)self cleanupPreviousDownloadState:1];
  }
}

- (BOOL)isDownloadHalted
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  if (![(SUDownloader *)self isDownloading])
  {
    return 0;
  }

  v5 = [(SUDownload *)self->_download progress];
  v6 = [v5 phase];
  if (SUDownloadPhaseIsHalted(v6))
  {
    IsStalled = 1;
  }

  else
  {
    v8 = [(SUDownload *)self->_download progress];
    v9 = [v8 phase];
    IsStalled = SUDownloadPhaseIsStalled(v9);
  }

  return IsStalled;
}

- (BOOL)isUpdateDownloaded
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SUDownload *)self->_download progress];
  v6 = [v5 phase];
  if ([v6 isEqualToString:@"SUDownloadPhasePreparingForInstallation"])
  {
    v7 = [(SUDownload *)self->_download progress];
    v8 = [v7 isDone];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSplatDownload
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SUDownloader *)self download];
  v6 = [v5 descriptor];
  LOBYTE(v4) = [v6 updateType] == 4;

  return v4;
}

- (BOOL)_isWithinAutoDownloadWindowForPolicy:(id)a3 descriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [(SUDownloader *)self core];
    v10 = [v7 productBuildVersion];
    v11 = [v9 discoveryDateForBuildVersion:v10];
    v12 = [v6 computAutoDownloadEndDateFromDate:v11];

    if (v12)
    {
      v13 = [v12 laterDate:v8];
      v14 = v13 == v12;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
    v8 = 0;
  }

  return v14;
}

- (void)_changeDownloadPhase:(id)a3 progress:(float)a4 timeRemaining:(double)a5
{
  v36 = a3;
  v8 = [(SUDownloader *)self core];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  if (v36 && [(SUDownloader *)self isDownloading])
  {
    v10 = [(SUDownload *)self->_download progress];
    v11 = [v10 phase];
    if (([v11 isEqualToString:v36] & 1) == 0)
    {
      SULogInfo(@"Software update download phase changed from %@ to %@.", v12, v13, v14, v15, v16, v17, v18, v11);
      [v10 setPercentComplete:0.0];
      [v10 setPhase:v36];
    }

    if (a4 > 0.001 || (SUDownloadPhaseIsFetchingAnything(v36, 1) & 1) == 0)
    {
      [v10 setPercentComplete:{COERCE_DOUBLE(COERCE_UNSIGNED_INT(fminf(fmaxf(a4, 0.0), 1.0)))}];
    }

    v19 = -1.0;
    if (a5 != 0.0)
    {
      v19 = a5;
    }

    [v10 setTimeRemaining:v19];
    v20 = [(SUDownload *)self->_download downloadOptions];
    if ([v20 isAutoDownload])
    {
      v21 = [(SUDownload *)self->_download downloadOptions];
      if ([v21 activeDownloadPolicyType] == 1 && -[SUDownloader isDownloadHalted](self, "isDownloadHalted"))
      {
        v22 = [(SUDownload *)self->_download downloadOptions];
        v23 = [v22 activeDownloadPolicy];
        v24 = [(SUDownload *)self->_download descriptor];
        v25 = [(SUDownloader *)self _isWithinAutoDownloadWindowForPolicy:v23 descriptor:v24];

        if (!v25)
        {
          SULogDebug(@"Download halted after wifi window; attempting to cancel download silently.", v26, v27, v28, v29, v30, v31, v32, v35);
          if ([(SUDownloader *)self cancelDownload:0 userRequested:0 keepDocAssets:1 error:0])
          {
            v33 = [(SUDownload *)self->_download descriptor];
            v34 = [SUUtility autoDownloadExpiredError:0];
            [(SUDownloader *)self noteAutoDownloadFailedToStart:v33 withError:v34];

LABEL_19:
            goto LABEL_20;
          }
        }

LABEL_18:
        [(SUDownloader *)self _updateNormalizedDownloadProgressAndNotifyDelegate];
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

LABEL_20:
}

- (void)_notePhaseCompleted:(id)a3
{
  v4 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v20 = [(SUDownload *)self->_download progress];
  [v20 setPhase:v4];
  LODWORD(v7) = 1.0;
  [v20 setPercentComplete:v7];
  [v20 setTimeRemaining:0.0];
  LODWORD(v5) = [v4 isEqualToString:@"SUDownloadPhasePreparingForInstallation"];

  if (v5)
  {
    [v20 setIsDone:1];
  }

  [(SUDownloader *)self _updateNormalizedDownloadProgress];
  v8 = [(SUDownloader *)self core];
  v9 = [v8 state];
  [v9 setLastDownload:self->_download];

  v10 = [(SUDownloader *)self core];
  v11 = [v10 state];
  [v11 save];

  v12 = [v20 phase];
  SULogInfo(@"Download %@ phase completed.", v13, v14, v15, v16, v17, v18, v19, v12);
}

- (void)_updateNormalizedDownloadProgressAndNotifyDelegate
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  if (self->_download)
  {
    [(SUDownloader *)self _updateNormalizedDownloadProgress];
    v11 = [(SUDownloader *)self core];
    v5 = [v11 delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(SUDownloader *)self _shouldSendUpdatedProgressToDelegate];

      if (v6)
      {
        [(SUDownloader *)self _snapshotProgress];
        v7 = self->_download;
        v8 = [(SUDownloader *)self core];
        v9 = [v8 externWorkQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__SUDownloader__updateNormalizedDownloadProgressAndNotifyDelegate__block_invoke;
        block[3] = &unk_279CAA7C0;
        block[4] = self;
        v13 = v7;
        v10 = v7;
        dispatch_async(v9, block);
      }
    }

    else
    {
    }
  }
}

void __66__SUDownloader__updateNormalizedDownloadProgressAndNotifyDelegate__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 downloadProgressDidChange:*(a1 + 40)];
}

- (BOOL)_shouldSendUpdatedProgressToDelegate
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = self->_downloadProgressSnapshot;
  v6 = [(SUDownload *)self->_download progress];
  [v6 normalizedPercentComplete];
  if (v7 >= 1.0)
  {
    goto LABEL_8;
  }

  v8 = [(SUOperationProgress *)v5 phase];
  v9 = [v6 phase];
  v10 = [v8 isEqualToString:v9];

  if (!v10)
  {
    goto LABEL_8;
  }

  [(SUOperationProgress *)v5 percentComplete];
  v12 = v11;
  [v6 percentComplete];
  if ((v13 - v12) < 0.01)
  {
    if ([(SUDownloader *)self isForeground])
    {
      v14 = 10.0;
    }

    else
    {
      v14 = 60.0;
    }

    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:self->_downloadProgressSnapshotDate];
    v17 = v16 > v14;
  }

  else
  {
LABEL_8:
    v17 = 1;
  }

  return v17;
}

- (void)_updateNormalizedDownloadProgress
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v31 = [(SUDownload *)self->_download progress];
  v5 = [v31 phase];
  v6 = [(SUDownloader *)self _orderForPhase:v5];
  v7 = [(SUDownload *)self->_download descriptor];
  v8 = [v7 _isStreamingZipCapable];

  if (v31 && v6 - 1 <= 6)
  {
    v9 = &_SUDownloadPhaseOrderWeightsNonStreamable;
    if (v8)
    {
      v9 = &_SUDownloadPhaseOrderWeightsStreamable;
    }

    v10 = v6;
    v11 = v9[v6];
    v12 = 0.0;
    do
    {
      v13 = *v9++;
      v12 = v12 + v13;
      --v10;
    }

    while (v10);
    [v31 percentComplete];
    *&v15 = v12 + fminf(v11 * v14, v11);
    [v31 setNormalizedPercentComplete:v15];
    v16 = MEMORY[0x277CCABB8];
    v17 = MEMORY[0x277CCABB0];
    [v31 percentComplete];
    v18 = [v17 numberWithFloat:?];
    v19 = [v16 localizedStringFromNumber:v18 numberStyle:3];
    v20 = MEMORY[0x277CCABB8];
    v21 = MEMORY[0x277CCABB0];
    [v31 normalizedPercentComplete];
    v22 = [v21 numberWithFloat:?];
    v30 = [v20 localizedStringFromNumber:v22 numberStyle:3];
    SULogDebug(@"Download Phase: %@, Phase Progress: %@, Overall Progress: %@", v23, v24, v25, v26, v27, v28, v29, v5);
  }
}

- (int)_orderForPhase:(id)a3
{
  v4 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  if (_orderForPhase____onceToken != -1)
  {
    [SUDownloader _orderForPhase:];
  }

  v7 = [_orderForPhase____downloadPhaseOrderMap objectForKey:v4];

  if (v7)
  {
    v8 = [v7 intValue];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

void __31__SUDownloader__orderForPhase___block_invoke()
{
  v14[10] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithInt:{0, @"SUDownloadPhaseStarting"}];
  v14[0] = v0;
  v13[1] = @"SUDownloadPhaseBrainFetching";
  v1 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v14[1] = v1;
  v13[2] = @"SUDownloadPhaseBrainFetchingQueuedLocal";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v14[2] = v2;
  v13[3] = @"SUDownloadPhaseBrainFetchingQueuedRemote";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v14[3] = v3;
  v13[4] = @"SUDownloadPhaseBrainFetchingStalled";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v14[4] = v4;
  v13[5] = @"SUDownloadPhaseBrainVerifying";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v14[5] = v5;
  v13[6] = @"SUDownloadPhaseBrainExtracting";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v14[6] = v6;
  v13[7] = @"SUDownloadPhaseFetching";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v14[7] = v7;
  v13[8] = @"SUDownloadPhaseFetchingStalled";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v14[8] = v8;
  v13[9] = @"SUDownloadPhasePreparingForInstallation";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:7];
  v14[9] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:10];
  v11 = _orderForPhase____downloadPhaseOrderMap;
  _orderForPhase____downloadPhaseOrderMap = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)downloadProgress:(id)a3
{
  v29 = a3;
  v4 = [(SUDownloader *)self core];
  v5 = [v4 workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v29 phase];
  LODWORD(v5) = [v6 isEqualToString:@"SUDownloadPhaseStarting"];

  if (v5)
  {
    notify_post([*MEMORY[0x277D64250] UTF8String]);
  }

  v7 = [v29 phase];
  [v29 percentComplete];
  v9 = v8;
  [v29 timeRemaining];
  v11 = v10;
  LODWORD(v10) = v9;
  [(SUDownloader *)self _changeDownloadPhase:v7 progress:v10 timeRemaining:v11];

  if ([(SUDownloader *)self goNonDiscretionaryOnDownload])
  {
    if ([(SUDownloader *)self isDownloading])
    {
      v12 = [v29 phase];
      IsUpdateDownloading = SUDownloadPhaseIsUpdateDownloading(v12);

      if (IsUpdateDownloading)
      {
        SULogInfo(@"Download in progress and we need to go non-discretionary", v14, v15, v16, v17, v18, v19, v20, v28);
        [(SUDownloader *)self setGoNonDiscretionaryOnDownload:0];
        [(SUDownloader *)self _setDownloadDiscretionary:0];
      }
    }
  }

  if ([v29 isDone])
  {
    v21 = [v29 phase];
    v22 = [v21 isEqualToString:@"SUDownloadPhasePreparingForInstallation"];

    if ((v22 & 1) == 0)
    {
      v23 = [v29 phase];
      [(SUDownloader *)self _notePhaseCompleted:v23];
    }

    v24 = [v29 phase];
    if ([v24 isEqualToString:@"SUDownloadPhaseBrainExtracting"])
    {
    }

    else
    {
      v25 = [v29 phase];
      v26 = [v25 isEqualToString:@"SUDownloadPhaseFetching"];

      if (!v26)
      {
        goto LABEL_14;
      }
    }

    v27 = [(SUDownloader *)self core];
    [v27 reporterFlushEvent];
  }

LABEL_14:
}

- (void)_downloadFinished:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v86 = *MEMORY[0x277D85DE8];
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUDownloader *)v4 core];
  v8 = [v7 passcodePolicy];
  if (v8)
  {
    v9 = v8;
    v10 = [(SUDownloader *)v4 core];
    if ([v10 isAutoUpdateEnabled])
    {
      v11 = [(SUDownload *)v4->_download downloadOptions];
      v12 = [v11 isAutoDownload];

      if (!v12)
      {
        goto LABEL_11;
      }

      v13 = [(SUDownloader *)v4 download];
      v14 = [v13 descriptor];
      v15 = [v14 updateType];

      v7 = [(SUDownloader *)v4 core];
      v16 = [v7 passcodePolicy];
      v9 = v16;
      if (v15 == 4)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      [v16 setCurrentPolicyType:v17];
    }

    else
    {
    }
  }

LABEL_11:
  v18 = [(SUDownloader *)v4 core];
  v19 = [(SUDownload *)v4->_download descriptor];
  v20 = [v18 coreDescriptorForSUDescriptor:v19];

  SULogInfo(@"%s: Found SUCoreDescriptor: %@", v21, v22, v23, v24, v25, v26, v27, "[SUDownloader _downloadFinished:]");
  if (v20)
  {
    v35 = [(SUDownload *)v4->_download descriptor];
    [v35 installationSize];
    SULogInfo(@"%s: Old installationSize: %llu", v36, v37, v38, v39, v40, v41, v42, "[SUDownloader _downloadFinished:]");

    [v20 refreshInstallationSize];
    v43 = [(SUDownload *)v4->_download descriptor];
    [v43 setInstallationSize:{objc_msgSend(v20, "installationSize")}];

    v44 = [(SUDownload *)v4->_download descriptor];
    [v44 installationSize];
    SULogInfo(@"%s: Refreshed installationSize: %llu", v45, v46, v47, v48, v49, v50, v51, "[SUDownloader _downloadFinished:]");
  }

  SULogInfo(@"%s: Download finished, cancel the recommended notification UI", v28, v29, v30, v31, v32, v33, v34, "[SUDownloader _downloadFinished:]");
  v52 = [(SUDownloader *)v4 core];
  [v52 unscheduleRecommendedUpdateNotification];

  v53 = [(SUDownloader *)v4 core];
  [v53 donateSuccessToBiomeFor:@"Download"];

  if (v3)
  {
    v72 = v20;
    v54 = [(SUDownloader *)v4 core];
    v74 = [v54 installPolicy];

    v73 = v4->_download;
    v55 = [(SUDownloader *)v4 core];
    v56 = [v55 delegate];
    v57 = objc_opt_respondsToSelector();

    if (v57)
    {
      v58 = [(SUDownloader *)v4 core];
      v59 = [v58 externWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __34__SUDownloader__downloadFinished___block_invoke;
      block[3] = &unk_279CAA798;
      block[4] = v4;
      v83 = v73;
      v84 = v74;
      dispatch_async(v59, block);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v60 = [(SUDownloader *)v4 core];
    v61 = [v60 observers];
    v62 = [v61 allObjects];

    v63 = [v62 countByEnumeratingWithState:&v78 objects:v85 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v79;
      do
      {
        for (i = 0; i != v64; ++i)
        {
          if (*v79 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = *(*(&v78 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v68 = [(SUDownloader *)v4 core];
            [v68 externWorkQueue];
            v70 = v69 = v4;
            v75[0] = MEMORY[0x277D85DD0];
            v75[1] = 3221225472;
            v75[2] = __34__SUDownloader__downloadFinished___block_invoke_2;
            v75[3] = &unk_279CAA798;
            v75[4] = v67;
            v76 = v73;
            v77 = v74;
            dispatch_async(v70, v75);

            v4 = v69;
          }
        }

        v64 = [v62 countByEnumeratingWithState:&v78 objects:v85 count:16];
      }

      while (v64);
    }

    v20 = v72;
  }

  [(SUDownloader *)v4 endAutoDownloadTasksAndResetState];
  [SUUtility setCacheable:1];
  [(SUDownloader *)v4 setDownloading:0];

  v71 = *MEMORY[0x277D85DE8];
}

void __34__SUDownloader__downloadFinished___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 downloadDidFinish:*(a1 + 40) withInstallPolicy:*(a1 + 48)];
}

- (void)_downloadFailedWithError:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  SULogInfo(@"Download failed with error: %@", v7, v8, v9, v10, v11, v12, v13, v4);
  +[SUSpace mobileAssetResumeFromSuspension];
  v14 = [(SUDownloader *)self core];
  [v14 resumeOrDisableReserveSpace];

  v22 = 0x279CA9000uLL;
  if (self->_download)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:-1 userInfo:0];
    }

    v46 = v4;
    v48 = [SUUtility translateError:v4];
    v47 = self->_download;
    v23 = [(SUDownloader *)self core];
    v24 = [v23 delegate];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      v26 = [(SUDownloader *)self core];
      v27 = [v26 externWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__SUDownloader__downloadFailedWithError___block_invoke;
      block[3] = &unk_279CAA798;
      block[4] = self;
      v57 = v47;
      v58 = v48;
      dispatch_async(v27, block);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v28 = [(SUDownloader *)self core];
    v29 = [v28 observers];
    v30 = [v29 allObjects];

    v31 = [v30 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v53;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v53 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v52 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v36 = [(SUDownloader *)self core];
            [v36 externWorkQueue];
            v38 = v37 = self;
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __41__SUDownloader__downloadFailedWithError___block_invoke_2;
            v49[3] = &unk_279CAA798;
            v49[4] = v35;
            v50 = v47;
            v51 = v48;
            dispatch_async(v38, v49);

            self = v37;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v32);
    }

    v4 = v46;
    v22 = 0x279CA9000;
  }

  else
  {
    SULogError(@"[ANOMALY] Download faild but the download object is nil", v15, v16, v17, v18, v19, v20, v21, v45);
  }

  v39 = [(SUDownloader *)self core];
  [v39 donateSUErrorToBiome:v4];

  v40 = [(SUDownloader *)self core];
  [v40 reportOTAAbandonedEventWithError:v4];

  v41 = [(SUDownloader *)self core];
  [v41 reportCoreAnalyticsOTAAbandonedEvent:v4];

  v42 = [(SUDownloader *)self core];
  [v42 clearUnlockCallbacks];

  [*(v22 + 3176) setCacheable:1];
  [(SUDownloader *)self cleanupPreviousDownloadState:1];
  v43 = [(SUDownloader *)self core];
  [v43 clearKeybagStash];

  [(SUDownloader *)self setDownloading:0];
  v44 = *MEMORY[0x277D85DE8];
}

void __41__SUDownloader__downloadFailedWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 downloadDidFail:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)_downloadInvalidatedWithUpdates:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  +[SUSpace mobileAssetResumeFromSuspension];
  v5 = [(SUDownloader *)self core];
  [v5 resumeOrDisableReserveSpace];

  if (!v4)
  {
    v6 = [SUCoreScanResults alloc];
    v7 = [(SUDownloader *)self core];
    v8 = [v7 preferredLastScannedDescriptor];
    v9 = [(SUDownloader *)self core];
    v10 = [v9 alternateLastScannedDescriptor];
    v4 = [(SUCoreScanResults *)v6 initWithPreferredDescriptor:v8 alternateDescriptor:v10];
  }

  v11 = [(SUDownloader *)self core];
  v12 = [v11 delegate];
  if (v12)
  {
    v13 = v12;
    v14 = [(SUDownloader *)self core];
    v15 = [v14 delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(SUDownloader *)self core];
      v18 = [v17 externWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__SUDownloader__downloadInvalidatedWithUpdates___block_invoke;
      block[3] = &unk_279CAA7C0;
      block[4] = self;
      v40 = v4;
      dispatch_async(v18, block);
    }
  }

  else
  {
  }

  v31 = v4;
  v32 = self->_download;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = [(SUDownloader *)self core];
  v20 = [v19 observers];
  v21 = [v20 allObjects];

  v22 = [v21 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      v25 = 0;
      do
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v35 + 1) + 8 * v25);
        if (objc_opt_respondsToSelector())
        {
          [(SUDownloader *)self core];
          v28 = v27 = self;
          v29 = [v28 externWorkQueue];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __48__SUDownloader__downloadInvalidatedWithUpdates___block_invoke_2;
          v33[3] = &unk_279CAA7C0;
          v33[4] = v26;
          v34 = v32;
          dispatch_async(v29, v33);

          self = v27;
        }

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v23);
  }

  [(SUDownloader *)self cleanupPreviousDownloadState:1];
  [(SUDownloader *)self setDownloading:0];

  v30 = *MEMORY[0x277D85DE8];
}

void __48__SUDownloader__downloadInvalidatedWithUpdates___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 downloadWasInvalidatedForNewUpdatesAvailable:*(a1 + 40)];
}

- (void)cleanupPreviousDownloadState:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUDownloader *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  SULogInfo(@"Cleaning up previous download state", v7, v8, v9, v10, v11, v12, v13, v19);
  [(SUDownloader *)self setDownloadAsset:0];
  v14 = [(SUDownloader *)self core];
  [v14 clearBadgeAndBanner];

  [(SUDownloader *)self setGoNonDiscretionaryOnDownload:0];
  [(SUDownloader *)self setDownloading:0];
  [(SUDownloader *)self setDownload:0];
  [(SUDownloader *)self _snapshotProgress];
  v15 = [(SUDownloader *)self core];
  v16 = [v15 state];
  [v16 setLastDownload:0];

  v17 = [(SUDownloader *)self core];
  [v17 removeUnlockCallback:@"unlockCallbackRecordDataForBrain"];

  if (v3)
  {
    v20 = [(SUDownloader *)self core];
    v18 = [v20 state];
    [v18 save];
  }
}

- (void)_snapshotProgress
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SUDownload *)self->_download progress];
  v6 = [v5 copy];
  downloadProgressSnapshot = self->_downloadProgressSnapshot;
  self->_downloadProgressSnapshot = v6;

  v8 = [MEMORY[0x277CBEAA8] now];
  downloadProgressSnapshotDate = self->_downloadProgressSnapshotDate;
  self->_downloadProgressSnapshotDate = v8;

  MEMORY[0x2821F96F8](v8, downloadProgressSnapshotDate);
}

- (void)operatorBundleChanged
{
  v3 = [(SUDownloader *)self core];
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SUDownloader_operatorBundleChanged__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v4, block);
}

void __37__SUDownloader_operatorBundleChanged__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDownloading])
  {
    v2 = *(a1 + 32);
    v3 = [v2[4] progress];
    v4 = [v3 phase];
    LODWORD(v2) = [v2 _orderForPhase:v4];

    if (v2 <= 4)
    {
      v5 = [*(*(a1 + 32) + 32) downloadOptions];
      if ([v5 activeDownloadPolicyType] != 2 && (objc_msgSend(*(a1 + 32), "_reapplyExistingDownloadPolicyIfDownloadable:", 1) & 1) == 0)
      {
        SULogInfo(@"Cellular operator status changed, and now the download is not downloadable.  Attempting to cancel the download.", v6, v7, v8, v9, v10, v11, v12, v24);
        v13 = *(a1 + 32);
        v25 = 0;
        v14 = [v13 cancelDownload:1 userRequested:0 keepDocAssets:1 error:&v25];
        v15 = v25;
        v23 = v15;
        if ((v14 & 1) == 0)
        {
          SULogInfo(@"Unable to cancel download for cellular bundle change: %@", v16, v17, v18, v19, v20, v21, v22, v15);
        }
      }
    }
  }
}

void __60__SUDownloader_networkChangedFromNetworkType_toNetworkType___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isDownloading])
  {
    return;
  }

  if (*(a1 + 40) == 1)
  {
    goto LABEL_3;
  }

  if ([*(*(a1 + 32) + 32) allowCellularDownload])
  {
    if (*(a1 + 40) != 1)
    {
      return;
    }

LABEL_3:
    v2 = [*(*(a1 + 32) + 32) progress];
    v3 = [v2 phase];
    v4 = [v3 isEqualToString:@"SUDownloadPhaseFetchingStalled"];

    if (v4)
    {
      v5 = *(a1 + 32);
      v12 = [v5[4] progress];
      [v12 percentComplete];
      v7 = v6;
      v8 = [*(*(a1 + 32) + 32) progress];
      [v8 timeRemaining];
      v10 = v9;
      LODWORD(v9) = v7;
      [v5 _changeDownloadPhase:@"SUDownloadPhaseFetching" progress:v9 timeRemaining:v10];
    }

    return;
  }

  v11 = *(a1 + 32);

  [v11 _changeDownloadPhase:@"SUDownloadPhaseFetchingStalled" progress:0.0 timeRemaining:0.0];
}

- (id)slaVersion
{
  v3 = [(SUDownloader *)self download];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(SUDownloader *)self download];
  v6 = [v5 descriptor];
  if (!v6)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [(SUDownloader *)self download];
  v9 = [v8 descriptor];
  v10 = [v9 documentation];

  if (!v10)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_8;
  }

  v4 = [(SUDownloader *)self download];
  v5 = [v4 descriptor];
  v11 = [v5 documentation];
  v12 = [v11 slaVersion];

LABEL_7:
LABEL_8:

  return v12;
}

- (void)ensureSSOTokenIfNeededForDownload:(id)a3
{
  v29 = a3;
  if (+[SUUtility currentReleaseTypeIsInternal])
  {
    v3 = +[SUPreferences sharedInstance];
    v4 = [v3 suppressSSOTokenInDownload];

    if (v4)
    {
      SULogInfo(@"%s: Suppressing SSO Token in download.", v5, v6, v7, v8, v9, v10, v11, "[SUDownloader ensureSSOTokenIfNeededForDownload:]");
    }

    else if ([v29 isAutoDownload])
    {
      SULogInfo(@"%s: Autodownload operation - not getting SSO Token.", v12, v13, v14, v15, v16, v17, v18, "[SUDownloader ensureSSOTokenIfNeededForDownload:]");
    }

    else
    {
      v19 = [v29 descriptor];
      v20 = [v19 upgradeType];

      if (v20 == 2)
      {
        SULogInfo(@"%s: Software update is major upgrade, getting SSO token.", v21, v22, v23, v24, v25, v26, v27, "[SUDownloader ensureSSOTokenIfNeededForDownload:]");
        v28 = +[SUAuthSSO sharedInstance];
        [v28 invokeSSOAuth];
      }

      else
      {
        SULogInfo(@"%s: Software update is not major upgrade, not getting SSO token.", v21, v22, v23, v24, v25, v26, v27, "[SUDownloader ensureSSOTokenIfNeededForDownload:]");
      }
    }
  }
}

+ (id)purgeOptionsForDescriptor:(id)a3 downloadOptions:(id)a4 completionQueue:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(SUSpacePurgeOptions);
  v11 = [SUUtility totalDiskSpaceForUpdate:v9];

  [(SUSpacePurgeOptions *)v10 setNeededBytes:v11];
  [(SUSpacePurgeOptions *)v10 setEnableCacheDelete:1];
  if ([v7 isAutoDownload])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v7 isAppOffloadEnabled];
  }

  [(SUSpacePurgeOptions *)v10 setEnableAppOffload:v12];
  if ([v7 isAutoDownload])
  {
    v13 = 0;
  }

  else
  {
    v13 = [v7 isMASuspensionEnabled];
  }

  [(SUSpacePurgeOptions *)v10 setEnableMobileAssetSuspend:v13];
  [(SUSpacePurgeOptions *)v10 setCacheDeleteUrgency:4];
  [(SUSpacePurgeOptions *)v10 setAppOffloadUrgency:4];
  [(SUSpacePurgeOptions *)v10 setCompletionQueue:v8];

  return v10;
}

- (SUManagerCore)core
{
  WeakRetained = objc_loadWeakRetained(&self->_core);

  return WeakRetained;
}

@end