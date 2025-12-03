@interface TITypingEffortAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (BOOL)hasEmojiInKeyboardInputs:(id)inputs;
- (BOOL)isEmojiSearchCandidateSelection:(id)selection;
- (BOOL)isFlickInput:(id)input;
- (BOOL)isPopupVariantInput:(id)input inputMode:(id)mode;
- (BOOL)isTenKeyInputMode:(id)mode;
- (TITypingEffortAnalyzer)init;
- (id)countActions;
- (id)countOutput;
- (id)keyStringWithCode:(int64_t)code fromLayout:(id)layout;
- (int)countComposedCharactersInText:(id)text;
- (void)addCountsForAlignedEntry:(id)entry toOutputSummary:(id)summary;
- (void)addCountsForEmojiInputs:(id)inputs toOutputSummary:(id)summary;
- (void)addCountsForPropertyWithName:(id)name andEmojiSearchPropertyName:(id)propertyName contributesToTotal:(BOOL)total toActionSummary:(id)summary emojiSearchMode:(BOOL)mode;
- (void)addCountsForWord:(id)word toOutputSummary:(id)summary;
- (void)addTouchRelatedActionsForTouches:(id)touches layouts:(id)layouts acceptedCandidate:(id)candidate toActionSummary:(id)summary keyboardInputTouches:(id)inputTouches pathTouches:(id)pathTouches emojiSearchMode:(BOOL)mode;
- (void)dispatchEventWithActionSummary:(id)summary outputSummary:(id)outputSummary;
- (void)registerEventSpec;
@end

@implementation TITypingEffortAnalyzer

