@interface OKVideoPlayerController
- (OKVideoPlayerController)initWithPlayerLayer:(id)a3;
- (double)currentTime;
- (double)duration;
- (id)description;
- (void)_cancelSeeking;
- (void)_playerItemDidReachEndNotification:(id)a3;
- (void)_playerItemFailedToPlayToEndNotification:(id)a3;
- (void)_resetPlayer;
- (void)_resetPlayerItem;
- (void)_setState:(unint64_t)a3;
- (void)_setupPlayer;
- (void)_updateBufferingStateWithState:(unint64_t)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)play;
- (void)playPlayerItem:(id)a3;
- (void)setCurrentTime:(double)a3;
- (void)setDelegate:(id)a3;
- (void)stop;
@end

@implementation OKVideoPlayerController

- (OKVideoPlayerController)initWithPlayerLayer:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKVideoPlayerController;
  v4 = [(OKVideoPlayerController *)&v6 init];
  if (v4)
  {
    v4->_playerLayer = a3;
    v4->_videoPlayerControllerSerialQueue = dispatch_queue_create("Video player controller queue", 0);
    [(OKVideoPlayerController *)v4 _setupPlayer];
  }

  return v4;
}

- (void)dealloc
{
  [(OKVideoPlayerController *)self setDelegate:0];
  seekToTimeSemaphore = self->_seekToTimeSemaphore;
  if (seekToTimeSemaphore)
  {
    dispatch_semaphore_signal(seekToTimeSemaphore);
  }

  [(AVPlayer *)self->_player cancelPendingPrerolls];
  [(AVPlayerItem *)self->_playerItem cancelPendingSeeks];
  [(OKVideoPlayerController *)self _resetPlayer];
  [(OKVideoPlayerController *)self _resetPlayerItem];
  v4 = self->_seekToTimeSemaphore;
  if (v4)
  {
    dispatch_release(v4);
    self->_seekToTimeSemaphore = 0;
  }

  videoPlayerControllerSerialQueue = self->_videoPlayerControllerSerialQueue;
  if (videoPlayerControllerSerialQueue)
  {
    dispatch_release(videoPlayerControllerSerialQueue);
    self->_videoPlayerControllerSerialQueue = 0;
  }

  playerLayer = self->_playerLayer;
  if (playerLayer)
  {

    self->_playerLayer = 0;
  }

  v7.receiver = self;
  v7.super_class = OKVideoPlayerController;
  [(OKVideoPlayerController *)&v7 dealloc];
}

- (void)setDelegate:(id)a3
{
  delegate = self->_delegate;
  p_delegate = &self->_delegate;
  if (delegate != a3)
  {
    objc_storeWeak(p_delegate, a3);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xF7 | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xEF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xDF | v10;
  }
}

- (double)duration
{
  v2 = [(AVPlayerItem *)self->_playerItem asset];
  if (v2)
  {
    [(AVAsset *)v2 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (double)currentTime
{
  playerItem = self->_playerItem;
  if (playerItem)
  {
    [(AVPlayerItem *)playerItem currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (void)setCurrentTime:(double)a3
{
  [(OKVideoPlayerController *)self _cancelSeeking];
  videoPlayerControllerSerialQueue = self->_videoPlayerControllerSerialQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__OKVideoPlayerController_setCurrentTime___block_invoke;
  v6[3] = &unk_279C903C0;
  v6[4] = self;
  *&v6[5] = a3;
  dispatch_async(videoPlayerControllerSerialQueue, v6);
}

intptr_t __42__OKVideoPlayerController_setCurrentTime___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    dispatch_release(v2);
    *(*(a1 + 32) + 80) = 0;
  }

  *(*(a1 + 32) + 80) = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 32) + 40);
  CMTimeMakeWithSeconds(&v6, *(a1 + 40), 600);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__OKVideoPlayerController_setCurrentTime___block_invoke_2;
  v5[3] = &unk_279C8FA38;
  v5[4] = *(a1 + 32);
  [v3 seekToTime:&v6 completionHandler:v5];
  return dispatch_semaphore_wait(*(*(a1 + 32) + 80), 0xFFFFFFFFFFFFFFFFLL);
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  [v3 appendFormat:@"<%@ (%p)> state:", NSStringFromClass(v4), self];
  v5 = [(OKVideoPlayerController *)self state];
  if (v5 <= 3)
  {
    [v3 appendFormat:off_279C919E0[v5]];
  }

  [v3 appendString:@" bufferingState:"];
  bufferingState = self->_bufferingState;
  if ((bufferingState & 8) != 0)
  {
    [v3 appendString:@"full|"];
    bufferingState = self->_bufferingState;
    if ((bufferingState & 4) == 0)
    {
LABEL_5:
      if ((bufferingState & 2) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      [v3 appendString:@"likelyToKeepUp|"];
      if ((self->_bufferingState & 1) == 0)
      {
        return v3;
      }

      goto LABEL_7;
    }
  }

  else if ((bufferingState & 4) == 0)
  {
    goto LABEL_5;
  }

  [v3 appendString:@"stalled|"];
  bufferingState = self->_bufferingState;
  if ((bufferingState & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (bufferingState)
  {
LABEL_7:
    [v3 appendString:@"readyToPlay|"];
  }

  return v3;
}

- (void)_setupPlayer
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_player)
  {
    v3 = objc_alloc_init(MEMORY[0x277CE6598]);
    self->_player = v3;
    [(AVPlayer *)v3 setActionAtItemEnd:1];
    [(AVPlayer *)self->_player setExternalPlaybackVideoGravity:*MEMORY[0x277CE5DD0]];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(OKVideoPlayerController *)self _playerKeysToObserve];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(AVPlayer *)self->_player addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:1 context:&OKVideoControllerPlayerKeyContext];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(AVPlayerLayer *)self->_playerLayer setPlayer:self->_player];
    [(AVPlayerLayer *)self->_playerLayer addObserver:self forKeyPath:@"readyForDisplay" options:1 context:&OKVideoControllerViewerKeyContext];
  }
}

