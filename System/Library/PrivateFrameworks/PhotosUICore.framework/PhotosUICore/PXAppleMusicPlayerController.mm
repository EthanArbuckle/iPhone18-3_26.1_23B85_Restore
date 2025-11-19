@interface PXAppleMusicPlayerController
@end

@implementation PXAppleMusicPlayerController

void __62___PXAppleMusicPlayerController__handlePlaybackStateDidChange__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 128) playbackState] == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62___PXAppleMusicPlayerController__handlePlaybackStateDidChange__block_invoke_2;
  v3[3] = &unk_1E7749808;
  objc_copyWeak(v4, (a1 + 40));
  v4[1] = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __62___PXAppleMusicPlayerController__handlePlaybackStateDidChange__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPlaybackState:v1];
}

void __78___PXAppleMusicPlayerController__handleDidPrepareToPlayWithExpectation_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) fulfill];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _queue_handleDidPrepareToPlayWithError:*(a1 + 40)];
}

void __43___PXAppleMusicPlayerController_setVolume___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = *(*(a1 + 32) + 128);
    v5 = NSStringFromSelector(sel_setRelativeVolume_);
    v6 = 138543874;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "%{public}@ will have no effect because %@ does not respond to %@", &v6, 0x20u);
  }
}

void __37___PXAppleMusicPlayerController_play__block_invoke(uint64_t a1)
{
  v2 = +[PXApplicationState sharedState];
  *(*(*(a1 + 32) + 8) + 24) = [v2 visibilityState] == 1;
}

void __68___PXAppleMusicPlayerController_prepareToPlayWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_handlePreparationExpectationFulfilled:v6 success:a2 error:v5];
}

void __68___PXAppleMusicPlayerController_prepareToPlayWithCompletionHandler___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleDidPrepareToPlayWithExpectation:v4 error:v3];
}

double __39___PXAppleMusicPlayerController_volume__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 136);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

double __49___PXAppleMusicPlayerController_fetchCurrentTime__block_invoke(uint64_t a1)
{
  if (+[_PXAppleMusicPlayerController canApplyWorkaroundFor80278485])
  {
    v2 = +[PXAudioSettings sharedInstance];
    v3 = [v2 workaround80278485];

    if (v3)
    {
      [*(*(a1 + 32) + 128) setServerTimeSnapshot:0];
    }
  }

  [*(*(a1 + 32) + 128) currentPlaybackTime];
  CMTimeMakeWithSeconds(&v6, v4, PXAudioDefaultCMTimeScale);
  result = *&v6.value;
  *(*(*(a1 + 40) + 8) + 32) = v6;
  return result;
}

void __108___PXAppleMusicPlayerController_clientIdentifier_becomeCurrentClientIfNeeded_performAsyncPlayerTransaction___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 112);
    v4 = v3;
    if (v3 == v2)
    {
    }

    else
    {
      v5 = [v3 isEqualToString:v2];

      if (!v5)
      {
        v6 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXAppleMusicPlayerControllerErrorDomain" code:1 debugDescription:{@"Transaction client identifier is %@, but the current client identifier is %@", *(a1 + 40), *(*(a1 + 32) + 112)}];
        (*(*(a1 + 48) + 16))();
        v7 = PLAudioPlaybackGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          v9 = *(a1 + 40);
          v10 = *(v8 + 112);
          *buf = 138543874;
          v13 = v8;
          v14 = 2114;
          v15 = v9;
          v16 = 2114;
          v17 = v10;
          _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring player transaction from non-current client with identifier %{public}@. Current client: %{public}@", buf, 0x20u);
        }

        return;
      }
    }
  }

  [*(a1 + 32) _queue_setCurrentClientIdentifier:*(a1 + 40)];
  v11 = *(*(a1 + 48) + 16);

  v11();
}

void __38___PXAppleMusicPlayerController__init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePlaybackStateDidChange];
}

void __38___PXAppleMusicPlayerController__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleItemPlaybackDidEnd];
}

uint64_t __62___PXAppleMusicPlayerController_canApplyWorkaroundFor80278485__block_invoke()
{
  result = [MEMORY[0x1E69707E8] instancesRespondToSelector:sel_setServerTimeSnapshot_];
  canApplyWorkaroundFor80278485_canApply = result;
  return result;
}

@end