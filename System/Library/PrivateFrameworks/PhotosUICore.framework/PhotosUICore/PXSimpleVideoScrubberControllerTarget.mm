@interface PXSimpleVideoScrubberControllerTarget
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTime;
- (PXSimpleVideoScrubberControllerTarget)init;
- (PXSimpleVideoScrubberControllerTarget)initWithVideoPlayer:(id)player;
- (id)addPeriodicTimeObserverForInterval:(id *)interval queue:(id)queue usingBlock:(id)block;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)videoScrubberController:(id)controller seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler;
@end

@implementation PXSimpleVideoScrubberControllerTarget

- (void)videoScrubberController:(id)controller seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler
{
  videoPlayer = self->_videoPlayer;
  v10 = *time;
  v9 = *before;
  v8 = *after;
  [(AVPlayer *)videoPlayer seekToTime:&v10 toleranceBefore:&v9 toleranceAfter:&v8 completionHandler:handler];
}

- (id)addPeriodicTimeObserverForInterval:(id *)interval queue:(id)queue usingBlock:(id)block
{
  videoPlayer = self->_videoPlayer;
  v8 = *interval;
  v6 = [(AVPlayer *)videoPlayer addPeriodicTimeObserverForInterval:&v8 queue:queue usingBlock:block];

  return v6;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (avPlayerObservationContext != context)
  {
    v19.receiver = self;
    v19.super_class = PXSimpleVideoScrubberControllerTarget;
    [(PXSimpleVideoScrubberControllerTarget *)&v19 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
    goto LABEL_16;
  }

  if ([pathCopy isEqualToString:@"status"])
  {
    statusChangeHandler = [(PXSimpleVideoScrubberControllerTarget *)self statusChangeHandler];

    if (statusChangeHandler)
    {
      statusChangeHandler2 = [(PXSimpleVideoScrubberControllerTarget *)self statusChangeHandler];
LABEL_15:
      v18 = statusChangeHandler2;
      (*(statusChangeHandler2 + 16))();

      goto LABEL_16;
    }
  }

  if ([pathCopy isEqualToString:@"currentItem.duration"])
  {
    durationChangeHandler = [(PXSimpleVideoScrubberControllerTarget *)self durationChangeHandler];

    if (durationChangeHandler)
    {
      v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      v16 = v15;
      if (v15)
      {
        [v15 CMTimeValue];
      }

      else
      {
        v20 = 0uLL;
        v21 = 0;
      }

      *&self->_currentItemDuration.value = v20;
      self->_currentItemDuration.epoch = v21;

      statusChangeHandler2 = [(PXSimpleVideoScrubberControllerTarget *)self durationChangeHandler];
      goto LABEL_15;
    }
  }

  if ([pathCopy isEqualToString:@"currentItem"])
  {
    playerItemChangeHandler = [(PXSimpleVideoScrubberControllerTarget *)self playerItemChangeHandler];

    if (playerItemChangeHandler)
    {
      statusChangeHandler2 = [(PXSimpleVideoScrubberControllerTarget *)self playerItemChangeHandler];
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)dealloc
{
  [(AVPlayer *)self->_videoPlayer removeObserver:self forKeyPath:@"status" context:avPlayerObservationContext];
  [(AVPlayer *)self->_videoPlayer removeObserver:self forKeyPath:@"currentItem.duration" context:avPlayerObservationContext];
  [(AVPlayer *)self->_videoPlayer removeObserver:self forKeyPath:@"currentItem" context:avPlayerObservationContext];
  v3.receiver = self;
  v3.super_class = PXSimpleVideoScrubberControllerTarget;
  [(PXSimpleVideoScrubberControllerTarget *)&v3 dealloc];
}

- (PXSimpleVideoScrubberControllerTarget)initWithVideoPlayer:(id)player
{
  playerCopy = player;
  v10.receiver = self;
  v10.super_class = PXSimpleVideoScrubberControllerTarget;
  v6 = [(PXSimpleVideoScrubberControllerTarget *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_videoPlayer, player);
    [(AVPlayer *)v7->_videoPlayer addObserver:v7 forKeyPath:@"status" options:0 context:avPlayerObservationContext];
    [(AVPlayer *)v7->_videoPlayer addObserver:v7 forKeyPath:@"currentItem" options:0 context:avPlayerObservationContext];
    [(AVPlayer *)v7->_videoPlayer addObserver:v7 forKeyPath:@"currentItem.duration" options:1 context:avPlayerObservationContext];
    v8 = MEMORY[0x1E6960C68];
    *&v7->_currentItemDuration.value = *MEMORY[0x1E6960C68];
    v7->_currentItemDuration.epoch = *(v8 + 16);
  }

  return v7;
}

- (PXSimpleVideoScrubberControllerTarget)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoScrubberController.m" lineNumber:466 description:{@"%s is not available as initializer", "-[PXSimpleVideoScrubberControllerTarget init]"}];

  abort();
}

@end