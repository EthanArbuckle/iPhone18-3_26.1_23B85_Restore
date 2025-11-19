@interface TSKAVPlayerController
- (BOOL)p_canFastForward;
- (BOOL)p_canFastReverse;
- (TSKAVPlayerController)init;
- (TSKAVPlayerController)initWithPlayer:(id)a3 delegate:(id)a4;
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
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_applicationDidResignActive;
- (void)p_applyVolumeToPlayerItem;
- (void)p_playbackDidFailWithError:(id)a3;
- (void)p_playerItemDidPlayToEndTime:(id)a3;
- (void)p_startObservingClosedCaptionDisplayEnabled;
- (void)p_stopObservingClosedCaptionDisplayEnabled;
- (void)p_updateClosedCaptionDisplayEnabled;
- (void)playerItemDidPlayToEndTimeAtRate:(float)a3;
- (void)scrubToTime:(double)a3 withTolerance:(double)a4 completionHandler:(id)a5;
- (void)seekBackwardByOneFrame;
- (void)seekForwardByOneFrame;
- (void)seekToBeginning;
- (void)seekToEnd;
- (void)setEndTime:(double)a3;
- (void)setFastForwarding:(BOOL)a3;
- (void)setFastReversing:(BOOL)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setRepeatMode:(int64_t)a3;
- (void)setStartTime:(double)a3;
- (void)setVolume:(float)a3;
- (void)teardown;
@end

@implementation TSKAVPlayerController

- (TSKAVPlayerController)initWithPlayer:(id)a3 delegate:(id)a4
{
  if (!a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController initWithPlayer:delegate:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 59, @"Invalid parameter not satisfying: %s", "player != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TSKAVPlayerController;
  v9 = [(TSKAVPlayerController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->mRepeatMode = 0;
    v9->mVolume = 1.0;
    v9->mDelegate = a4;
    v11 = a3;
    v10->mPlayer = v11;
    [(AVPlayer *)v11 setActionAtItemEnd:2];
    [(AVPlayer *)v10->mPlayer addObserver:v10 forKeyPath:@"currentItem" options:7 context:TSKAVPlayerControllerAVPlayerCurrentItemObserverContext];
    [(AVPlayer *)v10->mPlayer addObserver:v10 forKeyPath:@"rate" options:7 context:TSKAVPlayerControllerAVPlayerRateObserverContext];
    [(TSKAVPlayerController *)v10 p_startObservingClosedCaptionDisplayEnabled];
  }

  return v10;
}

- (TSKAVPlayerController)init
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController init]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 82, @"Do not call method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Do not call method", "-[TSKAVPlayerController init]"), 0}]);
}

- (void)dealloc
{
  if (self->mDelegate)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 88, @"-teardown must be called before dealloc"}];
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
      v4 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController teardown]"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 107, @"player controller should not be playing when it is told to teardown"}];
    }

    [(TSKAVPlayerController *)self p_stopObservingClosedCaptionDisplayEnabled];
    v6 = [(TSKAVPlayerController *)self player];
    [(AVPlayer *)v6 setRate:0.0];
    v7 = [(AVPlayer *)v6 currentItem];
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 removeObserver:self name:*MEMORY[0x277CE60C0] object:v8];
    }

    [(AVPlayer *)v6 removeObserver:self forKeyPath:@"currentItem" context:TSKAVPlayerControllerAVPlayerCurrentItemObserverContext];
    [(AVPlayer *)v6 removeObserver:self forKeyPath:@"rate" context:TSKAVPlayerControllerAVPlayerRateObserverContext];
    [(AVPlayer *)v6 replaceCurrentItemWithPlayerItem:0];

    self->mDelegate = 0;
  }
}

