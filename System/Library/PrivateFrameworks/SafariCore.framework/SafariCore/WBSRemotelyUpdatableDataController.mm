@interface WBSRemotelyUpdatableDataController
- (BOOL)_shouldUpdateConfigurationGivenLastConfigurationUpdateAttemptDate:(id)date;
- (WBSRemotelyUpdatableDataController)initWithDataFormat:(int64_t)format builtInListURL:(id)l downloadsDirectoryURL:(id)rL resourceName:(id)name resourceVersion:(id)version updateDateDefaultsKey:(id)key updateInterval:(double)interval snapshotClass:(Class)self0 snapshotTransformerClass:(Class)self1;
- (WBSRemotelyUpdatableDataController)initWithDataFormat:(int64_t)format downloadsDirectoryURL:(id)l resourceName:(id)name resourceVersion:(id)version updateDateDefaultsKey:(id)key updateInterval:(double)interval snapshotClass:(Class)class snapshotTransformerClass:(Class)self0 builtInDataProvider:(id)self1;
- (WBSRemotelyUpdatableDataControllerDelegate)delegate;
- (id)_fileExtensionForData;
- (id)_lastConfigurationUpdateAttemptDate;
- (id)_urlOfDownloadedList;
- (id)_urlOfInternalOverrideList;
- (id)fetchDataFromRemotelyLoadedSnapshotFallingBackToBuiltInSnapshot:(id)snapshot;
- (void)_didDownloadSnapshot:(id)snapshot;
- (void)_loadBuiltInSnapshotIfNeeded;
- (void)_loadDownloadedSnapshotIfNeeded;
- (void)_resetUpdateTimer;
- (void)_setCurrentDateAsLastConfigurationUpdateAttemptDate;
- (void)_setUpDownloadedFileMonitoring;
- (void)_stopDownloadedFileMonitoring;
- (void)_updateDownloadedDataIfNecessary;
- (void)_writeConfigurationData:(id)data;
- (void)accessBuiltInAndRemotelyLoadedSnapshots:(id)snapshots;
- (void)accessCurrentSnapshot:(id)snapshot;
- (void)accessSnapshotLoadingItIfNeeded:(id)needed;
- (void)dealloc;
- (void)prepareForTermination;
- (void)setDataIsUsedByMultipleProcesses:(BOOL)processes;
- (void)setShouldAttemptToUpdateConfiguration:(BOOL)configuration;
@end

@implementation WBSRemotelyUpdatableDataController

- (id)_urlOfDownloadedList
{
  downloadsDirectoryURL = self->_downloadsDirectoryURL;
  resourceName = self->_resourceName;
  _fileExtensionForData = [(WBSRemotelyUpdatableDataController *)self _fileExtensionForData];
  v5 = [(NSString *)resourceName stringByAppendingPathExtension:_fileExtensionForData];
  v6 = [(NSURL *)downloadsDirectoryURL URLByAppendingPathComponent:v5 isDirectory:0];

  return v6;
}

- (id)_fileExtensionForData
{
  if (self->_dataFormat)
  {
    return @"json";
  }

  else
  {
    return @"plist";
  }
}

- (void)_loadDownloadedSnapshotIfNeeded
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  safari_privacyPreservingDescription = [a3 safari_privacyPreservingDescription];
  v8 = 138412546;
  selfCopy = self;
  v10 = 2114;
  v11 = safari_privacyPreservingDescription;
  _os_log_error_impl(&dword_1B8447000, v5, OS_LOG_TYPE_ERROR, "The downloaded data file (%@) could not be loaded: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_urlOfInternalOverrideList
{
  v3 = MEMORY[0x1E696AEC0];
  _fileExtensionForData = [(WBSRemotelyUpdatableDataController *)self _fileExtensionForData];
  v5 = [v3 stringWithFormat:@"Override%@.%@", _fileExtensionForData, self->_resourceName];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];
  v8 = [safari_settingsDirectoryURL URLByAppendingPathComponent:v5 isDirectory:0];

  return v8;
}

