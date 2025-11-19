@interface TLAlertQueuePlayerAnalyticsRecorder
+ (TLAlertQueuePlayerAnalyticsRecorder)sharedRecorder;
- (id)_init;
- (void)_beginMonitoringDisplayLayout;
- (void)_updateWithDisplayLayout:(id)a3;
- (void)dealloc;
- (void)recordAnalytics:(id)a3;
@end

@implementation TLAlertQueuePlayerAnalyticsRecorder

+ (TLAlertQueuePlayerAnalyticsRecorder)sharedRecorder
{
  if (sharedRecorder__TLAlertQueuePlayerAnalyticsRecorderSharedInstanceOnceToken != -1)
  {
    +[TLAlertQueuePlayerAnalyticsRecorder sharedRecorder];
  }

  v3 = sharedRecorder__TLAlertQueuePlayerAnalyticsRecorderSharedInstance;

  return v3;
}

uint64_t __53__TLAlertQueuePlayerAnalyticsRecorder_sharedRecorder__block_invoke()
{
  sharedRecorder__TLAlertQueuePlayerAnalyticsRecorderSharedInstance = [[TLAlertQueuePlayerAnalyticsRecorder alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = TLAlertQueuePlayerAnalyticsRecorder;
  v2 = [(TLAlertQueuePlayerAnalyticsRecorder *)&v6 init];
  if (v2)
  {
    v3 = +[TLAudioQueue sharedAudioQueue];
    audioQueue = v2->_audioQueue;
    v2->_audioQueue = v3;

    v2->_isDisplayInStandByMode = 0;
    [(TLAlertQueuePlayerAnalyticsRecorder *)v2 _beginMonitoringDisplayLayout];
  }

  return v2;
}

- (void)dealloc
{
  audioQueue = self->_audioQueue;
  self->_audioQueue = 0;
  v4 = audioQueue;

  [(TLAudioQueue *)v4 performSynchronousTaskWithBlock:&__block_literal_global_3];
  v5.receiver = self;
  v5.super_class = TLAlertQueuePlayerAnalyticsRecorder;
  [(TLAlertQueuePlayerAnalyticsRecorder *)&v5 dealloc];
}

- (void)recordAnalytics:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v5 = TLLogPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v39 = self;
    v40 = 2114;
    v41 = v4;
    _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Recording analytics: %{public}@", buf, 0x16u);
  }

  v36[0] = @"alertType";
  v35 = NSStringFromTLAlertType([v4 alertType]);
  v37[0] = v35;
  v36[1] = @"toneIdentifier";
  v34 = [v4 toneIdentifierForAnalytics];
  v37[1] = v34;
  v36[2] = @"toneKind";
  v33 = [v4 toneKindForAnalytics];
  v37[2] = v33;
  v36[3] = @"userVolume";
  v6 = MEMORY[0x1E696AD98];
  [v4 userVolume];
  v32 = [v6 numberWithFloat:?];
  v37[3] = v32;
  v36[4] = @"toneWasAttenuated";
  v31 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "didAttenuatePlayback")}];
  v37[4] = v31;
  v36[5] = @"timeToAttenuate";
  v7 = MEMORY[0x1E696AD98];
  v8 = [v4 didAttenuatePlayback];
  v9 = 0.0;
  if (v8)
  {
    [v4 attenuationTime];
    v11 = v10;
    [v4 startTime];
    v9 = v11 - v12;
  }

  v13 = [v7 numberWithDouble:v9];
  v37[5] = v13;
  v36[6] = @"timeToStopAlert";
  v14 = MEMORY[0x1E696AD98];
  [v4 stopTime];
  v16 = v15;
  [v4 startTime];
  v18 = [v14 numberWithDouble:v16 - v17];
  v37[6] = v18;
  v36[7] = @"isDisplayInStandByMode";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDisplayInStandByMode];
  v37[7] = v19;
  v36[8] = @"deviceChargingOnToneStart";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "wasDeviceChargingOnStart")}];
  v37[8] = v20;
  v36[9] = @"deviceChargingOnToneStop";
  v30 = self;
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "wasDeviceChargingOnStop")}];
  v37[9] = v21;
  v36[10] = @"deviceHasFaceID";
  v22 = MEMORY[0x1E696AD98];
  v23 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  v24 = [v22 numberWithBool:{objc_msgSend(v23, "hasFaceIDCapability")}];
  v37[10] = v24;
  v36[11] = @"deviceHasAttentionAwarenessEnabled";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isAttentionAwarenessSupportEnabled")}];
  v37[11] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:12];

  v27 = [objc_alloc(MEMORY[0x1E698D470]) initWithReporterID:{objc_msgSend(v4, "reporterID")}];
  [v27 sendMessage:v26 category:4 type:2];
  v28 = TLLogPlayback();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v39 = v30;
    v40 = 2114;
    v41 = v26;
    _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: Did send analytics message: %{public}@", buf, 0x16u);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_beginMonitoringDisplayLayout
{
  v3 = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
  [v3 setNeedsUserInteractivePriority:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__TLAlertQueuePlayerAnalyticsRecorder__beginMonitoringDisplayLayout__block_invoke;
  v6[3] = &unk_1E8579800;
  v6[4] = self;
  [v3 setTransitionHandler:v6];
  v4 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v3];
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = v4;
}

void __68__TLAlertQueuePlayerAnalyticsRecorder__beginMonitoringDisplayLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__TLAlertQueuePlayerAnalyticsRecorder__beginMonitoringDisplayLayout__block_invoke_2;
    v8[3] = &unk_1E8578900;
    v8[4] = v6;
    v9 = v4;
    [v7 performTaskWithBlock:v8];
  }
}

- (void)_updateWithDisplayLayout:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  [v4 elements];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = *MEMORY[0x1E69D4418];
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) identifier];
        v12 = [v11 isEqualToString:v9];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  if (self->_isDisplayInStandByMode != v13 || !self->_hasInitializedDisplayInStandByModeFlag)
  {
    self->_isDisplayInStandByMode = v13;
    self->_hasInitializedDisplayInStandByModeFlag = 1;
    v14 = TLLogPlayback();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      isDisplayInStandByMode = self->_isDisplayInStandByMode;
      *buf = 138543618;
      v22 = self;
      v23 = 1024;
      v24 = isDisplayInStandByMode;
      _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: isDisplayInStandByMode = %{BOOL}u", buf, 0x12u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end