@interface NLPlaybackModel
- (BOOL)_hasWorkoutPlaylist;
- (NLPlaybackModel)init;
- (NLWorkoutPlaybackIntent)playbackIntent;
- (void)_handleMusicPinningSelectionsDidChange:(id)a3;
- (void)_musicPlaylistSettingsChangedWithPlaylistID:(id)a3;
- (void)_musicPreferencesMayHaveChanged;
- (void)_preparePlaylist;
- (void)_setupAutoplaySynchronously:(BOOL)a3;
- (void)controller:(id)a3 defersResponseReplacement:(id)a4;
- (void)dealloc;
- (void)initializeMusicWithAutoplay:(BOOL)a3 synchronously:(BOOL)a4;
- (void)ppt_setupMediaConfigurationFor:(id)a3 completionHandler:(id)a4;
- (void)prepareWorkoutPlaylistWithCompletionHandler:(id)a3;
- (void)resetPlaybackController;
- (void)resetPlaylistIfNeeded;
- (void)setActiveWorkout:(id)a3;
- (void)setActivityType:(id)a3;
- (void)startWorkoutPlaylistWithCompletionHandler:(id)a3;
- (void)stopWorkoutPlaylist;
@end

@implementation NLPlaybackModel

- (NLPlaybackModel)init
{
  v15 = a2;
  v16 = 0;
  v14.receiver = self;
  v14.super_class = NLPlaybackModel;
  v13 = [(NLPlaybackModel *)&v14 init];
  v16 = v13;
  objc_storeStrong(&v16, v13);
  if (v13)
  {
    if (_os_feature_enabled_impl())
    {
      v12 = objc_alloc_init(WOMediaPlaybackController);
      [(NLPlaybackModel *)v16 setMediaPlaybackController:?];
      MEMORY[0x277D82BD8](v12);
    }

    else
    {
      v9 = [(NLPlaybackModel *)v16 _currentPinnedPlaylistID];
      v8 = [(NLPlaybackModel *)v16 playbackIntent];
      [(NLWorkoutPlaybackIntent *)v8 setPlaylistID:v9];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      v2 = HKCreateSerialDispatchQueueWithQOSClass();
      serialQueue = v16->_serialQueue;
      v16->_serialQueue = v2;
      MEMORY[0x277D82BD8](serialQueue);
      v10 = objc_alloc_init(WOWorkoutPlaylistController);
      [(NLPlaybackModel *)v16 setWorkoutPlaylistController:?];
      *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
      v11 = [(NLPlaybackModel *)v16 workoutPlaylistController];
      [(WOWorkoutPlaylistController *)v11 setDelegate:v16];
      MEMORY[0x277D82BD8](v11);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v16, _handlePreferencesChangedCallback_0, *MEMORY[0x277D09610], 0, 0);
    }
  }

  v7 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  return v7;
}

- (BOOL)_hasWorkoutPlaylist
{
  v4 = [(NLPlaybackModel *)self playbackIntent];
  v2 = [(NLWorkoutPlaybackIntent *)v4 playlistID];
  v5 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:v6];
  MEMORY[0x277D82BD8](v3);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v6, *MEMORY[0x277D09610], 0);
  v4.receiver = v6;
  v4.super_class = NLPlaybackModel;
  [(NLPlaybackModel *)&v4 dealloc];
}

- (NLWorkoutPlaybackIntent)playbackIntent
{
  if (!self->_playbackIntent)
  {
    v2 = objc_alloc_init(NLWorkoutPlaybackIntent);
    playbackIntent = self->_playbackIntent;
    self->_playbackIntent = v2;
    MEMORY[0x277D82BD8](playbackIntent);
    [(NLWorkoutPlaybackIntent *)self->_playbackIntent setPlaybackModeShuffle:FIUIMusicIsPlaybackModeShuffle()];
  }

  v4 = self->_playbackIntent;

  return v4;
}

