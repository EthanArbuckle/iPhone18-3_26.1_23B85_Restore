@interface UIKeyboardEmojiPreferences
+ (id)sharedInstance;
- (BOOL)deviceSupportsMemoji;
- (BOOL)hasDisplayedSkinToneHelp;
- (BOOL)hasLastUsedVariantForEmojiString:(id)a3;
- (BOOL)memojiSettingEnabled;
- (EMFEmojiPreferencesClient)preferencesClient;
- (NSArray)recents;
- (UIKeyboardEmojiPreferences)init;
- (id)emojiWithoutDuplicateRecents:(id)a3;
- (id)lastUsedVariantEmojiForEmojiString:(id)a3;
- (id)recentEmojiAtIndex:(int64_t)a3 size:(unint64_t *)a4;
- (id)typingNameForEmoji:(id)a3 language:(id)a4;
- (int64_t)emojiCategoryDefaultsIndex:(id)a3;
- (int64_t)selectedCategoryType;
- (unint64_t)maximumRecentsCount;
- (void)_updateCachedDeviceLockState;
- (void)_usageForEmoji:(id)a3 language:(id)a4 associatedText:(id)a5 resultIndex:(id)a6 isFromRecentsCategory:(BOOL)a7 isFromEmojiSearch:(BOOL)a8 isFromCandidateBar:(BOOL)a9 completionHandler:(id)a10;
- (void)clearEmojiKeyboardPreferenceClient;
- (void)clearLocalRecentsCache;
- (void)dealloc;
- (void)didDisplaySkinToneHelp;
- (void)emojiPredicted:(id)a3 typingName:(id)a4 language:(id)a5;
- (void)emojiUsed:(id)a3 language:(id)a4 completion:(id)a5;
- (void)emojiUsedFromEmojiKeyboardPalette:(id)a3 inputModeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)emojiUsedFromEmojiKeyboardSearch:(id)a3 inputModeIdentifier:(id)a4 resultIndex:(id)a5 query:(id)a6 completionHandler:(id)a7;
- (void)handleRead:(id)a3;
- (void)handleWrite:(id)a3;
- (void)refreshLocalRecents;
- (void)setEmojiCategoryDefaultsIndex:(int64_t)a3 forCategory:(id)a4;
- (void)setMaximumRecentsCount:(unint64_t)a3;
@end

@implementation UIKeyboardEmojiPreferences

+ (id)sharedInstance
{
  if (qword_1ED49F388 != -1)
  {
    dispatch_once(&qword_1ED49F388, &__block_literal_global_376);
  }

  v3 = qword_1ED49F380;

  return v3;
}

void __44__UIKeyboardEmojiPreferences_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(UIKeyboardEmojiPreferences);
  v1 = qword_1ED49F380;
  qword_1ED49F380 = v0;
}

