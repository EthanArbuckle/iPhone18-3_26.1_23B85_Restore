@interface AutocorrectionTestHarness
+ (id)keyboardFromWidth:(id)width useDynamicLayout:(BOOL)layout orientation:(id)orientation keyboardLayout:(id)keyboardLayout;
+ (id)overrideInputMode:(id)mode;
- (AutocorrectionTestHarness)initWithAttributes:(id)attributes;
- (BOOL)outcomeIsFailureForTest:(id)test withResult:(id)result;
- (BOOL)requiresMaintenance;
- (id)emptyResultForPlayback:(id)playback;
- (id)emptyResultForTest:(id)test;
- (id)newKeyboardInputManager;
- (id)replayTest:(id)test withError:(id)error;
- (id)runConversationTest:(id)test trialID:(unint64_t)d withError:(id)error;
- (id)runTest:(id)test trialID:(unint64_t)d withError:(id)error;
- (id)typeTest:(id)test withError:(id)error;
- (unsigned)seedForTest:(id)test trialID:(unint64_t)d;
- (void)initializeConversationHistory;
- (void)nullifyConversationHistory;
- (void)testConversation:(id)conversation testingSender:(id)sender warmupMessages:(unint64_t)messages adaptToSentMessages:(BOOL)sentMessages adaptToReceivedMessages:(BOOL)receivedMessages trialID:(unint64_t)d withError:(id)error writingResults:(id)self0;
- (void)trainWithCorpus:(id)corpus;
@end

@implementation AutocorrectionTestHarness

- (BOOL)requiresMaintenance
{
  testTyper = [(AutocorrectionTestHarness *)self testTyper];
  wordLearningEnabled = [testTyper wordLearningEnabled];

  return wordLearningEnabled;
}

- (BOOL)outcomeIsFailureForTest:(id)test withResult:(id)result
{
  resultCopy = result;
  intended = [resultCopy intended];
  corrected = [resultCopy corrected];
  LOBYTE(self) = [(AutocorrectionTestHarness *)self compareExpectedValue:intended withResult:corrected];

  return self ^ 1;
}

- (void)trainWithCorpus:(id)corpus
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  corpusCopy = corpus;
  v5 = [corpusCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(corpusCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        testTyper = [(AutocorrectionTestHarness *)self testTyper];
        [testTyper attemptToTypeText:v8];

        testTyper2 = [(AutocorrectionTestHarness *)self testTyper];
        [testTyper2 commitText];

        ++v7;
      }

      while (v5 != v7);
      v5 = [corpusCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)runTest:(id)test trialID:(unint64_t)d withError:(id)error
{
  testCopy = test;
  [(NSMutableArray *)self->_insertedText removeAllObjects];
  v7 = testCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [(AutocorrectionTestHarness *)self emptyResultForPlayback:v7];
  }

  else
  {
    [(AutocorrectionTestHarness *)self emptyResultForTest:v7];
  }
  v9 = ;
  sourceMetadata = [v7 sourceMetadata];
  [v9 setSourceMetadata:sourceMetadata];

  v40 = [(AutocorrectionTestHarness *)self seedForTest:v7 trialID:d];
  testTyper = [(AutocorrectionTestHarness *)self testTyper];
  userActionStream = [testTyper userActionStream];
  [userActionStream setRandomNumberSeed:v40];

  if (isKindOfClass)
  {
    [(AutocorrectionTestHarness *)self replayTest:v7 withError:0];
  }

  else
  {
    [(AutocorrectionTestHarness *)self typeTest:v7 withError:0];
  }
  v13 = ;
  typologyOutpath = [(AutocorrectionTestHarness *)self typologyOutpath];

  if (typologyOutpath)
  {
    inputManager = [(TIKeyboardTyper *)self->_testTyper inputManager];
    inputManagerLogger = [inputManager inputManagerLogger];
    writeToFile = [inputManagerLogger writeToFile];

    v18 = [writeToFile objectAtIndexedSubscript:0];
    [v9 setTypologyLogURL:v18];

    v19 = [writeToFile objectAtIndexedSubscript:1];
    [v9 setTypologyTraceLogURL:v19];
  }

  correctedTransliterationSequence = [v13 correctedTransliterationSequence];
  v21 = correctedTransliterationSequence;
  if (correctedTransliterationSequence)
  {
    v22 = correctedTransliterationSequence;
  }

  else
  {
    testTyper2 = [(AutocorrectionTestHarness *)self testTyper];
    testTyper3 = [(AutocorrectionTestHarness *)self testTyper];
    text = [testTyper3 text];
    v22 = [testTyper2 tokensForString:text];
  }

  config = [(AutocorrectionTestHarness *)self config];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_21;
  }

  config2 = [(AutocorrectionTestHarness *)self config];
  usesContinuousPath = [config2 usesContinuousPath];

  if (!usesContinuousPath)
  {
    goto LABEL_23;
  }

  intended = [v9 intended];
  config = [intended componentsJoinedByString:&stru_287EC4808];

  if (([config hasSuffix:@" "] & 1) == 0 && objc_msgSend(v13, "adjustForContinuousPath") && (objc_msgSend(v22, "lastObject"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", @" "), v30, v31))
  {
    v32 = [v22 count] - 1;
    v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:v32];
    if (v32)
    {
      for (i = 0; i != v32; ++i)
      {
        v35 = [v22 objectAtIndex:i];
        [v33 addObject:v35];
      }
    }
  }

  else
  {
LABEL_21:
    v33 = v22;
  }

  v22 = v33;
LABEL_23:
  [v9 extractDataFromTypingLog:v13];
  [v9 setCorrected:v22];
  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v40];
  [v9 setSeed:v36];

  resultClassifiers = [(AutocorrectionTestHarness *)self resultClassifiers];
  [v9 setTagsFromClassifiers:resultClassifiers];

  return v9;
}