- (void)initializeMusicWithAutoplay:(BOOL)a3 synchronously:(BOOL)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  HKSessionTrackerAriadneTrigger();
  _HKInitializeLogging();
  location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NLPlaybackModel *)v18 playbackIntent];
    v4 = [(NLWorkoutPlaybackIntent *)v5 playlistID];
    __os_log_helper_16_2_3_4_0_4_0_8_64(v21, v16, v15, v4);
    _os_log_impl(&dword_20AEA4000, location, v13, "[workoutmusic] initializeMusicWithAutoplay: %d, synchronously: %d, playlist ID: %@", v21, 0x18u);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&location, 0);
  if ([(NLPlaybackModel *)v18 _hasWorkoutPlaylist]&& v16)
  {
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __61__NLPlaybackModel_initializeMusicWithAutoplay_synchronously___block_invoke;
    v10 = &unk_277D88868;
    v11 = MEMORY[0x277D82BE0](v18);
    v12 = v15;
    v20 = &initializeMusicWithAutoplay_synchronously__onceToken;
    v19 = 0;
    objc_storeStrong(&v19, &v6);
    if (*v20 != -1)
    {
      dispatch_once(v20, v19);
    }

    objc_storeStrong(&v19, 0);
    HKSessionTrackerAriadneTrigger();
    objc_storeStrong(&v11, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_setupAutoplaySynchronously:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = self;
  v13 = a2;
  v12 = a3;
  _HKInitializeLogging();
  location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v15, v12);
    _os_log_impl(&dword_20AEA4000, location, v10, "[workoutmusic] Setup: begin prewarming and fetching audio routes, synchronously: %d", v15, 8u);
  }

  objc_storeStrong(&location, 0);
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __47__NLPlaybackModel__setupAutoplaySynchronously___block_invoke;
  v7 = &unk_277D88890;
  v8 = MEMORY[0x277D82BE0](v14);
  v9 = _Block_copy(&v3);
  if (v12)
  {
    (*(v9 + 2))();
  }

  else
  {
    dispatch_async(v14->_serialQueue, v9);
  }

  v14->_hasSetupAutoplay = 1;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  *MEMORY[0x277D85DE8];
}

void __47__NLPlaybackModel__setupAutoplaySynchronously___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v16;
    __os_log_helper_16_0_0(v15);
    _os_log_impl(&dword_20AEA4000, log, type, "[workoutmusic] Setup: filtering media library avilable content groups", v15, 2u);
  }

  objc_storeStrong(location, 0);
  v5 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [v5 filterAvailableContentGroups:128 withOptions:0];
  MEMORY[0x277D82BD8](v5);
  _HKInitializeLogging();
  v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v14;
    v4 = v13;
    __os_log_helper_16_0_0(v12);
    _os_log_impl(&dword_20AEA4000, v3, v4, "[workoutmusic] Setup: preparing playlist", v12, 2u);
  }

  objc_storeStrong(&v14, 0);
  [a1[4] _preparePlaylist];
  _HKInitializeLogging();
  v11 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v1 = v11;
    v2 = v10;
    __os_log_helper_16_0_0(v9);
    _os_log_impl(&dword_20AEA4000, v1, v2, "[workoutmusic] Setup: complete", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
}

- (void)resetPlaylistIfNeeded
{
  v7 = self;
  location[1] = a2;
  if ([(NLPlaybackModel *)self _hasWorkoutPlaylist])
  {
    if (v7->_hasSetupAutoplay)
    {
      _HKInitializeLogging();
      location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v5 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
      {
        log = location[0];
        type = v5;
        __os_log_helper_16_0_0(v4);
        _os_log_impl(&dword_20AEA4000, log, type, "[workoutmusic] Reset playlist and clear now playing app.", v4, 2u);
      }

      objc_storeStrong(location, 0);
      [(NLPlaybackModel *)v7 _preparePlaylist];
    }

    else
    {
      [(NLPlaybackModel *)v7 _setupAutoplaySynchronously:1];
    }
  }
}

