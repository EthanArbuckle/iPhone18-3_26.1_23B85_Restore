@interface SearchUIPlayMediaHandler
- (BOOL)canPlayIntent;
- (BOOL)supportsIntentPath;
- (id)destinationApplicationIconImage;
- (id)intent;
- (id)mediaMetadata;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
- (void)performIntent:(id)a3 withBundleIdentifier:(id)a4;
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
  v6 = [(SearchUICommandHandler *)self command];
  v7 = [v6 playbackLocation];
  v8 = [(SearchUIPlayMediaHandler *)self mediaMetadata];
  v9 = [SearchUIMediaUtilities mediaSearchForMetadata:v8];
  v10 = [v3 initWithMediaItems:v5 mediaContainer:0 playShuffled:0 playbackRepeatMode:1 resumePlayback:0 playbackQueueLocation:v7 playbackSpeed:0 mediaSearch:v9];

  return v10;
}

- (id)mediaMetadata
{
  v2 = [(SearchUICommandHandler *)self command];
  v3 = [v2 mediaMetadata];

  return v3;
}

- (BOOL)supportsIntentPath
{
  v2 = [(SearchUIMediaHandler *)self clientSelectedBundleIdentifier];
  v3 = [SearchUIMediaUtilities bundleIdentifierSupportsPlayIntent:v2];

  return v3;
}

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SearchUIPlayMediaHandler *)self mediaMetadata];
  v11 = [v8 audioData];
  v12 = [v8 shouldPause];
  v13 = v12;
  if (v11)
  {
    v14 = [_TtC8SearchUI20SearchUITTSUtilities ttsAudioDataWithSfAudioData:v11];
    if (!v14)
    {
LABEL_19:

      goto LABEL_20;
    }

    v15 = [v9 feedbackDelegate];
    if (v13)
    {
      if (objc_opt_respondsToSelector())
      {
        [v15 stopPlaybackForAudioData:v14];
LABEL_18:

        goto LABEL_19;
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __68__SearchUIPlayMediaHandler_performCommand_triggerEvent_environment___block_invoke;
      v24[3] = &unk_1E85B3B30;
      v25 = v11;
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
        [v15 performPlaybackForAudioData:v14 completionHandler:v23];
        goto LABEL_18;
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __68__SearchUIPlayMediaHandler_performCommand_triggerEvent_environment___block_invoke_2;
      v20[3] = &unk_1E85B3510;
      v21 = v11;
      v22 = self;
      [_TtC8SearchUI20SearchUITTSUtilities playWithAudioData:v14 completionHandler:v20];
      v18 = v21;
    }

    goto LABEL_18;
  }

  if (v12)
  {
    if ([v10 mediaType] == 100)
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
    [(SearchUIMediaHandler *)&v19 performCommand:v8 triggerEvent:a4 environment:v9];
  }

  else
  {
    [SearchUIMediaUtilities playMedia:v10];
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
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SearchUITTSPlaybackDidFinishNotification" object:0];
}

- (BOOL)canPlayIntent
{
  v2 = [(SearchUIPlayMediaHandler *)self mediaMetadata];
  v3 = [v2 artistName];
  if (v3 || ([v2 albumName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v4 = [v2 mediaName];

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  LODWORD(v4) = [MEMORY[0x1E69D9240] isMacOS] ^ 1;
LABEL_5:

  return v4;
}

- (void)performIntent:(id)a3 withBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(SearchUIPlayMediaHandler *)self canPlayIntent])
  {
    goto LABEL_4;
  }

  v8 = [SearchUIUtilities bundleIdentifierForApp:11];
  if (([v7 isEqualToString:v8] & 1) == 0)
  {

    goto LABEL_6;
  }

  v9 = [(SearchUIPlayMediaHandler *)self mediaMetadata];
  v10 = [v9 mediaIdentifier];

  if (!v10)
  {
LABEL_6:
    v12.receiver = self;
    v12.super_class = SearchUIPlayMediaHandler;
    [(SearchUIMediaHandler *)&v12 performIntent:v6 withBundleIdentifier:v7];
    goto LABEL_7;
  }

LABEL_4:
  v11 = [(SearchUIPlayMediaHandler *)self mediaMetadata];
  [SearchUIMediaUtilities playMedia:v11];

LABEL_7:
}

- (id)destinationApplicationIconImage
{
  v3 = [SearchUIPreferredMediaAppIcon alloc];
  v4 = [(SearchUICommandHandler *)self command];
  v5 = [v4 mediaMetadata];
  v6 = [(SearchUIPreferredMediaAppIcon *)v3 initWithMediaMetadata:v5 variant:+[SearchUICompletionStringView preferredAppIconVariant]];

  return v6;
}

@end