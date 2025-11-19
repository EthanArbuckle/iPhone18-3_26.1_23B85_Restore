@interface AutocorrectionTestHarness
+ (id)keyboardFromWidth:(id)a3 useDynamicLayout:(BOOL)a4 orientation:(id)a5 keyboardLayout:(id)a6;
+ (id)overrideInputMode:(id)a3;
- (AutocorrectionTestHarness)initWithAttributes:(id)a3;
- (BOOL)outcomeIsFailureForTest:(id)a3 withResult:(id)a4;
- (BOOL)requiresMaintenance;
- (id)emptyResultForPlayback:(id)a3;
- (id)emptyResultForTest:(id)a3;
- (id)newKeyboardInputManager;
- (id)replayTest:(id)a3 withError:(id)a4;
- (id)runConversationTest:(id)a3 trialID:(unint64_t)a4 withError:(id)a5;
- (id)runTest:(id)a3 trialID:(unint64_t)a4 withError:(id)a5;
- (id)typeTest:(id)a3 withError:(id)a4;
- (unsigned)seedForTest:(id)a3 trialID:(unint64_t)a4;
- (void)initializeConversationHistory;
- (void)nullifyConversationHistory;
- (void)testConversation:(id)a3 testingSender:(id)a4 warmupMessages:(unint64_t)a5 adaptToSentMessages:(BOOL)a6 adaptToReceivedMessages:(BOOL)a7 trialID:(unint64_t)a8 withError:(id)a9 writingResults:(id)a10;
- (void)trainWithCorpus:(id)a3;
@end

@implementation AutocorrectionTestHarness

- (BOOL)requiresMaintenance
{
  v2 = [(AutocorrectionTestHarness *)self testTyper];
  v3 = [v2 wordLearningEnabled];

  return v3;
}

- (BOOL)outcomeIsFailureForTest:(id)a3 withResult:(id)a4
{
  v5 = a4;
  v6 = [v5 intended];
  v7 = [v5 corrected];
  LOBYTE(self) = [(AutocorrectionTestHarness *)self compareExpectedValue:v6 withResult:v7];

  return self ^ 1;
}

- (void)trainWithCorpus:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(AutocorrectionTestHarness *)self testTyper];
        [v9 attemptToTypeText:v8];

        v10 = [(AutocorrectionTestHarness *)self testTyper];
        [v10 commitText];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)runTest:(id)a3 trialID:(unint64_t)a4 withError:(id)a5
{
  v39 = a3;
  [(NSMutableArray *)self->_insertedText removeAllObjects];
  v7 = v39;
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
  v10 = [v7 sourceMetadata];
  [v9 setSourceMetadata:v10];

  v40 = [(AutocorrectionTestHarness *)self seedForTest:v7 trialID:a4];
  v11 = [(AutocorrectionTestHarness *)self testTyper];
  v12 = [v11 userActionStream];
  [v12 setRandomNumberSeed:v40];

  if (isKindOfClass)
  {
    [(AutocorrectionTestHarness *)self replayTest:v7 withError:0];
  }

  else
  {
    [(AutocorrectionTestHarness *)self typeTest:v7 withError:0];
  }
  v13 = ;
  v14 = [(AutocorrectionTestHarness *)self typologyOutpath];

  if (v14)
  {
    v15 = [(TIKeyboardTyper *)self->_testTyper inputManager];
    v16 = [v15 inputManagerLogger];
    v17 = [v16 writeToFile];

    v18 = [v17 objectAtIndexedSubscript:0];
    [v9 setTypologyLogURL:v18];

    v19 = [v17 objectAtIndexedSubscript:1];
    [v9 setTypologyTraceLogURL:v19];
  }

  v20 = [v13 correctedTransliterationSequence];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v23 = [(AutocorrectionTestHarness *)self testTyper];
    v24 = [(AutocorrectionTestHarness *)self testTyper];
    v25 = [v24 text];
    v22 = [v23 tokensForString:v25];
  }

  v26 = [(AutocorrectionTestHarness *)self config];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_21;
  }

  v27 = [(AutocorrectionTestHarness *)self config];
  v28 = [v27 usesContinuousPath];

  if (!v28)
  {
    goto LABEL_23;
  }

  v29 = [v9 intended];
  v26 = [v29 componentsJoinedByString:&stru_287EC4808];

  if (([v26 hasSuffix:@" "] & 1) == 0 && objc_msgSend(v13, "adjustForContinuousPath") && (objc_msgSend(v22, "lastObject"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", @" "), v30, v31))
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

  v37 = [(AutocorrectionTestHarness *)self resultClassifiers];
  [v9 setTagsFromClassifiers:v37];

  return v9;
}

- (id)runConversationTest:(id)a3 trialID:(unint64_t)a4 withError:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v24 = a5;
  v9 = [v8 conversation];
  v10 = [v9 count];
  v11 = [v8 warmupMessages];

  v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10 - v11];
  if (v10 != v11)
  {
    v12 = v11 - v10;
    do
    {
      v13 = [MEMORY[0x277CBEB68] null];
      [v25 addObject:v13];
    }

    while (!__CFADD__(v12++, 1));
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [v8 sendersToTest];
  obj = v15;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
        v20 = [v8 conversation];
        -[AutocorrectionTestHarness testConversation:testingSender:warmupMessages:adaptToSentMessages:adaptToReceivedMessages:trialID:withError:writingResults:](self, "testConversation:testingSender:warmupMessages:adaptToSentMessages:adaptToReceivedMessages:trialID:withError:writingResults:", v20, v19, [v8 warmupMessages], objc_msgSend(v8, "adaptToSentMessages"), objc_msgSend(v8, "adaptToReceivedMessages"), a4, v24, v25);
      }

      v15 = obj;
      v16 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  v21 = [MEMORY[0x277CBEB68] null];
  [v25 removeObjectIdenticalTo:v21];

  return v25;
}

