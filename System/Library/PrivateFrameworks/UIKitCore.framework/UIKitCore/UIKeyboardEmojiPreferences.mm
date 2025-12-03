@interface UIKeyboardEmojiPreferences
+ (id)sharedInstance;
- (BOOL)deviceSupportsMemoji;
- (BOOL)hasDisplayedSkinToneHelp;
- (BOOL)hasLastUsedVariantForEmojiString:(id)string;
- (BOOL)memojiSettingEnabled;
- (EMFEmojiPreferencesClient)preferencesClient;
- (NSArray)recents;
- (UIKeyboardEmojiPreferences)init;
- (id)emojiWithoutDuplicateRecents:(id)recents;
- (id)lastUsedVariantEmojiForEmojiString:(id)string;
- (id)recentEmojiAtIndex:(int64_t)index size:(unint64_t *)size;
- (id)typingNameForEmoji:(id)emoji language:(id)language;
- (int64_t)emojiCategoryDefaultsIndex:(id)index;
- (int64_t)selectedCategoryType;
- (unint64_t)maximumRecentsCount;
- (void)_updateCachedDeviceLockState;
- (void)_usageForEmoji:(id)emoji language:(id)language associatedText:(id)text resultIndex:(id)index isFromRecentsCategory:(BOOL)category isFromEmojiSearch:(BOOL)search isFromCandidateBar:(BOOL)bar completionHandler:(id)self0;
- (void)clearEmojiKeyboardPreferenceClient;
- (void)clearLocalRecentsCache;
- (void)dealloc;
- (void)didDisplaySkinToneHelp;
- (void)emojiPredicted:(id)predicted typingName:(id)name language:(id)language;
- (void)emojiUsed:(id)used language:(id)language completion:(id)completion;
- (void)emojiUsedFromEmojiKeyboardPalette:(id)palette inputModeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)emojiUsedFromEmojiKeyboardSearch:(id)search inputModeIdentifier:(id)identifier resultIndex:(id)index query:(id)query completionHandler:(id)handler;
- (void)handleRead:(id)read;
- (void)handleWrite:(id)write;
- (void)refreshLocalRecents;
- (void)setEmojiCategoryDefaultsIndex:(int64_t)index forCategory:(id)category;
- (void)setMaximumRecentsCount:(unint64_t)count;
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
    _initWithoutConnection = [objc_alloc(getEMFEmojiPreferencesClientClass()) _initWithoutConnection];
    preferencesClient = v2->_preferencesClient;
    v2->_preferencesClient = _initWithoutConnection;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.UIKit.emoji-client", v5);
    clientDispatchQueue = v2->_clientDispatchQueue;
    v2->_clientDispatchQueue = v6;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_handleSuspend_ name:@"UIApplicationSuspendedNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_handleWrite_ name:@"UIKeyboardWillHideNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_handleWrite_ name:@"UIKeyboardWillChangeFrameNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_handleRead_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_handleRead_ name:@"UIKeyboardWillShowNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_handleBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_preferencesControllerChanged_ name:*MEMORY[0x1E69D9908] object:0];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v10[0] = @"UIApplicationSuspendedNotification";
  v10[1] = @"UIKeyboardWillHideNotification";
  v10[2] = @"UIKeyboardWillChangeFrameNotification";
  v10[3] = @"UIApplicationWillEnterForegroundNotification";
  v10[4] = @"UIKeyboardWillShowNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

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

- (void)handleWrite:(id)write
{
  writeCopy = write;
  userInfo = [writeCopy userInfo];
  v5 = [userInfo objectForKey:@"UIKeyboardIsLocalUserInfoKey"];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) != 0 || ([writeCopy name], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"UIKeyboardWillChangeFrameNotification"), v7, v8))
  {
    [(UIKeyboardEmojiPreferences *)self writeEmojiDefaults];
  }
}

- (void)handleRead:(id)read
{
  [(UIKeyboardEmojiPreferences *)self readEmojiDefaults];

  [(UIKeyboardEmojiPreferences *)self _updateCachedDeviceLockState];
}

- (EMFEmojiPreferencesClient)preferencesClient
{
  preferencesClient = self->_preferencesClient;
  if (!preferencesClient)
  {
    _initWithoutConnection = [objc_alloc(getEMFEmojiPreferencesClientClass()) _initWithoutConnection];
    v5 = self->_preferencesClient;
    self->_preferencesClient = _initWithoutConnection;

    preferencesClient = self->_preferencesClient;
  }

  return preferencesClient;
}

