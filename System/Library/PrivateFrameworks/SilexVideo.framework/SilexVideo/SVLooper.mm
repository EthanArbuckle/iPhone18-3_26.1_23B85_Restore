@interface SVLooper
- (SVLooper)initWithPlayer:(id)player;
@end

@implementation SVLooper

- (SVLooper)initWithPlayer:(id)player
{
  playerCopy = player;
  v17.receiver = self;
  v17.super_class = SVLooper;
  v6 = [(SVLooper *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, player);
    v8 = [[SVPlayerItemObserver alloc] initWithPlayer:playerCopy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __27__SVLooper_initWithPlayer___block_invoke;
    v15[3] = &unk_279BC5FB8;
    v9 = v8;
    v16 = v9;
    v10 = MEMORY[0x2667795A0](v15);
    v11 = [[SVVideoDurationObserver alloc] initWithPlayerItemObserver:v9];
    durationObserver = v7->_durationObserver;
    v7->_durationObserver = v11;

    [(SVVideoDurationObserver *)v7->_durationObserver onChange:v10];
    [(SVVideoDurationObserver *)v7->_durationObserver duration];
    if (v13 > 0.0)
    {
      (v10)[2](v10, v7->_durationObserver);
    }
  }

  return v7;
}

void __27__SVLooper_initWithPlayer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) item];
  v3 = [*(a1 + 32) item];
  v4 = v3;
  if (v3)
  {
    [v3 duration];
  }

  else
  {
    memset(&duration, 0, sizeof(duration));
  }

  v5 = **&MEMORY[0x277CC08F0];
  CMTimeRangeMake(&v7, &v5, &duration);
  [v2 setLoopTimeRange:&v7];
}

@end