@interface CACSpeechSystem
+ (BOOL)isSpeechSystemServerRunning;
+ (id)languagesSupportedByAssets;
+ (id)rxContextDictionaryForLanguageModel:(id)model;
+ (id)speechSystem;
+ (id)valueFromRXContextKey:(id)key rxLanguageObject:(__RXLanguageObject *)object;
+ (void)closeSpeechSystem;
+ (void)initialize;
+ (void)recognizeString:(id)string;
+ (void)startPreventingDisplayDimming;
+ (void)stopPreventingDisplayDimming;
- (BOOL)languageModelHasParameterOverlayLabel:(id)label;
- (__CFLocale)currentLocaleRef;
- (__RXLanguageObject)createRXLanguageObjectRefFromCACLanguageModel:(id)model ignoreBuiltInLMTable:(BOOL)table;
- (__RXVocabulary)currentRXVocabularyRef;
- (id)initLocaleIdentifer:(id)identifer microphoneIdentifier:(id)identifier;
- (id)resultLanguageModelFromRXLanguageObject:(__RXLanguageObject *)object;
- (void)_close;
- (void)rxRecognitionSystemReset;
- (void)setAdditionalContextStrings:(id)strings;
- (void)setLeadingContextString:(id)string;
- (void)setRxRecognitionSystemResetMode:(int)mode;
- (void)setSecureFieldFocused:(BOOL)focused;
@end

@implementation CACSpeechSystem

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[CACSpeechSystem initialize];
  }
}

uint64_t __29__CACSpeechSystem_initialize__block_invoke()
{
  sRXAPIDispatchQueue = dispatch_queue_create("com.apple.speech.RXAPIDispatchQueue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)rxContextDictionaryForLanguageModel:(id)model
{
  modelCopy = model;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:modelCopy forKey:@"LanguageModel"];
  identifier = [modelCopy identifier];

  if (identifier)
  {
    identifier2 = [modelCopy identifier];
    [dictionary setObject:identifier2 forKey:@"Identifier"];
  }

  return dictionary;
}

+ (id)valueFromRXContextKey:(id)key rxLanguageObject:(__RXLanguageObject *)object
{
  keyCopy = key;
  v5 = RXObjectCopyProperty();
  v6 = [v5 objectForKey:keyCopy];

  return v6;
}

+ (id)speechSystem
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!sCACSpeechSystem)
  {
    v3 = [CACSpeechSystem alloc];
    v4 = +[CACPreferences sharedPreferences];
    bestLocaleIdentifier = [v4 bestLocaleIdentifier];
    v6 = [(CACSpeechSystem *)v3 initLocaleIdentifer:bestLocaleIdentifier microphoneIdentifier:0];
    v7 = sCACSpeechSystem;
    sCACSpeechSystem = v6;
  }

  objc_sync_exit(selfCopy);

  v8 = sCACSpeechSystem;

  return v8;
}

+ (void)closeSpeechSystem
{
  obj = self;
  objc_sync_enter(obj);
  if (sCACSpeechSystem)
  {
    dispatch_sync(sRXAPIDispatchQueue, &__block_literal_global_297);
  }

  objc_sync_exit(obj);
}

void __36__CACSpeechSystem_closeSpeechSystem__block_invoke()
{
  [sCACSpeechSystem _close];
  v0 = sCACSpeechSystem;
  sCACSpeechSystem = 0;
}

+ (BOOL)isSpeechSystemServerRunning
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CACSpeechSystem_isSpeechSystemServerRunning__block_invoke;
  block[3] = &unk_279CEBE90;
  block[4] = &v5;
  dispatch_sync(sRXAPIDispatchQueue, block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __46__CACSpeechSystem_isSpeechSystemServerRunning__block_invoke(uint64_t a1)
{
  v2 = sCACSpeechSystem;
  if (sCACSpeechSystem)
  {
    v4 = +[CACSpeechSystem speechSystem];
    [v4 recognitionSystemRef];
  }

  v3 = RXObjectCopyProperty();
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];

  if (v2)
  {
  }
}