- (void)dispatchEventWithActionSummary:(id)summary outputSummary:(id)outputSummary
{
  v147[86] = *MEMORY[0x277D85DE8];
  session = self->_session;
  outputSummaryCopy = outputSummary;
  summaryCopy = summary;
  userActionHistory = [(TITypingSession *)session userActionHistory];
  lastObject = [userActionHistory lastObject];
  keyboardState = [lastObject keyboardState];

  v12 = [TIKBAnalyticsMetricsContext alloc];
  sessionParams = [(TITypingSession *)self->_session sessionParams];
  activeInputModes = [sessionParams activeInputModes];
  sessionParams2 = [(TITypingSession *)self->_session sessionParams];
  testingParameters = [sessionParams2 testingParameters];
  v145 = keyboardState;
  v17 = [(TIKBAnalyticsMetricsContext *)v12 initWithKeyboardState:keyboardState activeInputModes:activeInputModes testingParameters:testingParameters];

  userActionHistory2 = [(TITypingSession *)self->_session userActionHistory];
  firstObject = [userActionHistory2 firstObject];
  keyboardState2 = [firstObject keyboardState];
  documentState = [keyboardState2 documentState];

  contextBeforeInput = [documentState contextBeforeInput];
  if (contextBeforeInput)
  {
    contextBeforeInput2 = [documentState contextBeforeInput];
    v24 = [contextBeforeInput2 length] != 0;
  }

  else
  {
    v24 = 0;
  }

  contextAfterInput = [documentState contextAfterInput];
  if (contextAfterInput)
  {
    contextAfterInput2 = [documentState contextAfterInput];
    v27 = [contextAfterInput2 length] != 0;
  }

  else
  {
    v27 = 0;
  }

  selectedText = [documentState selectedText];
  v144 = documentState;
  if (selectedText)
  {
    selectedText2 = [documentState selectedText];
    v30 = [selectedText2 length] != 0;

    v27 |= v30;
  }

  v31 = v27 | v24;
  v32 = [summaryCopy totalInputActions] > 0;
  v33 = [outputSummaryCopy charactersOutput] > 0;
  self->_hasCursorMovement = [summaryCopy cursorMovements] > 0;
  emojiSelections = [summaryCopy emojiSelections];
  v35 = [summaryCopy emojiCandidateSelections] + emojiSelections;
  emojiSearchCandidateSelections = [summaryCopy emojiSearchCandidateSelections];
  if ((v35 + emojiSearchCandidateSelections < 0) ^ __OFADD__(v35, emojiSearchCandidateSelections) | (v35 + emojiSearchCandidateSelections == 0))
  {
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  self->_hasEmojiInput = v37;
  [TIStandardTypingSessionConfidenceEvaluator calculateAlignedTypingSessionConfidence:self->_alignedSession];
  v39 = v38;
  v146[0] = @"totalInputActions";
  v143 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "totalInputActions")}];
  v147[0] = v143;
  v146[1] = @"characterKeyTaps";
  v142 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "characterKeyTaps")}];
  v147[1] = v142;
  v146[2] = @"backspaceKeyTaps";
  v141 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "backspaceKeyTaps")}];
  v147[2] = v141;
  v146[3] = @"spaceKeyTaps";
  v140 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "spaceKeyTaps")}];
  v147[3] = v140;
  v146[4] = @"returnKeyTaps";
  v139 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "returnKeyTaps")}];
  v147[4] = v139;
  v146[5] = @"shiftKeyTaps";
  v138 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "shiftKeyTaps")}];
  v147[5] = v138;
  v146[6] = @"moreKeyTaps";
  v137 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "moreKeyTaps")}];
  v147[6] = v137;
  v146[7] = @"emojiKeyTaps";
  v136 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiKeyTaps")}];
  v147[7] = v136;
  v146[8] = @"unknownKeyTaps";
  v135 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "unknownKeyTaps")}];
  v147[8] = v135;
  v146[9] = @"paths";
  v134 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "paths")}];
  v147[9] = v134;
  v146[10] = @"pathsWithWeight1";
  v133 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight1")}];
  v147[10] = v133;
  v146[11] = @"pathsWithWeight2";
  v132 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight2")}];
  v147[11] = v132;
  v146[12] = @"pathsWithWeight3";
  v131 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight3")}];
  v147[12] = v131;
  v146[13] = @"pathsWithWeight4";
  v130 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight4")}];
  v147[13] = v130;
  v146[14] = @"pathsWithWeight5";
  v129 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight5")}];
  v147[14] = v129;
  v146[15] = @"pathsWithWeight6";
  v128 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight6")}];
  v147[15] = v128;
  v146[16] = @"pathsWithWeight7";
  v127 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight7")}];
  v147[16] = v127;
  v146[17] = @"pathsWithWeight8";
  v126 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight8")}];
  v147[17] = v126;
  v146[18] = @"pathsWithWeight9";
  v125 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight9")}];
  v147[18] = v125;
  v146[19] = @"pathsWithWeight10";
  v124 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight10")}];
  v147[19] = v124;
  v146[20] = @"flicks";
  v123 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "flicks")}];
  v147[20] = v123;
  v146[21] = @"gestures";
  v122 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "gestures")}];
  v147[21] = v122;
  v146[22] = @"popupVariants";
  v121 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "popupVariants")}];
  v147[22] = v121;
  v146[23] = @"cursorMovements";
  v120 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "cursorMovements")}];
  v147[23] = v120;
  v146[24] = @"candidateSelections";
  v119 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "candidateSelections")}];
  v147[24] = v119;
  v146[25] = @"cuts";
  v118 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "cuts")}];
  v147[25] = v118;
  v146[26] = @"pastes";
  v117 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pastes")}];
  v147[26] = v117;
  v146[27] = @"emojiSelections";
  v116 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSelections")}];
  v147[27] = v116;
  v146[28] = @"emojiCandidateSelections";
  v115 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiCandidateSelections")}];
  v147[28] = v115;
  v146[29] = @"emojiSearchCharacterKeyTaps";
  v114 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchCharacterKeyTaps")}];
  v147[29] = v114;
  v146[30] = @"emojiSearchBackspaceKeyTaps";
  v113 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchBackspaceKeyTaps")}];
  v147[30] = v113;
  v146[31] = @"emojiSearchSpaceKeyTaps";
  v112 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchSpaceKeyTaps")}];
  v147[31] = v112;
  v146[32] = @"emojiSearchShiftKeyTaps";
  v111 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchShiftKeyTaps")}];
  v147[32] = v111;
  v146[33] = @"emojiSearchMoreKeyTaps";
  v110 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchMoreKeyTaps")}];
  v147[33] = v110;
  v146[34] = @"emojiSearchEmojiKeyTaps";
  v109 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchEmojiKeyTaps")}];
  v147[34] = v109;
  v146[35] = @"emojiSearchUnknownKeyTaps";
  v108 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchUnknownKeyTaps")}];
  v147[35] = v108;
  v146[36] = @"emojiSearchPaths";
  v107 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPaths")}];
  v147[36] = v107;
  v146[37] = @"emojiSearchPathsWithWeight1";
  v106 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight1")}];
  v147[37] = v106;
  v146[38] = @"emojiSearchPathsWithWeight2";
  v105 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight2")}];
  v147[38] = v105;
  v146[39] = @"emojiSearchPathsWithWeight3";
  v104 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight3")}];
  v147[39] = v104;
  v146[40] = @"emojiSearchPathsWithWeight4";
  v103 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight4")}];
  v147[40] = v103;
  v146[41] = @"emojiSearchPathsWithWeight5";
  v102 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight5")}];
  v147[41] = v102;
  v146[42] = @"emojiSearchPathsWithWeight6";
  v101 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight6")}];
  v147[42] = v101;
  v146[43] = @"emojiSearchPathsWithWeight7";
  v100 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight7")}];
  v147[43] = v100;
  v146[44] = @"emojiSearchPathsWithWeight8";
  v99 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight8")}];
  v147[44] = v99;
  v146[45] = @"emojiSearchPathsWithWeight9";
  v98 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight9")}];
  v147[45] = v98;
  v146[46] = @"emojiSearchPathsWithWeight10";
  v97 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight10")}];
  v147[46] = v97;
  v146[47] = @"emojiSearchFlicks";
  v96 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchFlicks")}];
  v147[47] = v96;
  v146[48] = @"emojiSearchGestures";
  v95 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchGestures")}];
  v147[48] = v95;
  v146[49] = @"emojiSearchPopupVariants";
  v94 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPopupVariants")}];
  v147[49] = v94;
  v146[50] = @"emojiSearchCursorMovements";
  v93 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchCursorMovements")}];
  v147[50] = v93;
  v146[51] = @"emojiSearchCandidateSelections";
  v92 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchCandidateSelections")}];
  v147[51] = v92;
  v146[52] = @"emojiSearchCuts";
  v91 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchCuts")}];
  v147[52] = v91;
  v146[53] = @"emojiSearchPastes";
  v40 = MEMORY[0x277CCABB0];
  emojiSearchPastes = [summaryCopy emojiSearchPastes];

  v90 = [v40 numberWithInt:emojiSearchPastes];
  v147[53] = v90;
  v146[54] = @"emojisOutput";
  v89 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "emojisOutput")}];
  v147[54] = v89;
  v146[55] = @"wordsOutput";
  v88 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "wordsOutput")}];
  v147[55] = v88;
  v146[56] = @"charactersOutput";
  v87 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "charactersOutput")}];
  v147[56] = v87;
  v146[57] = @"char1WordsOutput";
  v86 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char1WordsOutput")}];
  v147[57] = v86;
  v146[58] = @"char2WordsOutput";
  v85 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char2WordsOutput")}];
  v147[58] = v85;
  v146[59] = @"char3WordsOutput";
  v84 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char3WordsOutput")}];
  v147[59] = v84;
  v146[60] = @"char4WordsOutput";
  v83 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char4WordsOutput")}];
  v147[60] = v83;
  v146[61] = @"char5WordsOutput";
  v82 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char5WordsOutput")}];
  v147[61] = v82;
  v146[62] = @"char6WordsOutput";
  v81 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char6WordsOutput")}];
  v147[62] = v81;
  v146[63] = @"char7WordsOutput";
  v80 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char7WordsOutput")}];
  v147[63] = v80;
  v146[64] = @"char8WordsOutput";
  v79 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char8WordsOutput")}];
  v147[64] = v79;
  v146[65] = @"char9PlusWordsOutput";
  v42 = MEMORY[0x277CCABB0];
  char9PlusWordsOutput = [outputSummaryCopy char9PlusWordsOutput];

  v78 = [v42 numberWithInt:char9PlusWordsOutput];
  v147[65] = v78;
  v146[66] = @"hasExistingText";
  v76 = [MEMORY[0x277CCABB0] numberWithBool:v31 & 1];
  v147[66] = v76;
  v146[67] = @"hasInput";
  v75 = [MEMORY[0x277CCABB0] numberWithBool:v32];
  v147[67] = v75;
  v146[68] = @"hasOutput";
  v74 = [MEMORY[0x277CCABB0] numberWithBool:v33];
  v147[68] = v74;
  v146[69] = @"hasCursorMovement";
  v73 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasCursorMovement];
  v147[69] = v73;
  v146[70] = @"hasEmojiInput";
  v72 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasEmojiInput];
  v147[70] = v72;
  v146[71] = kFeatureKeyboardUsage;
  featureUsageMetricsCache = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v70 = [featureUsageMetricsCache featureUsageMetricFromName:kFeatureKeyboardUsage forContext:v17];
  v147[71] = v70;
  v146[72] = kFeatureContinuousPathUsage;
  featureUsageMetricsCache2 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v68 = [featureUsageMetricsCache2 featureUsageMetricFromName:kFeatureContinuousPathUsage forContext:v17];
  v147[72] = v68;
  v146[73] = kFeatureAutocorrectionUsage;
  featureUsageMetricsCache3 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v66 = [featureUsageMetricsCache3 featureUsageMetricFromName:kFeatureAutocorrectionUsage forContext:v17];
  v147[73] = v66;
  v146[74] = kFeatureCandidateBarUsage;
  featureUsageMetricsCache4 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v64 = [featureUsageMetricsCache4 featureUsageMetricFromName:kFeatureCandidateBarUsage forContext:v17];
  v147[74] = v64;
  v146[75] = kFeatureMultilingualUsage;
  featureUsageMetricsCache5 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v62 = [featureUsageMetricsCache5 featureUsageMetricFromName:kFeatureMultilingualUsage forContext:v17];
  v147[75] = v62;
  v146[76] = kFeatureStringTypingSpeed;
  featureUsageMetricsCache6 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v60 = [featureUsageMetricsCache6 featureUsageMetricFromName:kFeatureStringTypingSpeed forContext:v17];
  v147[76] = v60;
  v146[77] = kFeatureStringAssetAvailabilityStatus;
  sessionParams3 = [(TITypingSession *)self->_session sessionParams];
  assetAvailabilityStatus = [sessionParams3 assetAvailabilityStatus];
  v45 = @"Installed";
  if (!assetAvailabilityStatus)
  {
    v45 = @"Unavailable";
  }

  v46 = v45;
  v147[77] = v46;
  v146[78] = kFeatureStringSessionAlignmentConfidence;
  v47 = [MEMORY[0x277D6F320] bucketRatioWithValue:10 bucketCount:v39];
  v147[78] = v47;
  v146[79] = kFeatureStringKeyboardLanguage;
  inputLanguage = [(TIAnalyticsMetricsContext *)v17 inputLanguage];
  v147[79] = inputLanguage;
  v146[80] = kFeatureStringKeyboardRegion;
  inputRegion = [(TIAnalyticsMetricsContext *)v17 inputRegion];
  v147[80] = inputRegion;
  v146[81] = kFeatureStringKeyboardVariant;
  inputVariant = [(TIKBAnalyticsMetricsContext *)v17 inputVariant];
  v147[81] = inputVariant;
  v146[82] = kFeatureStringKeyboardSecondaryLanguage;
  secondaryLanguage = [(TIKBAnalyticsMetricsContext *)v17 secondaryLanguage];
  v147[82] = secondaryLanguage;
  v146[83] = kFeatureStringKeyboardSecondaryRegion;
  [(TIKBAnalyticsMetricsContext *)v17 secondaryRegion];
  v53 = v52 = v17;
  v147[83] = v53;
  v146[84] = kFeatureStringKeyboardLayout;
  layoutName = [(TIKBAnalyticsMetricsContext *)v52 layoutName];
  v147[84] = layoutName;
  v146[85] = kFeatureStringKeyboardType;
  v55 = [TIKBAnalyticsMetricsContext keyboardTypeEnumToString:[(TIKBAnalyticsMetricsContext *)v52 keyboardType]];
  v147[85] = v55;
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:86];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  testingParameters2 = [(TIKBAnalyticsMetricsContext *)v52 testingParameters];
  [mEMORY[0x277D6F318] dispatchEventWithName:@"typingEffort" payload:v77 testingParameters:testingParameters2 allowSparsePayload:0];

  v58 = *MEMORY[0x277D85DE8];
}