- (void)_resetPlayer
{
  v15 = *MEMORY[0x277D85DE8];
  player = self->_player;
  if (player)
  {
    self->_isReady = 0;
    [(AVPlayer *)player pause];
    [(AVPlayerLayer *)self->_playerLayer removeObserver:self forKeyPath:@"readyForDisplay" context:&OKVideoControllerViewerKeyContext];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(OKVideoPlayerController *)self _playerKeysToObserve];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(AVPlayer *)self->_player removeObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v8++) context:&OKVideoControllerPlayerKeyContext];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    v9 = self->_player;
    if (v9)
    {

      self->_player = 0;
    }
  }
}

- (void)_resetPlayerItem
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_playerItem)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [(OKVideoPlayerController *)self _playerItemKeysToObserve];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(AVPlayerItem *)self->_playerItem removeObserver:self forKeyPath:*(*(&v12 + 1) + 8 * v7++) context:&OKVideoControllerItemKeyContext];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 removeObserver:self name:*MEMORY[0x277CE60C0] object:self->_playerItem];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 removeObserver:self name:*MEMORY[0x277CE60D0] object:self->_playerItem];
    playerItem = self->_playerItem;
    if (playerItem)
    {

      self->_playerItem = 0;
    }

    if (self->_timeObserver)
    {
      [(AVPlayer *)self->_player removeTimeObserver:?];
      timeObserver = self->_timeObserver;
      if (timeObserver)
      {

        self->_timeObserver = 0;
      }
    }
  }
}

- (void)playPlayerItem:(id)a3
{
  if (self->_playerItem != a3)
  {
    v8[8] = v3;
    v8[9] = v4;
    [(OKVideoPlayerController *)self _cancelSeeking];
    videoPlayerControllerSerialQueue = self->_videoPlayerControllerSerialQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__OKVideoPlayerController_playPlayerItem___block_invoke;
    v8[3] = &unk_279C90078;
    v8[4] = self;
    v8[5] = a3;
    dispatch_async(videoPlayerControllerSerialQueue, v8);
  }
}

