@interface PXAudioPlayer
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (NSString)description;
- (PXAudioPlayer)init;
- (PXAudioPlayer)initWithName:(id)a3;
- (PXAudioPlayerDelegate)audioSessionDelegate;
- (PXAudioSession)currentAudioSession;
- (id)AVAudioSessionForAudioSession:(id)a3;
- (id)_createAudioSessionForAsset:(id)a3 startTime:(id *)a4;
- (id)_sessionsQueue_generateCurrentTimeRecord;
- (id)lcdStringForSize:(CGSize)a3;
- (id)windowSceneID;
- (void)_handleCurrentTimeRecordUpdateTimer;
- (void)_invalidateCurrentSessionState;
- (void)_invalidateCurrentTimeRecord;
- (void)_invalidateCurrentTimeRecordUpdateTimer;
- (void)_invalidateState;
- (void)_sessionsQueue_handleOutgoingSession:(id)a3;
- (void)_sessionsQueue_updateCurrentSessionStateWithDesiredPlayState:(int64_t)a3;
- (void)_sessionsQueue_updateCurrentTimeRecord;
- (void)_sessionsQueue_updateState;
- (void)_update;
- (void)_updateCurrentSessionState;
- (void)_updateCurrentTimeRecord;
- (void)_updateCurrentTimeRecordUpdateTimer;
- (void)_updateState;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)pause;
- (void)performChanges:(id)a3;
- (void)playFromStartTime:(id *)a3;
- (void)replayFromTime:(id *)a3;
- (void)sessionsQueue_setCurrentSession:(id)a3;
- (void)setCurrentAsset:(id)a3;
- (void)setCurrentAsset:(id)a3 startTime:(id *)a4;
- (void)setCurrentAsset:(id)a3 startTime:(id *)a4 hostTime:(id *)a5;
- (void)setCurrentAssetDuration:(id *)a3;
- (void)setDesiredPlayState:(int64_t)a3;
- (void)setError:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setTargetLoudnessInLKFS:(float)a3;
- (void)setVolume:(float)a3;
@end

@implementation PXAudioPlayer

- (id)lcdStringForSize:(CGSize)a3
{
  v4 = [(PXAudioPlayer *)self currentAsset:a3.width];
  v5 = [(PXAudioPlayer *)self state];
  if (v5 == 1)
  {
    v9 = @"Idle…";
  }

  else
  {
    v6 = v5;
    if (v5 == 5)
    {
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = [(PXAudioPlayer *)self error];
      v9 = [v7 initWithFormat:@"Error: %@", v8];
    }

    else
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      [(PXAudioPlayer *)self currentAssetDuration];
      v10 = 0x1E696A000uLL;
      memset(&time, 0, sizeof(time));
      [(PXAudioPlayer *)self currentTime];
      v35 = time;
      Seconds = CMTimeGetSeconds(&v35);
      v12 = MEMORY[0x1E696AEC0];
      LODWORD(v10) = vcvtmd_s64_f64(Seconds / 60.0);
      LODWORD(v13) = vcvtmd_s64_f64(fmod(Seconds, 60.0));
      v14 = [v12 stringWithFormat:@"%d:%02d/%@", v10, v13, @"?"];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__PXAudioPlayer_PXAscii__lcdStringForSize___block_invoke;
      aBlock[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
      aBlock[4] = 43;
      v15 = _Block_copy(aBlock);
      v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v16 = PXAudioPlayerStateDescription(v6);
      v17 = v15[2](v15, v16);
      [(__CFString *)v9 appendFormat:@"Status: %@\n", v17];

      v18 = [v4 title];
      v19 = v15[2](v15, v18);
      [(__CFString *)v9 appendFormat:@" Track: %@\n", v19];

      v20 = [v4 artistName];
      v21 = v15[2](v15, v20);
      [(__CFString *)v9 appendFormat:@"Artist: %@\n", v21];

      v22 = [v4 albumTitle];
      v23 = v15[2](v15, v22);
      [(__CFString *)v9 appendFormat:@" Album: %@\n", v23];

      v24 = [v4 catalog];
      if (v24 > 4)
      {
        v25 = @"Mock";
      }

      else
      {
        v25 = off_1E773ED58[v24];
      }

      v26 = v25;
      v27 = v15[2](v15, v26);
      [(__CFString *)v9 appendFormat:@"  Type: %@\n", v27];

      v28 = [v4 assetTagsDescription];
      v29 = v15[2](v15, v28);
      [(__CFString *)v9 appendFormat:@"  Tags: %@\n", v29];

      [v4 pace];
      v30 = PFStoryRecipeSongPaceDescription();
      v31 = v15[2](v15, v30);
      [(__CFString *)v9 appendFormat:@"  Pace: %@\n", v31];

      v32 = v15[2](v15, v14);
      [(__CFString *)v9 appendFormat:@"  Time: %@\n", v32];
    }
  }

  return v9;
}