- (void)registerEventSpec
{
  v114[86] = *MEMORY[0x277D85DE8];
  v89 = MEMORY[0x277D6F300];
  v113 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"totalInputActions" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[0] = v113;
  v112 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"characterKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[1] = v112;
  v111 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"backspaceKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[2] = v111;
  v110 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"spaceKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[3] = v110;
  v109 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"returnKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[4] = v109;
  v108 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"shiftKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[5] = v108;
  v107 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"moreKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[6] = v107;
  v106 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[7] = v106;
  v105 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"unknownKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[8] = v105;
  v104 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"paths" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[9] = v104;
  v103 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight1" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[10] = v103;
  v102 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight2" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[11] = v102;
  v101 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight3" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[12] = v101;
  v100 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight4" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[13] = v100;
  v99 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight5" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[14] = v99;
  v98 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight6" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[15] = v98;
  v97 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight7" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[16] = v97;
  v96 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight8" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[17] = v96;
  v95 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight9" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[18] = v95;
  v94 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight10" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[19] = v94;
  v93 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"flicks" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[20] = v93;
  v92 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"gestures" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[21] = v92;
  v91 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"popupVariants" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[22] = v91;
  v88 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"cursorMovements" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[23] = v88;
  v87 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"candidateSelections" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[24] = v87;
  v86 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"cuts" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[25] = v86;
  v85 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pastes" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[26] = v85;
  v84 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSelections" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[27] = v84;
  v83 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiCandidateSelections" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[28] = v83;
  v82 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchCharacterKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[29] = v82;
  v81 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchBackspaceKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[30] = v81;
  v80 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchSpaceKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[31] = v80;
  v79 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchShiftKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[32] = v79;
  v78 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchMoreKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[33] = v78;
  v77 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchEmojiKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[34] = v77;
  v76 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchUnknownKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[35] = v76;
  v75 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPaths" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[36] = v75;
  v74 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight1" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[37] = v74;
  v73 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight2" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[38] = v73;
  v72 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight3" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[39] = v72;
  v71 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight4" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[40] = v71;
  v70 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight5" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[41] = v70;
  v69 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight6" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[42] = v69;
  v68 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight7" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[43] = v68;
  v67 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight8" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[44] = v67;
  v66 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight9" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[45] = v66;
  v65 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight10" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[46] = v65;
  v64 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchFlicks" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[47] = v64;
  v63 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchGestures" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[48] = v63;
  v62 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPopupVariants" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[49] = v62;
  v61 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchCursorMovements" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[50] = v61;
  v60 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchCandidateSelections" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[51] = v60;
  v59 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchCuts" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[52] = v59;
  v58 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPastes" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[53] = v58;
  v57 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojisOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[54] = v57;
  v56 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"wordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[55] = v56;
  v55 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"charactersOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[56] = v55;
  v54 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char1WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[57] = v54;
  v53 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char2WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[58] = v53;
  v52 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char3WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[59] = v52;
  v51 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char4WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[60] = v51;
  v50 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char5WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[61] = v50;
  v49 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char6WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[62] = v49;
  v48 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char7WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[63] = v48;
  v47 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char8WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[64] = v47;
  v46 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char9PlusWordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v114[65] = v46;
  v45 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasExistingText"];
  v114[66] = v45;
  v44 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasInput"];
  v114[67] = v44;
  v43 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasOutput"];
  v114[68] = v43;
  v42 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasCursorMovement"];
  v114[69] = v42;
  v41 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasEmojiInput"];
  v114[70] = v41;
  v2 = MEMORY[0x277D6F308];
  v3 = kFeatureKeyboardUsage;
  v40 = TIFeatureUsageAllowedValues();
  v39 = [v2 stringFieldSpecWithName:v3 allowedValues:v40];
  v114[71] = v39;
  v4 = MEMORY[0x277D6F308];
  v5 = kFeatureContinuousPathUsage;
  v38 = TIFeatureUsageAllowedValues();
  v37 = [v4 stringFieldSpecWithName:v5 allowedValues:v38];
  v114[72] = v37;
  v6 = MEMORY[0x277D6F308];
  v7 = kFeatureAutocorrectionUsage;
  v36 = TIFeatureUsageAllowedValues();
  v35 = [v6 stringFieldSpecWithName:v7 allowedValues:v36];
  v114[73] = v35;
  v8 = MEMORY[0x277D6F308];
  v9 = kFeatureCandidateBarUsage;
  v34 = TIFeatureUsageAllowedValues();
  v33 = [v8 stringFieldSpecWithName:v9 allowedValues:v34];
  v114[74] = v33;
  v10 = MEMORY[0x277D6F308];
  v11 = kFeatureMultilingualUsage;
  v32 = TIFeatureUsageAllowedValues();
  v31 = [v10 stringFieldSpecWithName:v11 allowedValues:v32];
  v114[75] = v31;
  v12 = MEMORY[0x277D6F308];
  v13 = kFeatureStringTypingSpeed;
  v30 = TITypingSpeedAllowedValues();
  v29 = [v12 stringFieldSpecWithName:v13 allowedValues:v30];
  v114[76] = v29;
  v14 = MEMORY[0x277D6F308];
  v15 = kFeatureStringAssetAvailabilityStatus;
  v28 = TIAssetAvailabilityStatusAllowedValues();
  v16 = [v14 stringFieldSpecWithName:v15 allowedValues:v28];
  v114[77] = v16;
  v17 = [MEMORY[0x277D6F308] integerFieldSpecWithName:kFeatureStringSessionAlignmentConfidence minValue:&unk_28400BE80 maxValue:&unk_28400BE98 significantDigits:0];
  v114[78] = v17;
  v18 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v114[79] = v18;
  v19 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v114[80] = v19;
  v20 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v114[81] = v20;
  v21 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v114[82] = v21;
  v22 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v114[83] = v22;
  v23 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v114[84] = v23;
  v24 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v114[85] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:86];
  v90 = [v89 eventSpecWithName:@"typingEffort" inputModeRequired:0 fieldSpecs:v25];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v90];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)addCountsForPropertyWithName:(id)name andEmojiSearchPropertyName:(id)propertyName contributesToTotal:(BOOL)total toActionSummary:(id)summary emojiSearchMode:(BOOL)mode
{
  modeCopy = mode;
  totalCopy = total;
  nameCopy = name;
  propertyNameCopy = propertyName;
  summaryCopy = summary;
  v14 = [nameCopy isEqualToString:@"emojiSelections"] | modeCopy;
  if (v14 == 1 && !self->_emojiPlaneActive)
  {
    [summaryCopy setEmojiKeyTaps:{objc_msgSend(summaryCopy, "emojiKeyTaps") + 1}];
    [summaryCopy setTotalInputActions:{objc_msgSend(summaryCopy, "totalInputActions") + 1}];
    self->_emojiPlaneActive = 1;
  }

  if (modeCopy)
  {
    if (!self->_emojiSearchActive)
    {
      [summaryCopy setEmojiSearchCursorMovements:{objc_msgSend(summaryCopy, "emojiSearchCursorMovements") + 1}];
      [summaryCopy setTotalInputActions:{objc_msgSend(summaryCopy, "totalInputActions") + 1}];
      self->_emojiSearchActive = 1;
    }
  }

  else
  {
    if (self->_emojiSearchActive)
    {
      [summaryCopy setEmojiSearchEmojiKeyTaps:{objc_msgSend(summaryCopy, "emojiSearchEmojiKeyTaps") + 1}];
      [summaryCopy setReturnKeyTaps:{objc_msgSend(summaryCopy, "returnKeyTaps") - 1}];
      self->_emojiSearchActive = 0;
    }

    if ((v14 & 1) == 0 && self->_emojiPlaneActive)
    {
      [summaryCopy setMoreKeyTaps:{objc_msgSend(summaryCopy, "moreKeyTaps") + 1}];
      [summaryCopy setTotalInputActions:{objc_msgSend(summaryCopy, "totalInputActions") + 1}];
      self->_emojiPlaneActive = 0;
    }
  }

  if (propertyNameCopy != 0 && modeCopy)
  {
    v15 = propertyNameCopy;
  }

  else
  {
    v15 = nameCopy;
  }

  v16 = v15;
  v17 = [summaryCopy valueForKey:v16];
  intValue = [v17 intValue];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:(intValue + 1)];
  [summaryCopy setValue:v19 forKey:v16];

  if (totalCopy)
  {
    [summaryCopy setTotalInputActions:{objc_msgSend(summaryCopy, "totalInputActions") + 1}];
  }
}

