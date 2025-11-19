@interface AutocorrectionResult
- (AutocorrectionResult)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)extractDataFromTypingLog:(id)a3;
- (void)setTagsFromClassifiers:(id)a3;
@end

@implementation AutocorrectionResult

- (void)extractDataFromTypingLog:(id)a3
{
  v4 = a3;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __49__AutocorrectionResult_extractDataFromTypingLog___block_invoke;
  v32 = &unk_279DA0DB8;
  v40 = &v41;
  v12 = v5;
  v33 = v12;
  v13 = v9;
  v34 = v13;
  v14 = v7;
  v35 = v14;
  v15 = v8;
  v36 = v15;
  v16 = v10;
  v37 = v16;
  v17 = v6;
  v38 = v17;
  v18 = v11;
  v39 = v18;
  [v4 enumerateKeystrokesAndPathsForTokensWithBlock:&v29];
  v19 = [v12 copy];
  [(AutocorrectionResult *)self setTouched:v19];

  v20 = [v14 copy];
  [(AutocorrectionResult *)self setPredicted:v20];

  v21 = [v15 copy];
  [(AutocorrectionResult *)self setInlineCompletions:v21];

  v22 = [v13 copy];
  [(AutocorrectionResult *)self setInserted:v22];

  v23 = [v16 copy];
  [(AutocorrectionResult *)self setDocumentStates:v23];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42[3]];
  [(AutocorrectionResult *)self setNumberOfTouches:v24];

  v25 = [v4 getDebugData];
  [(AutocorrectionResult *)self setDebugData:v25];

  v26 = [v17 copy];
  [(AutocorrectionResult *)self setTouchEvents:v26];

  v27 = [v18 copy];
  [(AutocorrectionResult *)self setPathsForWords:v27];

  v28 = [v4 intendedTransliterationSequence];
  if (v28)
  {
    [(AutocorrectionResult *)self setIntendedTransliteration:v28];
  }

  _Block_object_dispose(&v41, 8);
}

void __49__AutocorrectionResult_extractDataFromTypingLog___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v35 = a3;
  v39 = [MEMORY[0x277CBEB18] array];
  v38 = [MEMORY[0x277CBEB18] array];
  v37 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v14 = [v13 touchedKey];
        [v39 addObject:v14];

        v15 = [v13 insertedKey];
        [v7 addObject:v15];

        v16 = [v13 predictionBarState];
        [v37 addObject:v16];

        v17 = [v13 inlineCompletionBarState];
        [v6 addObject:v17];

        v18 = [v13 documentState];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = &stru_287EC4808;
        }

        [v8 addObject:v20];

        v21 = [v13 touch];
        [v38 addObject:v21];

        ++*(*(*(a1 + 88) + 8) + 24);
      }

      v10 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v10);
  }

  v22 = *(a1 + 32);
  v23 = [v39 copy];
  [v22 addObject:v23];

  v24 = *(a1 + 40);
  v25 = [v7 copy];
  [v24 addObject:v25];

  v26 = *(a1 + 48);
  v27 = [v37 copy];
  [v26 addObject:v27];

  v28 = *(a1 + 56);
  v29 = [v6 copy];
  [v28 addObject:v29];

  v30 = *(a1 + 64);
  v31 = [v8 copy];
  [v30 addObject:v31];

  v32 = *(a1 + 72);
  v33 = [v38 copy];
  [v32 addObject:v33];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count") - 1}];
  if (v35)
  {
    [*(a1 + 80) setObject:v35 forKeyedSubscript:v34];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AutocorrectionResult *)self context];
  [v4 encodeObject:v5 forKey:@"ARContext"];

  v6 = [(AutocorrectionResult *)self touched];
  [v4 encodeObject:v6 forKey:@"ARTouched"];

  v7 = [(AutocorrectionResult *)self predicted];
  [v4 encodeObject:v7 forKey:@"ARPredicted"];

  v8 = [(AutocorrectionResult *)self inlineCompletions];
  [v4 encodeObject:v8 forKey:@"ARInlineCompletions"];

  v9 = [(AutocorrectionResult *)self documentStates];
  [v4 encodeObject:v9 forKey:@"ARDocumentStates"];

  v10 = [(AutocorrectionResult *)self inserted];
  [v4 encodeObject:v10 forKey:@"ARInserted"];

  v11 = [(AutocorrectionResult *)self corrected];
  [v4 encodeObject:v11 forKey:@"ARCorrected"];

  v12 = [(AutocorrectionResult *)self intended];
  [v4 encodeObject:v12 forKey:@"ARIntended"];

  v13 = [(AutocorrectionResult *)self intendedTransliteration];
  [v4 encodeObject:v13 forKey:@"ARIntendedTransliteration"];

  v14 = [(AutocorrectionResult *)self input];
  [v4 encodeObject:v14 forKey:@"ARInput"];

  v15 = [(AutocorrectionResult *)self numberOfTouches];
  [v4 encodeObject:v15 forKey:@"ARNumberOfTouches"];

  v16 = [(AutocorrectionResult *)self seed];
  [v4 encodeObject:v16 forKey:@"ARSeed"];

  v17 = [(AutocorrectionResult *)self tags];
  [v4 encodeObject:v17 forKey:@"ARTags"];

  v18 = [(AutocorrectionResult *)self rank];
  [v4 encodeObject:v18 forKey:@"ARRank"];

  v19 = MEMORY[0x277CCAAA0];
  v20 = [(AutocorrectionResult *)self debugData];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = MEMORY[0x277CBEC10];
  }

  v24 = 0;
  v23 = [v19 dataWithJSONObject:v22 options:0 error:&v24];

  [v4 encodeObject:v23 forKey:@"ARDebug"];
}