- (void)_preparePlaylist
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = self;
  location[1] = a2;
  if ([(NLPlaybackModel *)self _hasWorkoutPlaylist])
  {
    _HKInitializeLogging();
    v22 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NLPlaybackModel *)v26 playbackIntent];
      v8 = [(NLWorkoutPlaybackIntent *)v9 playlistID];
      __os_log_helper_16_2_1_8_64(v27, v8);
      _os_log_impl(&dword_20AEA4000, v22, v21, "[workoutmusic] Preparing playback from playlist %@...", v27, 0xCu);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
    }

    objc_storeStrong(&v22, 0);
    v4 = [(NLPlaybackModel *)v26 playbackIntent];
    v20 = [(NLWorkoutPlaybackIntent *)v4 mediaPlaybackCorePlaybackIntent];
    *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    [v20 setActionAfterQueueLoad:{0, v2}];
    v19 = objc_alloc_init(MEMORY[0x277D278F0]);
    [v19 setQualityOfService:25];
    v6 = [(NLPlaybackModel *)v26 workoutPlaylistController];
    v5 = [(WOWorkoutPlaylistController *)v6 playerPath];
    [v19 setPlayerPath:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    v7 = v19;
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __35__NLPlaybackModel__preparePlaylist__block_invoke;
    v16 = &unk_277D89348;
    v17 = MEMORY[0x277D82BE0](v26);
    v18 = MEMORY[0x277D82BE0](v20);
    v3 = [v7 performWithCompletion:&v12];
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_impl(&dword_20AEA4000, log, type, "[workoutmusic] not preparing playlist, workout music is not enabled", v23, 2u);
    }

    objc_storeStrong(location, 0);
  }

  *MEMORY[0x277D85DE8];
}

void __35__NLPlaybackModel__preparePlaylist__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21[1] = a1;
  if (v22)
  {
    _HKInitializeLogging();
    v21[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v24, v22);
      _os_log_error_impl(&dword_20AEA4000, v21[0], v20, "[workoutmusic] Finished preparing playback MPCPlayerRequest (error: %@)", v24, 0xCu);
    }

    objc_storeStrong(v21, 0);
    v19 = 1;
  }

  else
  {
    v8 = [location[0] tracklist];
    v9 = [v8 resetCommand];
    v16 = 0;
    v14 = 0;
    v12 = 0;
    if (v9)
    {
      v3 = MEMORY[0x277D82BE0](v9);
    }

    else
    {
      v7 = MEMORY[0x277D27900];
      v17 = [*(a1 + 32) workoutPlaylistController];
      v16 = 1;
      v15 = [v17 playerPath];
      v14 = 1;
      v13 = [v7 resetCommandForPlayerPath:? devices:?];
      v12 = 1;
      v3 = MEMORY[0x277D82BE0](v13);
    }

    v18 = v3;
    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    MEMORY[0x277D82BD8](v9);
    *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    v5 = MEMORY[0x277D278C0];
    v6 = [v18 replaceWithPlaybackIntent:{*(a1 + 40), v4}];
    [v5 performRequest:? options:? completion:?];
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v18, 0);
    v19 = 0;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __35__NLPlaybackModel__preparePlaylist__block_invoke_310(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  if (location[0])
  {
    _HKInitializeLogging();
    v10[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v12, location[0]);
      _os_log_error_impl(&dword_20AEA4000, v10[0], v9, "[workoutmusic] Finished preparing playback MPCPlayerChangeRequest (error: %@)", v12, 0xCu);
    }

    objc_storeStrong(v10, 0);
    v8 = 1;
  }

  else
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_impl(&dword_20AEA4000, v2, v3, "[workoutmusic] Finished preparing playback.", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)prepareWorkoutPlaylistWithCompletionHandler:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (_os_feature_enabled_impl())
  {
    v3 = [(NLPlaybackModel *)v5 mediaPlaybackController];
    [(WOMediaPlaybackController *)v3 prepareMediaPlaybackWithCompletionHandler:location[0]];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)startWorkoutPlaylistWithCompletionHandler:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (_os_feature_enabled_impl())
  {
    v4 = [(NLPlaybackModel *)v6 mediaPlaybackController];
    [(WOMediaPlaybackController *)v4 startMediaPlaybackWithCompletionHandler:location[0]];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v3 = [(NLPlaybackModel *)v6 workoutPlaylistController];
    [(WOWorkoutPlaylistController *)v3 startWorkoutPlaylistWithCompletionHandler:location[0]];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)stopWorkoutPlaylist
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(NLPlaybackModel *)self mediaPlaybackController];
    [(WOMediaPlaybackController *)v3 stopMediaPlaybackWithCompletionHandler:&__block_literal_global_314];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    v2 = [(NLPlaybackModel *)self workoutPlaylistController];
    [(WOWorkoutPlaylistController *)v2 stopWorkoutPlaylistWithCompletionHandler:&__block_literal_global_316];
    MEMORY[0x277D82BD8](v2);
  }
}

