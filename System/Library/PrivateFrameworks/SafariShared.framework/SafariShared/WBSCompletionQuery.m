@interface WBSCompletionQuery
+ (id)recentAndSuggestedCompletionStringsByMergingRecentSearches:(id)a3 withSuggestions:(id)a4 literalSearch:(id)a5;
- (BOOL)_bagOfWordsContainsString:(id)a3;
- (NSString)canonicalQueryString;
- (WBSCompletionQuery)initWithNewQueryString:(id)a3 queryBeforeRewriting:(id)a4;
- (WBSCompletionQuery)initWithQueryString:(id)a3 queryID:(int64_t)a4 triggerEvent:(unint64_t)a5;
- (id)_bagOfWords;
- (id)_initWithQueryString:(id)a3 queryID:(int64_t)a4 timestamp:()time_point<std:(std:()std:(1000000000>>>)a5 :(unint64_t)a6 ratio<1 :(unint64_t)a7 chrono::duration<long)long :chrono::steady_clock indexInFeedbackArray:triggerEvent:;
- (id)_rangesOfMatchedTextInString:(id)a3 offset:(unint64_t)a4;
- (id)description;
- (id)rangesOfMatchedTextInTitle:(id)a3 displayOnlyAddress:(id)a4;
- (id)rangesToHighlightInSearchSuggestion:(id)a3;
@end

@implementation WBSCompletionQuery

- (id)_initWithQueryString:(id)a3 queryID:(int64_t)a4 timestamp:()time_point<std:(std:()std:(1000000000>>>)a5 :(unint64_t)a6 ratio<1 :(unint64_t)a7 chrono::duration<long)long :chrono::steady_clock indexInFeedbackArray:triggerEvent:
{
  v12 = a3;
  v18.receiver = self;
  v18.super_class = WBSCompletionQuery;
  v13 = [(WBSCompletionQuery *)&v18 init];
  if (v13)
  {
    v14 = [v12 copy];
    queryString = v13->_queryString;
    v13->_queryString = v14;

    v13->_queryID = a4;
    v13->_timestamp = a5;
    v13->_indexInFeedbackArray = a6;
    v13->_triggerEvent = a7;
    v16 = v13;
  }

  return v13;
}

- (WBSCompletionQuery)initWithNewQueryString:(id)a3 queryBeforeRewriting:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSCompletionQuery *)self initWithQueryString:v6 queryID:atomic_fetch_add(&_currentQueryID, 1uLL) + 1];
  if (v8)
  {
    v9 = [v7 queryString];
    queryStringBeforeRewriting = v8->_queryStringBeforeRewriting;
    v8->_queryStringBeforeRewriting = v9;

    if (v7)
    {
      objc_storeStrong(&v8->_cachedBagOfWords, v7[1]);
      objc_storeStrong(&v8->_profileIdentifierToFilterResults, v7[7]);
    }

    v11 = v8;
  }

  return v8;
}

- (WBSCompletionQuery)initWithQueryString:(id)a3 queryID:(int64_t)a4 triggerEvent:(unint64_t)a5
{
  v8 = a3;
  v9 = [(WBSCompletionQuery *)self _initWithQueryString:v8 queryID:a4 timestamp:std::chrono::steady_clock::now().__d_.__rep_ indexInFeedbackArray:0x7FFFFFFFFFFFFFFFLL triggerEvent:a5];

  return v9;
}

- (NSString)canonicalQueryString
{
  v2 = 64;
  if (!self->_queryStringBeforeRewriting)
  {
    v2 = 32;
  }

  return *(&self->super.isa + v2);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p string = %@>", v5, self, self->_queryString];;

  return v6;
}

- (id)_bagOfWords
{
  cachedBagOfWords = self->_cachedBagOfWords;
  if (!cachedBagOfWords)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = 64;
    if (!self->_queryStringBeforeRewriting)
    {
      v5 = 32;
    }

    v6 = *(&self->super.isa + v5);
    v7 = [v6 length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__WBSCompletionQuery__bagOfWords__block_invoke;
    v12[3] = &unk_1E7FB8AA8;
    v8 = v4;
    v13 = v8;
    [v6 enumerateSubstringsInRange:0 options:v7 usingBlock:{3, v12}];
    v9 = [v8 copy];
    v10 = self->_cachedBagOfWords;
    self->_cachedBagOfWords = v9;

    cachedBagOfWords = self->_cachedBagOfWords;
  }

  return cachedBagOfWords;
}

void __33__WBSCompletionQuery__bagOfWords__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 safari_stringByTrimmingWhitespace];
  if ([v3 length])
  {
    if ([v3 safari_containsCJKCharacters])
    {
      for (i = 0; i < [v3 length]; ++i)
      {
        v5 = [v3 substringWithRange:{i, 1}];
        v6 = *(a1 + 32);
        v7 = [v5 lowercaseString];
        [v6 addObject:v7];
      }
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = [v3 lowercaseString];
      [v8 addObject:v9];
    }
  }
}