__CFString *__43__PXAudioPlayer_PXAscii__lcdStringForSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 length] <= *(a1 + 32))
    {
      v8 = v4;
    }

    else
    {
      v5 = [v4 length];
      if (v5 - 2 >= (*(a1 + 32) - 2))
      {
        v6 = *(a1 + 32) - 2;
      }

      else
      {
        v6 = v5 - 2;
      }

      v7 = [v4 substringToIndex:v6];
      v8 = [v7 stringByAppendingString:@"…"];
    }
  }

  else
  {
    v8 = @"--";
  }

  return v8;
}

- (PXAudioPlayerDelegate)audioSessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audioSessionDelegate);

  return WeakRetained;
}

- (id)windowSceneID
{
  v2 = [(PXAudioPlayer *)self audioSessionDelegate];
  v3 = [v2 windowSceneID];

  return v3;
}

- (id)AVAudioSessionForAudioSession:(id)a3
{
  v4 = [(PXAudioPlayer *)self audioSessionDelegate];
  v5 = [v4 AVAudioSessionForPlayer:self];

  return v5;
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXAudioPlayer;
  [(PXAudioPlayer *)&v3 performChanges:a3];
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXAudioPlayer;
  [(PXAudioPlayer *)&v3 didPerformChanges];
  [(PXAudioPlayer *)self _update];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (CurrentSessionContext == a5)
  {
    px_dispatch_on_main_queue();
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXAudioPlayer.m" lineNumber:469 description:@"Code which should be unreachable has been reached"];

  abort();
}

uint64_t __46__PXAudioPlayer_observable_didChange_context___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__PXAudioPlayer_observable_didChange_context___block_invoke_2;
  v3[3] = &unk_1E7749D78;
  v1 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v1;
  return [v4 performChanges:v3];
}

void __46__PXAudioPlayer_observable_didChange_context___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    [*(a1 + 32) _invalidateState];
    v3 = *(a1 + 40);
  }

  if ((v3 & 0xA) != 0)
  {
    [*(a1 + 32) _invalidateCurrentSessionState];
  }
}

- (void)_sessionsQueue_updateState
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PXAudioPlayer *)self sessionsQueue_currentSession];
  v4 = [v3 asset];
  v5 = [(PXAudioPlayer *)self currentAsset];

  if (v4 == v5)
  {
    v9 = [v3 error];
    memset(buf, 0, sizeof(buf));
    if (v3)
    {
      [v3 duration];
      if (buf[12])
      {
        goto LABEL_10;
      }
    }

    v10 = [(PXAudioPlayer *)self currentAsset];
    v11 = v10;
    if (v10)
    {
      [v10 duration];
    }

    else
    {
      v14 = 0uLL;
      v15 = 0;
    }

    *buf = v14;
    *&buf[16] = v15;

    if (v3)
    {
LABEL_10:
      [v3 status];
    }

    v12 = [(PXAudioPlayer *)self _sessionsQueue_generateCurrentTimeRecord];
    v13 = v9;
    px_dispatch_on_main_queue();
  }

  v6 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v3 asset];
    v8 = [(PXAudioPlayer *)self currentAsset];
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2112;
    v17 = v8;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "%@ skipping state update because we are awaiting a new audio session for the current asset.\n\tCurrent asset: %@\n\tExisting asset: %@", buf, 0x20u);
  }
}