- (UIKeyboardEmojiPreferences)init
{
  v14.receiver = self;
  v14.super_class = UIKeyboardEmojiPreferences;
  v2 = [(UIKeyboardEmojiPreferences *)&v14 init];
  if (v2)
  {
    v3 = [objc_alloc(getEMFEmojiPreferencesClientClass()) _initWithoutConnection];
    preferencesClient = v2->_preferencesClient;
    v2->_preferencesClient = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.UIKit.emoji-client", v5);
    clientDispatchQueue = v2->_clientDispatchQueue;
    v2->_clientDispatchQueue = v6;

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v2 selector:sel_handleSuspend_ name:@"UIApplicationSuspendedNotification" object:0];
    [v8 addObserver:v2 selector:sel_handleWrite_ name:@"UIKeyboardWillHideNotification" object:0];
    [v8 addObserver:v2 selector:sel_handleWrite_ name:@"UIKeyboardWillChangeFrameNotification" object:0];
    [v8 addObserver:v2 selector:sel_handleRead_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [v8 addObserver:v2 selector:sel_handleRead_ name:@"UIKeyboardWillShowNotification" object:0];
    [v8 addObserver:v2 selector:sel_handleBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [v8 addObserver:v2 selector:sel_preferencesControllerChanged_ name:*MEMORY[0x1E69D9908] object:0];
    [(EMFEmojiPreferencesClient *)v2->_preferencesClient readEmojiDefaults];
    localRecentsWithClient = v2->_localRecentsWithClient;
    v2->_localRecentsWithClient = 0;

    localRecentsWithoutClient = v2->_localRecentsWithoutClient;
    v2->_localRecentsWithoutClient = 0;

    v11 = +[UIKeyboardInputModeController sharedInputModeController];
    v2->_deviceWasLockedWhenKeyboardWasShown = [v11 deviceStateIsLocked];

    v12 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v10[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v10[0] = @"UIApplicationSuspendedNotification";
  v10[1] = @"UIKeyboardWillHideNotification";
  v10[2] = @"UIKeyboardWillChangeFrameNotification";
  v10[3] = @"UIApplicationWillEnterForegroundNotification";
  v10[4] = @"UIKeyboardWillShowNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  [(UIKeyboardEmojiPreferences *)self writeEmojiDefaults];
  preferencesClient = self->_preferencesClient;
  self->_preferencesClient = 0;

  localRecentsWithClient = self->_localRecentsWithClient;
  self->_localRecentsWithClient = 0;

  localRecentsWithoutClient = self->_localRecentsWithoutClient;
  self->_localRecentsWithoutClient = 0;

  clientDispatchQueue = self->_clientDispatchQueue;
  self->_clientDispatchQueue = 0;

  v9.receiver = self;
  v9.super_class = UIKeyboardEmojiPreferences;
  [(UIKeyboardEmojiPreferences *)&v9 dealloc];
}

- (void)clearEmojiKeyboardPreferenceClient
{
  [(UIKeyboardEmojiPreferences *)self writeEmojiDefaults];
  [(UIKeyboardEmojiPreferences *)self clearLocalRecentsCache];
  preferencesClient = self->_preferencesClient;
  self->_preferencesClient = 0;
}

- (void)handleWrite:(id)a3
{
  v9 = a3;
  v4 = [v9 userInfo];
  v5 = [v4 objectForKey:@"UIKeyboardIsLocalUserInfoKey"];
  v6 = [v5 BOOLValue];

  if ((v6 & 1) != 0 || ([v9 name], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"UIKeyboardWillChangeFrameNotification"), v7, v8))
  {
    [(UIKeyboardEmojiPreferences *)self writeEmojiDefaults];
  }
}

- (void)handleRead:(id)a3
{
  [(UIKeyboardEmojiPreferences *)self readEmojiDefaults];

  [(UIKeyboardEmojiPreferences *)self _updateCachedDeviceLockState];
}

- (EMFEmojiPreferencesClient)preferencesClient
{
  preferencesClient = self->_preferencesClient;
  if (!preferencesClient)
  {
    v4 = [objc_alloc(getEMFEmojiPreferencesClientClass()) _initWithoutConnection];
    v5 = self->_preferencesClient;
    self->_preferencesClient = v4;

    preferencesClient = self->_preferencesClient;
  }

  return preferencesClient;
}

- (BOOL)hasDisplayedSkinToneHelp
{
  v2 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  v3 = [v2 hasDisplayedSkinToneHelp];

  return v3;
}

- (void)didDisplaySkinToneHelp
{
  v2 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  [v2 didDisplaySkinToneHelp];
}

- (unint64_t)maximumRecentsCount
{
  v2 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  v3 = [v2 maximumRecentsCount];

  return v3;
}

- (void)setMaximumRecentsCount:(unint64_t)a3
{
  v4 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  [v4 setMaximumRecentsCount:a3];
}

- (void)setEmojiCategoryDefaultsIndex:(int64_t)a3 forCategory:(id)a4
{
  v6 = a4;
  v9 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  v7 = [v6 categoryType];

  v8 = [UIKeyboardEmojiCategory emojiCategoryStringForCategoryType:v7];
  [v9 didViewEmojiIndex:a3 forCategory:v8];
}

- (int64_t)emojiCategoryDefaultsIndex:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  v6 = [v4 categoryType];

  v7 = [UIKeyboardEmojiCategory emojiCategoryStringForCategoryType:v6];
  v8 = [v5 previouslyUsedIndexInCategory:v7];

  return v8;
}

- (NSArray)recents
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getEMFEmojiPreferencesClass_softClass;
  v20 = getEMFEmojiPreferencesClass_softClass;
  if (!getEMFEmojiPreferencesClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getEMFEmojiPreferencesClass_block_invoke;
    v16[3] = &unk_1E70F2F20;
    v16[4] = &v17;
    __getEMFEmojiPreferencesClass_block_invoke(v16);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  v4 = [v2 _recentEmojiStrings];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v21 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [UIKeyboardEmoji emojiWithString:*(*(&v12 + 1) + 8 * i) withVariantMask:[UIKeyboardEmojiCategory hasVariantsForEmoji:*(*(&v12 + 1) + 8 * i), v12]];
        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v21 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)clearLocalRecentsCache
{
  localRecentsWithClient = self->_localRecentsWithClient;
  self->_localRecentsWithClient = 0;

  localRecentsWithoutClient = self->_localRecentsWithoutClient;
  self->_localRecentsWithoutClient = 0;
}

- (void)refreshLocalRecents
{
  v3 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  if (v3)
  {
    v4 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
    v5 = [v4 recentEmojis];
    v6 = [v5 copy];
    localRecentsWithClient = self->_localRecentsWithClient;
    self->_localRecentsWithClient = v6;
  }

  else
  {
    v4 = self->_localRecentsWithClient;
    self->_localRecentsWithClient = 0;
  }

  v10 = [(UIKeyboardEmojiPreferences *)self recents];
  v8 = [v10 copy];
  localRecentsWithoutClient = self->_localRecentsWithoutClient;
  self->_localRecentsWithoutClient = v8;
}

- (id)recentEmojiAtIndex:(int64_t)a3 size:(unint64_t *)a4
{
  v7 = [(UIKeyboardEmojiPreferences *)self preferencesClient];

  if (v7)
  {
    localRecentsWithClient = self->_localRecentsWithClient;
    if (!localRecentsWithClient)
    {
      v9 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
      v10 = [v9 recentEmojis];
      v11 = [v10 copy];
      v12 = self->_localRecentsWithClient;
      self->_localRecentsWithClient = v11;

      localRecentsWithClient = self->_localRecentsWithClient;
    }

    if (a4)
    {
      *a4 = [(NSArray *)localRecentsWithClient count];
      localRecentsWithClient = self->_localRecentsWithClient;
    }

    if ([(NSArray *)localRecentsWithClient count]<= a3)
    {
      v14 = 0;
      goto LABEL_15;
    }

    v13 = [(NSArray *)self->_localRecentsWithClient objectAtIndex:a3];
    v14 = [v13 string];
  }

  else
  {
    v15 = self->_localRecentsWithoutClient;
    v13 = v15;
    if (a4)
    {
      *a4 = [(NSArray *)v15 count];
    }

    if ([v13 count] <= a3)
    {
      v14 = 0;
    }

    else
    {
      v16 = [v13 objectAtIndex:a3];
      v14 = [v16 emojiString];
    }
  }

LABEL_15:

  return v14;
}

- (BOOL)memojiSettingEnabled
{
  if (![(UIKeyboardEmojiPreferences *)self hasCheckedMemojiPreference])
  {
    v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v4 = [v3 preferencesActions];
    -[UIKeyboardEmojiPreferences setSupportsMemoji:](self, "setSupportsMemoji:", [v4 BOOLForPreferenceKey:@"ShowStickers"]);

    [(UIKeyboardEmojiPreferences *)self setHasCheckedMemojiPreference:1];
  }

  return [(UIKeyboardEmojiPreferences *)self supportsMemoji];
}

- (BOOL)deviceSupportsMemoji
{
  if (qword_1ED49F390 != -1)
  {
    dispatch_once(&qword_1ED49F390, &__block_literal_global_188_0);
  }

  if (_MergedGlobals_1188 == 1)
  {
    v2 = +[UIKeyboard keyboardBundleIdentifier];
    if ([v2 isEqualToString:@"com.apple.springboard"])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = [v2 isEqualToString:@"com.apple.MobileSMS.MessagesNotificationExtension"] ^ 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)emojiWithoutDuplicateRecents:(id)a3
{
  v4 = a3;
  if (!self->_preferencesClient)
  {
    goto LABEL_6;
  }

  localRecentsWithClient = self->_localRecentsWithClient;
  if (!localRecentsWithClient)
  {
    v6 = [MEMORY[0x1E695DEC8] array];
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_6:
    localRecentsWithoutClient = self->_localRecentsWithoutClient;
    if (localRecentsWithoutClient)
    {
      v9 = localRecentsWithoutClient;
    }

    else
    {
      v9 = [MEMORY[0x1E695DEC8] array];
    }

    v7 = v9;
    v6 = 0;
    goto LABEL_10;
  }

  v6 = localRecentsWithClient;
LABEL_5:
  v7 = 0;
LABEL_10:
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __59__UIKeyboardEmojiPreferences_emojiWithoutDuplicateRecents___block_invoke;
  v18 = &unk_1E7116218;
  v19 = v7;
  v20 = v6;
  v10 = v6;
  v11 = v7;
  v12 = [v4 indexesOfObjectsPassingTest:&v15];
  v13 = [v4 objectsAtIndexes:{v12, v15, v16, v17, v18}];

  return v13;
}

uint64_t __59__UIKeyboardEmojiPreferences_emojiWithoutDuplicateRecents___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = [v4 emojiString];

    v7 = v3;
  }

  else
  {
    EMFEmojiTokenClass_0 = getEMFEmojiTokenClass_0();
    v9 = [v5 emojiString];

    v6 = [EMFEmojiTokenClass_0 emojiTokenWithString:v9 localeData:0];

    v7 = *(a1 + 40);
  }

  v10 = [v7 containsObject:v6];

  return v10 ^ 1u;
}

