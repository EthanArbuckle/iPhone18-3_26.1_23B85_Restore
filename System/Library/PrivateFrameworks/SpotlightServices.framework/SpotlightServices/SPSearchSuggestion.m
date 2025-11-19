@interface SPSearchSuggestion
+ (id)suggestionsWithData:(id)a3 queryString:(id)a4;
+ (id)suggestionsWithNLPData:(id)a3 queryString:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSArray)searchEntities;
- (SPSearchSuggestion)initWithNLPData:(id)a3 queryString:(id)a4;
- (SPSearchSuggestion)initWithSuggestion:(id)a3 query:(id)a4 scores:(id)a5 bundleIDs:(id)a6;
- (id)description;
- (id)suggestionsFeedbackData;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPSearchSuggestion

+ (id)suggestionsWithData:(id)a3 queryString:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E695E480];
  [v5 bytes];
  v29 = v5;
  [v5 length];
  cf = _MDPlistBytesCreateTrusted();
  v8 = _MDPlistBytesCopyPlistAtIndex();
  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if ([v15 count] == 23)
        {
          v16 = [v15 objectAtIndexedSubscript:0];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_14;
          }

          v18 = [v15 objectAtIndexedSubscript:22];
          objc_opt_class();
          v19 = objc_opt_isKindOfClass();

          if ((v19 & 1) == 0)
          {
            goto LABEL_14;
          }

          v20 = [v15 objectAtIndexedSubscript:0];
          v21 = [v15 objectAtIndexedSubscript:22];
          v22 = [v15 subarrayWithRange:{1, objc_msgSend(v15, "count") - 2}];
          v23 = [[SPSearchSuggestion alloc] initWithSuggestion:v20 query:v6 scores:v22 bundleIDs:v21];
          [(SPSearchSuggestion *)v23 setQuery:v6];
          if (v23)
          {
            [v9 addObject:v23];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

LABEL_14:

  CFRelease(cf);
  v24 = [v9 allObjects];
  v25 = [v24 sortedArrayUsingSelector:sel_compare_];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)suggestionsWithNLPData:(id)a3 queryString:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SPSearchSuggestion alloc] initWithNLPData:v6 queryString:v5];

  return v7;
}

- (SPSearchSuggestion)initWithSuggestion:(id)a3 query:(id)a4 scores:(id)a5 bundleIDs:(id)a6
{
  v87 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  v15 = [v12 count];
  obj = a3;
  if (v15 != 21)
  {
    v18 = 0;
    v19 = 7;
    v20 = v14;
    goto LABEL_20;
  }

  v16 = [v12 objectAtIndexedSubscript:14];
  v17 = [v16 integerValue];

  v18 = 0;
  v19 = 7;
  if (v17 <= 7)
  {
    if (v17 != 3)
    {
      v20 = v14;
      v15 = 21;
      if (v17 == 6)
      {
        v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v22 = [v21 localizedStringForKey:@"PHOTOS_SUGGESTION" value:&stru_1F556FE60 table:@"SpotlightServices"];
        v20 = [v22 stringByReplacingOccurrencesOfString:@"%@" withString:v14];

        v15 = 21;
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(kMDItemContentTypeTree=public.image && **=%@*cwd)", v14];
      }

      goto LABEL_20;
    }

    v35 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v36 = [v11 stringByTrimmingCharactersInSet:v35];

    v37 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    [v14 stringByTrimmingCharactersInSet:v37];
    v39 = v38 = v14;

    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v36, v39];

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(**=%@cwd && **=%@cwd)", v36, v39];

    v14 = v38;
    v20 = v40;

LABEL_19:
    v15 = 21;
    goto LABEL_20;
  }

  if (v17 == 8)
  {
    v18 = 0;
    v19 = 2;
    v20 = v14;
    goto LABEL_19;
  }

  v20 = v14;
  v15 = 21;
  if (v17 == 22)
  {
    v75 = v12;
    v76 = v11;
    v77 = [v14 lowercaseString];

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"**=%@cwd", v14];
    [v23 addObject:v24];

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v74 = v13;
    v25 = v13;
    v26 = [v25 countByEnumeratingWithState:&v82 objects:v86 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v83;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v83 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = MEMORY[0x1E696AEC0];
          v31 = [*(*(&v82 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@" " withString:@"*"];
          v32 = [v30 stringWithFormat:@"**=%@*cwd", v31];
          [v23 addObject:v32];
        }

        v27 = [v25 countByEnumeratingWithState:&v82 objects:v86 count:16];
      }

      while (v27);
    }

    v33 = MEMORY[0x1E696AEC0];
    v34 = [v23 componentsJoinedByString:@" || "];
    v18 = [v33 stringWithFormat:@"(%@)", v34];

    v19 = 7;
    v12 = v75;
    v11 = v76;
    v13 = v74;
    v15 = 21;
    v20 = v77;
  }