- (void)_setUpDownloadedFileMonitoring
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_loadBuiltInSnapshotIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_updateDownloadedDataIfNecessary
{
  if (self->_shouldAttemptToDownloadConfiguration)
  {
    _lastConfigurationUpdateAttemptDate = [(WBSRemotelyUpdatableDataController *)self _lastConfigurationUpdateAttemptDate];
    v4 = [(WBSRemotelyUpdatableDataController *)self _shouldUpdateConfigurationGivenLastConfigurationUpdateAttemptDate:_lastConfigurationUpdateAttemptDate];

    if (v4)
    {
      [(WBSConfigurationDownloader *)self->_configurationDownloader cancel];
      v5 = [WBSConfigurationDownloader alloc];
      _downloadedListResourceName = [(WBSRemotelyUpdatableDataController *)self _downloadedListResourceName];
      v7 = objc_alloc_init(self->_snapshotTransformerClass);
      v8 = [(WBSConfigurationDownloader *)v5 initWithFileName:_downloadedListResourceName dataTransformer:v7];
      configurationDownloader = self->_configurationDownloader;
      self->_configurationDownloader = v8;

      [(WBSRemotelyUpdatableDataController *)self _setCurrentDateAsLastConfigurationUpdateAttemptDate];
      objc_initWeak(&location, self);
      v10 = self->_configurationDownloader;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __70__WBSRemotelyUpdatableDataController__updateDownloadedDataIfNecessary__block_invoke;
      v11[3] = &unk_1E7CF3DC8;
      objc_copyWeak(&v12, &location);
      [(WBSConfigurationDownloader *)v10 downloadConfigurationWithCompletionHandler:v11];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (id)_lastConfigurationUpdateAttemptDate
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults safari_dateForKey:self->_updateDateDefaultsKey];

  return v4;
}

- (WBSRemotelyUpdatableDataController)initWithDataFormat:(int64_t)format builtInListURL:(id)l downloadsDirectoryURL:(id)rL resourceName:(id)name resourceVersion:(id)version updateDateDefaultsKey:(id)key updateInterval:(double)interval snapshotClass:(Class)self0 snapshotTransformerClass:(Class)self1
{
  lCopy = l;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __199__WBSRemotelyUpdatableDataController_initWithDataFormat_builtInListURL_downloadsDirectoryURL_resourceName_resourceVersion_updateDateDefaultsKey_updateInterval_snapshotClass_snapshotTransformerClass___block_invoke;
  v22[3] = &unk_1E7CF3D50;
  v23 = lCopy;
  v19 = lCopy;
  v20 = [(WBSRemotelyUpdatableDataController *)self initWithDataFormat:format downloadsDirectoryURL:rL resourceName:name resourceVersion:version updateDateDefaultsKey:key updateInterval:class snapshotClass:interval snapshotTransformerClass:transformerClass builtInDataProvider:v22];

  return v20;
}

id __199__WBSRemotelyUpdatableDataController_initWithDataFormat_builtInListURL_downloadsDirectoryURL_resourceName_resourceVersion_updateDateDefaultsKey_updateInterval_snapshotClass_snapshotTransformerClass___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v6 = 0;
    v2 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v1 options:0 error:&v6];
    v3 = v6;
    if (!v2)
    {
      v4 = WBS_LOG_CHANNEL_PREFIXRemotelyUpdatableDataController();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __199__WBSRemotelyUpdatableDataController_initWithDataFormat_builtInListURL_downloadsDirectoryURL_resourceName_resourceVersion_updateDateDefaultsKey_updateInterval_snapshotClass_snapshotTransformerClass___block_invoke_cold_1(v4, v3);
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (WBSRemotelyUpdatableDataController)initWithDataFormat:(int64_t)format downloadsDirectoryURL:(id)l resourceName:(id)name resourceVersion:(id)version updateDateDefaultsKey:(id)key updateInterval:(double)interval snapshotClass:(Class)class snapshotTransformerClass:(Class)self0 builtInDataProvider:(id)self1
{
  lCopy = l;
  nameCopy = name;
  versionCopy = version;
  keyCopy = key;
  providerCopy = provider;
  v41.receiver = self;
  v41.super_class = WBSRemotelyUpdatableDataController;
  v24 = [(WBSRemotelyUpdatableDataController *)&v41 init];
  v25 = v24;
  if (v24)
  {
    v24->_dataFormat = format;
    v26 = [providerCopy copy];
    builtInListDataProvider = v25->_builtInListDataProvider;
    v25->_builtInListDataProvider = v26;

    objc_storeStrong(&v25->_downloadsDirectoryURL, l);
    v28 = [nameCopy copy];
    resourceName = v25->_resourceName;
    v25->_resourceName = v28;

    v30 = [versionCopy copy];
    resourceVersion = v25->_resourceVersion;
    v25->_resourceVersion = v30;

    v32 = [keyCopy copy];
    updateDateDefaultsKey = v25->_updateDateDefaultsKey;
    v25->_updateDateDefaultsKey = v32;

    v25->_snapshotClass = class;
    v25->_snapshotTransformerClass = transformerClass;
    v25->_updateInterval = interval;
    v25->_shouldAttemptToDownloadConfiguration = 1;
    v34 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v35 = dispatch_queue_create("com.apple.SafariCore.RemotelyUpdatableDataController.internalQueue", v34);
    internalQueue = v25->_internalQueue;
    v25->_internalQueue = v35;

    v37 = dispatch_queue_create("com.apple.SafariCore.RemotelyUpdatableDataController.diskWriteQueue", v34);
    diskWriteQueue = v25->_diskWriteQueue;
    v25->_diskWriteQueue = v37;

    v39 = v25;
  }

  return v25;
}

- (void)dealloc
{
  [(WBSRemotelyUpdatableDataController *)self _stopDownloadedFileMonitoring];
  v3.receiver = self;
  v3.super_class = WBSRemotelyUpdatableDataController;
  [(WBSRemotelyUpdatableDataController *)&v3 dealloc];
}

void __68__WBSRemotelyUpdatableDataController__setUpDownloadedFileMonitoring__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[18];
    if (v3)
    {
      dispatch_source_cancel(v3);
    }

    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v2[2]);
    v5 = v2[18];
    v2[18] = v4;

    v6 = v2[18];
    v7 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v8 = v2[18];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__WBSRemotelyUpdatableDataController__setUpDownloadedFileMonitoring__block_invoke_2;
    handler[3] = &unk_1E7CF16E0;
    handler[4] = v2;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(v2[18]);
  }
}