void __38__NLPlaybackModel_stopWorkoutPlaylist__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

void __38__NLPlaybackModel_stopWorkoutPlaylist__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

- (void)resetPlaybackController
{
  v2 = [(NLPlaybackModel *)self mediaPlaybackController];
  [(WOMediaPlaybackController *)v2 resetPlaybackControllerWithCompletionHandler:&__block_literal_global_318];
  MEMORY[0x277D82BD8](v2);
}

- (void)setActivityType:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(NLPlaybackModel *)v5 mediaPlaybackController];
  [(WOMediaPlaybackController *)v3 setActivityType:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)setActiveWorkout:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(NLPlaybackModel *)v5 mediaPlaybackController];
  [(WOMediaPlaybackController *)v3 setActiveWorkout:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)_handleMusicPinningSelectionsDidChange:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLPlaybackModel *)v4 _musicPreferencesMayHaveChanged];
  objc_storeStrong(location, 0);
}

- (void)_musicPreferencesMayHaveChanged
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = self;
  v10[1] = a2;
  v3 = [(NLPlaybackModel *)self playbackIntent];
  v10[0] = [(NLWorkoutPlaybackIntent *)v3 playlistID];
  location = [(NLPlaybackModel *)v11 _currentPinnedPlaylistID];
  v5 = [(NLPlaybackModel *)v11 playbackIntent];
  v4 = [(NLWorkoutPlaybackIntent *)v5 isPlaybackModeShuffle];
  v6 = v4 != FIUIMusicIsPlaybackModeShuffle();
  MEMORY[0x277D82BD8](v5);
  v8 = v6;
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    IsPlaybackModeShuffle = FIUIMusicIsPlaybackModeShuffle();
    __os_log_helper_16_2_4_8_64_8_64_4_0_4_0(v12, v10[0], location, IsPlaybackModeShuffle, v8);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[workoutmusic] Workout playlist may have changed. Old ID: %@, new ID: %@, shuffle mode: %{BOOL}d shuffle_mode_changed=%{BOOL}d", v12, 0x22u);
  }

  objc_storeStrong(&oslog, 0);
  if (v10[0] && !location || ([v10[0] isEqualToNumber:location] & 1) == 0 || v8)
  {
    [(NLPlaybackModel *)v11 _musicPlaylistSettingsChangedWithPlaylistID:location];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v10, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_musicPlaylistSettingsChangedWithPlaylistID:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = location[0];
  v5 = [(NLPlaybackModel *)v9 playbackIntent];
  [(NLWorkoutPlaybackIntent *)v5 setPlaylistID:v4];
  MEMORY[0x277D82BD8](v5);
  IsPlaybackModeShuffle = FIUIMusicIsPlaybackModeShuffle();
  v7 = [(NLPlaybackModel *)v9 playbackIntent];
  [(NLWorkoutPlaybackIntent *)v7 setPlaybackModeShuffle:IsPlaybackModeShuffle];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (location[0])
  {
    if (v9->_hasSetupAutoplay)
    {
      [(NLPlaybackModel *)v9 _preparePlaylist];
    }

    else
    {
      [(NLPlaybackModel *)v9 _setupAutoplaySynchronously:1, v3];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)controller:(id)a3 defersResponseReplacement:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __56__NLPlaybackModel_controller_defersResponseReplacement___block_invoke;
  v12 = &unk_277D89370;
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)ppt_setupMediaConfigurationFor:(id)a3 completionHandler:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  if (_os_feature_enabled_impl())
  {
    v4 = [(NLPlaybackModel *)v8 mediaPlaybackController];
    [(WOMediaPlaybackController *)v4 ppt_setupMediaConfigurationFor:location[0] completionHandler:v6];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end