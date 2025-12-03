@interface VUIHomeSharingMediaItem_iOS
+ (void)initialize;
- (BOOL)hasTrait:(id)trait;
- (BOOL)shouldRetryPlaybackForError:(id)error;
- (VUIHomeSharingMediaItem_iOS)initWithMPMediaItem:(id)item;
- (id)imageLoader;
- (id)mediaItemMetadataForProperty:(id)property;
- (id)mediaItemURL;
- (void)_fetchKeybagForDSID:(id)d isFamilyAccount:(BOOL)account completion:(id)completion;
- (void)cleanUpMediaItem;
- (void)prepareForLoadingWithCompletion:(id)completion;
- (void)updateBookmarkWithSuggestedTime:(double)time forElapsedTime:(double)elapsedTime duration:(double)duration playbackOfMediaItemIsEnding:(BOOL)ending;
- (void)updatePlayCountForElapsedTime:(double)time duration:(double)duration;
@end

@implementation VUIHomeSharingMediaItem_iOS

+ (void)initialize
{
  if (initialize_onceToken_5 != -1)
  {
    +[VUIHomeSharingMediaItem_iOS initialize];
  }
}

- (VUIHomeSharingMediaItem_iOS)initWithMPMediaItem:(id)item
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = VUIHomeSharingMediaItem_iOS;
  v5 = [(VUILibraryMediaItem_iOS *)&v13 initWithMPMediaItem:itemCopy];
  if (v5)
  {
    vui_homeSharingLibrary = [itemCopy vui_homeSharingLibrary];
    homeSharingLibrary = v5->_homeSharingLibrary;
    v5->_homeSharingLibrary = vui_homeSharingLibrary;

    uniqueIdentifier = [(HSHomeSharingLibrary *)v5->_homeSharingLibrary uniqueIdentifier];
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
  homeShareMediaLibraries = [v3 homeShareMediaLibraries];

  v5 = [homeShareMediaLibraries countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(homeShareMediaLibraries);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mediaLibrary = [v9 mediaLibrary];
          mpMediaLibrary = [(VUILibraryMediaItem_iOS *)self mpMediaLibrary];
          v12 = [mediaLibrary isEqual:mpMediaLibrary];

          if (v12)
          {
            v13 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [homeShareMediaLibraries countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  mediaItemURLInternal = [(VUIHomeSharingMediaItem_iOS *)self mediaItemURLInternal];

  if (!mediaItemURLInternal)
  {
    ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v5 = [ml3Track valueForProperty:*MEMORY[0x1E69B2F48]];

    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:punctuationCharacterSet];

    ml3Track2 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v9 = [ml3Track2 valueForProperty:*MEMORY[0x1E69B3030]];

    unsignedLongLongValue = [v9 unsignedLongLongValue];
    v11 = MEMORY[0x1E69A4670];
    homeSharingLibrary = [(VUIHomeSharingMediaItem_iOS *)self homeSharingLibrary];
    v13 = [v11 requestWithDatabaseID:objc_msgSend(homeSharingLibrary itemID:"databaseID") format:{unsignedLongLongValue, v7}];

    homeSharingLibrary2 = [(VUIHomeSharingMediaItem_iOS *)self homeSharingLibrary];
    v15 = [homeSharingLibrary2 urlForRequest:v13];

    v16 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v15 resolvingAgainstBaseURL:1];
    [v16 setScheme:@"home-sharing"];
    v17 = [v16 URL];
    [(VUIHomeSharingMediaItem_iOS *)self setMediaItemURLInternal:v17];
  }

  return [(VUIHomeSharingMediaItem_iOS *)self mediaItemURLInternal];
}

- (BOOL)hasTrait:(id)trait
{
  traitCopy = trait;
  if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E88]] & 1) != 0 || (objc_msgSend(traitCopy, "isEqualToString:", *MEMORY[0x1E69D5E90]) & 1) != 0 || (objc_msgSend(traitCopy, "isEqualToString:", *MEMORY[0x1E69D5E78]))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VUIHomeSharingMediaItem_iOS;
    v5 = [(VUILibraryMediaItem_iOS *)&v7 hasTrait:traitCopy];
  }

  return v5;
}