- (id)runConversationTest:(id)test trialID:(unint64_t)d withError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  testCopy = test;
  errorCopy = error;
  conversation = [testCopy conversation];
  v10 = [conversation count];
  warmupMessages = [testCopy warmupMessages];

  v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10 - warmupMessages];
  if (v10 != warmupMessages)
  {
    v12 = warmupMessages - v10;
    do
    {
      null = [MEMORY[0x277CBEB68] null];
      [v25 addObject:null];
    }

    while (!__CFADD__(v12++, 1));
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  sendersToTest = [testCopy sendersToTest];
  obj = sendersToTest;
  v16 = [sendersToTest countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        conversation2 = [testCopy conversation];
        -[AutocorrectionTestHarness testConversation:testingSender:warmupMessages:adaptToSentMessages:adaptToReceivedMessages:trialID:withError:writingResults:](self, "testConversation:testingSender:warmupMessages:adaptToSentMessages:adaptToReceivedMessages:trialID:withError:writingResults:", conversation2, v19, [testCopy warmupMessages], objc_msgSend(testCopy, "adaptToSentMessages"), objc_msgSend(testCopy, "adaptToReceivedMessages"), d, errorCopy, v25);
      }

      sendersToTest = obj;
      v16 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  null2 = [MEMORY[0x277CBEB68] null];
  [v25 removeObjectIdenticalTo:null2];

  return v25;
}

- (void)testConversation:(id)conversation testingSender:(id)sender warmupMessages:(unint64_t)messages adaptToSentMessages:(BOOL)sentMessages adaptToReceivedMessages:(BOOL)receivedMessages trialID:(unint64_t)d withError:(id)error writingResults:(id)self0
{
  sentMessagesCopy = sentMessages;
  receivedMessagesCopy = receivedMessages;
  v45 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  senderCopy = sender;
  errorCopy = error;
  resultsCopy = results;
  [(AutocorrectionTestHarness *)self initializeConversationHistory];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = conversationCopy;
  v13 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v13)
  {
    LODWORD(v14) = 0;
    v37 = *v41;
    do
    {
      v39 = v13;
      v15 = 0;
      v16 = v14 - messages;
      v14 = v14;
      do
      {
        if (*v41 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v40 + 1) + 8 * v15);
        senderId = [v17 senderId];
        v19 = [senderId isEqualToString:senderCopy];

        if (!v19)
        {
          if (!receivedMessagesCopy)
          {
            goto LABEL_14;
          }

          testTyper = [(AutocorrectionTestHarness *)self testTyper];
          keyboardController = [testTyper keyboardController];
          inputContextHistory = [keyboardController inputContextHistory];
          text = [v17 text];
          date = [MEMORY[0x277CBEAA8] date];
          friendId = [(AutocorrectionTestHarness *)self friendId];
          [inputContextHistory addTextEntry:text timestamp:date senderIdentifier:friendId];
          goto LABEL_13;
        }

        if (v14 >= messages)
        {
          testTyper2 = [(AutocorrectionTestHarness *)self testTyper];
          [testTyper2 syncToEmptyDocument];

          TIDispatchWaitForAllBlocks();
          text2 = [v17 text];
          v22 = [AutocorrectionTest testWithInput:text2];

          v23 = [(AutocorrectionTestHarness *)self runTest:v22 trialID:d withError:errorCopy];
          [resultsCopy setObject:v23 atIndexedSubscript:v16];
        }

        if (sentMessagesCopy)
        {
          testTyper = [(AutocorrectionTestHarness *)self testTyper];
          keyboardController = [testTyper keyboardController];
          inputContextHistory = [keyboardController inputContextHistory];
          text = [v17 text];
          date = [MEMORY[0x277CBEAA8] date];
          friendId = [(AutocorrectionTestHarness *)self selfId];
          [inputContextHistory addTextEntry:text timestamp:date senderIdentifier:friendId];
LABEL_13:
        }

LABEL_14:
        ++v14;
        ++v15;
        ++v16;
      }

      while (v39 != v15);
      v13 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v13);
  }

  [(AutocorrectionTestHarness *)self nullifyConversationHistory];
}

- (void)nullifyConversationHistory
{
  v3 = objc_alloc(MEMORY[0x277D6F370]);
  v7 = [MEMORY[0x277CBEB98] setWithObject:@"mailto:null@apple.com"];
  v4 = [v3 initWithRecipientIdentifiers:?];
  testTyper = [(AutocorrectionTestHarness *)self testTyper];
  keyboardController = [testTyper keyboardController];
  [keyboardController setInputContextHistory:v4];

  testTyper2 = [(AutocorrectionTestHarness *)self testTyper];
  [testTyper2 syncToEmptyDocument];
}

- (void)initializeConversationHistory
{
  v3 = MEMORY[0x277CBEB98];
  friendId = [(AutocorrectionTestHarness *)self friendId];
  v11 = [v3 setWithObject:friendId];

  v5 = MEMORY[0x277CBEB98];
  selfId = [(AutocorrectionTestHarness *)self selfId];
  v7 = [v5 setWithObject:selfId];

  v8 = [objc_alloc(MEMORY[0x277D6F370]) initWithRecipientIdentifiers:v11 senderIdentifiers:v7];
  testTyper = [(AutocorrectionTestHarness *)self testTyper];
  keyboardController = [testTyper keyboardController];
  [keyboardController setInputContextHistory:v8];
}

