@interface SVMediaPlaybackController
- (AVPlayer)currentlyPlaying;
- (SVMediaPlaybackController)init;
- (void)registerPlayer:(id)a3;
- (void)unregisterPlayer:(id)a3;
- (void)updateCurrentlyPlaying:(id)a3;
@end

@implementation SVMediaPlaybackController

- (SVMediaPlaybackController)init
{
  v6.receiver = self;
  v6.super_class = SVMediaPlaybackController;
  v2 = [(SVMediaPlaybackController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    timeControlStatusObservers = v2->_timeControlStatusObservers;
    v2->_timeControlStatusObservers = v3;
  }

  return v2;
}

- (void)updateCurrentlyPlaying:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_currentlyPlaying);
  [WeakRetained pause];

  [(SVMediaPlaybackController *)self setCurrentlyPlaying:v5];
}

- (void)registerPlayer:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [SVKeyValueObserver alloc];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __44__SVMediaPlaybackController_registerPlayer___block_invoke;
  v11 = &unk_279BC5D60;
  objc_copyWeak(&v12, &location);
  v6 = [(SVKeyValueObserver *)v5 initWithKeyPath:@"timeControlStatus" ofObject:v4 withOptions:1 change:&v8];
  v7 = [(SVMediaPlaybackController *)self timeControlStatusObservers:v8];
  [v7 setObject:v6 forKey:v4];

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

- (void)unregisterPlayer:(id)a3
{
  v4 = a3;
  v5 = [(SVMediaPlaybackController *)self timeControlStatusObservers];
  [v5 removeObjectForKey:v4];
}

- (AVPlayer)currentlyPlaying
{
  WeakRetained = objc_loadWeakRetained(&self->_currentlyPlaying);

  return WeakRetained;
}

@end