void __42__OKVideoPlayerController_playPlayerItem___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[6])
  {
    [v2 _resetPlayerItem];
  }

  *(*(a1 + 32) + 48) = *(a1 + 40);
  *(*(a1 + 32) + 88) = 0;
  v3 = *(a1 + 32);
  if (v3[6])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = [v3 _playerItemKeysToObserve];
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      do
      {
        v8 = 0;
        do
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(a1 + 32) + 48) addObserver:*(a1 + 32) forKeyPath:*(*(&v25 + 1) + 8 * v8++) options:1 context:&OKVideoControllerItemKeyContext];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v6);
    }

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:*(a1 + 32) selector:sel__playerItemDidReachEndNotification_ name:*MEMORY[0x277CE60C0] object:*(*(a1 + 32) + 48)];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:*(a1 + 32) selector:sel__playerItemFailedToPlayToEndNotification_ name:*MEMORY[0x277CE60D0] object:*(*(a1 + 32) + 48)];
    v11 = MEMORY[0x277CCAE60];
    v12 = [*(a1 + 40) asset];
    if (v12)
    {
      [v12 duration];
      v13 = v22;
    }

    else
    {
      v13 = 0;
      v21[6] = 0;
      v22 = 0;
      v23 = 0;
    }

    CMTimeMake(&v24, 1, v13);
    v29 = [v11 valueWithCMTime:&v24];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v15 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:*(a1 + 32)];
    v16 = *(a1 + 32);
    v17 = *(v16 + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __42__OKVideoPlayerController_playPlayerItem___block_invoke_2;
    v21[3] = &unk_279C90078;
    v21[4] = v15;
    v21[5] = v16;
    *(*(a1 + 32) + 16) = [v17 addBoundaryTimeObserverForTimes:v14 queue:0 usingBlock:v21];
    v18 = *(*(a1 + 32) + 16);
    v3 = *(a1 + 32);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __42__OKVideoPlayerController_playPlayerItem___block_invoke_3;
  v20[3] = &unk_279C90078;
  v19 = *(a1 + 40);
  v20[4] = v3;
  v20[5] = v19;
  dispatch_async(MEMORY[0x277D85CD0], v20);
}

_BYTE *__42__OKVideoPlayerController_playPlayerItem___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) object];
  if (result)
  {
    v3 = result;
    if (result[24])
    {
      v4 = [result delegate];
      v5 = *(a1 + 40);
      v6 = *(v3 + 6);

      return [v4 videoPlayerController:v5 didStartPlayingItem:v6];
    }
  }

  return result;
}

- (void)_playerItemFailedToPlayToEndNotification:(id)a3
{
  if (self->_state != 3)
  {
    v7[8] = v3;
    v7[9] = v4;
    [(OKVideoPlayerController *)self _setState:3];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__OKVideoPlayerController__playerItemFailedToPlayToEndNotification___block_invoke;
    v7[3] = &unk_279C90078;
    v7[4] = self;
    v7[5] = a3;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

_BYTE *__68__OKVideoPlayerController__playerItemFailedToPlayToEndNotification___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[24] & 4) != 0)
  {
    v3 = [result delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 videoPlayerController:v4 didFailToPlayItem:v5];
  }

  return result;
}

- (void)_playerItemDidReachEndNotification:(id)a3
{
  if (self->_state)
  {
    [(OKVideoPlayerController *)self _setState:0];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __62__OKVideoPlayerController__playerItemDidReachEndNotification___block_invoke;
    v5[3] = &unk_279C90078;
    v5[4] = self;
    v5[5] = a3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

_BYTE *__62__OKVideoPlayerController__playerItemDidReachEndNotification___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[24] & 2) != 0)
  {
    v3 = [result delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 videoPlayerController:v4 didFinishPlayingItem:v5];
  }

  return result;
}

- (void)_setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_state = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37__OKVideoPlayerController__setState___block_invoke;
    v5[3] = &unk_279C903C0;
    v5[4] = self;
    v5[5] = a3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

_BYTE *__37__OKVideoPlayerController__setState___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[24] & 0x10) != 0)
  {
    v3 = [result delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 videoPlayerController:v4 stateDidChange:v5];
  }

  return result;
}

- (void)_updateBufferingStateWithState:(unint64_t)a3
{
  bufferingState = self->_bufferingState;
  if (((bufferingState | a3) & 4) != 0)
  {
    v6 = (bufferingState | a3) & 0xFFFFFFFFFFFFFFF5;
  }

  else
  {
    v6 = ((bufferingState | a3) >> 2) & 2 | bufferingState | a3;
  }

  if (bufferingState != v6)
  {
    v7[6] = v3;
    v7[7] = v4;
    self->_bufferingState = v6;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__OKVideoPlayerController__updateBufferingStateWithState___block_invoke;
    v7[3] = &unk_279C903C0;
    v7[4] = self;
    v7[5] = v6;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

_BYTE *__58__OKVideoPlayerController__updateBufferingStateWithState___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[24] & 0x20) != 0)
  {
    v3 = [result delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 videoPlayerController:v4 bufferingStateDidChange:v5];
  }

  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  videoPlayerControllerSerialQueue = self->_videoPlayerControllerSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__OKVideoPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279C919C0;
  block[7] = a5;
  block[8] = a6;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_async(videoPlayerControllerSerialQueue, block);
}

