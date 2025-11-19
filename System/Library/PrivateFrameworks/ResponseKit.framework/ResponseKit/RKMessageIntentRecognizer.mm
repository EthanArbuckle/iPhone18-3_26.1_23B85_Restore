@interface RKMessageIntentRecognizer
+ (id)getRangesOfKeywords:(id)a3 forMessage:(id)a4;
+ (id)sharedManager;
- (RKMessageIntentRecognizer)init;
- (id)copyAttributedTokensForMessage:(id)a3 conversationTurns:(id)a4 metadata:(id)a5 languageID:(id)a6;
- (void)dealloc;
- (void)getMessageIntentRecognizer:(id)a3;
@end

@implementation RKMessageIntentRecognizer

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__RKMessageIntentRecognizer_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken_0 != -1)
  {
    dispatch_once(&sharedManager_onceToken_0, block);
  }

  v2 = sharedManager_sharedMessageIntentManager;

  return v2;
}

uint64_t __42__RKMessageIntentRecognizer_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedMessageIntentManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (RKMessageIntentRecognizer)init
{
  v6.receiver = self;
  v6.super_class = RKMessageIntentRecognizer;
  v2 = [(RKMessageIntentRecognizer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = _localeMessageIntentRecognizer;
    _localeMessageIntentRecognizer = v3;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RKMessageIntentRecognizer;
  [(RKMessageIntentRecognizer *)&v2 dealloc];
}

- (void)getMessageIntentRecognizer:(id)a3
{
  v3 = a3;
  v4 = [_localeMessageIntentRecognizer objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [_localeMessageIntentRecognizer objectForKeyedSubscript:v3];
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v7 = Mutable;
    if (!v3)
    {
      v3 = @"en";
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277D2B840], v3);
    v5 = NLMessageIntentRecognizerCreate();
    CFRelease(v7);
    if (v5)
    {
      [_localeMessageIntentRecognizer setObject:v5 forKeyedSubscript:v3];
    }
  }

  return v5;
}

+ (id)getRangesOfKeywords:(id)a3 forMessage:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v21 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v6 substringFromIndex:{v9, v21}];
        v14 = [v13 rangeOfString:v12];
        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = v14;
          v17 = v15;
          v18 = [MEMORY[0x277CCAE60] valueWithRange:{v14 + v9, v15}];
          [v21 addObject:v18];

          v9 += v17 + v16;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)copyAttributedTokensForMessage:(id)a3 conversationTurns:(id)a4 metadata:(id)a5 languageID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:a6];
  [(RKMessageIntentRecognizer *)self getMessageIntentRecognizer:v13];
  v14 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (v11)
  {
    v30 = v13;
    v31 = v12;
    v32 = v10;
    v16 = [v11 count];
    if (v16 >= 1)
    {
      v17 = v16;
      v18 = 0;
      v19 = &stru_2874A9C90;
      while (1)
      {
        v20 = [v11 objectAtIndexedSubscript:v18];
        [v20 timestamp];

        [v20 text];
        [v20 senderId];

        v21 = NLMessageConversationTurnCreate();
        CFArrayInsertValueAtIndex(Mutable, v18, v21);
        v22 = [v20 text];
        v23 = [v22 stringByAppendingString:v19];

        if (!v23)
        {
          break;
        }

        v19 = [@" " stringByAppendingString:v23];

        if (v21)
        {
          goto LABEL_6;
        }

LABEL_7:

        if (v17 == ++v18)
        {
          goto LABEL_14;
        }
      }

      v19 = @" ";
      if (!v21)
      {
        goto LABEL_7;
      }

LABEL_6:
      CFRelease(v21);
      goto LABEL_7;
    }

    v19 = &stru_2874A9C90;
LABEL_14:

    v12 = v31;
    v10 = v32;
    v13 = v30;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v25 = CFDateCreate(v14, Current);
    v26 = NLMessageConversationTurnCreate();
    CFRelease(v25);
    CFArrayInsertValueAtIndex(Mutable, 0, v26);
    if (v26)
    {
      CFRelease(v26);
    }
  }

  v27 = NLMessageConversationCreate();
  v28 = NLMessageIntentRecognizerCopyTopNIntentCandidates();
  if (v27)
  {
    CFRelease(v27);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v28;
}

@end