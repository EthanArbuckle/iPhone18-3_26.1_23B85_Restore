@interface TVPPlayerBookmarkMonitor
- (TVPPlayback)player;
- (TVPPlayerBookmarkMonitor)initWithPlayer:(id)a3;
- (void)_bookmarkPeriodicSaveTimerFired:(id)a3;
- (void)_playerCurrentMediaItemWillChange:(id)a3;
- (void)_playerErrorDidOccur:(id)a3;
- (void)_playerStateWillChange:(id)a3;
- (void)_updatePlayCountForMediaItem:(id)a3 player:(id)a4;
- (void)dealloc;
@end

@implementation TVPPlayerBookmarkMonitor

- (TVPPlayerBookmarkMonitor)initWithPlayer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TVPPlayerBookmarkMonitor;
  v5 = [(TVPPlayerBookmarkMonitor *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_player, v4);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel__playerStateWillChange_ name:@"TVPPlaybackStateWillChangeNotification" object:v4];
    [v7 addObserver:v6 selector:sel__playerCurrentMediaItemWillChange_ name:@"TVPPlaybackCurrentMediaItemWillChangeNotification" object:v4];
    [v7 addObserver:v6 selector:sel__playerErrorDidOccur_ name:@"TVPPlaybackErrorNotification" object:v4];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVPPlayerBookmarkMonitor;
  [(TVPPlayerBookmarkMonitor *)&v4 dealloc];
}

- (void)_playerStateWillChange:(id)a3
{
  v4 = a3;
  v22 = [v4 object];
  v5 = [v22 currentMediaItem];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"TVPPlaybackStateNewStateKey"];
  v8 = +[TVPPlaybackState playing];
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    v10 = +[TVPPlaybackState paused];

    if (v7 != v10)
    {
      if (!v5)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  [(TVPPlayerBookmarkMonitor *)self setPlayerHasFinishedLoading:1];
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_7:
  v11 = +[TVPPlaybackState stopped];
  v12 = v11;
  if (v7 == v11)
  {
  }

  else
  {
    v13 = +[TVPPlaybackState paused];

    if (v7 != v13)
    {
      goto LABEL_16;
    }
  }

  v14 = +[TVPPlaybackState stopped];

  if ([v5 hasTrait:@"TVPMediaItemTraitSupportsBookmarks"])
  {
    [(TVPPlayerBookmarkMonitor *)self _updateBookmarkTimeForMediaItem:v5 player:v22 playbackOfMediaItemIsEnding:v7 == v14];
  }

  if ([v5 hasTrait:@"TVPMediaItemTraitSupportsPlayCounts"] && v7 == v14)
  {
    [(TVPPlayerBookmarkMonitor *)self _updatePlayCountForMediaItem:v5 player:v22];
  }

LABEL_16:
  v15 = +[TVPPlaybackState stopped];

  if (v7 == v15)
  {
    [(TVPPlayerBookmarkMonitor *)self setPlayerHasFinishedLoading:0];
  }

  v16 = +[TVPPlaybackState playing];

  v17 = [(TVPPlayerBookmarkMonitor *)self bookmarkPeriodicSaveTimer];
  v18 = v17;
  if (v7 != v16)
  {
    [(TVPPlayerBookmarkMonitor *)self setBookmarkPeriodicSaveTimer:0];
    [v18 invalidate];
LABEL_20:

    goto LABEL_22;
  }

  if (!v18)
  {
    v19 = [v5 mediaItemMetadataForProperty:@"TVPMediaItemMetadataBookmarkSaveInterval"];
    v18 = v19;
    if (v19)
    {
      [v19 doubleValue];
    }

    else
    {
      v20 = 300.0;
    }

    v21 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__bookmarkPeriodicSaveTimerFired_ selector:0 userInfo:1 repeats:v20];
    [(TVPPlayerBookmarkMonitor *)self setBookmarkPeriodicSaveTimer:v21];

    goto LABEL_20;
  }

LABEL_22:
}

- (void)_playerCurrentMediaItemWillChange:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 currentMediaItem];
  if (v4)
  {
    v5 = [v7 state];
    v6 = +[TVPPlaybackState stopped];

    if (v5 != v6)
    {
      if ([v4 hasTrait:@"TVPMediaItemTraitSupportsBookmarks"])
      {
        [(TVPPlayerBookmarkMonitor *)self _updateBookmarkTimeForMediaItem:v4 player:v7 playbackOfMediaItemIsEnding:1];
      }

      if ([v4 hasTrait:@"TVPMediaItemTraitSupportsPlayCounts"])
      {
        [(TVPPlayerBookmarkMonitor *)self _updatePlayCountForMediaItem:v4 player:v7];
      }
    }
  }

  [(TVPPlayerBookmarkMonitor *)self setPlayerHasFinishedLoading:0];
}

- (void)_playerErrorDidOccur:(id)a3
{
  v6 = [a3 object];
  v4 = [v6 currentMediaItem];
  v5 = v4;
  if (v4)
  {
    if ([v4 hasTrait:@"TVPMediaItemTraitSupportsBookmarks"])
    {
      [(TVPPlayerBookmarkMonitor *)self _updateBookmarkTimeForMediaItem:v5 player:v6 playbackOfMediaItemIsEnding:1];
    }

    if ([v5 hasTrait:@"TVPMediaItemTraitSupportsPlayCounts"])
    {
      [(TVPPlayerBookmarkMonitor *)self _updatePlayCountForMediaItem:v5 player:v6];
    }
  }
}

- (void)_bookmarkPeriodicSaveTimerFired:(id)a3
{
  v6 = [(TVPPlayerBookmarkMonitor *)self player];
  v4 = [v6 currentMediaItem];
  v5 = v4;
  if (v4 && [v4 hasTrait:@"TVPMediaItemTraitSupportsBookmarks"])
  {
    [(TVPPlayerBookmarkMonitor *)self _updateBookmarkTimeForMediaItem:v5 player:v6 playbackOfMediaItemIsEnding:0];
  }
}

- (void)_updatePlayCountForMediaItem:(id)a3 player:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v6 duration];
    v8 = v7 == 0.0 || v7 == 3.40282347e38;
    if (!v8 && [(TVPPlayerBookmarkMonitor *)self playerHasFinishedLoading])
    {
      [v6 elapsedTime];
      [v9 updatePlayCountForElapsedTime:? duration:?];
    }
  }
}

- (TVPPlayback)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

@end