- (unsigned)seedForTest:(id)test trialID:(unint64_t)d
{
  dCopy = d;
  input = [test input];
  v6 = [input length];
  if (v6)
  {
    v7 = 0;
    v8 = 5381;
    do
    {
      v8 = 33 * v8 + [input characterAtIndex:v7++];
    }

    while (v6 != v7);
    v9 = 33 * v8;
  }

  else
  {
    v9 = 177573;
  }

  return v9 + dCopy;
}

- (id)emptyResultForPlayback:(id)playback
{
  playbackCopy = playback;
  v4 = objc_alloc_init(AutocorrectionResult);
  intended = [playbackCopy intended];
  [(AutocorrectionResult *)v4 setInput:intended];

  intended2 = [playbackCopy intended];
  [(AutocorrectionResult *)v4 setIntended:intended2];

  corpusId = [playbackCopy corpusId];
  [(AutocorrectionResult *)v4 setCorpusId:corpusId];

  return v4;
}

- (id)emptyResultForTest:(id)test
{
  testCopy = test;
  v5 = objc_alloc_init(AutocorrectionResult);
  testTyper = [(AutocorrectionTestHarness *)self testTyper];
  input = [testCopy input];
  v8 = [testTyper tokensForString:input];
  [(AutocorrectionResult *)v5 setInput:v8];

  testTyper2 = [(AutocorrectionTestHarness *)self testTyper];
  userModel = [testTyper2 userModel];
  if ([userModel prefersContinuousPath])
  {
    config = [(AutocorrectionTestHarness *)self config];
    usesContinuousPath = [config usesContinuousPath];

    if (usesContinuousPath)
    {
      testTyper3 = [(AutocorrectionTestHarness *)self testTyper];
      input2 = [testCopy input];
      expectedOutput2 = [testTyper3 tokensForString:input2];

      v16 = [expectedOutput2 count];
      expectedOutput4 = expectedOutput2;
      if (!v16)
      {
        expectedOutput4 = [MEMORY[0x277CBEB18] arrayWithObject:&stru_287EC4808];
      }

      [(AutocorrectionResult *)v5 setIntended:expectedOutput4];
      if (!v16)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  expectedOutput = [testCopy expectedOutput];
  v19 = [expectedOutput count];

  if (v19 >= 2)
  {
    expectedOutput2 = [testCopy expectedOutput];
    [(AutocorrectionResult *)v5 setIntended:expectedOutput2];
    goto LABEL_14;
  }

  expectedOutput3 = [testCopy expectedOutput];
  v21 = [expectedOutput3 count];

  if (v21 == 1)
  {
    expectedOutput2 = [(AutocorrectionTestHarness *)self testTyper];
    expectedOutput4 = [testCopy expectedOutput];
    firstObject = [expectedOutput4 firstObject];
    v23 = [expectedOutput2 tokensForString:firstObject];
    [(AutocorrectionResult *)v5 setIntended:v23];

LABEL_12:
    goto LABEL_14;
  }

  expectedOutput2 = [MEMORY[0x277CBEB18] arrayWithObject:&stru_287EC4808];
  [(AutocorrectionResult *)v5 setIntended:expectedOutput2];
LABEL_14:

  corpusId = [testCopy corpusId];
  [(AutocorrectionResult *)v5 setCorpusId:corpusId];

  return v5;
}

- (id)typeTest:(id)test withError:(id)error
{
  testCopy = test;
  v6 = [TITypingLog typingLogWithDebug:self->_saveDebugData];
  testTyper = [(AutocorrectionTestHarness *)self testTyper];
  input = [testCopy input];
  [testTyper attemptToTypeText:input typingLog:v6];

  testTyper2 = [(AutocorrectionTestHarness *)self testTyper];
  [testTyper2 commitText];

  return v6;
}

- (id)replayTest:(id)test withError:(id)error
{
  testCopy = test;
  v6 = [TITypingLog typingLogWithDebug:self->_saveDebugData];
  testTyper = [(AutocorrectionTestHarness *)self testTyper];
  intended = [testCopy intended];
  expected = [testCopy expected];
  [testTyper attemptToTypeIntended:intended expected:expected typingLog:v6];

  testTyper2 = [(AutocorrectionTestHarness *)self testTyper];
  [testTyper2 commitText];

  return v6;
}

- (id)newKeyboardInputManager
{
  v41[1] = *MEMORY[0x277D85DE8];
  if (-[AutocorrectionTestHarness multilingualEnabled](self, "multilingualEnabled") && (-[AutocorrectionTestHarness config](self, "config"), v3 = objc_claimAutoreleasedReturnValue(), [v3 inputMode], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isSiriMode"), v4, v3, !v5))
  {
    v39 = objc_alloc_init(TIDynamicLanguageLikelihoodModel);
    v12 = [TIMultilingualPreferenceOverrides alloc];
    secondaryInputMode = [(AutocorrectionTestHarness *)self secondaryInputMode];
    config = [(AutocorrectionTestHarness *)self config];
    inputMode = [config inputMode];
    v41[0] = inputMode;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    config2 = [(AutocorrectionTestHarness *)self config];
    inputMode2 = [config2 inputMode];
    languageWithRegion = [inputMode2 languageWithRegion];
    v40 = languageWithRegion;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    v21 = [(TIMultilingualPreferenceOverrides *)v12 initWithPreferredSecondaryInputMode:secondaryInputMode userEnabledInputModes:v16 userPreferredLanguages:v20];

    v22 = [objc_alloc(MEMORY[0x277D6FE98]) initWithLanguageLikelihoodModel:v39 preferenceProvider:v21];
    config3 = [(AutocorrectionTestHarness *)self config];
    inputMode3 = [config3 inputMode];
    multilingualInputManagerClass = [inputMode3 multilingualInputManagerClass];

    v26 = [multilingualInputManagerClass alloc];
    config4 = [(AutocorrectionTestHarness *)self config];
    v11 = [v26 initWithConfig:config4 keyboardState:0 languageSelectionController:v22];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [v11 setTestingStateObject:dictionary];
  }

  else
  {
    config5 = [(AutocorrectionTestHarness *)self config];
    inputMode4 = [config5 inputMode];
    inputManagerClass = [inputMode4 inputManagerClass];

    v9 = [inputManagerClass alloc];
    config6 = [(AutocorrectionTestHarness *)self config];
    v11 = [v9 initWithConfig:config6 keyboardState:0];
  }

  typologyOutpath = [(AutocorrectionTestHarness *)self typologyOutpath];
  v30 = typologyOutpath == 0;

  if (!v30)
  {
    v31 = objc_alloc(MEMORY[0x277D6FEE8]);
    typologyOutpath2 = [(AutocorrectionTestHarness *)self typologyOutpath];
    v33 = [v31 initWithOutputPath:typologyOutpath2];
    [v11 setTypologyPreferences:v33];

    v34 = objc_alloc(MEMORY[0x277D6FE78]);
    typologyPreferences = [v11 typologyPreferences];
    v36 = [v34 initWithTypologyPreferences:typologyPreferences];

    [v11 setInputManagerLogger:v36];
    configurationPropertyList = [v11 configurationPropertyList];
    [v36 setConfig:configurationPropertyList];
  }

  return v11;
}

- (AutocorrectionTestHarness)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v167.receiver = self;
  v167.super_class = AutocorrectionTestHarness;
  v7 = [(AutocorrectionTestHarness *)&v167 init];

  v165 = v7;
  if (!v7)
  {
    goto LABEL_145;
  }

  v8 = [attributesCopy valueForKey:@"TYPOLOGY_OUTPATH"];
  typologyOutpath = v7->_typologyOutpath;
  v7->_typologyOutpath = v8;

  if (v7->_typologyOutpath)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [defaultManager createDirectoryAtPath:v7->_typologyOutpath withIntermediateDirectories:1 attributes:0 error:0];

    if ((v11 & 1) == 0)
    {
      NSLog(&cfstr_FailureCreatin.isa, v7->_typologyOutpath);
      v12 = v7->_typologyOutpath;
      v7->_typologyOutpath = 0;
    }
  }

  v166 = objc_alloc_init(MEMORY[0x277D6FE68]);
  [v166 setDisableAnalytics:1];
  v13 = [attributesCopy valueForKey:@"INPUT_MODE"];
  v158 = v13;
  if ([v13 containsString:@"sw="])
  {
    v163 = v13;
LABEL_10:
    v157 = 0;
    goto LABEL_11;
  }

  v14 = [attributesCopy objectForKeyedSubscript:@"SOFTWARE_KEYBOARD"];
  if (!v14)
  {
    v15 = UIKeyboardGetSupportedSoftwareKeyboardsForInputModeAndIdiom();
    v16 = [v15 objectAtIndex:0];

    v163 = UIKeyboardInputModeWithNewSWLayout();

    goto LABEL_10;
  }

  v163 = UIKeyboardInputModeWithNewSWLayout();
  v157 = v14;
LABEL_11:
  v17 = [attributesCopy objectForKey:@"SIRI_MODE"];
  v18 = v17;
  if (!v17)
  {
    v17 = @"NO";
  }

  bOOLValue = [(__CFString *)v17 BOOLValue];

  v162 = [MEMORY[0x277D6FE48] inputModeWithIdentifier:v163 isSiriMode:bOOLValue];
  normalizedIdentifier = [v162 normalizedIdentifier];
  v164 = TIGetInputModeProperties();

  v21 = [attributesCopy objectForKey:@"USE_LANGUAGE_MODEL"];
  v22 = v21;
  if (!v21)
  {
    v22 = [v164 objectForKey:*MEMORY[0x277D6F6D8]];
  }

  [v166 setUsesWordNgramModel:{objc_msgSend(v22, "BOOLValue")}];
  if (!v21)
  {
  }

  if ([v166 usesWordNgramModel] && (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(v162, "keyboardFeatureSpecializationClassFromInputModeProperties"))
  {
    [v162 setQuickTypeKeyboardFeatureSpecializationClass];
  }

  v23 = [AutocorrectionTestHarness overrideInputMode:v162];
  [v166 setInputMode:v23];

  inputMode = [v166 inputMode];
  [v166 setAllowsSpaceCorrections:{objc_msgSend(inputMode, "spaceAutocorrectionEnabled")}];

  inputMode2 = [v166 inputMode];
  [v166 setUsesETSRescoring:{objc_msgSend(inputMode2, "typedStringLMRankingEnabled")}];

  v26 = [v164 objectForKey:*MEMORY[0x277D6F670]];
  [v166 setUsesTextChecker:{objc_msgSend(v26, "BOOLValue")}];

  v27 = [attributesCopy objectForKey:@"USE_RETROCORRECTION"];
  v28 = v27;
  if (!v27)
  {
    v27 = @"NO";
  }

  [v166 setUsesRetrocorrection:{-[__CFString BOOLValue](v27, "BOOLValue")}];

  v29 = [attributesCopy objectForKey:@"WORD_LEARNING_ENABLED"];
  if ([v29 BOOLValue])
  {
    bOOLValue2 = 1;
  }

  else
  {
    v31 = [attributesCopy objectForKey:@"USES_ADAPTATION"];
    inputMode3 = v31;
    if (!v31)
    {
      v31 = [attributesCopy objectForKey:@"USE_WORD_NGRAM_MODEL_ADAPTATION"];
      languageWithRegion = v31;
      if (!v31)
      {
        v31 = @"NO";
      }
    }

    bOOLValue2 = [(__CFString *)v31 BOOLValue];
    if (!inputMode3)
    {
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v166 setUsesAdaptation:bOOLValue2];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v166 setUsesWordNgramModelAdaptation:bOOLValue2];
  }

  v32 = [attributesCopy objectForKey:@"NEGATIVE_LEARNING_ENABLED"];
  [v166 setNegativeLearningDisabled:{objc_msgSend(v32, "BOOLValue") ^ 1}];

  v33 = [attributesCopy objectForKey:@"MAX_WORDS_PER_PREDICTION"];
  v34 = v33;
  if (!v33)
  {
    v33 = &unk_287ED4A00;
  }

  [v166 setMaxWordsPerPrediction:{objc_msgSend(v33, "integerValue")}];

  if (objc_opt_respondsToSelector())
  {
    v35 = [attributesCopy objectForKey:@"CUSTOM_STATIC_DICTIONARY_PATH"];
    [v166 setUsesCustomStaticDictionary:v35 != 0];
  }

  v36 = [attributesCopy objectForKey:@"CUSTOM_STATIC_DICTIONARY_PATH"];
  [v166 setStaticDictionaryPath:v36];

  if (objc_opt_respondsToSelector())
  {
    v37 = [attributesCopy objectForKey:@"CUSTOM_LANGUAGE_MODEL_PATH"];
    [v166 setUsesCustomNgramModel:v37 != 0];
  }

  v38 = [attributesCopy objectForKey:@"CUSTOM_LANGUAGE_MODEL_PATH"];
  v39 = v38;
  if (!v38)
  {
    inputMode3 = [v166 inputMode];
    languageWithRegion = [inputMode3 languageWithRegion];
    v39 = TINgramModelPathForInputMode();
  }

  [v166 setNgramModelPath:v39];
  if (!v38)
  {
  }

  v40 = [attributesCopy objectForKey:@"CUSTOM_DYNAMIC_RESOURCE_PATH"];
  v41 = v40;
  if (!v40)
  {
    v41 = UIKeyboardUserDirectory();
  }

  [v166 setDynamicResourcePath:v41];
  if (!v40)
  {
  }

  v42 = [attributesCopy objectForKey:@"CUSTOM_SHAPE_STORE_DIR"];
  dynamicResourcePath = v42;
  if (!v42)
  {
    dynamicResourcePath = [v166 dynamicResourcePath];
  }

  [v166 setShapeStoreResourceDir:dynamicResourcePath];
  if (!v42)
  {
  }

  if (objc_opt_respondsToSelector())
  {
    v44 = [v164 objectForKey:*MEMORY[0x277D6F770]];
    [v166 setUsesStemSuffixCorrectionFactor:{objc_msgSend(v44, "BOOLValue")}];
  }

  v45 = [attributesCopy objectForKey:@"FAVONIUS_LANGUAGE_MODEL_WEIGHT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v160 = v45;
    v46 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v46 setNumberStyle:1];
    dynamicResourcePath = [attributesCopy objectForKey:@"FAVONIUS_LANGUAGE_MODEL_WEIGHT"];
    v45 = [v46 numberFromString:dynamicResourcePath];
  }

  if (v45)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [v166 setFavoniusLanguageModelWeight:v45];
    }
  }

  v161 = v45;
  v47 = [attributesCopy objectForKey:@"MLTT_BUNDLE_URL"];
  v156 = v47;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v166 setMlttBundleURL:v47];
  }

  [v166 setTesting:1];
  [v166 setUsesUserModelLogging:0];
  [v166 setStickerSuggestionsEnabled:0];
  objc_storeStrong(&v7->_config, v166);
  v48 = [attributesCopy objectForKey:@"MAX_PREDICTIONS"];
  v49 = v48;
  if (!v48)
  {
    v48 = [attributesCopy objectForKey:@"SIZE_OF_AUTOCORRECTION_LIST"];
    dynamicResourcePath = v48;
    if (!v48)
    {
      v48 = @"3";
    }
  }

  intValue = [(__CFString *)v48 intValue];
  if (!v49)
  {
  }

  v51 = [v164 objectForKey:*MEMORY[0x277D6F760]];
  bOOLValue3 = [v51 BOOLValue];

  v53 = MEMORY[0x277CBEC28];
  if (bOOLValue3)
  {
    v54 = [attributesCopy objectForKey:@"MULTILINGUAL_ENABLED"];
    v55 = v54;
    if (!v54)
    {
      v54 = v53;
    }

    v165->_multilingualEnabled = [v54 BOOLValue];
  }

  else
  {
    v165->_multilingualEnabled = 0;
  }

  v159 = [attributesCopy objectForKey:@"KEYBOARD_SECOND_LANGUAGE"];
  if ([v159 length])
  {
    v56 = [MEMORY[0x277D6FE48] inputModeWithIdentifier:v159];
    secondaryInputMode = v165->_secondaryInputMode;
    v165->_secondaryInputMode = v56;
  }

  v58 = [[TIKeyboardTyper alloc] initWithInputMode:v162];
  v59 = [attributesCopy objectForKey:@"BAD_SENTENCES_FILE_PATH"];
  stringValue = [v59 stringValue];
  [(TIKeyboardTyper *)v58 setBadSentenceLogFilePath:stringValue];

  [(TIKeyboardTyper *)v58 setInputModeIdentifier:v163];
  v61 = [attributesCopy objectForKey:@"PRINT_TYPING_TRANSCRIPT"];
  -[TIKeyboardTyper setPrintTypingTranscript:](v58, "setPrintTypingTranscript:", [v61 BOOLValue]);

  v62 = [attributesCopy objectForKey:@"SHOW_CANDIDATE_BAR"];
  -[TIKeyboardTyper setShowsCandidateBar:](v58, "setShowsCandidateBar:", [v62 BOOLValue]);

  v63 = [attributesCopy objectForKey:@"TRANSLITERATION_SUMMARIES"];
  -[TIKeyboardTyper setPrintTranslitSummaries:](v58, "setPrintTranslitSummaries:", [v63 BOOLValue]);

  v64 = [attributesCopy objectForKey:@"TEST_AUTO_FILL_FEATURE"];
  bOOLValue4 = [v64 BOOLValue];

  keyboardController = [(TIKeyboardTyper *)v58 keyboardController];
  if (bOOLValue4)
  {
    [keyboardController setIsScreenLocked:0];
  }

  else
  {
    [keyboardController setIsScreenLocked:bOOLValue2 ^ 1];
  }

  v67 = [attributesCopy objectForKey:@"USE_LANGUAGE_MODEL"];
  v68 = v67;
  if (v67)
  {
    v69 = 0;
    v70 = 0;
    v71 = v67;
  }

  else
  {
    v72 = [attributesCopy objectForKey:@"USE_PREDICTION"];
    bOOLValue4 = v72;
    if (v72)
    {
      v69 = 0;
      v70 = 0;
      v71 = v72;
    }

    else
    {
      v73 = [attributesCopy objectForKey:@"AUTOCORRECTION_LISTS"];
      keyboardController = v73;
      if (v73)
      {
        bOOLValue4 = 0;
        v70 = 0;
        v69 = 1;
        v71 = v73;
      }

      else
      {
        v71 = [v164 objectForKey:*MEMORY[0x277D6F6D0]];
        bOOLValue4 = 0;
        keyboardController = 0;
        v69 = 1;
        v70 = 1;
      }
    }
  }

  bOOLValue5 = [v71 BOOLValue];
  if (v70)
  {
  }

  if (v69)
  {
  }

  v75 = MEMORY[0x277CBEC28];
  if (!v68)
  {
  }

  if (bOOLValue5)
  {
    [(TIKeyboardTyper *)v58 setUsesPrediction:1];
  }

  [(TIKeyboardTyper *)v58 setMaxPredictions:intValue];
  [(TIKeyboardTyper *)v58 setKeyboardInputManagerFactory:v165];
  v76 = [attributesCopy objectForKey:@"USE_AUTOCORRECTION"];
  v77 = v76;
  v78 = MEMORY[0x277CBEC38];
  if (!v76)
  {
    v76 = MEMORY[0x277CBEC38];
  }

  -[TIKeyboardTyper setUsesAutocorrection:](v58, "setUsesAutocorrection:", [v76 BOOLValue]);

  v79 = [attributesCopy objectForKey:@"USE_AUTOCAPITALIZATION"];
  v80 = v79;
  if (!v79)
  {
    v79 = v78;
  }

  -[TIKeyboardTyper setUsesAutocapitalization:](v58, "setUsesAutocapitalization:", [v79 BOOLValue]);

  v81 = [attributesCopy objectForKey:@"WORD_LEARNING_ENABLED"];
  -[TIKeyboardTyper setWordLearningEnabled:](v58, "setWordLearningEnabled:", [v81 BOOLValue]);

  v82 = [attributesCopy objectForKey:@"WARN_IF_SELECTING_POPUP_VARIANT"];
  v83 = v82;
  if (!v82)
  {
    v82 = v75;
  }

  -[TIKeyboardTyper setWarnIfSelectingPopupVariant:](v58, "setWarnIfSelectingPopupVariant:", [v82 BOOLValue]);

  v84 = [attributesCopy objectForKey:@"MAX_PREDICTIONS_REPORTED"];
  v85 = v84;
  if (!v84)
  {
    v84 = @"0";
  }

  [(TIKeyboardTyper *)v58 setMaxPredictionsReported:[(__CFString *)v84 intValue]];

  v86 = [attributesCopy objectForKey:@"LOG_DOCUMENT_CONTEXT"];
  v87 = v86;
  if (!v86)
  {
    v86 = v75;
  }

  -[TIKeyboardTyper setLogDocumentContext:](v58, "setLogDocumentContext:", [v86 BOOLValue]);

  v88 = [attributesCopy objectForKey:@"CONTINUOUS_PATH_ENABLED"];
  v89 = v88;
  if (!v88)
  {
    v88 = v78;
  }

  bOOLValue6 = [v88 BOOLValue];

  config = [(AutocorrectionTestHarness *)v165 config];
  v92 = objc_opt_respondsToSelector();

  if (v92)
  {
    v93 = [attributesCopy objectForKey:@"CONTINUOUS_PATH_APPEND_SPACE"];
    v94 = v93;
    if (!v93)
    {
      v93 = v75;
    }

    -[TIKeyboardTyper setInsertsSpaceAfterPredictiveInput:](v58, "setInsertsSpaceAfterPredictiveInput:", [v93 BOOLValue]);

    config2 = [(AutocorrectionTestHarness *)v165 config];
    [config2 setUsesContinuousPath:bOOLValue6];

    config3 = [(AutocorrectionTestHarness *)v165 config];
    [config3 setUsesCJContinuousPath:bOOLValue6];

    config4 = [(AutocorrectionTestHarness *)v165 config];
    LOBYTE(config3) = objc_opt_respondsToSelector();

    if (config3)
    {
      v98 = [attributesCopy objectForKey:@"CONTINUOUS_PATH_ALGORITHMS"];
      v99 = v98;
      if (!v98)
      {
        v98 = &unk_287ED4A18;
      }

      intValue2 = [v98 intValue];
      config5 = [(AutocorrectionTestHarness *)v165 config];
      [config5 setContinuousPathEnabledAlgorithms:intValue2];
    }

    config6 = [(AutocorrectionTestHarness *)v165 config];
    v103 = objc_opt_respondsToSelector();

    if (v103)
    {
      v104 = [attributesCopy objectForKey:@"ENABLE_CONTINUOUS_PATH_RETROCORRECTION"];
      v105 = v104;
      if (!v104)
      {
        v104 = v78;
      }

      bOOLValue7 = [v104 BOOLValue];
      config7 = [(AutocorrectionTestHarness *)v165 config];
      [config7 setUsesContinuousPathRetrocorrection:bOOLValue7];
    }

    config8 = [(AutocorrectionTestHarness *)v165 config];
    v109 = objc_opt_respondsToSelector();

    if (v109)
    {
      v110 = [attributesCopy objectForKey:@"CONTINUOUS_PATH_NUM_CANDIDATE_RESCORED_BY_LM"];
      v111 = v110;
      if (!v110)
      {
        v110 = &unk_287ED4A30;
      }

      integerValue = [v110 integerValue];
      config9 = [(AutocorrectionTestHarness *)v165 config];
      [config9 setCpCandidatesCount:integerValue];
    }

    v114 = [v164 objectForKey:*MEMORY[0x277D6F6B0]];
    config10 = [(AutocorrectionTestHarness *)v165 config];
    [config10 setContinuousPathParams:v114];

    v116 = [v164 objectForKey:*MEMORY[0x277D6F6A8]];
    config11 = [(AutocorrectionTestHarness *)v165 config];
    [config11 setContinuousPathEnsembleSourceWeights:v116];

    v118 = [v164 objectForKey:*MEMORY[0x277D6F6A0]];
    config12 = [(AutocorrectionTestHarness *)v165 config];
    [config12 setContinuousPathEnsembleSourceScales:v118];
  }

  v120 = [ACTUserActionStreamFactory userActionStreamWithParameters:attributesCopy delegate:v58];
  [(TIKeyboardTyper *)v58 linkWithUserActionStream:v120];

  userModel = [(TIKeyboardTyper *)v58 userModel];
  -[TIKeyboardTyper setUsesTransliteration:](v58, "setUsesTransliteration:", [userModel prefersTransliteration]);

  v122 = MEMORY[0x26D6C0470](v163);
  v123 = [attributesCopy objectForKey:@"TTKKeyboardPlane"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyboardController2 = [(TIKeyboardTyper *)v58 keyboardController];
    [(TTKSimpleKeyboardPlane *)keyboardController2 setTtkLayout:v123];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      keyboardController2 = [[TTKSimpleKeyboardPlane alloc] initWithJsonDictionary:v123];
      keyboardController3 = [(TIKeyboardTyper *)v58 keyboardController];
      [keyboardController3 setTtkLayout:keyboardController2];
    }

    else
    {
      keyboardController2 = [v123 description];
      NSLog(&cfstr_Ttkkeyboardpla_0.isa, keyboardController2);
    }
  }

  v126 = [attributesCopy objectForKey:@"USE_DYNAMIC_LAYOUT"];
  v127 = v126;
  if (!v126)
  {
    v126 = MEMORY[0x277CBEC28];
  }

  bOOLValue8 = [v126 BOOLValue];

  v129 = objc_opt_class();
  v130 = [attributesCopy objectForKey:@"KEYBOARD_WIDTH"];
  v131 = [attributesCopy objectForKey:@"KEYBOARD_ORIENTATION"];
  v132 = v131;
  if (v130)
  {
    v133 = v130;
  }

  else
  {
    v133 = &unk_287ED4A48;
  }

  if (v131)
  {
    v134 = v131;
  }

  else
  {
    v134 = @"Portrait";
  }

  v135 = [v129 keyboardFromWidth:v133 useDynamicLayout:bOOLValue8 orientation:v134 keyboardLayout:v122];
  [(TIKeyboardTyper *)v58 setKeyboard:v135];

  v136 = [attributesCopy objectForKey:@"PERSONA"];

  if (v136)
  {
    v137 = [TITestUserPersona alloc];
    v138 = [attributesCopy objectForKey:@"PERSONA"];
    v139 = [(TITestUserPersona *)v137 initWithPersonaName:v138];
    [(TIKeyboardTyper *)v58 setUserPersona:v139];

    userPersona = [(TIKeyboardTyper *)v58 userPersona];
    keyplane = [(TIKeyboardTyper *)v58 keyplane];
    [userPersona updateFromKeyplane:keyplane];
  }

  else
  {
    [(TIKeyboardTyper *)v58 setUserPersona:0];
  }

  userPersona2 = [(TIKeyboardTyper *)v58 userPersona];

  if (!userPersona2)
  {
    v143 = [TIErrorGenerator errorGeneratorWithAttributes:attributesCopy];
    if (!v143)
    {
      NSLog(&cfstr_UnableToConstr.isa);
      exit(1);
    }

    [(TIKeyboardTyper *)v58 setErrorGenerator:v143];
  }

  [(TIKeyboardTyper *)v58 reset];
  dslTestDriver = v165->_dslTestDriver;
  v165->_dslTestDriver = 0;

  objc_storeStrong(&v165->_testTyper, v58);
  v145 = objc_alloc_init(MEMORY[0x277CBEB18]);
  insertedText = v165->_insertedText;
  v165->_insertedText = v145;

  v147 = objc_alloc_init(MEMORY[0x277CBEB18]);
  resultClassifiers = v165->_resultClassifiers;
  v165->_resultClassifiers = v147;

  [(AutocorrectionTestHarness *)v165 setResultClassifiers];
  v149 = [attributesCopy objectForKey:@"SAVE_DEBUG_DATA"];
  v150 = v149;
  if (!v149)
  {
    v149 = MEMORY[0x277CBEC28];
  }

  v165->_saveDebugData = [v149 BOOLValue];

  v151 = [attributesCopy objectForKey:@"RUN_DSL_TEST"];

  if (v151)
  {
    v152 = [[TITestTyperDriver alloc] initWithTestTyper:v58];
    v153 = v165->_dslTestDriver;
    v165->_dslTestDriver = v152;
  }

