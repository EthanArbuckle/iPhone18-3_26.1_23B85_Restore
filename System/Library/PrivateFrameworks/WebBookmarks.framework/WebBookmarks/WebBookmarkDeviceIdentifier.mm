@interface WebBookmarkDeviceIdentifier
+ (void)_postWebBookmarkMetaDataChangeDistributedNotification:(id)a3;
+ (void)clearDeviceIdentifierWithPlistURL:(id)a3;
- (BOOL)encounteredErrorWhileObtainingUUID;
- (NSUUID)UUID;
- (void)_cancelMonitoringMetaDataFile;
- (void)_createOrLoadMetaData;
- (void)_metaDataDidChange:(id)a3;
- (void)_resumeMonitoringMetaDataFile;
- (void)_setListensForMetaDataChangeNotification:(BOOL)a3;
- (void)_setUpWithPlistURL:(id)a3 readOnly:(BOOL)a4 queue:(id)a5;
- (void)dealloc;
- (void)stopObservingChanges;
@end

@implementation WebBookmarkDeviceIdentifier

- (void)_createOrLoadMetaData
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_272C20000, a2, OS_LOG_TYPE_ERROR, "Failed to write bookmarks metadata file to %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_cancelMonitoringMetaDataFile
{
  fileMonitor = self->_fileMonitor;
  if (fileMonitor)
  {
    dispatch_source_cancel(fileMonitor);
    v4 = self->_fileMonitor;
    self->_fileMonitor = 0;
  }
}

uint64_t __52__WebBookmarkDeviceIdentifier__createOrLoadMetaData__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_DEFAULT, "Posted bookmarks metadata file changed notification", v6, 2u);
    }

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"webBookmarksMetaDataDidChangeNotification" object:*(a1 + 32)];
  }

  return [*(a1 + 32) _resumeMonitoringMetaDataFile];
}

- (void)_resumeMonitoringMetaDataFile
{
  p_fileMonitor = &self->_fileMonitor;
  fileMonitor = self->_fileMonitor;
  if (fileMonitor)
  {

    dispatch_resume(fileMonitor);
  }

  else
  {
    v5 = open([(NSURL *)self->_plistURL fileSystemRepresentation], 4);
    if ((v5 & 0x80000000) != 0)
    {

      [(WebBookmarkDeviceIdentifier *)self _setListensForMetaDataChangeNotification:1];
    }

    else
    {
      v6 = v5;
      v7 = dispatch_source_create(MEMORY[0x277D85D48], v5, 3uLL, self->_queue);
      if (v7)
      {
        objc_storeStrong(p_fileMonitor, v7);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __60__WebBookmarkDeviceIdentifier__resumeMonitoringMetaDataFile__block_invoke;
        handler[3] = &unk_279E751F0;
        handler[4] = self;
        dispatch_source_set_event_handler(v7, handler);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __60__WebBookmarkDeviceIdentifier__resumeMonitoringMetaDataFile__block_invoke_16;
        v10[3] = &__block_descriptor_36_e5_v8__0l;
        v11 = v6;
        dispatch_source_set_cancel_handler(v7, v10);
        dispatch_resume(v7);
        v8 = self;
        v9 = 0;
      }

      else
      {
        close(v6);
        v8 = self;
        v9 = 1;
      }

      [(WebBookmarkDeviceIdentifier *)v8 _setListensForMetaDataChangeNotification:v9];
    }
  }
}

- (NSUUID)UUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__WebBookmarkDeviceIdentifier_UUID__block_invoke;
  v5[3] = &unk_279E75260;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setUpWithPlistURL:(id)a3 readOnly:(BOOL)a4 queue:(id)a5
{
  v8 = a3;
  objc_storeStrong(&self->_queue, a5);
  v9 = a5;
  plistURL = self->_plistURL;
  self->_plistURL = v8;
  v11 = v8;

  self->_readOnly = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WebBookmarkDeviceIdentifier__setUpWithPlistURL_readOnly_queue___block_invoke;
  block[3] = &unk_279E751F0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)dealloc
{
  [(WebBookmarkDeviceIdentifier *)self _setListensForMetaDataChangeNotification:0];
  v3.receiver = self;
  v3.super_class = WebBookmarkDeviceIdentifier;
  [(WebBookmarkDeviceIdentifier *)&v3 dealloc];
}

- (void)_setListensForMetaDataChangeNotification:(BOOL)a3
{
  if (self->_listensForMetaDataChangeNotification != a3)
  {
    v4 = a3;
    self->_listensForMetaDataChangeNotification = a3;
    v6 = [MEMORY[0x277CCA9A0] defaultCenter];
    v7 = v6;
    if (v4)
    {
      [v6 addObserver:self selector:sel__metaDataDidChange_ name:@"com.apple.WebBookmarks.MetaDataDidChangeNotification" object:0];
    }

    else
    {
      [v6 removeObserver:self name:@"com.apple.WebBookmarks.MetaDataDidChangeNotification" object:0];
    }
  }
}

uint64_t __60__WebBookmarkDeviceIdentifier__resumeMonitoringMetaDataFile__block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_272C20000, v2, OS_LOG_TYPE_DEFAULT, "Received a vnode event for bookmarks metadata file", v4, 2u);
  }

  return [*(a1 + 32) _createOrLoadMetaData];
}

- (void)_metaDataDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WebBookmarkDeviceIdentifier__metaDataDidChange___block_invoke;
  block[3] = &unk_279E751F0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __50__WebBookmarkDeviceIdentifier__metaDataDidChange___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_272C20000, v2, OS_LOG_TYPE_DEFAULT, "Received bookmarks metadata file change distributed notification", v4, 2u);
  }

  return [*(a1 + 32) _createOrLoadMetaData];
}

- (BOOL)encounteredErrorWhileObtainingUUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__WebBookmarkDeviceIdentifier_encounteredErrorWhileObtainingUUID__block_invoke;
  v5[3] = &unk_279E75260;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)stopObservingChanges
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WebBookmarkDeviceIdentifier_stopObservingChanges__block_invoke;
  block[3] = &unk_279E751F0;
  block[4] = self;
  dispatch_async(queue, block);
}

+ (void)clearDeviceIdentifierWithPlistURL:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionaryWithContentsOfURL:v5];
  [v6 removeObjectForKey:@"DeviceUUID"];
  [v6 writeToURL:v5 atomically:1];
  [a1 _postWebBookmarkMetaDataChangeDistributedNotification:v5];
}

+ (void)_postWebBookmarkMetaDataChangeDistributedNotification:(id)a3
{
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_DEFAULT, "Posting bookmarks metadata file change distributed notification", v5, 2u);
  }

  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 postNotificationName:@"com.apple.WebBookmarks.MetaDataDidChangeNotification" object:0];
}

@end