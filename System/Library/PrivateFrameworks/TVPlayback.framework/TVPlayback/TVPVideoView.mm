@interface TVPVideoView
+ (id)preservedVideoViewsForPlayer:(id)player identifier:(id)identifier;
+ (void)_playerStateDidChange:(id)change;
+ (void)_purgePreservedVideoViewsForPlayer:(id)player;
+ (void)initialize;
+ (void)preserveVideoViewForReuse:(id)reuse identifier:(id)identifier;
- (TVPVideoView)initWithFrame:(CGRect)frame;
- (id)AVPlayer;
- (int64_t)videoGravity;
- (void)_playerStillImageDidChange:(id)change;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAVPlayer:(id)player;
- (void)setIsPrimarySubtitleDisplayer:(BOOL)displayer;
- (void)setPlayer:(id)player;
- (void)setVideoGravity:(int64_t)gravity;
@end

@implementation TVPVideoView

+ (void)initialize
{
  if (initialize_onceToken_4 != -1)
  {
    +[TVPVideoView initialize];
  }
}

uint64_t __26__TVPVideoView_initialize__block_invoke()
{
  sPreservedVideoViews = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

+ (void)preserveVideoViewForReuse:(id)reuse identifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  reuseCopy = reuse;
  identifierCopy = identifier;
  player = [reuseCopy player];
  v9 = player;
  if (!reuseCopy)
  {
    goto LABEL_19;
  }

  if (!identifierCopy)
  {
    goto LABEL_19;
  }

  if (!player)
  {
    goto LABEL_19;
  }

  state = [player state];
  v11 = +[TVPPlaybackState stopped];

  if (state == v11)
  {
    goto LABEL_19;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  p_cache = TVPPlaybackState.cache;
  allKeys = [sPreservedVideoViews allKeys];
  v14 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = [self preservedVideoViewsForPlayer:v9 identifier:*(*(&v23 + 1) + 8 * i)];
        v16 += [v19 count];
      }

      v15 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);

    p_cache = (TVPPlaybackState + 16);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__playerStateDidChange_ name:@"TVPPlaybackStateDidChangeNotification" object:v9];

LABEL_16:
  v21 = [p_cache[127] objectForKey:identifierCopy];
  if (!v21)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  [v21 addObject:reuseCopy];
  [p_cache[127] setObject:v21 forKey:identifierCopy];

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
}

+ (id)preservedVideoViewsForPlayer:(id)player identifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  identifierCopy = identifier;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (playerCopy && identifierCopy)
  {
    v8 = [sPreservedVideoViews objectForKey:identifierCopy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          player = [v13 player];

          if (player == playerCopy)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)setVideoGravity:(int64_t)gravity
{
  self->_videoGravity = gravity;
  v9 = *MEMORY[0x277CE5DD0];
  if (gravity == 2)
  {
    v5 = MEMORY[0x277CE5DC8];
  }

  else
  {
    if (gravity != 1)
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x277CE5DD8];
  }

  v6 = *v5;

  v9 = v6;
LABEL_6:
  playerLayerView = [(TVPVideoView *)self playerLayerView];
  avPlayerLayer = [playerLayerView avPlayerLayer];
  [avPlayerLayer setVideoGravity:v9];
}

- (int64_t)videoGravity
{
  playerLayerView = [(TVPVideoView *)self playerLayerView];
  avPlayerLayer = [playerLayerView avPlayerLayer];
  videoGravity = [avPlayerLayer videoGravity];

  if ([videoGravity isEqualToString:*MEMORY[0x277CE5DC8]])
  {
    v5 = 2;
  }

  else if ([videoGravity isEqualToString:*MEMORY[0x277CE5DD0]])
  {
    v5 = 0;
  }

  else
  {
    v5 = [videoGravity isEqualToString:*MEMORY[0x277CE5DD8]];
  }

  return v5;
}

+ (void)_playerStateDidChange:(id)change
{
  object = [change object];
  state = [object state];
  v5 = +[TVPPlaybackState stopped];

  if (state == v5)
  {
    [self _purgePreservedVideoViewsForPlayer:object];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"TVPPlaybackStateDidChangeNotification" object:object];
  }
}