LABEL_145:
  v154 = v165;

  return v154;
}

+ (id)overrideInputMode:(id)mode
{
  modeCopy = mode;
  languageWithRegion = [modeCopy languageWithRegion];
  v5 = [languageWithRegion hasPrefix:@"ars"];

  if (v5)
  {
    languageWithRegion2 = [modeCopy languageWithRegion];
    NSLog(&cfstr_OverrideInputM.isa, languageWithRegion2);

    v7 = [MEMORY[0x277D6FE48] inputModeWithIdentifier:@"ar"];
  }

  else
  {
    v7 = modeCopy;
  }

  v8 = v7;

  return v8;
}

+ (id)keyboardFromWidth:(id)width useDynamicLayout:(BOOL)layout orientation:(id)orientation keyboardLayout:(id)keyboardLayout
{
  layoutCopy = layout;
  orientationCopy = orientation;
  keyboardLayoutCopy = keyboardLayout;
  [width floatValue];
  if (layoutCopy)
  {
    v12 = [orientationCopy isEqualToString:@"Portrait"];
    v13 = MEMORY[0x277D75640];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    if (v12)
    {
      v15 = 1;
    }

    else
    {
      v15 = 4;
    }

    v16 = [v13 traitsWithScreen:mainScreen orientation:v15];

    [(__CFString *)v16 keyboardScreenReferenceSize];
    v18 = v17;
    v20 = v19;
    mEMORY[0x277D6FF98] = [MEMORY[0x277D6FF98] sharedKeyboardFactory];
    keyboardLayoutCopy = [mEMORY[0x277D6FF98] keyboardSuffixForScreenDimensions:{v18, v20}];

    mEMORY[0x277D6FF98]4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", keyboardLayoutCopy, keyboardLayoutCopy];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"Dynamic", mEMORY[0x277D6FF98]4];
    [MEMORY[0x277D6FFA0] keyplaneSizeForLayout:v24 screenTraits:v16 keyboardType:0];
    v26 = v25;
    v28 = v27;
    fprintf(*MEMORY[0x277D85DF8], "Attempting to load dynamic keyboard layout named: %s\n", [v24 UTF8String]);
    v29 = [MEMORY[0x277D6FFA0] dynamicKeyboardForName:mEMORY[0x277D6FF98]4 size:objc_msgSend(orientationCopy isLandscape:{"isEqualToString:", @"Landscape", v26, v28}];

    goto LABEL_29;
  }

  v30 = v11;
  if (v11 >= 320.0)
  {
    mEMORY[0x277D6FF98]2 = [MEMORY[0x277D6FF98] sharedKeyboardFactory];
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      v33 = [orientationCopy isEqualToString:@"Portrait"];
      mEMORY[0x277D6FF98]3 = [MEMORY[0x277D6FF98] sharedKeyboardFactory];
      v16 = [mEMORY[0x277D6FF98]3 keyboardPrefixForWidth:v33 andEdge:v30];

      if (v16)
      {
        goto LABEL_28;
      }
    }

    if ([orientationCopy isEqualToString:@"Portrait"])
    {
      v35 = @"Wildcat-Portrait";
      v36 = @"iPhone-Portrait";
      if (v30 < 320.0)
      {
        v36 = 0;
      }

      if (v30 < 768.0)
      {
        v35 = v36;
      }

      if (v30 < 1024.0)
      {
        v16 = v35;
      }

      else
      {
        v16 = @"Wildcat-PortraitFudge";
      }

      goto LABEL_28;
    }

    if ([orientationCopy isEqualToString:@"Landscape"])
    {
      if (v30 >= 1366.0)
      {
        v16 = @"Wildcat-LandscapeFudge";
        goto LABEL_28;
      }

      if (v30 >= 1024.0)
      {
        v16 = @"Wildcat-Landscape";
        goto LABEL_28;
      }

      if (v30 >= 568.0)
      {
        v16 = @"iPhone-Caymen";
        goto LABEL_28;
      }

      if (v30 >= 480.0)
      {
        v16 = @"iPhone-Landscape";
        goto LABEL_28;
      }
    }

    v16 = 0;
  }

  else
  {
    v16 = @"iPhone-Portrait";
  }

LABEL_28:
  keyboardLayoutCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v16, keyboardLayoutCopy];
  fprintf(*MEMORY[0x277D85DF8], "Attempting to load keyboard named: %s\n", [keyboardLayoutCopy UTF8String]);
  mEMORY[0x277D6FF98]4 = [MEMORY[0x277D6FF98] sharedKeyboardFactory];
  v29 = [mEMORY[0x277D6FF98]4 keyboardWithName:keyboardLayoutCopy inCache:0];
LABEL_29:

  return v29;
}

@end