- (BOOL)hasLastUsedVariantForEmojiString:(id)a3
{
  v4 = a3;
  v5 = [getEMFEmojiTokenClass_0() emojiTokenWithString:v4 localeData:0];

  v6 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  LOBYTE(v4) = [v6 hasLastUsedVariantForEmoji:v5];

  return v4;
}

- (id)lastUsedVariantEmojiForEmojiString:(id)a3
{
  v4 = a3;
  v5 = [getEMFEmojiTokenClass_0() emojiTokenWithString:v4 localeData:0];
  if ([v5 supportsSkinToneVariants])
  {
    v6 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
    v7 = [v6 lastUsedVariantEmojiForEmoji:v5];

    v8 = [v7 string];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (int64_t)selectedCategoryType
{
  v2 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  v3 = [v2 previouslyUsedCategory];
  v4 = [UIKeyboardEmojiCategory emojiCategoryTypeForCategoryString:v3];

  return v4;
}

- (void)emojiUsed:(id)a3 language:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = TIStatisticGetKey();
  TIStatisticScalarIncrement();

  clientDispatchQueue = self->_clientDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__UIKeyboardEmojiPreferences_emojiUsed_language_completion___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(clientDispatchQueue, block);
}

void __60__UIKeyboardEmojiPreferences_emojiUsed_language_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) emojiString];
  LOBYTE(v3) = 0;
  [v2 _usageForEmoji:v4 language:*(a1 + 48) associatedText:0 resultIndex:0 isFromRecentsCategory:objc_msgSend(*(a1 + 40) isFromEmojiSearch:"isFromRecentsCategory") isFromCandidateBar:objc_msgSend(*(a1 + 40) completionHandler:{"isFromEmojiSearch"), v3, 0}];
}