void __43__PXAudioPlayer__sessionsQueue_updateState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PXAudioPlayer__sessionsQueue_updateState__block_invoke_2;
  v4[3] = &unk_1E7749850;
  v3 = *(a1 + 56);
  v4[4] = v2;
  v7 = v3;
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 performChanges:v4];
}

uint64_t __43__PXAudioPlayer__sessionsQueue_updateState__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setState:*(a1 + 56)];
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  [*(a1 + 32) setCurrentAssetDuration:&v3];
  [*(a1 + 32) setError:*(a1 + 40)];
  return [*(a1 + 32) setMainQueue_currentTimeRecord:*(a1 + 48)];
}

- (void)_sessionsQueue_updateCurrentSessionStateWithDesiredPlayState:(int64_t)a3
{
  v4 = [(PXAudioPlayer *)self sessionsQueue_currentSession];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__PXAudioPlayer__sessionsQueue_updateCurrentSessionStateWithDesiredPlayState___block_invoke;
  v5[3] = &__block_descriptor_40_e33_v16__0___PXMutableAudioSession__8l;
  v5[4] = a3;
  [v4 performChanges:v5];
}

void __78__PXAudioPlayer__sessionsQueue_updateCurrentSessionStateWithDesiredPlayState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 == 1)
  {
    v5 = v3;
    [v3 play];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = v3;
    [v3 pause];
  }

  v3 = v5;
LABEL_6:
}

- (void)_updateCurrentSessionState
{
  v3 = [(PXAudioPlayer *)self desiredPlayState];
  objc_initWeak(&location, self);
  v4 = [(PXAudioPlayer *)self sessionsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PXAudioPlayer__updateCurrentSessionState__block_invoke;
  block[3] = &unk_1E7749808;
  objc_copyWeak(v6, &location);
  v6[1] = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __43__PXAudioPlayer__updateCurrentSessionState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sessionsQueue_updateCurrentSessionStateWithDesiredPlayState:*(a1 + 40)];
}

- (void)_invalidateCurrentSessionState
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 8) != 0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXAudioPlayer _invalidateCurrentSessionState]"];
    [v2 handleFailureInFunction:v3 file:@"PXAudioPlayer.m" lineNumber:385 description:{@"invalidating %lu after it already has been updated", 8}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 8uLL;
}

- (void)_updateState
{
  v3 = [(PXAudioPlayer *)self sessionsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__PXAudioPlayer__updateState__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_invalidateState
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 1) != 0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXAudioPlayer _invalidateState]"];
    [v2 handleFailureInFunction:v3 file:@"PXAudioPlayer.m" lineNumber:373 description:{@"invalidating %lu after it already has been updated", 1}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 1uLL;
}

- (void)_sessionsQueue_updateCurrentTimeRecord
{
  v3 = [(PXAudioPlayer *)self _sessionsQueue_generateCurrentTimeRecord];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PXAudioPlayer__sessionsQueue_updateCurrentTimeRecord__block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v7, &location);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__PXAudioPlayer__sessionsQueue_updateCurrentTimeRecord__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setMainQueue_currentTimeRecord:v1];
}

- (void)_updateCurrentTimeRecord
{
  v3 = [(PXAudioPlayer *)self sessionsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PXAudioPlayer__updateCurrentTimeRecord__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_invalidateCurrentTimeRecord
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 4) != 0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXAudioPlayer _invalidateCurrentTimeRecord]"];
    [v2 handleFailureInFunction:v3 file:@"PXAudioPlayer.m" lineNumber:354 description:{@"invalidating %lu after it already has been updated", 4}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 4uLL;
}

- (void)_updateCurrentTimeRecordUpdateTimer
{
  v3 = [(PXAudioPlayer *)self state];
  v4 = [(PXAudioPlayer *)self currentTimeRecordUpdateTimer];

  if (v3 == 3)
  {
    if (!v4)
    {
      objc_initWeak(&location, self);
      v5 = MEMORY[0x1E695DFF0];
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __52__PXAudioPlayer__updateCurrentTimeRecordUpdateTimer__block_invoke;
      v11 = &unk_1E774C318;
      objc_copyWeak(&v12, &location);
      v6 = [v5 px_scheduledTimerWithTimeInterval:1 repeats:&v8 block:0.5];
      [(PXAudioPlayer *)self setCurrentTimeRecordUpdateTimer:v6, v8, v9, v10, v11];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }

  else if (v4)
  {
    v7 = [(PXAudioPlayer *)self currentTimeRecordUpdateTimer];
    [v7 invalidate];

    [(PXAudioPlayer *)self setCurrentTimeRecordUpdateTimer:0];
  }
}

void __52__PXAudioPlayer__updateCurrentTimeRecordUpdateTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCurrentTimeRecordUpdateTimer];
}