void __68__WBSRemotelyUpdatableDataController__setUpDownloadedFileMonitoring__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 112);
  *(v4 + 112) = 0;

  [*(a1 + 32) _loadDownloadedSnapshotIfNeeded];
  v6 = [*(a1 + 32) delegate];
  [v6 didDownloadDataForRemotelyUpdatableDataController:*(a1 + 32)];

  v7 = *(a1 + 32);
  v8 = *(v7 + 144);
  *(v7 + 144) = 0;
}

- (void)_stopDownloadedFileMonitoring
{
  downloadedFileChangedSource = self->_downloadedFileChangedSource;
  if (downloadedFileChangedSource)
  {
    dispatch_source_cancel(downloadedFileChangedSource);
    downloadedFileChangedSource = self->_downloadedFileChangedSource;
  }

  self->_downloadedFileChangedSource = 0;
}

- (void)setShouldAttemptToUpdateConfiguration:(BOOL)configuration
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__WBSRemotelyUpdatableDataController_setShouldAttemptToUpdateConfiguration___block_invoke;
  v4[3] = &unk_1E7CF3D78;
  v4[4] = self;
  configurationCopy = configuration;
  dispatch_sync(internalQueue, v4);
}

void __76__WBSRemotelyUpdatableDataController_setShouldAttemptToUpdateConfiguration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 152) = v1;
  v2 = *(a1 + 32);
  if (v1)
  {
    if (!v2[16])
    {
      objc_initWeak(&location, v2);
      v4 = MEMORY[0x1E695DFF0];
      v5 = *(*(a1 + 32) + 88);
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __76__WBSRemotelyUpdatableDataController_setShouldAttemptToUpdateConfiguration___block_invoke_2;
      v14 = &unk_1E7CF2330;
      objc_copyWeak(&v15, &location);
      v6 = [v4 timerWithTimeInterval:1 repeats:&v11 block:v5];
      v7 = *(a1 + 32);
      v8 = *(v7 + 128);
      *(v7 + 128) = v6;

      [*(*(a1 + 32) + 128) setTolerance:{*(*(a1 + 32) + 88) * 0.1, v11, v12, v13, v14}];
      v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v9 addTimer:*(*(a1 + 32) + 128) forMode:*MEMORY[0x1E695D918]];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v10 = *(a1 + 32);

    [v10 _resetUpdateTimer];
  }
}

