@interface TVPVideoView
+ (id)preservedVideoViewsForPlayer:(id)a3 identifier:(id)a4;
+ (void)_playerStateDidChange:(id)a3;
+ (void)_purgePreservedVideoViewsForPlayer:(id)a3;
+ (void)initialize;
+ (void)preserveVideoViewForReuse:(id)a3 identifier:(id)a4;
- (TVPVideoView)initWithFrame:(CGRect)a3;
- (id)AVPlayer;
- (int64_t)videoGravity;
- (void)_playerStillImageDidChange:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAVPlayer:(id)a3;
- (void)setIsPrimarySubtitleDisplayer:(BOOL)a3;
- (void)setPlayer:(id)a3;
- (void)setVideoGravity:(int64_t)a3;
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

+ (void)preserveVideoViewForReuse:(id)a3 identifier:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 player];
  v9 = v8;
  if (!v6)
  {
    goto LABEL_19;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  if (!v8)
  {
    goto LABEL_19;
  }

  v10 = [v8 state];
  v11 = +[TVPPlaybackState stopped];

  if (v10 == v11)
  {
    goto LABEL_19;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  p_cache = TVPPlaybackState.cache;
  v13 = [sPreservedVideoViews allKeys];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v13);
        }

        v19 = [a1 preservedVideoViewsForPlayer:v9 identifier:*(*(&v23 + 1) + 8 * i)];
        v16 += [v19 count];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

  v20 = [MEMORY[0x277CCAB98] defaultCenter];
  [v20 addObserver:a1 selector:sel__playerStateDidChange_ name:@"TVPPlaybackStateDidChangeNotification" object:v9];

LABEL_16:
  v21 = [p_cache[127] objectForKey:v7];
  if (!v21)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  [v21 addObject:v6];
  [p_cache[127] setObject:v21 forKey:v7];

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
}

+ (id)preservedVideoViewsForPlayer:(id)a3 identifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v5 && v6)
  {
    v8 = [sPreservedVideoViews objectForKey:v6];
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
          v14 = [v13 player];

          if (v14 == v5)
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

- (void)setVideoGravity:(int64_t)a3
{
  self->_videoGravity = a3;
  v9 = *MEMORY[0x277CE5DD0];
  if (a3 == 2)
  {
    v5 = MEMORY[0x277CE5DC8];
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x277CE5DD8];
  }

  v6 = *v5;

  v9 = v6;
LABEL_6:
  v7 = [(TVPVideoView *)self playerLayerView];
  v8 = [v7 avPlayerLayer];
  [v8 setVideoGravity:v9];
}

- (int64_t)videoGravity
{
  v2 = [(TVPVideoView *)self playerLayerView];
  v3 = [v2 avPlayerLayer];
  v4 = [v3 videoGravity];

  if ([v4 isEqualToString:*MEMORY[0x277CE5DC8]])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:*MEMORY[0x277CE5DD0]])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 isEqualToString:*MEMORY[0x277CE5DD8]];
  }

  return v5;
}

+ (void)_playerStateDidChange:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 state];
  v5 = +[TVPPlaybackState stopped];

  if (v4 == v5)
  {
    [a1 _purgePreservedVideoViewsForPlayer:v7];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:a1 name:@"TVPPlaybackStateDidChangeNotification" object:v7];
  }
}

+ (void)_purgePreservedVideoViewsForPlayer:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
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
              v14 = [v13 player];

              if (v14 == v3)
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

- (TVPVideoView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = TVPVideoView;
  v3 = [(TVPVideoView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v9 = [MEMORY[0x277D75348] blackColor];
    [(TVPPlayerLayerView *)v8 setBackgroundColor:v9];

    [(TVPVideoView *)v4 addSubview:v4->_playerLayerView];
    [(TVPVideoView *)v4 setClipsToBounds:1];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(TVPPlayerLayerView *)self->_playerLayerView removeObserver:self forKeyPath:@"avPlayerLayer.readyForDisplay" context:AVPlayerLayerReadyForDisplayKVOContext];
  v4.receiver = self;
  v4.super_class = TVPVideoView;
  [(TVPVideoView *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (AVPlayerLayerReadyForDisplayKVOContext == a6)
  {
    v7 = [(TVPPlayerLayerView *)self->_playerLayerView avPlayerLayer:a3];
    -[TVPVideoView setReadyForDisplay:](self, "setReadyForDisplay:", [v7 isReadyForDisplay]);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TVPVideoView;
    [(TVPVideoView *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)setPlayer:(id)a3
{
  v5 = a3;
  player = self->_player;
  v11 = v5;
  if (player != v5)
  {
    if (player)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 removeObserver:self name:@"TVPPlayerStillImageDidChangeNotification" object:self->_player];

      v8 = self->_player;
    }

    else
    {
      v8 = 0;
    }

    [(TVPAVFPlayback *)v8 removeWeakReferenceToVideoView:self];
    objc_storeStrong(&self->_player, a3);
    [(TVPAVFPlayback *)self->_player addWeakReferenceToVideoView:self];
    v9 = [(TVPAVFPlayback *)self->_player avPlayer];
    [(TVPVideoView *)self setAVPlayer:v9];

    if (self->_player)
    {
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      [v10 addObserver:self selector:sel__playerStillImageDidChange_ name:@"TVPPlayerStillImageDidChangeNotification" object:self->_player];
    }
  }
}

- (void)setIsPrimarySubtitleDisplayer:(BOOL)a3
{
  self->_isPrimarySubtitleDisplayer = a3;
  if (!a3)
  {
    v4 = [(TVPPlayerLayerView *)self->_playerLayerView avPlayerLayer];
    [v4 setLanczosFilterDownscalingEnabled:1];
    [v4 setLanczosFilterDownscaleFactor:3];
  }
}

- (void)setAVPlayer:(id)a3
{
  playerLayerView = self->_playerLayerView;
  v4 = a3;
  v5 = [(TVPPlayerLayerView *)playerLayerView avPlayerLayer];
  [v5 setPlayer:v4];
}

- (id)AVPlayer
{
  v2 = [(TVPPlayerLayerView *)self->_playerLayerView avPlayerLayer];
  v3 = [v2 player];

  return v3;
}

- (void)_playerStillImageDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v10 = [v4 objectForKey:@"TVPPlayerStillImageKey"];

  v5 = [(TVPVideoView *)self stillImageView];
  if (v10)
  {
    if (!v5)
    {
      v6 = objc_alloc(MEMORY[0x277D755E8]);
      [(TVPVideoView *)self bounds];
      v5 = [v6 initWithFrame:?];
      v7 = [MEMORY[0x277D75348] blackColor];
      [v5 setBackgroundColor:v7];

      [v5 setContentMode:1];
      [(TVPVideoView *)self setStillImageView:v5];
      v8 = [(TVPVideoView *)self playerLayerView];
      [(TVPVideoView *)self insertSubview:v5 aboveSubview:v8];
    }

    v9 = [(TVPVideoView *)self stillImageView];
    [v9 setImage:v10];
  }

  else
  {
    [v5 removeFromSuperview];

    [(TVPVideoView *)self setStillImageView:0];
  }
}

@end