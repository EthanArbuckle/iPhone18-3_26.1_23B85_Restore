@interface TSKAVPlayerController
- (BOOL)p_canFastForward;
- (BOOL)p_canFastReverse;
- (TSKAVPlayerController)init;
- (TSKAVPlayerController)initWithPlayer:(id)player delegate:(id)delegate;
- (double)absoluteCurrentTime;
- (double)absoluteDuration;
- (double)currentTime;
- (double)duration;
- (double)endTime;
- (double)remainingTime;
- (double)startTime;
- (void)beginScrubbing;
- (void)dealloc;
- (void)endScrubbing;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_applicationDidResignActive;
- (void)p_applyVolumeToPlayerItem;
- (void)p_playbackDidFailWithError:(id)error;
- (void)p_playerItemDidPlayToEndTime:(id)time;
- (void)p_startObservingClosedCaptionDisplayEnabled;
- (void)p_stopObservingClosedCaptionDisplayEnabled;
- (void)p_updateClosedCaptionDisplayEnabled;
- (void)playerItemDidPlayToEndTimeAtRate:(float)rate;
- (void)scrubToTime:(double)time withTolerance:(double)tolerance completionHandler:(id)handler;
- (void)seekBackwardByOneFrame;
- (void)seekForwardByOneFrame;
- (void)seekToBeginning;
- (void)seekToEnd;
- (void)setEndTime:(double)time;
- (void)setFastForwarding:(BOOL)forwarding;
- (void)setFastReversing:(BOOL)reversing;
- (void)setPlaying:(BOOL)playing;
- (void)setRepeatMode:(int64_t)mode;
- (void)setStartTime:(double)time;
- (void)setVolume:(float)volume;
- (void)teardown;
@end

@implementation TSKAVPlayerController

- (TSKAVPlayerController)initWithPlayer:(id)player delegate:(id)delegate
{
  if (!player)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController initWithPlayer:delegate:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 59, @"Invalid parameter not satisfying: %s", "player != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TSKAVPlayerController;
  v9 = [(TSKAVPlayerController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->mRepeatMode = 0;
    v9->mVolume = 1.0;
    v9->mDelegate = delegate;
    playerCopy = player;
    v10->mPlayer = playerCopy;
    [(AVPlayer *)playerCopy setActionAtItemEnd:2];
    [(AVPlayer *)v10->mPlayer addObserver:v10 forKeyPath:@"currentItem" options:7 context:TSKAVPlayerControllerAVPlayerCurrentItemObserverContext];
    [(AVPlayer *)v10->mPlayer addObserver:v10 forKeyPath:@"rate" options:7 context:TSKAVPlayerControllerAVPlayerRateObserverContext];
    [(TSKAVPlayerController *)v10 p_startObservingClosedCaptionDisplayEnabled];
  }

  return v10;
}

- (TSKAVPlayerController)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController init]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 82, @"Do not call method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Do not call method", "-[TSKAVPlayerController init]"), 0}]);
}

- (void)dealloc
{
  if (self->mDelegate)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController dealloc]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 88, @"-teardown must be called before dealloc"}];
  }

  v5.receiver = self;
  v5.super_class = TSKAVPlayerController;
  [(TSKAVPlayerController *)&v5 dealloc];
}

- (void)teardown
{
  mAdditionalReferences = self->mAdditionalReferences;
  if (mAdditionalReferences)
  {
    self->mAdditionalReferences = mAdditionalReferences - 1;
  }

  else
  {
    if ([(TSKAVPlayerController *)self isPlaying]|| [(TSKAVPlayerController *)self isFastReversing]|| [(TSKAVPlayerController *)self isFastForwarding])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController teardown]"];
      [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 107, @"player controller should not be playing when it is told to teardown"}];
    }

    [(TSKAVPlayerController *)self p_stopObservingClosedCaptionDisplayEnabled];
    player = [(TSKAVPlayerController *)self player];
    [(AVPlayer *)player setRate:0.0];
    currentItem = [(AVPlayer *)player currentItem];
    if (currentItem)
    {
      v8 = currentItem;
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self name:*MEMORY[0x277CE60C0] object:v8];
    }

    [(AVPlayer *)player removeObserver:self forKeyPath:@"currentItem" context:TSKAVPlayerControllerAVPlayerCurrentItemObserverContext];
    [(AVPlayer *)player removeObserver:self forKeyPath:@"rate" context:TSKAVPlayerControllerAVPlayerRateObserverContext];
    [(AVPlayer *)player replaceCurrentItemWithPlayerItem:0];

    self->mDelegate = 0;
  }
}

