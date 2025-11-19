@interface SearchUIPlayAudioButtonItem
+ (BOOL)isSingleItemMedia:(id)a3;
- (BOOL)hasState;
- (BOOL)shouldSkipUpdate;
- (SearchUIPlayAudioButtonItem)initWithSFButtonItem:(id)a3;
- (id)commandForStatus:(unint64_t)a3;
- (id)onStateSymbolName;
- (unint64_t)status;
- (void)buttonPressed;
- (void)dealloc;
- (void)newPlayButtonPressedWithNotification:(id)a3;
- (void)nowPlayingItemDidChange;
- (void)playbackDidFinish;
- (void)playbackStateDidChange;
- (void)toggleOff;
- (void)updatePlayState;
@end

@implementation SearchUIPlayAudioButtonItem

+ (BOOL)isSingleItemMedia:(id)a3
{
  v3 = [a3 mediaType];
  result = 1;
  if (v3 > 0x14 || ((1 << v3) & 0x102CC2) == 0)
  {
    return v3 == 100;
  }

  return result;
}

- (SearchUIPlayAudioButtonItem)initWithSFButtonItem:(id)a3
{
  v6.receiver = self;
  v6.super_class = SearchUIPlayAudioButtonItem;
  v3 = [(SearchUIButtonItem *)&v6 initWithSFButtonItem:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel_playbackStateDidChange name:@"SearchUIMusicPlaybackStateDidChangeNotification" object:0];
    [v4 addObserver:v3 selector:sel_nowPlayingItemDidChange name:@"SearchUIMusicNowPlayingItemDidChangeNotification" object:0];
    [v4 addObserver:v3 selector:sel_nowPlayingItemDidChange name:@"SearchUIMusicDidResetNotification" object:0];
    [v4 addObserver:v3 selector:sel_playbackDidFinish name:*MEMORY[0x1E6987A10] object:0];
    [v4 addObserver:v3 selector:sel_newPlayButtonPressedWithNotification_ name:@"SearchUIPlayButtonDidBeginPlayingNotification" object:0];
    [v4 addObserver:v3 selector:sel_playbackDidFinish name:@"SearchUITTSPlaybackDidFinishNotification" object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x1E69707E8] systemMusicPlayer];
  [v4 endGeneratingPlaybackNotifications];

  v5.receiver = self;
  v5.super_class = SearchUIPlayAudioButtonItem;
  [(SearchUIPlayAudioButtonItem *)&v5 dealloc];
}

- (unint64_t)status
{
  if (![(SearchUIPlayAudioButtonItem *)self hasState])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SearchUIPlayAudioButtonItem;
  return [(SearchUIButtonItem *)&v4 status];
}

- (BOOL)hasState
{
  v2 = [(SearchUIButtonItem *)self sfButtonItem];
  v3 = [v2 mediaMetadata];
  v4 = [v3 mediaIdentifier];
  if (v4 && ([objc_opt_class() isSingleItemMedia:v3] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v2 audioData];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)onStateSymbolName
{
  v2 = [(SearchUIButtonItem *)self sfButtonItem];
  v3 = [v2 audioData];
  if (v3)
  {
    v4 = @"stop";
  }

  else
  {
    v4 = @"pause";
  }

  v5 = v4;

  return v4;
}

- (id)commandForStatus:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(SearchUIButtonItem *)self sfButtonItem];
  v7 = [v6 mediaMetadata];
  [v5 setMediaMetadata:v7];

  v8 = [(SearchUIButtonItem *)self sfButtonItem];
  v9 = [v8 audioData];
  [v5 setAudioData:v9];

  if ([(SearchUIPlayAudioButtonItem *)self hasState])
  {
    [v5 setShouldPause:a3 == 1];
  }

  return v5;
}

- (void)buttonPressed
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (![(SearchUIPlayAudioButtonItem *)self status])
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"senderItem";
    v9[0] = self;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v3 postNotificationName:@"SearchUIPlayButtonDidBeginPlayingNotification" object:0 userInfo:v4];
  }

  v5 = [(SearchUIButtonItem *)self sfButtonItem];
  v6 = [v5 mediaMetadata];

  v7.receiver = self;
  v7.super_class = SearchUIPlayAudioButtonItem;
  [(SearchUIToggleButtonItem *)&v7 buttonPressed];
  if ([(SearchUIPlayAudioButtonItem *)self status]== 1 || ![(SearchUIPlayAudioButtonItem *)self hasState])
  {
    [SearchUIMediaUtilities setCurrentMedia:v6];
    [SearchUIMediaUtilities setIsPlaying:1];
    [(SearchUIPlayAudioButtonItem *)self setGotNowPlayingChangedNotificationAfterPlaying:0];
  }

  else if ([SearchUIMediaUtilities isCurrentMedia:v6])
  {
    [SearchUIMediaUtilities setIsPlaying:0];
  }

  [(SearchUIPlayAudioButtonItem *)self setNeedsUpdate:1];
  _searchUIDebounceStateChanges = 1;
}