- (id)mediaItemMetadataForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5C40]])
  {
    v5 = objc_alloc(MEMORY[0x1E695DFF8]);
    keyBagFilePath = [(VUIHomeSharingMediaItem_iOS *)self keyBagFilePath];
    v7 = [v5 initFileURLWithPath:keyBagFilePath];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = VUIHomeSharingMediaItem_iOS;
    v7 = [(VUILibraryMediaItem_iOS *)&v9 mediaItemMetadataForProperty:propertyCopy];
  }

  return v7;
}

- (void)prepareForLoadingWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__VUIHomeSharingMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke;
  v7[3] = &unk_1E8730560;
  v7[4] = self;
  v8 = completionCopy;
  v6.receiver = self;
  v6.super_class = VUIHomeSharingMediaItem_iOS;
  v5 = completionCopy;
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

- (void)updateBookmarkWithSuggestedTime:(double)time forElapsedTime:(double)elapsedTime duration:(double)duration playbackOfMediaItemIsEnding:(BOOL)ending
{
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if (time > 0.0)
  {
    [array addObject:MEMORY[0x1E695E118]];
    [array2 addObject:*MEMORY[0x1E69B3000]];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:time * 1000.0];
  [array addObject:v9];

  [array2 addObject:*MEMORY[0x1E69B2E20]];
  ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
  [ml3Track setValues:array forProperties:array2 async:1 withCompletionBlock:0];
}

- (void)updatePlayCountForElapsedTime:(double)time duration:(double)duration
{
  v16[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69D5A48] playedThresholdTimeForDuration:duration];
  if (v6 <= time)
  {
    ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v8 = *MEMORY[0x1E69B3158];
    v9 = [ml3Track valueForProperty:*MEMORY[0x1E69B3158]];
    unsignedIntegerValue = [v9 unsignedIntegerValue];

    ml3Track2 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v15 = v8;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [ml3Track2 setValues:v13 forProperties:v14 async:1 withCompletionBlock:0];
  }
}

- (BOOL)shouldRetryPlaybackForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:@"TVPlaybackErrorDomain"])
  {

    goto LABEL_7;
  }

  code = [errorCopy code];

  if (code != 811)
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

- (void)_fetchKeybagForDSID:(id)d isFamilyAccount:(BOOL)account completion:(id)completion
{
  accountCopy = account;
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v10 = sLogObject_11;
  if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (accountCopy)
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
  v12 = completionCopy;
  v27 = v12;
  v13 = _Block_copy(aBlock);
  homeSharingLibrary = [(VUIHomeSharingMediaItem_iOS *)self homeSharingLibrary];
  deviceGUID = [homeSharingLibrary deviceGUID];

  if (![deviceGUID length])
  {
    if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_ERROR))
    {
      [VUIHomeSharingMediaItem_iOS _fetchKeybagForDSID:isFamilyAccount:completion:];
    }

    goto LABEL_12;
  }

  unsignedLongLongValue = [dCopy unsignedLongLongValue];
  if (!unsignedLongLongValue)
  {
    if (os_log_type_enabled(sLogObject_11, OS_LOG_TYPE_ERROR))
    {
      [VUIHomeSharingMediaItem_iOS _fetchKeybagForDSID:isFamilyAccount:completion:];
    }

LABEL_12:
    v13[2](v13);
    goto LABEL_13;
  }

  v17 = [MEMORY[0x1E69A4660] requestWithDSID:unsignedLongLongValue deviceGUID:deviceGUID];
  keyBagFilePath = [(VUIHomeSharingMediaItem_iOS *)self keyBagFilePath];
  homeSharingLibrary2 = [(VUIHomeSharingMediaItem_iOS *)self homeSharingLibrary];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__VUIHomeSharingMediaItem_iOS__fetchKeybagForDSID_isFamilyAccount_completion___block_invoke_2;
  v21[3] = &unk_1E8732A28;
  v22 = keyBagFilePath;
  v23 = dCopy;
  v25 = accountCopy;
  v24 = v13;
  v20 = keyBagFilePath;
  [homeSharingLibrary2 sendRequest:v17 withResponseHandler:v21];

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