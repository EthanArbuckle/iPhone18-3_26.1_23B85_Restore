@interface PXSimpleWrappedVideoScrubberControllerTarget
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentItemDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTime;
- (PXSimpleWrappedVideoScrubberControllerTarget)init;
- (PXSimpleWrappedVideoScrubberControllerTarget)initWithVideoPlayer:(id)a3;
- (id)addPeriodicTimeObserverForInterval:(id *)a3 queue:(id)a4 usingBlock:(id)a5;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)videoScrubberController:(id)a3 seekToTime:(id *)a4 toleranceBefore:(id *)a5 toleranceAfter:(id *)a6 completionHandler:(id)a7;
@end

@implementation PXSimpleWrappedVideoScrubberControllerTarget

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (wrappedPlayerObservationContext == a5)
  {
    px_dispatch_on_main_queue();
  }
}

void __77__PXSimpleWrappedVideoScrubberControllerTarget_observable_didChange_context___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) statusChangeHandler];

    if (v2)
    {
      v3 = [*(a1 + 32) statusChangeHandler];
      v3[2]();
    }
  }

  if ((*(a1 + 41) & 2) != 0)
  {
    v4 = [*(a1 + 32) durationChangeHandler];

    if (v4)
    {
      v5 = [*(a1 + 32) durationChangeHandler];
      v5[2]();
    }
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    v6 = [*(a1 + 32) playerItemChangeHandler];

    if (v6)
    {
      v7 = [*(a1 + 32) playerItemChangeHandler];
      v7[2]();
    }
  }
}

- (void)videoScrubberController:(id)a3 seekToTime:(id *)a4 toleranceBefore:(id *)a5 toleranceAfter:(id *)a6 completionHandler:(id)a7
{
  videoPlayer = self->_videoPlayer;
  v10 = *a4;
  v9 = *a5;
  v8 = *a6;
  [(ISWrappedAVPlayer *)videoPlayer seekToTime:&v10 toleranceBefore:&v9 toleranceAfter:&v8 completionHandler:a7];
}

- (id)addPeriodicTimeObserverForInterval:(id *)a3 queue:(id)a4 usingBlock:(id)a5
{
  videoPlayer = self->_videoPlayer;
  v8 = *a3;
  v6 = [(ISWrappedAVPlayer *)videoPlayer addPeriodicTimeObserverForInterval:&v8 queue:a4 usingBlock:a5];

  return v6;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentItemDuration
{
  v4 = [(ISWrappedAVPlayer *)self->_videoPlayer currentItem];
  if (v4)
  {
    v6 = v4;
    [v4 duration];
    v4 = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTime
{
  result = self->_videoPlayer;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result currentTime];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- (PXSimpleWrappedVideoScrubberControllerTarget)initWithVideoPlayer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXSimpleWrappedVideoScrubberControllerTarget;
  v6 = [(PXSimpleWrappedVideoScrubberControllerTarget *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_videoPlayer, a3);
    [v5 registerChangeObserver:v7 context:wrappedPlayerObservationContext];
  }

  return v7;
}

- (PXSimpleWrappedVideoScrubberControllerTarget)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXVideoScrubberController.m" lineNumber:556 description:{@"%s is not available as initializer", "-[PXSimpleWrappedVideoScrubberControllerTarget init]"}];

  abort();
}

@end