void __74__OKVideoPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 != &OKVideoControllerItemKeyContext)
  {
    if (v2 != &OKVideoControllerPlayerKeyContext)
    {
      if (v2 != &OKVideoControllerViewerKeyContext)
      {
        v3 = *(a1 + 40);
        v4 = *(a1 + 48);
        v5 = *(a1 + 56);
        v15.receiver = *(a1 + 32);
        v15.super_class = OKVideoPlayerController;
        objc_msgSendSuper2(&v15, sel_observeValueForKeyPath_ofObject_change_context_, v4, v3, v5);
        return;
      }

      if ([*(a1 + 48) isEqualToString:@"readyForDisplay"])
      {
        *(*(a1 + 32) + 88) |= 2uLL;
        v12 = *(a1 + 32);
        if ((*(v12 + 88) & 3) != 0)
        {
          *(v12 + 28) = 1;
          [*(a1 + 32) _updateBufferingStateWithState:1];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __74__OKVideoPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
          block[3] = &unk_279C8E818;
          block[4] = *(a1 + 32);
          v9 = MEMORY[0x277D85CD0];
          v10 = block;
LABEL_20:
          dispatch_async(v9, v10);
          return;
        }
      }

      return;
    }

    if (*(*(a1 + 32) + 40) != *(a1 + 40) || ![*(a1 + 48) isEqualToString:@"status"] || objc_msgSend(objc_msgSend(*(a1 + 56), "objectForKey:", *MEMORY[0x277CCA2F0]), "intValue") != 2)
    {
      return;
    }

    v7 = *(a1 + 32);
LABEL_14:
    v11 = v7[6];

    [v7 _playerItemFailedToPlayToEndNotification:v11];
    return;
  }

  if (*(*(a1 + 32) + 48) != *(a1 + 40))
  {
    return;
  }

  if ([*(a1 + 48) isEqualToString:@"status"])
  {
    v6 = [*(*(a1 + 32) + 48) status];
    v7 = *(a1 + 32);
    if (v6 == 1)
    {
      v7[11] |= 1uLL;
      v8 = *(a1 + 32);
      if ((*(v8 + 88) & 3) == 0)
      {
        return;
      }

      *(v8 + 28) = 1;
      [*(a1 + 32) _updateBufferingStateWithState:1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __74__OKVideoPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v17[3] = &unk_279C8E818;
      v17[4] = *(a1 + 32);
      v9 = MEMORY[0x277D85CD0];
      v10 = v17;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if ([*(a1 + 48) isEqualToString:@"playbackBufferEmpty"])
  {
    if (![objc_msgSend(*(a1 + 56) objectForKey:{*MEMORY[0x277CCA2F0]), "BOOLValue"}])
    {
      return;
    }

    v13 = *(a1 + 32);
    v14 = 4;
  }

  else if ([*(a1 + 48) isEqualToString:@"playbackBufferFull"])
  {
    if (![objc_msgSend(*(a1 + 56) objectForKey:{*MEMORY[0x277CCA2F0]), "BOOLValue"}])
    {
      return;
    }

    v13 = *(a1 + 32);
    v14 = 8;
  }

  else
  {
    if (![*(a1 + 48) isEqualToString:@"playbackLikelyToKeepUp"] || !objc_msgSend(objc_msgSend(*(a1 + 56), "objectForKey:", *MEMORY[0x277CCA2F0]), "BOOLValue"))
    {
      return;
    }

    v13 = *(a1 + 32);
    v14 = 2;
  }

  [v13 _updateBufferingStateWithState:v14];
}

_BYTE *__74__OKVideoPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[24] & 8) != 0)
  {
    v3 = [result delegate];
    v4 = *(a1 + 32);

    return [v3 videoPlayerControllerIsReadyToPlay:v4];
  }

  return result;
}

_BYTE *__74__OKVideoPlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[24] & 8) != 0)
  {
    v3 = [result delegate];
    v4 = *(a1 + 32);

    return [v3 videoPlayerControllerIsReadyToPlay:v4];
  }

  return result;
}

- (void)pause
{
  videoPlayerControllerSerialQueue = self->_videoPlayerControllerSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__OKVideoPlayerController_pause__block_invoke;
  block[3] = &unk_279C8E818;
  block[4] = self;
  dispatch_async(videoPlayerControllerSerialQueue, block);
}

