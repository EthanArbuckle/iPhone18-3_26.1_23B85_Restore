@interface STBackgroundActivityManager
+ (id)sharedInstance;
- (NSSet)activeBackgroundActivities;
- (STBackgroundActivityManager)initWithDefaults:(id)a3;
- (id)_allValidBackgroundActivitiesInPrecedenceScope:(unint64_t)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)resolvedBackgroundActivityFromBackgroundActivities:(id)a3 inPrecedenceScope:(unint64_t)a4;
- (id)succinctDescription;
- (id)validBackgroundActivitiesForBackgroundActivities:(id)a3;
- (id)visualDescriptorForBackgroundActivityWithIdentifier:(id)a3;
- (void)_forceResetBackgroundActivitiesForClients;
- (void)_registerForInternalDefaultsChanges;
- (void)_updateBackgroundActivitiesForClients;
- (void)_updateSupportedBackgroundActivitiesAndVisualDescriptorsFromBundleRecords;
- (void)addActiveBackgroundActivities:(id)a3;
- (void)addBackgroundActivityClient:(id)a3;
- (void)recordBundlesChangedForBundleManager:(id)a3;
- (void)removeActiveBackgroundActivities:(id)a3;
@end

@implementation STBackgroundActivityManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__STBackgroundActivityManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_19 != -1)
  {
    dispatch_once(&_MergedGlobals_19, block);
  }

  v2 = qword_1ED7F5D98;

  return v2;
}

- (NSSet)activeBackgroundActivities
{
  v2 = [(NSMutableSet *)self->_activeBackgroundActivities copy];

  return v2;
}

- (void)_updateBackgroundActivitiesForClients
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(STBackgroundActivityManager *)self activeBackgroundActivities];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_subscribedClients;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) activeBackgroundActivitiesDidUpdate:{v3, v10}];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __45__STBackgroundActivityManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = +[STSystemStatusDefaults standardDefaults];
  v2 = [v1 initWithDefaults:v4];
  v3 = qword_1ED7F5D98;
  qword_1ED7F5D98 = v2;
}

- (STBackgroundActivityManager)initWithDefaults:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = STBackgroundActivityManager;
  v6 = [(STBackgroundActivityManager *)&v14 init];
  if (v6)
  {
    v7 = [[STBundleManager alloc] initWithBundleRecordClass:objc_opt_class()];
    bundleManager = v6->_bundleManager;
    v6->_bundleManager = v7;

    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    subscribedClients = v6->_subscribedClients;
    v6->_subscribedClients = v9;

    v11 = [MEMORY[0x1E695DFA8] set];
    activeBackgroundActivities = v6->_activeBackgroundActivities;
    v6->_activeBackgroundActivities = v11;

    objc_storeStrong(&v6->_systemStatusDefaults, a3);
    [(STBackgroundActivityManager *)v6 _registerForInternalDefaultsChanges];
    [(STBundleManager *)v6->_bundleManager addObserver:v6];
    [(STBackgroundActivityManager *)v6 _updateSupportedBackgroundActivitiesAndVisualDescriptorsFromBundleRecords];
  }

  return v6;
}

- (void)addActiveBackgroundActivities:(id)a3
{
  [(NSMutableSet *)self->_activeBackgroundActivities unionSet:a3];

  [(STBackgroundActivityManager *)self _updateBackgroundActivitiesForClients];
}

- (void)removeActiveBackgroundActivities:(id)a3
{
  [(NSMutableSet *)self->_activeBackgroundActivities minusSet:a3];

  [(STBackgroundActivityManager *)self _updateBackgroundActivitiesForClients];
}

- (void)_forceResetBackgroundActivitiesForClients
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(STBackgroundActivityManager *)self activeBackgroundActivities];
  v4 = [MEMORY[0x1E695DFD8] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_subscribedClients;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 activeBackgroundActivitiesDidUpdate:{v4, v12}];
        [v10 activeBackgroundActivitiesDidUpdate:v3];
      }

      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addBackgroundActivityClient:(id)a3
{
  subscribedClients = self->_subscribedClients;
  v5 = a3;
  [(NSHashTable *)subscribedClients addObject:v5];
  v6 = [(STBackgroundActivityManager *)self activeBackgroundActivities];
  [v5 activeBackgroundActivitiesDidUpdate:v6];
}

- (id)_allValidBackgroundActivitiesInPrecedenceScope:(unint64_t)a3
{
  if (qword_1ED7F5DB8 != -1)
  {
    dispatch_once(&qword_1ED7F5DB8, &__block_literal_global_24);
  }

  v4 = &qword_1ED7F5DA8;
  if (a3 != 1)
  {
    v4 = &qword_1ED7F5DB0;
  }

  v5 = *v4;

  return v5;
}