- (BOOL)hasDisplayedSkinToneHelp
{
  preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  hasDisplayedSkinToneHelp = [preferencesClient hasDisplayedSkinToneHelp];

  return hasDisplayedSkinToneHelp;
}

- (void)didDisplaySkinToneHelp
{
  preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  [preferencesClient didDisplaySkinToneHelp];
}

- (unint64_t)maximumRecentsCount
{
  preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  maximumRecentsCount = [preferencesClient maximumRecentsCount];

  return maximumRecentsCount;
}

- (void)setMaximumRecentsCount:(unint64_t)count
{
  preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  [preferencesClient setMaximumRecentsCount:count];
}

- (void)setEmojiCategoryDefaultsIndex:(int64_t)index forCategory:(id)category
{
  categoryCopy = category;
  preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  categoryType = [categoryCopy categoryType];

  v8 = [UIKeyboardEmojiCategory emojiCategoryStringForCategoryType:categoryType];
  [preferencesClient didViewEmojiIndex:index forCategory:v8];
}

- (int64_t)emojiCategoryDefaultsIndex:(id)index
{
  indexCopy = index;
  preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  categoryType = [indexCopy categoryType];

  v7 = [UIKeyboardEmojiCategory emojiCategoryStringForCategoryType:categoryType];
  v8 = [preferencesClient previouslyUsedIndexInCategory:v7];

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
  _recentEmojiStrings = [v2 _recentEmojiStrings];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_recentEmojiStrings, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = _recentEmojiStrings;
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
  preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  if (preferencesClient)
  {
    preferencesClient2 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
    recentEmojis = [preferencesClient2 recentEmojis];
    v6 = [recentEmojis copy];
    localRecentsWithClient = self->_localRecentsWithClient;
    self->_localRecentsWithClient = v6;
  }

  else
  {
    preferencesClient2 = self->_localRecentsWithClient;
    self->_localRecentsWithClient = 0;
  }

  recents = [(UIKeyboardEmojiPreferences *)self recents];
  v8 = [recents copy];
  localRecentsWithoutClient = self->_localRecentsWithoutClient;
  self->_localRecentsWithoutClient = v8;
}

- (id)recentEmojiAtIndex:(int64_t)index size:(unint64_t *)size
{
  preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];

  if (preferencesClient)
  {
    localRecentsWithClient = self->_localRecentsWithClient;
    if (!localRecentsWithClient)
    {
      preferencesClient2 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
      recentEmojis = [preferencesClient2 recentEmojis];
      v11 = [recentEmojis copy];
      v12 = self->_localRecentsWithClient;
      self->_localRecentsWithClient = v11;

      localRecentsWithClient = self->_localRecentsWithClient;
    }

    if (size)
    {
      *size = [(NSArray *)localRecentsWithClient count];
      localRecentsWithClient = self->_localRecentsWithClient;
    }

    if ([(NSArray *)localRecentsWithClient count]<= index)
    {
      string = 0;
      goto LABEL_15;
    }

    v13 = [(NSArray *)self->_localRecentsWithClient objectAtIndex:index];
    string = [v13 string];
  }

  else
  {
    v15 = self->_localRecentsWithoutClient;
    v13 = v15;
    if (size)
    {
      *size = [(NSArray *)v15 count];
    }

    if ([v13 count] <= index)
    {
      string = 0;
    }

    else
    {
      v16 = [v13 objectAtIndex:index];
      string = [v16 emojiString];
    }
  }

LABEL_15:

  return string;
}

