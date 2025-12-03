@interface PXSimpleWrappedVideoScrubberControllerTarget
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentItemDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTime;
- (PXSimpleWrappedVideoScrubberControllerTarget)init;
- (PXSimpleWrappedVideoScrubberControllerTarget)initWithVideoPlayer:(id)player;
- (id)addPeriodicTimeObserverForInterval:(id *)interval queue:(id)queue usingBlock:(id)block;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)videoScrubberController:(id)controller seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler;
@end

@implementation PXSimpleWrappedVideoScrubberControllerTarget

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (wrappedPlayerObservationContext == context)
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

- (void)videoScrubberController:(id)controller seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler
{
  videoPlayer = self->_videoPlayer;
  v10 = *time;
  v9 = *before;
  v8 = *after;
  [(ISWrappedAVPlayer *)videoPlayer seekToTime:&v10 toleranceBefore:&v9 toleranceAfter:&v8 completionHandler:handler];
}

- (id)addPeriodicTimeObserverForInterval:(id *)interval queue:(id)queue usingBlock:(id)block
{
  videoPlayer = self->_videoPlayer;
  v8 = *interval;
  v6 = [(ISWrappedAVPlayer *)videoPlayer addPeriodicTimeObserverForInterval:&v8 queue:queue usingBlock:block];

  return v6;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentItemDuration
{
  currentItem = [(ISWrappedAVPlayer *)self->_videoPlayer currentItem];
  if (currentItem)
  {
    v6 = currentItem;
    [currentItem duration];
    currentItem = v6;
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

- (PXSimpleWrappedVideoScrubberControllerTarget)initWithVideoPlayer:(id)player
{
  playerCopy = player;
  v9.receiver = self;
  v9.super_class = PXSimpleWrappedVideoScrubberControllerTarget;
  v6 = [(PXSimpleWrappedVideoScrubberControllerTarget *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_videoPlayer, player);
    [playerCopy registerChangeObserver:v7 context:wrappedPlayerObservationContext];
  }

  return v7;
}

- (PXSimpleWrappedVideoScrubberControllerTarget)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoScrubberController.m" lineNumber:556 description:{@"%s is not available as initializer", "-[PXSimpleWrappedVideoScrubberControllerTarget init]"}];

  abort();
}

@end