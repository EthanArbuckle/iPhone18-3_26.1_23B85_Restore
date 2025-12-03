@interface TSKAVPlayerTimeController
- (TSKAVPlayerTimeController)initWithPlayerController:(id)controller;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_beginScrubbingIfNeeded;
- (void)p_createTimeObserver;
- (void)p_setTimeValuesWithoutScrubbing;
- (void)p_teardownTimeObserver;
- (void)setAbsoluteCurrentTime:(double)time;
- (void)setCurrentTime:(double)time;
- (void)setUpdateInterval:(double)interval;
- (void)startObservingTime;
- (void)stopObservingTime;
@end

@implementation TSKAVPlayerTimeController

- (TSKAVPlayerTimeController)initWithPlayerController:(id)controller
{
  if (!controller)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerTimeController initWithPlayerController:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerTimeController.m"), 40, @"Invalid parameter not satisfying: %s", "playerController != nil"}];
  }

  v9.receiver = self;
  v9.super_class = TSKAVPlayerTimeController;
  v7 = [(TSKAVPlayerTimeController *)&v9 init];
  if (v7)
  {
    v7->mPlayerController = controller;
    [(TSKAVPlayerTimeController *)v7 setUpdateInterval:1.0];
    [(TSKAVPlayerController *)v7->mPlayerController addObserver:v7 forKeyPath:@"player.currentItem.status" options:4 context:TSKAVPlayerTimeControllerPlayerItemStatusObserverContext];
    v7->mObservingPlayerStatus = 1;
  }

  return v7;
}

- (void)dealloc
{
  if (self->mObservingPlayerStatus)
  {
    [(TSKAVPlayerController *)self->mPlayerController removeObserver:self forKeyPath:@"player.currentItem.status" context:TSKAVPlayerTimeControllerPlayerItemStatusObserverContext];
  }

  if (self->mTimeObserver)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerTimeController dealloc]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerTimeController.m"), 56, @"expected nil value for '%s'", "mTimeObserver"}];
  }

  v5.receiver = self;
  v5.super_class = TSKAVPlayerTimeController;
  [(TSKAVPlayerTimeController *)&v5 dealloc];
}

- (void)startObservingTime
{
  if (self->mTimeObserver)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerTimeController startObservingTime]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerTimeController.m"), 67, @"expected nil value for '%s'", "mTimeObserver"}];
  }

  [(TSKAVPlayerTimeController *)self p_createTimeObserver];

  [(TSKAVPlayerTimeController *)self p_setTimeValuesWithoutScrubbing];
}

- (void)stopObservingTime
{
  [(TSKAVPlayerTimeController *)self p_teardownTimeObserver];

  [(TSKAVPlayerTimeController *)self p_setTimeValuesWithoutScrubbing];
}

- (void)p_createTimeObserver
{
  if (self->mTimeObserver)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerTimeController p_createTimeObserver]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerTimeController.m"), 84, @"expected nil value for '%s'", "mTimeObserver"}];
  }

  player = [(TSKAVPlayerController *)[(TSKAVPlayerTimeController *)self playerController] player];
  CMTimeMakeWithSeconds(&v10, self->mUpdateInterval, 90000);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__TSKAVPlayerTimeController_p_createTimeObserver__block_invoke;
  v9[3] = &unk_279D47C40;
  v9[4] = self;
  v6 = [(AVPlayer *)player addPeriodicTimeObserverForInterval:&v10 queue:MEMORY[0x277D85CD0] usingBlock:v9];
  self->mTimeObserver = v6;
  if (!v6)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerTimeController p_createTimeObserver]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerTimeController.m"), 90, @"invalid nil value for '%s'", "mTimeObserver"}];
  }
}

- (void)p_teardownTimeObserver
{
  if (self->mTimeObserver || (v3 = [MEMORY[0x277D6C290] currentHandler], v4 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSKAVPlayerTimeController p_teardownTimeObserver]"), objc_msgSend(v3, "handleFailureInFunction:file:lineNumber:description:", v4, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerTimeController.m"), 95, @"invalid nil value for '%s'", "mTimeObserver"), self->mTimeObserver))
  {
    [[(TSKAVPlayerController *)[(TSKAVPlayerTimeController *)self playerController] player] removeTimeObserver:self->mTimeObserver];

    self->mTimeObserver = 0;
  }
}