- (void)testConversation:(id)a3 testingSender:(id)a4 warmupMessages:(unint64_t)a5 adaptToSentMessages:(BOOL)a6 adaptToReceivedMessages:(BOOL)a7 trialID:(unint64_t)a8 withError:(id)a9 writingResults:(id)a10
{
  v33 = a6;
  v34 = a7;
  v45 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v38 = a4;
  v31 = a9;
  v32 = a10;
  [(AutocorrectionTestHarness *)self initializeConversationHistory];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v13)
  {
    LODWORD(v14) = 0;
    v37 = *v41;
    do
    {
      v39 = v13;
      v15 = 0;
      v16 = v14 - a5;
      v14 = v14;
      do
      {
        if (*v41 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v40 + 1) + 8 * v15);
        v18 = [v17 senderId];
        v19 = [v18 isEqualToString:v38];

        if (!v19)
        {
          if (!v34)
          {
            goto LABEL_14;
          }

          v24 = [(AutocorrectionTestHarness *)self testTyper];
          v25 = [v24 keyboardController];
          v26 = [v25 inputContextHistory];
          v27 = [v17 text];
          v28 = [MEMORY[0x277CBEAA8] date];
          v29 = [(AutocorrectionTestHarness *)self friendId];
          [v26 addTextEntry:v27 timestamp:v28 senderIdentifier:v29];
          goto LABEL_13;
        }

        if (v14 >= a5)
        {
          v20 = [(AutocorrectionTestHarness *)self testTyper];
          [v20 syncToEmptyDocument];

          TIDispatchWaitForAllBlocks();
          v21 = [v17 text];
          v22 = [AutocorrectionTest testWithInput:v21];

          v23 = [(AutocorrectionTestHarness *)self runTest:v22 trialID:a8 withError:v31];
          [v32 setObject:v23 atIndexedSubscript:v16];
        }

        if (v33)
        {
          v24 = [(AutocorrectionTestHarness *)self testTyper];
          v25 = [v24 keyboardController];
          v26 = [v25 inputContextHistory];
          v27 = [v17 text];
          v28 = [MEMORY[0x277CBEAA8] date];
          v29 = [(AutocorrectionTestHarness *)self selfId];
          [v26 addTextEntry:v27 timestamp:v28 senderIdentifier:v29];
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
  v5 = [(AutocorrectionTestHarness *)self testTyper];
  v6 = [v5 keyboardController];
  [v6 setInputContextHistory:v4];

  v8 = [(AutocorrectionTestHarness *)self testTyper];
  [v8 syncToEmptyDocument];
}

- (void)initializeConversationHistory
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(AutocorrectionTestHarness *)self friendId];
  v11 = [v3 setWithObject:v4];

  v5 = MEMORY[0x277CBEB98];
  v6 = [(AutocorrectionTestHarness *)self selfId];
  v7 = [v5 setWithObject:v6];

  v8 = [objc_alloc(MEMORY[0x277D6F370]) initWithRecipientIdentifiers:v11 senderIdentifiers:v7];
  v9 = [(AutocorrectionTestHarness *)self testTyper];
  v10 = [v9 keyboardController];
  [v10 setInputContextHistory:v8];
}