+ (void)_purgePreservedVideoViewsForPlayer:(id)player
{
  v28 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [sPreservedVideoViews allValues];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v8 = [v7 copy];
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v18 + 1) + 8 * j);
              player = [v13 player];

              if (player == playerCopy)
              {
                [v7 removeObject:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v10);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (TVPVideoView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = TVPVideoView;
  v3 = [(TVPVideoView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_isPrimarySubtitleDisplayer = 1;
    v5 = [TVPPlayerLayerView alloc];
    [(TVPVideoView *)v4 bounds];
    v6 = [(TVPPlayerLayerView *)v5 initWithFrame:?];
    playerLayerView = v4->_playerLayerView;
    v4->_playerLayerView = v6;

    [(TVPPlayerLayerView *)v4->_playerLayerView addObserver:v4 forKeyPath:@"avPlayerLayer.readyForDisplay" options:0 context:AVPlayerLayerReadyForDisplayKVOContext];
    [(TVPPlayerLayerView *)v4->_playerLayerView setAutoresizingMask:18];
    v8 = v4->_playerLayerView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(TVPPlayerLayerView *)v8 setBackgroundColor:blackColor];

    [(TVPVideoView *)v4 addSubview:v4->_playerLayerView];
    [(TVPVideoView *)v4 setClipsToBounds:1];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(TVPPlayerLayerView *)self->_playerLayerView removeObserver:self forKeyPath:@"avPlayerLayer.readyForDisplay" context:AVPlayerLayerReadyForDisplayKVOContext];
  v4.receiver = self;
  v4.super_class = TVPVideoView;
  [(TVPVideoView *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (AVPlayerLayerReadyForDisplayKVOContext == context)
  {
    v7 = [(TVPPlayerLayerView *)self->_playerLayerView avPlayerLayer:path];
    -[TVPVideoView setReadyForDisplay:](self, "setReadyForDisplay:", [v7 isReadyForDisplay]);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TVPVideoView;
    [(TVPVideoView *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  player = self->_player;
  v11 = playerCopy;
  if (player != playerCopy)
  {
    if (player)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self name:@"TVPPlayerStillImageDidChangeNotification" object:self->_player];

      v8 = self->_player;
    }

    else
    {
      v8 = 0;
    }

    [(TVPAVFPlayback *)v8 removeWeakReferenceToVideoView:self];
    objc_storeStrong(&self->_player, player);
    [(TVPAVFPlayback *)self->_player addWeakReferenceToVideoView:self];
    avPlayer = [(TVPAVFPlayback *)self->_player avPlayer];
    [(TVPVideoView *)self setAVPlayer:avPlayer];

    if (self->_player)
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__playerStillImageDidChange_ name:@"TVPPlayerStillImageDidChangeNotification" object:self->_player];
    }
  }
}

- (void)setIsPrimarySubtitleDisplayer:(BOOL)displayer
{
  self->_isPrimarySubtitleDisplayer = displayer;
  if (!displayer)
  {
    avPlayerLayer = [(TVPPlayerLayerView *)self->_playerLayerView avPlayerLayer];
    [avPlayerLayer setLanczosFilterDownscalingEnabled:1];
    [avPlayerLayer setLanczosFilterDownscaleFactor:3];
  }
}

- (void)setAVPlayer:(id)player
{
  playerLayerView = self->_playerLayerView;
  playerCopy = player;
  avPlayerLayer = [(TVPPlayerLayerView *)playerLayerView avPlayerLayer];
  [avPlayerLayer setPlayer:playerCopy];
}

- (id)AVPlayer
{
  avPlayerLayer = [(TVPPlayerLayerView *)self->_playerLayerView avPlayerLayer];
  player = [avPlayerLayer player];

  return player;
}

- (void)_playerStillImageDidChange:(id)change
{
  userInfo = [change userInfo];
  v10 = [userInfo objectForKey:@"TVPPlayerStillImageKey"];

  stillImageView = [(TVPVideoView *)self stillImageView];
  if (v10)
  {
    if (!stillImageView)
    {
      v6 = objc_alloc(MEMORY[0x277D755E8]);
      [(TVPVideoView *)self bounds];
      stillImageView = [v6 initWithFrame:?];
      blackColor = [MEMORY[0x277D75348] blackColor];
      [stillImageView setBackgroundColor:blackColor];

      [stillImageView setContentMode:1];
      [(TVPVideoView *)self setStillImageView:stillImageView];
      playerLayerView = [(TVPVideoView *)self playerLayerView];
      [(TVPVideoView *)self insertSubview:stillImageView aboveSubview:playerLayerView];
    }

    stillImageView2 = [(TVPVideoView *)self stillImageView];
    [stillImageView2 setImage:v10];
  }

  else
  {
    [stillImageView removeFromSuperview];

    [(TVPVideoView *)self setStillImageView:0];
  }
}

@end