- (int)countComposedCharactersInText:(id)text
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  textCopy = text;
  v4 = [textCopy length];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__TITypingEffortAnalyzer_countComposedCharactersInText___block_invoke;
  v6[3] = &unk_278732850;
  v6[4] = &v7;
  [textCopy enumerateSubstringsInRange:0 options:v4 usingBlock:{2, v6}];

  LODWORD(textCopy) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return textCopy;
}

- (BOOL)hasEmojiInKeyboardInputs:(id)inputs
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  inputsCopy = inputs;
  v4 = [inputsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(inputsCopy);
        }

        string = [*(*(&v11 + 1) + 8 * i) string];
        _containsEmoji = [string _containsEmoji];

        if (_containsEmoji)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [inputsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)addCountsForWord:(id)word toOutputSummary:(id)summary
{
  summaryCopy = summary;
  v6 = [(TITypingEffortAnalyzer *)self countComposedCharactersInText:word];
  if (v6 >= 1)
  {
    if (v6 > 4)
    {
      if (v6 > 6)
      {
        if (v6 == 7)
        {
          [summaryCopy setChar7WordsOutput:{objc_msgSend(summaryCopy, "char7WordsOutput") + 1}];
        }

        else if (v6 == 8)
        {
          [summaryCopy setChar8WordsOutput:{objc_msgSend(summaryCopy, "char8WordsOutput") + 1}];
        }

        else
        {
          [summaryCopy setChar9PlusWordsOutput:{objc_msgSend(summaryCopy, "char9PlusWordsOutput") + 1}];
        }
      }

      else if (v6 == 5)
      {
        [summaryCopy setChar5WordsOutput:{objc_msgSend(summaryCopy, "char5WordsOutput") + 1}];
      }

      else
      {
        [summaryCopy setChar6WordsOutput:{objc_msgSend(summaryCopy, "char6WordsOutput") + 1}];
      }
    }

    else if (v6 > 2)
    {
      if (v6 == 3)
      {
        [summaryCopy setChar3WordsOutput:{objc_msgSend(summaryCopy, "char3WordsOutput") + 1}];
      }

      else
      {
        [summaryCopy setChar4WordsOutput:{objc_msgSend(summaryCopy, "char4WordsOutput") + 1}];
      }
    }

    else if (v6 == 1)
    {
      [summaryCopy setChar1WordsOutput:{objc_msgSend(summaryCopy, "char1WordsOutput") + 1}];
    }

    else
    {
      [summaryCopy setChar2WordsOutput:{objc_msgSend(summaryCopy, "char2WordsOutput") + 1}];
    }

    [summaryCopy setWordsOutput:{objc_msgSend(summaryCopy, "wordsOutput") + 1}];
  }
}

