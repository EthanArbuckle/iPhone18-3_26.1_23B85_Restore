@interface TITraceLogCandidate
+ (id)_wordSourcesFromCandidateString:(id)string;
+ (id)candidateFromCandidateString:(id)string;
+ (id)candidateFromFinalCandidateString:(id)string;
+ (id)candidateFromRemovedCandidateString:(id)string;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation TITraceLogCandidate

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:@"TITraceLogCandidate" forKey:@"_sourceClass"];
  token = [(TITraceLogCandidate *)self token];
  [v3 setObject:token forKey:@"token"];

  v5 = MEMORY[0x1E696AD98];
  [(TITraceLogCandidate *)self probability];
  v6 = [v5 numberWithDouble:?];
  [v3 setObject:v6 forKey:@"probability"];

  v7 = MEMORY[0x1E696AD98];
  [(TITraceLogCandidate *)self contextProbability];
  v8 = [v7 numberWithDouble:?];
  [v3 setObject:v8 forKey:@"contextProbability"];

  filterName = [(TITraceLogCandidate *)self filterName];

  if (filterName)
  {
    filterName2 = [(TITraceLogCandidate *)self filterName];
    [v3 setObject:filterName2 forKey:@"filterName"];
  }

  lexiconLocaleIdentifier = [(TITraceLogCandidate *)self lexiconLocaleIdentifier];

  if (lexiconLocaleIdentifier)
  {
    lexiconLocaleIdentifier2 = [(TITraceLogCandidate *)self lexiconLocaleIdentifier];
    [v3 setObject:lexiconLocaleIdentifier2 forKey:@"lexiconLocaleIdentifier"];
  }

  dynamicUsageCount = [(TITraceLogCandidate *)self dynamicUsageCount];

  if (dynamicUsageCount)
  {
    dynamicUsageCount2 = [(TITraceLogCandidate *)self dynamicUsageCount];
    [v3 setObject:dynamicUsageCount2 forKey:@"dynamicUsageCount"];
  }

  penalty = [(TITraceLogCandidate *)self penalty];

  if (penalty)
  {
    penalty2 = [(TITraceLogCandidate *)self penalty];
    [v3 setObject:penalty2 forKey:@"penalty"];
  }

  wordSources = [(TITraceLogCandidate *)self wordSources];

  if (wordSources)
  {
    wordSources2 = [(TITraceLogCandidate *)self wordSources];
    [v3 setObject:wordSources2 forKey:@"wordSources"];
  }

  priorContext = [(TITraceLogCandidate *)self priorContext];

  if (priorContext)
  {
    priorContext2 = [(TITraceLogCandidate *)self priorContext];
    [v3 setObject:priorContext2 forKey:@"priorContext"];
  }

  v21 = [v3 copy];

  return v21;
}