LABEL_20:
  v81.receiver = self;
  v81.super_class = SPSearchSuggestion;
  v41 = [(SPSearchSuggestion *)&v81 init];
  v42 = v41;
  if (v41)
  {
    v78 = v20;
    if (v15 == 21)
    {
      v43 = [v12 objectAtIndexedSubscript:0];
      v42->_queryLen = [v43 integerValue];

      v44 = [v12 objectAtIndexedSubscript:1];
      v42->_queryFragmentCount = [v44 integerValue];

      v45 = [v12 objectAtIndexedSubscript:2];
      v42->_queryCompletionCount = [v45 longLongValue];

      v46 = [v12 objectAtIndexedSubscript:3];
      v42->_fragments = [v46 integerValue];

      v47 = [v12 objectAtIndexedSubscript:4];
      [v47 doubleValue];
      v42->_age = v48;

      v49 = [v12 objectAtIndexedSubscript:5];
      [v49 doubleValue];
      v42->_prob = v50;

      v51 = [v12 objectAtIndexedSubscript:6];
      v42->_maxscore = [v51 longLongValue];

      v52 = [v12 objectAtIndexedSubscript:7];
      v42->_weight = [v52 intValue];

      v53 = [v12 objectAtIndexedSubscript:8];
      v42->_parentWeight = [v53 intValue];

      v54 = [v12 objectAtIndexedSubscript:9];
      v42->_rootWeight = [v54 integerValue];

      v55 = [v12 objectAtIndexedSubscript:10];
      [v55 doubleValue];
      v42->_phraseScore = v56;

      v57 = [v12 objectAtIndexedSubscript:11];
      [v57 doubleValue];
      v42->_punishment = v58;

      v59 = [v12 objectAtIndexedSubscript:12];
      [v59 doubleValue];
      p_compositeScore = &v42->_compositeScore;
      v42->_compositeScore = v61;

      v62 = [v12 objectAtIndexedSubscript:13];
      [v62 floatValue];
      v42->_fieldWeight = v63;

      v64 = [v12 objectAtIndexedSubscript:14];
      v42->_completionType = [v64 integerValue];

      v65 = [v12 objectAtIndexedSubscript:15];
      v42->_prefixLen = [v65 integerValue];

      v66 = [v12 objectAtIndexedSubscript:16];
      v42->_isSingleThread = [v66 integerValue] != 0;

      v67 = [v12 objectAtIndexedSubscript:17];
      v42->_hasUsedDate = [v67 integerValue] != 0;

      v68 = [v12 objectAtIndexedSubscript:18];
      v42->_isShortcut = [v68 integerValue] != 0;

      v69 = [v12 objectAtIndexedSubscript:19];
      v42->_hasMultipleResults = [v69 integerValue] != 0;

      v70 = [v13 copy];
    }

    else
    {
      v41->_queryLen = 0;
      v41->_queryFragmentCount = 0;
      v41->_queryCompletionCount = 0;
      v41->_fragments = 1;
      v41->_age = 1.0;
      v41->_prob = 0.0;
      v41->_maxscore = 0;
      v41->_weight = 0;
      v41->_parentWeight = 0;
      v41->_rootWeight = 0;
      v41->_phraseScore = 0.0;
      v41->_punishment = 0.0;
      p_compositeScore = &v41->_compositeScore;
      v41->_compositeScore = 1.0;
      v41->_fieldWeight = 0.0;
      v41->_completionType = 1;
      v41->_prefixLen = 0;
      v41->_isSingleThread = 0;
      v41->_hasUsedDate = 0;
      v41->_isShortcut = 0;
      v41->_hasMultipleResults = 0;
      v70 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v42->_bundleIDs, v70);
    if (v15 == 21)
    {
    }

    objc_storeStrong(&v42->_completion, obj);
    objc_storeStrong(&v42->_spotlightQuery, v18);
    categories = v42->_categories;
    v42->_categories = 0;

    [(SPSearchSuggestion *)v42 setScore:*p_compositeScore];
    v20 = v78;
    [(SPSearchSuggestion *)v42 setSuggestion:v78];
    [(SPSearchSuggestion *)v42 setQuery:v11];
    [(SPSearchSuggestion *)v42 setType:v19];
  }

  v72 = *MEMORY[0x1E69E9840];
  return v42;
}

