@interface PXVideoView
- (BOOL)toneMapToStandardDynamicRange;
- (BOOL)videoIsReadyForDisplay;
- (NSString)videoGravity;
- (PXVideoView)init;
- (PXVideoViewDelegate)delegate;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)setPlayer:(id)player;
- (void)setToneMapToStandardDynamicRange:(BOOL)range;
- (void)setVideoGravity:(id)gravity;
@end

@implementation PXVideoView

- (PXVideoViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setToneMapToStandardDynamicRange:(BOOL)range
{
  rangeCopy = range;
  playerLayer = [(PXVideoView *)self playerLayer];
  [playerLayer setToneMapToStandardDynamicRange:rangeCopy];
}

- (BOOL)toneMapToStandardDynamicRange
{
  playerLayer = [(PXVideoView *)self playerLayer];
  toneMapToStandardDynamicRange = [playerLayer toneMapToStandardDynamicRange];

  return toneMapToStandardDynamicRange;
}

void __45__PXVideoView__layerReadyForDisplayDidChange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[416] == 1)
  {
    v3 = [v2 videoIsReadyForDisplay];
    v4 = +[PXWorkaroundSettings sharedInstance];
    v5 = [v4 shouldWorkAround92398340];

    if (v3)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v8 = [*(a1 + 32) delegate];
      [v8 videoViewReadinessDidChange:*(a1 + 32)];
    }

    else
    {
      v7 = dispatch_time(0, 100000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__PXVideoView__layerReadyForDisplayDidChange__block_invoke_2;
      block[3] = &unk_1E774C648;
      block[4] = *(a1 + 32);
      dispatch_after(v7, MEMORY[0x1E69E96A0], block);
    }
  }
}

void __45__PXVideoView__layerReadyForDisplayDidChange__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 videoViewReadinessDidChange:*(a1 + 32)];
}

- (BOOL)videoIsReadyForDisplay
{
  playerLayer = [(PXVideoView *)self playerLayer];
  isReadyForDisplay = [playerLayer isReadyForDisplay];

  return isReadyForDisplay;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.readinessDidChange = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  objc_storeStrong(&self->_player, player);
  layer = [(PXVideoView *)self layer];
  [playerCopy attachToPlayerLayerIfNeeded:layer];

  v6 = playerCopy;
  if (!playerCopy)
  {
    layer2 = [(PXVideoView *)self layer];
    [layer2 setWrappedPlayer:0];

    v6 = 0;
  }
}

- (void)dealloc
{
  playerLayer = [(PXVideoView *)self playerLayer];
  [playerLayer deferredDealloc];

  v4.receiver = self;
  v4.super_class = PXVideoView;
  [(PXVideoView *)&v4 dealloc];
}

- (NSString)videoGravity
{
  layer = [(PXVideoView *)self layer];
  videoGravity = [layer videoGravity];

  return videoGravity;
}

- (void)setVideoGravity:(id)gravity
{
  v4 = MEMORY[0x1E6979518];
  gravityCopy = gravity;
  [v4 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  layer = [(PXVideoView *)self layer];
  [layer setVideoGravity:gravityCopy];

  v7 = MEMORY[0x1E6979518];

  [v7 commit];
}

- (PXVideoView)init
{
  v8.receiver = self;
  v8.super_class = PXVideoView;
  v2 = [(PXVideoView *)&v8 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v5 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v6, &location);
    v3 = [(PXVideoView *)v2 playerLayer:v5];
    [v3 setReadyForDisplayChangeHandler:&v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __19__PXVideoView_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _layerReadyForDisplayDidChange];
}

@end