- (AutocorrectionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = AutocorrectionResult;
  v5 = [(AutocorrectionResult *)&v27 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ARContext"];
    [(AutocorrectionResult *)v5 setContext:v9];

    v10 = [v4 decodeObjectOfClasses:v8 forKey:@"ARTouched"];
    [(AutocorrectionResult *)v5 setTouched:v10];

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"ARPredicted"];
    [(AutocorrectionResult *)v5 setPredicted:v11];

    v12 = [v4 decodeObjectOfClasses:v8 forKey:@"ARInlineCompletions"];
    [(AutocorrectionResult *)v5 setInlineCompletions:v12];

    v13 = [v4 decodeObjectOfClasses:v8 forKey:@"ARDocumentStates"];
    [(AutocorrectionResult *)v5 setDocumentStates:v13];

    v14 = [v4 decodeObjectOfClasses:v8 forKey:@"ARInserted"];
    [(AutocorrectionResult *)v5 setInserted:v14];

    v15 = [v4 decodeObjectOfClasses:v8 forKey:@"ARCorrected"];
    [(AutocorrectionResult *)v5 setCorrected:v15];

    v16 = [v4 decodeObjectOfClasses:v8 forKey:@"ARIntended"];
    [(AutocorrectionResult *)v5 setIntended:v16];

    v17 = [v4 decodeObjectOfClasses:v8 forKey:@"ARIntendedTransliteration"];
    [(AutocorrectionResult *)v5 setIntendedTransliteration:v17];

    v18 = [v4 decodeObjectOfClasses:v8 forKey:@"ARInput"];
    [(AutocorrectionResult *)v5 setInput:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ARNumberOfTouches"];
    [(AutocorrectionResult *)v5 setNumberOfTouches:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ARSeed"];
    [(AutocorrectionResult *)v5 setSeed:v20];

    v21 = [v4 decodeObjectOfClasses:v8 forKey:@"ARTags"];
    [(AutocorrectionResult *)v5 setTags:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ARRank"];
    [(AutocorrectionResult *)v5 setRank:v22];

    [(AutocorrectionResult *)v5 setAggdStatistics:0];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ARDebug"];
    v26 = 0;
    v24 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v23 options:0 error:&v26];
    if ([v24 count])
    {
      [(AutocorrectionResult *)v5 setDebugData:v24];
    }
  }

  return v5;
}

- (void)setTagsFromClassifiers:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v13 + 1) + 8 * v10) doesMatchResult:{self, v13}])
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          [v5 addObject:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(AutocorrectionResult *)self setTags:v5];
}

- (id)description
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(AutocorrectionResult *)self context];
  [v3 appendFormat:@"context: [%@]\n", v4];

  v5 = [(AutocorrectionResult *)self touched];
  [v3 appendFormat:@"        touched: [%@]\n", v5];

  v6 = [(AutocorrectionResult *)self inserted];
  [v3 appendFormat:@"       inserted: [%@]\n", v6];

  v7 = [(AutocorrectionResult *)self corrected];
  [v3 appendFormat:@"      corrected: [%@]\n", v7];

  v8 = [(AutocorrectionResult *)self intended];
  [v3 appendFormat:@"       expected: [%@]\n", v8];

  v9 = [(AutocorrectionResult *)self intendedTransliteration];
  [v3 appendFormat:@" expected trans: [%@]\n", v9];

  v10 = [(AutocorrectionResult *)self input];
  [v3 appendFormat:@"          input: [%@]\n", v10];

  v11 = [(AutocorrectionResult *)self numberOfTouches];
  [v3 appendFormat:@"     numTouches: [%@]\n", v11];

  v12 = [(AutocorrectionResult *)self seed];
  [v3 appendFormat:@"           seed: %@\n", v12];

  v13 = [(AutocorrectionResult *)self rank];
  if ([v13 integerValue] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 appendFormat:@"           rank: %@\n", @"NSNotFound"];
  }

  else
  {
    v14 = [(AutocorrectionResult *)self rank];
    v15 = [v14 description];
    [v3 appendFormat:@"           rank: %@\n", v15];
  }

  v16 = [(AutocorrectionResult *)self aggdStatistics];
  [v3 appendFormat:@" aggdStatistics: %@\n", v16];

  [v3 appendString:@"       failures:"];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = [(AutocorrectionResult *)self tags];
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [v3 appendFormat:@" %@", *(*(&v23 + 1) + 8 * i)];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }

  [v3 appendString:@"\n"];

  return v3;
}

@end