- (SPSearchSuggestion)initWithNLPData:(id)a3 queryString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"suggestion"];
  v9 = [v7 objectForKeyedSubscript:@"query"];
  v10 = [v7 objectForKeyedSubscript:@"tokenCount"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &unk_1F55B3BE8;
  }

  v13 = v12;

  v14 = [v7 objectForKeyedSubscript:@"attributeCount"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &unk_1F55B3BE8;
  }

  v17 = v16;

  v18 = [v7 objectForKeyedSubscript:@"categories"];
  v19 = v18;
  v20 = MEMORY[0x1E695E0F8];
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = MEMORY[0x1E695E0F8];
  }

  obj = v21;
  v30 = v21;

  v22 = [v7 objectForKeyedSubscript:@"terms"];

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23;

  v31.receiver = self;
  v31.super_class = SPSearchSuggestion;
  v25 = [(SPSearchSuggestion *)&v31 init];
  if (v25)
  {
    v25->_queryLen = [v6 length];
    v25->_queryFragmentCount = [v13 intValue];
    v25->_queryCompletionCount = 20;
    v25->_fragments = [v17 integerValue];
    v25->_age = 0.0;
    v25->_prob = 0.0;
    v25->_maxscore = 0;
    v25->_weight = 0;
    v25->_parentWeight = 0;
    v25->_rootWeight = 0;
    v25->_phraseScore = 0.0;
    v25->_punishment = 0.0;
    v25->_compositeScore = 1.79769313e308;
    v25->_fieldWeight = 0.0;
    v25->_completionType = 5;
    v25->_prefixLen = 0;
    v25->_isSingleThread = 0;
    v25->_hasUsedDate = 0;
    v25->_isShortcut = 0;
    v25->_hasMultipleResults = 0;
    bundleIDs = v25->_bundleIDs;
    v25->_bundleIDs = MEMORY[0x1E695E0F0];

    completion = v25->_completion;
    v25->_completion = 0;

    objc_storeStrong(&v25->_categories, obj);
    objc_storeStrong(&v25->_terms, v23);
    objc_storeStrong(&v25->_spotlightQuery, v9);
    [(SPSearchSuggestion *)v25 setSuggestion:v8];
    [(SPSearchSuggestion *)v25 setQuery:v6];
    [(SPSearchSuggestion *)v25 setType:15];
  }

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = SPSearchSuggestion;
  v4 = a3;
  [(SPSearchSuggestion *)&v12 encodeWithCoder:v4];
  [v4 encodeInt:LODWORD(self->_queryLen) forKey:{@"queryLen", v12.receiver, v12.super_class}];
  [v4 encodeInt:LODWORD(self->_queryFragmentCount) forKey:@"queryFragmentCount"];
  [v4 encodeInt64:self->_queryCompletionCount forKey:@"queryCompletionCount"];
  [v4 encodeInt:LODWORD(self->_fragments) forKey:@"fragments"];
  [v4 encodeDouble:@"age" forKey:self->_age];
  [v4 encodeDouble:@"prob" forKey:self->_prob];
  [v4 encodeInt64:self->_maxscore forKey:@"maxscore"];
  [v4 encodeInt:self->_weight forKey:@"weight"];
  [v4 encodeInt:self->_parentWeight forKey:@"parentWeight"];
  [v4 encodeInt:self->_rootWeight forKey:@"rootWeight"];
  [v4 encodeDouble:@"phraseScore" forKey:self->_phraseScore];
  [v4 encodeDouble:@"punishment" forKey:self->_punishment];
  [v4 encodeDouble:@"compositeScore" forKey:self->_compositeScore];
  [v4 encodeInt:self->_completionType forKey:@"completionType"];
  [v4 encodeInt:self->_prefixLen forKey:@"prefixLen"];
  *&v5 = self->_fieldWeight;
  [v4 encodeFloat:@"fieldWeight" forKey:v5];
  [v4 encodeBool:self->_isSingleThread forKey:@"isSingleThread"];
  [v4 encodeBool:self->_hasUsedDate forKey:@"hasUsedDate"];
  [v4 encodeBool:self->_isShortcut forKey:@"isShortcut"];
  [v4 encodeBool:self->_hasMultipleResults forKey:@"hasMultipleResults"];
  if (self->_bundleIDs)
  {
    bundleIDs = self->_bundleIDs;
  }

  else
  {
    bundleIDs = MEMORY[0x1E695E0F0];
  }

  [v4 encodeObject:bundleIDs forKey:@"bundleIDs"];
  if (self->_completion)
  {
    completion = self->_completion;
  }

  else
  {
    completion = &stru_1F556FE60;
  }

  [v4 encodeObject:completion forKey:@"completion"];
  if (self->_spotlightQuery)
  {
    spotlightQuery = self->_spotlightQuery;
  }

  else
  {
    spotlightQuery = &stru_1F556FE60;
  }

  [v4 encodeObject:spotlightQuery forKey:@"spotlightQuery"];
  v9 = MEMORY[0x1E695E0F8];
  if (self->_categories)
  {
    categories = self->_categories;
  }

  else
  {
    categories = MEMORY[0x1E695E0F8];
  }

  [v4 encodeObject:categories forKey:@"categories"];
  if (self->_terms)
  {
    terms = self->_terms;
  }

  else
  {
    terms = v9;
  }

  [v4 encodeObject:terms forKey:@"terms"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SPSearchSuggestion *)self suggestion];
    v7 = [v5 suggestion];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(SPSearchSuggestion *)self query];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SPSearchSuggestion *)self suggestion];
  v6 = [(SPSearchSuggestion *)self suggestion];
  v7 = [v6 length];
  fragments = self->_fragments;
  v9 = [v3 stringWithFormat:@"<%@: %p> %@ len:%ld fragments:%ld max_score:%llu age:%g weight:%d pweight:%d rweight:%d c_score:%g type:%d pfx_len:%d st:%d phrase_score:%g field_weight:%f hasUsed:%d isShortcut:%d", v4, self, v5, v7, fragments, self->_maxscore, *&self->_age, self->_weight, self->_parentWeight, self->_rootWeight, *&self->_compositeScore, self->_completionType, self->_prefixLen, self->_isSingleThread, *&self->_phraseScore, self->_fieldWeight, self->_hasUsedDate, self->_isShortcut];

  return v9;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if ([v4 completionType] > self->_completionType)
  {
    goto LABEL_2;
  }

  if ([v4 completionType] < self->_completionType || (objc_msgSend(v4, "compositeScore"), v6 > self->_compositeScore))
  {
LABEL_5:
    v5 = -1;
    goto LABEL_6;
  }

  [v4 compositeScore];
  if (v8 < self->_compositeScore)
  {
    goto LABEL_2;
  }

  if ([v4 isShortcut] && !self->_isShortcut)
  {
    goto LABEL_5;
  }

  if (self->_isShortcut > [v4 isShortcut])
  {
LABEL_2:
    v5 = 1;
    goto LABEL_6;
  }

  if (([v4 hasUsedDate] & 1) == 0 && !self->_hasUsedDate)
  {
    [v4 age];
    if (v11 < self->_age)
    {
      goto LABEL_5;
    }

    [v4 age];
    if (v12 <= self->_age)
    {
      if ([v4 maxscore] > self->_maxscore)
      {
        goto LABEL_5;
      }

      if ([v4 maxscore] >= self->_maxscore)
      {
        if ([v4 weight] < self->_weight)
        {
          goto LABEL_5;
        }

        if ([v4 weight] <= self->_weight)
        {
          if ([v4 fragments] < self->_fragments)
          {
            goto LABEL_5;
          }

          if ([v4 fragments] <= self->_fragments)
          {
            v13 = [v4 suggestion];
            v14 = [v13 length];
            v15 = [(SPSearchSuggestion *)self suggestion];
            v16 = [v15 length];

            if (v14 >= v16)
            {
              v17 = [v4 suggestion];
              v18 = [v17 length];
              v19 = [(SPSearchSuggestion *)self suggestion];
              v5 = v18 > [v19 length];

              goto LABEL_6;
            }

            goto LABEL_5;
          }
        }
      }
    }

    goto LABEL_2;
  }

  if ([v4 hasUsedDate] && self->_hasUsedDate)
  {
    [v4 age];
    if (v9 >= self->_age)
    {
      [v4 age];
      v5 = v10 > self->_age;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ([v4 hasUsedDate])
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

LABEL_6:

  return v5;
}

- (id)suggestionsFeedbackData
{
  v41[22] = *MEMORY[0x1E69E9840];
  v40[0] = @"queryLen";
  v3 = SSRoundDouble(4, [(SPSearchSuggestion *)self queryLen]);
  v41[0] = v3;
  v40[1] = @"queryFragmentCount";
  v4 = SSRoundDouble(4, [(SPSearchSuggestion *)self queryFragmentCount]);
  v41[1] = v4;
  v40[2] = @"queryCompletionCount";
  v5 = SSRoundUInt64([(SPSearchSuggestion *)self queryCompletionCount]);
  v41[2] = v5;
  v40[3] = @"len";
  v6 = [(SPSearchSuggestion *)self suggestion];
  v7 = SSRoundDouble(4, [v6 length]);
  v41[3] = v7;
  v40[4] = @"fragments";
  v8 = SSRoundDouble(4, [(SPSearchSuggestion *)self fragments]);
  v41[4] = v8;
  v40[5] = @"age";
  [(SPSearchSuggestion *)self age];
  v10 = SSRoundDouble(4, v9);
  v41[5] = v10;
  v40[6] = @"prob";
  [(SPSearchSuggestion *)self prob];
  v12 = SSRoundDouble(2, v11);
  v41[6] = v12;
  v40[7] = @"maxscore";
  v39 = SSRoundUInt64([(SPSearchSuggestion *)self maxscore]);
  v41[7] = v39;
  v40[8] = @"weight";
  v38 = SSRoundDouble(4, [(SPSearchSuggestion *)self weight]);
  v41[8] = v38;
  v40[9] = @"parentWeight";
  v37 = SSRoundDouble(4, [(SPSearchSuggestion *)self parentWeight]);
  v41[9] = v37;
  v40[10] = @"rootWeight";
  v36 = SSRoundDouble(4, [(SPSearchSuggestion *)self rootWeight]);
  v41[10] = v36;
  v40[11] = @"phraseScore";
  [(SPSearchSuggestion *)self phraseScore];
  v35 = SSRoundDouble(4, v13);
  v41[11] = v35;
  v40[12] = @"punishment";
  [(SPSearchSuggestion *)self punishment];
  v34 = SSRoundDouble(4, v14);
  v41[12] = v34;
  v40[13] = @"compositeScore";
  [(SPSearchSuggestion *)self compositeScore];
  v16 = v15;
  v17 = 0.0;
  if (v16 != 1.79769313e308)
  {
    [(SPSearchSuggestion *)self compositeScore];
  }

  v33 = SSRoundDouble(4, v17);
  v41[13] = v33;
  v40[14] = @"completionType";
  v32 = SSRoundDouble(4, [(SPSearchSuggestion *)self completionType]);
  v41[14] = v32;
  v40[15] = @"prefixLen";
  v31 = SSRoundDouble(4, [(SPSearchSuggestion *)self prefixLen]);
  v41[15] = v31;
  v40[16] = @"fieldWeight";
  [(SPSearchSuggestion *)self fieldWeight];
  v30 = SSRoundDouble(4, v18);
  v41[16] = v30;
  v40[17] = @"isSingleThread";
  if ([(SPSearchSuggestion *)self isSingleThread])
  {
    v19 = &unk_1F55B3C00;
  }

  else
  {
    v19 = &unk_1F55B3BE8;
  }

  v41[17] = v19;
  v40[18] = @"hasUsedDate";
  if ([(SPSearchSuggestion *)self hasUsedDate])
  {
    v20 = &unk_1F55B3C00;
  }

  else
  {
    v20 = &unk_1F55B3BE8;
  }

  v41[18] = v20;
  v40[19] = @"isShortcut";
  if ([(SPSearchSuggestion *)self isShortcut])
  {
    v21 = &unk_1F55B3C00;
  }

  else
  {
    v21 = &unk_1F55B3BE8;
  }

  v41[19] = v21;
  v40[20] = @"hasMultipleResults";
  if ([(SPSearchSuggestion *)self hasMultipleResults])
  {
    v22 = &unk_1F55B3C00;
  }

  else
  {
    v22 = &unk_1F55B3BE8;
  }

  v41[20] = v22;
  v40[21] = @"bundleIDs";
  v23 = [(SPSearchSuggestion *)self bundleIDs];
  v24 = v23;
  v25 = MEMORY[0x1E695E0F0];
  if (v23)
  {
    v25 = v23;
  }

  v41[21] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:22];

  v27 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v26 options:2 error:0];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (NSArray)searchEntities
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (self->_spotlightQuery)
  {
    v3 = [(SPSearchSuggestion *)self suggestion];
    spotlightQuery = self->_spotlightQuery;
    v5 = [(SPSearchSuggestion *)self bundleIDs];
    v6 = [SPSearchEntity searchEntityWithSearchString:v3 spotlightQueryString:spotlightQuery preferredBundleIDs:v5];
  }

  else
  {
    v7 = [(SPSearchSuggestion *)self suggestion];
    v8 = [v7 substringFromIndex:{-[SPSearchSuggestion prefixLen](self, "prefixLen")}];
    v3 = SSEscapedStringForSearchQuery(v8);

    v5 = [(SPSearchSuggestion *)self suggestion];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"**=%@cwd || _kMDItemLaunchString=%@cwd", v3, v3];
    v10 = [(SPSearchSuggestion *)self bundleIDs];
    v6 = [SPSearchEntity searchEntityWithSearchString:v5 spotlightQueryString:v9 preferredBundleIDs:v10];
  }

  v14[0] = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end