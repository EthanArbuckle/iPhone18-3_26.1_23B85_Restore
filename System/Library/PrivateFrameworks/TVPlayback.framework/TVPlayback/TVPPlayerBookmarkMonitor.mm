@interface TVPPlayerBookmarkMonitor
- (TVPPlayback)player;
- (TVPPlayerBookmarkMonitor)initWithPlayer:(id)player;
- (void)_bookmarkPeriodicSaveTimerFired:(id)fired;
- (void)_playerCurrentMediaItemWillChange:(id)change;
- (void)_playerErrorDidOccur:(id)occur;
- (void)_playerStateWillChange:(id)change;
- (void)_updatePlayCountForMediaItem:(id)item player:(id)player;
- (void)dealloc;
@end

@implementation TVPPlayerBookmarkMonitor

- (TVPPlayerBookmarkMonitor)initWithPlayer:(id)player
{
  playerCopy = player;
  v9.receiver = self;
  v9.super_class = TVPPlayerBookmarkMonitor;
  v5 = [(TVPPlayerBookmarkMonitor *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_player, playerCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__playerStateWillChange_ name:@"TVPPlaybackStateWillChangeNotification" object:playerCopy];
    [defaultCenter addObserver:v6 selector:sel__playerCurrentMediaItemWillChange_ name:@"TVPPlaybackCurrentMediaItemWillChangeNotification" object:playerCopy];
    [defaultCenter addObserver:v6 selector:sel__playerErrorDidOccur_ name:@"TVPPlaybackErrorNotification" object:playerCopy];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVPPlayerBookmarkMonitor;
  [(TVPPlayerBookmarkMonitor *)&v4 dealloc];
}

- (void)_playerStateWillChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  currentMediaItem = [object currentMediaItem];
  userInfo = [changeCopy userInfo];

  v7 = [userInfo objectForKey:@"TVPPlaybackStateNewStateKey"];
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
      if (!currentMediaItem)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  [(TVPPlayerBookmarkMonitor *)self setPlayerHasFinishedLoading:1];
  if (!currentMediaItem)
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

  if ([currentMediaItem hasTrait:@"TVPMediaItemTraitSupportsBookmarks"])
  {
    [(TVPPlayerBookmarkMonitor *)self _updateBookmarkTimeForMediaItem:currentMediaItem player:object playbackOfMediaItemIsEnding:v7 == v14];
  }

  if ([currentMediaItem hasTrait:@"TVPMediaItemTraitSupportsPlayCounts"] && v7 == v14)
  {
    [(TVPPlayerBookmarkMonitor *)self _updatePlayCountForMediaItem:currentMediaItem player:object];
  }

LABEL_16:
  v15 = +[TVPPlaybackState stopped];

  if (v7 == v15)
  {
    [(TVPPlayerBookmarkMonitor *)self setPlayerHasFinishedLoading:0];
  }

  v16 = +[TVPPlaybackState playing];

  bookmarkPeriodicSaveTimer = [(TVPPlayerBookmarkMonitor *)self bookmarkPeriodicSaveTimer];
  v18 = bookmarkPeriodicSaveTimer;
  if (v7 != v16)
  {
    [(TVPPlayerBookmarkMonitor *)self setBookmarkPeriodicSaveTimer:0];
    [v18 invalidate];
LABEL_20:

    goto LABEL_22;
  }

  if (!v18)
  {
    v19 = [currentMediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataBookmarkSaveInterval"];
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

- (void)_playerCurrentMediaItemWillChange:(id)change
{
  object = [change object];
  currentMediaItem = [object currentMediaItem];
  if (currentMediaItem)
  {
    state = [object state];
    v6 = +[TVPPlaybackState stopped];

    if (state != v6)
    {
      if ([currentMediaItem hasTrait:@"TVPMediaItemTraitSupportsBookmarks"])
      {
        [(TVPPlayerBookmarkMonitor *)self _updateBookmarkTimeForMediaItem:currentMediaItem player:object playbackOfMediaItemIsEnding:1];
      }

      if ([currentMediaItem hasTrait:@"TVPMediaItemTraitSupportsPlayCounts"])
      {
        [(TVPPlayerBookmarkMonitor *)self _updatePlayCountForMediaItem:currentMediaItem player:object];
      }
    }
  }

  [(TVPPlayerBookmarkMonitor *)self setPlayerHasFinishedLoading:0];
}

- (void)_playerErrorDidOccur:(id)occur
{
  object = [occur object];
  currentMediaItem = [object currentMediaItem];
  v5 = currentMediaItem;
  if (currentMediaItem)
  {
    if ([currentMediaItem hasTrait:@"TVPMediaItemTraitSupportsBookmarks"])
    {
      [(TVPPlayerBookmarkMonitor *)self _updateBookmarkTimeForMediaItem:v5 player:object playbackOfMediaItemIsEnding:1];
    }

    if ([v5 hasTrait:@"TVPMediaItemTraitSupportsPlayCounts"])
    {
      [(TVPPlayerBookmarkMonitor *)self _updatePlayCountForMediaItem:v5 player:object];
    }
  }
}

- (void)_bookmarkPeriodicSaveTimerFired:(id)fired
{
  player = [(TVPPlayerBookmarkMonitor *)self player];
  currentMediaItem = [player currentMediaItem];
  v5 = currentMediaItem;
  if (currentMediaItem && [currentMediaItem hasTrait:@"TVPMediaItemTraitSupportsBookmarks"])
  {
    [(TVPPlayerBookmarkMonitor *)self _updateBookmarkTimeForMediaItem:v5 player:player playbackOfMediaItemIsEnding:0];
  }
}

- (void)_updatePlayCountForMediaItem:(id)item player:(id)player
{
  itemCopy = item;
  playerCopy = player;
  if (objc_opt_respondsToSelector())
  {
    [playerCopy duration];
    v8 = v7 == 0.0 || v7 == 3.40282347e38;
    if (!v8 && [(TVPPlayerBookmarkMonitor *)self playerHasFinishedLoading])
    {
      [playerCopy elapsedTime];
      [itemCopy updatePlayCountForElapsedTime:? duration:?];
    }
  }
}

- (TVPPlayback)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

@end