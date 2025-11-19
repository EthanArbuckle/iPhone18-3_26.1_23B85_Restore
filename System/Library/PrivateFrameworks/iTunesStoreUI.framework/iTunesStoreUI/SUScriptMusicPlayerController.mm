@interface SUScriptMusicPlayerController
+ (id)scriptPlaybackStateForNativePlaybackState:(int64_t)a3;
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSString)playbackState;
- (NSString)playerType;
- (NSString)repeatMode;
- (NSString)shuffleMode;
- (SUScriptMediaItem)nowPlayingItem;
- (SUScriptMusicPlayerController)initWithPlayerType:(id)a3;
- (double)currentPlaybackTime;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)setQueueWithItemCollection:(id)a3;
- (void)setQueueWithQuery:(id)a3;
- (void)setRepeatMode:(id)a3;
- (void)setShuffleMode:(id)a3;
- (void)setVolume:(id)a3;
@end

@implementation SUScriptMusicPlayerController

- (SUScriptMusicPlayerController)initWithPlayerType:(id)a3
{
  v4 = [(SUScriptObject *)self init];
  if (v4)
  {
    if (([a3 isEqualToString:@"app"] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"iPod"))
    {
      v4->_playerType = a3;
      WebThreadRunOnMainThread();
    }

    else
    {
      [MEMORY[0x1E69E2F88] throwException:@"Unknown player type"];

      return 0;
    }
  }

  return v4;
}

uint64_t __52__SUScriptMusicPlayerController_initWithPlayerType___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"app"])
  {
    result = [MEMORY[0x1E69707E8] applicationMusicPlayer];
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:@"iPod"];
    if (!result)
    {
      return result;
    }

    result = [MEMORY[0x1E69707E8] systemMusicPlayer];
  }

  if (result)
  {
    v3 = *(a1 + 40);
    v4 = [(SUScriptNativeObject *)SUScriptMusicPlayerNativeObject objectWithNativeObject:result];

    return [v3 setNativeObject:v4];
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptMusicPlayerController;
  [(SUScriptObject *)&v3 dealloc];
}

+ (id)scriptPlaybackStateForNativePlaybackState:(int64_t)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E8165EF0[a3];
  }
}

uint64_t __53__SUScriptMusicPlayerController_beginSeekingBackward__block_invoke(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "nativeObject")];

  return [v1 beginSeekingBackward];
}

uint64_t __52__SUScriptMusicPlayerController_beginSeekingForward__block_invoke(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "nativeObject")];

  return [v1 beginSeekingForward];
}

uint64_t __43__SUScriptMusicPlayerController_endSeeking__block_invoke(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "nativeObject")];

  return [v1 endSeeking];
}

uint64_t __38__SUScriptMusicPlayerController_pause__block_invoke(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "nativeObject")];

  return [v1 pause];
}

uint64_t __37__SUScriptMusicPlayerController_play__block_invoke(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "nativeObject")];

  return [v1 play];
}

- (void)setQueueWithItemCollection:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !a3) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __60__SUScriptMusicPlayerController_setQueueWithItemCollection___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "nativeObject")];
  v3 = [*(a1 + 40) nativeCollection];

  return [v2 setQueueWithItemCollection:v3];
}

- (void)setQueueWithQuery:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !a3) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __51__SUScriptMusicPlayerController_setQueueWithQuery___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "nativeObject")];
  v3 = [*(a1 + 40) nativeQuery];

  return [v2 setQueueWithQuery:v3];
}

uint64_t __48__SUScriptMusicPlayerController_skipToBeginning__block_invoke(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "nativeObject")];

  return [v1 skipToBeginning];
}

uint64_t __47__SUScriptMusicPlayerController_skipToNextItem__block_invoke(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "nativeObject")];

  return [v1 skipToNextItem];
}

uint64_t __51__SUScriptMusicPlayerController_skipToPreviousItem__block_invoke(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "nativeObject")];

  return [v1 skipToPreviousItem];
}

uint64_t __37__SUScriptMusicPlayerController_stop__block_invoke(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "nativeObject")];

  return [v1 stop];
}

- (double)currentPlaybackTime
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __52__SUScriptMusicPlayerController_currentPlaybackTime__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (SUScriptMediaItem)nowPlayingItem
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__27;
  v12 = __Block_byref_object_dispose__27;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __47__SUScriptMusicPlayerController_nowPlayingItem__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
  if (result)
  {
    v3 = result;
    *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(SUScriptMediaItem);
    [*(*(*(a1 + 40) + 8) + 40) setNativeObject:{+[SUScriptNativeObject objectWithNativeObject:](SUScriptNativeObject, "objectWithNativeObject:", v3)}];
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return [v4 checkInScriptObject:v5];
  }

  return result;
}

- (NSString)playbackState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__27;
  v12 = __Block_byref_object_dispose__27;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __46__SUScriptMusicPlayerController_playbackState__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "nativeObject")];
  if (result)
  {
    result = [objc_opt_class() scriptPlaybackStateForNativePlaybackState:{objc_msgSend(result, "playbackState")}];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (NSString)playerType
{
  playerType = self->_playerType;
  if (playerType)
  {
    v4 = playerType;

    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E695DFB0];

    return [v6 null];
  }
}