- (BOOL)memojiSettingEnabled
{
  if (![(UIKeyboardEmojiPreferences *)self hasCheckedMemojiPreference])
  {
    v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v3 preferencesActions];
    -[UIKeyboardEmojiPreferences setSupportsMemoji:](self, "setSupportsMemoji:", [preferencesActions BOOLForPreferenceKey:@"ShowStickers"]);

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

- (id)emojiWithoutDuplicateRecents:(id)recents
{
  recentsCopy = recents;
  if (!self->_preferencesClient)
  {
    goto LABEL_6;
  }

  localRecentsWithClient = self->_localRecentsWithClient;
  if (!localRecentsWithClient)
  {
    array = [MEMORY[0x1E695DEC8] array];
    if (array)
    {
      goto LABEL_5;
    }

LABEL_6:
    localRecentsWithoutClient = self->_localRecentsWithoutClient;
    if (localRecentsWithoutClient)
    {
      array2 = localRecentsWithoutClient;
    }

    else
    {
      array2 = [MEMORY[0x1E695DEC8] array];
    }

    v7 = array2;
    array = 0;
    goto LABEL_10;
  }

  array = localRecentsWithClient;
LABEL_5:
  v7 = 0;
LABEL_10:
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __59__UIKeyboardEmojiPreferences_emojiWithoutDuplicateRecents___block_invoke;
  v18 = &unk_1E7116218;
  v19 = v7;
  v20 = array;
  v10 = array;
  v11 = v7;
  v12 = [recentsCopy indexesOfObjectsPassingTest:&v15];
  v13 = [recentsCopy objectsAtIndexes:{v12, v15, v16, v17, v18}];

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

- (BOOL)hasLastUsedVariantForEmojiString:(id)string
{
  stringCopy = string;
  v5 = [getEMFEmojiTokenClass_0() emojiTokenWithString:stringCopy localeData:0];

  preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  LOBYTE(stringCopy) = [preferencesClient hasLastUsedVariantForEmoji:v5];

  return stringCopy;
}

- (id)lastUsedVariantEmojiForEmojiString:(id)string
{
  stringCopy = string;
  v5 = [getEMFEmojiTokenClass_0() emojiTokenWithString:stringCopy localeData:0];
  if ([v5 supportsSkinToneVariants])
  {
    preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];
    v7 = [preferencesClient lastUsedVariantEmojiForEmoji:v5];

    string = [v7 string];
  }

  else
  {
    string = stringCopy;
  }

  return string;
}

- (int64_t)selectedCategoryType
{
  preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  previouslyUsedCategory = [preferencesClient previouslyUsedCategory];
  v4 = [UIKeyboardEmojiCategory emojiCategoryTypeForCategoryString:previouslyUsedCategory];

  return v4;
}

- (void)emojiUsed:(id)used language:(id)language completion:(id)completion
{
  usedCopy = used;
  languageCopy = language;
  v9 = TIStatisticGetKey();
  TIStatisticScalarIncrement();

  clientDispatchQueue = self->_clientDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__UIKeyboardEmojiPreferences_emojiUsed_language_completion___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v14 = usedCopy;
  v15 = languageCopy;
  v11 = languageCopy;
  v12 = usedCopy;
  dispatch_async(clientDispatchQueue, block);
}

void __60__UIKeyboardEmojiPreferences_emojiUsed_language_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) emojiString];
  LOBYTE(v3) = 0;
  [v2 _usageForEmoji:v4 language:*(a1 + 48) associatedText:0 resultIndex:0 isFromRecentsCategory:objc_msgSend(*(a1 + 40) isFromEmojiSearch:"isFromRecentsCategory") isFromCandidateBar:objc_msgSend(*(a1 + 40) completionHandler:{"isFromEmojiSearch"), v3, 0}];
}

- (void)emojiPredicted:(id)predicted typingName:(id)name language:(id)language
{
  languageCopy = language;
  nameCopy = name;
  predictedCopy = predicted;
  v10 = TIStatisticGetKey();
  TIStatisticScalarIncrement();

  LOBYTE(v11) = 1;
  [(UIKeyboardEmojiPreferences *)self _usageForEmoji:predictedCopy language:languageCopy associatedText:nameCopy resultIndex:0 isFromRecentsCategory:0 isFromEmojiSearch:0 isFromCandidateBar:v11 completionHandler:0];
}

- (id)typingNameForEmoji:(id)emoji language:(id)language
{
  emojiCopy = emoji;
  if (language)
  {
    languageCopy = language;
    language = [getEMFEmojiLocaleDataClass() emojiLocaleDataWithLocaleIdentifier:languageCopy];
  }

  v8 = [getEMFEmojiTokenClass_0() emojiTokenWithString:emojiCopy localeData:language];
  preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];
  v10 = [preferencesClient typingNameForEmoji:v8];

  return v10;
}

- (void)emojiUsedFromEmojiKeyboardPalette:(id)palette inputModeIdentifier:(id)identifier completionHandler:(id)handler
{
  paletteCopy = palette;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = TIStatisticGetKey();
  TIStatisticScalarIncrement();

  clientDispatchQueue = self->_clientDispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __102__UIKeyboardEmojiPreferences_emojiUsedFromEmojiKeyboardPalette_inputModeIdentifier_completionHandler___block_invoke;
  v16[3] = &unk_1E70F5F08;
  v16[4] = self;
  v17 = paletteCopy;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = identifierCopy;
  v15 = paletteCopy;
  dispatch_async(clientDispatchQueue, v16);
}