+ (void)recognizeString:(id)string
{
  stringCopy = string;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sCACSpeechSystem)
  {
    v6 = sCACSpeechSystem;
    v7 = sRXAPIDispatchQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__CACSpeechSystem_recognizeString___block_invoke;
    v9[3] = &unk_279CEB4C0;
    v10 = v6;
    v11 = stringCopy;
    v8 = v6;
    dispatch_async(v7, v9);
  }

  objc_sync_exit(selfCopy);
}

uint64_t __35__CACSpeechSystem_recognizeString___block_invoke(uint64_t a1)
{
  [*(a1 + 32) recognitionSystemRef];

  return RXObjectSetProperty();
}

+ (void)startPreventingDisplayDimming
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Error in idle timer assertion: %@", &v2, 0xCu);
}

uint64_t __48__CACSpeechSystem_startPreventingDisplayDimming__block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_stopPreventingDisplayDimming object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel_stopPreventingDisplayDimming withObject:0 afterDelay:10.0];
}

+ (void)stopPreventingDisplayDimming
{
  obj = self;
  objc_sync_enter(obj);
  if (sActiveIdleTimerAssertion)
  {
    [sActiveIdleTimerAssertion invalidate];
    v2 = sActiveIdleTimerAssertion;
    sActiveIdleTimerAssertion = 0;
  }

  objc_sync_exit(obj);
}

+ (id)languagesSupportedByAssets
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = RXObjectCopyProperty();
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)initLocaleIdentifer:(id)identifer microphoneIdentifier:(id)identifier
{
  identiferCopy = identifer;
  v16.receiver = self;
  v16.super_class = CACSpeechSystem;
  v6 = [(CACSpeechSystem *)&v16 init];
  if (v6)
  {
    v7 = +[CACPreferences sharedPreferences];
    bestLocaleIdentifier = [v7 bestLocaleIdentifier];
    recognitionLocaleIdentifier = v6->_recognitionLocaleIdentifier;
    v6->_recognitionLocaleIdentifier = bestLocaleIdentifier;

    v10 = sRXAPIDispatchQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__CACSpeechSystem_initLocaleIdentifer_microphoneIdentifier___block_invoke;
    v13[3] = &unk_279CEB4C0;
    v14 = identiferCopy;
    v6 = v6;
    v15 = v6;
    dispatch_sync(v10, v13);
    if (!v6->_recognitionSystemRef)
    {
      v11 = CACLogRecognition();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CACSpeechSystem initLocaleIdentifer:v11 microphoneIdentifier:?];
      }

      v6 = 0;
    }
  }

  return v6;
}

void __60__CACSpeechSystem_initLocaleIdentifer_microphoneIdentifier___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:*(a1 + 32)];
  v3 = [objc_alloc(MEMORY[0x277D65668]) initWithLocale:v2 flags:20971528 delegate:*(a1 + 40)];
  v4 = *(a1 + 40);
  v5 = *(v4 + 48);
  *(v4 + 48) = v3;

  *(*(a1 + 40) + 8) = [*(*(a1 + 40) + 48) recognitionSystem];
  if (*(*(a1 + 40) + 8))
  {
    RXObjectSetProperty();
    RXObjectSetProperty();
    v6 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [v6 effectiveBoolValueForSetting:*MEMORY[0x277D25D38]];

    if (v7 == 1)
    {
      RXObjectSetProperty();
      v8 = CACLogRecognition();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_26B354000, v8, OS_LOG_TYPE_DEFAULT, "Filtering profanity", v14, 2u);
      }
    }

    RXObjectSetProperty();
    v9 = *(a1 + 32);
    v10 = RXLocalesSupportingSpellingMode();
    v11 = [CACLocaleUtilities isLocaleIdentifier:v9 containedInLocaleIdentifiers:v10];

    if (v11)
    {
      v12 = RXObjectCopyProperty();
      if (v12)
      {
        v13 = v12;
        LOBYTE(v11) = [v12 containsObject:@"SpellCC"];
        CFRelease(v13);
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    *(*(a1 + 40) + 56) = v11;
  }
}

uint64_t __60__CACSpeechSystem_initLocaleIdentifer_microphoneIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v3 handleSRSystemBeginUtteranceWithID:a2];

  return +[CACSpeechSystem startPreventingDisplayDimming];
}

