@interface ISTouchLivePhotoPlaybackFilter
- (int64_t)_nextPlaybackRequestID;
- (void)_handleDisplayLink;
- (void)didPerformChanges;
- (void)reset;
- (void)setTouchActive:(BOOL)a3;
@end

@implementation ISTouchLivePhotoPlaybackFilter

- (void)reset
{
  if ([(ISLivePhotoPlaybackFilter *)self playIsSticky])
  {
    v3.receiver = self;
    v3.super_class = ISTouchLivePhotoPlaybackFilter;
    [(ISLivePhotoPlaybackFilter *)&v3 reset];
  }
}

- (void)_handleDisplayLink
{
  v3 = [(ISTouchLivePhotoPlaybackFilter *)self _playbackStartDate];
  [v3 timeIntervalSinceNow];
  v5 = v4;

  v6[1] = 3221225472;
  v6[0] = MEMORY[0x277D85DD0];
  v6[2] = __52__ISTouchLivePhotoPlaybackFilter__handleDisplayLink__block_invoke;
  v6[3] = &unk_279A2A438;
  v6[4] = self;
  *&v6[5] = v5 / -0.1 + 1.0;
  [(ISObservable *)self performChanges:v6];
}

- (void)didPerformChanges
{
  v6.receiver = self;
  v6.super_class = ISTouchLivePhotoPlaybackFilter;
  [(ISObservable *)&v6 didPerformChanges];
  v3 = [(ISTouchLivePhotoPlaybackFilter *)self isTouchActive];
  [(ISLivePhotoPlaybackFilter *)self hintProgress];
  if (v3)
  {
    if (v4 >= 1.0)
    {
      if ([(ISLivePhotoPlaybackFilter *)self state]== 1)
      {
        if ([(ISLivePhotoPlaybackFilter *)self isPlaybackDisabled])
        {
          v5 = 1;
        }

        else
        {
          v5 = 2;
        }
      }

      else
      {
        v5 = 2 * ([(ISLivePhotoPlaybackFilter *)self state]== 2);
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  [(ISLivePhotoPlaybackFilter *)self setState:v5];
}

- (void)setTouchActive:(BOOL)a3
{
  if (self->_touchActive != a3)
  {
    self->_touchActive = a3;
    if (a3)
    {
      v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.1];
      [(ISTouchLivePhotoPlaybackFilter *)self _setPlaybackStartDate:v4];
      objc_initWeak(&location, self);
      v5 = [ISDisplayLink alloc];
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __49__ISTouchLivePhotoPlaybackFilter_setTouchActive___block_invoke;
      v11 = &unk_279A29FD0;
      objc_copyWeak(&v12, &location);
      v6 = [(ISDisplayLink *)v5 initWithUpdateHandler:&v8 completionHandler:0];
      [(ISDisplayLink *)v6 setPreferredFramesPerSecond:60, v8, v9, v10, v11];
      [(ISTouchLivePhotoPlaybackFilter *)self _setDisplayLink:v6];
      [(ISDisplayLink *)v6 start];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      v7 = [(ISTouchLivePhotoPlaybackFilter *)self _displayLink];
      [v7 stop];

      [(ISTouchLivePhotoPlaybackFilter *)self _setDisplayLink:0];
    }
  }
}

void __49__ISTouchLivePhotoPlaybackFilter_setTouchActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDisplayLink];
}

- (int64_t)_nextPlaybackRequestID
{
  v3 = [(ISTouchLivePhotoPlaybackFilter *)self _playbackRequestID];
  [(ISTouchLivePhotoPlaybackFilter *)self _setPlaybackReaquestID:v3 + 1];
  return v3 + 1;
}

@end