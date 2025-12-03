@interface VUIPlaybackErrorMessage
+ (id)sharedInstance;
- (id)_getLanguageCode;
- (id)_getSessionInfoFor:(id)for andMode:(id)mode;
- (void)getLocalizedErrorMessageFor:(id)for withPlaybackMode:(id)mode withError:(id)error completion:(id)completion;
@end

@implementation VUIPlaybackErrorMessage

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_29 != -1)
  {
    +[VUIPlaybackErrorMessage sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_11;

  return v3;
}

void __41__VUIPlaybackErrorMessage_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIPlaybackErrorMessage);
  v1 = sharedInstance_sharedInstance_11;
  sharedInstance_sharedInstance_11 = v0;
}

- (void)getLocalizedErrorMessageFor:(id)for withPlaybackMode:(id)mode withError:(id)error completion:(id)completion
{
  completionCopy = completion;
  errorCopy = error;
  modeCopy = mode;
  forCopy = for;
  _getLanguageCode = [(VUIPlaybackErrorMessage *)self _getLanguageCode];
  v15 = [(VUIPlaybackErrorMessage *)self _getSessionInfoFor:forCopy andMode:modeCopy];

  v16 = [objc_alloc(MEMORY[0x1E69C6778]) initWithAppTarget:0 locale:_getLanguageCode];
  v17 = [objc_alloc(MEMORY[0x1E69C6780]) initWithConfig:v16 logger:&__block_literal_global_36_0 metricsRecorder:&__block_literal_global_41 defaultAlert:&__block_literal_global_45];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__VUIPlaybackErrorMessage_getLocalizedErrorMessageFor_withPlaybackMode_withError_completion___block_invoke_3;
  v19[3] = &unk_1E8735528;
  v20 = completionCopy;
  v18 = completionCopy;
  [v17 fetchLocalizedErrorMessageForItems:v15 usingError:errorCopy completionHandler:v19];
}

void __93__VUIPlaybackErrorMessage_getLocalizedErrorMessageFor_withPlaybackMode_withError_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!a2)
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x1E696AF00] currentThread];
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUIPlaybackErrorMessage [%@] - emitting message:%@", &v7, 0x16u);
    }

    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __93__VUIPlaybackErrorMessage_getLocalizedErrorMessageFor_withPlaybackMode_withError_completion___block_invoke_cold_1(v4, v5);
    }

LABEL_7:
  }
}

void __93__VUIPlaybackErrorMessage_getLocalizedErrorMessageFor_withPlaybackMode_withError_completion___block_invoke_38(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[VUIMetricsController sharedInstance];
  [v3 recordDialog:v2];
}

id __93__VUIPlaybackErrorMessage_getLocalizedErrorMessageFor_withPlaybackMode_withError_completion___block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x1E69C6770]);
  v1 = +[VUILocalizationManager sharedInstance];
  v2 = [v1 localizedStringForKey:@"AV_PLAYBACK_ERROR"];
  v3 = [v0 initWithTitle:&stru_1F5DB25C0 body:v2];

  return v3;
}

void __93__VUIPlaybackErrorMessage_getLocalizedErrorMessageFor_withPlaybackMode_withError_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93__VUIPlaybackErrorMessage_getLocalizedErrorMessageFor_withPlaybackMode_withError_completion___block_invoke_4;
  v6[3] = &unk_1E872DC10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __93__VUIPlaybackErrorMessage_getLocalizedErrorMessageFor_withPlaybackMode_withError_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) title];
  v3 = [*(a1 + 32) body];
  (*(v2 + 16))(v2, v4, v3);
}

- (id)_getLanguageCode
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults arrayForKey:@"AppleLanguages"];

  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)_getSessionInfoFor:(id)for andMode:(id)mode
{
  v30[1] = *MEMORY[0x1E69E9840];
  forCopy = for;
  modeCopy = mode;
  v8 = objc_opt_new();
  if (forCopy)
  {
    v9 = [forCopy hasTrait:*MEMORY[0x1E69D5E50]];
    v10 = @"VOD";
    if (v9)
    {
      v10 = @"LIVE";
    }

    v11 = v10;
    v30[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [v8 setObject:v12 forKey:@"contentType"];

    v13 = [forCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C70]];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 vui_stringForKey:@"MediaIdentifier"];
      v16 = v15;
      if (v15)
      {
        v29 = v15;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
        [v8 setObject:v17 forKey:@"mediaIdentifier"];
      }
    }

    v18 = [forCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
    v19 = v18;
    if (v18)
    {
      v28 = v18;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      [v8 setObject:v20 forKey:@"brandId"];
    }

    _getLanguageCode = [(VUIPlaybackErrorMessage *)self _getLanguageCode];
    v22 = _getLanguageCode;
    if (_getLanguageCode)
    {
      v27 = _getLanguageCode;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      [v8 setObject:v23 forKey:@"locale"];
    }

    if (modeCopy)
    {
      v26 = modeCopy;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      [v8 setObject:v24 forKey:@"playbackMode"];
    }
  }

  return v8;
}

void __93__VUIPlaybackErrorMessage_getLocalizedErrorMessageFor_withPlaybackMode_withError_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIPlaybackErrorMessage [%@] - emitting message:%@", &v5, 0x16u);
}

@end