- (void)_invalidateCurrentTimeRecordUpdateTimer
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 2) != 0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXAudioPlayer _invalidateCurrentTimeRecordUpdateTimer]"];
    [v2 handleFailureInFunction:v3 file:@"PXAudioPlayer.m" lineNumber:334 description:{@"invalidating %lu after it already has been updated", 2}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 2uLL;
}

- (void)_update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXAudioPlayer _update]"];
      [v8 handleFailureInFunction:v9 file:@"PXAudioPlayer.m" lineNumber:316 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 8;
    if ((needsUpdate & 8) != 0)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFF7;
      [(PXAudioPlayer *)self _updateCurrentSessionState];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXAudioPlayer _update]"];
        [v10 handleFailureInFunction:v11 file:@"PXAudioPlayer.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXAudioPlayer *)self _updateCurrentTimeRecordUpdateTimer];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXAudioPlayer _update]"];
      [v12 handleFailureInFunction:v13 file:@"PXAudioPlayer.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXAudioPlayer *)self _updateCurrentTimeRecord];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXAudioPlayer _update]"];
      [v14 handleFailureInFunction:v15 file:@"PXAudioPlayer.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 1uLL;
    if (v7)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFFELL;
      [(PXAudioPlayer *)self _updateState];
      v7 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v7)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXAudioPlayer _update]"];
      [v17 handleFailureInFunction:v16 file:@"PXAudioPlayer.m" lineNumber:329 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }
}

- (void)setError:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_error != v5)
  {
    v8 = v5;
    v7 = [(NSError *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_error, a3);
      [(PXAudioPlayer *)self signalChange:32];
      v6 = v8;
    }
  }
}

- (void)setCurrentAssetDuration:(id *)a3
{
  p_currentAssetDuration = &self->_currentAssetDuration;
  time1 = *a3;
  currentAssetDuration = self->_currentAssetDuration;
  if (CMTimeCompare(&time1, &currentAssetDuration))
  {
    v6 = *&a3->var0;
    p_currentAssetDuration->epoch = a3->var3;
    *&p_currentAssetDuration->value = v6;
    [(PXAudioPlayer *)self signalChange:2];
  }
}

- (void)setState:(int64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"PXAudioPlayerStateDidChangeNotification" object:self];

    [(PXAudioPlayer *)self _invalidateCurrentTimeRecordUpdateTimer];
    [(PXAudioPlayer *)self signalChange:4];
    v6 = [(PXAudioPlayer *)self log];
    v7 = os_signpost_id_make_with_pointer(v6, self);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        v17 = 134217984;
        v18 = [(PXAudioPlayer *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v8, "PXAudioPlayerChangedState", "Context=%{signpost.telemetry:string2}lu ", &v17, 0xCu);
      }
    }

    v9 = v6;
    v10 = os_signpost_id_make_with_pointer(v9, self);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        v12 = [(PXAudioPlayer *)self logContext];
        v17 = 134218240;
        v18 = v12;
        v19 = 2048;
        v20 = a3;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_EVENT, v11, "PXAudioPlayerChangedState", "Context=%{signpost.telemetry:string2}lu %ld", &v17, 0x16u);
      }
    }

    v13 = v9;
    v14 = os_signpost_id_make_with_pointer(v13, self);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v13))
      {
        v16 = [(PXAudioPlayer *)self logContext];
        v17 = 134218240;
        v18 = v16;
        v19 = 2048;
        v20 = a3;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PXAudioPlayerChangedState", "Context=%{signpost.telemetry:string2}lu %ld", &v17, 0x16u);
      }
    }
  }
}

