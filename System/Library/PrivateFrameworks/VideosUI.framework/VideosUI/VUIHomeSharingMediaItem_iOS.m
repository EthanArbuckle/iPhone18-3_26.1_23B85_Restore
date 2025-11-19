@interface VUIHomeSharingMediaItem_iOS
+ (void)initialize;
- (BOOL)hasTrait:(id)a3;
- (BOOL)shouldRetryPlaybackForError:(id)a3;
- (VUIHomeSharingMediaItem_iOS)initWithMPMediaItem:(id)a3;
- (id)imageLoader;
- (id)mediaItemMetadataForProperty:(id)a3;
- (id)mediaItemURL;
- (void)_fetchKeybagForDSID:(id)a3 isFamilyAccount:(BOOL)a4 completion:(id)a5;
- (void)cleanUpMediaItem;
- (void)prepareForLoadingWithCompletion:(id)a3;
- (void)updateBookmarkWithSuggestedTime:(double)a3 forElapsedTime:(double)a4 duration:(double)a5 playbackOfMediaItemIsEnding:(BOOL)a6;
- (void)updatePlayCountForElapsedTime:(double)a3 duration:(double)a4;
@end

@implementation VUIHomeSharingMediaItem_iOS

+ (void)initialize
{
  if (initialize_onceToken_5 != -1)
  {
    +[VUIHomeSharingMediaItem_iOS initialize];
  }
}

- (VUIHomeSharingMediaItem_iOS)initWithMPMediaItem:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VUIHomeSharingMediaItem_iOS;
  v5 = [(VUILibraryMediaItem_iOS *)&v13 initWithMPMediaItem:v4];
  if (v5)
  {
    v6 = [v4 vui_homeSharingLibrary];
    homeSharingLibrary = v5->_homeSharingLibrary;
    v5->_homeSharingLibrary = v6;

    v8 = [(HSHomeSharingLibrary *)v5->_homeSharingLibrary uniqueIdentifier];
    v9 = HSLibraryCacheDirectoryForIdentifier();
    v10 = [v9 stringByAppendingPathComponent:@"Tokens"];
    keyBagFilePath = v5->_keyBagFilePath;
    v5->_keyBagFilePath = v10;
  }

  return v5;
}

- (id)imageLoader
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = +[VUIMediaLibraryManager defaultManager];
  v4 = [v3 homeShareMediaLibraries];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 mediaLibrary];
          v11 = [(VUILibraryMediaItem_iOS *)self mpMediaLibrary];
          v12 = [v10 isEqual:v11];

          if (v12)
          {
            v13 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (id)mediaItemURL
{
  v3 = [(VUIHomeSharingMediaItem_iOS *)self mediaItemURLInternal];

  if (!v3)
  {
    v4 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v5 = [v4 valueForProperty:*MEMORY[0x1E69B2F48]];

    v6 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:v6];

    v8 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v9 = [v8 valueForProperty:*MEMORY[0x1E69B3030]];

    v10 = [v9 unsignedLongLongValue];
    v11 = MEMORY[0x1E69A4670];
    v12 = [(VUIHomeSharingMediaItem_iOS *)self homeSharingLibrary];
    v13 = [v11 requestWithDatabaseID:objc_msgSend(v12 itemID:"databaseID") format:{v10, v7}];

    v14 = [(VUIHomeSharingMediaItem_iOS *)self homeSharingLibrary];
    v15 = [v14 urlForRequest:v13];

    v16 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v15 resolvingAgainstBaseURL:1];
    [v16 setScheme:@"home-sharing"];
    v17 = [v16 URL];
    [(VUIHomeSharingMediaItem_iOS *)self setMediaItemURLInternal:v17];
  }

  return [(VUIHomeSharingMediaItem_iOS *)self mediaItemURLInternal];
}

- (BOOL)hasTrait:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E69D5E88]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69D5E90]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69D5E78]))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VUIHomeSharingMediaItem_iOS;
    v5 = [(VUILibraryMediaItem_iOS *)&v7 hasTrait:v4];
  }

  return v5;
}

- (id)mediaItemMetadataForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E69D5C40]])
  {
    v5 = objc_alloc(MEMORY[0x1E695DFF8]);
    v6 = [(VUIHomeSharingMediaItem_iOS *)self keyBagFilePath];
    v7 = [v5 initFileURLWithPath:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = VUIHomeSharingMediaItem_iOS;
    v7 = [(VUILibraryMediaItem_iOS *)&v9 mediaItemMetadataForProperty:v4];
  }

  return v7;
}