- (double)duration
{
  currentItem = [[(TSKAVPlayerController *)self player] currentItem];
  if (!currentItem)
  {
    return NAN;
  }

  memset(&v8[1], 0, sizeof(CMTime));
  [(AVPlayerItem *)currentItem duration];
  if (0 >> 96 != 1)
  {
    return NAN;
  }

  [(TSKAVPlayerController *)self endTime];
  v8[0] = v8[1];
  v5 = fmin(v4, CMTimeGetSeconds(v8));
  [(TSKAVPlayerController *)self startTime];
  return fmax(v5 - v6, 0.0);
}

- (double)absoluteDuration
{
  currentItem = [[(TSKAVPlayerController *)self player] currentItem];
  if (!currentItem)
  {
    return NAN;
  }

  memset(&v4[1], 0, sizeof(CMTime));
  [(AVPlayerItem *)currentItem duration];
  if (0 >> 96 != 1)
  {
    return NAN;
  }

  v4[0] = v4[1];
  return CMTimeGetSeconds(v4);
}

- (double)startTime
{
  currentItem = [[(TSKAVPlayerController *)self player] currentItem];
  if (!currentItem)
  {
    return NAN;
  }

  memset(&v4[1], 0, sizeof(CMTime));
  [(AVPlayerItem *)currentItem reversePlaybackEndTime];
  result = 0.0;
  if (0 >> 96 == 1)
  {
    v4[0] = v4[1];
    return CMTimeGetSeconds(v4);
  }

  return result;
}

- (void)setStartTime:(double)time
{
  currentItem = [[(TSKAVPlayerController *)self player] currentItem];
  if (currentItem)
  {
    v5 = currentItem;
    memset(&v10, 0, sizeof(v10));
    CMTimeMakeWithSeconds(&v10, time, 90000);
    memset(&v9, 0, sizeof(v9));
    [(AVPlayerItem *)v5 currentTime];
    time1 = v9;
    time2 = v10;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      time1 = v10;
      time2 = **&MEMORY[0x277CC08F0];
      v6 = time2;
      [(AVPlayerItem *)v5 seekToTime:&time1 toleranceBefore:&time2 toleranceAfter:&v6];
    }

    time1 = v10;
    [(AVPlayerItem *)v5 setReversePlaybackEndTime:&time1];
  }
}

- (double)endTime
{
  currentItem = [[(TSKAVPlayerController *)self player] currentItem];
  if (!currentItem)
  {
    return NAN;
  }

  v3 = currentItem;
  memset(&v6[1], 0, sizeof(CMTime));
  [(AVPlayerItem *)currentItem forwardPlaybackEndTime];
  if (0 >> 96 == 1)
  {
    v6[0] = v6[1];
  }

  else
  {
    asset = [(AVPlayerItem *)v3 asset];
    if (asset)
    {
      [(AVAsset *)asset duration];
    }

    else
    {
      memset(v6, 0, 24);
    }
  }

  return CMTimeGetSeconds(v6);
}

- (void)setEndTime:(double)time
{
  currentItem = [[(TSKAVPlayerController *)self player] currentItem];
  if (currentItem)
  {
    v5 = currentItem;
    memset(&v10, 0, sizeof(v10));
    CMTimeMakeWithSeconds(&v10, time, 90000);
    memset(&v9, 0, sizeof(v9));
    [(AVPlayerItem *)v5 currentTime];
    time1 = v9;
    time2 = v10;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      time1 = v10;
      time2 = **&MEMORY[0x277CC08F0];
      v6 = time2;
      [(AVPlayerItem *)v5 seekToTime:&time1 toleranceBefore:&time2 toleranceAfter:&v6];
    }

    time1 = v10;
    [(AVPlayerItem *)v5 setForwardPlaybackEndTime:&time1];
  }
}