- (void)_handleCurrentTimeRecordUpdateTimer
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__PXAudioPlayer__handleCurrentTimeRecordUpdateTimer__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXAudioPlayer *)self performChanges:v2];
}

- (void)_sessionsQueue_handleOutgoingSession:(id)a3
{
  v4 = a3;
  [v4 performChanges:&__block_literal_global_48_238213];
  [v4 unregisterChangeObserver:self context:CurrentSessionContext];
}

- (void)sessionsQueue_setCurrentSession:(id)a3
{
  v5 = a3;
  if (self->_sessionsQueue_currentSession != v5)
  {
    [(PXAudioPlayer *)self _sessionsQueue_handleOutgoingSession:?];
    objc_storeStrong(&self->_sessionsQueue_currentSession, a3);
    [(PXAudioSession *)v5 registerChangeObserver:self context:CurrentSessionContext];
    v6 = [(PXAudioPlayer *)self _sessionsQueue_generateCurrentTimeRecord];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__PXAudioPlayer_sessionsQueue_setCurrentSession___block_invoke;
    v8[3] = &unk_1E774C620;
    v8[4] = self;
    v9 = v6;
    v7 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __49__PXAudioPlayer_sessionsQueue_setCurrentSession___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__PXAudioPlayer_sessionsQueue_setCurrentSession___block_invoke_2;
  v2[3] = &unk_1E77498F8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 performChanges:v2];
}

uint64_t __49__PXAudioPlayer_sessionsQueue_setCurrentSession___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _invalidateState];
  [*(a1 + 32) _invalidateCurrentSessionState];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setMainQueue_currentTimeRecord:v3];
}

- (id)_sessionsQueue_generateCurrentTimeRecord
{
  v2 = [(PXAudioPlayer *)self sessionsQueue_currentSession];
  v3 = [v2 status];
  v10 = 0uLL;
  v11 = 0;
  if (v2)
  {
    [v2 currentTime];
  }

  v4 = [PXCurrentTimeRecord alloc];
  v5 = 0.0;
  if (v3 == 3)
  {
    *&v5 = 1.0;
  }

  v8 = v10;
  v9 = v11;
  v6 = [(PXCurrentTimeRecord *)v4 initWithSampleTime:&v8 rate:v5];

  return v6;
}

- (id)_createAudioSessionForAsset:(id)a3 startTime:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 audioSessionClass];
  if (v6)
  {
    [v6 duration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = *a4;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    v8 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      time2 = *a4;
      v9 = CMTimeCopyDescription(0, &time2);
      LODWORD(time2.value) = 138412546;
      *(&time2.value + 4) = v9;
      LOWORD(time2.flags) = 2112;
      *(&time2.flags + 2) = v6;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Requested start time %@ is less than the asset duration of %@. Restarting at zero.", &time2, 0x16u);
    }

    v10 = *MEMORY[0x1E6960CC0];
    a4->var3 = *(MEMORY[0x1E6960CC0] + 16);
    *&a4->var0 = v10;
  }

  v11 = [v7 alloc];
  [(PXAudioPlayer *)self volume];
  v13 = v12;
  v14 = [(PXAudioPlayer *)self sessionsQueue];
  time2 = *a4;
  v15 = [v11 initWithAsset:v6 volume:&time2 startTime:v14 queue:self audioSessionDelegate:{COERCE_DOUBLE(__PAIR64__(HIDWORD(time2.value), v13))}];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__PXAudioPlayer__createAudioSessionForAsset_startTime___block_invoke;
  v17[3] = &unk_1E77497E0;
  v17[4] = self;
  [v15 performChanges:v17];

  return v15;
}

void __55__PXAudioPlayer__createAudioSessionForAsset_startTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 targetLoudnessInLKFS];
  [v3 setTargetLoudnessInLKFS:?];
  [v3 prepareToPlay];
}

- (PXAudioSession)currentAudioSession
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__238217;
  v11 = __Block_byref_object_dispose__238218;
  v12 = 0;
  v3 = [(PXAudioPlayer *)self sessionsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PXAudioPlayer_currentAudioSession__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3810000000;
  v4[3] = &unk_1A561E057;
  memset(&v4[4], 0, 24);
  px_dispatch_on_main_queue_sync();
}