void __102__UIKeyboardEmojiPreferences_emojiUsedFromEmojiKeyboardPalette_inputModeIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) emojiString];
  LOBYTE(v3) = 0;
  [v2 _usageForEmoji:v4 language:*(a1 + 48) associatedText:0 resultIndex:0 isFromRecentsCategory:objc_msgSend(*(a1 + 40) isFromEmojiSearch:"isFromRecentsCategory") isFromCandidateBar:0 completionHandler:{v3, *(a1 + 56)}];
}

- (void)emojiUsedFromEmojiKeyboardSearch:(id)search inputModeIdentifier:(id)identifier resultIndex:(id)index query:(id)query completionHandler:(id)handler
{
  searchCopy = search;
  identifierCopy = identifier;
  indexCopy = index;
  queryCopy = query;
  handlerCopy = handler;
  clientDispatchQueue = self->_clientDispatchQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __119__UIKeyboardEmojiPreferences_emojiUsedFromEmojiKeyboardSearch_inputModeIdentifier_resultIndex_query_completionHandler___block_invoke;
  v23[3] = &unk_1E7116240;
  v23[4] = self;
  v24 = searchCopy;
  v25 = identifierCopy;
  v26 = queryCopy;
  v27 = indexCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = indexCopy;
  v20 = queryCopy;
  v21 = identifierCopy;
  v22 = searchCopy;
  dispatch_async(clientDispatchQueue, v23);
}

void __119__UIKeyboardEmojiPreferences_emojiUsedFromEmojiKeyboardSearch_inputModeIdentifier_resultIndex_query_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) emojiString];
  LOBYTE(v3) = 0;
  [v2 _usageForEmoji:v4 language:*(a1 + 48) associatedText:*(a1 + 56) resultIndex:*(a1 + 64) isFromRecentsCategory:0 isFromEmojiSearch:1 isFromCandidateBar:v3 completionHandler:*(a1 + 72)];
}

- (void)_usageForEmoji:(id)emoji language:(id)language associatedText:(id)text resultIndex:(id)index isFromRecentsCategory:(BOOL)category isFromEmojiSearch:(BOOL)search isFromCandidateBar:(BOOL)bar completionHandler:(id)self0
{
  searchCopy = search;
  categoryCopy = category;
  v40[4] = *MEMORY[0x1E69E9840];
  emojiCopy = emoji;
  languageCopy = language;
  textCopy = text;
  indexCopy = index;
  handlerCopy = handler;
  if (languageCopy)
  {
    v21 = [getEMFEmojiLocaleDataClass() emojiLocaleDataWithLocaleIdentifier:languageCopy];
  }

  else
  {
    v21 = 0;
  }

  v22 = [getEMFEmojiTokenClass_0() emojiTokenWithString:emojiCopy localeData:v21];
  if (v22)
  {
    v38 = indexCopy;
    preferencesClient = [(UIKeyboardEmojiPreferences *)self preferencesClient];
    v24 = preferencesClient;
    if (searchCopy)
    {
      [preferencesClient didUseEmojiInEmojiKeyboardSearch:v22 finalQuery:textCopy resultIndex:v38];
    }

    else if (bar)
    {
      v25 = objc_opt_respondsToSelector();

      preferencesClient2 = [(UIKeyboardEmojiPreferences *)self preferencesClient];
      v27 = preferencesClient2;
      if (v25)
      {
        [preferencesClient2 didUseEmojiInKeyboardCandidateBar:v22 candidatePosition:v38 replacementContext:textCopy];
      }

      else
      {
        [preferencesClient2 didUseEmojiInKeyboardCandidateBar:v22 replacementContext:textCopy];
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
      [preferencesClient didUseEmojiInEmojiKeyboardPalette:v22 wasFromRecentsSection:categoryCopy];
    }

    indexCopy = v38;
    if (handlerCopy)
    {
      dispatch_async(MEMORY[0x1E69E96A0], handlerCopy);
    }
  }
}

- (void)_updateCachedDeviceLockState
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  self->_deviceWasLockedWhenKeyboardWasShown = [v3 deviceStateIsLocked];
}

@end