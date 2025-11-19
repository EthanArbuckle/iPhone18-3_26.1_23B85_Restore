@interface TITypingSessionBenchmarkAnalyzer
- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5;
- (TITypingSessionBenchmarkAnalyzer)init;
- (void)dispatchEvent;
- (void)registerEventSpec;
@end

@implementation TITypingSessionBenchmarkAnalyzer

- (void)dispatchEvent
{
  v32[15] = *MEMORY[0x277D85DE8];
  v3 = [(TITypingSession *)self->_session userActionHistory];
  v4 = [v3 lastObject];
  v30 = [v4 keyboardState];

  v5 = [TIKBAnalyticsMetricsContext alloc];
  v6 = [(TITypingSession *)self->_session sessionParams];
  v7 = [v6 activeInputModes];
  v8 = [(TITypingSession *)self->_session sessionParams];
  v9 = [v8 testingParameters];
  v10 = [(TIKBAnalyticsMetricsContext *)v5 initWithKeyboardState:v30 activeInputModes:v7 testingParameters:v9];

  v31[0] = @"typingSessionConfidence";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_typingSessionConfidence];
  v32[0] = v29;
  v31[1] = kFeatureStringSessionAlignmentConfidence;
  v28 = [MEMORY[0x277D6F320] bucketRatioWithValue:10 bucketCount:self->_sessionAlignmentConfidence];
  v32[1] = v28;
  v31[2] = @"candidatesAccepted";
  v27 = [MEMORY[0x277CCABB0] numberWithInt:{-[TITypingSession candidatesAccepted](self->_session, "candidatesAccepted")}];
  v32[2] = v27;
  v31[3] = @"candidatesAcceptedWithText";
  v26 = [MEMORY[0x277CCABB0] numberWithInt:{-[TITypingSession candidatesAcceptedWithText](self->_session, "candidatesAcceptedWithText")}];
  v32[3] = v26;
  v31[4] = @"sessionWords";
  v25 = [MEMORY[0x277CCABB0] numberWithInt:self->_sessionWords];
  v32[4] = v25;
  v31[5] = @"sessionWordsWithText";
  v24 = [MEMORY[0x277CCABB0] numberWithInt:self->_sessionWordsWithText];
  v32[5] = v24;
  v31[6] = @"alignedWords";
  v23 = [MEMORY[0x277CCABB0] numberWithInt:self->_alignedWords];
  v32[6] = v23;
  v31[7] = @"alignedWordsWithText";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_alignedWordsWithText];
  v32[7] = v11;
  v31[8] = kFeatureStringKeyboardLanguage;
  v12 = [(TIAnalyticsMetricsContext *)v10 inputLanguage];
  v32[8] = v12;
  v31[9] = kFeatureStringKeyboardRegion;
  v13 = [(TIAnalyticsMetricsContext *)v10 inputRegion];
  v32[9] = v13;
  v31[10] = kFeatureStringKeyboardVariant;
  v14 = [(TIKBAnalyticsMetricsContext *)v10 inputVariant];
  v32[10] = v14;
  v31[11] = kFeatureStringKeyboardSecondaryLanguage;
  v15 = [(TIKBAnalyticsMetricsContext *)v10 secondaryLanguage];
  v32[11] = v15;
  v31[12] = kFeatureStringKeyboardSecondaryRegion;
  v16 = [(TIKBAnalyticsMetricsContext *)v10 secondaryRegion];
  v32[12] = v16;
  v31[13] = kFeatureStringKeyboardLayout;
  v17 = [(TIKBAnalyticsMetricsContext *)v10 layoutName];
  v32[13] = v17;
  v31[14] = kFeatureStringKeyboardType;
  v18 = [TIKBAnalyticsMetricsContext keyboardTypeEnumToString:[(TIKBAnalyticsMetricsContext *)v10 keyboardType]];
  v32[14] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:15];

  v20 = [MEMORY[0x277D6F318] sharedInstance];
  v21 = [(TIKBAnalyticsMetricsContext *)v10 testingParameters];
  [v20 dispatchEventWithName:@"typingSessionBenchmark" payload:v19 testingParameters:v21 allowSparsePayload:0];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)registerEventSpec
{
  v22[15] = *MEMORY[0x277D85DE8];
  v17 = MEMORY[0x277D6F300];
  v21 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"typingSessionConfidence" minValue:&unk_28400BDA8 maxValue:&unk_28400BDC0 significantDigits:0];
  v22[0] = v21;
  v20 = [MEMORY[0x277D6F308] integerFieldSpecWithName:kFeatureStringSessionAlignmentConfidence minValue:&unk_28400BDA8 maxValue:&unk_28400BDD8 significantDigits:0];
  v22[1] = v20;
  v19 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"candidatesAccepted" minValue:&unk_28400BDA8 maxValue:0 significantDigits:0];
  v22[2] = v19;
  v18 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"candidatesAcceptedWithText" minValue:&unk_28400BDA8 maxValue:0 significantDigits:0];
  v22[3] = v18;
  v16 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"sessionWords" minValue:&unk_28400BDA8 maxValue:0 significantDigits:0];
  v22[4] = v16;
  v15 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"sessionWordsWithText" minValue:&unk_28400BDA8 maxValue:0 significantDigits:0];
  v22[5] = v15;
  v14 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"alignedWords" minValue:&unk_28400BDA8 maxValue:0 significantDigits:0];
  v22[6] = v14;
  v2 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"alignedWordsWithText" minValue:&unk_28400BDA8 maxValue:0 significantDigits:0];
  v22[7] = v2;
  v3 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v22[8] = v3;
  v4 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v22[9] = v4;
  v5 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v22[10] = v5;
  v6 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v22[11] = v6;
  v7 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v22[12] = v7;
  v8 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v22[13] = v8;
  v9 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v22[14] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:15];
  v11 = [v17 eventSpecWithName:@"typingSessionBenchmark" inputModeRequired:0 fieldSpecs:v10];

  v12 = [MEMORY[0x277D6F318] sharedInstance];
  [v12 registerEventSpec:v11];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (a5)
  {
    v30 = v10;
    objc_storeStrong(&self->_session, a3);
    objc_storeStrong(&self->_alignedSession, a4);
    self->_typingSessionConfidence = a5;
    [TIStandardTypingSessionConfidenceEvaluator calculateAlignedTypingSessionConfidence:self->_alignedSession];
    self->_sessionAlignmentConfidence = v11;
    self->_sessionWords = 0;
    self->_sessionWordsWithText = 0;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = [v9 userActionHistory];
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          if (![v17 actionType])
          {
            ++self->_sessionWords;
            v18 = MEMORY[0x277D6F320];
            v19 = [v17 acceptedString];
            LODWORD(v18) = [v18 hasNonWhitespaceNonPunctuationText:v19];

            if (v18)
            {
              ++self->_sessionWordsWithText;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v14);
    }

    self->_alignedWords = 0;
    self->_alignedWordsWithText = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = [(TITypingSessionAligned *)self->_alignedSession alignedEntries];
    v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v31 + 1) + 8 * j);
          ++self->_alignedWords;
          v26 = MEMORY[0x277D6F320];
          v27 = [v25 expectedString];
          LODWORD(v26) = [v26 hasNonWhitespaceNonPunctuationText:v27];

          if (v26)
          {
            ++self->_alignedWordsWithText;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v22);
    }

    [(TITypingSessionBenchmarkAnalyzer *)self dispatchEvent];
    v10 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
  return a5 != 0;
}

- (TITypingSessionBenchmarkAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TITypingSessionBenchmarkAnalyzer;
  v2 = [(TITypingSessionBenchmarkAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TITypingSessionBenchmarkAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

@end