void __28__PXAudioPlayer_currentTime__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mainQueue_currentTimeRecord];
  v3 = v2;
  if (v2)
  {
    [v2 currentTime];
  }

  else
  {
    v5 = 0uLL;
    v6 = 0;
  }

  v4 = *(*(a1 + 40) + 8);
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
}

- (void)pause
{
  v3 = [(PXAudioPlayer *)self sessionsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__PXAudioPlayer_pause__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(v3, block);
}

void __22__PXAudioPlayer_pause__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionsQueue_currentSession];
  [v1 performChanges:&__block_literal_global_238220];
}

- (void)replayFromTime:(id *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if ((a3->var2 & 1) == 0)
  {
    PXAssertGetLog();
  }

  v5 = [(PXAudioPlayer *)self sessionsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__PXAudioPlayer_replayFromTime___block_invoke;
  v6[3] = &unk_1E7749770;
  v6[4] = self;
  v7 = *&a3->var0;
  var3 = a3->var3;
  dispatch_async(v5, v6);
}

void __32__PXAudioPlayer_replayFromTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionsQueue_currentSession];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__PXAudioPlayer_replayFromTime___block_invoke_2;
  v3[3] = &__block_descriptor_56_e33_v16__0___PXMutableAudioSession__8l;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  [v2 performChanges:v3];
}

uint64_t __32__PXAudioPlayer_replayFromTime___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 playFromTime:&v3];
}

- (void)setCurrentAsset:(id)a3 startTime:(id *)a4 hostTime:(id *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ((a4->var2 & 1) == 0)
  {
    v9 = *MEMORY[0x1E6960CC0];
    a4->var3 = *(MEMORY[0x1E6960CC0] + 16);
    *&a4->var0 = v9;
  }

  v10 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    time = *a4;
    Seconds = CMTimeGetSeconds(&time);
    LODWORD(time.value) = 138412802;
    *(&time.value + 4) = self;
    LOWORD(time.flags) = 2112;
    *(&time.flags + 2) = v8;
    HIWORD(time.epoch) = 2048;
    v42 = Seconds;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "%@ asked to play asset %@ from start time %f", &time, 0x20u);
  }

  memset(&time, 0, sizeof(time));
  if (v8)
  {
    [v8 duration];
  }

  currentAsset = self->_currentAsset;
  v13 = v8;
  v14 = v13;
  v15 = v13;
  if (currentAsset == v13)
  {
    goto LABEL_22;
  }

  v16 = [(PXAudioAsset *)v13 isEqual:currentAsset];

  if ((v16 & 1) == 0)
  {
    if (v8)
    {
      v39 = @"PXAudioPlayerCurrentAssetDidChangeNotificationCurrentAssetKey";
      v40 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    }

    else
    {
      v15 = 0;
    }

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 postNotificationName:@"PXAudioPlayerCurrentAssetDidChangeNotification" object:self userInfo:v15];

    [(PXAudioPlayer *)self signalChange:1];
    v18 = [(PXAudioPlayer *)self log];
    v19 = os_signpost_id_make_with_pointer(v18, self);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = v19;
      if (os_signpost_enabled(v18))
      {
        LODWORD(buf.value) = 134217984;
        *(&buf.value + 4) = [(PXAudioPlayer *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v18, OS_SIGNPOST_INTERVAL_END, v20, "PXAudioPlayerChangedCurrentAsset", "Context=%{signpost.telemetry:string2}lu ", &buf, 0xCu);
      }
    }

    v21 = v18;
    v22 = os_signpost_id_make_with_pointer(v21, self);
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v23 = v22;
      if (os_signpost_enabled(v21))
      {
        v24 = [(PXAudioPlayer *)self logContext];
        LODWORD(buf.value) = 134218242;
        *(&buf.value + 4) = v24;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v14;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v21, OS_SIGNPOST_EVENT, v23, "PXAudioPlayerChangedCurrentAsset", "Context=%{signpost.telemetry:string2}lu %{public}@", &buf, 0x16u);
      }
    }

    v25 = v21;
    v26 = os_signpost_id_make_with_pointer(v25, self);
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = v26;
      if (os_signpost_enabled(v25))
      {
        v28 = [(PXAudioPlayer *)self logContext];
        LODWORD(buf.value) = 134218242;
        *(&buf.value + 4) = v28;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v14;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v27, "PXAudioPlayerChangedCurrentAsset", "Context=%{signpost.telemetry:string2}lu %{public}@", &buf, 0x16u);
      }
    }

    buf = time;
    [(PXAudioPlayer *)self setCurrentAssetDuration:&buf];
    v29 = [PXCurrentTimeRecord alloc];
    buf = *a4;
    v30 = [(PXCurrentTimeRecord *)v29 initWithSampleTime:&buf rate:0.0];
    [(PXAudioPlayer *)self setMainQueue_currentTimeRecord:v30];