- (double)duration
{
  v3 = [[(TSKAVPlayerController *)self player] currentItem];
  if (!v3)
  {
    return NAN;
  }

  memset(&v8[1], 0, sizeof(CMTime));
  [(AVPlayerItem *)v3 duration];
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
  v2 = [[(TSKAVPlayerController *)self player] currentItem];
  if (!v2)
  {
    return NAN;
  }

  memset(&v4[1], 0, sizeof(CMTime));
  [(AVPlayerItem *)v2 duration];
  if (0 >> 96 != 1)
  {
    return NAN;
  }

  v4[0] = v4[1];
  return CMTimeGetSeconds(v4);
}

- (double)startTime
{
  v2 = [[(TSKAVPlayerController *)self player] currentItem];
  if (!v2)
  {
    return NAN;
  }

  memset(&v4[1], 0, sizeof(CMTime));
  [(AVPlayerItem *)v2 reversePlaybackEndTime];
  result = 0.0;
  if (0 >> 96 == 1)
  {
    v4[0] = v4[1];
    return CMTimeGetSeconds(v4);
  }

  return result;
}

- (void)setStartTime:(double)a3
{
  v4 = [[(TSKAVPlayerController *)self player] currentItem];
  if (v4)
  {
    v5 = v4;
    memset(&v10, 0, sizeof(v10));
    CMTimeMakeWithSeconds(&v10, a3, 90000);
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
  v2 = [[(TSKAVPlayerController *)self player] currentItem];
  if (!v2)
  {
    return NAN;
  }

  v3 = v2;
  memset(&v6[1], 0, sizeof(CMTime));
  [(AVPlayerItem *)v2 forwardPlaybackEndTime];
  if (0 >> 96 == 1)
  {
    v6[0] = v6[1];
  }

  else
  {
    v5 = [(AVPlayerItem *)v3 asset];
    if (v5)
    {
      [(AVAsset *)v5 duration];
    }

    else
    {
      memset(v6, 0, 24);
    }
  }

  return CMTimeGetSeconds(v6);
}

- (void)setEndTime:(double)a3
{
  v4 = [[(TSKAVPlayerController *)self player] currentItem];
  if (v4)
  {
    v5 = v4;
    memset(&v10, 0, sizeof(v10));
    CMTimeMakeWithSeconds(&v10, a3, 90000);
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

- (void)setRepeatMode:(int64_t)a3
{
  if (self->mRepeatMode != a3)
  {
    self->mRepeatMode = a3;
    v4 = [(TSKAVPlayerController *)self player];
    if (self->mRepeatMode != 2)
    {
      v5 = v4;
      [(AVPlayer *)v4 rate];
      if (*&v6 < 0.0)
      {
        LODWORD(v6) = 1.0;

        [(AVPlayer *)v5 setRate:v6];
      }
    }
  }
}

- (void)setVolume:(float)a3
{
  if (self->mVolume != a3)
  {
    self->mVolume = a3;
    [(TSKAVPlayerController *)self p_applyVolumeToPlayerItem];
  }
}

- (void)p_applyVolumeToPlayerItem
{
  v27 = *MEMORY[0x277D85DE8];
  [(TSKAVPlayerController *)self volume];
  v4 = v3;
  v5 = [[(TSKAVPlayerController *)self player] currentItem];
  if (v5)
  {
    v6 = v5;
    if (v4 == 1.0)
    {
      v17 = 0;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CE6538]);
      v7 = [(AVPlayerItem *)v6 asset];
      v8 = [(AVAsset *)v7 tracksWithMediaType:*MEMORY[0x277CE5E48]];
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
  v3 = [[(TSKAVPlayerController *)self player] currentItem];
  if (v3)
  {
    v4 = v3;
    if ([(AVPlayerItem *)v3 status]== AVPlayerItemStatusReadyToPlay)
    {
      [(AVPlayerItem *)v4 currentTime];
      self->_absoluteCurrentTime = fmax(CMTimeGetSeconds(&time), 0.0);
    }
  }

  return self->_absoluteCurrentTime;
}

- (double)currentTime
{
  v3 = [[(TSKAVPlayerController *)self player] currentItem];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    if ([(AVPlayerItem *)v3 status]== AVPlayerItemStatusReadyToPlay)
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
  v3 = [[(TSKAVPlayerController *)self player] currentItem];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    if ([(AVPlayerItem *)v3 status]== AVPlayerItemStatusReadyToPlay)
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
      v5 = [(TSKAVPlayerController *)self player];
      [(AVPlayer *)v5 rate];
      self->mRateBeforeScrubbing = v6;

      [(AVPlayer *)v5 setRate:0.0];
    }
  }
}

- (void)scrubToTime:(double)a3 withTolerance:(double)a4 completionHandler:(id)a5
{
  if (![(TSKAVPlayerController *)self isScrubbing])
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController scrubToTime:withTolerance:completionHandler:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 416, @"scrubbed to time when not in a scrubbing operation"}];
  }

  v11 = [(TSKAVPlayerController *)self player];
  CMTimeMakeWithSeconds(&v14, a3, 90000);
  CMTimeMakeWithSeconds(&v13, a4, 90000);
  CMTimeMakeWithSeconds(&v12, a4, 90000);
  [(AVPlayer *)v11 seekToTime:&v14 toleranceBefore:&v13 toleranceAfter:&v12 completionHandler:a5];
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
      v7 = [(TSKAVPlayerController *)self player];
      v8 = [(AVPlayer *)v7 currentItem];
      if (!v8)
      {
        *&v9 = self->mRateBeforeScrubbing;
LABEL_20:
        [(AVPlayer *)v7 setRate:v9];
        [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
        return;
      }

      v10 = v8;
      memset(&v19, 0, sizeof(v19));
      [(AVPlayerItem *)v8 forwardPlaybackEndTime];
      if (0 >> 96 == 1)
      {
        v11 = [(TSKAVPlayerController *)self player];
        if (v11)
        {
          [(AVPlayer *)v11 currentTime];
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
        v13 = [(TSKAVPlayerController *)self player];
        if (v13)
        {
          [(AVPlayer *)v13 currentTime];
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
  v3 = [[(TSKAVPlayerController *)self player] currentItem];
  v4 = v3;
  if (v3 && (memset(&v9, 0, sizeof(v9)), [(AVPlayerItem *)v3 forwardPlaybackEndTime], 0 >> 96 == 1))
  {
    v5 = [(TSKAVPlayerController *)self player];
    if (v5)
    {
      [(AVPlayer *)v5 currentTime];
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
  v3 = [[(TSKAVPlayerController *)self player] currentItem];
  v4 = v3;
  if (v3 && (memset(&v9, 0, sizeof(v9)), [(AVPlayerItem *)v3 reversePlaybackEndTime], 0 >> 96 == 1))
  {
    v5 = [(TSKAVPlayerController *)self player];
    if (v5)
    {
      [(AVPlayer *)v5 currentTime];
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
  v2 = [(TSKAVPlayerController *)self player];
  v3 = [(AVPlayer *)v2 currentItem];
  if (v3)
  {
    [(AVPlayerItem *)v3 reversePlaybackEndTime];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  [(AVPlayer *)v2 seekToTime:v4];
}

- (void)seekToEnd
{
  v2 = [(TSKAVPlayerController *)self player];
  v3 = [(AVPlayer *)v2 currentItem];
  if (v3)
  {
    [(AVPlayerItem *)v3 forwardPlaybackEndTime];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  [(AVPlayer *)v2 seekToTime:v4];
}

- (void)setPlaying:(BOOL)a3
{
  if (self->mPlaying != a3)
  {
    v19 = v3;
    v20 = v4;
    v5 = a3;
    self->mPlaying = a3;
    v7 = [(TSKAVPlayerController *)self player];
    v8 = v7;
    if (v5)
    {
      [(AVPlayer *)v7 rate];
      if (*&v9 == 0.0)
      {
        v10 = [(AVPlayer *)v8 currentItem];
        v11 = v10;
        memset(&v18[1], 0, sizeof(CMTime));
        if (v10)
        {
          [(AVPlayerItem *)v10 currentTime];
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
  v3 = [(TSKAVPlayerController *)self player];
  v4 = [(AVPlayer *)v3 currentItem];
  v5 = [(AVPlayerItem *)v4 canPlayFastReverse];
  if (v5)
  {
    [(AVPlayer *)v3 rate];
    if (v6 == 0.0)
    {
      memset(&v12, 0, sizeof(v12));
      if (v4)
      {
        [(AVPlayerItem *)v4 currentTime];
      }

      memset(&v11, 0, sizeof(v11));
      [(TSKAVPlayerController *)self startTime];
      CMTimeMakeWithSeconds(&v11, v7, 90000);
      time1 = v12;
      v9 = v11;
      LOBYTE(v5) = CMTimeCompare(&time1, &v9) > 0;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)setFastReversing:(BOOL)a3
{
  if (self->mFastReversing != a3)
  {
    if (a3)
    {
      if ([(TSKAVPlayerController *)self p_canFastReverse])
      {
        self->mFastReversing = 1;
        v4 = [(TSKAVPlayerController *)self player];
        LODWORD(v5) = -2.0;
        [(AVPlayer *)v4 setRate:v5];

        [(TSKAVPlayerController *)self setFastForwarding:0];
      }
    }

    else
    {
      self->mFastReversing = 0;
      if (![(TSKAVPlayerController *)self isFastForwarding])
      {
        v6 = [(TSKAVPlayerController *)self isPlaying];
        v7 = [(TSKAVPlayerController *)self player];
        if (v6)
        {
          LODWORD(v8) = 1.0;
        }

        else
        {
          v8 = 0.0;
        }

        [(AVPlayer *)v7 setRate:v8];
      }
    }
  }
}

- (BOOL)p_canFastForward
{
  v3 = [(TSKAVPlayerController *)self player];
  v4 = [(AVPlayer *)v3 currentItem];
  v5 = [(AVPlayerItem *)v4 canPlayFastForward];
  if (v5)
  {
    [(AVPlayer *)v3 rate];
    if (v6 == 0.0)
    {
      memset(&v12, 0, sizeof(v12));
      if (v4)
      {
        [(AVPlayerItem *)v4 currentTime];
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
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)setFastForwarding:(BOOL)a3
{
  if (self->mFastForwarding != a3)
  {
    if (a3)
    {
      if ([(TSKAVPlayerController *)self p_canFastForward])
      {
        self->mFastForwarding = 1;
        v4 = [(TSKAVPlayerController *)self player];
        LODWORD(v5) = 2.0;
        [(AVPlayer *)v4 setRate:v5];

        [(TSKAVPlayerController *)self setFastReversing:0];
      }
    }

    else
    {
      self->mFastForwarding = 0;
      if (![(TSKAVPlayerController *)self isFastReversing])
      {
        v6 = [(TSKAVPlayerController *)self isPlaying];
        v7 = [(TSKAVPlayerController *)self player];
        if (v6)
        {
          LODWORD(v8) = 1.0;
        }

        else
        {
          v8 = 0.0;
        }

        [(AVPlayer *)v7 setRate:v8];
      }
    }
  }
}

- (void)p_startObservingClosedCaptionDisplayEnabled
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_p_closedCaptioningStatusDidChange_ name:*MEMORY[0x277D76458] object:0];

  [(TSKAVPlayerController *)self p_updateClosedCaptionDisplayEnabled];
}

- (void)p_stopObservingClosedCaptionDisplayEnabled
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D76458];

  [v3 removeObserver:self name:v4 object:0];
}

- (void)p_updateClosedCaptionDisplayEnabled
{
  IsClosedCaptioningEnabled = UIAccessibilityIsClosedCaptioningEnabled();
  v4 = [(TSKAVPlayerController *)self player];

  [(AVPlayer *)v4 setClosedCaptionDisplayEnabled:IsClosedCaptioningEnabled];
}

- (void)playerItemDidPlayToEndTimeAtRate:(float)a3
{
  v4 = self;
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v5 = self;
  v6 = [(TSKAVPlayerController *)self repeatMode];
  if (v6)
  {
    if (v6 == 2)
    {
      if (a3 >= 0.0)
      {
        [(TSKAVPlayerController *)self endTime];
      }

      else
      {
        [(TSKAVPlayerController *)self startTime];
      }

      memset(&v19, 0, sizeof(v19));
      CMTimeMakeWithSeconds(&v19, v8, 90000);
      v10 = [(TSKAVPlayerController *)self player];
      *&v11 = -a3;
      v18 = v19;
      v16 = *MEMORY[0x277CC0898];
      v17 = *(MEMORY[0x277CC0898] + 16);
      [(AVPlayer *)v10 setRate:&v18 time:&v16 atHostTime:v11];
    }

    else if (v6 == 1)
    {
      if (a3 >= 0.0)
      {
        [(TSKAVPlayerController *)self startTime];
      }

      else
      {
        [(TSKAVPlayerController *)self endTime];
      }

      memset(&v19, 0, sizeof(v19));
      CMTimeMakeWithSeconds(&v19, v7, 90000);
      v12 = [[(TSKAVPlayerController *)self player] currentItem];
      v18 = v19;
      v16 = *MEMORY[0x277CC08F0];
      v17 = *(MEMORY[0x277CC08F0] + 16);
      v14 = v16;
      v15 = v17;
      [(AVPlayerItem *)v12 seekToTime:&v18 toleranceBefore:&v16 toleranceAfter:&v14];
    }
  }

  else
  {
    v9 = self;
    [(TSKAVPlayerController *)self setPlaying:0];
    [(TSKAVPlayerController *)self setFastReversing:0];
    [(TSKAVPlayerController *)self setFastForwarding:0];
    if (a3 > 0.0)
    {
      [(TSKAVPlayerControllerDelegate *)[(TSKAVPlayerController *)self delegate] playbackDidStopForPlayerController:self];
    }
  }
}

- (void)p_playerItemDidPlayToEndTime:(id)a3
{
  [[(TSKAVPlayerController *)self player] rate];

  [(TSKAVPlayerController *)self playerItemDidPlayToEndTimeAtRate:?];
}

- (void)p_playbackDidFailWithError:(id)a3
{
  v5 = [(TSKAVPlayerController *)self delegate];

  [(TSKAVPlayerControllerDelegate *)v5 playerController:self playbackDidFailWithError:a3];
}

- (void)p_applicationDidResignActive
{
  [(TSKAVPlayerController *)self setPlaying:0];
  [(TSKAVPlayerController *)self setFastReversing:0];
  [(TSKAVPlayerController *)self setFastForwarding:0];
  v3 = [(TSKAVPlayerController *)self delegate];

  [(TSKAVPlayerControllerDelegate *)v3 playbackDidStopForPlayerController:self];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  if (TSKAVPlayerControllerAVPlayerCurrentItemObserverContext == a6)
  {
    v12 = [a5 objectForKey:*MEMORY[0x277CCA300]];
    if (v12)
    {
      v13 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 removeObserver:self name:*MEMORY[0x277CE60C0] object:v13];
      }
    }

    v14 = [a5 objectForKey:*MEMORY[0x277CCA2F0]];
    if (v14)
    {
      v15 = v14;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![(TSKAVPlayerController *)self canPlay])
        {
          v16 = [v15 asset];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __72__TSKAVPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke;
          v36[3] = &unk_279D47708;
          v36[4] = v16;
          v36[5] = self;
          [v16 loadValuesAsynchronouslyForKeys:&unk_287DDCAE0 completionHandler:v36];
        }

        [v11 addObserver:self selector:sel_p_playerItemDidPlayToEndTime_ name:*MEMORY[0x277CE60C0] object:v15];
        [(TSKAVPlayerController *)self p_applyVolumeToPlayerItem];
      }
    }
  }

  else
  {
    if (TSKAVPlayerControllerAVPlayerStatusObserverContext == a6)
    {
      if ([[(TSKAVPlayerController *)self player] status]!= AVPlayerStatusFailed)
      {
        return;
      }

      v17 = [[(TSKAVPlayerController *)self player] error];
      if (!v17)
      {
        v18 = [MEMORY[0x277D6C290] currentHandler];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController observeValueForKeyPath:ofObject:change:context:]"];
        [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 801, @"invalid nil value for '%s'", "playerError"}];
      }
    }

    else
    {
      if (TSKAVPlayerControllerAVPlayerItemStatusObserverContext != a6)
      {
        if (TSKAVPlayerControllerAVPlayerRateObserverContext == a6)
        {
          objc_opt_class();
          [a5 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
          v23 = TSUDynamicCast();
          v24 = 0.0;
          v25 = 0.0;
          if (v23)
          {
            [v23 floatValue];
            v25 = v26;
          }

          objc_opt_class();
          [a5 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
          v27 = TSUDynamicCast();
          if (v27 && ([v27 floatValue], v24 = v28, v25 == 0.0) && v28 != 0.0)
          {
            v29 = [(TSKAVPlayerController *)self player];
            [+[TSKMoviePlaybackRegistry sharedMoviePlaybackRegistry](TSKMoviePlaybackRegistry "sharedMoviePlaybackRegistry")];
            [v11 addObserver:self selector:sel_p_applicationDidResignActive name:*MEMORY[0x277D76768] object:0];
            if (!self->mIsObservingStatus)
            {
              [(AVPlayer *)v29 addObserver:self forKeyPath:@"status" options:4 context:TSKAVPlayerControllerAVPlayerStatusObserverContext];
              [(AVPlayer *)v29 addObserver:self forKeyPath:@"currentItem.status" options:4 context:TSKAVPlayerControllerAVPlayerItemStatusObserverContext];
              self->mIsObservingStatus = 1;
            }

            [(AVPlayer *)v29 rate];
            if (v30 == 0.0 && self->mIsObservingStatus)
            {
              [(AVPlayer *)v29 removeObserver:self forKeyPath:@"currentItem.status" context:TSKAVPlayerControllerAVPlayerItemStatusObserverContext];
              [(AVPlayer *)v29 removeObserver:self forKeyPath:@"status" context:TSKAVPlayerControllerAVPlayerStatusObserverContext];
              self->mIsObservingStatus = 0;
            }
          }

          else if (v25 != 0.0 && v24 == 0.0)
          {
            v31 = [(TSKAVPlayerController *)self player];
            [v11 removeObserver:self name:*MEMORY[0x277D76768] object:0];
            if (self->mIsObservingStatus)
            {
              [(AVPlayer *)v31 removeObserver:self forKeyPath:@"currentItem.status" context:TSKAVPlayerControllerAVPlayerItemStatusObserverContext];
              [(AVPlayer *)v31 removeObserver:self forKeyPath:@"status" context:TSKAVPlayerControllerAVPlayerStatusObserverContext];
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
          [(TSKAVPlayerController *)&v34 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
        }

        return;
      }

      v20 = [[(TSKAVPlayerController *)self player] currentItem];
      if ([(AVPlayerItem *)v20 status]!= AVPlayerItemStatusFailed)
      {
        return;
      }

      v17 = [(AVPlayerItem *)v20 error];
      if (!v17)
      {
        v21 = [MEMORY[0x277D6C290] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAVPlayerController observeValueForKeyPath:ofObject:change:context:]"];
        [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAVPlayerController.m"), 812, @"invalid nil value for '%s'", "playerItemError"}];
      }
    }

    [(TSKAVPlayerController *)self p_playbackDidFailWithError:v17];
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