void __76__WBSRemotelyUpdatableDataController_setShouldAttemptToUpdateConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 20);
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 shouldRemotelyUpdatableDataControllerUpdateOnSchedule:v2] & 1) == 0)
    {
      v5 = v2[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__WBSRemotelyUpdatableDataController_setShouldAttemptToUpdateConfiguration___block_invoke_3;
      block[3] = &unk_1E7CF16E0;
      block[4] = v2;
      dispatch_sync(v5, block);
    }

    else
    {
      v4 = v2[2];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __76__WBSRemotelyUpdatableDataController_setShouldAttemptToUpdateConfiguration___block_invoke_4;
      v6[3] = &unk_1E7CF16E0;
      v6[4] = v2;
      dispatch_async(v4, v6);
    }
  }
}

- (void)setDataIsUsedByMultipleProcesses:(BOOL)processes
{
  if (self->_dataIsUsedByMultipleProcesses != processes)
  {
    self->_dataIsUsedByMultipleProcesses = processes;
    if (processes)
    {
      [(WBSRemotelyUpdatableDataController *)self _setUpDownloadedFileMonitoring];
    }

    else
    {
      [(WBSRemotelyUpdatableDataController *)self _stopDownloadedFileMonitoring];
    }
  }
}

- (void)_resetUpdateTimer
{
  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

void __70__WBSRemotelyUpdatableDataController__updateDownloadedDataIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__WBSRemotelyUpdatableDataController__updateDownloadedDataIfNecessary__block_invoke_2;
    v7[3] = &unk_1E7CF3DA0;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v3;
    dispatch_async(v6, v7);

    objc_destroyWeak(&v9);
  }
}

void __70__WBSRemotelyUpdatableDataController__updateDownloadedDataIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _didDownloadSnapshot:*(a1 + 32)];
    v3 = objc_loadWeakRetained(v4 + 20);
    if (objc_opt_respondsToSelector())
    {
      [v3 didDownloadDataForRemotelyUpdatableDataController:v4];
    }

    WeakRetained = v4;
  }
}

- (void)_didDownloadSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  _urlOfDownloadedList = [(WBSRemotelyUpdatableDataController *)self _urlOfDownloadedList];

  if (_urlOfDownloadedList && ([snapshotCopy isEqual:self->_currentSnapshot] & 1) == 0)
  {
    objc_storeStrong(&self->_remotelyLoadedSnapshot, snapshot);
    objc_storeStrong(&self->_currentSnapshot, snapshot);
    snapshotData = [(WBSRemotelyUpdatableDataSnapshot *)self->_currentSnapshot snapshotData];
    [(WBSRemotelyUpdatableDataController *)self _writeConfigurationData:snapshotData];
  }
}