- (void)updatePlayState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__SearchUIPlayAudioButtonItem_updatePlayState__block_invoke;
  v2[3] = &unk_1E85B24C8;
  v2[4] = self;
  [SearchUIUtilities dispatchMainIfNecessary:v2];
}

void __46__SearchUIPlayAudioButtonItem_updatePlayState__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasState])
  {
    v2 = [*(a1 + 32) sfButtonItem];
    v5 = [v2 mediaMetadata];

    LODWORD(v2) = [SearchUIMediaUtilities isNowPlayingMedia:v5];
    v3 = [*(a1 + 32) status];
    [*(a1 + 32) setStatus:v2];
    if (v3 != [*(a1 + 32) status])
    {
      v4 = [*(a1 + 32) delegate];
      [v4 stateDidChangeForButtonItem:*(a1 + 32)];
    }
  }
}

- (void)playbackDidFinish
{
  if (![(SearchUIPlayAudioButtonItem *)self shouldSkipUpdate])
  {
    [SearchUIMediaUtilities setCurrentMedia:0];

    [(SearchUIPlayAudioButtonItem *)self toggleOff];
  }
}

- (void)playbackStateDidChange
{
  if ([(SearchUIPlayAudioButtonItem *)self shouldSkipUpdate])
  {
    return;
  }

  v3 = +[SearchUIMediaUtilities musicStatusCache];
  v4 = [v3 playbackState];

  if ((v4 - 2) < 4)
  {
    v5 = 0;
LABEL_4:
    [SearchUIMediaUtilities setIsPlaying:v5];
LABEL_5:

    [(SearchUIPlayAudioButtonItem *)self updatePlayState];
    return;
  }

  if (v4 == 1)
  {
    v5 = 1;
    goto LABEL_4;
  }

  if (v4)
  {
    goto LABEL_5;
  }

  [(SearchUIPlayAudioButtonItem *)self playbackDidFinish];
}

- (BOOL)shouldSkipUpdate
{
  v3 = [(SearchUIButtonItem *)self sfButtonItem];
  v4 = [v3 mediaMetadata];
  if ([v4 mediaType] == 100)
  {

    return 0;
  }

  v5 = [(SearchUIButtonItem *)self sfButtonItem];
  v6 = [v5 audioData];

  if (v6)
  {
    return 0;
  }

  v8 = +[SearchUIMediaUtilities musicStatusCache];
  v9 = [v8 playbackState];

  if (v9 != 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v9 = 0;
  }

  v10 = [(SearchUIPlayAudioButtonItem *)self status]== v9;
LABEL_10:
  if (![(SearchUIPlayAudioButtonItem *)self needsUpdate]|| !v10) && (_searchUIDebounceStateChanges)
  {
    return 1;
  }

  [(SearchUIPlayAudioButtonItem *)self setNeedsUpdate:0];
  result = 0;
  _searchUIDebounceStateChanges = 0;
  return result;
}

- (void)nowPlayingItemDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__SearchUIPlayAudioButtonItem_nowPlayingItemDidChange__block_invoke;
  v2[3] = &unk_1E85B24C8;
  v2[4] = self;
  [SearchUIUtilities dispatchMainIfNecessary:v2];
}

uint64_t __54__SearchUIPlayAudioButtonItem_nowPlayingItemDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sfButtonItem];
  v3 = [v2 mediaMetadata];
  if ([SearchUIMediaUtilities isNowPlayingMedia:v3])
  {
    v4 = [*(a1 + 32) gotNowPlayingChangedNotificationAfterPlaying];

    if ((v4 & 1) == 0)
    {
      v5 = *(a1 + 32);

      return [v5 setGotNowPlayingChangedNotificationAfterPlaying:1];
    }
  }

  else
  {
  }

  v7 = *(a1 + 32);

  return [v7 updatePlayState];
}

- (void)newPlayButtonPressedWithNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"senderItem"];

  if (v5 != self)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__SearchUIPlayAudioButtonItem_newPlayButtonPressedWithNotification___block_invoke;
    v6[3] = &unk_1E85B24C8;
    v6[4] = self;
    [SearchUIUtilities dispatchMainIfNecessary:v6];
  }
}

- (void)toggleOff
{
  [(SearchUIButtonItem *)self setStatus:0];
  v3 = [(SearchUIButtonItem *)self delegate];
  [v3 stateDidChangeForButtonItem:self];
}

@end