- (void)p_setTimeValuesWithoutScrubbing
{
  [(TSKAVPlayerTimeController *)self willChangeValueForKey:@"absoluteCurrentTime"];
  [(TSKAVPlayerController *)[(TSKAVPlayerTimeController *)self playerController] absoluteCurrentTime];
  self->mAbsoluteCurrentTime = v3;
  [(TSKAVPlayerTimeController *)self didChangeValueForKey:@"absoluteCurrentTime"];
  [(TSKAVPlayerTimeController *)self willChangeValueForKey:@"currentTime"];
  [(TSKAVPlayerController *)[(TSKAVPlayerTimeController *)self playerController] currentTime];
  self->mCurrentTime = v4;
  [(TSKAVPlayerTimeController *)self didChangeValueForKey:@"currentTime"];
  [(TSKAVPlayerTimeController *)self willChangeValueForKey:@"remainingTime"];
  [(TSKAVPlayerController *)[(TSKAVPlayerTimeController *)self playerController] remainingTime];
  self->mRemainingTime = v5;

  [(TSKAVPlayerTimeController *)self didChangeValueForKey:@"remainingTime"];
}

- (void)setUpdateInterval:(double)interval
{
  if (self->mUpdateInterval != interval)
  {
    if (interval < 0.0166666675)
    {
      interval = 0.0166666675;
    }

    self->mUpdateInterval = interval;
    if (self->mTimeObserver)
    {
      [(TSKAVPlayerTimeController *)self p_teardownTimeObserver];
      [(TSKAVPlayerTimeController *)self p_createTimeObserver];

      [(TSKAVPlayerTimeController *)self p_setTimeValuesWithoutScrubbing];
    }
  }
}

- (void)setAbsoluteCurrentTime:(double)time
{
  self->mAbsoluteCurrentTime = time;
  [(TSKAVPlayerTimeController *)self p_beginScrubbingIfNeeded];
  mUpdateInterval = self->mUpdateInterval;
  mPlayerController = self->mPlayerController;
  mAbsoluteCurrentTime = self->mAbsoluteCurrentTime;

  [(TSKAVPlayerController *)mPlayerController scrubToTime:mAbsoluteCurrentTime withTolerance:mUpdateInterval];
}

- (void)setCurrentTime:(double)time
{
  self->mCurrentTime = time;
  [(TSKAVPlayerTimeController *)self p_beginScrubbingIfNeeded];
  mUpdateInterval = self->mUpdateInterval;
  [(TSKAVPlayerController *)self->mPlayerController startTime];
  v7 = v6 + time;
  mPlayerController = self->mPlayerController;

  [(TSKAVPlayerController *)mPlayerController scrubToTime:v7 withTolerance:mUpdateInterval];
}

- (void)p_beginScrubbingIfNeeded
{
  v4[1] = *MEMORY[0x277D85DE8];
  playerController = [(TSKAVPlayerTimeController *)self playerController];
  if (![(TSKAVPlayerController *)playerController isScrubbing])
  {
    [(TSKAVPlayerController *)playerController beginScrubbing];
    v4[0] = *MEMORY[0x277CBE640];
    -[TSKAVPlayerTimeController performSelector:withObject:afterDelay:inModes:](self, "performSelector:withObject:afterDelay:inModes:", sel_p_endScrubbing, 0, [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1], 0.0);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (TSKAVPlayerTimeControllerPlayerItemStatusObserverContext == context)
  {
    if ([(AVPlayerItem *)[[(TSKAVPlayerController *)[(TSKAVPlayerTimeController *)self playerController:path] player] currentItem] status]== AVPlayerItemStatusReadyToPlay)
    {

      [(TSKAVPlayerTimeController *)self p_setTimeValuesWithoutScrubbing];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSKAVPlayerTimeController;
    [(TSKAVPlayerTimeController *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end