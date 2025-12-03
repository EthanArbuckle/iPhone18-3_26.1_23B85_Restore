@interface SearchUIPlayAudioButtonItemGenerator
+ (BOOL)mayRequireAsyncGenerationForButtonItem:(id)item;
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)item completion:(id)completion;
@end

@implementation SearchUIPlayAudioButtonItemGenerator

+ (BOOL)mayRequireAsyncGenerationForButtonItem:(id)item
{
  itemCopy = item;
  audioData = [itemCopy audioData];
  if (audioData)
  {
    v5 = 0;
  }

  else
  {
    mediaMetadata = [itemCopy mediaMetadata];
    v5 = [mediaMetadata mediaType] != 100;
  }

  return v5;
}

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)item completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  mediaMetadata = [itemCopy mediaMetadata];
  mediaIdentifier = [mediaMetadata mediaIdentifier];
  mediaType = [mediaMetadata mediaType];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke;
  aBlock[3] = &unk_1E85B2F38;
  v10 = itemCopy;
  v36 = v10;
  v11 = mediaMetadata;
  v37 = v11;
  v12 = completionCopy;
  v38 = v12;
  v13 = _Block_copy(aBlock);
  audioData = [v10 audioData];

  if (!audioData)
  {
    if ([SearchUIMediaUtilities isCoreSpotlightMedia:mediaIdentifier])
    {
      v19 = SearchUIButtonItemLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA169000, v19, OS_LOG_TYPE_DEFAULT, "Generating a button item with core spotlight media metadata", buf, 2u);
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_14;
      v32[3] = &unk_1E85B2E70;
      v33 = mediaIdentifier;
      v34 = v13;
      [SearchUIMediaUtilities getMusicUserDisclosureApprovalStatusWithCompletionHandler:v32];

      v20 = v33;
      goto LABEL_10;
    }

    if (mediaIdentifier && mediaType == 100)
    {
      v15 = SearchUIButtonItemLog();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      *buf = 138412290;
      v40 = mediaIdentifier;
      v16 = "Generating a button for voicemail: %@";
      v17 = v15;
      v18 = 12;
      goto LABEL_4;
    }

    if (v11 && ([MEMORY[0x1E69D9240] isMacOS] & 1) == 0)
    {
      v23 = SearchUIButtonItemLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifiersToExclude = [v11 bundleIdentifiersToExclude];
        *buf = 138412290;
        v40 = bundleIdentifiersToExclude;
        _os_log_impl(&dword_1DA169000, v23, OS_LOG_TYPE_DEFAULT, "Figuring out best play button path with SAAudioAppPrediction with bundleIDs to exclude: %@", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_18;
      v27[3] = &unk_1E85B2FB0;
      v30 = v13;
      v28 = v11;
      v31 = v12;
      v29 = v10;
      [SearchUIMediaUtilities predictionForMediaMetadata:v28 completion:v27];

      v20 = v30;
      goto LABEL_10;
    }

    v21 = SearchUIButtonItemLog();
    v22 = v21;
    if (mediaIdentifier)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = mediaIdentifier;
        _os_log_impl(&dword_1DA169000, v22, OS_LOG_TYPE_DEFAULT, "Generating a button for media identifier: %@", buf, 0xCu);
      }

      if (mediaType <= 5 && ((1 << mediaType) & 0x2E) != 0)
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_31;
        v25[3] = &unk_1E85B2F88;
        v26 = v13;
        [SearchUIMediaUtilities canPlayAppleMusicWithCompletionHandler:v25];
        v20 = v26;
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SearchUIPlayAudioButtonItemGenerator generateSearchUIButtonItemsWithSFButtonItem:v22 completion:?];
      }
    }

    (*(v13 + 2))(v13, 0);
    goto LABEL_11;
  }

  v15 = SearchUIButtonItemLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v16 = "Generating a button item with audio data";
    v17 = v15;
    v18 = 2;
LABEL_4:
    _os_log_impl(&dword_1DA169000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
  }

LABEL_5:

  (*(v13 + 2))(v13, 1);
LABEL_11:
}

void __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke(void *a1, int a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [[SearchUIPlayAudioButtonItem alloc] initWithSFButtonItem:a1[4]];
    [(SearchUIButtonItem *)v3 setStatus:[SearchUIMediaUtilities isNowPlayingMedia:a1[5]]];
    v4 = a1[6];
    v7[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    (*(v4 + 16))(v4, v5, 1);
  }

  else
  {
    v6 = *(a1[6] + 16);

    v6();
  }
}