- (void)setRepeatMode:(int64_t)mode
{
  if (self->mRepeatMode != mode)
  {
    self->mRepeatMode = mode;
    player = [(TSKAVPlayerController *)self player];
    if (self->mRepeatMode != 2)
    {
      v5 = player;
      [(AVPlayer *)player rate];
      if (*&v6 < 0.0)
      {
        LODWORD(v6) = 1.0;

        [(AVPlayer *)v5 setRate:v6];
      }
    }
  }
}

- (void)setVolume:(float)volume
{
  if (self->mVolume != volume)
  {
    self->mVolume = volume;
    [(TSKAVPlayerController *)self p_applyVolumeToPlayerItem];
  }
}

- (void)p_applyVolumeToPlayerItem
{
  v27 = *MEMORY[0x277D85DE8];
  [(TSKAVPlayerController *)self volume];
  v4 = v3;
  currentItem = [[(TSKAVPlayerController *)self player] currentItem];
  if (currentItem)
  {
    v6 = currentItem;
    if (v4 == 1.0)
    {
      v17 = 0;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CE6538]);
      asset = [(AVPlayerItem *)v6 asset];
      v8 = [(AVAsset *)asset tracksWithMediaType:*MEMORY[0x277CE5E48]];
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](v8, "count")}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        v19 = *MEMORY[0x277CC08F0];
        v13 = *(MEMORY[0x277CC08F0] + 16);
        do
        {
          v14 = 0;
          do
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v15 = *(*(&v22 + 1) + 8 * v14);
            v16 = objc_alloc_init(MEMORY[0x277CE6540]);
            [v16 setTrackID:{objc_msgSend(v15, "trackID")}];
            v20 = v19;
            v21 = v13;
            [v16 setVolume:&v20 atTime:{COERCE_DOUBLE(__PAIR64__(DWORD1(v19), LODWORD(v4)))}];
            [v9 addObject:v16];

            ++v14;
          }

          while (v11 != v14);
          v11 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v11);
      }

      v17 = v18;
      [v18 setInputParameters:v9];
    }

    [(AVPlayerItem *)v6 setAudioMix:v17];
  }
}

- (double)absoluteCurrentTime
{
  self->_absoluteCurrentTime = 0.0;
  currentItem = [[(TSKAVPlayerController *)self player] currentItem];
  if (currentItem)
  {
    v4 = currentItem;
    if ([(AVPlayerItem *)currentItem status]== AVPlayerItemStatusReadyToPlay)
    {
      [(AVPlayerItem *)v4 currentTime];
      self->_absoluteCurrentTime = fmax(CMTimeGetSeconds(&time), 0.0);
    }
  }

  return self->_absoluteCurrentTime;
}

- (double)currentTime
{
  currentItem = [[(TSKAVPlayerController *)self player] currentItem];
  v4 = 0.0;
  if (currentItem)
  {
    v5 = currentItem;
    if ([(AVPlayerItem *)currentItem status]== AVPlayerItemStatusReadyToPlay)
    {
      [(AVPlayerItem *)v5 currentTime];
      CMTimeGetSeconds(&time);
      [(TSKAVPlayerController *)self startTime];
      [(TSKAVPlayerController *)self endTime];
      TSUClamp();
      return v6;
    }
  }

  return v4;
}

- (double)remainingTime
{
  currentItem = [[(TSKAVPlayerController *)self player] currentItem];
  v4 = 0.0;
  if (currentItem)
  {
    v5 = currentItem;
    if ([(AVPlayerItem *)currentItem status]== AVPlayerItemStatusReadyToPlay)
    {
      [(TSKAVPlayerController *)self endTime];
      v7 = v6;
      [(AVPlayerItem *)v5 currentTime];
      return fmax(v7 - fmax(CMTimeGetSeconds(&time), 0.0), 0.0);
    }
  }

  return v4;
}

- (void)beginScrubbing
{
  mScrubbingCount = self->mScrubbingCount;
  if (mScrubbingCount)
  {
    self->mScrubbingCount = mScrubbingCount + 1;
  }

  else
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    v4 = self->mScrubbingCount;
    self->mScrubbingCount = v4 + 1;
    if (!v4)
    {
      player = [(TSKAVPlayerController *)self player];
      [(AVPlayer *)player rate];
      self->mRateBeforeScrubbing = v6;

      [(AVPlayer *)player setRate:0.0];
    }
  }
}