void __60__CACSpeechSystem_initLocaleIdentifer_microphoneIdentifier___block_invoke_4()
{
  v0 = CACLogRecognition();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_26B354000, v0, OS_LOG_TYPE_DEFAULT, "Handling kRXRecognitionSystemProperty_ServerErrorCallback", v2, 2u);
  }

  v1 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v1 handleSRSystemServerError];
}

- (void)_close
{
  [(NSTimer *)self->_setLeadingContextStringDelayTimer invalidate];
  setLeadingContextStringDelayTimer = self->_setLeadingContextStringDelayTimer;
  self->_setLeadingContextStringDelayTimer = 0;

  [(NSTimer *)self->_setAdditionalContextStringsDelayTimer invalidate];
  setAdditionalContextStringsDelayTimer = self->_setAdditionalContextStringsDelayTimer;
  self->_setAdditionalContextStringsDelayTimer = 0;

  if (self->_recognitionSystemRef)
  {
    RXObjectSetProperty();
    RXObjectSetProperty();
    RXObjectSetProperty();
    self->_recognitionSystemRef = 0;
  }

  currentLocaleRef = self->_currentLocaleRef;
  if (currentLocaleRef)
  {
    CFRelease(currentLocaleRef);
    self->_currentLocaleRef = 0;
  }

  currentRXVocabularyRef = self->_currentRXVocabularyRef;
  if (currentRXVocabularyRef)
  {
    RXRelease(currentRXVocabularyRef);
    self->_currentRXVocabularyRef = 0;
  }

  +[CACSpeechSystem stopPreventingDisplayDimming];
}

- (__CFLocale)currentLocaleRef
{
  result = self->_currentLocaleRef;
  if (!result)
  {
    recognitionLocaleIdentifier = [(CACSpeechSystem *)self recognitionLocaleIdentifier];
    self->_currentLocaleRef = CFLocaleCreate(0, recognitionLocaleIdentifier);

    return self->_currentLocaleRef;
  }

  return result;
}

- (__RXVocabulary)currentRXVocabularyRef
{
  result = self->_currentRXVocabularyRef;
  if (!result)
  {
    [(CACSpeechSystem *)self currentLocaleRef];
    result = RXVocabularyCreateWithLocale();
    self->_currentRXVocabularyRef = result;
  }

  return result;
}

