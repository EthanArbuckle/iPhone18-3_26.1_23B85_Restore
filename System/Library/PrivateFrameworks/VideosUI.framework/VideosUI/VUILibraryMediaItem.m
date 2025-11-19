@interface VUILibraryMediaItem
@end

@implementation VUILibraryMediaItem

void __37__VUILibraryMediaItem_iOS_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUILibraryMediaItem_iOS");
  v1 = sLogObject_17;
  sLogObject_17 = v0;
}

void __67__VUILibraryMediaItem_iOS__schedulePlaybackPositionInfoPersistence__block_invoke(uint64_t a1)
{
  v13 = [*(a1 + 32) playbackPositionInfo];
  [*(a1 + 32) setPlaybackPositionInfo:0];
  v2 = v13;
  if (v13)
  {
    v3 = [*(a1 + 32) ml3Track];

    if (v3)
    {
      v4 = +[VUIPlaybackPositionController sharedInstance];
      v5 = [*(a1 + 32) ml3Track];
      [v4 persistPlaybackPositionInfo:v13 forTrack:v5];
    }

    v6 = [*(a1 + 32) mpMediaItem];

    v2 = v13;
    if (v6)
    {
      v7 = [*(a1 + 32) mpMediaItem];
      v8 = [v13 playCount];
      [v7 setValue:v8 forProperty:*MEMORY[0x1E696FAA0] withCompletionBlock:0];

      v9 = [*(a1 + 32) mpMediaItem];
      v10 = [v13 bookmarkTime];
      [v9 setValue:v10 forProperty:*MEMORY[0x1E696F950] withCompletionBlock:0];

      v11 = [*(a1 + 32) mpMediaItem];
      v12 = [v13 hasBeenPlayed];
      [v11 setValue:v12 forProperty:*MEMORY[0x1E696FA00] withCompletionBlock:0];

      v2 = v13;
    }
  }
}

@end