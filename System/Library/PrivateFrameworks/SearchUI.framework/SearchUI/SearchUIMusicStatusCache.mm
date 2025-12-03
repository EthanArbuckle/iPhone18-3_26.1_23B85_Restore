@interface SearchUIMusicStatusCache
- (SearchUIMusicStatusCache)init;
- (void)dealloc;
- (void)updateNowPlayingItem;
- (void)updatePlaybackState;
@end

@implementation SearchUIMusicStatusCache

- (SearchUIMusicStatusCache)init
{
  v8.receiver = self;
  v8.super_class = SearchUIMusicStatusCache;
  v2 = [(TLKAsyncCache *)&v8 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_updateNowPlayingItem name:*MEMORY[0x1E6970260] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_updatePlaybackState name:*MEMORY[0x1E6970268] object:0];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__SearchUIMusicStatusCache_init__block_invoke;
    v6[3] = &unk_1E85B24C8;
    v7 = v2;
    [SearchUIMediaUtilities dispatchOnMusicQueueIfNecessary:v6];
  }

  return v2;
}

void __32__SearchUIMusicStatusCache_init__block_invoke(uint64_t a1)
{
  v2 = +[SearchUIMediaUtilities musicPlayer];
  [v2 beginGeneratingPlaybackNotifications];

  v3 = +[SearchUIMediaUtilities musicPlayer];
  v4 = [v3 nowPlayingItem];
  [*(a1 + 32) setNowPlayingItem:v4];

  v5 = +[SearchUIMediaUtilities musicPlayer];
  [*(a1 + 32) setPlaybackState:{objc_msgSend(v5, "playbackState")}];
}

- (void)updateNowPlayingItem
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__SearchUIMusicStatusCache_updateNowPlayingItem__block_invoke;
  v2[3] = &unk_1E85B24C8;
  v2[4] = self;
  [SearchUIMediaUtilities dispatchOnMusicQueueIfNecessary:v2];
}

void __48__SearchUIMusicStatusCache_updateNowPlayingItem__block_invoke(uint64_t a1)
{
  v2 = +[SearchUIMediaUtilities musicPlayer];
  v5 = [v2 nowPlayingItem];

  v3 = [*(a1 + 32) nowPlayingItem];
  LOBYTE(v2) = [SearchUIMediaUtilities isMediaItem:v5 equalToMediaItem:v3];

  if ((v2 & 1) == 0)
  {
    [*(a1 + 32) setNowPlayingItem:v5];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"SearchUIMusicNowPlayingItemDidChangeNotification" object:0];
  }
}

- (void)updatePlaybackState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__SearchUIMusicStatusCache_updatePlaybackState__block_invoke;
  v2[3] = &unk_1E85B24C8;
  v2[4] = self;
  [SearchUIMediaUtilities dispatchOnMusicQueueIfNecessary:v2];
}

void __47__SearchUIMusicStatusCache_updatePlaybackState__block_invoke(uint64_t a1)
{
  v2 = +[SearchUIMediaUtilities musicPlayer];
  v3 = [v2 playbackState];

  if (v3 != [*(a1 + 32) playbackState])
  {
    [*(a1 + 32) setPlaybackState:v3];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"SearchUIMusicPlaybackStateDidChangeNotification" object:0];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  systemMusicPlayer = [MEMORY[0x1E69707E8] systemMusicPlayer];
  [systemMusicPlayer endGeneratingPlaybackNotifications];

  v5.receiver = self;
  v5.super_class = SearchUIMusicStatusCache;
  [(SearchUIMusicStatusCache *)&v5 dealloc];
}

@end