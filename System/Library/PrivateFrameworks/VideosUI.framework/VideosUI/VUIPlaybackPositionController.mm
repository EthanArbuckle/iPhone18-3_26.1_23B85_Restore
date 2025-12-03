@interface VUIPlaybackPositionController
+ (id)sharedInstance;
- (id)_init;
- (void)_onQueue_beginCapturingEvents;
- (void)_onQueue_endCapturingEvents;
- (void)_onQueue_updateEntityWithPlaybackPositionInfo:(id)info forTrack:(id)track;
- (void)beginCapturingEvents;
- (void)endCapturingEvents;
- (void)persistPlaybackPositionInfo:(id)info forTrack:(id)track;
@end

@implementation VUIPlaybackPositionController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[VUIPlaybackPositionController sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

void __47__VUIPlaybackPositionController_sharedInstance__block_invoke()
{
  v0 = [[VUIPlaybackPositionController alloc] _init];
  v1 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v0;
}

- (void)beginCapturingEvents
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VUIPlaybackPositionController_beginCapturingEvents__block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)endCapturingEvents
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VUIPlaybackPositionController_endCapturingEvents__block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)persistPlaybackPositionInfo:(id)info forTrack:(id)track
{
  trackCopy = track;
  v7 = [info copy];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__VUIPlaybackPositionController_persistPlaybackPositionInfo_forTrack___block_invoke;
  block[3] = &unk_1E872E008;
  block[4] = self;
  v12 = v7;
  v13 = trackCopy;
  v9 = trackCopy;
  v10 = v7;
  dispatch_async(queue, block);
}

- (id)_init
{
  v12.receiver = self;
  v12.super_class = VUIPlaybackPositionController;
  v2 = [(VUIPlaybackPositionController *)&v12 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.tv", "PlaybackPosition");
    logObject = v2->_logObject;
    v2->_logObject = v3;

    autoupdatingSharedLibraryPath = [MEMORY[0x1E69B34E0] autoupdatingSharedLibraryPath];
    v6 = [MEMORY[0x1E69D4868] domainForSyncingMusicLibraryWithLibraryPath:autoupdatingSharedLibraryPath];
    v7 = [MEMORY[0x1E69D4880] serviceForSyncDomain:v6];
    syncService = v2->_syncService;
    v2->_syncService = v7;

    v9 = dispatch_queue_create("com.apple.tv.playbackPosition", 0);
    queue = v2->_queue;
    v2->_queue = v9;
  }

  return v2;
}

- (void)_onQueue_beginCapturingEvents
{
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEBUG))
  {
    [(VUIPlaybackPositionController *)logObject _onQueue_beginCapturingEvents];
  }

  [(SBCPlaybackPositionSyncService *)self->_syncService beginAccessingPlaybackPositionEntities];
  [(VUIPlaybackPositionController *)self setRunning:1];
}

- (void)_onQueue_endCapturingEvents
{
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEBUG))
  {
    [(VUIPlaybackPositionController *)logObject _onQueue_endCapturingEvents];
  }

  [(VUIPlaybackPositionController *)self setRunning:0];
  [(SBCPlaybackPositionSyncService *)self->_syncService endAccessingPlaybackPositionEntities];
}

- (void)_onQueue_updateEntityWithPlaybackPositionInfo:(id)info forTrack:(id)track
{
  infoCopy = info;
  trackCopy = track;
  if (![(VUIPlaybackPositionController *)self isRunning])
  {
    [(VUIPlaybackPositionController *)self _onQueue_beginCapturingEvents];
  }

  v8 = [trackCopy valueForProperty:*MEMORY[0x1E69B3280]];
  v9 = objc_alloc(MEMORY[0x1E69D4870]);
  playbackPositionDomain = [(SBCPlaybackPositionSyncService *)self->_syncService playbackPositionDomain];
  v11 = [v9 initWithPlaybackPositionDomain:playbackPositionDomain ubiquitousIdentifier:v8 foreignDatabaseEntityID:{objc_msgSend(trackCopy, "persistentID")}];

  bookmarkTime = [infoCopy bookmarkTime];

  if (bookmarkTime)
  {
    bookmarkTime2 = [infoCopy bookmarkTime];
    [bookmarkTime2 doubleValue];
    v15 = v14;
  }

  else
  {
    bookmarkTime2 = [trackCopy valueForProperty:*MEMORY[0x1E69B2E20]];
    [bookmarkTime2 doubleValue];
    v15 = v16 / 1000.0;
  }

  playCount = [infoCopy playCount];

  if (playCount)
  {
    [infoCopy playCount];
  }

  else
  {
    [trackCopy valueForProperty:*MEMORY[0x1E69B3158]];
  }
  v18 = ;
  unsignedIntegerValue = [v18 unsignedIntegerValue];

  hasBeenPlayed = [infoCopy hasBeenPlayed];

  if (hasBeenPlayed)
  {
    [infoCopy hasBeenPlayed];
  }

  else
  {
    [trackCopy valueForProperty:*MEMORY[0x1E69B3000]];
  }
  v21 = ;
  bOOLValue = [v21 BOOLValue];

  [v11 setBookmarkTime:v15];
  [v11 setUserPlayCount:unsignedIntegerValue];
  [v11 setHasBeenPlayed:bOOLValue];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v11 setBookmarkTimestamp:?];
  v23 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  syncService = self->_syncService;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88__VUIPlaybackPositionController__onQueue_updateEntityWithPlaybackPositionInfo_forTrack___block_invoke;
  v27[3] = &unk_1E872F328;
  objc_copyWeak(&v29, &location);
  v25 = v23;
  v28 = v25;
  [(SBCPlaybackPositionSyncService *)syncService persistPlaybackPositionEntity:v11 isCheckpoint:0 completionBlock:v27];
  v26 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v25, v26);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __88__VUIPlaybackPositionController__onQueue_updateEntityWithPlaybackPositionInfo_forTrack___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __88__VUIPlaybackPositionController__onQueue_updateEntityWithPlaybackPositionInfo_forTrack___block_invoke_cold_1(a2, v6);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __88__VUIPlaybackPositionController__onQueue_updateEntityWithPlaybackPositionInfo_forTrack___block_invoke_cold_1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_1E323F000, a2, OS_LOG_TYPE_DEBUG, "Updated bookmark: %d", v2, 8u);
}

@end