- (void)addCountsForEmojiInputs:(id)inputs toOutputSummary:(id)summary
{
  v19 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  summaryCopy = summary;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [inputsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(inputsCopy);
        }

        string = [*(*(&v14 + 1) + 8 * v10) string];
        _containsEmoji = [string _containsEmoji];

        if (_containsEmoji)
        {
          [summaryCopy setEmojisOutput:{objc_msgSend(summaryCopy, "emojisOutput") + 1}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [inputsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addCountsForAlignedEntry:(id)entry toOutputSummary:(id)summary
{
  entryCopy = entry;
  summaryCopy = summary;
  originalWord = [entryCopy originalWord];
  editedEntry = [originalWord editedEntry];
  originalWord2 = [entryCopy originalWord];
  v10 = originalWord2;
  if (editedEntry)
  {
    editedEntry2 = [originalWord2 editedEntry];

    v10 = editedEntry2;
  }

  acceptedCandidate = [v10 acceptedCandidate];
  candidate = [acceptedCandidate candidate];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v15 = [candidate stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v17 = [v15 stringByTrimmingCharactersInSet:punctuationCharacterSet];

  keyboardState = [v10 keyboardState];
  LOBYTE(v15) = [keyboardState emojiSearchMode];

  if ((v15 & 1) == 0)
  {
    if ([v17 _containsEmoji])
    {
      [summaryCopy setEmojisOutput:{objc_msgSend(summaryCopy, "emojisOutput") + 1}];
    }

    else
    {
      alignedKeyboardInputs = [entryCopy alignedKeyboardInputs];
      [(TITypingEffortAnalyzer *)self addCountsForEmojiInputs:alignedKeyboardInputs toOutputSummary:summaryCopy];

      [(TITypingEffortAnalyzer *)self addCountsForWord:v17 toOutputSummary:summaryCopy];
    }
  }
}

- (id)countOutput
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  alignedEntries = [(TITypingSessionAligned *)self->_alignedSession alignedEntries];
  v5 = [alignedEntries countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(alignedEntries);
        }

        [(TITypingEffortAnalyzer *)self addCountsForAlignedEntry:*(*(&v12 + 1) + 8 * i) toOutputSummary:v3];
      }

      v6 = [alignedEntries countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  completeText = [(TITypingSessionAligned *)self->_alignedSession completeText];
  [v3 setCharactersOutput:{-[TITypingEffortAnalyzer countComposedCharactersInText:](self, "countComposedCharactersInText:", completeText)}];

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isEmojiSearchCandidateSelection:(id)selection
{
  selectionCopy = selection;
  acceptedString = [selectionCopy acceptedString];
  if (acceptedString)
  {
    acceptedString2 = [selectionCopy acceptedString];
    v6 = [acceptedString2 length];

    if (v6 && ([selectionCopy acceptedCandidate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isContinuousPathConversion"), v7, (v8 & 1) == 0) && (objc_msgSend(selectionCopy, "wordEntryType") & 4) != 0)
    {
      acceptedCandidate = [selectionCopy acceptedCandidate];
      candidate = [acceptedCandidate candidate];
      LOBYTE(acceptedString) = [candidate _containsEmoji];
    }

    else
    {
      LOBYTE(acceptedString) = 0;
    }
  }

  return acceptedString;
}

- (id)keyStringWithCode:(int64_t)code fromLayout:(id)layout
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__TITypingEffortAnalyzer_keyStringWithCode_fromLayout___block_invoke;
  v6[3] = &unk_2787335F8;
  v6[4] = &v7;
  v6[5] = code;
  [layout enumerateKeysUsingBlock:v6];
  if (v8[3])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __55__TITypingEffortAnalyzer_keyStringWithCode_fromLayout___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 40) == a3)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
    *a4 = 1;
  }

  return result;
}

- (void)addTouchRelatedActionsForTouches:(id)touches layouts:(id)layouts acceptedCandidate:(id)candidate toActionSummary:(id)summary keyboardInputTouches:(id)inputTouches pathTouches:(id)pathTouches emojiSearchMode:(BOOL)mode
{
  v46 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  candidateCopy = candidate;
  summaryCopy = summary;
  inputTouchesCopy = inputTouches;
  pathTouchesCopy = pathTouches;
  v15 = [touches mutableCopy];
  v38 = layoutsCopy;
  v16 = [layoutsCopy mutableCopy];
  if (![v15 count])
  {
    goto LABEL_33;
  }

  v17 = 0x277CCA000uLL;
  do
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v20 = [v16 objectAtIndex:0];
    integerValue = [v20 integerValue];

    layouts = [(TITypingSession *)self->_session layouts];
    v23 = [layouts objectAtIndexedSubscript:integerValue];

    v24 = [v15 objectAtIndex:0];
    v25 = [*(v17 + 2992) numberWithInteger:0];
    [v19 addObject:v25];

    [v18 addObject:v24];
    if ([v15 count] < 2)
    {
LABEL_12:
      v30 = 0;
      goto LABEL_16;
    }

    v26 = 1;
    while (1)
    {
      v27 = [v15 objectAtIndex:v26];
      pathIndex = [v27 pathIndex];
      if (pathIndex != [v24 pathIndex])
      {
        goto LABEL_11;
      }

      if (![v27 stage])
      {
        break;
      }

      if ([v27 stage] == 2 || objc_msgSend(v27, "stage") == 3 || objc_msgSend(v27, "stage") == 5)
      {
        v27 = v27;
        v31 = [*(v17 + 2992) numberWithInt:v26];
        [v19 addObject:v31];

        [v18 addObject:v27];
        v30 = v27;
        goto LABEL_15;
      }

      v29 = [*(v17 + 2992) numberWithInt:v26];
      [v19 addObject:v29];

      [v18 addObject:v27];
LABEL_11:

      if ([v15 count] <= ++v26)
      {
        goto LABEL_12;
      }
    }

    v30 = 0;
LABEL_15:

LABEL_16:
    if ([v24 stage])
    {

      v24 = 0;
      goto LABEL_18;
    }

    if (v24 && v30)
    {
      if (pathTouchesCopy && [pathTouchesCopy containsObject:v30])
      {
        candidate = [candidateCopy candidate];
        [(TITypingEffortAnalyzer *)self addPathWeightActionsForTouches:v18 withLayout:v23 forWord:candidate toActionSummary:summaryCopy emojiSearchMode:mode];
        goto LABEL_21;
      }

      if (([inputTouchesCopy containsObject:v30] & 1) == 0)
      {
        [(TITypingEffortAnalyzer *)self addSpecialKeyActionsForFirstTouch:v24 andLastTouch:v30 fromLayout:v23 toActionSummary:summaryCopy emojiSearchMode:mode];
      }
    }

    else
    {
LABEL_18:
      if (IXACanLogMessageAtLevel())
      {
        candidate = IXADefaultLogFacility();
        if (os_log_type_enabled(candidate, OS_LOG_TYPE_DEBUG))
        {
          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s An incomplete touch path was detected", "-[TITypingEffortAnalyzer addTouchRelatedActionsForTouches:layouts:acceptedCandidate:toActionSummary:keyboardInputTouches:pathTouches:emojiSearchMode:]"];
          *buf = 138412290;
          v45 = v36;
          _os_log_debug_impl(&dword_22CA55000, candidate, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

LABEL_21:
      }
    }

    v33 = [v19 count] - 1;
    if (v33 >= 0)
    {
      do
      {
        v34 = [v19 objectAtIndex:v33];
        integerValue2 = [v34 integerValue];

        [v15 removeObjectAtIndex:integerValue2];
        [v16 removeObjectAtIndex:integerValue2];
        --v33;
      }

      while (v33 != -1);
    }

    v17 = 0x277CCA000;
  }

  while ([v15 count]);
LABEL_33:

  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)isTenKeyInputMode:(id)mode
{
  modeCopy = mode;
  v4 = TIInputModeGetNormalizedIdentifier();
  v5 = TIInputModeGetSWLayout();

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@sw=%@", v4, v5];
  v7 = [&unk_28400BAF0 containsObject:v6];

  return v7;
}

- (BOOL)isPopupVariantInput:(id)input inputMode:(id)mode
{
  modeCopy = mode;
  if ([input isPopupVariant])
  {
    v7 = ![(TITypingEffortAnalyzer *)self isTenKeyInputMode:modeCopy];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isFlickInput:(id)input
{
  inputCopy = input;
  if ([inputCopy isFlick])
  {
    isGesture = 1;
  }

  else
  {
    isGesture = [inputCopy isGesture];
  }

  return isGesture;
}

- (id)countActions
{
  v3 = objc_opt_new();
  userActionHistory = [(TITypingSession *)self->_session userActionHistory];
  v5 = [userActionHistory count];

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = v5 - 1;
    v9 = v5 & 0x7FFFFFFF;
    do
    {
      v10 = v7;
      userActionHistory2 = [(TITypingSession *)self->_session userActionHistory];
      v7 = [userActionHistory2 objectAtIndex:v6];

      keyboardState = [v7 keyboardState];
      emojiSearchMode = [keyboardState emojiSearchMode];

      actionType = [v7 actionType];
      if (actionType <= 2)
      {
        if (actionType)
        {
          if (actionType == 1)
          {
            [(TITypingEffortAnalyzer *)self addActionsForDeleteWord:v7 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
          }

          else if (actionType == 2)
          {
            if (v6 >= v8)
            {
              v16 = 0;
            }

            else
            {
              userActionHistory3 = [(TITypingSession *)self->_session userActionHistory];
              v16 = [userActionHistory3 objectAtIndex:v6 + 1];
            }

            [(TITypingEffortAnalyzer *)self addActionsForCursorEvent:v7 lastAction:v10 nextAction:v16 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
          }
        }

        else
        {
          [(TITypingEffortAnalyzer *)self addActionsForWordEntry:v7 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
        }
      }

      else if (actionType > 7)
      {
        if (actionType == 8)
        {
          [(TITypingEffortAnalyzer *)self addActionsForCut:v7 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
        }

        else if (actionType == 9)
        {
          [(TITypingEffortAnalyzer *)self addActionsForPaste:v7 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
        }
      }

      else if (actionType == 3)
      {
        [(TITypingEffortAnalyzer *)self addActionsForDocumentStateChange:v7 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
      }

      else if (actionType == 6)
      {
        [(TITypingEffortAnalyzer *)self addActionsForArrowKey:v7 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
      }

      ++v6;
    }

    while (v9 != v6);
  }

  return v3;
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  if (confidence)
  {
    objc_storeStrong(&self->_session, session);
    objc_storeStrong(&self->_alignedSession, alignedSession);
    *&self->_emojiPlaneActive = 0;
    countActions = [(TITypingEffortAnalyzer *)self countActions];
    countOutput = [(TITypingEffortAnalyzer *)self countOutput];
    [(TITypingEffortAnalyzer *)self dispatchEventWithActionSummary:countActions outputSummary:countOutput];
  }

  return confidence != 0;
}

- (TITypingEffortAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TITypingEffortAnalyzer;
  v2 = [(TITypingEffortAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TITypingEffortAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

@end