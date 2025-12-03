@interface AutocorrectionResult
- (AutocorrectionResult)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)extractDataFromTypingLog:(id)log;
- (void)setTagsFromClassifiers:(id)classifiers;
@end

@implementation AutocorrectionResult

- (void)extractDataFromTypingLog:(id)log
{
  logCopy = log;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  array6 = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __49__AutocorrectionResult_extractDataFromTypingLog___block_invoke;
  v32 = &unk_279DA0DB8;
  v40 = &v41;
  v12 = array;
  v33 = v12;
  v13 = array5;
  v34 = v13;
  v14 = array3;
  v35 = v14;
  v15 = array4;
  v36 = v15;
  v16 = array6;
  v37 = v16;
  v17 = array2;
  v38 = v17;
  v18 = dictionary;
  v39 = v18;
  [logCopy enumerateKeystrokesAndPathsForTokensWithBlock:&v29];
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

  getDebugData = [logCopy getDebugData];
  [(AutocorrectionResult *)self setDebugData:getDebugData];

  v26 = [v17 copy];
  [(AutocorrectionResult *)self setTouchEvents:v26];

  v27 = [v18 copy];
  [(AutocorrectionResult *)self setPathsForWords:v27];

  intendedTransliterationSequence = [logCopy intendedTransliterationSequence];
  if (intendedTransliterationSequence)
  {
    [(AutocorrectionResult *)self setIntendedTransliteration:intendedTransliterationSequence];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  context = [(AutocorrectionResult *)self context];
  [coderCopy encodeObject:context forKey:@"ARContext"];

  touched = [(AutocorrectionResult *)self touched];
  [coderCopy encodeObject:touched forKey:@"ARTouched"];

  predicted = [(AutocorrectionResult *)self predicted];
  [coderCopy encodeObject:predicted forKey:@"ARPredicted"];

  inlineCompletions = [(AutocorrectionResult *)self inlineCompletions];
  [coderCopy encodeObject:inlineCompletions forKey:@"ARInlineCompletions"];

  documentStates = [(AutocorrectionResult *)self documentStates];
  [coderCopy encodeObject:documentStates forKey:@"ARDocumentStates"];

  inserted = [(AutocorrectionResult *)self inserted];
  [coderCopy encodeObject:inserted forKey:@"ARInserted"];

  corrected = [(AutocorrectionResult *)self corrected];
  [coderCopy encodeObject:corrected forKey:@"ARCorrected"];

  intended = [(AutocorrectionResult *)self intended];
  [coderCopy encodeObject:intended forKey:@"ARIntended"];

  intendedTransliteration = [(AutocorrectionResult *)self intendedTransliteration];
  [coderCopy encodeObject:intendedTransliteration forKey:@"ARIntendedTransliteration"];

  input = [(AutocorrectionResult *)self input];
  [coderCopy encodeObject:input forKey:@"ARInput"];

  numberOfTouches = [(AutocorrectionResult *)self numberOfTouches];
  [coderCopy encodeObject:numberOfTouches forKey:@"ARNumberOfTouches"];

  seed = [(AutocorrectionResult *)self seed];
  [coderCopy encodeObject:seed forKey:@"ARSeed"];

  tags = [(AutocorrectionResult *)self tags];
  [coderCopy encodeObject:tags forKey:@"ARTags"];

  rank = [(AutocorrectionResult *)self rank];
  [coderCopy encodeObject:rank forKey:@"ARRank"];

  v19 = MEMORY[0x277CCAAA0];
  debugData = [(AutocorrectionResult *)self debugData];
  v21 = debugData;
  if (debugData)
  {
    v22 = debugData;
  }

  else
  {
    v22 = MEMORY[0x277CBEC10];
  }

  v24 = 0;
  v23 = [v19 dataWithJSONObject:v22 options:0 error:&v24];

  [coderCopy encodeObject:v23 forKey:@"ARDebug"];
}

- (AutocorrectionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = AutocorrectionResult;
  v5 = [(AutocorrectionResult *)&v27 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ARContext"];
    [(AutocorrectionResult *)v5 setContext:v9];

    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ARTouched"];
    [(AutocorrectionResult *)v5 setTouched:v10];

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ARPredicted"];
    [(AutocorrectionResult *)v5 setPredicted:v11];

    v12 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ARInlineCompletions"];
    [(AutocorrectionResult *)v5 setInlineCompletions:v12];

    v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ARDocumentStates"];
    [(AutocorrectionResult *)v5 setDocumentStates:v13];

    v14 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ARInserted"];
    [(AutocorrectionResult *)v5 setInserted:v14];

    v15 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ARCorrected"];
    [(AutocorrectionResult *)v5 setCorrected:v15];

    v16 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ARIntended"];
    [(AutocorrectionResult *)v5 setIntended:v16];

    v17 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ARIntendedTransliteration"];
    [(AutocorrectionResult *)v5 setIntendedTransliteration:v17];

    v18 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ARInput"];
    [(AutocorrectionResult *)v5 setInput:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ARNumberOfTouches"];
    [(AutocorrectionResult *)v5 setNumberOfTouches:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ARSeed"];
    [(AutocorrectionResult *)v5 setSeed:v20];

    v21 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ARTags"];
    [(AutocorrectionResult *)v5 setTags:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ARRank"];
    [(AutocorrectionResult *)v5 setRank:v22];

    [(AutocorrectionResult *)v5 setAggdStatistics:0];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ARDebug"];
    v26 = 0;
    v24 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v23 options:0 error:&v26];
    if ([v24 count])
    {
      [(AutocorrectionResult *)v5 setDebugData:v24];
    }
  }

  return v5;
}

- (void)setTagsFromClassifiers:(id)classifiers
{
  v18 = *MEMORY[0x277D85DE8];
  classifiersCopy = classifiers;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(classifiersCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = classifiersCopy;
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
  string = [MEMORY[0x277CCAB68] string];
  context = [(AutocorrectionResult *)self context];
  [string appendFormat:@"context: [%@]\n", context];

  touched = [(AutocorrectionResult *)self touched];
  [string appendFormat:@"        touched: [%@]\n", touched];

  inserted = [(AutocorrectionResult *)self inserted];
  [string appendFormat:@"       inserted: [%@]\n", inserted];

  corrected = [(AutocorrectionResult *)self corrected];
  [string appendFormat:@"      corrected: [%@]\n", corrected];

  intended = [(AutocorrectionResult *)self intended];
  [string appendFormat:@"       expected: [%@]\n", intended];

  intendedTransliteration = [(AutocorrectionResult *)self intendedTransliteration];
  [string appendFormat:@" expected trans: [%@]\n", intendedTransliteration];

  input = [(AutocorrectionResult *)self input];
  [string appendFormat:@"          input: [%@]\n", input];

  numberOfTouches = [(AutocorrectionResult *)self numberOfTouches];
  [string appendFormat:@"     numTouches: [%@]\n", numberOfTouches];

  seed = [(AutocorrectionResult *)self seed];
  [string appendFormat:@"           seed: %@\n", seed];

  rank = [(AutocorrectionResult *)self rank];
  if ([rank integerValue] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [string appendFormat:@"           rank: %@\n", @"NSNotFound"];
  }

  else
  {
    rank2 = [(AutocorrectionResult *)self rank];
    v15 = [rank2 description];
    [string appendFormat:@"           rank: %@\n", v15];
  }

  aggdStatistics = [(AutocorrectionResult *)self aggdStatistics];
  [string appendFormat:@" aggdStatistics: %@\n", aggdStatistics];

  [string appendString:@"       failures:"];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  tags = [(AutocorrectionResult *)self tags];
  v18 = [tags countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(tags);
        }

        [string appendFormat:@" %@", *(*(&v23 + 1) + 8 * i)];
      }

      v19 = [tags countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }

  [string appendString:@"\n"];

  return string;
}

@end