LABEL_22:
  }

  objc_storeStrong(&self->_currentAsset, a3);
  v31 = [(PXAudioPlayer *)self sessionsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PXAudioPlayer_setCurrentAsset_startTime_hostTime___block_invoke;
  block[3] = &unk_1E7749798;
  v34 = v14;
  v35 = self;
  v36 = *&a4->var0;
  var3 = a4->var3;
  v32 = v14;
  dispatch_async(v31, block);
}

void __52__PXAudioPlayer_setCurrentAsset_startTime_hostTime___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      LODWORD(v7) = 138412290;
      *(&v7 + 4) = v3;
      _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%@ creating new session.", &v7, 0xCu);
    }

    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v6 = [v4 _createAudioSessionForAsset:v5 startTime:&v7];
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 40) sessionsQueue_setCurrentSession:v6];
}

- (void)setCurrentAsset:(id)a3 startTime:(id *)a4
{
  v6 = *a4;
  v4 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  [(PXAudioPlayer *)self setCurrentAsset:a3 startTime:&v6 hostTime:&v4];
}

- (void)setCurrentAsset:(id)a3
{
  v3 = *MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C70] + 16);
  [(PXAudioPlayer *)self setCurrentAsset:a3 startTime:&v3];
}

- (void)playFromStartTime:(id *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if ((a3->var2 & 1) == 0)
  {
    PXAssertGetLog();
  }

  v5 = [(PXAudioPlayer *)self sessionsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__PXAudioPlayer_playFromStartTime___block_invoke;
  v6[3] = &unk_1E7749770;
  v6[4] = self;
  v7 = *&a3->var0;
  var3 = a3->var3;
  dispatch_async(v5, v6);

  [(PXAudioPlayer *)self setDesiredPlayState:1];
}

void __35__PXAudioPlayer_playFromStartTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionsQueue_currentSession];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__PXAudioPlayer_playFromStartTime___block_invoke_2;
  v3[3] = &__block_descriptor_56_e33_v16__0___PXMutableAudioSession__8l;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  [v2 performChanges:v3];
}

uint64_t __35__PXAudioPlayer_playFromStartTime___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 playFromTime:&v3];
}

- (void)setDesiredPlayState:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_desiredPlayState != a3)
  {
    self->_desiredPlayState = a3;
    v5 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_desiredPlayState == 1)
      {
        v6 = @"Playing";
      }

      else
      {
        v6 = @"Paused";
      }

      v20 = 138412546;
      v21 = self;
      v22 = 2112;
      v23 = v6;
      v7 = v6;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "%@ desired play state is now %@", &v20, 0x16u);
    }

    [(PXAudioPlayer *)self signalChange:16];
    v8 = [(PXAudioPlayer *)self log];
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        v11 = [(PXAudioPlayer *)self logContext];
        v20 = 134217984;
        v21 = v11;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v10, "PXAudioPlayerChangedDesiredPlayState", "Context=%{signpost.telemetry:string2}lu ", &v20, 0xCu);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        v15 = [(PXAudioPlayer *)self logContext];
        v20 = 134218240;
        v21 = v15;
        v22 = 2048;
        v23 = a3;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_EVENT, v14, "PXAudioPlayerChangedDesiredPlayState", "Context=%{signpost.telemetry:string2}lu %ld", &v20, 0x16u);
      }
    }

    v16 = v12;
    v17 = os_signpost_id_make_with_pointer(v16, self);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = v17;
      if (os_signpost_enabled(v16))
      {
        v19 = [(PXAudioPlayer *)self logContext];
        v20 = 134218240;
        v21 = v19;
        v22 = 2048;
        v23 = a3;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PXAudioPlayerChangedDesiredPlayState", "Context=%{signpost.telemetry:string2}lu %ld", &v20, 0x16u);
      }
    }

    [(PXAudioPlayer *)self _invalidateCurrentSessionState];
  }
}

