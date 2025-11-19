@interface TITypingEffortAnalyzer
- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5;
- (BOOL)hasEmojiInKeyboardInputs:(id)a3;
- (BOOL)isEmojiSearchCandidateSelection:(id)a3;
- (BOOL)isFlickInput:(id)a3;
- (BOOL)isPopupVariantInput:(id)a3 inputMode:(id)a4;
- (BOOL)isTenKeyInputMode:(id)a3;
- (TITypingEffortAnalyzer)init;
- (id)countActions;
- (id)countOutput;
- (id)keyStringWithCode:(int64_t)a3 fromLayout:(id)a4;
- (int)countComposedCharactersInText:(id)a3;
- (void)addCountsForAlignedEntry:(id)a3 toOutputSummary:(id)a4;
- (void)addCountsForEmojiInputs:(id)a3 toOutputSummary:(id)a4;
- (void)addCountsForPropertyWithName:(id)a3 andEmojiSearchPropertyName:(id)a4 contributesToTotal:(BOOL)a5 toActionSummary:(id)a6 emojiSearchMode:(BOOL)a7;
- (void)addCountsForWord:(id)a3 toOutputSummary:(id)a4;
- (void)addTouchRelatedActionsForTouches:(id)a3 layouts:(id)a4 acceptedCandidate:(id)a5 toActionSummary:(id)a6 keyboardInputTouches:(id)a7 pathTouches:(id)a8 emojiSearchMode:(BOOL)a9;
- (void)dispatchEventWithActionSummary:(id)a3 outputSummary:(id)a4;
- (void)registerEventSpec;
@end

@implementation TITypingEffortAnalyzer

