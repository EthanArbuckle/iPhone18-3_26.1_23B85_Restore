@interface SearchUIPlayMediaHandler
- (BOOL)canPlayIntent;
- (BOOL)supportsIntentPath;
- (id)destinationApplicationIconImage;
- (id)intent;
- (id)mediaMetadata;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
- (void)performIntent:(id)intent withBundleIdentifier:(id)identifier;
- (void)sendPlaybackFinishedNotification;
@end

@implementation SearchUIPlayMediaHandler

- (id)intent
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696E950]);
  v4 = [objc_alloc(MEMORY[0x1E696E8E8]) initWithIdentifier:0 title:&stru_1F55BC4E8 type:0 artwork:0];
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  command = [(SearchUICommandHandler *)self command];
  playbackLocation = [command playbackLocation];
  mediaMetadata = [(SearchUIPlayMediaHandler *)self mediaMetadata];
  v9 = [SearchUIMediaUtilities mediaSearchForMetadata:mediaMetadata];
  v10 = [v3 initWithMediaItems:v5 mediaContainer:0 playShuffled:0 playbackRepeatMode:1 resumePlayback:0 playbackQueueLocation:playbackLocation playbackSpeed:0 mediaSearch:v9];

  return v10;
}

- (id)mediaMetadata
{
  command = [(SearchUICommandHandler *)self command];
  mediaMetadata = [command mediaMetadata];

  return mediaMetadata;
}

- (BOOL)supportsIntentPath
{
  clientSelectedBundleIdentifier = [(SearchUIMediaHandler *)self clientSelectedBundleIdentifier];
  v3 = [SearchUIMediaUtilities bundleIdentifierSupportsPlayIntent:clientSelectedBundleIdentifier];

  return v3;
}

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  commandCopy = command;
  environmentCopy = environment;
  mediaMetadata = [(SearchUIPlayMediaHandler *)self mediaMetadata];
  audioData = [commandCopy audioData];
  shouldPause = [commandCopy shouldPause];
  v13 = shouldPause;
  if (audioData)
  {
    v14 = [_TtC8SearchUI20SearchUITTSUtilities ttsAudioDataWithSfAudioData:audioData];
    if (!v14)
    {
LABEL_19:

      goto LABEL_20;
    }

    feedbackDelegate = [environmentCopy feedbackDelegate];
    if (v13)
    {
      if (objc_opt_respondsToSelector())
      {
        [feedbackDelegate stopPlaybackForAudioData:v14];
LABEL_18:

        goto LABEL_19;
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __68__SearchUIPlayMediaHandler_performCommand_triggerEvent_environment___block_invoke;
      v24[3] = &unk_1E85B3B30;
      v25 = audioData;
      [_TtC8SearchUI20SearchUITTSUtilities stopWithCompletionHandler:v24];
      v18 = v25;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __68__SearchUIPlayMediaHandler_performCommand_triggerEvent_environment___block_invoke_22;
        v23[3] = &unk_1E85B24C8;
        v23[4] = self;
        [feedbackDelegate performPlaybackForAudioData:v14 completionHandler:v23];
        goto LABEL_18;
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __68__SearchUIPlayMediaHandler_performCommand_triggerEvent_environment___block_invoke_2;
      v20[3] = &unk_1E85B3510;
      v21 = audioData;
      selfCopy = self;
      [_TtC8SearchUI20SearchUITTSUtilities playWithAudioData:v14 completionHandler:v20];
      v18 = v21;
    }

    goto LABEL_18;
  }

  if (shouldPause)
  {
    if ([mediaMetadata mediaType] == 100)
    {
      +[_TtC8SearchUI26SearchUIVoicemailUtilities pauseVoicemail];
    }

    else
    {
      +[SearchUIMediaUtilities pausePlayback];
    }
  }

  else if (-[SearchUIPlayMediaHandler canPlayIntent](self, "canPlayIntent") || (-[SearchUIPlayMediaHandler mediaMetadata](self, "mediaMetadata"), v16 = objc_claimAutoreleasedReturnValue(), [v16 mediaIdentifier], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
  {
    v19.receiver = self;
    v19.super_class = SearchUIPlayMediaHandler;
    [(SearchUIMediaHandler *)&v19 performCommand:commandCopy triggerEvent:event environment:environmentCopy];
  }

  else
  {
    [SearchUIMediaUtilities playMedia:mediaMetadata];
  }

LABEL_20:
}

void __68__SearchUIPlayMediaHandler_performCommand_triggerEvent_environment___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = SearchUIGeneralLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __68__SearchUIPlayMediaHandler_performCommand_triggerEvent_environment___block_invoke_cold_1();
    }
  }
}

void __68__SearchUIPlayMediaHandler_performCommand_triggerEvent_environment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SearchUIGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__SearchUIPlayMediaHandler_performCommand_triggerEvent_environment___block_invoke_2_cold_1();
    }
  }

  [*(a1 + 40) sendPlaybackFinishedNotification];
}

- (void)sendPlaybackFinishedNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SearchUITTSPlaybackDidFinishNotification" object:0];
}

- (BOOL)canPlayIntent
{
  mediaMetadata = [(SearchUIPlayMediaHandler *)self mediaMetadata];
  artistName = [mediaMetadata artistName];
  if (artistName || ([mediaMetadata albumName], (artistName = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    mediaName = [mediaMetadata mediaName];

    if (!mediaName)
    {
      goto LABEL_5;
    }
  }

  LODWORD(mediaName) = [MEMORY[0x1E69D9240] isMacOS] ^ 1;
LABEL_5:

  return mediaName;
}

- (void)performIntent:(id)intent withBundleIdentifier:(id)identifier
{
  intentCopy = intent;
  identifierCopy = identifier;
  if (![(SearchUIPlayMediaHandler *)self canPlayIntent])
  {
    goto LABEL_4;
  }

  v8 = [SearchUIUtilities bundleIdentifierForApp:11];
  if (([identifierCopy isEqualToString:v8] & 1) == 0)
  {

    goto LABEL_6;
  }

  mediaMetadata = [(SearchUIPlayMediaHandler *)self mediaMetadata];
  mediaIdentifier = [mediaMetadata mediaIdentifier];

  if (!mediaIdentifier)
  {
LABEL_6:
    v12.receiver = self;
    v12.super_class = SearchUIPlayMediaHandler;
    [(SearchUIMediaHandler *)&v12 performIntent:intentCopy withBundleIdentifier:identifierCopy];
    goto LABEL_7;
  }

LABEL_4:
  mediaMetadata2 = [(SearchUIPlayMediaHandler *)self mediaMetadata];
  [SearchUIMediaUtilities playMedia:mediaMetadata2];

LABEL_7:
}

- (id)destinationApplicationIconImage
{
  v3 = [SearchUIPreferredMediaAppIcon alloc];
  command = [(SearchUICommandHandler *)self command];
  mediaMetadata = [command mediaMetadata];
  v6 = [(SearchUIPreferredMediaAppIcon *)v3 initWithMediaMetadata:mediaMetadata variant:+[SearchUICompletionStringView preferredAppIconVariant]];

  return v6;
}

@end