- (unsigned)seedForTest:(id)a3 trialID:(unint64_t)a4
{
  v4 = a4;
  v5 = [a3 input];
  v6 = [v5 length];
  if (v6)
  {
    v7 = 0;
    v8 = 5381;
    do
    {
      v8 = 33 * v8 + [v5 characterAtIndex:v7++];
    }

    while (v6 != v7);
    v9 = 33 * v8;
  }

  else
  {
    v9 = 177573;
  }

  return v9 + v4;
}

- (id)emptyResultForPlayback:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AutocorrectionResult);
  v5 = [v3 intended];
  [(AutocorrectionResult *)v4 setInput:v5];

  v6 = [v3 intended];
  [(AutocorrectionResult *)v4 setIntended:v6];

  v7 = [v3 corpusId];
  [(AutocorrectionResult *)v4 setCorpusId:v7];

  return v4;
}

- (id)emptyResultForTest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AutocorrectionResult);
  v6 = [(AutocorrectionTestHarness *)self testTyper];
  v7 = [v4 input];
  v8 = [v6 tokensForString:v7];
  [(AutocorrectionResult *)v5 setInput:v8];

  v9 = [(AutocorrectionTestHarness *)self testTyper];
  v10 = [v9 userModel];
  if ([v10 prefersContinuousPath])
  {
    v11 = [(AutocorrectionTestHarness *)self config];
    v12 = [v11 usesContinuousPath];

    if (v12)
    {
      v13 = [(AutocorrectionTestHarness *)self testTyper];
      v14 = [v4 input];
      v15 = [v13 tokensForString:v14];

      v16 = [v15 count];
      v17 = v15;
      if (!v16)
      {
        v17 = [MEMORY[0x277CBEB18] arrayWithObject:&stru_287EC4808];
      }

      [(AutocorrectionResult *)v5 setIntended:v17];
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

  v18 = [v4 expectedOutput];
  v19 = [v18 count];

  if (v19 >= 2)
  {
    v15 = [v4 expectedOutput];
    [(AutocorrectionResult *)v5 setIntended:v15];
    goto LABEL_14;
  }

  v20 = [v4 expectedOutput];
  v21 = [v20 count];

  if (v21 == 1)
  {
    v15 = [(AutocorrectionTestHarness *)self testTyper];
    v17 = [v4 expectedOutput];
    v22 = [v17 firstObject];
    v23 = [v15 tokensForString:v22];
    [(AutocorrectionResult *)v5 setIntended:v23];

LABEL_12:
    goto LABEL_14;
  }

  v15 = [MEMORY[0x277CBEB18] arrayWithObject:&stru_287EC4808];
  [(AutocorrectionResult *)v5 setIntended:v15];
LABEL_14:

  v24 = [v4 corpusId];
  [(AutocorrectionResult *)v5 setCorpusId:v24];

  return v5;
}

- (id)typeTest:(id)a3 withError:(id)a4
{
  v5 = a3;
  v6 = [TITypingLog typingLogWithDebug:self->_saveDebugData];
  v7 = [(AutocorrectionTestHarness *)self testTyper];
  v8 = [v5 input];
  [v7 attemptToTypeText:v8 typingLog:v6];

  v9 = [(AutocorrectionTestHarness *)self testTyper];
  [v9 commitText];

  return v6;
}

- (id)replayTest:(id)a3 withError:(id)a4
{
  v5 = a3;
  v6 = [TITypingLog typingLogWithDebug:self->_saveDebugData];
  v7 = [(AutocorrectionTestHarness *)self testTyper];
  v8 = [v5 intended];
  v9 = [v5 expected];
  [v7 attemptToTypeIntended:v8 expected:v9 typingLog:v6];

  v10 = [(AutocorrectionTestHarness *)self testTyper];
  [v10 commitText];

  return v6;
}

- (id)newKeyboardInputManager
{
  v41[1] = *MEMORY[0x277D85DE8];
  if (-[AutocorrectionTestHarness multilingualEnabled](self, "multilingualEnabled") && (-[AutocorrectionTestHarness config](self, "config"), v3 = objc_claimAutoreleasedReturnValue(), [v3 inputMode], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isSiriMode"), v4, v3, !v5))
  {
    v39 = objc_alloc_init(TIDynamicLanguageLikelihoodModel);
    v12 = [TIMultilingualPreferenceOverrides alloc];
    v13 = [(AutocorrectionTestHarness *)self secondaryInputMode];
    v14 = [(AutocorrectionTestHarness *)self config];
    v15 = [v14 inputMode];
    v41[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    v17 = [(AutocorrectionTestHarness *)self config];
    v18 = [v17 inputMode];
    v19 = [v18 languageWithRegion];
    v40 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    v21 = [(TIMultilingualPreferenceOverrides *)v12 initWithPreferredSecondaryInputMode:v13 userEnabledInputModes:v16 userPreferredLanguages:v20];

    v22 = [objc_alloc(MEMORY[0x277D6FE98]) initWithLanguageLikelihoodModel:v39 preferenceProvider:v21];
    v23 = [(AutocorrectionTestHarness *)self config];
    v24 = [v23 inputMode];
    v25 = [v24 multilingualInputManagerClass];

    v26 = [v25 alloc];
    v27 = [(AutocorrectionTestHarness *)self config];
    v11 = [v26 initWithConfig:v27 keyboardState:0 languageSelectionController:v22];

    v28 = [MEMORY[0x277CBEB38] dictionary];
    [v11 setTestingStateObject:v28];
  }

  else
  {
    v6 = [(AutocorrectionTestHarness *)self config];
    v7 = [v6 inputMode];
    v8 = [v7 inputManagerClass];

    v9 = [v8 alloc];
    v10 = [(AutocorrectionTestHarness *)self config];
    v11 = [v9 initWithConfig:v10 keyboardState:0];
  }

  v29 = [(AutocorrectionTestHarness *)self typologyOutpath];
  v30 = v29 == 0;

  if (!v30)
  {
    v31 = objc_alloc(MEMORY[0x277D6FEE8]);
    v32 = [(AutocorrectionTestHarness *)self typologyOutpath];
    v33 = [v31 initWithOutputPath:v32];
    [v11 setTypologyPreferences:v33];

    v34 = objc_alloc(MEMORY[0x277D6FE78]);
    v35 = [v11 typologyPreferences];
    v36 = [v34 initWithTypologyPreferences:v35];

    [v11 setInputManagerLogger:v36];
    v37 = [v11 configurationPropertyList];
    [v36 setConfig:v37];
  }

  return v11;
}

- (AutocorrectionTestHarness)initWithAttributes:(id)a3
{
  v6 = a3;
  v167.receiver = self;
  v167.super_class = AutocorrectionTestHarness;
  v7 = [(AutocorrectionTestHarness *)&v167 init];

  v165 = v7;
  if (!v7)
  {
    goto LABEL_145;
  }

  v8 = [v6 valueForKey:@"TYPOLOGY_OUTPATH"];
  typologyOutpath = v7->_typologyOutpath;
  v7->_typologyOutpath = v8;

  if (v7->_typologyOutpath)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [v10 createDirectoryAtPath:v7->_typologyOutpath withIntermediateDirectories:1 attributes:0 error:0];

    if ((v11 & 1) == 0)
    {
      NSLog(&cfstr_FailureCreatin.isa, v7->_typologyOutpath);
      v12 = v7->_typologyOutpath;
      v7->_typologyOutpath = 0;
    }
  }

  v166 = objc_alloc_init(MEMORY[0x277D6FE68]);
  [v166 setDisableAnalytics:1];
  v13 = [v6 valueForKey:@"INPUT_MODE"];
  v158 = v13;
  if ([v13 containsString:@"sw="])
  {
    v163 = v13;
LABEL_10:
    v157 = 0;
    goto LABEL_11;
  }

  v14 = [v6 objectForKeyedSubscript:@"SOFTWARE_KEYBOARD"];
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
  v17 = [v6 objectForKey:@"SIRI_MODE"];
  v18 = v17;
  if (!v17)
  {
    v17 = @"NO";
  }

  v19 = [(__CFString *)v17 BOOLValue];

  v162 = [MEMORY[0x277D6FE48] inputModeWithIdentifier:v163 isSiriMode:v19];
  v20 = [v162 normalizedIdentifier];
  v164 = TIGetInputModeProperties();

  v21 = [v6 objectForKey:@"USE_LANGUAGE_MODEL"];
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

  v24 = [v166 inputMode];
  [v166 setAllowsSpaceCorrections:{objc_msgSend(v24, "spaceAutocorrectionEnabled")}];

  v25 = [v166 inputMode];
  [v166 setUsesETSRescoring:{objc_msgSend(v25, "typedStringLMRankingEnabled")}];

  v26 = [v164 objectForKey:*MEMORY[0x277D6F670]];
  [v166 setUsesTextChecker:{objc_msgSend(v26, "BOOLValue")}];

  v27 = [v6 objectForKey:@"USE_RETROCORRECTION"];
  v28 = v27;
  if (!v27)
  {
    v27 = @"NO";
  }

  [v166 setUsesRetrocorrection:{-[__CFString BOOLValue](v27, "BOOLValue")}];

  v29 = [v6 objectForKey:@"WORD_LEARNING_ENABLED"];
  if ([v29 BOOLValue])
  {
    v30 = 1;
  }

  else
  {
    v31 = [v6 objectForKey:@"USES_ADAPTATION"];
    v3 = v31;
    if (!v31)
    {
      v31 = [v6 objectForKey:@"USE_WORD_NGRAM_MODEL_ADAPTATION"];
      v4 = v31;
      if (!v31)
      {
        v31 = @"NO";
      }
    }

    v30 = [(__CFString *)v31 BOOLValue];
    if (!v3)
    {
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v166 setUsesAdaptation:v30];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v166 setUsesWordNgramModelAdaptation:v30];
  }

  v32 = [v6 objectForKey:@"NEGATIVE_LEARNING_ENABLED"];
  [v166 setNegativeLearningDisabled:{objc_msgSend(v32, "BOOLValue") ^ 1}];

  v33 = [v6 objectForKey:@"MAX_WORDS_PER_PREDICTION"];
  v34 = v33;
  if (!v33)
  {
    v33 = &unk_287ED4A00;
  }

  [v166 setMaxWordsPerPrediction:{objc_msgSend(v33, "integerValue")}];

  if (objc_opt_respondsToSelector())
  {
    v35 = [v6 objectForKey:@"CUSTOM_STATIC_DICTIONARY_PATH"];
    [v166 setUsesCustomStaticDictionary:v35 != 0];
  }

  v36 = [v6 objectForKey:@"CUSTOM_STATIC_DICTIONARY_PATH"];
  [v166 setStaticDictionaryPath:v36];

  if (objc_opt_respondsToSelector())
  {
    v37 = [v6 objectForKey:@"CUSTOM_LANGUAGE_MODEL_PATH"];
    [v166 setUsesCustomNgramModel:v37 != 0];
  }

  v38 = [v6 objectForKey:@"CUSTOM_LANGUAGE_MODEL_PATH"];
  v39 = v38;
  if (!v38)
  {
    v3 = [v166 inputMode];
    v4 = [v3 languageWithRegion];
    v39 = TINgramModelPathForInputMode();
  }

  [v166 setNgramModelPath:v39];
  if (!v38)
  {
  }

  v40 = [v6 objectForKey:@"CUSTOM_DYNAMIC_RESOURCE_PATH"];
  v41 = v40;
  if (!v40)
  {
    v41 = UIKeyboardUserDirectory();
  }

  [v166 setDynamicResourcePath:v41];
  if (!v40)
  {
  }

  v42 = [v6 objectForKey:@"CUSTOM_SHAPE_STORE_DIR"];
  v43 = v42;
  if (!v42)
  {
    v43 = [v166 dynamicResourcePath];
  }

  [v166 setShapeStoreResourceDir:v43];
  if (!v42)
  {
  }

  if (objc_opt_respondsToSelector())
  {
    v44 = [v164 objectForKey:*MEMORY[0x277D6F770]];
    [v166 setUsesStemSuffixCorrectionFactor:{objc_msgSend(v44, "BOOLValue")}];
  }

  v45 = [v6 objectForKey:@"FAVONIUS_LANGUAGE_MODEL_WEIGHT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v160 = v45;
    v46 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v46 setNumberStyle:1];
    v43 = [v6 objectForKey:@"FAVONIUS_LANGUAGE_MODEL_WEIGHT"];
    v45 = [v46 numberFromString:v43];
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
  v47 = [v6 objectForKey:@"MLTT_BUNDLE_URL"];
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
  v48 = [v6 objectForKey:@"MAX_PREDICTIONS"];
  v49 = v48;
  if (!v48)
  {
    v48 = [v6 objectForKey:@"SIZE_OF_AUTOCORRECTION_LIST"];
    v43 = v48;
    if (!v48)
    {
      v48 = @"3";
    }
  }

  v50 = [(__CFString *)v48 intValue];
  if (!v49)
  {
  }

  v51 = [v164 objectForKey:*MEMORY[0x277D6F760]];
  v52 = [v51 BOOLValue];

  v53 = MEMORY[0x277CBEC28];
  if (v52)
  {
    v54 = [v6 objectForKey:@"MULTILINGUAL_ENABLED"];
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

  v159 = [v6 objectForKey:@"KEYBOARD_SECOND_LANGUAGE"];
  if ([v159 length])
  {
    v56 = [MEMORY[0x277D6FE48] inputModeWithIdentifier:v159];
    secondaryInputMode = v165->_secondaryInputMode;
    v165->_secondaryInputMode = v56;
  }

  v58 = [[TIKeyboardTyper alloc] initWithInputMode:v162];
  v59 = [v6 objectForKey:@"BAD_SENTENCES_FILE_PATH"];
  v60 = [v59 stringValue];
  [(TIKeyboardTyper *)v58 setBadSentenceLogFilePath:v60];

  [(TIKeyboardTyper *)v58 setInputModeIdentifier:v163];
  v61 = [v6 objectForKey:@"PRINT_TYPING_TRANSCRIPT"];
  -[TIKeyboardTyper setPrintTypingTranscript:](v58, "setPrintTypingTranscript:", [v61 BOOLValue]);

  v62 = [v6 objectForKey:@"SHOW_CANDIDATE_BAR"];
  -[TIKeyboardTyper setShowsCandidateBar:](v58, "setShowsCandidateBar:", [v62 BOOLValue]);

  v63 = [v6 objectForKey:@"TRANSLITERATION_SUMMARIES"];
  -[TIKeyboardTyper setPrintTranslitSummaries:](v58, "setPrintTranslitSummaries:", [v63 BOOLValue]);

  v64 = [v6 objectForKey:@"TEST_AUTO_FILL_FEATURE"];
  v65 = [v64 BOOLValue];

  v66 = [(TIKeyboardTyper *)v58 keyboardController];
  if (v65)
  {
    [v66 setIsScreenLocked:0];
  }

  else
  {
    [v66 setIsScreenLocked:v30 ^ 1];
  }

  v67 = [v6 objectForKey:@"USE_LANGUAGE_MODEL"];
  v68 = v67;
  if (v67)
  {
    v69 = 0;
    v70 = 0;
    v71 = v67;
  }

  else
  {
    v72 = [v6 objectForKey:@"USE_PREDICTION"];
    v65 = v72;
    if (v72)
    {
      v69 = 0;
      v70 = 0;
      v71 = v72;
    }

    else
    {
      v73 = [v6 objectForKey:@"AUTOCORRECTION_LISTS"];
      v66 = v73;
      if (v73)
      {
        v65 = 0;
        v70 = 0;
        v69 = 1;
        v71 = v73;
      }

      else
      {
        v71 = [v164 objectForKey:*MEMORY[0x277D6F6D0]];
        v65 = 0;
        v66 = 0;
        v69 = 1;
        v70 = 1;
      }
    }
  }

  v74 = [v71 BOOLValue];
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

  if (v74)
  {
    [(TIKeyboardTyper *)v58 setUsesPrediction:1];
  }

  [(TIKeyboardTyper *)v58 setMaxPredictions:v50];
  [(TIKeyboardTyper *)v58 setKeyboardInputManagerFactory:v165];
  v76 = [v6 objectForKey:@"USE_AUTOCORRECTION"];
  v77 = v76;
  v78 = MEMORY[0x277CBEC38];
  if (!v76)
  {
    v76 = MEMORY[0x277CBEC38];
  }

  -[TIKeyboardTyper setUsesAutocorrection:](v58, "setUsesAutocorrection:", [v76 BOOLValue]);

  v79 = [v6 objectForKey:@"USE_AUTOCAPITALIZATION"];
  v80 = v79;
  if (!v79)
  {
    v79 = v78;
  }

  -[TIKeyboardTyper setUsesAutocapitalization:](v58, "setUsesAutocapitalization:", [v79 BOOLValue]);

  v81 = [v6 objectForKey:@"WORD_LEARNING_ENABLED"];
  -[TIKeyboardTyper setWordLearningEnabled:](v58, "setWordLearningEnabled:", [v81 BOOLValue]);

  v82 = [v6 objectForKey:@"WARN_IF_SELECTING_POPUP_VARIANT"];
  v83 = v82;
  if (!v82)
  {
    v82 = v75;
  }

  -[TIKeyboardTyper setWarnIfSelectingPopupVariant:](v58, "setWarnIfSelectingPopupVariant:", [v82 BOOLValue]);

  v84 = [v6 objectForKey:@"MAX_PREDICTIONS_REPORTED"];
  v85 = v84;
  if (!v84)
  {
    v84 = @"0";
  }

  [(TIKeyboardTyper *)v58 setMaxPredictionsReported:[(__CFString *)v84 intValue]];

  v86 = [v6 objectForKey:@"LOG_DOCUMENT_CONTEXT"];
  v87 = v86;
  if (!v86)
  {
    v86 = v75;
  }

  -[TIKeyboardTyper setLogDocumentContext:](v58, "setLogDocumentContext:", [v86 BOOLValue]);

  v88 = [v6 objectForKey:@"CONTINUOUS_PATH_ENABLED"];
  v89 = v88;
  if (!v88)
  {
    v88 = v78;
  }

  v90 = [v88 BOOLValue];

  v91 = [(AutocorrectionTestHarness *)v165 config];
  v92 = objc_opt_respondsToSelector();

  if (v92)
  {
    v93 = [v6 objectForKey:@"CONTINUOUS_PATH_APPEND_SPACE"];
    v94 = v93;
    if (!v93)
    {
      v93 = v75;
    }

    -[TIKeyboardTyper setInsertsSpaceAfterPredictiveInput:](v58, "setInsertsSpaceAfterPredictiveInput:", [v93 BOOLValue]);

    v95 = [(AutocorrectionTestHarness *)v165 config];
    [v95 setUsesContinuousPath:v90];

    v96 = [(AutocorrectionTestHarness *)v165 config];
    [v96 setUsesCJContinuousPath:v90];

    v97 = [(AutocorrectionTestHarness *)v165 config];
    LOBYTE(v96) = objc_opt_respondsToSelector();

    if (v96)
    {
      v98 = [v6 objectForKey:@"CONTINUOUS_PATH_ALGORITHMS"];
      v99 = v98;
      if (!v98)
      {
        v98 = &unk_287ED4A18;
      }

      v100 = [v98 intValue];
      v101 = [(AutocorrectionTestHarness *)v165 config];
      [v101 setContinuousPathEnabledAlgorithms:v100];
    }

    v102 = [(AutocorrectionTestHarness *)v165 config];
    v103 = objc_opt_respondsToSelector();

    if (v103)
    {
      v104 = [v6 objectForKey:@"ENABLE_CONTINUOUS_PATH_RETROCORRECTION"];
      v105 = v104;
      if (!v104)
      {
        v104 = v78;
      }

      v106 = [v104 BOOLValue];
      v107 = [(AutocorrectionTestHarness *)v165 config];
      [v107 setUsesContinuousPathRetrocorrection:v106];
    }

    v108 = [(AutocorrectionTestHarness *)v165 config];
    v109 = objc_opt_respondsToSelector();

    if (v109)
    {
      v110 = [v6 objectForKey:@"CONTINUOUS_PATH_NUM_CANDIDATE_RESCORED_BY_LM"];
      v111 = v110;
      if (!v110)
      {
        v110 = &unk_287ED4A30;
      }

      v112 = [v110 integerValue];
      v113 = [(AutocorrectionTestHarness *)v165 config];
      [v113 setCpCandidatesCount:v112];
    }

    v114 = [v164 objectForKey:*MEMORY[0x277D6F6B0]];
    v115 = [(AutocorrectionTestHarness *)v165 config];
    [v115 setContinuousPathParams:v114];

    v116 = [v164 objectForKey:*MEMORY[0x277D6F6A8]];
    v117 = [(AutocorrectionTestHarness *)v165 config];
    [v117 setContinuousPathEnsembleSourceWeights:v116];

    v118 = [v164 objectForKey:*MEMORY[0x277D6F6A0]];
    v119 = [(AutocorrectionTestHarness *)v165 config];
    [v119 setContinuousPathEnsembleSourceScales:v118];
  }

  v120 = [ACTUserActionStreamFactory userActionStreamWithParameters:v6 delegate:v58];
  [(TIKeyboardTyper *)v58 linkWithUserActionStream:v120];

  v121 = [(TIKeyboardTyper *)v58 userModel];
  -[TIKeyboardTyper setUsesTransliteration:](v58, "setUsesTransliteration:", [v121 prefersTransliteration]);

  v122 = MEMORY[0x26D6C0470](v163);
  v123 = [v6 objectForKey:@"TTKKeyboardPlane"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v124 = [(TIKeyboardTyper *)v58 keyboardController];
    [(TTKSimpleKeyboardPlane *)v124 setTtkLayout:v123];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v124 = [[TTKSimpleKeyboardPlane alloc] initWithJsonDictionary:v123];
      v125 = [(TIKeyboardTyper *)v58 keyboardController];
      [v125 setTtkLayout:v124];
    }

    else
    {
      v124 = [v123 description];
      NSLog(&cfstr_Ttkkeyboardpla_0.isa, v124);
    }
  }

  v126 = [v6 objectForKey:@"USE_DYNAMIC_LAYOUT"];
  v127 = v126;
  if (!v126)
  {
    v126 = MEMORY[0x277CBEC28];
  }

  v128 = [v126 BOOLValue];

  v129 = objc_opt_class();
  v130 = [v6 objectForKey:@"KEYBOARD_WIDTH"];
  v131 = [v6 objectForKey:@"KEYBOARD_ORIENTATION"];
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

  v135 = [v129 keyboardFromWidth:v133 useDynamicLayout:v128 orientation:v134 keyboardLayout:v122];
  [(TIKeyboardTyper *)v58 setKeyboard:v135];

  v136 = [v6 objectForKey:@"PERSONA"];

  if (v136)
  {
    v137 = [TITestUserPersona alloc];
    v138 = [v6 objectForKey:@"PERSONA"];
    v139 = [(TITestUserPersona *)v137 initWithPersonaName:v138];
    [(TIKeyboardTyper *)v58 setUserPersona:v139];

    v140 = [(TIKeyboardTyper *)v58 userPersona];
    v141 = [(TIKeyboardTyper *)v58 keyplane];
    [v140 updateFromKeyplane:v141];
  }

  else
  {
    [(TIKeyboardTyper *)v58 setUserPersona:0];
  }

  v142 = [(TIKeyboardTyper *)v58 userPersona];

  if (!v142)
  {
    v143 = [TIErrorGenerator errorGeneratorWithAttributes:v6];
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
  v149 = [v6 objectForKey:@"SAVE_DEBUG_DATA"];
  v150 = v149;
  if (!v149)
  {
    v149 = MEMORY[0x277CBEC28];
  }

  v165->_saveDebugData = [v149 BOOLValue];

  v151 = [v6 objectForKey:@"RUN_DSL_TEST"];

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

+ (id)overrideInputMode:(id)a3
{
  v3 = a3;
  v4 = [v3 languageWithRegion];
  v5 = [v4 hasPrefix:@"ars"];

  if (v5)
  {
    v6 = [v3 languageWithRegion];
    NSLog(&cfstr_OverrideInputM.isa, v6);

    v7 = [MEMORY[0x277D6FE48] inputModeWithIdentifier:@"ar"];
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

+ (id)keyboardFromWidth:(id)a3 useDynamicLayout:(BOOL)a4 orientation:(id)a5 keyboardLayout:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  [a3 floatValue];
  if (v7)
  {
    v12 = [v9 isEqualToString:@"Portrait"];
    v13 = MEMORY[0x277D75640];
    v14 = [MEMORY[0x277D759A0] mainScreen];
    if (v12)
    {
      v15 = 1;
    }

    else
    {
      v15 = 4;
    }

    v16 = [v13 traitsWithScreen:v14 orientation:v15];

    [(__CFString *)v16 keyboardScreenReferenceSize];
    v18 = v17;
    v20 = v19;
    v21 = [MEMORY[0x277D6FF98] sharedKeyboardFactory];
    v22 = [v21 keyboardSuffixForScreenDimensions:{v18, v20}];

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v10, v22];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"Dynamic", v23];
    [MEMORY[0x277D6FFA0] keyplaneSizeForLayout:v24 screenTraits:v16 keyboardType:0];
    v26 = v25;
    v28 = v27;
    fprintf(*MEMORY[0x277D85DF8], "Attempting to load dynamic keyboard layout named: %s\n", [v24 UTF8String]);
    v29 = [MEMORY[0x277D6FFA0] dynamicKeyboardForName:v23 size:objc_msgSend(v9 isLandscape:{"isEqualToString:", @"Landscape", v26, v28}];

    goto LABEL_29;
  }

  v30 = v11;
  if (v11 >= 320.0)
  {
    v31 = [MEMORY[0x277D6FF98] sharedKeyboardFactory];
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      v33 = [v9 isEqualToString:@"Portrait"];
      v34 = [MEMORY[0x277D6FF98] sharedKeyboardFactory];
      v16 = [v34 keyboardPrefixForWidth:v33 andEdge:v30];

      if (v16)
      {
        goto LABEL_28;
      }
    }

    if ([v9 isEqualToString:@"Portrait"])
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

    if ([v9 isEqualToString:@"Landscape"])
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
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v16, v10];
  fprintf(*MEMORY[0x277D85DF8], "Attempting to load keyboard named: %s\n", [v22 UTF8String]);
  v23 = [MEMORY[0x277D6FF98] sharedKeyboardFactory];
  v29 = [v23 keyboardWithName:v22 inCache:0];
LABEL_29:

  return v29;
}

@end