- (void)scrubToTime:(double)time withTolerance:(double)tolerance completionHandler:(id)handler
{
  if (![(TSKAVPlayerController *)self isScrubbing])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController scrubToTime:withTolerance:completionHandler:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 416, @"scrubbed to time when not in a scrubbing operation"}];
  }

  player = [(TSKAVPlayerController *)self player];
  CMTimeMakeWithSeconds(&v14, time, 90000);
  CMTimeMakeWithSeconds(&v13, tolerance, 90000);
  CMTimeMakeWithSeconds(&v12, tolerance, 90000);
  [(AVPlayer *)player seekToTime:&v14 toleranceBefore:&v13 toleranceAfter:&v12 completionHandler:handler];
}

- (void)endScrubbing
{
  mScrubbingCount = self->mScrubbingCount;
  if (mScrubbingCount || (v4 = [MEMORY[0x277D6C290] currentHandler], v5 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSKAVPlayerController endScrubbing]"), objc_msgSend(v4, "handleFailureInFunction:file:lineNumber:description:", v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 423, @"Uneven begin/end scrubbing calls!"), (mScrubbingCount = self->mScrubbingCount) != 0))
  {
    v6 = mScrubbingCount - 1;
    self->mScrubbingCount = v6;
    if (!v6)
    {
      player = [(TSKAVPlayerController *)self player];
      currentItem = [(AVPlayer *)player currentItem];
      if (!currentItem)
      {
        *&v9 = self->mRateBeforeScrubbing;
LABEL_20:
        [(AVPlayer *)player setRate:v9];
        [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
        return;
      }

      v10 = currentItem;
      memset(&v19, 0, sizeof(v19));
      [(AVPlayerItem *)currentItem forwardPlaybackEndTime];
      if (0 >> 96 == 1)
      {
        player2 = [(TSKAVPlayerController *)self player];
        if (player2)
        {
          [(AVPlayer *)player2 currentTime];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        time2 = v19;
        v12 = CMTimeCompare(&time1, &time2) >> 31;
      }

      else
      {
        LOBYTE(v12) = 1;
      }

      memset(&time1, 0, sizeof(time1));
      [(AVPlayerItem *)v10 reversePlaybackEndTime];
      if ((time1.flags & 0x1D) == 1)
      {
        player3 = [(TSKAVPlayerController *)self player];
        if (player3)
        {
          [(AVPlayer *)player3 currentTime];
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
        }

        v16 = time1;
        v14 = CMTimeCompare(&time2, &v16) < 1;
      }

      else
      {
        v14 = 0;
      }

      *&v9 = self->mRateBeforeScrubbing;
      if ((*&v9 <= 0.0) | v12 & 1 && (*&v9 >= 0.0 || !v14))
      {
        goto LABEL_20;
      }

      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      *&v15 = self->mRateBeforeScrubbing;
      [(TSKAVPlayerController *)self playerItemDidPlayToEndTimeAtRate:v15];
    }
  }
}

- (void)seekForwardByOneFrame
{
  currentItem = [[(TSKAVPlayerController *)self player] currentItem];
  v4 = currentItem;
  if (currentItem && (memset(&v9, 0, sizeof(v9)), [(AVPlayerItem *)currentItem forwardPlaybackEndTime], 0 >> 96 == 1))
  {
    player = [(TSKAVPlayerController *)self player];
    if (player)
    {
      [(AVPlayer *)player currentTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v7 = v9;
    v6 = CMTimeCompare(&time1, &v7) >= 0;
  }

  else
  {
    v6 = 0;
  }

  if ([(AVPlayerItem *)v4 canStepForward])
  {
    if (!v6)
    {
      [(AVPlayerItem *)v4 stepByCount:1];
    }
  }
}

- (void)seekBackwardByOneFrame
{
  currentItem = [[(TSKAVPlayerController *)self player] currentItem];
  v4 = currentItem;
  if (currentItem && (memset(&v9, 0, sizeof(v9)), [(AVPlayerItem *)currentItem reversePlaybackEndTime], 0 >> 96 == 1))
  {
    player = [(TSKAVPlayerController *)self player];
    if (player)
    {
      [(AVPlayer *)player currentTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v7 = v9;
    v6 = CMTimeCompare(&time1, &v7) < 1;
  }

  else
  {
    v6 = 0;
  }

  if ([(AVPlayerItem *)v4 canStepBackward])
  {
    if (!v6)
    {
      [(AVPlayerItem *)v4 stepByCount:-1];
    }
  }
}

- (void)seekToBeginning
{
  player = [(TSKAVPlayerController *)self player];
  currentItem = [(AVPlayer *)player currentItem];
  if (currentItem)
  {
    [(AVPlayerItem *)currentItem reversePlaybackEndTime];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  [(AVPlayer *)player seekToTime:v4];
}

- (void)seekToEnd
{
  player = [(TSKAVPlayerController *)self player];
  currentItem = [(AVPlayer *)player currentItem];
  if (currentItem)
  {
    [(AVPlayerItem *)currentItem forwardPlaybackEndTime];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  [(AVPlayer *)player seekToTime:v4];
}

- (void)setPlaying:(BOOL)playing
{
  if (self->mPlaying != playing)
  {
    v19 = v3;
    v20 = v4;
    playingCopy = playing;
    self->mPlaying = playing;
    player = [(TSKAVPlayerController *)self player];
    v8 = player;
    if (playingCopy)
    {
      [(AVPlayer *)player rate];
      if (*&v9 == 0.0)
      {
        currentItem = [(AVPlayer *)v8 currentItem];
        v11 = currentItem;
        memset(&v18[1], 0, sizeof(CMTime));
        if (currentItem)
        {
          [(AVPlayerItem *)currentItem currentTime];
        }

        memset(v18, 0, 24);
        [(TSKAVPlayerController *)self startTime];
        CMTimeMakeWithSeconds(v18, v12, 90000);
        memset(&v17, 0, sizeof(v17));
        [(TSKAVPlayerController *)self endTime];
        CMTimeMakeWithSeconds(&v17, v13 + -0.01, 90000);
        time1 = v18[1];
        time2 = v18[0];
        if (CMTimeCompare(&time1, &time2) < 0 || (time1 = v18[1], time2 = v17, CMTimeCompare(&time1, &time2) >= 1))
        {
          time1 = v18[0];
          time2 = **&MEMORY[0x277CC08F0];
          v14 = time2;
          [(AVPlayerItem *)v11 seekToTime:&time1 toleranceBefore:&time2 toleranceAfter:&v14];
          [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
        }
      }

      LODWORD(v9) = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    [(AVPlayer *)v8 setRate:v9];
    [(TSKAVPlayerController *)self setFastReversing:0];
    [(TSKAVPlayerController *)self setFastForwarding:0];
  }
}

- (BOOL)p_canFastReverse
{
  player = [(TSKAVPlayerController *)self player];
  currentItem = [(AVPlayer *)player currentItem];
  canPlayFastReverse = [(AVPlayerItem *)currentItem canPlayFastReverse];
  if (canPlayFastReverse)
  {
    [(AVPlayer *)player rate];
    if (v6 == 0.0)
    {
      memset(&v12, 0, sizeof(v12));
      if (currentItem)
      {
        [(AVPlayerItem *)currentItem currentTime];
      }

      memset(&v11, 0, sizeof(v11));
      [(TSKAVPlayerController *)self startTime];
      CMTimeMakeWithSeconds(&v11, v7, 90000);
      time1 = v12;
      v9 = v11;
      LOBYTE(canPlayFastReverse) = CMTimeCompare(&time1, &v9) > 0;
    }

    else
    {
      LOBYTE(canPlayFastReverse) = 1;
    }
  }

  return canPlayFastReverse;
}

- (void)setFastReversing:(BOOL)reversing
{
  if (self->mFastReversing != reversing)
  {
    if (reversing)
    {
      if ([(TSKAVPlayerController *)self p_canFastReverse])
      {
        self->mFastReversing = 1;
        player = [(TSKAVPlayerController *)self player];
        LODWORD(v5) = -2.0;
        [(AVPlayer *)player setRate:v5];

        [(TSKAVPlayerController *)self setFastForwarding:0];
      }
    }

    else
    {
      self->mFastReversing = 0;
      if (![(TSKAVPlayerController *)self isFastForwarding])
      {
        isPlaying = [(TSKAVPlayerController *)self isPlaying];
        player2 = [(TSKAVPlayerController *)self player];
        if (isPlaying)
        {
          LODWORD(v8) = 1.0;
        }

        else
        {
          v8 = 0.0;
        }

        [(AVPlayer *)player2 setRate:v8];
      }
    }
  }
}

- (BOOL)p_canFastForward
{
  player = [(TSKAVPlayerController *)self player];
  currentItem = [(AVPlayer *)player currentItem];
  canPlayFastForward = [(AVPlayerItem *)currentItem canPlayFastForward];
  if (canPlayFastForward)
  {
    [(AVPlayer *)player rate];
    if (v6 == 0.0)
    {
      memset(&v12, 0, sizeof(v12));
      if (currentItem)
      {
        [(AVPlayerItem *)currentItem currentTime];
      }

      memset(&v11, 0, sizeof(v11));
      [(TSKAVPlayerController *)self endTime];
      CMTimeMakeWithSeconds(&v11, v7, 90000);
      time1 = v12;
      v9 = v11;
      return CMTimeCompare(&time1, &v9) >> 31;
    }

    else
    {
      LOBYTE(canPlayFastForward) = 1;
    }
  }

  return canPlayFastForward;
}

- (void)setFastForwarding:(BOOL)forwarding
{
  if (self->mFastForwarding != forwarding)
  {
    if (forwarding)
    {
      if ([(TSKAVPlayerController *)self p_canFastForward])
      {
        self->mFastForwarding = 1;
        player = [(TSKAVPlayerController *)self player];
        LODWORD(v5) = 2.0;
        [(AVPlayer *)player setRate:v5];

        [(TSKAVPlayerController *)self setFastReversing:0];
      }
    }

    else
    {
      self->mFastForwarding = 0;
      if (![(TSKAVPlayerController *)self isFastReversing])
      {
        isPlaying = [(TSKAVPlayerController *)self isPlaying];
        player2 = [(TSKAVPlayerController *)self player];
        if (isPlaying)
        {
          LODWORD(v8) = 1.0;
        }

        else
        {
          v8 = 0.0;
        }

        [(AVPlayer *)player2 setRate:v8];
      }
    }
  }
}

- (void)p_startObservingClosedCaptionDisplayEnabled
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_p_closedCaptioningStatusDidChange_ name:*MEMORY[0x277D76458] object:0];

  [(TSKAVPlayerController *)self p_updateClosedCaptionDisplayEnabled];
}

- (void)p_stopObservingClosedCaptionDisplayEnabled
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D76458];

  [defaultCenter removeObserver:self name:v4 object:0];
}

- (void)p_updateClosedCaptionDisplayEnabled
{
  IsClosedCaptioningEnabled = UIAccessibilityIsClosedCaptioningEnabled();
  player = [(TSKAVPlayerController *)self player];

  [(AVPlayer *)player setClosedCaptionDisplayEnabled:IsClosedCaptioningEnabled];
}

- (void)playerItemDidPlayToEndTimeAtRate:(float)rate
{
  selfCopy = self;
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  selfCopy2 = self;
  repeatMode = [(TSKAVPlayerController *)self repeatMode];
  if (repeatMode)
  {
    if (repeatMode == 2)
    {
      if (rate >= 0.0)
      {
        [(TSKAVPlayerController *)self endTime];
      }

      else
      {
        [(TSKAVPlayerController *)self startTime];
      }

      memset(&v19, 0, sizeof(v19));
      CMTimeMakeWithSeconds(&v19, v8, 90000);
      player = [(TSKAVPlayerController *)self player];
      *&v11 = -rate;
      v18 = v19;
      v16 = *MEMORY[0x277CC0898];
      v17 = *(MEMORY[0x277CC0898] + 16);
      [(AVPlayer *)player setRate:&v18 time:&v16 atHostTime:v11];
    }

    else if (repeatMode == 1)
    {
      if (rate >= 0.0)
      {
        [(TSKAVPlayerController *)self startTime];
      }

      else
      {
        [(TSKAVPlayerController *)self endTime];
      }

      memset(&v19, 0, sizeof(v19));
      CMTimeMakeWithSeconds(&v19, v7, 90000);
      currentItem = [[(TSKAVPlayerController *)self player] currentItem];
      v18 = v19;
      v16 = *MEMORY[0x277CC08F0];
      v17 = *(MEMORY[0x277CC08F0] + 16);
      v14 = v16;
      v15 = v17;
      [(AVPlayerItem *)currentItem seekToTime:&v18 toleranceBefore:&v16 toleranceAfter:&v14];
    }
  }

  else
  {
    selfCopy3 = self;
    [(TSKAVPlayerController *)self setPlaying:0];
    [(TSKAVPlayerController *)self setFastReversing:0];
    [(TSKAVPlayerController *)self setFastForwarding:0];
    if (rate > 0.0)
    {
      [(TSKAVPlayerControllerDelegate *)[(TSKAVPlayerController *)self delegate] playbackDidStopForPlayerController:self];
    }
  }
}

- (void)p_playerItemDidPlayToEndTime:(id)time
{
  [[(TSKAVPlayerController *)self player] rate];

  [(TSKAVPlayerController *)self playerItemDidPlayToEndTimeAtRate:?];
}

- (void)p_playbackDidFailWithError:(id)error
{
  delegate = [(TSKAVPlayerController *)self delegate];

  [(TSKAVPlayerControllerDelegate *)delegate playerController:self playbackDidFailWithError:error];
}

- (void)p_applicationDidResignActive
{
  [(TSKAVPlayerController *)self setPlaying:0];
  [(TSKAVPlayerController *)self setFastReversing:0];
  [(TSKAVPlayerController *)self setFastForwarding:0];
  delegate = [(TSKAVPlayerController *)self delegate];

  [(TSKAVPlayerControllerDelegate *)delegate playbackDidStopForPlayerController:self];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  if (TSKAVPlayerControllerAVPlayerCurrentItemObserverContext == context)
  {
    v12 = [change objectForKey:*MEMORY[0x277CCA300]];
    if (v12)
    {
      v13 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [defaultCenter removeObserver:self name:*MEMORY[0x277CE60C0] object:v13];
      }
    }

    v14 = [change objectForKey:*MEMORY[0x277CCA2F0]];
    if (v14)
    {
      v15 = v14;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![(TSKAVPlayerController *)self canPlay])
        {
          asset = [v15 asset];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __72__TSKAVPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke;
          v36[3] = &unk_279D47708;
          v36[4] = asset;
          v36[5] = self;
          [asset loadValuesAsynchronouslyForKeys:&unk_287DDCAE0 completionHandler:v36];
        }

        [defaultCenter addObserver:self selector:sel_p_playerItemDidPlayToEndTime_ name:*MEMORY[0x277CE60C0] object:v15];
        [(TSKAVPlayerController *)self p_applyVolumeToPlayerItem];
      }
    }
  }

  else
  {
    if (TSKAVPlayerControllerAVPlayerStatusObserverContext == context)
    {
      if ([[(TSKAVPlayerController *)self player] status]!= AVPlayerStatusFailed)
      {
        return;
      }

      error = [[(TSKAVPlayerController *)self player] error];
      if (!error)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController observeValueForKeyPath:ofObject:change:context:]"];
        [currentHandler handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 801, @"invalid nil value for '%s'", "playerError"}];
      }
    }

    else
    {
      if (TSKAVPlayerControllerAVPlayerItemStatusObserverContext != context)
      {
        if (TSKAVPlayerControllerAVPlayerRateObserverContext == context)
        {
          objc_opt_class();
          [change objectForKeyedSubscript:*MEMORY[0x277CCA300]];
          v23 = TSUDynamicCast();
          v24 = 0.0;
          v25 = 0.0;
          if (v23)
          {
            [v23 floatValue];
            v25 = v26;
          }

          objc_opt_class();
          [change objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v27 = TSUDynamicCast();
          if (v27 && ([v27 floatValue], v24 = v28, v25 == 0.0) && v28 != 0.0)
          {
            player = [(TSKAVPlayerController *)self player];
            [+[TSKMoviePlaybackRegistry sharedMoviePlaybackRegistry](TSKMoviePlaybackRegistry "sharedMoviePlaybackRegistry")];
            [defaultCenter addObserver:self selector:sel_p_applicationDidResignActive name:*MEMORY[0x277D76768] object:0];
            if (!self->mIsObservingStatus)
            {
              [(AVPlayer *)player addObserver:self forKeyPath:@"status" options:4 context:TSKAVPlayerControllerAVPlayerStatusObserverContext];
              [(AVPlayer *)player addObserver:self forKeyPath:@"currentItem.status" options:4 context:TSKAVPlayerControllerAVPlayerItemStatusObserverContext];
              self->mIsObservingStatus = 1;
            }

            [(AVPlayer *)player rate];
            if (v30 == 0.0 && self->mIsObservingStatus)
            {
              [(AVPlayer *)player removeObserver:self forKeyPath:@"currentItem.status" context:TSKAVPlayerControllerAVPlayerItemStatusObserverContext];
              [(AVPlayer *)player removeObserver:self forKeyPath:@"status" context:TSKAVPlayerControllerAVPlayerStatusObserverContext];
              self->mIsObservingStatus = 0;
            }
          }

          else if (v25 != 0.0 && v24 == 0.0)
          {
            player2 = [(TSKAVPlayerController *)self player];
            [defaultCenter removeObserver:self name:*MEMORY[0x277D76768] object:0];
            if (self->mIsObservingStatus)
            {
              [(AVPlayer *)player2 removeObserver:self forKeyPath:@"currentItem.status" context:TSKAVPlayerControllerAVPlayerItemStatusObserverContext];
              [(AVPlayer *)player2 removeObserver:self forKeyPath:@"status" context:TSKAVPlayerControllerAVPlayerStatusObserverContext];
              self->mIsObservingStatus = 0;
            }

            [+[TSKMoviePlaybackRegistry sharedMoviePlaybackRegistry](TSKMoviePlaybackRegistry "sharedMoviePlaybackRegistry")];
            if (([(TSKAVPlayerController *)self isPlaying]|| [(TSKAVPlayerController *)self isFastReversing]|| [(TSKAVPlayerController *)self isFastForwarding]) && ![(TSKAVPlayerController *)self isScrubbing])
            {
              Main = CFRunLoopGetMain();
              v33 = *MEMORY[0x277CBF048];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __72__TSKAVPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
              block[3] = &unk_279D46770;
              block[4] = self;
              CFRunLoopPerformBlock(Main, v33, block);
              CFRunLoopWakeUp(Main);
            }
          }
        }

        else
        {
          v34.receiver = self;
          v34.super_class = TSKAVPlayerController;
          [(TSKAVPlayerController *)&v34 observeValueForKeyPath:path ofObject:object change:change context:context];
        }

        return;
      }

      currentItem = [[(TSKAVPlayerController *)self player] currentItem];
      if ([(AVPlayerItem *)currentItem status]!= AVPlayerItemStatusFailed)
      {
        return;
      }

      error = [(AVPlayerItem *)currentItem error];
      if (!error)
      {
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController observeValueForKeyPath:ofObject:change:context:]"];
        [currentHandler2 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 812, @"invalid nil value for '%s'", "playerItemError"}];
      }
    }

    [(TSKAVPlayerController *)self p_playbackDidFailWithError:error];
  }
}

void __72__TSKAVPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  Main = CFRunLoopGetMain();
  v3 = *MEMORY[0x277CBF048];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__TSKAVPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
  v4[3] = &unk_279D47708;
  v5 = *(a1 + 32);
  CFRunLoopPerformBlock(Main, v3, v4);
  CFRunLoopWakeUp(Main);
}

uint64_t __72__TSKAVPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [objc_msgSend(objc_msgSend(*(a1 + 40) "player")];
  if (v2 == result)
  {
    result = [*(a1 + 32) statusOfValueForKey:@"playable" error:0];
    if (result == 2)
    {
      result = [*(a1 + 32) isPlayable];
      if (result)
      {
        [*(a1 + 40) willChangeValueForKey:@"canPlay"];
        *(*(a1 + 40) + 48) = 1;
        v4 = *(a1 + 40);

        return [v4 didChangeValueForKey:@"canPlay"];
      }
    }
  }

  return result;
}

uint64_t __72__TSKAVPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setPlaying:0];
  [*(a1 + 32) setFastReversing:0];
  [*(a1 + 32) setFastForwarding:0];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);

  return [v2 playbackDidStopForPlayerController:v3];
}

@end