+ (id)candidateFromFinalCandidateString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^\\[(.+)\\] ln\\(omega\\) (.+) .+$" options:0 error:0];
  v5 = [v4 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
  firstObject = [v5 firstObject];
  v7 = firstObject;
  if (firstObject)
  {
    v8 = [firstObject rangeAtIndex:1];
    v10 = [stringCopy substringWithRange:{v8, v9}];
    v11 = [v7 rangeAtIndex:2];
    v13 = [stringCopy substringWithRange:{v11, v12}];
    v14 = objc_alloc_init(TITraceLogCandidate);
    [(TITraceLogCandidate *)v14 setToken:v10];
    [v13 doubleValue];
    [(TITraceLogCandidate *)v14 setProbability:?];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)candidateFromCandidateString:(id)string
{
  stringCopy = string;
  v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^\\[(.+)\\] word_id \\[(.+)\\](\\d+) options:ln P\\([^)]+\\ (-?\\d+\\.\\d+) error:ln P\\([^)]+\\] (-?\\d+\\.\\d+)(.*)$"), 0, 0);
  v6 = [v5 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
  firstObject = [v6 firstObject];
  if (firstObject)
  {
    v8 = objc_alloc_init(TITraceLogCandidate);
    v9 = [firstObject rangeAtIndex:1];
    v11 = [stringCopy substringWithRange:{v9, v10}];
    [(TITraceLogCandidate *)v8 setToken:v11];

    v12 = [firstObject rangeAtIndex:2];
    v14 = [stringCopy substringWithRange:{v12, v13}];
    [(TITraceLogCandidate *)v8 setLexiconLocaleIdentifier:v14];

    v15 = [firstObject rangeAtIndex:3];
    v17 = [stringCopy substringWithRange:{v15, v16}];
    -[TITraceLogCandidate setWordId:](v8, "setWordId:", [v17 intValue]);

    v18 = [firstObject rangeAtIndex:4];
    v20 = [stringCopy substringWithRange:{v18, v19}];
    v21 = [firstObject rangeAtIndex:5];
    v23 = [stringCopy substringWithRange:{v21, v22}];
    [v20 doubleValue];
    [(TITraceLogCandidate *)v8 setProbability:?];
    [v23 doubleValue];
    [(TITraceLogCandidate *)v8 setContextProbability:?];
    if ([firstObject numberOfRanges] >= 7)
    {
      v46 = v23;
      v47 = v20;
      selfCopy = self;
      v24 = [firstObject rangeAtIndex:6];
      v26 = [stringCopy substringWithRange:{v24, v25}];
      v27 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@".*sources=\\([^\\)]+ options:f=(\\d+)[^\\]*\\ error:?]"), 0, 0);

      v28 = [v27 matchesInString:v26 options:0 range:{0, objc_msgSend(v26, "length")}];
      firstObject2 = [v28 firstObject];
      v30 = firstObject2;
      v31 = 0x1E696A000;
      if (firstObject2)
      {
        v32 = [firstObject2 rangeAtIndex:1];
        v34 = [v26 substringWithRange:{v32, v33}];
        v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "intValue")}];
        [(TITraceLogCandidate *)v8 setDynamicUsageCount:v35];

        v31 = 0x1E696A000uLL;
      }

      v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@".*sources=\\([^\\)]+ options:p=(\\d+)[^\\]*\\ error:?]"), 0, 0);

      v36 = [v5 matchesInString:v26 options:0 range:{0, objc_msgSend(v26, "length")}];

      firstObject3 = [v36 firstObject];

      if (firstObject3)
      {
        v38 = [firstObject3 rangeAtIndex:1];
        v40 = [v26 substringWithRange:{v38, v39}];
        v41 = v31;
        v42 = v40;
        v43 = [*(v41 + 3480) numberWithInt:{objc_msgSend(v40, "intValue")}];
        [(TITraceLogCandidate *)v8 setPenalty:v43];
      }

      v20 = v47;
      self = selfCopy;
      v23 = v46;
    }

    if ([stringCopy containsString:@"details=("]
    {
      v44 = [self _wordSourcesFromCandidateString:stringCopy];
      [(TITraceLogCandidate *)v8 setWordSources:v44];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)candidateFromRemovedCandidateString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^\\[(.+)\\] removed by (.+)$" options:0 error:0];
  v5 = [v4 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
  firstObject = [v5 firstObject];
  v7 = firstObject;
  if (firstObject)
  {
    v8 = [firstObject rangeAtIndex:1];
    v10 = [stringCopy substringWithRange:{v8, v9}];
    v11 = [v7 rangeAtIndex:2];
    v13 = [stringCopy substringWithRange:{v11, v12}];
    v14 = objc_alloc_init(TITraceLogCandidate);
    [(TITraceLogCandidate *)v14 setToken:v10];
    [(TITraceLogCandidate *)v14 setFilterName:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_wordSourcesFromCandidateString:(id)string
{
  stringCopy = string;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E696AE88] scannerWithString:stringCopy];
  v14 = 0.0;
  v15 = 0.0;
  objc_msgSend(v5, "scanUpToString:intoString:", @"details=("), 0;
  objc_msgSend(v5, "scanString:intoString:", @"details=("), 0;
  v6 = &stru_1EF56D550;
  if (([v5 isAtEnd] & 1) == 0)
  {
    do
    {
      v7 = v6;
      v13 = v6;
      v8 = [v5 scanUpToString:@": " intoString:&v13];
      v6 = v13;

      if (v8 && [v5 scanString:@": " intoString:0] && objc_msgSend(v5, "scanDouble:", &v15) && objc_msgSend(v5, "scanString:intoString:", @"+", 0) && objc_msgSend(v5, "scanDouble:", &v14))
      {
        v9 = [TITraceLogCandidateWordSource alloc];
        v10 = [(TITraceLogCandidateWordSource *)v9 initWithWordSource:v6 probability:v15 linguisticContextProbability:v14];
        [array addObject:v10];
        [v5 scanString:@" " intoString:0];
      }
    }

    while (![v5 isAtEnd]);
  }

  v11 = [array copy];

  return v11;
}

@end