- (BOOL)languageModelHasParameterOverlayLabel:(id)label
{
  v19 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  identifier = [labelCopy identifier];
  if (![identifier isEqualToString:*MEMORY[0x277D655F8]])
  {
    identifier2 = [labelCopy identifier];
    v7 = [identifier2 isEqualToString:*MEMORY[0x277D65600]];

    if (v7)
    {
      goto LABEL_4;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    identifier = [labelCopy children];
    v10 = [identifier countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v10)
    {
LABEL_14:

      v8 = 0;
      goto LABEL_5;
    }

    v11 = v10;
    v12 = *v15;
LABEL_8:
    v13 = 0;
    while (1)
    {
      if (*v15 != v12)
      {
        objc_enumerationMutation(identifier);
      }

      if ([(CACSpeechSystem *)self languageModelHasParameterOverlayLabel:*(*(&v14 + 1) + 8 * v13)])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [identifier countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v11)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }
  }

LABEL_4:
  v8 = 1;
LABEL_5:

  return v8;
}

- (__RXLanguageObject)createRXLanguageObjectRefFromCACLanguageModel:(id)model ignoreBuiltInLMTable:(BOOL)table
{
  tableCopy = table;
  v40 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v7 = [modelCopy objectForAttribute:kCACLanguageModelAttributeParameterIdentifier];
  if ([v7 length] && !tableCopy)
  {
    v8 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v9 = [v8 rxLanguageObjectForBuiltInLMIdentifier:v7];

    if (v9)
    {
      CFRetain(v9);
    }

    goto LABEL_37;
  }

  v10 = [modelCopy objectForAttribute:*MEMORY[0x277D65638]];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    [modelCopy identifier];
    [CACSpeechSystem rxContextDictionaryForLanguageModel:modelCopy];
    v12 = RXPathCreate();
  }

  else
  {
    identifier = [modelCopy identifier];
    if ([identifier isEqualToString:*MEMORY[0x277D655C8]])
    {
    }

    else
    {
      identifier2 = [modelCopy identifier];
      v15 = [identifier2 isEqualToString:*MEMORY[0x277D655D0]];

      if (!v15)
      {
        [modelCopy identifier];
        [CACSpeechSystem rxContextDictionaryForLanguageModel:modelCopy];
        v12 = RXLanguageModelCreate();
        goto LABEL_12;
      }
    }

    [modelCopy identifier];
    [(CACSpeechSystem *)self currentRXVocabularyRef];
    [CACSpeechSystem rxContextDictionaryForLanguageModel:modelCopy];
    v12 = RXAdLibCreate();
  }

LABEL_12:
  v9 = v12;
  v16 = [modelCopy objectForAttribute:*MEMORY[0x277D65630]];
  bOOLValue2 = [v16 BOOLValue];

  if (bOOLValue2)
  {
    RXObjectSetProperty();
  }

  v18 = [modelCopy objectForAttribute:kCACLanguageModelAttributeCommandIdentifier];
  if (v18)
  {
    RXObjectSetProperty();
    valuePtr = 0;
    if ([v18 isEqualToString:@"System.ShowCommands"] || -[CACSpeechSystem languageModelHasParameterOverlayLabel:](self, "languageModelHasParameterOverlayLabel:", modelCopy))
    {
      valuePtr = 1;
    }

    v19 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    RXObjectSetProperty();
    CFRelease(v19);
  }

  v20 = [modelCopy objectForAttribute:kCACLanguageModelAttributeCustomCommands];
  bOOLValue3 = [v20 BOOLValue];

  if (bOOLValue3)
  {
    RXObjectSetProperty();
  }

  children = [modelCopy children];
  v23 = [children count];

  if (v23)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    children2 = [modelCopy children];
    v25 = [children2 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v25)
    {
      v26 = v25;
      v33 = v7;
      v27 = *v35;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(children2);
          }

          v29 = [(CACSpeechSystem *)self createRXLanguageObjectRefFromCACLanguageModel:*(*(&v34 + 1) + 8 * i) ignoreBuiltInLMTable:tableCopy];
          if (v29)
          {
            v30 = v29;
            RXLanguageObjectAddObject();
            RXRelease(v30);
          }
        }

        v26 = [children2 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v26);
      v7 = v33;
    }
  }

  else
  {
    children2 = [modelCopy text];
    if ([children2 length])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        string = [children2 string];

        children2 = string;
      }

      [(CACSpeechSystem *)self currentRXVocabularyRef];
      [(CACSpeechSystem *)self currentLocaleRef];
      RXLanguageObjectAddPhraseAndAlternatives();
    }
  }

LABEL_37:
  return v9;
}