- (void)setTargetLoudnessInLKFS:(float)a3
{
  if (self->_targetLoudnessInLKFS != a3)
  {
    self->_targetLoudnessInLKFS = a3;
    v5 = [(PXAudioPlayer *)self sessionsQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__PXAudioPlayer_setTargetLoudnessInLKFS___block_invoke;
    v6[3] = &unk_1E7749728;
    v6[4] = self;
    v7 = a3;
    dispatch_async(v5, v6);
  }
}

void __41__PXAudioPlayer_setTargetLoudnessInLKFS___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionsQueue_currentSession];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__PXAudioPlayer_setTargetLoudnessInLKFS___block_invoke_2;
  v3[3] = &__block_descriptor_36_e33_v16__0___PXMutableAudioSession__8l;
  v4 = *(a1 + 40);
  [v2 performChanges:v3];
}

- (void)setVolume:(float)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_volume != a3)
  {
    self->_volume = a3;
    [(PXAudioPlayer *)self signalChange:8];
    v5 = [(PXAudioPlayer *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        *buf = 134217984;
        v20 = [(PXAudioPlayer *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXAudioPlayerChangedVolume", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        v11 = [(PXAudioPlayer *)self logContext];
        *buf = 134218240;
        v20 = v11;
        v21 = 2048;
        v22 = a3;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXAudioPlayerChangedVolume", "Context=%{signpost.telemetry:string2}lu %.2f", buf, 0x16u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        v15 = [(PXAudioPlayer *)self logContext];
        *buf = 134218240;
        v20 = v15;
        v21 = 2048;
        v22 = a3;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXAudioPlayerChangedVolume", "Context=%{signpost.telemetry:string2}lu %.2f", buf, 0x16u);
      }
    }

    v16 = [(PXAudioPlayer *)self sessionsQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __27__PXAudioPlayer_setVolume___block_invoke;
    v17[3] = &unk_1E7749728;
    v17[4] = self;
    v18 = a3;
    dispatch_async(v16, v17);
  }
}

void __27__PXAudioPlayer_setVolume___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionsQueue_currentSession];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__PXAudioPlayer_setVolume___block_invoke_2;
  v3[3] = &__block_descriptor_36_e33_v16__0___PXMutableAudioSession__8l;
  v4 = *(a1 + 40);
  [v2 performChanges:v3];
}

- (PXAudioPlayer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAudioPlayer.m" lineNumber:101 description:{@"%s is not available as initializer", "-[PXAudioPlayer init]"}];

  abort();
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXAudioPlayer *)self name];
  v7 = PXAudioPlayerStateDescription([(PXAudioPlayer *)self state]);
  [(PXAudioPlayer *)self currentTime];
  Seconds = CMTimeGetSeconds(&time);
  [(PXAudioPlayer *)self currentAssetDuration];
  v9 = CMTimeGetSeconds(&time);
  v10 = [(PXAudioPlayer *)self currentAsset];
  v11 = [v3 initWithFormat:@"<%@: %p; name: %@; state: %@; currentTime: %.1f/%.1fs; currentAsset: %@>", v5, self, v6, v7, *&Seconds, *&v9, v10];

  return v11;
}

- (PXAudioPlayer)initWithName:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXAudioPlayer;
  v5 = [(PXAudioPlayer *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x1E6960C70];
    *&v5->_currentAssetDuration.value = *MEMORY[0x1E6960C70];
    v5->_currentAssetDuration.epoch = *(v7 + 16);
    v8 = [v4 copy];
    name = v6->_name;
    v6->_name = v8;

    v6->_state = 1;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.PhotosUICore.PXAudioPlayer.sessions", v10);
    sessionsQueue = v6->_sessionsQueue;
    v6->_sessionsQueue = v11;

    v6->_volume = 1.0;
  }

  return v6;
}

@end