void __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_14(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[SearchUIMediaUtilities localAudioCache];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_2;
    v6[3] = &unk_1E85B2F60;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v3 getObjectForKey:v4 completionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = SearchUIButtonItemLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = [v4 count];
      _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "Fetched the collection with count: %lu", &v7, 0xCu);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 count] != 0);
  }

  else
  {
    v6 = SearchUIButtonItemLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1DA169000, v6, OS_LOG_TYPE_DEFAULT, "Fetched the media entity for corespotlight media identifier: %@", &v7, 0xCu);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v3 != 0);
  }
}

void __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_18(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SearchUIButtonItemLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 selectedBundleIdentifier];
    *buf = 138412290;
    v50 = v5;
    _os_log_impl(&dword_1DA169000, v4, OS_LOG_TYPE_DEFAULT, "Siri predicted app bundle: %@", buf, 0xCu);
  }

  v6 = [v3 selectedBundleIdentifier];
  v7 = [SearchUIUtilities isAppInstalledWithBundleId:v6];

  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = [v3 selectedBundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = [*(a1 + 32) bundleIdentifiersToExclude];
    v11 = [v3 selectedBundleIdentifier];
    v12 = [v10 containsObject:v11];

    if ((v12 & 1) == 0)
    {
      v14 = [v3 selectedBundleIdentifier];
      v15 = [SearchUIUtilities bundleIdentifierForApp:11];
      v16 = [v14 isEqual:v15];

      if (v16)
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_20;
        v44[3] = &unk_1E85B2F88;
        v45 = *(a1 + 48);
        [SearchUIMediaUtilities getMusicUserDisclosureApprovalStatusWithCompletionHandler:v44];
      }

      else
      {
        v36 = *(a1 + 56);
        v37 = [[SearchUIPlayAudioButtonItem alloc] initWithSFButtonItem:*(a1 + 40)];
        v48 = v37;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
        (*(v36 + 16))(v36, v38, 1);
      }

      goto LABEL_30;
    }
  }

  v13 = [SearchUIMediaUtilities mediaDestinationsForMediaMetadata:*(a1 + 32)];
  if (![v13 count])
  {
    v17 = [v3 disambiguateBundleIdentifiers];
    v18 = [v17 count];

    if (v18)
    {
      goto LABEL_11;
    }

LABEL_26:
    (*(*(a1 + 48) + 16))();
    goto LABEL_30;
  }

LABEL_11:
  v19 = SearchUIButtonItemLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v3 disambiguateBundleIdentifiers];
    *buf = 138412290;
    v50 = v20;
    _os_log_impl(&dword_1DA169000, v19, OS_LOG_TYPE_DEFAULT, "siri audo predicated disambiguate identifiers: %@", buf, 0xCu);
  }

  v21 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = v3;
  v22 = [v3 disambiguateBundleIdentifiers];
  v23 = [v22 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      v26 = 0;
      do
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v40 + 1) + 8 * v26);
        v28 = [*(a1 + 32) bundleIdentifiersToExclude];
        v29 = [v28 containsObject:v27];

        if ((v29 & 1) == 0)
        {
          v30 = objc_opt_new();
          [v30 setAppBundleIdentifier:v27];
          [v30 setMediaMetadata:*(a1 + 32)];
          [v21 addObject:v30];
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v24);
  }

  v31 = [SearchUIMediaUtilities mediaDestinationsForMediaMetadata:*(a1 + 32)];
  [v21 addObjectsFromArray:v31];

  v32 = SearchUIButtonItemLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v21;
    _os_log_impl(&dword_1DA169000, v32, OS_LOG_TYPE_DEFAULT, "final media destinations: %@", buf, 0xCu);
  }

  v3 = v39;
  if ([v21 count])
  {
    v33 = *(a1 + 56);
    v34 = [[SearchUIPlayAudioButtonItem alloc] initWithSFButtonItem:*(a1 + 40)];
    v46 = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    (*(v33 + 16))(v33, v35, 1);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_30:
}

void __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_20(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_2_21;
    v4[3] = &unk_1E85B2F88;
    v5 = *(a1 + 32);
    [SearchUIMediaUtilities canPlayAppleMusicWithCompletionHandler:v4];
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

uint64_t __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_2_21(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SearchUIButtonItemLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1DA169000, v4, OS_LOG_TYPE_DEFAULT, "Siri predicted apple music and can play: %@", &v7, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __95__SearchUIPlayAudioButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_31(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SearchUIButtonItemLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1DA169000, v4, OS_LOG_TYPE_DEFAULT, "Media Metadata can play apple music! %@", &v7, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

@end