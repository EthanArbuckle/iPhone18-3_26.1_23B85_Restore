@interface TITraceLogCandidate
+ (id)_wordSourcesFromCandidateString:(id)a3;
+ (id)candidateFromCandidateString:(id)a3;
+ (id)candidateFromFinalCandidateString:(id)a3;
+ (id)candidateFromRemovedCandidateString:(id)a3;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation TITraceLogCandidate

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:@"TITraceLogCandidate" forKey:@"_sourceClass"];
  v4 = [(TITraceLogCandidate *)self token];
  [v3 setObject:v4 forKey:@"token"];

  v5 = MEMORY[0x1E696AD98];
  [(TITraceLogCandidate *)self probability];
  v6 = [v5 numberWithDouble:?];
  [v3 setObject:v6 forKey:@"probability"];

  v7 = MEMORY[0x1E696AD98];
  [(TITraceLogCandidate *)self contextProbability];
  v8 = [v7 numberWithDouble:?];
  [v3 setObject:v8 forKey:@"contextProbability"];

  v9 = [(TITraceLogCandidate *)self filterName];

  if (v9)
  {
    v10 = [(TITraceLogCandidate *)self filterName];
    [v3 setObject:v10 forKey:@"filterName"];
  }

  v11 = [(TITraceLogCandidate *)self lexiconLocaleIdentifier];

  if (v11)
  {
    v12 = [(TITraceLogCandidate *)self lexiconLocaleIdentifier];
    [v3 setObject:v12 forKey:@"lexiconLocaleIdentifier"];
  }

  v13 = [(TITraceLogCandidate *)self dynamicUsageCount];

  if (v13)
  {
    v14 = [(TITraceLogCandidate *)self dynamicUsageCount];
    [v3 setObject:v14 forKey:@"dynamicUsageCount"];
  }

  v15 = [(TITraceLogCandidate *)self penalty];

  if (v15)
  {
    v16 = [(TITraceLogCandidate *)self penalty];
    [v3 setObject:v16 forKey:@"penalty"];
  }

  v17 = [(TITraceLogCandidate *)self wordSources];

  if (v17)
  {
    v18 = [(TITraceLogCandidate *)self wordSources];
    [v3 setObject:v18 forKey:@"wordSources"];
  }

  v19 = [(TITraceLogCandidate *)self priorContext];

  if (v19)
  {
    v20 = [(TITraceLogCandidate *)self priorContext];
    [v3 setObject:v20 forKey:@"priorContext"];
  }

  v21 = [v3 copy];

  return v21;
}

+ (id)candidateFromFinalCandidateString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^\\[(.+)\\] ln\\(omega\\) (.+) .+$" options:0 error:0];
  v5 = [v4 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v6 = [v5 firstObject];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 rangeAtIndex:1];
    v10 = [v3 substringWithRange:{v8, v9}];
    v11 = [v7 rangeAtIndex:2];
    v13 = [v3 substringWithRange:{v11, v12}];
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

+ (id)candidateFromCandidateString:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^\\[(.+)\\] word_id \\[(.+)\\](\\d+) options:ln P\\([^)]+\\ (-?\\d+\\.\\d+) error:ln P\\([^)]+\\] (-?\\d+\\.\\d+)(.*)$"), 0, 0);
  v6 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  v7 = [v6 firstObject];
  if (v7)
  {
    v8 = objc_alloc_init(TITraceLogCandidate);
    v9 = [v7 rangeAtIndex:1];
    v11 = [v4 substringWithRange:{v9, v10}];
    [(TITraceLogCandidate *)v8 setToken:v11];

    v12 = [v7 rangeAtIndex:2];
    v14 = [v4 substringWithRange:{v12, v13}];
    [(TITraceLogCandidate *)v8 setLexiconLocaleIdentifier:v14];

    v15 = [v7 rangeAtIndex:3];
    v17 = [v4 substringWithRange:{v15, v16}];
    -[TITraceLogCandidate setWordId:](v8, "setWordId:", [v17 intValue]);

    v18 = [v7 rangeAtIndex:4];
    v20 = [v4 substringWithRange:{v18, v19}];
    v21 = [v7 rangeAtIndex:5];
    v23 = [v4 substringWithRange:{v21, v22}];
    [v20 doubleValue];
    [(TITraceLogCandidate *)v8 setProbability:?];
    [v23 doubleValue];
    [(TITraceLogCandidate *)v8 setContextProbability:?];
    if ([v7 numberOfRanges] >= 7)
    {
      v46 = v23;
      v47 = v20;
      v48 = a1;
      v24 = [v7 rangeAtIndex:6];
      v26 = [v4 substringWithRange:{v24, v25}];
      v27 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@".*sources=\\([^\\)]+ options:f=(\\d+)[^\\]*\\ error:?]"), 0, 0);

      v28 = [v27 matchesInString:v26 options:0 range:{0, objc_msgSend(v26, "length")}];
      v29 = [v28 firstObject];
      v30 = v29;
      v31 = 0x1E696A000;
      if (v29)
      {
        v32 = [v29 rangeAtIndex:1];
        v34 = [v26 substringWithRange:{v32, v33}];
        v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "intValue")}];
        [(TITraceLogCandidate *)v8 setDynamicUsageCount:v35];

        v31 = 0x1E696A000uLL;
      }

      v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@".*sources=\\([^\\)]+ options:p=(\\d+)[^\\]*\\ error:?]"), 0, 0);

      v36 = [v5 matchesInString:v26 options:0 range:{0, objc_msgSend(v26, "length")}];

      v37 = [v36 firstObject];

      if (v37)
      {
        v38 = [v37 rangeAtIndex:1];
        v40 = [v26 substringWithRange:{v38, v39}];
        v41 = v31;
        v42 = v40;
        v43 = [*(v41 + 3480) numberWithInt:{objc_msgSend(v40, "intValue")}];
        [(TITraceLogCandidate *)v8 setPenalty:v43];
      }

      v20 = v47;
      a1 = v48;
      v23 = v46;
    }

    if ([v4 containsString:@"details=("]
    {
      v44 = [a1 _wordSourcesFromCandidateString:v4];
      [(TITraceLogCandidate *)v8 setWordSources:v44];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)candidateFromRemovedCandidateString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^\\[(.+)\\] removed by (.+)$" options:0 error:0];
  v5 = [v4 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v6 = [v5 firstObject];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 rangeAtIndex:1];
    v10 = [v3 substringWithRange:{v8, v9}];
    v11 = [v7 rangeAtIndex:2];
    v13 = [v3 substringWithRange:{v11, v12}];
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

+ (id)_wordSourcesFromCandidateString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E696AE88] scannerWithString:v3];
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
        [v4 addObject:v10];
        [v5 scanString:@" " intoString:0];
      }
    }

    while (![v5 isAtEnd]);
  }

  v11 = [v4 copy];

  return v11;
}

@end