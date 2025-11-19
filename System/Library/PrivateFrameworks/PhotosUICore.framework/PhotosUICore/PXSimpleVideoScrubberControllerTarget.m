@interface PXSimpleVideoScrubberControllerTarget
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTime;
- (PXSimpleVideoScrubberControllerTarget)init;
- (PXSimpleVideoScrubberControllerTarget)initWithVideoPlayer:(id)a3;
- (id)addPeriodicTimeObserverForInterval:(id *)a3 queue:(id)a4 usingBlock:(id)a5;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)videoScrubberController:(id)a3 seekToTime:(id *)a4 toleranceBefore:(id *)a5 toleranceAfter:(id *)a6 completionHandler:(id)a7;
@end

@implementation PXSimpleVideoScrubberControllerTarget

- (void)videoScrubberController:(id)a3 seekToTime:(id *)a4 toleranceBefore:(id *)a5 toleranceAfter:(id *)a6 completionHandler:(id)a7
{
  videoPlayer = self->_videoPlayer;
  v10 = *a4;
  v9 = *a5;
  v8 = *a6;
  [(AVPlayer *)videoPlayer seekToTime:&v10 toleranceBefore:&v9 toleranceAfter:&v8 completionHandler:a7];
}

- (id)addPeriodicTimeObserverForInterval:(id *)a3 queue:(id)a4 usingBlock:(id)a5
{
  videoPlayer = self->_videoPlayer;
  v8 = *a3;
  v6 = [(AVPlayer *)videoPlayer addPeriodicTimeObserverForInterval:&v8 queue:a4 usingBlock:a5];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (avPlayerObservationContext != a6)
  {
    v19.receiver = self;
    v19.super_class = PXSimpleVideoScrubberControllerTarget;
    [(PXSimpleVideoScrubberControllerTarget *)&v19 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
    goto LABEL_16;
  }

  if ([v10 isEqualToString:@"status"])
  {
    v12 = [(PXSimpleVideoScrubberControllerTarget *)self statusChangeHandler];

    if (v12)
    {
      v13 = [(PXSimpleVideoScrubberControllerTarget *)self statusChangeHandler];
LABEL_15:
      v18 = v13;
      (*(v13 + 16))();

      goto LABEL_16;
    }
  }

  if ([v10 isEqualToString:@"currentItem.duration"])
  {
    v14 = [(PXSimpleVideoScrubberControllerTarget *)self durationChangeHandler];

    if (v14)
    {
      v15 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
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

      v13 = [(PXSimpleVideoScrubberControllerTarget *)self durationChangeHandler];
      goto LABEL_15;
    }
  }

  if ([v10 isEqualToString:@"currentItem"])
  {
    v17 = [(PXSimpleVideoScrubberControllerTarget *)self playerItemChangeHandler];

    if (v17)
    {
      v13 = [(PXSimpleVideoScrubberControllerTarget *)self playerItemChangeHandler];
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

- (PXSimpleVideoScrubberControllerTarget)initWithVideoPlayer:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PXSimpleVideoScrubberControllerTarget;
  v6 = [(PXSimpleVideoScrubberControllerTarget *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_videoPlayer, a3);
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXVideoScrubberController.m" lineNumber:466 description:{@"%s is not available as initializer", "-[PXSimpleVideoScrubberControllerTarget init]"}];

  abort();
}

@end