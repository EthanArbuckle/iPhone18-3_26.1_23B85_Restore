@interface SVMediaPlaybackController
- (AVPlayer)currentlyPlaying;
- (SVMediaPlaybackController)init;
- (void)registerPlayer:(id)player;
- (void)unregisterPlayer:(id)player;
- (void)updateCurrentlyPlaying:(id)playing;
@end

@implementation SVMediaPlaybackController

- (SVMediaPlaybackController)init
{
  v6.receiver = self;
  v6.super_class = SVMediaPlaybackController;
  v2 = [(SVMediaPlaybackController *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    timeControlStatusObservers = v2->_timeControlStatusObservers;
    v2->_timeControlStatusObservers = weakToStrongObjectsMapTable;
  }

  return v2;
}

- (void)updateCurrentlyPlaying:(id)playing
{
  playingCopy = playing;
  WeakRetained = objc_loadWeakRetained(&self->_currentlyPlaying);
  [WeakRetained pause];

  [(SVMediaPlaybackController *)self setCurrentlyPlaying:playingCopy];
}

- (void)registerPlayer:(id)player
{
  playerCopy = player;
  objc_initWeak(&location, self);
  v5 = [SVKeyValueObserver alloc];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __44__SVMediaPlaybackController_registerPlayer___block_invoke;
  v11 = &unk_279BC5D60;
  objc_copyWeak(&v12, &location);
  v6 = [(SVKeyValueObserver *)v5 initWithKeyPath:@"timeControlStatus" ofObject:playerCopy withOptions:1 change:&v8];
  v7 = [(SVMediaPlaybackController *)self timeControlStatusObservers:v8];
  [v7 setObject:v6 forKey:playerCopy];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __44__SVMediaPlaybackController_registerPlayer___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v10 object];
    v5 = [WeakRetained currentlyPlaying];
    v6 = v5;
    if (v4 == v5)
    {
    }

    else
    {
      v7 = [v10 object];
      if ([v7 timeControlStatus] == 1)
      {
      }

      else
      {
        v8 = [v10 object];
        v9 = [v8 timeControlStatus];

        if (v9 != 2)
        {
          goto LABEL_9;
        }
      }

      v4 = [v10 object];
      [WeakRetained updateCurrentlyPlaying:v4];
    }
  }

LABEL_9:
}

- (void)unregisterPlayer:(id)player
{
  playerCopy = player;
  timeControlStatusObservers = [(SVMediaPlaybackController *)self timeControlStatusObservers];
  [timeControlStatusObservers removeObjectForKey:playerCopy];
}

- (AVPlayer)currentlyPlaying
{
  WeakRetained = objc_loadWeakRetained(&self->_currentlyPlaying);

  return WeakRetained;
}

@end