- (void)dispatchEventWithActionSummary:(id)a3 outputSummary:(id)a4
{
  v147[86] = *MEMORY[0x277D85DE8];
  session = self->_session;
  v7 = a4;
  v8 = a3;
  v9 = [(TITypingSession *)session userActionHistory];
  v10 = [v9 lastObject];
  v11 = [v10 keyboardState];

  v12 = [TIKBAnalyticsMetricsContext alloc];
  v13 = [(TITypingSession *)self->_session sessionParams];
  v14 = [v13 activeInputModes];
  v15 = [(TITypingSession *)self->_session sessionParams];
  v16 = [v15 testingParameters];
  v145 = v11;
  v17 = [(TIKBAnalyticsMetricsContext *)v12 initWithKeyboardState:v11 activeInputModes:v14 testingParameters:v16];

  v18 = [(TITypingSession *)self->_session userActionHistory];
  v19 = [v18 firstObject];
  v20 = [v19 keyboardState];
  v21 = [v20 documentState];

  v22 = [v21 contextBeforeInput];
  if (v22)
  {
    v23 = [v21 contextBeforeInput];
    v24 = [v23 length] != 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v21 contextAfterInput];
  if (v25)
  {
    v26 = [v21 contextAfterInput];
    v27 = [v26 length] != 0;
  }

  else
  {
    v27 = 0;
  }

  v28 = [v21 selectedText];
  v144 = v21;
  if (v28)
  {
    v29 = [v21 selectedText];
    v30 = [v29 length] != 0;

    v27 |= v30;
  }

  v31 = v27 | v24;
  v32 = [v8 totalInputActions] > 0;
  v33 = [v7 charactersOutput] > 0;
  self->_hasCursorMovement = [v8 cursorMovements] > 0;
  v34 = [v8 emojiSelections];
  v35 = [v8 emojiCandidateSelections] + v34;
  v36 = [v8 emojiSearchCandidateSelections];
  if ((v35 + v36 < 0) ^ __OFADD__(v35, v36) | (v35 + v36 == 0))
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
  v143 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "totalInputActions")}];
  v147[0] = v143;
  v146[1] = @"characterKeyTaps";
  v142 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "characterKeyTaps")}];
  v147[1] = v142;
  v146[2] = @"backspaceKeyTaps";
  v141 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "backspaceKeyTaps")}];
  v147[2] = v141;
  v146[3] = @"spaceKeyTaps";
  v140 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "spaceKeyTaps")}];
  v147[3] = v140;
  v146[4] = @"returnKeyTaps";
  v139 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "returnKeyTaps")}];
  v147[4] = v139;
  v146[5] = @"shiftKeyTaps";
  v138 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "shiftKeyTaps")}];
  v147[5] = v138;
  v146[6] = @"moreKeyTaps";
  v137 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "moreKeyTaps")}];
  v147[6] = v137;
  v146[7] = @"emojiKeyTaps";
  v136 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiKeyTaps")}];
  v147[7] = v136;
  v146[8] = @"unknownKeyTaps";
  v135 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "unknownKeyTaps")}];
  v147[8] = v135;
  v146[9] = @"paths";
  v134 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "paths")}];
  v147[9] = v134;
  v146[10] = @"pathsWithWeight1";
  v133 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pathsWithWeight1")}];
  v147[10] = v133;
  v146[11] = @"pathsWithWeight2";
  v132 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pathsWithWeight2")}];
  v147[11] = v132;
  v146[12] = @"pathsWithWeight3";
  v131 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pathsWithWeight3")}];
  v147[12] = v131;
  v146[13] = @"pathsWithWeight4";
  v130 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pathsWithWeight4")}];
  v147[13] = v130;
  v146[14] = @"pathsWithWeight5";
  v129 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pathsWithWeight5")}];
  v147[14] = v129;
  v146[15] = @"pathsWithWeight6";
  v128 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pathsWithWeight6")}];
  v147[15] = v128;
  v146[16] = @"pathsWithWeight7";
  v127 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pathsWithWeight7")}];
  v147[16] = v127;
  v146[17] = @"pathsWithWeight8";
  v126 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pathsWithWeight8")}];
  v147[17] = v126;
  v146[18] = @"pathsWithWeight9";
  v125 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pathsWithWeight9")}];
  v147[18] = v125;
  v146[19] = @"pathsWithWeight10";
  v124 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pathsWithWeight10")}];
  v147[19] = v124;
  v146[20] = @"flicks";
  v123 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "flicks")}];
  v147[20] = v123;
  v146[21] = @"gestures";
  v122 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "gestures")}];
  v147[21] = v122;
  v146[22] = @"popupVariants";
  v121 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "popupVariants")}];
  v147[22] = v121;
  v146[23] = @"cursorMovements";
  v120 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "cursorMovements")}];
  v147[23] = v120;
  v146[24] = @"candidateSelections";
  v119 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "candidateSelections")}];
  v147[24] = v119;
  v146[25] = @"cuts";
  v118 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "cuts")}];
  v147[25] = v118;
  v146[26] = @"pastes";
  v117 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pastes")}];
  v147[26] = v117;
  v146[27] = @"emojiSelections";
  v116 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSelections")}];
  v147[27] = v116;
  v146[28] = @"emojiCandidateSelections";
  v115 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiCandidateSelections")}];
  v147[28] = v115;
  v146[29] = @"emojiSearchCharacterKeyTaps";
  v114 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchCharacterKeyTaps")}];
  v147[29] = v114;
  v146[30] = @"emojiSearchBackspaceKeyTaps";
  v113 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchBackspaceKeyTaps")}];
  v147[30] = v113;
  v146[31] = @"emojiSearchSpaceKeyTaps";
  v112 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchSpaceKeyTaps")}];
  v147[31] = v112;
  v146[32] = @"emojiSearchShiftKeyTaps";
  v111 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchShiftKeyTaps")}];
  v147[32] = v111;
  v146[33] = @"emojiSearchMoreKeyTaps";
  v110 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchMoreKeyTaps")}];
  v147[33] = v110;
  v146[34] = @"emojiSearchEmojiKeyTaps";
  v109 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchEmojiKeyTaps")}];
  v147[34] = v109;
  v146[35] = @"emojiSearchUnknownKeyTaps";
  v108 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchUnknownKeyTaps")}];
  v147[35] = v108;
  v146[36] = @"emojiSearchPaths";
  v107 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchPaths")}];
  v147[36] = v107;
  v146[37] = @"emojiSearchPathsWithWeight1";
  v106 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchPathsWithWeight1")}];
  v147[37] = v106;
  v146[38] = @"emojiSearchPathsWithWeight2";
  v105 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchPathsWithWeight2")}];
  v147[38] = v105;
  v146[39] = @"emojiSearchPathsWithWeight3";
  v104 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchPathsWithWeight3")}];
  v147[39] = v104;
  v146[40] = @"emojiSearchPathsWithWeight4";
  v103 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchPathsWithWeight4")}];
  v147[40] = v103;
  v146[41] = @"emojiSearchPathsWithWeight5";
  v102 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchPathsWithWeight5")}];
  v147[41] = v102;
  v146[42] = @"emojiSearchPathsWithWeight6";
  v101 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchPathsWithWeight6")}];
  v147[42] = v101;
  v146[43] = @"emojiSearchPathsWithWeight7";
  v100 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchPathsWithWeight7")}];
  v147[43] = v100;
  v146[44] = @"emojiSearchPathsWithWeight8";
  v99 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchPathsWithWeight8")}];
  v147[44] = v99;
  v146[45] = @"emojiSearchPathsWithWeight9";
  v98 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchPathsWithWeight9")}];
  v147[45] = v98;
  v146[46] = @"emojiSearchPathsWithWeight10";
  v97 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchPathsWithWeight10")}];
  v147[46] = v97;
  v146[47] = @"emojiSearchFlicks";
  v96 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchFlicks")}];
  v147[47] = v96;
  v146[48] = @"emojiSearchGestures";
  v95 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchGestures")}];
  v147[48] = v95;
  v146[49] = @"emojiSearchPopupVariants";
  v94 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchPopupVariants")}];
  v147[49] = v94;
  v146[50] = @"emojiSearchCursorMovements";
  v93 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchCursorMovements")}];
  v147[50] = v93;
  v146[51] = @"emojiSearchCandidateSelections";
  v92 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchCandidateSelections")}];
  v147[51] = v92;
  v146[52] = @"emojiSearchCuts";
  v91 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "emojiSearchCuts")}];
  v147[52] = v91;
  v146[53] = @"emojiSearchPastes";
  v40 = MEMORY[0x277CCABB0];
  v41 = [v8 emojiSearchPastes];

  v90 = [v40 numberWithInt:v41];
  v147[53] = v90;
  v146[54] = @"emojisOutput";
  v89 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "emojisOutput")}];
  v147[54] = v89;
  v146[55] = @"wordsOutput";
  v88 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "wordsOutput")}];
  v147[55] = v88;
  v146[56] = @"charactersOutput";
  v87 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "charactersOutput")}];
  v147[56] = v87;
  v146[57] = @"char1WordsOutput";
  v86 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "char1WordsOutput")}];
  v147[57] = v86;
  v146[58] = @"char2WordsOutput";
  v85 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "char2WordsOutput")}];
  v147[58] = v85;
  v146[59] = @"char3WordsOutput";
  v84 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "char3WordsOutput")}];
  v147[59] = v84;
  v146[60] = @"char4WordsOutput";
  v83 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "char4WordsOutput")}];
  v147[60] = v83;
  v146[61] = @"char5WordsOutput";
  v82 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "char5WordsOutput")}];
  v147[61] = v82;
  v146[62] = @"char6WordsOutput";
  v81 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "char6WordsOutput")}];
  v147[62] = v81;
  v146[63] = @"char7WordsOutput";
  v80 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "char7WordsOutput")}];
  v147[63] = v80;
  v146[64] = @"char8WordsOutput";
  v79 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "char8WordsOutput")}];
  v147[64] = v79;
  v146[65] = @"char9PlusWordsOutput";
  v42 = MEMORY[0x277CCABB0];
  v43 = [v7 char9PlusWordsOutput];

  v78 = [v42 numberWithInt:v43];
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
  v71 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v70 = [v71 featureUsageMetricFromName:kFeatureKeyboardUsage forContext:v17];
  v147[71] = v70;
  v146[72] = kFeatureContinuousPathUsage;
  v69 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v68 = [v69 featureUsageMetricFromName:kFeatureContinuousPathUsage forContext:v17];
  v147[72] = v68;
  v146[73] = kFeatureAutocorrectionUsage;
  v67 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v66 = [v67 featureUsageMetricFromName:kFeatureAutocorrectionUsage forContext:v17];
  v147[73] = v66;
  v146[74] = kFeatureCandidateBarUsage;
  v65 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v64 = [v65 featureUsageMetricFromName:kFeatureCandidateBarUsage forContext:v17];
  v147[74] = v64;
  v146[75] = kFeatureMultilingualUsage;
  v63 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v62 = [v63 featureUsageMetricFromName:kFeatureMultilingualUsage forContext:v17];
  v147[75] = v62;
  v146[76] = kFeatureStringTypingSpeed;
  v61 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v60 = [v61 featureUsageMetricFromName:kFeatureStringTypingSpeed forContext:v17];
  v147[76] = v60;
  v146[77] = kFeatureStringAssetAvailabilityStatus;
  v59 = [(TITypingSession *)self->_session sessionParams];
  v44 = [v59 assetAvailabilityStatus];
  v45 = @"Installed";
  if (!v44)
  {
    v45 = @"Unavailable";
  }

  v46 = v45;
  v147[77] = v46;
  v146[78] = kFeatureStringSessionAlignmentConfidence;
  v47 = [MEMORY[0x277D6F320] bucketRatioWithValue:10 bucketCount:v39];
  v147[78] = v47;
  v146[79] = kFeatureStringKeyboardLanguage;
  v48 = [(TIAnalyticsMetricsContext *)v17 inputLanguage];
  v147[79] = v48;
  v146[80] = kFeatureStringKeyboardRegion;
  v49 = [(TIAnalyticsMetricsContext *)v17 inputRegion];
  v147[80] = v49;
  v146[81] = kFeatureStringKeyboardVariant;
  v50 = [(TIKBAnalyticsMetricsContext *)v17 inputVariant];
  v147[81] = v50;
  v146[82] = kFeatureStringKeyboardSecondaryLanguage;
  v51 = [(TIKBAnalyticsMetricsContext *)v17 secondaryLanguage];
  v147[82] = v51;
  v146[83] = kFeatureStringKeyboardSecondaryRegion;
  [(TIKBAnalyticsMetricsContext *)v17 secondaryRegion];
  v53 = v52 = v17;
  v147[83] = v53;
  v146[84] = kFeatureStringKeyboardLayout;
  v54 = [(TIKBAnalyticsMetricsContext *)v52 layoutName];
  v147[84] = v54;
  v146[85] = kFeatureStringKeyboardType;
  v55 = [TIKBAnalyticsMetricsContext keyboardTypeEnumToString:[(TIKBAnalyticsMetricsContext *)v52 keyboardType]];
  v147[85] = v55;
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:86];

  v56 = [MEMORY[0x277D6F318] sharedInstance];
  v57 = [(TIKBAnalyticsMetricsContext *)v52 testingParameters];
  [v56 dispatchEventWithName:@"typingEffort" payload:v77 testingParameters:v57 allowSparsePayload:0];

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

  v26 = [MEMORY[0x277D6F318] sharedInstance];
  [v26 registerEventSpec:v90];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)addCountsForPropertyWithName:(id)a3 andEmojiSearchPropertyName:(id)a4 contributesToTotal:(BOOL)a5 toActionSummary:(id)a6 emojiSearchMode:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v20 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [v20 isEqualToString:@"emojiSelections"] | v7;
  if (v14 == 1 && !self->_emojiPlaneActive)
  {
    [v13 setEmojiKeyTaps:{objc_msgSend(v13, "emojiKeyTaps") + 1}];
    [v13 setTotalInputActions:{objc_msgSend(v13, "totalInputActions") + 1}];
    self->_emojiPlaneActive = 1;
  }

  if (v7)
  {
    if (!self->_emojiSearchActive)
    {
      [v13 setEmojiSearchCursorMovements:{objc_msgSend(v13, "emojiSearchCursorMovements") + 1}];
      [v13 setTotalInputActions:{objc_msgSend(v13, "totalInputActions") + 1}];
      self->_emojiSearchActive = 1;
    }
  }

  else
  {
    if (self->_emojiSearchActive)
    {
      [v13 setEmojiSearchEmojiKeyTaps:{objc_msgSend(v13, "emojiSearchEmojiKeyTaps") + 1}];
      [v13 setReturnKeyTaps:{objc_msgSend(v13, "returnKeyTaps") - 1}];
      self->_emojiSearchActive = 0;
    }

    if ((v14 & 1) == 0 && self->_emojiPlaneActive)
    {
      [v13 setMoreKeyTaps:{objc_msgSend(v13, "moreKeyTaps") + 1}];
      [v13 setTotalInputActions:{objc_msgSend(v13, "totalInputActions") + 1}];
      self->_emojiPlaneActive = 0;
    }
  }

  if (v12 != 0 && v7)
  {
    v15 = v12;
  }

  else
  {
    v15 = v20;
  }

  v16 = v15;
  v17 = [v13 valueForKey:v16];
  v18 = [v17 intValue];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:(v18 + 1)];
  [v13 setValue:v19 forKey:v16];

  if (v9)
  {
    [v13 setTotalInputActions:{objc_msgSend(v13, "totalInputActions") + 1}];
  }
}

