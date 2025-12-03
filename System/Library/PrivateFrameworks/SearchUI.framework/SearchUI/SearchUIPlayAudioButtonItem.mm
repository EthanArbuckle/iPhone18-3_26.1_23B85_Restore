@interface SearchUIPlayAudioButtonItem
+ (BOOL)isSingleItemMedia:(id)media;
- (BOOL)hasState;
- (BOOL)shouldSkipUpdate;
- (SearchUIPlayAudioButtonItem)initWithSFButtonItem:(id)item;
- (id)commandForStatus:(unint64_t)status;
- (id)onStateSymbolName;
- (unint64_t)status;
- (void)buttonPressed;
- (void)dealloc;
- (void)newPlayButtonPressedWithNotification:(id)notification;
- (void)nowPlayingItemDidChange;
- (void)playbackDidFinish;
- (void)playbackStateDidChange;
- (void)toggleOff;
- (void)updatePlayState;
@end

@implementation SearchUIPlayAudioButtonItem

+ (BOOL)isSingleItemMedia:(id)media
{
  mediaType = [media mediaType];
  result = 1;
  if (mediaType > 0x14 || ((1 << mediaType) & 0x102CC2) == 0)
  {
    return mediaType == 100;
  }

  return result;
}

- (SearchUIPlayAudioButtonItem)initWithSFButtonItem:(id)item
{
  v6.receiver = self;
  v6.super_class = SearchUIPlayAudioButtonItem;
  v3 = [(SearchUIButtonItem *)&v6 initWithSFButtonItem:item];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_playbackStateDidChange name:@"SearchUIMusicPlaybackStateDidChangeNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_nowPlayingItemDidChange name:@"SearchUIMusicNowPlayingItemDidChangeNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_nowPlayingItemDidChange name:@"SearchUIMusicDidResetNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_playbackDidFinish name:*MEMORY[0x1E6987A10] object:0];
    [defaultCenter addObserver:v3 selector:sel_newPlayButtonPressedWithNotification_ name:@"SearchUIPlayButtonDidBeginPlayingNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_playbackDidFinish name:@"SearchUITTSPlaybackDidFinishNotification" object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  systemMusicPlayer = [MEMORY[0x1E69707E8] systemMusicPlayer];
  [systemMusicPlayer endGeneratingPlaybackNotifications];

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
  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  mediaMetadata = [sfButtonItem mediaMetadata];
  mediaIdentifier = [mediaMetadata mediaIdentifier];
  if (mediaIdentifier && ([objc_opt_class() isSingleItemMedia:mediaMetadata] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    audioData = [sfButtonItem audioData];
    v5 = audioData != 0;
  }

  return v5;
}

- (id)onStateSymbolName
{
  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  audioData = [sfButtonItem audioData];
  if (audioData)
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

- (id)commandForStatus:(unint64_t)status
{
  v5 = objc_opt_new();
  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  mediaMetadata = [sfButtonItem mediaMetadata];
  [v5 setMediaMetadata:mediaMetadata];

  sfButtonItem2 = [(SearchUIButtonItem *)self sfButtonItem];
  audioData = [sfButtonItem2 audioData];
  [v5 setAudioData:audioData];

  if ([(SearchUIPlayAudioButtonItem *)self hasState])
  {
    [v5 setShouldPause:status == 1];
  }

  return v5;
}

- (void)buttonPressed
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (![(SearchUIPlayAudioButtonItem *)self status])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"senderItem";
    v9[0] = self;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [defaultCenter postNotificationName:@"SearchUIPlayButtonDidBeginPlayingNotification" object:0 userInfo:v4];
  }

  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  mediaMetadata = [sfButtonItem mediaMetadata];

  v7.receiver = self;
  v7.super_class = SearchUIPlayAudioButtonItem;
  [(SearchUIToggleButtonItem *)&v7 buttonPressed];
  if ([(SearchUIPlayAudioButtonItem *)self status]== 1 || ![(SearchUIPlayAudioButtonItem *)self hasState])
  {
    [SearchUIMediaUtilities setCurrentMedia:mediaMetadata];
    [SearchUIMediaUtilities setIsPlaying:1];
    [(SearchUIPlayAudioButtonItem *)self setGotNowPlayingChangedNotificationAfterPlaying:0];
  }

  else if ([SearchUIMediaUtilities isCurrentMedia:mediaMetadata])
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
  playbackState = [v3 playbackState];

  if ((playbackState - 2) < 4)
  {
    v5 = 0;
LABEL_4:
    [SearchUIMediaUtilities setIsPlaying:v5];
LABEL_5:

    [(SearchUIPlayAudioButtonItem *)self updatePlayState];
    return;
  }

  if (playbackState == 1)
  {
    v5 = 1;
    goto LABEL_4;
  }

  if (playbackState)
  {
    goto LABEL_5;
  }

  [(SearchUIPlayAudioButtonItem *)self playbackDidFinish];
}

- (BOOL)shouldSkipUpdate
{
  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  mediaMetadata = [sfButtonItem mediaMetadata];
  if ([mediaMetadata mediaType] == 100)
  {

    return 0;
  }

  sfButtonItem2 = [(SearchUIButtonItem *)self sfButtonItem];
  audioData = [sfButtonItem2 audioData];

  if (audioData)
  {
    return 0;
  }

  v8 = +[SearchUIMediaUtilities musicStatusCache];
  playbackState = [v8 playbackState];

  if (playbackState != 1)
  {
    if (playbackState != 2)
    {
      v10 = 0;
      goto LABEL_10;
    }

    playbackState = 0;
  }

  v10 = [(SearchUIPlayAudioButtonItem *)self status]== playbackState;
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

- (void)newPlayButtonPressedWithNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"senderItem"];

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
  delegate = [(SearchUIButtonItem *)self delegate];
  [delegate stateDidChangeForButtonItem:self];
}

@end