- (void)emojiPredicted:(id)a3 typingName:(id)a4 language:(id)a5
{
  v8 = a5;
  v9 = a4;
  v12 = a3;
  v10 = TIStatisticGetKey();
  TIStatisticScalarIncrement();

  LOBYTE(v11) = 1;
  [(UIKeyboardEmojiPreferences *)self _usageForEmoji:v12 language:v8 associatedText:v9 resultIndex:0 isFromRecentsCategory:0 isFromEmojiSearch:0 isFromCandidateBar:v11 completionHandler:0];
}

- (id)typingNameForEmoji:(id)a3 language:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = a4;
    a4 = [getEMFEmojiLocaleDataClass() emojiLocaleDataWithLocaleIdentifier:v7];
  }

  v8 = [getEMFEmojiTokenClass_0() emojiTokenWithString:v6 localeData:a4];
  v9 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  v10 = [v9 typingNameForEmoji:v8];

  return v10;
}

- (void)emojiUsedFromEmojiKeyboardPalette:(id)a3 inputModeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = TIStatisticGetKey();
  TIStatisticScalarIncrement();

  clientDispatchQueue = self->_clientDispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __102__UIKeyboardEmojiPreferences_emojiUsedFromEmojiKeyboardPalette_inputModeIdentifier_completionHandler___block_invoke;
  v16[3] = &unk_1E70F5F08;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(clientDispatchQueue, v16);
}