void __78__STBackgroundActivityManager__allValidBackgroundActivitiesInPrecedenceScope___block_invoke()
{
  v10[35] = *MEMORY[0x1E69E9840];
  v10[0] = @"com.apple.systemstatus.background-activity.SatelliteSOS";
  v10[1] = @"com.apple.systemstatus.background-activity.SatelliteSOSDisconnected";
  v10[2] = @"com.apple.systemstatus.background-activity.Sysdiagnose";
  v10[3] = @"com.apple.systemstatus.background-activity.ScreenReplayRecording";
  v10[4] = @"com.apple.systemstatus.background-activity.VideoConferenceRinging";
  v10[5] = @"com.apple.systemstatus.background-activity.CallRinging";
  v10[6] = @"com.apple.systemstatus.background-activity.InVideoConference";
  v10[7] = @"com.apple.systemstatus.background-activity.InCall";
  v10[8] = @"com.apple.systemstatus.background-activity.CallRecording";
  v10[9] = @"com.apple.systemstatus.background-activity.VideoConferenceHandoff";
  v10[10] = @"com.apple.systemstatus.background-activity.CallHandoff";
  v10[11] = @"com.apple.systemstatus.background-activity.CallScreening";
  v10[12] = @"com.apple.systemstatus.background-activity.ActivePushToTalkCall";
  v10[13] = @"com.apple.systemstatus.background-activity.DeveloperTools";
  v10[14] = @"com.apple.systemstatus.background-activity.AirPrint";
  v10[15] = @"com.apple.systemstatus.background-activity.Tethering";
  v10[16] = @"com.apple.systemstatus.background-activity.guestpass";
  v10[17] = @"com.apple.systemstatus.background-activity.SharePlay";
  v10[18] = @"com.apple.systemstatus.background-activity.SharePlayScreenSharing";
  v10[19] = @"com.apple.systemstatus.background-activity.ScreenSharing";
  v10[20] = @"com.apple.systemstatus.background-activity.VideoOut";
  v10[21] = @"com.apple.systemstatus.background-activity.SharePlayInactive";
  v10[22] = @"com.apple.systemstatus.background-activity.CellularSOS";
  v10[23] = @"com.apple.systemstatus.background-activity.WebRTCCapture";
  v10[24] = @"com.apple.systemstatus.background-activity.WebRTCAudioCapture";
  v10[25] = @"com.apple.systemstatus.background-activity.FullScreenWebRTCCapture";
  v10[26] = @"com.apple.systemstatus.background-activity.FullScreenWebRTCAudioCapture";
  v10[27] = @"com.apple.systemstatus.background-activity.Recording";
  v10[28] = @"com.apple.systemstatus.background-activity.workout";
  v10[29] = @"com.apple.systemstatus.background-activity.BackgroundLocation";
  v10[30] = @"com.apple.systemstatus.background-activity.NearbyInteractions";
  v10[31] = @"com.apple.systemstatus.background-activity.Playgrounds";
  v10[32] = @"com.apple.systemstatus.background-activity.IdlePushToTalkCall";
  v10[33] = @"com.apple.systemstatus.background-activity.replaykit.callrecording.recording";
  v10[34] = @"com.apple.systemstatus.background-activity.replaykit.callrecording.ready";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:35];
  v9[0] = @"com.apple.systemstatus.background-activity.SatelliteSOS";
  v9[1] = @"com.apple.systemstatus.background-activity.SatelliteSOSDisconnected";
  v9[6] = @"com.apple.systemstatus.background-activity.VideoConferenceRinging";
  v9[7] = @"com.apple.systemstatus.background-activity.CallRinging";
  v9[12] = @"com.apple.systemstatus.background-activity.InVideoConference";
  v9[13] = @"com.apple.systemstatus.background-activity.InCall";
  v9[2] = @"com.apple.systemstatus.background-activity.Diagnostics";
  v9[3] = @"com.apple.systemstatus.background-activity.Sysdiagnose";
  v9[4] = @"com.apple.systemstatus.background-activity.ScreenSharingServer";
  v9[5] = @"com.apple.systemstatus.background-activity.ScreenReplayRecording";
  v9[8] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-video";
  v9[9] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-audio";
  v9[10] = @"com.apple.systemstatus.background-activity.continuitycapture.mic-only";
  v9[11] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-none";
  v9[14] = @"com.apple.systemstatus.background-activity.CallRecording";
  v9[15] = @"com.apple.systemstatus.background-activity.ActivePushToTalkCall";
  v9[16] = @"com.apple.systemstatus.background-activity.CallHandoff";
  v9[17] = @"com.apple.systemstatus.background-activity.VideoConferenceHandoff";
  v9[18] = @"com.apple.systemstatus.background-activity.CallScreening";
  v9[19] = @"com.apple.systemstatus.background-activity.Navigation";
  v9[20] = @"com.apple.systemstatus.background-activity.Navigation";
  v9[21] = @"com.apple.systemstatus.background-activity.CellularSOS";
  v9[22] = @"com.apple.systemstatus.background-activity.DeveloperTools";
  v9[23] = @"com.apple.systemstatus.background-activity.AirPrint";
  v9[24] = @"com.apple.systemstatus.background-activity.WebRTCCapture";
  v9[25] = @"com.apple.systemstatus.background-activity.WebRTCAudioCapture";
  v9[26] = @"com.apple.systemstatus.background-activity.FullScreenWebRTCCapture";
  v9[27] = @"com.apple.systemstatus.background-activity.FullScreenWebRTCAudioCapture";
  v9[28] = @"com.apple.systemstatus.background-activity.Recording";
  v9[29] = @"com.apple.systemstatus.background-activity.HearingAidRecording";
  v9[30] = @"com.apple.systemstatus.background-activity.LoggingCapture";
  v9[31] = @"com.apple.systemstatus.background-activity.Tethering";
  v9[32] = @"com.apple.systemstatus.background-activity.guestpass";
  v9[33] = @"com.apple.systemstatus.background-activity.SharePlay";
  v9[34] = @"com.apple.systemstatus.background-activity.SharePlayScreenSharing";
  v9[35] = @"com.apple.systemstatus.background-activity.SharePlayInactive";
  v9[36] = @"com.apple.systemstatus.background-activity.ScreenSharing";
  v9[37] = @"com.apple.systemstatus.background-activity.VideoOut";
  v9[38] = @"com.apple.systemstatus.background-activity.CarPlay";
  v9[39] = @"com.apple.mediaremoted.background-activity.routed-audio-pulse";
  v9[40] = @"com.apple.mediaremoted.background-activity.routed-video";
  v9[41] = @"com.apple.mediaremoted.background-activity.routed-video-pulse";
  v9[42] = @"com.apple.mediaremoted.background-activity.routed-audio";
  v9[43] = @"com.apple.systemstatus.background-activity.AutoAirPlayReady";
  v9[44] = @"com.apple.systemstatus.background-activity.AutoAirPlayPlaying";
  v9[45] = @"com.apple.systemstatus.background-activity.AssistantEyesFree";
  v9[46] = @"com.apple.systemstatus.background-activity.workout";
  v9[47] = @"com.apple.systemstatus.background-activity.InWorkout";
  v9[48] = @"com.apple.systemstatus.background-activity.BackgroundLocation";
  v9[49] = @"com.apple.systemstatus.background-activity.NearbyInteractions";
  v9[50] = @"com.apple.systemstatus.background-activity.Playgrounds";
  v9[51] = @"com.apple.systemstatus.background-activity.IdlePushToTalkCall";
  v9[52] = @"com.apple.activityprogress.backgroundui";
  v9[53] = @"com.apple.systemstatus.background-activity.replaykit.callrecording.recording";
  v9[54] = @"com.apple.systemstatus.background-activity.replaykit.callrecording.ready";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:55];
  v1 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v8];
  v2 = qword_1ED7F5DA8;
  qword_1ED7F5DA8 = v1;

  v3 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v0];
  v4 = qword_1ED7F5DB0;
  qword_1ED7F5DB0 = v3;

  v5 = [qword_1ED7F5DB0 copy];
  v6 = qword_1ED7F5DA0;
  qword_1ED7F5DA0 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (id)validBackgroundActivitiesForBackgroundActivities:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithSet:v4];
  v6 = [(STBackgroundActivityManager *)self _allValidBackgroundActivitiesInPrecedenceScope:999];
  v7 = [v6 set];
  [v5 intersectSet:v7];

  if (self->_allowAllBackgroundActivities)
  {
    [v5 unionSet:v4];
  }

  return v5;
}