- (void)prepareForLoadingWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__VUIHomeSharingMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke;
  v7[3] = &unk_1E8730560;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = VUIHomeSharingMediaItem_iOS;
  v5 = v4;
  [(VUILibraryMediaItem_iOS *)&v6 prepareForLoadingWithCompletion:v7];
}

- (void)cleanUpMediaItem
{
  [(VUIHomeSharingMediaItem_iOS *)self setLoadingContext:[(VUIHomeSharingMediaItem_iOS *)self loadingContext]+ 1];
  [(VUIHomeSharingMediaItem_iOS *)self setMediaItemURLInternal:0];
  v3.receiver = self;
  v3.super_class = VUIHomeSharingMediaItem_iOS;
  [(VUILibraryMediaItem_iOS *)&v3 cleanUpMediaItem];
}

- (void)updateBookmarkWithSuggestedTime:(double)a3 forElapsedTime:(double)a4 duration:(double)a5 playbackOfMediaItemIsEnding:(BOOL)a6
{
  v11 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  if (a3 > 0.0)
  {
    [v11 addObject:MEMORY[0x1E695E118]];
    [v8 addObject:*MEMORY[0x1E69B3000]];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3 * 1000.0];
  [v11 addObject:v9];

  [v8 addObject:*MEMORY[0x1E69B2E20]];
  v10 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  [v10 setValues:v11 forProperties:v8 async:1 withCompletionBlock:0];
}

- (void)updatePlayCountForElapsedTime:(double)a3 duration:(double)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69D5A48] playedThresholdTimeForDuration:a4];
  if (v6 <= a3)
  {
    v7 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v8 = *MEMORY[0x1E69B3158];
    v9 = [v7 valueForProperty:*MEMORY[0x1E69B3158]];
    v10 = [v9 unsignedIntegerValue];

    v11 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10 + 1];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v15 = v8;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [v11 setValues:v13 forProperties:v14 async:1 withCompletionBlock:0];
  }
}

- (BOOL)shouldRetryPlaybackForError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  if (![v5 isEqualToString:@"TVPlaybackErrorDomain"])
  {

    goto LABEL_7;
  }

  v6 = [v4 code];

  if (v6 != 811)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = sLogObject_11;
  if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Will retry playback and perform keybag sync", v10, 2u);
  }

  v8 = 1;
  [(VUIHomeSharingMediaItem_iOS *)self setNeedsKeyBagSyncPriorToPlayback:1];
LABEL_8:

  return v8;
}

- (void)_fetchKeybagForDSID:(id)a3 isFamilyAccount:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = sLogObject_11;
  if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v6)
    {
      v11 = @"YES";
    }

    *buf = 138412290;
    v29 = v11;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Starting keybag fetch.  Is family account? %@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke;
  aBlock[3] = &unk_1E872D7E0;
  v12 = v9;
  v27 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [(VUIHomeSharingMediaItem_iOS *)self homeSharingLibrary];
  v15 = [v14 deviceGUID];

  if (![v15 length])
  {
    if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_ERROR))
    {
      [VUIHomeSharingMediaItem_iOS _fetchKeybagForDSID:isFamilyAccount:completion:];
    }

    goto LABEL_12;
  }

  v16 = [v8 unsignedLongLongValue];
  if (!v16)
  {
    if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_ERROR))
    {
      [VUIHomeSharingMediaItem_iOS _fetchKeybagForDSID:isFamilyAccount:completion:];
    }

LABEL_12:
    v13[2](v13);
    goto LABEL_13;
  }

  v17 = [MEMORY[0x1E69A4660] requestWithDSID:v16 deviceGUID:v15];
  v18 = [(VUIHomeSharingMediaItem_iOS *)self keyBagFilePath];
  v19 = [(VUIHomeSharingMediaItem_iOS *)self homeSharingLibrary];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_2;
  v21[3] = &unk_1E8732A28;
  v22 = v18;
  v23 = v8;
  v25 = v6;
  v24 = v13;
  v20 = v18;
  [v19 sendRequest:v17 withResponseHandler:v21];

LABEL_13:
}

- (void)_fetchKeybagForDSID:isFamilyAccount:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_fetchKeybagForDSID:isFamilyAccount:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end