- (void)_writeConfigurationData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  [(WBSRemotelyUpdatableDataController *)self _stopDownloadedFileMonitoring];
  diskWriteQueue = self->_diskWriteQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WBSRemotelyUpdatableDataController__writeConfigurationData___block_invoke;
  block[3] = &unk_1E7CF3DA0;
  objc_copyWeak(&v9, &location);
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(diskWriteQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __62__WBSRemotelyUpdatableDataController__writeConfigurationData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained _urlOfDownloadedList];
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v3 URLByDeletingLastPathComponent];
    v6 = [v4 safari_ensureDirectoryExists:v5];

    [*(a1 + 32) writeToURL:v3 atomically:1];
    [v7 _setUpDownloadedFileMonitoring];

    WeakRetained = v7;
  }
}

- (void)prepareForTermination
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WBSRemotelyUpdatableDataController_prepareForTermination__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __59__WBSRemotelyUpdatableDataController_prepareForTermination__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetUpdateTimer];
  [*(*(a1 + 32) + 120) cancel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;
}

- (void)accessCurrentSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__WBSRemotelyUpdatableDataController_accessCurrentSnapshot___block_invoke;
  v7[3] = &unk_1E7CF1888;
  v7[4] = self;
  v8 = snapshotCopy;
  v6 = snapshotCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)accessBuiltInAndRemotelyLoadedSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WBSRemotelyUpdatableDataController_accessBuiltInAndRemotelyLoadedSnapshots___block_invoke;
  v7[3] = &unk_1E7CF1888;
  v7[4] = self;
  v8 = snapshotsCopy;
  v6 = snapshotsCopy;
  dispatch_sync(internalQueue, v7);
}

- (id)fetchDataFromRemotelyLoadedSnapshotFallingBackToBuiltInSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__WBSRemotelyUpdatableDataController_fetchDataFromRemotelyLoadedSnapshotFallingBackToBuiltInSnapshot___block_invoke;
  v8[3] = &unk_1E7CF3DF0;
  v10 = &v11;
  v5 = snapshotCopy;
  v9 = v5;
  [(WBSRemotelyUpdatableDataController *)self accessBuiltInAndRemotelyLoadedSnapshots:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __102__WBSRemotelyUpdatableDataController_fetchDataFromRemotelyLoadedSnapshotFallingBackToBuiltInSnapshot___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = (*(*(a1 + 32) + 16))();
  v4 = v3;
  if (!v3)
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (!v3)
  {
  }
}

- (void)accessSnapshotLoadingItIfNeeded:(id)needed
{
  neededCopy = needed;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__WBSRemotelyUpdatableDataController_accessSnapshotLoadingItIfNeeded___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = neededCopy;
  v6 = neededCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __70__WBSRemotelyUpdatableDataController_accessSnapshotLoadingItIfNeeded___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadDownloadedSnapshotIfNeeded];
  [*(a1 + 32) _loadBuiltInSnapshotIfNeeded];
  [*(a1 + 32) _updateDownloadedDataIfNecessary];
  v2 = *(*(a1 + 32) + 112);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (BOOL)_shouldUpdateConfigurationGivenLastConfigurationUpdateAttemptDate:(id)date
{
  if (!date)
  {
    return 1;
  }

  [date timeIntervalSinceNow];
  return self->_updateInterval < -v4;
}

- (void)_setCurrentDateAsLastConfigurationUpdateAttemptDate
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  date = [MEMORY[0x1E695DF00] date];
  [standardUserDefaults setObject:date forKey:self->_updateDateDefaultsKey];
}

- (WBSRemotelyUpdatableDataControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __199__WBSRemotelyUpdatableDataController_initWithDataFormat_builtInListURL_downloadsDirectoryURL_resourceName_resourceVersion_updateDateDefaultsKey_updateInterval_snapshotClass_snapshotTransformerClass___block_invoke_cold_1(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v10 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

@end