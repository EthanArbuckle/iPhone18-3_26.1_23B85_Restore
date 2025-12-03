@interface VUIPlayableResolver
+ (id)appContext;
+ (void)playableForAdamID:(id)d completion:(id)completion;
+ (void)playableForCanonicalID:(id)d showID:(id)iD mediaType:(id)type completion:(id)completion;
@end

@implementation VUIPlayableResolver

+ (id)appContext
{
  v2 = +[VUITVAppLauncher sharedInstance];
  appController = [v2 appController];
  appContext = [appController appContext];

  return appContext;
}

+ (void)playableForAdamID:(id)d completion:(id)completion
{
  v27[3] = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  appContext = [self appContext];

  if (appContext)
  {
    appContext2 = [self appContext];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__VUIPlayableResolver_playableForAdamID_completion___block_invoke_2;
    v20[3] = &unk_1E872FC68;
    v21 = dCopy;
    v22 = completionCopy;
    v10 = completionCopy;
    [appContext2 evaluate:v20];

    v11 = v21;
  }

  else
  {
    v26[0] = @"title";
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = [v12 localizedStringForKey:@"TV.GroupActivities.UnknownErrorTitle"];
    v27[0] = v13;
    v26[1] = @"message";
    v14 = +[VUILocalizationManager sharedInstance];
    v15 = [v14 localizedStringForKey:@"TV.GroupActivities.UnknownErrorMessage"];
    v27[1] = v15;
    v26[2] = @"primaryActionTitle";
    v16 = +[VUILocalizationManager sharedInstance];
    v17 = [v16 localizedStringForKey:@"TV.GroupActivities.UnknownErrorAction"];
    v27[2] = v17;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIPlayableResolverErrorDomain" code:0 userInfo:v10];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__VUIPlayableResolver_playableForAdamID_completion___block_invoke;
    block[3] = &unk_1E872DC10;
    v24 = v18;
    v25 = completionCopy;
    v19 = completionCopy;
    v11 = v18;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __52__VUIPlayableResolver_playableForAdamID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"VideoURLRouterInterface"];
  v15[0] = *(a1 + 32);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__VUIPlayableResolver_playableForAdamID_completion___block_invoke_3;
  aBlock[3] = &unk_1E872FC40;
  v14 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v15[1] = v4;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __52__VUIPlayableResolver_playableForAdamID_completion___block_invoke_5;
  v11 = &unk_1E872FC40;
  v12 = *(a1 + 40);
  v5 = _Block_copy(&v8);
  v15[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:{3, v8, v9, v10, v11}];
  v7 = [v3 invokeMethod:@"getPlayableForAdamID" withArguments:v6];
}

void __52__VUIPlayableResolver_playableForAdamID_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[VUIVideosPlayable alloc] initWithDictionary:v3 andMetadataDictionary:0];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__VUIPlayableResolver_playableForAdamID_completion___block_invoke_4;
  v7[3] = &unk_1E872DC10;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __52__VUIPlayableResolver_playableForAdamID_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIPlayableResolverErrorDomain" code:1 userInfo:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__VUIPlayableResolver_playableForAdamID_completion___block_invoke_6;
  v6[3] = &unk_1E872DC10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

+ (void)playableForCanonicalID:(id)d showID:(id)iD mediaType:(id)type completion:(id)completion
{
  v38[3] = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  completionCopy = completion;
  appContext = [self appContext];

  if (appContext)
  {
    if (iDCopy)
    {
      null = iDCopy;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v26 = null;
    appContext2 = [self appContext];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_2;
    v29[3] = &unk_1E872FC90;
    v30 = dCopy;
    v31 = v26;
    v32 = typeCopy;
    v33 = completionCopy;
    v25 = completionCopy;
    v22 = v26;
    [appContext2 evaluate:v29];

    v24 = v30;
  }

  else
  {
    v37[0] = @"title";
    v16 = +[VUILocalizationManager sharedInstance];
    [v16 localizedStringForKey:@"TV.GroupActivities.UnknownErrorTitle"];
    v17 = v28 = dCopy;
    v38[0] = v17;
    v37[1] = @"message";
    v18 = +[VUILocalizationManager sharedInstance];
    v19 = [v18 localizedStringForKey:@"TV.GroupActivities.UnknownErrorMessage"];
    v38[1] = v19;
    v37[2] = @"primaryActionTitle";
    v20 = +[VUILocalizationManager sharedInstance];
    v21 = [v20 localizedStringForKey:@"TV.GroupActivities.UnknownErrorAction"];
    v38[2] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];

    dCopy = v28;
    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIPlayableResolverErrorDomain" code:0 userInfo:v22];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke;
    block[3] = &unk_1E872DC10;
    v35 = v23;
    v36 = completionCopy;
    v24 = completionCopy;
    v25 = v23;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"VideoURLRouterInterface"];
  v4 = @"getPlayableAndMetadataForCanonicalID";
  if ([v3 hasProperty:@"getPlayableAndMetadataForCanonicalID"])
  {
    v6 = *(a1 + 56);
    v5 = (a1 + 56);
    v25 = *(v5 - 3);
    v26 = *(v5 - 1);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_3;
    aBlock[3] = &unk_1E872FC40;
    v7 = &v21;
    v21 = v6;
    v8 = _Block_copy(aBlock);
    v27 = v8;
    v9 = v19;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v10 = &v25;
    v11 = __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_5;
  }

  else
  {
    v12 = *(a1 + 56);
    v5 = (a1 + 56);
    v4 = @"getPlayableForCanonicalID";
    v22 = *(v5 - 3);
    v23 = *(v5 - 1);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_7;
    v17[3] = &unk_1E872FC40;
    v7 = &v18;
    v18 = v12;
    v8 = _Block_copy(v17);
    v24 = v8;
    v9 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v10 = &v22;
    v11 = __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_9;
  }

  v9[2] = v11;
  v9[3] = &unk_1E872FC40;
  v9[4] = *v5;
  v13 = _Block_copy(v9);
  *(v10 + 4) = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];
  v15 = [v3 invokeMethod:v4 withArguments:v14];
}

void __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 vui_dictionaryForKey:@"playable"];
  v5 = [v3 vui_dictionaryForKey:@"metadata"];

  v6 = [[VUIVideosPlayable alloc] initWithDictionary:v4 andMetadataDictionary:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_4;
  v9[3] = &unk_1E872DC10;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIPlayableResolverErrorDomain" code:1 userInfo:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_6;
  v6[3] = &unk_1E872DC10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[VUIVideosPlayable alloc] initWithDictionary:v3 andMetadataDictionary:0];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_8;
  v7[3] = &unk_1E872DC10;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIPlayableResolverErrorDomain" code:1 userInfo:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__VUIPlayableResolver_playableForCanonicalID_showID_mediaType_completion___block_invoke_10;
  v6[3] = &unk_1E872DC10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

@end