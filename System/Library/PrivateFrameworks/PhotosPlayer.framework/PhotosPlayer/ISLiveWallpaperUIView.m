@interface ISLiveWallpaperUIView
- (ISLiveWallpaperUIView)initWithCoder:(id)a3;
- (ISLiveWallpaperUIView)initWithFrame:(CGRect)a3;
- (void)_ISLiveWallpaperUIViewCommonInitialization;
- (void)_handlePlaybackRecognizer:(id)a3;
- (void)_handleUpdateTimer;
- (void)_updatePlayer;
- (void)dealloc;
- (void)setForce:(double)a3;
- (void)setTouching:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation ISLiveWallpaperUIView

- (void)dealloc
{
  [(NSTimer *)self->_updateTimer invalidate];
  v3.receiver = self;
  v3.super_class = ISLiveWallpaperUIView;
  [(ISLiveWallpaperUIView *)&v3 dealloc];
}

- (void)_updatePlayer
{
  v3 = [(ISLiveWallpaperUIView *)self touching];
  [(ISLiveWallpaperUIView *)self force];
  v5 = v4;
  v6 = [(ISBasePlayerUIView *)self player];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__ISLiveWallpaperUIView__updatePlayer__block_invoke;
  v8[3] = &unk_279A29C80;
  v9 = v6;
  v11 = v3;
  v10 = v5;
  v7 = v6;
  [v7 performChanges:v8];
}

uint64_t __38__ISLiveWallpaperUIView__updatePlayer__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTouching:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setForce:v3];
}

- (void)_handlePlaybackRecognizer:(id)a3
{
  v4 = ([a3 state] - 1) < 2;

  [(ISLiveWallpaperUIView *)self setTouching:v4];
}

- (void)_handleUpdateTimer
{
  [(ISLiveWallpaperUIView *)self force];
  v4 = v3;
  v5 = [(ISLiveWallpaperUIView *)self touching];
  v6 = v4 + 0.25;
  if (!v5)
  {
    v6 = 0.0;
  }

  v7 = fmax(v6, 0.0);
  if (v7 > 400.0)
  {
    v7 = 400.0;
  }

  [(ISLiveWallpaperUIView *)self setForce:v7];
}

- (void)setForce:(double)a3
{
  if (self->_force != a3)
  {
    self->_force = a3;
    [(ISLiveWallpaperUIView *)self _updatePlayer];
  }
}

- (void)setTouching:(BOOL)a3
{
  if (self->_touching != a3)
  {
    self->_touching = a3;
    [(ISLiveWallpaperUIView *)self _updatePlayer];
  }
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ISLiveWallpaperUIView;
  [(ISLiveWallpaperUIView *)&v14 willMoveToWindow:v4];
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x277CBEBB8];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __42__ISLiveWallpaperUIView_willMoveToWindow___block_invoke;
    v11 = &unk_279A29C58;
    objc_copyWeak(&v12, &location);
    v6 = [v5 scheduledTimerWithTimeInterval:1 repeats:&v8 block:0.06];
    [(ISLiveWallpaperUIView *)self setUpdateTimer:v6, v8, v9, v10, v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [(ISLiveWallpaperUIView *)self updateTimer];
    [v7 invalidate];
  }
}

void __42__ISLiveWallpaperUIView_willMoveToWindow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUpdateTimer];
}

- (void)_ISLiveWallpaperUIViewCommonInitialization
{
  [(ISBasePlayerUIView *)self setContentMode:2];
  v7 = dispatch_queue_create("com.apple.livewallpaperplayer", 0);
  v3 = [objc_alloc(MEMORY[0x277CE6598]) initWithDispatchQueue:v7];
  v4 = [(ISBasePlayer *)[ISLiveWallpaperPlayer alloc] initWithVideoPlayer:v3];
  [(ISBasePlayerUIView *)self setPlayer:v4];
  v5 = [[ISTouchingGestureRecognizer alloc] initWithTarget:self action:sel__handlePlaybackRecognizer_];
  [(ISTouchingGestureRecognizer *)v5 setMinimumTouchDuration:0.075];
  [(ISTouchingGestureRecognizer *)v5 setCancelsTouchesInView:0];
  [(ISLiveWallpaperUIView *)self addGestureRecognizer:v5];
  playbackGestureRecognizer = self->_playbackGestureRecognizer;
  self->_playbackGestureRecognizer = &v5->super;
}

- (ISLiveWallpaperUIView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ISLiveWallpaperUIView;
  v3 = [(ISBasePlayerUIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ISLiveWallpaperUIView *)v3 _ISLiveWallpaperUIViewCommonInitialization];
  }

  return v4;
}

- (ISLiveWallpaperUIView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ISLiveWallpaperUIView;
  v3 = [(ISBasePlayerUIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ISLiveWallpaperUIView *)v3 _ISLiveWallpaperUIViewCommonInitialization];
  }

  return v4;
}

@end