void __102__UIKeyboardEmojiPreferences_emojiUsedFromEmojiKeyboardPalette_inputModeIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) emojiString];
  LOBYTE(v3) = 0;
  [v2 _usageForEmoji:v4 language:*(a1 + 48) associatedText:0 resultIndex:0 isFromRecentsCategory:objc_msgSend(*(a1 + 40) isFromEmojiSearch:"isFromRecentsCategory") isFromCandidateBar:0 completionHandler:{v3, *(a1 + 56)}];
}

- (void)emojiUsedFromEmojiKeyboardSearch:(id)a3 inputModeIdentifier:(id)a4 resultIndex:(id)a5 query:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  clientDispatchQueue = self->_clientDispatchQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __119__UIKeyboardEmojiPreferences_emojiUsedFromEmojiKeyboardSearch_inputModeIdentifier_resultIndex_query_completionHandler___block_invoke;
  v23[3] = &unk_1E7116240;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v15;
  v27 = v14;
  v28 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v15;
  v21 = v13;
  v22 = v12;
  dispatch_async(clientDispatchQueue, v23);
}

void __119__UIKeyboardEmojiPreferences_emojiUsedFromEmojiKeyboardSearch_inputModeIdentifier_resultIndex_query_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) emojiString];
  LOBYTE(v3) = 0;
  [v2 _usageForEmoji:v4 language:*(a1 + 48) associatedText:*(a1 + 56) resultIndex:*(a1 + 64) isFromRecentsCategory:0 isFromEmojiSearch:1 isFromCandidateBar:v3 completionHandler:*(a1 + 72)];
}

- (void)_usageForEmoji:(id)a3 language:(id)a4 associatedText:(id)a5 resultIndex:(id)a6 isFromRecentsCategory:(BOOL)a7 isFromEmojiSearch:(BOOL)a8 isFromCandidateBar:(BOOL)a9 completionHandler:(id)a10
{
  v10 = a8;
  v11 = a7;
  v40[4] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a10;
  if (v17)
  {
    v21 = [getEMFEmojiLocaleDataClass() emojiLocaleDataWithLocaleIdentifier:v17];
  }

  else
  {
    v21 = 0;
  }

  v22 = [getEMFEmojiTokenClass_0() emojiTokenWithString:v16 localeData:v21];
  if (v22)
  {
    v38 = v19;
    v23 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
    v24 = v23;
    if (v10)
    {
      [v23 didUseEmojiInEmojiKeyboardSearch:v22 finalQuery:v18 resultIndex:v38];
    }

    else if (a9)
    {
      v25 = objc_opt_respondsToSelector();

      v26 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
      v27 = v26;
      if (v25)
      {
        [v26 didUseEmojiInKeyboardCandidateBar:v22 candidatePosition:v38 replacementContext:v18];
      }

      else
      {
        [v26 didUseEmojiInKeyboardCandidateBar:v22 replacementContext:v18];
      }

      v34 = +[_UISignalAnalytics getIASignalGenmojiUsage];
      v37 = +[_UISignalAnalytics getIAPayloadKeyGenmojiBundleID];
      v39[0] = v37;
      v36 = +[UIKeyboard keyboardBundleIdentifier];
      v40[0] = v36;
      v35 = +[_UISignalAnalytics getIAPayloadKeyGenmojiImageType];
      v39[1] = v35;
      v33 = +[_UISignalAnalytics getIAPayloadValueGenmojiImageTypeEmoji];
      v40[1] = v33;
      v32 = +[_UISignalAnalytics getIAPayloadKeyGenmojiUsageSource];
      v39[2] = v32;
      v31 = +[_UISignalAnalytics getIAPayloadValueGenmojiUsageSourceCandidateBarSuggestion];
      v40[2] = v31;
      v28 = +[_UISignalAnalytics getIAPayloadKeyGenmojiUsageType];
      v39[3] = v28;
      v29 = +[_UISignalAnalytics getIAPayloadValueGenmojiUsageTypeTap];
      v40[3] = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];
      v24 = v34;
      [_UISignalAnalytics sendGenmojiSignal:v34 payload:v30];
    }

    else
    {
      [v23 didUseEmojiInEmojiKeyboardPalette:v22 wasFromRecentsSection:v11];
    }

    v19 = v38;
    if (v20)
    {
      dispatch_async(MEMORY[0x1E69E96A0], v20);
    }
  }
}

- (void)_updateCachedDeviceLockState
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  self->_deviceWasLockedWhenKeyboardWasShown = [v3 deviceStateIsLocked];
}

@end