- (id)resolvedBackgroundActivityFromBackgroundActivities:(id)a3 inPrecedenceScope:(unint64_t)a4
{
  v6 = a3;
  v7 = [(STBackgroundActivityManager *)self _allValidBackgroundActivitiesInPrecedenceScope:a4];
  v8 = [v7 mutableCopy];
  [v8 intersectSet:v6];
  if (self->_allowAllBackgroundActivities)
  {
    v9 = [MEMORY[0x1E695DFA0] orderedSetWithSet:v6];
    v10 = [(STBackgroundActivityManager *)self _allValidBackgroundActivitiesInPrecedenceScope:999];
    [v9 minusOrderedSet:v10];

    if ([v9 count])
    {
      v11 = [v9 firstObject];

      goto LABEL_6;
    }
  }

  v11 = [v8 firstObject];
LABEL_6:

  return v11;
}

- (id)visualDescriptorForBackgroundActivityWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_visualDescriptors objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [STBackgroundActivityVisualDescriptor visualDescriptorForBackgroundActivityWithIdentifier:v4];
  }

  v8 = v7;

  return v8;
}

- (void)_registerForInternalDefaultsChanges
{
  if (!self->_internalDefaultsObserver)
  {
    self->_allowAllBackgroundActivities = [(STSystemStatusDefaults *)self->_systemStatusDefaults shouldEnableUnknownBackgroundActivities];
    objc_initWeak(&location, self);
    systemStatusDefaults = self->_systemStatusDefaults;
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__STBackgroundActivityManager__registerForInternalDefaultsChanges__block_invoke;
    v8[3] = &unk_1E85DDD78;
    objc_copyWeak(&v9, &location);
    v6 = [(BSAbstractDefaultDomain *)systemStatusDefaults observeDefault:@"shouldEnableUnknownBackgroundActivities" onQueue:v4 withBlock:v8];
    internalDefaultsObserver = self->_internalDefaultsObserver;
    self->_internalDefaultsObserver = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

uint64_t __66__STBackgroundActivityManager__registerForInternalDefaultsChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    WeakRetained = MEMORY[0x1E12742A0]("[STBackgroundActivityManager _registerForInternalDefaultsChanges]_block_invoke");
    if (WeakRetained)
    {
      WeakRetained = [v4[5] shouldEnableUnknownBackgroundActivities];
    }

    v2 = v4;
    if (*(v4 + 56) != WeakRetained)
    {
      *(v4 + 56) = WeakRetained;
      WeakRetained = [v4 _forceResetBackgroundActivitiesForClients];
      v2 = v4;
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v2);
}

- (void)recordBundlesChangedForBundleManager:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if (self->_bundleManager == v4)
  {
    objc_copyWeak(&v5, &location);
    BSDispatchMain();
    objc_destroyWeak(&v5);
  }

  objc_destroyWeak(&location);
}

