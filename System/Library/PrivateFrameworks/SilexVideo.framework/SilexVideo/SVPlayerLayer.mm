@interface SVPlayerLayer
- (SVPlayerLayer)init;
- (SVPlayerLayer)initWithLayer:(id)layer;
- (void)dealloc;
- (void)initialize;
- (void)layoutSublayers;
- (void)pause;
- (void)playWithPlaybackKind:(unint64_t)kind looping:(BOOL)looping;
- (void)setPlayer:(id)player;
- (void)setVideoGravity:(id)gravity;
@end

@implementation SVPlayerLayer

- (void)initialize
{
  self->_currentPlaybackKind = 1;
  v3 = objc_alloc_init(SVImageLayer);
  stillImageLayer = self->_stillImageLayer;
  self->_stillImageLayer = v3;

  v5 = objc_alloc_init(MEMORY[0x277CE65D8]);
  playerLayer = self->_playerLayer;
  self->_playerLayer = v5;

  v7 = objc_alloc_init(SVNonAnimatingDelegate);
  nonAnimatingDelegate = self->_nonAnimatingDelegate;
  self->_nonAnimatingDelegate = v7;

  [(SVImageLayer *)self->_stillImageLayer setDelegate:self->_nonAnimatingDelegate];
  [(AVPlayerLayer *)self->_playerLayer setDelegate:self->_nonAnimatingDelegate];
  [(SVPlayerLayer *)self addSublayer:self->_playerLayer];
  v9 = self->_stillImageLayer;

  [(SVPlayerLayer *)self addSublayer:v9];
}

- (SVPlayerLayer)init
{
  v5.receiver = self;
  v5.super_class = SVPlayerLayer;
  v2 = [(SVPlayerLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SVPlayerLayer *)v2 initialize];
  }

  return v3;
}

- (SVPlayerLayer)initWithLayer:(id)layer
{
  v6.receiver = self;
  v6.super_class = SVPlayerLayer;
  v3 = [(SVPlayerLayer *)&v6 initWithLayer:layer];
  v4 = v3;
  if (v3)
  {
    [(SVPlayerLayer *)v3 initialize];
  }

  return v4;
}

- (void)layoutSublayers
{
  v21.receiver = self;
  v21.super_class = SVPlayerLayer;
  [(SVPlayerLayer *)&v21 layoutSublayers];
  [(SVPlayerLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  stillImageLayer = [(SVPlayerLayer *)self stillImageLayer];
  [stillImageLayer setFrame:{v4, v6, v8, v10}];

  [(SVPlayerLayer *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  playerLayer = [(SVPlayerLayer *)self playerLayer];
  [playerLayer setFrame:{v13, v15, v17, v19}];
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  player = [(AVPlayerLayer *)self->_playerLayer player];

  if (player && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SVPlayerLayer setPlayer:];
  }

  v6 = [SVAudioSession sharedSessionForMode:2];
  v7 = v6;
  if (playerCopy && v6)
  {
    player2 = [(AVPlayerLayer *)self->_playerLayer player];
    [v7 removeInterestForPlayer:player2];

    [(AVPlayerLayer *)self->_playerLayer setPlayer:playerCopy];
    [v7 addInterestForPlayer:playerCopy withMode:2];
  }

  objc_initWeak(&location, self);
  v9 = [SVKeyValueObserver alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __27__SVPlayerLayer_setPlayer___block_invoke;
  v13[3] = &unk_279BC5F68;
  objc_copyWeak(&v15, &location);
  v10 = playerCopy;
  v14 = v10;
  v11 = [(SVKeyValueObserver *)v9 initWithKeyPath:@"status" ofObject:v10 withOptions:1 change:v13];
  statusObserver = self->_statusObserver;
  self->_statusObserver = v11;

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __27__SVPlayerLayer_setPlayer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) status] == 2;
    WeakRetained = v6;
    if (v3)
    {
      [v6[6] setHidden:0];
      v4 = v6[9];
      v6[9] = 0;

      v5 = v6[10];
      v6[10] = 0;

      WeakRetained = v6;
    }
  }
}

- (void)setVideoGravity:(id)gravity
{
  v4 = MEMORY[0x277CD9FF0];
  gravityCopy = gravity;
  [v4 begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  [(AVPlayerLayer *)self->_playerLayer setVideoGravity:gravityCopy];

  v6 = MEMORY[0x277CD9FF0];

  [v6 commit];
}

- (void)playWithPlaybackKind:(unint64_t)kind looping:(BOOL)looping
{
  loopingCopy = looping;
  [(SVPlayerLayer *)self setCurrentPlaybackKind:?];
  player = [(SVPlayerLayer *)self player];
  if (player)
  {
    v8 = player;
    player2 = [(SVPlayerLayer *)self player];
    timeControlStatus = [player2 timeControlStatus];

    if (!timeControlStatus && (kind == 1 || !UIAccessibilityIsReduceMotionEnabled()))
    {
      if (loopingCopy)
      {
        v11 = [SVLooper alloc];
        player3 = [(SVPlayerLayer *)self player];
        v13 = [(SVLooper *)v11 initWithPlayer:player3];
        [(SVPlayerLayer *)self setLooper:v13];
      }

      else
      {
        [(SVPlayerLayer *)self setLooper:0];
      }

      objc_initWeak(&location, self);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __46__SVPlayerLayer_playWithPlaybackKind_looping___block_invoke;
      v22[3] = &unk_279BC5F18;
      objc_copyWeak(&v23, &location);
      v14 = MEMORY[0x2667795A0](v22);
      player4 = [(SVPlayerLayer *)self player];
      [player4 play];

      v16 = [SVKeyValueObserver alloc];
      playerLayer = [(SVPlayerLayer *)self playerLayer];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __46__SVPlayerLayer_playWithPlaybackKind_looping___block_invoke_2;
      v20[3] = &unk_279BC5F90;
      v18 = v14;
      v21 = v18;
      v19 = [(SVKeyValueObserver *)v16 initWithKeyPath:@"readyForDisplay" ofObject:playerLayer withOptions:5 change:v20];
      [(SVPlayerLayer *)self setReadyForDisplayObserver:v19];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }
}

void __46__SVPlayerLayer_playWithPlaybackKind_looping___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained playerLayer];
  v2 = [v1 isReadyForDisplay];

  if (v2)
  {
    v3 = [WeakRetained stillImageLayer];
    [v3 setHidden:1];

    [WeakRetained setReadyForDisplayObserver:0];
  }
}

- (void)pause
{
  player = [(SVPlayerLayer *)self player];
  [player pause];
}

- (void)dealloc
{
  player = [(SVPlayerLayer *)self player];

  if (player)
  {
    player2 = [(SVPlayerLayer *)self player];
    [player2 pause];

    v5 = [SVAudioSession sharedSessionForMode:2];
    player3 = [(SVPlayerLayer *)self player];
    [v5 removeInterestForPlayer:player3];
  }

  v7.receiver = self;
  v7.super_class = SVPlayerLayer;
  [(SVPlayerLayer *)&v7 dealloc];
}

- (void)setPlayer:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Tried to re-set an already created AVPlayer!"];
  v2 = 136315906;
  v3 = "[SVPlayerLayer setPlayer:]";
  v4 = 2080;
  v5 = "SVPlayerLayer.m";
  v6 = 1024;
  v7 = 92;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_266095000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end