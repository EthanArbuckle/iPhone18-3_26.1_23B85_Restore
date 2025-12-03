@interface TICoreAnalyticsEventDispatcher
- (void)sessionDidEnd:(id)end aligned:(id)aligned;
@end

@implementation TICoreAnalyticsEventDispatcher

- (void)sessionDidEnd:(id)end aligned:(id)aligned
{
  v30[7] = *MEMORY[0x277D85DE8];
  endCopy = end;
  alignedCopy = aligned;
  v23 = objc_opt_new();
  v8 = objc_opt_new();
  selfCopy = self;
  [(TICoreAnalyticsEventDispatcher *)self setRevisionRateAnalyzer:v8];

  v9 = objc_opt_new();
  v30[0] = v9;
  v10 = objc_opt_new();
  v30[1] = v10;
  v11 = objc_opt_new();
  v30[2] = v11;
  v12 = objc_opt_new();
  v30[3] = v12;
  v13 = objc_opt_new();
  v30[4] = v13;
  v14 = objc_opt_new();
  v30[5] = v14;
  v15 = objc_opt_new();
  v30[6] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:7];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v25 + 1) + 8 * v21) analyzeSession:endCopy alignedSession:alignedCopy withConfidence:{objc_msgSend(*(*(&v25 + 1) + 8 * v21), "evaluateConfidenceInSession:alignedSession:", endCopy, alignedCopy, v23)}];
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }

  [v23 analyzeSession:endCopy alignedSession:alignedCopy withConfidence:{objc_msgSend(v23, "evaluateConfidenceInSession:alignedSession:", endCopy, alignedCopy)}];
  -[TIRevisionRateAnalyzer setHasEmojiInput:](selfCopy->_revisionRateAnalyzer, "setHasEmojiInput:", [v23 hasEmojiInput]);
  -[TIRevisionRateAnalyzer setHasCursorMovement:](selfCopy->_revisionRateAnalyzer, "setHasCursorMovement:", [v23 hasCursorMovement]);
  [(TIRevisionRateAnalyzer *)selfCopy->_revisionRateAnalyzer analyzeSession:endCopy alignedSession:alignedCopy withConfidence:[(TIRevisionRateAnalyzer *)selfCopy->_revisionRateAnalyzer evaluateConfidenceInSession:endCopy alignedSession:alignedCopy]];

  v22 = *MEMORY[0x277D85DE8];
}

@end