- (int)countComposedCharactersInText:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = a3;
  v4 = [v3 length];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__TITypingEffortAnalyzer_countComposedCharactersInText___block_invoke;
  v6[3] = &unk_278732850;
  v6[4] = &v7;
  [v3 enumerateSubstringsInRange:0 options:v4 usingBlock:{2, v6}];

  LODWORD(v3) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (BOOL)hasEmojiInKeyboardInputs:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) string];
        v8 = [v7 _containsEmoji];

        if (v8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)addCountsForWord:(id)a3 toOutputSummary:(id)a4
{
  v7 = a4;
  v6 = [(TITypingEffortAnalyzer *)self countComposedCharactersInText:a3];
  if (v6 >= 1)
  {
    if (v6 > 4)
    {
      if (v6 > 6)
      {
        if (v6 == 7)
        {
          [v7 setChar7WordsOutput:{objc_msgSend(v7, "char7WordsOutput") + 1}];
        }

        else if (v6 == 8)
        {
          [v7 setChar8WordsOutput:{objc_msgSend(v7, "char8WordsOutput") + 1}];
        }

        else
        {
          [v7 setChar9PlusWordsOutput:{objc_msgSend(v7, "char9PlusWordsOutput") + 1}];
        }
      }

      else if (v6 == 5)
      {
        [v7 setChar5WordsOutput:{objc_msgSend(v7, "char5WordsOutput") + 1}];
      }

      else
      {
        [v7 setChar6WordsOutput:{objc_msgSend(v7, "char6WordsOutput") + 1}];
      }
    }

    else if (v6 > 2)
    {
      if (v6 == 3)
      {
        [v7 setChar3WordsOutput:{objc_msgSend(v7, "char3WordsOutput") + 1}];
      }

      else
      {
        [v7 setChar4WordsOutput:{objc_msgSend(v7, "char4WordsOutput") + 1}];
      }
    }

    else if (v6 == 1)
    {
      [v7 setChar1WordsOutput:{objc_msgSend(v7, "char1WordsOutput") + 1}];
    }

    else
    {
      [v7 setChar2WordsOutput:{objc_msgSend(v7, "char2WordsOutput") + 1}];
    }

    [v7 setWordsOutput:{objc_msgSend(v7, "wordsOutput") + 1}];
  }
}