- (BOOL)_bagOfWordsContainsString:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(WBSCompletionQuery *)self _bagOfWords];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (![v9 safari_caseAndDiacriticInsensitiveStandardRangeOfString:v4 additionalOptions:8] && v10 == objc_msgSend(v9, "length"))
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (id)rangesToHighlightInSearchSuggestion:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = 64;
  if (!self->_queryStringBeforeRewriting)
  {
    v5 = 32;
  }

  v6 = *(&self->super.isa + v5);
  v7 = [v6 safari_stringByTrimmingWhitespace];
  v8 = [v7 lowercaseString];

  if (v4 && [v8 length])
  {
    if ([v4 safari_caseAndDiacriticInsensitiveStandardRangeOfString:v8 additionalOptions:8] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [MEMORY[0x1E695DF70] array];
      v11 = [v4 length];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __58__WBSCompletionQuery_rangesToHighlightInSearchSuggestion___block_invoke;
      v18 = &unk_1E7FB8AD0;
      v19 = self;
      v12 = v10;
      v20 = v12;
      [v4 enumerateSubstringsInRange:0 options:v11 usingBlock:{3, &v15}];
      v13 = [v12 copy];
    }

    else
    {
      v12 = [MEMORY[0x1E696B098] valueWithRange:{v9, objc_msgSend(v4, "length") - v9}];
      v21[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

void __58__WBSCompletionQuery_rangesToHighlightInSearchSuggestion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 safari_stringByTrimmingWhitespace];
  v9 = [v8 length];

  if (v9)
  {
    v23 = [v7 lowercaseString];

    if ([v23 safari_containsCJKCharacters])
    {
      for (i = 0; i < [v23 length]; ++i)
      {
        v11 = [v23 substringWithRange:{i, 1}];
        v12 = [*(a1 + 32) _bagOfWords];
        v13 = [v12 containsObject:v11];

        if ((v13 & 1) == 0)
        {
          v14 = *(a1 + 40);
          v15 = [MEMORY[0x1E696B098] valueWithRange:{a3 + i, 1}];
          [v14 addObject:v15];
        }
      }
    }

    else
    {
      v17 = [v23 length];
      if (v17)
      {
        v18 = v23;
        while (1)
        {
          v19 = *(a1 + 32);
          v20 = [v18 substringToIndex:v17];
          LOBYTE(v19) = [v19 _bagOfWordsContainsString:v20];

          if (v19)
          {
            break;
          }

          --v17;
          v18 = v23;
          if (!v17)
          {
            goto LABEL_15;
          }
        }
      }

      v18 = v23;
LABEL_15:
      if (v17 != [v18 length])
      {
        v21 = *(a1 + 40);
        v22 = [MEMORY[0x1E696B098] valueWithRange:{v17 + a3, a4 - v17}];
        [v21 addObject:v22];
      }
    }

    v16 = v23;
  }

  else
  {
    v16 = v7;
  }
}

- (id)rangesOfMatchedTextInTitle:(id)a3 displayOnlyAddress:(id)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v31 = a3;
  v32 = a4;
  v6 = 64;
  if (!self->_queryStringBeforeRewriting)
  {
    v6 = 32;
  }

  v29 = *(&self->super.isa + v6);
  v7 = [v29 safari_stringByTrimmingWhitespace];
  v8 = [v7 lowercaseString];

  if (![v8 length])
  {
    v17 = 0;
    goto LABEL_21;
  }

  v9 = [v31 lowercaseString];
  v10 = [v9 hasPrefix:v8];

  v11 = [v32 lowercaseString];
  v12 = [v11 substringFromIndex:1];
  v13 = [v12 hasPrefix:v8];

  if (((v10 | v13) & 1) == 0)
  {
    v30 = [(WBSCompletionQuery *)self _rangesOfMatchedTextInString:v31 offset:0];
    v16 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = [v32 componentsSeparatedByString:@"."];
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v19)
    {
      v20 = 0;
      v21 = *v34;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v33 + 1) + 8 * i);
          v24 = [(WBSCompletionQuery *)self _rangesOfMatchedTextInString:v23 offset:v20];
          [v16 addObjectsFromArray:v24];
          v25 = [v23 length];

          v20 += v25 + 1;
        }

        v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v19);
    }

    v26 = objc_alloc(MEMORY[0x1E69C88F0]);
    v27 = [v16 copy];
    v17 = [v26 initWithFirst:v30 second:v27];

    goto LABEL_20;
  }

  if (!v10)
  {
    v30 = MEMORY[0x1E695E0F0];
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_18:
    v16 = MEMORY[0x1E695E0F0];
    goto LABEL_19;
  }

  v14 = [MEMORY[0x1E696B098] valueWithRange:{0, objc_msgSend(v8, "length")}];
  v39[0] = v14;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];

  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_7:
  v15 = [MEMORY[0x1E696B098] valueWithRange:{1, objc_msgSend(v8, "length")}];
  v38 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];

