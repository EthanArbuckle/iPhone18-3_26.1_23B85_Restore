@interface SUScriptAudioPlayer
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (SUScriptAudioPlayer)initWithURL:(id)a3 keyURL:(id)a4 certificateURL:(id)a5;
- (double)currentTime;
- (double)duration;
- (id)scriptAttributeKeys;
- (int64_t)state;
- (void)_audioPlayerStateChangeNotification:(id)a3;
- (void)dealloc;
- (void)setValue:(id)a3 forNowPlayingKey:(id)a4;
@end

@implementation SUScriptAudioPlayer

- (SUScriptAudioPlayer)initWithURL:(id)a3 keyURL:(id)a4 certificateURL:(id)a5
{
  v10.receiver = self;
  v10.super_class = SUScriptAudioPlayer;
  v8 = [(SUScriptObject *)&v10 init];
  if (v8)
  {
    v8->_url = a3;
    v8->_keyUrl = a4;
    v8->_certificateUrl = a5;
    WebThreadRunOnMainThread();
  }

  return v8;
}

uint64_t __57__SUScriptAudioPlayer_initWithURL_keyURL_certificateURL___block_invoke(uint64_t a1)
{
  v2 = [+[SUAudioPlayerSessionManager sessionManager](SUAudioPlayerSessionManager "sessionManager")];
  [v2 setKeyURL:*(*(a1 + 32) + 88)];
  [v2 setCertificateURL:*(*(a1 + 32) + 96)];
  *(*(a1 + 32) + 72) = [v2 playerStatus];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);

  return [v3 addObserver:v4 selector:sel__audioPlayerStateChangeNotification_ name:@"SUAudioPlayerStatusChangeNotification" object:v2];
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = SUScriptAudioPlayer;
  [(SUScriptObject *)&v3 dealloc];
}

uint64_t __27__SUScriptAudioPlayer_play__block_invoke(uint64_t a1)
{
  v2 = [+[SUAudioPlayerSessionManager sessionManager](SUAudioPlayerSessionManager "sessionManager")];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:*(a1 + 32) name:@"SUAudioPlayerStatusChangeNotification" object:0];
  [v3 addObserver:*(a1 + 32) selector:sel__audioPlayerStateChangeNotification_ name:@"SUAudioPlayerStatusChangeNotification" object:v2];

  return [v2 play];
}

uint64_t __28__SUScriptAudioPlayer_pause__block_invoke(uint64_t a1)
{
  v1 = [+[SUAudioPlayerSessionManager sessionManager](SUAudioPlayerSessionManager "sessionManager")];

  return [v1 pause];
}

- (void)setValue:(id)a3 forNowPlayingKey:(id)a4
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v4 = MEMORY[0x1E69E2F88];

    [v4 throwException:@"Invalid argument"];
  }
}

void __49__SUScriptAudioPlayer_setValue_forNowPlayingKey___block_invoke(id *a1)
{
  v4 = a1[4];
  if ([a1[5] isEqualToString:*MEMORY[0x1E696F940]])
  {
    v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a1[4]];
    v3 = [a1[6] newImageWithURL:v2];

    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E69705D8]) initWithImage:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  [objc_msgSend(+[SUAudioPlayerSessionManager sessionManager](SUAudioPlayerSessionManager "sessionManager")];
}

uint64_t __27__SUScriptAudioPlayer_stop__block_invoke(uint64_t a1)
{
  v1 = [+[SUAudioPlayerSessionManager sessionManager](SUAudioPlayerSessionManager "sessionManager")];

  return [v1 stop];
}

- (double)currentTime
{
  [(SUScriptObject *)self lock];
  playerStatus = self->_playerStatus;
  if (playerStatus)
  {
    [(SUPlayerStatus *)playerStatus currentTime];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  [(SUScriptObject *)self unlock];
  return v5;
}

- (double)duration
{
  [(SUScriptObject *)self lock];
  playerStatus = self->_playerStatus;
  if (playerStatus)
  {
    [(SUPlayerStatus *)playerStatus duration];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  [(SUScriptObject *)self unlock];
  return v5;
}

- (int64_t)state
{
  [(SUScriptObject *)self lock];
  v3 = [(SUPlayerStatus *)self->_playerStatus playerState];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)_audioPlayerStateChangeNotification:(id)a3
{
  v4 = [a3 object];
  [(SUScriptObject *)self lock];

  self->_playerStatus = [v4 playerStatus];
  [(SUScriptObject *)self unlock];

  [(SUScriptObject *)self dispatchEvent:0 forName:@"statechange"];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_60 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptAudioPlayer;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_46, 4);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptAudioPlayer;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptAudioPlayer;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_60 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_46 = sel_play;
    unk_1EBF3B620 = @"play";
    qword_1EBF3B628 = sel_pause;
    unk_1EBF3B630 = @"pause";
    qword_1EBF3B638 = sel_setValue_forNowPlayingKey_;
    unk_1EBF3B640 = @"setNowPlayingValue";
    qword_1EBF3B648 = sel_stop;
    unk_1EBF3B650 = @"stop";
    __KeyMapping_60 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"certificateURL", @"currentTime", @"currentTime", @"duration", @"duration", @"keyURL", @"keyURL", @"state", @"state", @"URL", @"URL", @"NOW_PLAYING_KEY_ALBUM_TITLE", @"nowPlayingKeyAlbumTitle", @"NOW_PLAYING_KEY_ALBUM_TRACK_COUNT", @"nowPlayingKeyAlbumTrackCount", @"NOW_PLAYING_KEY_ALBUM_TRACK_NUMBER", @"nowPlayingKeyAlbumTrackNumber", @"NOW_PLAYING_KEY_ARTIST", @"nowPlayingKeyArtist", @"NOW_PLAYING_KEY_ARTWORK", @"nowPlayingKeyArtwork", @"NOW_PLAYING_KEY_COMPOSER", @"nowPlayingKeyComposer", @"NOW_PLAYING_KEY_DISC_COUNT", @"nowPlayingKeyDiscCount", @"NOW_PLAYING_KEY_DISC_NUMBER", @"nowPlayingKeyDiscNumber", @"NOW_PLAYING_KEY_GENRE", @"nowPlayingKeyGenre", @"NOW_PLAYING_KEY_PERSISTENT_ID", @"nowPlayingKeyPersistentID", @"NOW_PLAYING_KEY_PLAYBACK_DURATION", @"nowPlayingKeyPlaybackDuration", @"NOW_PLAYING_KEY_TITLE", @"nowPlayingKeyTitle", @"PLAYER_STATE_ACTIVE", @"playerStateActive", @"PLAYER_STATE_BUFFERING", @"playerStateBuffering", @"PLAYER_STATE_FAILED", @"playerStateFailed", @"PLAYER_STATE_FINISHED", @"playerStateFinished", @"PLAYER_STATE_PAUSED", @"playerStatePaused", @"PLAYER_STATE_UNPLAYED", @"playerStateUnplayed", 0}];
  }
}

@end