- (void)addCountsForEmojiInputs:(id)a3 toOutputSummary:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) string];
        v12 = [v11 _containsEmoji];

        if (v12)
        {
          [v6 setEmojisOutput:{objc_msgSend(v6, "emojisOutput") + 1}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addCountsForAlignedEntry:(id)a3 toOutputSummary:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v20 originalWord];
  v8 = [v7 editedEntry];
  v9 = [v20 originalWord];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 editedEntry];

    v10 = v11;
  }

  v12 = [v10 acceptedCandidate];
  v13 = [v12 candidate];
  v14 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v15 = [v13 stringByTrimmingCharactersInSet:v14];

  v16 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v17 = [v15 stringByTrimmingCharactersInSet:v16];

  v18 = [v10 keyboardState];
  LOBYTE(v15) = [v18 emojiSearchMode];

  if ((v15 & 1) == 0)
  {
    if ([v17 _containsEmoji])
    {
      [v6 setEmojisOutput:{objc_msgSend(v6, "emojisOutput") + 1}];
    }

    else
    {
      v19 = [v20 alignedKeyboardInputs];
      [(TITypingEffortAnalyzer *)self addCountsForEmojiInputs:v19 toOutputSummary:v6];

      [(TITypingEffortAnalyzer *)self addCountsForWord:v17 toOutputSummary:v6];
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
  v4 = [(TITypingSessionAligned *)self->_alignedSession alignedEntries];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(TITypingEffortAnalyzer *)self addCountsForAlignedEntry:*(*(&v12 + 1) + 8 * i) toOutputSummary:v3];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [(TITypingSessionAligned *)self->_alignedSession completeText];
  [v3 setCharactersOutput:{-[TITypingEffortAnalyzer countComposedCharactersInText:](self, "countComposedCharactersInText:", v9)}];

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isEmojiSearchCandidateSelection:(id)a3
{
  v3 = a3;
  v4 = [v3 acceptedString];
  if (v4)
  {
    v5 = [v3 acceptedString];
    v6 = [v5 length];

    if (v6 && ([v3 acceptedCandidate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isContinuousPathConversion"), v7, (v8 & 1) == 0) && (objc_msgSend(v3, "wordEntryType") & 4) != 0)
    {
      v10 = [v3 acceptedCandidate];
      v11 = [v10 candidate];
      LOBYTE(v4) = [v11 _containsEmoji];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (id)keyStringWithCode:(int64_t)a3 fromLayout:(id)a4
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
  v6[5] = a3;
  [a4 enumerateKeysUsingBlock:v6];
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

- (void)addTouchRelatedActionsForTouches:(id)a3 layouts:(id)a4 acceptedCandidate:(id)a5 toActionSummary:(id)a6 keyboardInputTouches:(id)a7 pathTouches:(id)a8 emojiSearchMode:(BOOL)a9
{
  v46 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v15 = [a3 mutableCopy];
  v38 = v14;
  v16 = [v14 mutableCopy];
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
    v21 = [v20 integerValue];

    v22 = [(TITypingSession *)self->_session layouts];
    v23 = [v22 objectAtIndexedSubscript:v21];

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
      v28 = [v27 pathIndex];
      if (v28 != [v24 pathIndex])
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
      if (v42 && [v42 containsObject:v30])
      {
        v32 = [v39 candidate];
        [(TITypingEffortAnalyzer *)self addPathWeightActionsForTouches:v18 withLayout:v23 forWord:v32 toActionSummary:v40 emojiSearchMode:a9];
        goto LABEL_21;
      }

      if (([v41 containsObject:v30] & 1) == 0)
      {
        [(TITypingEffortAnalyzer *)self addSpecialKeyActionsForFirstTouch:v24 andLastTouch:v30 fromLayout:v23 toActionSummary:v40 emojiSearchMode:a9];
      }
    }

    else
    {
LABEL_18:
      if (IXACanLogMessageAtLevel())
      {
        v32 = IXADefaultLogFacility();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s An incomplete touch path was detected", "-[TITypingEffortAnalyzer addTouchRelatedActionsForTouches:layouts:acceptedCandidate:toActionSummary:keyboardInputTouches:pathTouches:emojiSearchMode:]"];
          *buf = 138412290;
          v45 = v36;
          _os_log_debug_impl(&dword_22CA55000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
        v35 = [v34 integerValue];

        [v15 removeObjectAtIndex:v35];
        [v16 removeObjectAtIndex:v35];
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

- (BOOL)isTenKeyInputMode:(id)a3
{
  v3 = a3;
  v4 = TIInputModeGetNormalizedIdentifier();
  v5 = TIInputModeGetSWLayout();

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@sw=%@", v4, v5];
  v7 = [&unk_28400BAF0 containsObject:v6];

  return v7;
}

- (BOOL)isPopupVariantInput:(id)a3 inputMode:(id)a4
{
  v6 = a4;
  if ([a3 isPopupVariant])
  {
    v7 = ![(TITypingEffortAnalyzer *)self isTenKeyInputMode:v6];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isFlickInput:(id)a3
{
  v3 = a3;
  if ([v3 isFlick])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isGesture];
  }

  return v4;
}

- (id)countActions
{
  v3 = objc_opt_new();
  v4 = [(TITypingSession *)self->_session userActionHistory];
  v5 = [v4 count];

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = v5 - 1;
    v9 = v5 & 0x7FFFFFFF;
    do
    {
      v10 = v7;
      v11 = [(TITypingSession *)self->_session userActionHistory];
      v7 = [v11 objectAtIndex:v6];

      v12 = [v7 keyboardState];
      v13 = [v12 emojiSearchMode];

      v14 = [v7 actionType];
      if (v14 <= 2)
      {
        if (v14)
        {
          if (v14 == 1)
          {
            [(TITypingEffortAnalyzer *)self addActionsForDeleteWord:v7 toActionSummary:v3 emojiSearchMode:v13];
          }

          else if (v14 == 2)
          {
            if (v6 >= v8)
            {
              v16 = 0;
            }

            else
            {
              v15 = [(TITypingSession *)self->_session userActionHistory];
              v16 = [v15 objectAtIndex:v6 + 1];
            }

            [(TITypingEffortAnalyzer *)self addActionsForCursorEvent:v7 lastAction:v10 nextAction:v16 toActionSummary:v3 emojiSearchMode:v13];
          }
        }

        else
        {
          [(TITypingEffortAnalyzer *)self addActionsForWordEntry:v7 toActionSummary:v3 emojiSearchMode:v13];
        }
      }

      else if (v14 > 7)
      {
        if (v14 == 8)
        {
          [(TITypingEffortAnalyzer *)self addActionsForCut:v7 toActionSummary:v3 emojiSearchMode:v13];
        }

        else if (v14 == 9)
        {
          [(TITypingEffortAnalyzer *)self addActionsForPaste:v7 toActionSummary:v3 emojiSearchMode:v13];
        }
      }

      else if (v14 == 3)
      {
        [(TITypingEffortAnalyzer *)self addActionsForDocumentStateChange:v7 toActionSummary:v3 emojiSearchMode:v13];
      }

      else if (v14 == 6)
      {
        [(TITypingEffortAnalyzer *)self addActionsForArrowKey:v7 toActionSummary:v3 emojiSearchMode:v13];
      }

      ++v6;
    }

    while (v9 != v6);
  }

  return v3;
}

- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (a5)
  {
    objc_storeStrong(&self->_session, a3);
    objc_storeStrong(&self->_alignedSession, a4);
    *&self->_emojiPlaneActive = 0;
    v11 = [(TITypingEffortAnalyzer *)self countActions];
    v12 = [(TITypingEffortAnalyzer *)self countOutput];
    [(TITypingEffortAnalyzer *)self dispatchEventWithActionSummary:v11 outputSummary:v12];
  }

  return a5 != 0;
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