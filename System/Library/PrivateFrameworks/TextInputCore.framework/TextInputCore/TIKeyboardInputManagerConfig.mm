@interface TIKeyboardInputManagerConfig
+ (id)configurationForInputMode:(id)mode;
- (id)propertyList;
@end

@implementation TIKeyboardInputManagerConfig

- (id)propertyList
{
  v45[24] = *MEMORY[0x277D85DE8];
  v44[0] = @"normalizedInputMode";
  inputMode = [(TIKeyboardInputManagerConfig *)self inputMode];
  if (inputMode)
  {
    inputMode2 = [(TIKeyboardInputManagerConfig *)self inputMode];
    normalizedIdentifier = [inputMode2 normalizedIdentifier];
  }

  else
  {
    normalizedIdentifier = &stru_283FDFAF8;
  }

  v28 = normalizedIdentifier;
  v45[0] = normalizedIdentifier;
  v44[1] = @"staticDictionaryPath";
  staticDictionaryPath = [(TIKeyboardInputManagerConfig *)self staticDictionaryPath];
  v42 = staticDictionaryPath;
  if (staticDictionaryPath)
  {
    v5 = staticDictionaryPath;
  }

  else
  {
    v5 = &stru_283FDFAF8;
  }

  v45[1] = v5;
  v44[2] = @"dynamicResourcePath";
  dynamicResourcePath = [(TIKeyboardInputManagerConfig *)self dynamicResourcePath];
  v41 = dynamicResourcePath;
  if (dynamicResourcePath)
  {
    v7 = dynamicResourcePath;
  }

  else
  {
    v7 = &stru_283FDFAF8;
  }

  v45[2] = v7;
  v44[3] = @"ngramModelPath";
  ngramModelPath = [(TIKeyboardInputManagerConfig *)self ngramModelPath];
  v40 = ngramModelPath;
  if (ngramModelPath)
  {
    v9 = ngramModelPath;
  }

  else
  {
    v9 = &stru_283FDFAF8;
  }

  v45[3] = v9;
  v44[4] = @"allowsSpaceCorrections";
  v39 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig allowsSpaceCorrections](self, "allowsSpaceCorrections")}];
  v45[4] = v39;
  v44[5] = @"usesTextChecker";
  v38 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig usesTextChecker](self, "usesTextChecker")}];
  v45[5] = v38;
  v44[6] = @"usesRetrocorrection";
  v37 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig usesRetrocorrection](self, "usesRetrocorrection")}];
  v45[6] = v37;
  v44[7] = @"usesWordNgramModel";
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig usesWordNgramModel](self, "usesWordNgramModel")}];
  v45[7] = v36;
  v44[8] = @"usesAdaptation";
  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig usesAdaptation](self, "usesAdaptation")}];
  v45[8] = v35;
  v44[9] = @"maxWordsPerPrediction";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TIKeyboardInputManagerConfig maxWordsPerPrediction](self, "maxWordsPerPrediction")}];
  v45[9] = v34;
  v44[10] = @"completionsShouldSharePrefix";
  v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig completionsShouldSharePrefix](self, "completionsShouldSharePrefix")}];
  v45[10] = v33;
  v44[11] = @"usesContinuousPath";
  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig usesContinuousPath](self, "usesContinuousPath")}];
  v45[11] = v32;
  v44[12] = @"usesContinuousPathForAccessibility";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig usesContinuousPathForAccessibility](self, "usesContinuousPathForAccessibility")}];
  v45[12] = v31;
  v44[13] = @"usesContinuousPathProgressiveCandidates";
  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig usesContinuousPathProgressiveCandidates](self, "usesContinuousPathProgressiveCandidates")}];
  v45[13] = v30;
  v44[14] = @"continuousPathCompletesWords";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig continuousPathCompletesWords](self, "continuousPathCompletesWords")}];
  v45[14] = v10;
  v44[15] = @"continuousPathLanguageWeight";
  v11 = MEMORY[0x277CCABB0];
  [(TIKeyboardInputManagerConfig *)self continuousPathLanguageWeight];
  v12 = [v11 numberWithDouble:?];
  v45[15] = v12;
  v44[16] = *MEMORY[0x277D6F830];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig continuousPathDeleteWholeWord](self, "continuousPathDeleteWholeWord")}];
  v45[16] = v13;
  v44[17] = *MEMORY[0x277D6F838];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig continuousPathDetectPause](self, "continuousPathDetectPause")}];
  v45[17] = v14;
  v44[18] = @"continuousPathParameters";
  continuousPathParams = [(TIKeyboardInputManagerConfig *)self continuousPathParams];
  v16 = continuousPathParams;
  v17 = MEMORY[0x277CBEC10];
  if (continuousPathParams)
  {
    v17 = continuousPathParams;
  }

  v45[18] = v17;
  v44[19] = @"insertsSpaceAfterPredictiveInput";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig insertsSpaceAfterPredictiveInput](self, "insertsSpaceAfterPredictiveInput")}];
  v45[19] = v18;
  v44[20] = @"usesCJContinuousPath";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig usesCJContinuousPath](self, "usesCJContinuousPath")}];
  v45[20] = v19;
  v44[21] = @"testing";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig isTesting](self, "isTesting")}];
  v45[21] = v20;
  v44[22] = @"usesDODMLLogging";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerConfig usesDODMLLogging](self, "usesDODMLLogging")}];
  v45[22] = v21;
  v44[23] = @"shapeStoreResourceDir";
  shapeStoreResourceDir = [(TIKeyboardInputManagerConfig *)self shapeStoreResourceDir];
  v23 = shapeStoreResourceDir;
  v24 = &stru_283FDFAF8;
  if (shapeStoreResourceDir)
  {
    v24 = shapeStoreResourceDir;
  }

  v45[23] = v24;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:24];

  if (inputMode)
  {
  }

  v25 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)configurationForInputMode:(id)mode
{
  v4 = MEMORY[0x277D6F470];
  modeCopy = mode;
  sharedPreferencesController = [v4 sharedPreferencesController];
  v7 = objc_alloc_init(self);
  [v7 setInputMode:modeCopy];
  inputMode = [v7 inputMode];
  [v7 setAllowsSpaceCorrections:{objc_msgSend(inputMode, "spaceAutocorrectionEnabled")}];

  inputMode2 = [v7 inputMode];
  [v7 setUsesETSRescoring:{objc_msgSend(inputMode2, "typedStringLMRankingEnabled")}];

  normalizedIdentifier = [modeCopy normalizedIdentifier];

  v11 = TIGetInputModeProperties();

  v12 = [v11 objectForKey:*MEMORY[0x277D6F670]];
  [v7 setUsesTextChecker:{objc_msgSend(v12, "BOOLValue")}];

  if (TIGetKeyboardRetrocorrectionDisabledValue_onceToken != -1)
  {
    dispatch_once(&TIGetKeyboardRetrocorrectionDisabledValue_onceToken, &__block_literal_global_19140);
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v14 = [mEMORY[0x277D6F470] valueForPreferenceKey:@"KeyboardRetrocorrectionDisabled"];

  [v7 setUsesRetrocorrection:{objc_msgSend(v14, "BOOLValue") ^ 1}];
  if (TIGetKeyboardWordNgramModelValue_onceToken != -1)
  {
    dispatch_once(&TIGetKeyboardWordNgramModelValue_onceToken, &__block_literal_global_354);
  }

  mEMORY[0x277D6F470]2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v16 = [mEMORY[0x277D6F470]2 valueForPreferenceKey:@"KeyboardWordNgramModel"];

  if ([v16 BOOLValue])
  {
    v17 = [v11 objectForKey:*MEMORY[0x277D6F6D8]];
    [v7 setUsesWordNgramModel:{objc_msgSend(v17, "BOOLValue")}];
  }

  else
  {
    [v7 setUsesWordNgramModel:0];
  }

  if (TIGetKeyboardWordNgramModelAdaptationValue_onceToken != -1)
  {
    dispatch_once(&TIGetKeyboardWordNgramModelAdaptationValue_onceToken, &__block_literal_global_359);
  }

  mEMORY[0x277D6F470]3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v19 = [mEMORY[0x277D6F470]3 valueForPreferenceKey:@"KeyboardWordNgramModelAdaptation"];

  [v7 setUsesAdaptation:{objc_msgSend(v19, "BOOLValue")}];
  if (TIGetKeyboardMaxWordsPerPredictionValue_onceToken != -1)
  {
    dispatch_once(&TIGetKeyboardMaxWordsPerPredictionValue_onceToken, &__block_literal_global_364);
  }

  mEMORY[0x277D6F470]4 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v21 = [mEMORY[0x277D6F470]4 valueForPreferenceKey:@"KeyboardMaxWordsPerPrediction"];

  [v7 setMaxWordsPerPrediction:{objc_msgSend(v21, "integerValue")}];
  if (TIGetKeyboardCompletionsShouldSharePrefixValue_onceToken != -1)
  {
    dispatch_once(&TIGetKeyboardCompletionsShouldSharePrefixValue_onceToken, &__block_literal_global_372);
  }

  mEMORY[0x277D6F470]5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v23 = [mEMORY[0x277D6F470]5 valueForPreferenceKey:@"KeyboardCompletionsShouldSharePrefix"];

  [v7 setCompletionsShouldSharePrefix:{objc_msgSend(v23, "BOOLValue")}];
  v24 = [v11 objectForKey:*MEMORY[0x277D6F770]];
  [v7 setUsesStemSuffixCorrectionFactor:{objc_msgSend(v24, "BOOLValue")}];

  v25 = [sharedPreferencesController valueForPreferenceKey:*MEMORY[0x277D6F870]];
  [v7 setShouldIgnoreCPRequirements:{objc_msgSend(v25, "BOOLValue")}];

  v26 = [v11 objectForKey:*MEMORY[0x277D6F680]];
  [v7 setLanguageAllowsCP:{objc_msgSend(v26, "BOOLValue")}];

  if (([v7 languageAllowsCP] & 1) != 0 || objc_msgSend(v7, "shouldIgnoreCPRequirements"))
  {
    [v7 setUsesContinuousPath:{objc_msgSend(sharedPreferencesController, "BOOLForPreferenceKey:", *MEMORY[0x277D6F848])}];
    [v7 setUsesContinuousPathForAccessibility:_AXSAccessibilityKeyboardContinuousPathEnabled() != 0];
    v27 = [v11 objectForKey:*MEMORY[0x277D6F6B0]];
    [v7 setContinuousPathParams:v27];
  }

  v28 = [sharedPreferencesController valueForPreferenceKey:*MEMORY[0x277D6F7D0]];
  [v7 setUsesCJContinuousPath:{objc_msgSend(v28, "BOOLValue")}];

  v29 = [sharedPreferencesController valueForPreferenceKey:*MEMORY[0x277D6F828]];
  [v7 setContinuousPathCompletesWords:{objc_msgSend(v29, "BOOLValue")}];

  v30 = [sharedPreferencesController valueForPreferenceKey:*MEMORY[0x277D6F850]];
  [v30 doubleValue];
  [v7 setContinuousPathLanguageWeight:?];

  [v7 setContinuousPathDeleteWholeWord:{objc_msgSend(sharedPreferencesController, "BOOLForPreferenceKey:", *MEMORY[0x277D6F830])}];
  [v7 setContinuousPathDetectPause:{objc_msgSend(sharedPreferencesController, "BOOLForPreferenceKey:", *MEMORY[0x277D6F838])}];
  [v7 setInsertsSpaceAfterPredictiveInput:{objc_msgSend(sharedPreferencesController, "BOOLForPreferenceKey:", *MEMORY[0x277D6F898])}];
  v31 = [sharedPreferencesController valueForPreferenceKey:*MEMORY[0x277D6F840]];
  [v7 setContinuousPathEnabledAlgorithms:{objc_msgSend(v31, "integerValue")}];

  [v7 setUsesContinuousPathRetrocorrection:{objc_msgSend(sharedPreferencesController, "BOOLForPreferenceKey:", *MEMORY[0x277D6F860])}];
  [v7 setUsesContinuousPathProgressiveCandidates:{objc_msgSend(sharedPreferencesController, "BOOLForPreferenceKey:", *MEMORY[0x277D6F858])}];
  [v7 setUsesDODMLLogging:{objc_msgSend(sharedPreferencesController, "BOOLForPreferenceKey:", *MEMORY[0x277D6F868])}];
  [v7 setSensorKitEnabled:{objc_msgSend(sharedPreferencesController, "BOOLForPreferenceKey:", *MEMORY[0x277D6F990])}];
  v32 = [sharedPreferencesController valueForPreferenceKey:*MEMORY[0x277D6F988]];
  [v7 setSensorKitWordsThreshold:{objc_msgSend(v32, "integerValue")}];

  [v7 setUsesUserModelLogging:{objc_msgSend(sharedPreferencesController, "BOOLForPreferenceKey:", *MEMORY[0x277D6F9D8])}];
  [v7 setAllowRelaxedOVSPolicy:{objc_msgSend(sharedPreferencesController, "BOOLForPreferenceKey:", *MEMORY[0x277D6F7A8])}];
  v33 = [sharedPreferencesController valueForPreferenceKey:*MEMORY[0x277D6F7D8]];
  v34 = v33;
  if (!v33)
  {
    v33 = &unk_28400BEE0;
  }

  [v7 setCpCandidatesCount:{objc_msgSend(v33, "integerValue")}];

  [v7 setSkipCandidateQualityFilter:{objc_msgSend(sharedPreferencesController, "BOOLForPreferenceKey:", *MEMORY[0x277D6F9A8])}];
  inputMode3 = [v7 inputMode];
  isSiriMode = [inputMode3 isSiriMode];

  inputMode4 = [v7 inputMode];
  v38 = inputMode4;
  if (isSiriMode)
  {
    v39 = UIKeyboardUnigramLexiconPathForInputMode(inputMode4);
  }

  else
  {
    normalizedIdentifier2 = [inputMode4 normalizedIdentifier];
    IsTransliteration = TIInputModeIsTransliteration();
    inputMode5 = [v7 inputMode];
    v43 = inputMode5;
    if (IsTransliteration)
    {
      [inputMode5 normalizedIdentifier];
    }

    else
    {
      [inputMode5 languageWithRegion];
    }
    v44 = ;

    v39 = UIKeyboardStaticUnigramsFile(v44);
    v38 = v44;
  }

  [v7 setStaticDictionaryPath:v39];

  inputMode6 = [v7 inputMode];
  languageWithRegion = [inputMode6 languageWithRegion];
  v47 = TINgramModelPathForInputMode();
  [v7 setNgramModelPath:v47];

  v48 = UIKeyboardUserDirectory();
  [v7 setDynamicResourcePath:v48];

  v49 = UIKeyboardUserDirectory();
  [v7 setShapeStoreResourceDir:v49];

  v50 = [sharedPreferencesController valueForPreferenceKey:*MEMORY[0x277D6F7E0]];
  [v7 setCpConfidenceModelType:{objc_msgSend(v50, "integerValue")}];

  v51 = [v11 objectForKey:*MEMORY[0x277D6F6E0]];
  [v7 setIncludeLightWeightLanguageModelMobileAssets:{objc_msgSend(v51, "BOOLValue")}];

  return v7;
}

@end