- (NSString)repeatMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__27;
  v12 = __Block_byref_object_dispose__27;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __43__SUScriptMusicPlayerController_repeatMode__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "nativeObject")];
  if (result)
  {
    result = [result repeatMode];
    if (result > 1)
    {
      if (result == 2)
      {
        result = [*(a1 + 32) repeatModeOne];
      }

      else
      {
        if (result != 3)
        {
          return result;
        }

        result = [*(a1 + 32) repeatModeAll];
      }
    }

    else if (result)
    {
      if (result != 1)
      {
        return result;
      }

      result = [*(a1 + 32) repeatModeNone];
    }

    else
    {
      result = [*(a1 + 32) repeatModeDefault];
    }

    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (NSString)shuffleMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__27;
  v12 = __Block_byref_object_dispose__27;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __44__SUScriptMusicPlayerController_shuffleMode__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "nativeObject")];
  if (result)
  {
    result = [result shuffleMode];
    if (result > 1)
    {
      if (result == 2)
      {
        result = [*(a1 + 32) shuffleModeSongs];
      }

      else
      {
        if (result != 3)
        {
          return result;
        }

        result = [*(a1 + 32) shuffleModeAlbums];
      }
    }

    else if (result)
    {
      if (result != 1)
      {
        return result;
      }

      result = [*(a1 + 32) shuffleModeOff];
    }

    else
    {
      result = [*(a1 + 32) shuffleModeDefault];
    }

    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (void)setRepeatMode:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (([a3 isEqualToString:{-[SUScriptMusicPlayerController repeatModeDefault](self, "repeatModeDefault")}] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", -[SUScriptMusicPlayerController repeatModeNone](self, "repeatModeNone")) & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", -[SUScriptMusicPlayerController repeatModeOne](self, "repeatModeOne")) & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", -[SUScriptMusicPlayerController repeatModeAll](self, "repeatModeAll"))))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __47__SUScriptMusicPlayerController_setRepeatMode___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "nativeObject")];
  v3 = *(a1 + 40);

  return [v2 setRepeatMode:v3];
}

- (void)setShuffleMode:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (![a3 isEqualToString:{-[SUScriptMusicPlayerController shuffleModeDefault](self, "shuffleModeDefault")}] || (objc_msgSend(a3, "isEqualToString:", -[SUScriptMusicPlayerController shuffleModeOff](self, "shuffleModeOff")) & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", -[SUScriptMusicPlayerController shuffleModeSongs](self, "shuffleModeSongs")) & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", -[SUScriptMusicPlayerController shuffleModeAlbums](self, "shuffleModeAlbums"))))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __48__SUScriptMusicPlayerController_setShuffleMode___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "nativeObject")];
  v3 = *(a1 + 40);

  return [v2 setShuffleMode:v3];
}

- (void)setVolume:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __43__SUScriptMusicPlayerController_setVolume___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "nativeObject")];
  [*(a1 + 40) floatValue];

  return [v2 setVolumePrivate:?];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_40 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptMusicPlayerController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_32, 11);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptMusicPlayerController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptMusicPlayerController;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_40 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_32 = sel_beginSeekingBackward;
    *algn_1EBF3B0E8 = @"beginSeekingBackward";
    qword_1EBF3B0F0 = sel_beginSeekingForward;
    unk_1EBF3B0F8 = @"beginSeekingForward";
    qword_1EBF3B100 = sel_endSeeking;
    unk_1EBF3B108 = @"endSeeking";
    qword_1EBF3B110 = sel_pause;
    unk_1EBF3B118 = @"pause";
    qword_1EBF3B120 = sel_play;
    unk_1EBF3B128 = @"play";
    qword_1EBF3B130 = sel_setQueueWithItemCollection_;
    unk_1EBF3B138 = @"setQueueWithItemCollection";
    qword_1EBF3B140 = sel_setQueueWithQuery_;
    unk_1EBF3B148 = @"setQueueWithQuery";
    qword_1EBF3B150 = sel_skipToBeginning;
    unk_1EBF3B158 = @"skipToBeginning";
    qword_1EBF3B160 = sel_skipToNextItem;
    unk_1EBF3B168 = @"skipToNextItem";
    qword_1EBF3B170 = sel_skipToPreviousItem;
    unk_1EBF3B178 = @"skipToPreviousItem";
    qword_1EBF3B180 = sel_stop;
    unk_1EBF3B188 = @"stop";
    __KeyMapping_40 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"currentPlaybackTime", @"nowPlayingItem", @"nowPlayingItem", @"playbackState", @"playbackState", @"playerType", @"playerType", @"repeatMode", @"repeatMode", @"shuffleMode", @"shuffleMode", @"volume", @"volume", @"PLAYBACK_STATE_INTERRUPTED", @"playbackStateInterrupted", @"PLAYBACK_STATE_PAUSED", @"playbackStatePaused", @"PLAYBACK_STATE_PLAYING", @"playbackStatePlaying", @"PLAYBACK_STATE_SEEKING_BACKWARD", @"playbackStateSeekingBackward", @"PLAYBACK_STATE_SEEKING_FORWARD", @"playbackStateSeekingForward", @"PLAYBACK_STATE_STOPPED", @"playbackStateStopped", @"REPEAT_MODE_ALL", @"repeatModeAll", @"REPEAT_MODE_DEFAULT", @"repeatModeDefault", @"REPEAT_MODE_NONE", @"repeatModeNone", @"REPEAT_MODE_ONE", @"repeatModeOne", @"SHUFFLE_MODE_ALBUMS", @"shuffleModeAlbums", @"SHUFFLE_MODE_DEFAULT", @"shuffleModeDefault", @"SHUFFLE_MODE_OFF", @"shuffleModeOff", @"SHUFFLE_MODE_SONGS", @"shuffleModeSongs", 0}];
  }
}

@end