@interface TITraceLogCandidateGroup
+ (id)groupFromGroupString:(id)string;
- (NSArray)candidates;
- (NSDictionary)dictionaryRepresentation;
- (TITraceLogCandidateGroup)init;
@end

@implementation TITraceLogCandidateGroup

- (NSDictionary)dictionaryRepresentation
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:@"TITraceLogCandidateGroup" forKey:@"_sourceClass"];
  sequenceString = [(TITraceLogCandidateGroup *)self sequenceString];
  [v3 setObject:sequenceString forKey:@"sequenceString"];

  v5 = MEMORY[0x1E696AD98];
  [(TITraceLogCandidateGroup *)self probability];
  v6 = [v5 numberWithDouble:?];
  [v3 setObject:v6 forKey:@"probability"];

  v7 = MEMORY[0x1E696AD98];
  [(TITraceLogCandidateGroup *)self omegaWordScore];
  v8 = [v7 numberWithDouble:?];
  [v3 setObject:v8 forKey:@"omegaWordScore"];

  v9 = MEMORY[0x1E696AD98];
  [(TITraceLogCandidateGroup *)self omegaLanguagePowerScore];
  v10 = [v9 numberWithDouble:?];
  [v3 setObject:v10 forKey:@"omegaLanguagePowerScore"];

  v11 = MEMORY[0x1E696AD98];
  [(TITraceLogCandidateGroup *)self omegaTypingScore];
  v12 = [v11 numberWithDouble:?];
  [v3 setObject:v12 forKey:@"omegaTypingScore"];

  v13 = MEMORY[0x1E696AD98];
  [(TITraceLogCandidateGroup *)self omegaGeometryScore];
  v14 = [v13 numberWithDouble:?];
  [v3 setObject:v14 forKey:@"omegaGeometryScore"];

  omegaFactorsString = [(TITraceLogCandidateGroup *)self omegaFactorsString];

  if (omegaFactorsString)
  {
    omegaFactorsString2 = [(TITraceLogCandidateGroup *)self omegaFactorsString];
    [v3 setObject:omegaFactorsString2 forKey:@"omegaFactorsString"];
  }

  v17 = MEMORY[0x1E695DF70];
  candidates = [(TITraceLogCandidateGroup *)self candidates];
  v19 = [v17 arrayWithCapacity:{objc_msgSend(candidates, "count")}];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  candidates2 = [(TITraceLogCandidateGroup *)self candidates];
  v21 = [candidates2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(candidates2);
        }

        dictionaryRepresentation = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
        [v19 addObject:dictionaryRepresentation];
      }

      v22 = [candidates2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  [v3 setObject:v19 forKey:@"candidates"];

  return v3;
}

- (NSArray)candidates
{
  v2 = [(NSMutableArray *)self->_candidates copy];

  return v2;
}

- (TITraceLogCandidateGroup)init
{
  v6.receiver = self;
  v6.super_class = TITraceLogCandidateGroup;
  v2 = [(TITraceLogCandidateGroup *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    candidates = v2->_candidates;
    v2->_candidates = v3;
  }

  return v2;
}

+ (id)groupFromGroupString:(id)string
{
  stringCopy = string;
  v3 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:stringCopy];
  v56 = 0;
  [v3 scanUpToString:@"\n" intoString:&v56];
  v4 = v56;
  v53 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\[(.+)\\] ln\\(omega\\) (.+) = \\[(.+)\\] .+" options:0 error:0];
  v52 = [v53 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  firstObject = [v52 firstObject];
  v6 = [firstObject rangeAtIndex:1];
  v8 = [v4 substringWithRange:{v6, v7}];
  v9 = [firstObject rangeAtIndex:2];
  v11 = [v4 substringWithRange:{v9, v10}];
  v12 = [firstObject rangeAtIndex:3];
  v14 = [v4 substringWithRange:{v12, v13}];
  v15 = objc_alloc_init(TITraceLogCandidateGroup);
  v51 = v8;
  [(TITraceLogCandidateGroup *)v15 setSequenceString:v8];
  v50 = v11;
  [v11 doubleValue];
  [(TITraceLogCandidateGroup *)v15 setProbability:?];
  v16 = v14;
  v17 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(-?[0-9]+\\.[0-9]+)\\*\\(W (-?[0-9]+\\.[0-9]+)+ \\+ T (-?[0-9]+\\.[0-9]+)\\) \\+ G (-?[0-9]+\\.[0-9]+)$" options:0 error:0];
  v18 = [v17 matchesInString:v16 options:0 range:{0, objc_msgSend(v16, "length")}];
  firstObject2 = [v18 firstObject];
  v20 = firstObject2;
  v21 = 0.0;
  if (v18 && [firstObject2 numberOfRanges] == 5)
  {
    v22 = [v20 rangeAtIndex:1];
    [v16 substringWithRange:{v22, v23}];
    v24 = v49 = firstObject;
    v25 = [v20 rangeAtIndex:2];
    [v16 substringWithRange:{v25, v26}];
    v27 = v48 = v17;
    v28 = [v20 rangeAtIndex:3];
    v30 = [v16 substringWithRange:{v28, v29}];
    v31 = [v20 rangeAtIndex:4];
    v33 = [v16 substringWithRange:{v31, v32}];
    [v24 doubleValue];
    v21 = v34;
    [v27 doubleValue];
    v36 = v35;
    [v30 doubleValue];
    v38 = v37;
    [v33 doubleValue];
    v40 = v39;

    v41 = 1;
    v17 = v48;

    firstObject = v49;
  }

  else
  {
    v41 = 0;
    v36 = 0.0;
    v38 = 0.0;
    v40 = 0.0;
  }

  if (v41)
  {
    [(TITraceLogCandidateGroup *)v15 setOmegaFactorsString:v16];
    [(TITraceLogCandidateGroup *)v15 setOmegaLanguagePowerScore:v21];
    [(TITraceLogCandidateGroup *)v15 setOmegaWordScore:v36];
    [(TITraceLogCandidateGroup *)v15 setOmegaTypingScore:v38];
    [(TITraceLogCandidateGroup *)v15 setOmegaGeometryScore:v40];
  }

  v55 = v4;
  v42 = [v3 scanUpToString:@"\n" intoString:&v55];
  v43 = v55;

  if (v42)
  {
    do
    {
      v44 = [TITraceLogCandidate candidateFromCandidateString:v43];
      if (v44)
      {
        [(TITraceLogCandidateGroup *)v15 addCandidate:v44];
      }

      v55 = v43;
      v45 = [v3 scanUpToString:@"\n" intoString:&v55];
      v46 = v55;

      v43 = v46;
    }

    while ((v45 & 1) != 0);
  }

  else
  {
    v46 = v43;
  }

  return v15;
}

@end