LABEL_19:
  v17 = [objc_alloc(MEMORY[0x1E69C88F0]) initWithFirst:v30 second:v16];
LABEL_20:

LABEL_21:

  return v17;
}

- (id)_rangesOfMatchedTextInString:(id)a3 offset:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [v6 length];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__WBSCompletionQuery__rangesOfMatchedTextInString_offset___block_invoke;
  v12[3] = &unk_1E7FB8AF8;
  v12[4] = self;
  v9 = v7;
  v13 = v9;
  v14 = a4;
  [v6 enumerateSubstringsInRange:0 options:v8 usingBlock:{3, v12}];
  v10 = [v9 copy];

  return v10;
}

void __58__WBSCompletionQuery__rangesOfMatchedTextInString_offset___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 safari_stringByTrimmingWhitespace];
  v7 = [v6 length];

  if (v7)
  {
    v21 = [v5 lowercaseString];

    if ([v21 safari_containsCJKCharacters])
    {
      for (i = 0; i < [v21 length]; ++i)
      {
        v9 = [v21 substringWithRange:{i, 1}];
        v10 = [*(a1 + 32) _bagOfWords];
        v11 = [v10 containsObject:v9];

        if (v11)
        {
          v12 = *(a1 + 40);
          v13 = [MEMORY[0x1E696B098] valueWithRange:{a3 + *(a1 + 48), 1}];
          [v12 addObject:v13];
        }

        ++a3;
      }
    }

    else
    {
      v15 = [v21 length];
      if (v15)
      {
        while (1)
        {
          v16 = [*(a1 + 32) _bagOfWords];
          v17 = [v21 substringToIndex:v15];
          v18 = [v16 containsObject:v17];

          if (v18)
          {
            break;
          }

          if (!--v15)
          {
            goto LABEL_14;
          }
        }

        v19 = *(a1 + 40);
        v20 = [MEMORY[0x1E696B098] valueWithRange:{*(a1 + 48) + a3, v15}];
        [v19 addObject:v20];
      }
    }

LABEL_14:
    v14 = v21;
  }

  else
  {
    v14 = v5;
  }
}

+ (id)recentAndSuggestedCompletionStringsByMergingRecentSearches:(id)a3 withSuggestions:(id)a4 literalSearch:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 count];
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v10];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __111__WBSCompletionQuery_recentAndSuggestedCompletionStringsByMergingRecentSearches_withSuggestions_literalSearch___block_invoke;
  v30[3] = &unk_1E7FB8B20;
  v12 = v9;
  v31 = v12;
  v33 = v10;
  v13 = v11;
  v32 = v13;
  [v7 enumerateObjectsUsingBlock:v30];
  v14 = [v8 count];
  v15 = [v13 copy];
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __111__WBSCompletionQuery_recentAndSuggestedCompletionStringsByMergingRecentSearches_withSuggestions_literalSearch___block_invoke_2;
  v24[3] = &unk_1E7FB8B70;
  v17 = v12;
  v25 = v17;
  v18 = v15;
  v26 = v18;
  v19 = v16;
  v27 = v19;
  v29 = v14;
  v20 = v13;
  v28 = v20;
  [v8 enumerateObjectsUsingBlock:v24];
  v21 = [v20 keysSortedByValueUsingComparator:&__block_literal_global_24];
  v22 = [v21 arrayByAddingObjectsFromArray:v19];

  return v22;
}

void __111__WBSCompletionQuery_recentAndSuggestedCompletionStringsByMergingRecentSearches_withSuggestions_literalSearch___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (([v7 safari_isCaseInsensitiveEqualToString:*(a1 + 32)] & 1) == 0)
  {
    *&v5 = (((*(a1 + 48) - a3) * 0.9) / *(a1 + 48)) + 1.1;
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

void __111__WBSCompletionQuery_recentAndSuggestedCompletionStringsByMergingRecentSearches_withSuggestions_literalSearch___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([v5 safari_isCaseInsensitiveEqualToString:*(a1 + 32)] & 1) == 0)
  {
    v6 = [*(a1 + 40) allKeys];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __111__WBSCompletionQuery_recentAndSuggestedCompletionStringsByMergingRecentSearches_withSuggestions_literalSearch___block_invoke_3;
    v14[3] = &unk_1E7FB8B48;
    v7 = v5;
    v15 = v7;
    v8 = [v6 safari_firstObjectPassingTest:v14];

    if (v8)
    {
      v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
      [v9 floatValue];
      v11 = (v10 + 1.0) + ((*(a1 + 64) - a3) / *(a1 + 64));

      *&v12 = v11;
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
      [*(a1 + 56) setObject:v13 forKeyedSubscript:v8];
    }

    else
    {
      [*(a1 + 48) addObject:v7];
    }
  }
}

@end