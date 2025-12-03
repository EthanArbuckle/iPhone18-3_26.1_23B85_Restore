@interface TUIEmojiSearchAnalyticsSession
+ (id)emojiSearchFieldSpecTuples;
+ (void)registerEventSpecIfNecessary;
- (TUIEmojiSearchAnalyticsSession)initWithLocale:(id)locale;
- (void)beginSessionWithInitialSearchQuery:(id)query;
- (void)endSession;
- (void)searchQueryWasChangedTo:(id)to;
@end

@implementation TUIEmojiSearchAnalyticsSession

- (void)endSession
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(TUIAnalyticsSession *)self isSessionActive])
  {
    array = [MEMORY[0x1E695DF70] array];
    emojiSearchFieldSpecTuples = [objc_opt_class() emojiSearchFieldSpecTuples];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [emojiSearchFieldSpecTuples countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(emojiSearchFieldSpecTuples);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 key];
          v11 = [(TUIEmojiSearchAnalyticsSession *)self valueForKey:v10];

          [array addObject:v11];
          v12 = [v9 key];
          [(TUIEmojiSearchAnalyticsSession *)self setValue:&unk_1F03D8C48 forKey:v12];
        }

        v6 = [emojiSearchFieldSpecTuples countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v13 = self->_initialInputModeIdentifier;
    v14 = [objc_opt_class() preferredEventName:@"emojiSearchSession"];
    mEMORY[0x1E69D9550] = [MEMORY[0x1E69D9550] sharedInstance];
    [mEMORY[0x1E69D9550] dispatchEventWithName:v14 values:array inputMode:v13];
  }

  v16.receiver = self;
  v16.super_class = TUIEmojiSearchAnalyticsSession;
  [(TUIAnalyticsSession *)&v16 endSession];
}

- (void)searchQueryWasChangedTo:(id)to
{
  toCopy = to;
  v5 = [toCopy length];
  v6 = v5 - [(NSString *)self->_trackedSearchQuery length];
  if (v6 >= 1)
  {
    v7 = 56;
    v8 = (self->_numberOfCharactersInserted + v6);
LABEL_3:
    *(&self->super.super.isa + v7) = v8;
    goto LABEL_5;
  }

  if (v6 < 0)
  {
    v7 = 64;
    v8 = (self->_numberOfCharactersDeleted - v6);
    goto LABEL_3;
  }

LABEL_5:
  trackedSearchQuery = self->_trackedSearchQuery;
  self->_trackedSearchQuery = toCopy;
}

- (void)beginSessionWithInitialSearchQuery:(id)query
{
  queryCopy = query;
  [objc_opt_class() registerEventSpecIfNecessary];
  trackedSearchQuery = self->_trackedSearchQuery;
  self->_trackedSearchQuery = queryCopy;
  v6 = queryCopy;

  v7 = [(NSString *)v6 length];
  self->_numberOfInitialCharacters = v7;

  [(TUIAnalyticsSession *)self beginSession];
}

- (TUIEmojiSearchAnalyticsSession)initWithLocale:(id)locale
{
  localeCopy = locale;
  v11.receiver = self;
  v11.super_class = TUIEmojiSearchAnalyticsSession;
  v6 = [(TUIEmojiSearchAnalyticsSession *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, locale);
    currentInputModeIdentifier = [objc_opt_class() currentInputModeIdentifier];
    initialInputModeIdentifier = v7->_initialInputModeIdentifier;
    v7->_initialInputModeIdentifier = currentInputModeIdentifier;
  }

  return v7;
}

+ (void)registerEventSpecIfNecessary
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__TUIEmojiSearchAnalyticsSession_registerEventSpecIfNecessary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (registerEventSpecIfNecessary_onceToken != -1)
  {
    dispatch_once(&registerEventSpecIfNecessary_onceToken, block);
  }
}

void __62__TUIEmojiSearchAnalyticsSession_registerEventSpecIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) emojiSearchFieldSpecTuples];
  v7 = [v2 allFieldSpecs];

  v3 = [*(a1 + 32) preferredEventName:@"emojiSearchSession"];
  v4 = [MEMORY[0x1E69D9540] eventSpecWithName:@"emojiSearchSession" inputModeRequired:1 fieldSpecs:v7];
  v5 = [MEMORY[0x1E69D9550] sharedInstance];
  [v5 registerEventSpec:v4];

  v6 = registerEventSpecIfNecessary_eventSpec;
  registerEventSpecIfNecessary_eventSpec = v4;
}

+ (id)emojiSearchFieldSpecTuples
{
  if (emojiSearchFieldSpecTuples_onceToken != -1)
  {
    dispatch_once(&emojiSearchFieldSpecTuples_onceToken, &__block_literal_global_3817);
  }

  v3 = emojiSearchFieldSpecTuples_tuples;

  return v3;
}

void __60__TUIEmojiSearchAnalyticsSession_emojiSearchFieldSpecTuples__block_invoke()
{
  v14[5] = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E695DFB8];
  v13 = [MEMORY[0x1E69D9548] integerFieldSpecWithName:@"emojiInserted"];
  v0 = [FieldSpecTuple tupleWithKey:@"numberOfEmojiInserted" eventSpec:v13];
  v14[0] = v0;
  v1 = [MEMORY[0x1E69D9548] integerFieldSpecWithName:@"initialCharacters"];
  v2 = [FieldSpecTuple tupleWithKey:@"numberOfInitialCharacters" eventSpec:v1];
  v14[1] = v2;
  v3 = [MEMORY[0x1E69D9548] integerFieldSpecWithName:@"charactersInserted"];
  v4 = [FieldSpecTuple tupleWithKey:@"numberOfCharactersInserted" eventSpec:v3];
  v14[2] = v4;
  v5 = [MEMORY[0x1E69D9548] integerFieldSpecWithName:@"charactersDeleted"];
  v6 = [FieldSpecTuple tupleWithKey:@"numberOfCharactersDeleted" eventSpec:v5];
  v14[3] = v6;
  v7 = [MEMORY[0x1E69D9548] integerFieldSpecWithName:@"clearActions"];
  v8 = [FieldSpecTuple tupleWithKey:@"numberOfClearActions" eventSpec:v7];
  v14[4] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];
  v10 = [v12 orderedSetWithArray:v9];
  v11 = emojiSearchFieldSpecTuples_tuples;
  emojiSearchFieldSpecTuples_tuples = v10;
}

@end