- (id)resultLanguageModelFromRXLanguageObject:(__RXLanguageObject *)object
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [CACSpeechSystem valueFromRXContextKey:@"LanguageModel" rxLanguageObject:object];
  v5 = [v4 copy];

  if (v5)
  {
    v6 = CFLocaleCreate(0, [(CACSpeechSystem *)self recognitionLocaleIdentifier]);
    v7 = RXObjectCopyPropertyWithLocale();
    [v5 setText:v7];
    if (RXLanguageObjectGetType() == 4)
    {
      v8 = RXObjectCopyPropertyWithLocale();
      if ([v8 count] == 1)
      {
        array = [MEMORY[0x277CBEB18] array];
        if ([v7 length])
        {
          v24 = v6;
          [array addObject:v7];
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = v8;
          v10 = [v8 objectAtIndex:0];
          v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v26;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v26 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v25 + 1) + 8 * i);
                if (([v15 isEqualToString:v7] & 1) == 0)
                {
                  [array addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
            }

            while (v12);
          }

          v8 = v23;
          v6 = v24;
        }

        else
        {
          v16 = [v8 objectAtIndex:0];
          [array addObjectsFromArray:v16];
        }

        attributes = [v5 attributes];
        [attributes setObject:array forKey:kCACLanguageModelAttributeTextVariants];
      }
    }

    Count = RXLanguageObjectGetCount();
    if (Count >= 1)
    {
      v19 = Count;
      for (j = 0; j != v19; ++j)
      {
        v21 = [(CACSpeechSystem *)self resultLanguageModelFromRXLanguageObject:RXLanguageObjectGetObjectAtIndex()];
        if (v21)
        {
          [v5 addChildLanguageModel:v21];
        }
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  return v5;
}

- (void)setLeadingContextString:(id)string
{
  stringCopy = string;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__CACSpeechSystem_setLeadingContextString___block_invoke;
  v6[3] = &unk_279CEB4C0;
  v6[4] = self;
  v7 = stringCopy;
  v5 = stringCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __43__CACSpeechSystem_setLeadingContextString___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(*(a1 + 32) + 32) invalidate];
  v3 = MEMORY[0x277CBEBB8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__CACSpeechSystem_setLeadingContextString___block_invoke_2;
  v8[3] = &unk_279CEBEF8;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  v5 = [v3 scheduledTimerWithTimeInterval:0 repeats:v8 block:0.5];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  objc_sync_exit(v2);
}

void __43__CACSpeechSystem_setLeadingContextString___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(*(a1 + 32) + 32) invalidate];
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;

  objc_sync_exit(v4);
  v7 = sRXAPIDispatchQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__CACSpeechSystem_setLeadingContextString___block_invoke_3;
  v9[3] = &unk_279CEB4C0;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  dispatch_async(v7, v9);
}

uint64_t __43__CACSpeechSystem_setLeadingContextString___block_invoke_3(uint64_t result)
{
  if (*(*(result + 32) + 8))
  {
    return MEMORY[0x2821CC950](*(*(result + 32) + 8), *(result + 40));
  }

  return result;
}

- (void)setSecureFieldFocused:(BOOL)focused
{
  if (self->_recognitionSystemRef)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __41__CACSpeechSystem_setSecureFieldFocused___block_invoke;
    v3[3] = &unk_279CEBF20;
    v3[4] = self;
    focusedCopy = focused;
    dispatch_async(sRXAPIDispatchQueue, v3);
  }
}

- (void)setAdditionalContextStrings:(id)strings
{
  stringsCopy = strings;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__CACSpeechSystem_setAdditionalContextStrings___block_invoke;
  v6[3] = &unk_279CEB4C0;
  v6[4] = self;
  v7 = stringsCopy;
  v5 = stringsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __47__CACSpeechSystem_setAdditionalContextStrings___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(*(a1 + 32) + 40) invalidate];
  v3 = MEMORY[0x277CBEBB8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CACSpeechSystem_setAdditionalContextStrings___block_invoke_2;
  v8[3] = &unk_279CEBEF8;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  v5 = [v3 scheduledTimerWithTimeInterval:0 repeats:v8 block:0.5];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_sync_exit(v2);
}

void __47__CACSpeechSystem_setAdditionalContextStrings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(*(a1 + 32) + 40) invalidate];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  objc_sync_exit(v4);
  v7 = sRXAPIDispatchQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__CACSpeechSystem_setAdditionalContextStrings___block_invoke_3;
  v9[3] = &unk_279CEB4C0;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  dispatch_async(v7, v9);
}

uint64_t __47__CACSpeechSystem_setAdditionalContextStrings___block_invoke_3(uint64_t result)
{
  if (*(*(result + 32) + 8))
  {
    return MEMORY[0x2821CC958](*(*(result + 32) + 8), *(result + 40));
  }

  return result;
}

- (void)rxRecognitionSystemReset
{
  if (self->_recognitionSystemRef)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__CACSpeechSystem_rxRecognitionSystemReset__block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = self;
    dispatch_async(sRXAPIDispatchQueue, block);
  }
}

- (void)setRxRecognitionSystemResetMode:(int)mode
{
  if (self->_recognitionSystemRef)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __51__CACSpeechSystem_setRxRecognitionSystemResetMode___block_invoke;
    v3[3] = &unk_279CEBF48;
    v3[4] = self;
    modeCopy = mode;
    dispatch_async(sRXAPIDispatchQueue, v3);
  }
}

@end