void __68__STBackgroundActivityManager_recordBundlesChangedForBundleManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSupportedBackgroundActivitiesAndVisualDescriptorsFromBundleRecords];
}

- (void)_updateSupportedBackgroundActivitiesAndVisualDescriptorsFromBundleRecords
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(STBundleManager *)self->_bundleManager recordIdentifiers];
  v5 = STSystemStatusLogBundleLoading();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = v4;
    _os_log_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_DEFAULT, "Bundle manager reports background activity bundle identifiers changed: %{public}@", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    v9 = 0x1E85DD000uLL;
    v26 = *v36;
    v27 = self;
    do
    {
      v10 = 0;
      v28 = v7;
      do
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        v12 = [(STBundleManager *)self->_bundleManager bundleRecordForRecordIdentifier:v11];
        v13 = *(v9 + 1888);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v10;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v14 = [v12 backgroundActivityIdentifiers];
          v15 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v32;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v32 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v31 + 1) + 8 * i);
                v20 = [v12 visualDescriptorForBackgroundActivityWithIdentifier:v19];
                if (v20)
                {
                  [(NSDictionary *)v3 setValue:v20 forKey:v19];
                  v21 = STSystemStatusLogBundleLoading();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543618;
                    v40 = v19;
                    v41 = 2114;
                    v42 = v20;
                    _os_log_debug_impl(&dword_1DA9C2000, v21, OS_LOG_TYPE_DEBUG, "Background activity identifier %{public}@ associated with visual descriptor %{public}@", buf, 0x16u);
                  }
                }

                else
                {
                  v21 = STSystemStatusLogBundleLoading();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138477827;
                    v40 = v19;
                    _os_log_error_impl(&dword_1DA9C2000, v21, OS_LOG_TYPE_ERROR, "No valid visual descriptor for background activity '%{private}@'", buf, 0xCu);
                  }
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
            }

            while (v16);
            v8 = v26;
            self = v27;
            v9 = 0x1E85DD000;
            v7 = v28;
          }

          v10 = v30;
        }

        else
        {
          v14 = STSystemStatusLogBundleLoading();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v40 = v11;
            _os_log_error_impl(&dword_1DA9C2000, v14, OS_LOG_TYPE_ERROR, "Bundle %{private}@ is of unexpected type, expected 'BackgroundActivities'", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v7);
  }

  visualDescriptors = self->_visualDescriptors;
  v23 = BSEqualObjects();
  v24 = self->_visualDescriptors;
  self->_visualDescriptors = v3;

  if ((v23 & 1) == 0)
  {
    [(STBackgroundActivityManager *)self _forceResetBackgroundActivitiesForClients];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)succinctDescription
{
  v2 = [(STBackgroundActivityManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STBackgroundActivityManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STBackgroundActivityManager *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

@end