void *__32__OKVideoPlayerController_pause__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[7] | 2) != 2)
  {
    [result _setState:2];
    v3 = *(*(a1 + 32) + 40);

    return [v3 pause];
  }

  return result;
}

- (void)play
{
  if (self->_player)
  {
    state = self->_state;
    if (!state)
    {
      [(OKVideoPlayerController *)self _cancelSeeking];
      videoPlayerControllerSerialQueue = self->_videoPlayerControllerSerialQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __31__OKVideoPlayerController_play__block_invoke;
      block[3] = &unk_279C8E818;
      block[4] = self;
      v5 = block;
      goto LABEL_7;
    }

    if (state != 1 || (self->_bufferingState & 2) != 0)
    {
      videoPlayerControllerSerialQueue = self->_videoPlayerControllerSerialQueue;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __31__OKVideoPlayerController_play__block_invoke_3;
      v6[3] = &unk_279C8E818;
      v6[4] = self;
      v5 = v6;
LABEL_7:
      dispatch_async(videoPlayerControllerSerialQueue, v5);
    }
  }
}

intptr_t __31__OKVideoPlayerController_play__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    dispatch_release(v2);
    *(*(a1 + 32) + 80) = 0;
  }

  *(*(a1 + 32) + 80) = dispatch_semaphore_create(0);
  [*(a1 + 32) _setState:1];
  v3 = *(*(a1 + 32) + 40);
  CMTimeMakeWithSeconds(&v6, 0.0, 600);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__OKVideoPlayerController_play__block_invoke_2;
  v5[3] = &unk_279C8FA38;
  v5[4] = *(a1 + 32);
  [v3 seekToTime:&v6 completionHandler:v5];
  return dispatch_semaphore_wait(*(*(a1 + 32) + 80), 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __31__OKVideoPlayerController_play__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 40) play];
  v2 = *(*(a1 + 32) + 80);

  return dispatch_semaphore_signal(v2);
}

void __31__OKVideoPlayerController_play__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setState:1];
  [*(*(a1 + 32) + 40) play];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__OKVideoPlayerController_play__block_invoke_4;
  block[3] = &unk_279C8E818;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

_BYTE *__31__OKVideoPlayerController_play__block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[24])
  {
    v2 = [result delegate];

    return [v2 videoPlayerController:? didStartPlayingItem:?];
  }

  return result;
}

- (void)_cancelSeeking
{
  if (self->_playerItem)
  {
    seekToTimeSemaphore = self->_seekToTimeSemaphore;
    if (seekToTimeSemaphore)
    {
      dispatch_semaphore_signal(seekToTimeSemaphore);
    }

    videoPlayerControllerSerialQueue = self->_videoPlayerControllerSerialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__OKVideoPlayerController__cancelSeeking__block_invoke;
    block[3] = &unk_279C8E818;
    block[4] = self;
    dispatch_sync(videoPlayerControllerSerialQueue, block);
  }
}

uint64_t __41__OKVideoPlayerController__cancelSeeking__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) cancelPendingPrerolls];
  v2 = *(*(a1 + 32) + 48);

  return [v2 cancelPendingSeeks];
}

- (void)stop
{
  if (self->_player)
  {
    if (self->_isReady)
    {
      [(OKVideoPlayerController *)self _cancelSeeking];
      videoPlayerControllerSerialQueue = self->_videoPlayerControllerSerialQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __31__OKVideoPlayerController_stop__block_invoke;
      block[3] = &unk_279C8E818;
      block[4] = self;
      dispatch_async(videoPlayerControllerSerialQueue, block);
    }
  }
}

intptr_t __31__OKVideoPlayerController_stop__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    dispatch_release(v2);
    *(*(a1 + 32) + 80) = 0;
  }

  *(*(a1 + 32) + 80) = dispatch_semaphore_create(0);
  [*(*(a1 + 32) + 40) pause];
  [*(a1 + 32) _setState:0];
  v3 = *(*(a1 + 32) + 40);
  CMTimeMakeWithSeconds(&v6, 0.0, 600);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__OKVideoPlayerController_stop__block_invoke_2;
  v5[3] = &unk_279C8FA38;
  v5[4] = *(a1 + 32);
  [v3 seekToTime:&v6 completionHandler:v5];
  return dispatch_semaphore_wait(*(*(a1 + 32) + 80), 0xFFFFFFFFFFFFFFFFLL);
}

@end