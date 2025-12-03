@interface PRSRankingPolicyManager
+ (double)termFrequencyComponentFor:(id)for matchingString:(id)string weighted:(BOOL)weighted;
+ (double)termFrequencyComponentForWord:(id)word inString:(id)string;
+ (id)getSharedRankingPolicyManager;
- (BOOL)doesOrderedSpanExistWithStartingIndex:(unint64_t)index nextArray:(id)array arrayOfIndexArrays:(id)arrays level:(unint64_t)level currentOrderedSpan:(int64_t *)span;
- (id)cookSQFOnClientWithServerProbabilities:(id)probabilities qiCEPValues:(id)values localResultOrder:(id)order poorTextMatchCategories:(id)categories minimumBagCEP:(double)p cook_sqf_topdown:(BOOL)cook_sqf_topdown cook_sqf_fallback_qi_cep:(BOOL)cook_sqf_fallback_qi_cep;
- (id)cosineComponentsUsingWordMatches:(id)matches withField:(id)field withCorpusCount:(double)count prefixVersion:(BOOL)version;
- (void)computeNewFeaturesForProperty:(id)property query:(id)query qr_prop_query_norm_min_ordered_span:(double *)qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:(double *)qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:(double *)qr_query_min_pair_dist_in_title prefix_match_norm_count:(double *)prefix_match_norm_count;
- (void)computeNewFeaturesForProperty:(id)property query:(id)query qr_prop_query_norm_min_ordered_span:(double *)qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:(double *)qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:(double *)qr_query_min_pair_dist_in_title prefix_match_norm_count:(double *)prefix_match_norm_count ordered_first_term_position:(double *)ordered_first_term_position prefixMatch:(BOOL)self0 queryBreakDown:(id)self1 isVirtualField:(BOOL)self2 locale:(id)self3;
- (void)computeNewFeaturesForProperty:(id)property query:(id)query qr_prop_query_norm_min_ordered_span:(double *)qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:(double *)qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:(double *)qr_query_min_pair_dist_in_title prefix_match_norm_count:(double *)prefix_match_norm_count prefixMatch:(BOOL)match;
- (void)minimumAnyOrderSpanWithStartingIndex:(int64_t)index nextArray:(id)array arrayOfIndexArrays:(id)arrays level:(unint64_t)level currentAnyOrderSpan:(int64_t)span minimumSpan:(int64_t *)minimumSpan minimumDistancePair:(int64_t *)pair currentMinimumIndex:(int64_t)self0 currentMaximumIndex:(int64_t)self1;
@end

@implementation PRSRankingPolicyManager

+ (id)getSharedRankingPolicyManager
{
  if (getSharedRankingPolicyManager_onceToken != -1)
  {
    +[PRSRankingPolicyManager getSharedRankingPolicyManager];
  }

  v3 = policyManager;

  return v3;
}

uint64_t __56__PRSRankingPolicyManager_getSharedRankingPolicyManager__block_invoke()
{
  policyManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (double)termFrequencyComponentFor:(id)for matchingString:(id)string weighted:(BOOL)weighted
{
  weightedCopy = weighted;
  v48 = *MEMORY[0x1E69E9840];
  forCopy = for;
  stringCopy = string;
  v9 = objc_opt_new();
  v10 = [forCopy length];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v36 = stringCopy;
  v12 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = v10;
    v16 = v10;
    v17 = *v43;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v42 + 1) + 8 * i);
        if (v15 <= [v19 length] && !objc_msgSend(v19, "compare:options:range:", forCopy, 129, 0, v16))
        {
          v20 = [v9 objectForKey:v19];
          if (v20)
          {
            v21 = v20;
            v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "unsignedIntegerValue") + 1}];
          }

          else
          {
            v22 = &unk_1F55B44B8;
          }

          [v9 setObject:v22 forKey:v19];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v14);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allKeys = [v9 allKeys];
  v24 = [allKeys countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v39;
    v27 = 0.0;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(allKeys);
        }

        v29 = *(*(&v38 + 1) + 8 * j);
        v30 = [v9 objectForKey:v29];
        unsignedIntegerValue = [v30 unsignedIntegerValue];

        v32 = log(unsignedIntegerValue) + 1.0;
        if (weightedCopy)
        {
          v33 = v32 * [forCopy length];
          v32 = v33 / [v29 length];
        }

        v27 = v27 + v32;
      }

      v25 = [allKeys countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v25);
  }

  else
  {
    v27 = 0.0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v27;
}

+ (double)termFrequencyComponentForWord:(id)word inString:(id)string
{
  v23 = *MEMORY[0x1E69E9840];
  wordCopy = word;
  stringCopy = string;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v10)
  {

LABEL_13:
    v15 = 0.0;
    goto LABEL_14;
  }

  v11 = v10;
  v12 = *v19;
  v13 = 0.0;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      if (![*(*(&v18 + 1) + 8 * i) compare:wordCopy options:{129, v18}])
      {
        v13 = v13 + 1.0;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v11);

  if (v13 == 0.0)
  {
    goto LABEL_13;
  }

  v15 = log(v13) + 1.0;
LABEL_14:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)cosineComponentsUsingWordMatches:(id)matches withField:(id)field withCorpusCount:(double)count prefixVersion:(BOOL)version
{
  versionCopy = version;
  matchesCopy = matches;
  fieldCopy = field;
  v11 = objc_opt_new();
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v13 = [fieldCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v13 count])
  {
    v14 = [matchesCopy count];
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    if (versionCopy)
    {
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    }

    else
    {
      v16 = 0;
    }

    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    if (versionCopy)
    {
      v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    }

    else
    {
      v19 = 0;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __100__PRSRankingPolicyManager_cosineComponentsUsingWordMatches_withField_withCorpusCount_prefixVersion___block_invoke;
    v26[3] = &unk_1E8596C50;
    countCopy = count;
    v27 = v17;
    v34 = versionCopy;
    v28 = fieldCopy;
    v29 = v15;
    v30 = v16;
    v31 = v18;
    v32 = v19;
    v20 = v19;
    v21 = v18;
    v22 = v16;
    v23 = v15;
    v24 = v17;
    [matchesCopy enumerateKeysAndObjectsUsingBlock:v26];
    [v11 setTermFrequencies:v23];
    [v11 setTermFrequenciesWeighted:v22];
    [v11 setInverseDocFrequencies:v24];
    [v11 setTermInverseDoc:v21];
    [v11 setTermInverseDocWeighted:v20];
    [v11 setFieldLength:{objc_msgSend(v13, "count")}];
  }

  return v11;
}

void __100__PRSRankingPolicyManager_cosineComponentsUsingWordMatches_withField_withCorpusCount_prefixVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v5 = a3;
  [v5 doubleValue];
  if (v6 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v7 = *(a1 + 80);
    [v5 doubleValue];
    v9 = log(v7 / v8 + 1.0);
  }

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v10 addObject:v11];

  v12 = *(a1 + 40);
  if (*(a1 + 88) == 1)
  {
    [PRSRankingPolicyManager termFrequencyComponentFor:v28 matchingString:v12 weighted:0];
    v14 = v13;
    [PRSRankingPolicyManager termFrequencyComponentFor:v28 matchingString:*(a1 + 40) weighted:1];
    v16 = v15;
    v17 = *(a1 + 48);
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    [v17 addObject:v18];

    v19 = *(a1 + 56);
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
    [v19 addObject:v20];

    v21 = *(a1 + 64);
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v9 * v14];
    [v21 addObject:v22];
    v23 = 72;
  }

  else
  {
    [PRSRankingPolicyManager termFrequencyComponentForWord:v28 inString:v12];
    v16 = v24;
    v25 = *(a1 + 48);
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v25 addObject:v22];
    v23 = 64;
  }

  v26 = *(a1 + v23);
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v9 * v16];
  [v26 addObject:v27];
}

- (void)minimumAnyOrderSpanWithStartingIndex:(int64_t)index nextArray:(id)array arrayOfIndexArrays:(id)arrays level:(unint64_t)level currentAnyOrderSpan:(int64_t)span minimumSpan:(int64_t *)minimumSpan minimumDistancePair:(int64_t *)pair currentMinimumIndex:(int64_t)self0 currentMaximumIndex:(int64_t)self1
{
  arrayCopy = array;
  arraysCopy = arrays;
  if ([arraysCopy count] == level)
  {
    v15 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PRSRankingPolicyManager minimumAnyOrderSpanWithStartingIndex:level nextArray:v15 arrayOfIndexArrays:? level:? currentAnyOrderSpan:? minimumSpan:? minimumDistancePair:? currentMinimumIndex:? currentMaximumIndex:?];
    }
  }

  else if ([arrayCopy count])
  {
    v16 = 0;
    v17 = level + 1;
    v27 = arrayCopy;
    do
    {
      v18 = [arrayCopy objectAtIndex:v16];
      integerValue = [v18 integerValue];

      v20 = integerValue - index;
      if (integerValue - index < 0)
      {
        v20 = index - integerValue;
      }

      if (v20 < *pair)
      {
        *pair = v20;
      }

      v21 = integerValue - maximumIndex;
      if (integerValue <= maximumIndex)
      {
        maximumIndexCopy = maximumIndex;
      }

      else
      {
        maximumIndexCopy = integerValue;
      }

      if (integerValue <= maximumIndex)
      {
        v21 = 0;
      }

      if (minimumIndex > integerValue)
      {
        minimumIndexCopy = integerValue;
      }

      else
      {
        minimumIndexCopy = minimumIndex;
      }

      if (minimumIndex > integerValue)
      {
        maximumIndexCopy2 = maximumIndex;
      }

      else
      {
        maximumIndexCopy2 = maximumIndexCopy;
      }

      if (minimumIndex > integerValue)
      {
        v21 = minimumIndex - integerValue;
      }

      v25 = v21 + span;
      if (v17 == [arraysCopy count])
      {
        if (*minimumSpan > v25)
        {
          *minimumSpan = v25;
        }
      }

      else
      {
        v26 = [arraysCopy objectAtIndex:v17];
        [(PRSRankingPolicyManager *)self minimumAnyOrderSpanWithStartingIndex:integerValue nextArray:v26 arrayOfIndexArrays:arraysCopy level:v17 currentAnyOrderSpan:v25 minimumSpan:minimumSpan minimumDistancePair:pair currentMinimumIndex:minimumIndexCopy currentMaximumIndex:maximumIndexCopy2];

        arrayCopy = v27;
      }

      ++v16;
    }

    while ([arrayCopy count] > v16);
  }
}

- (BOOL)doesOrderedSpanExistWithStartingIndex:(unint64_t)index nextArray:(id)array arrayOfIndexArrays:(id)arrays level:(unint64_t)level currentOrderedSpan:(int64_t *)span
{
  arrayCopy = array;
  arraysCopy = arrays;
  if ([arraysCopy count] != level)
  {
    if (![arrayCopy count])
    {
LABEL_7:
      v14 = 0;
      goto LABEL_8;
    }

    v15 = 0;
    while (1)
    {
      v16 = [arrayCopy objectAtIndex:v15];
      integerValue = [v16 integerValue];

      if (integerValue > index)
      {
        break;
      }

      if ([arrayCopy count] <= ++v15)
      {
        goto LABEL_7;
      }
    }

    *span += integerValue - index;
    v19 = level + 1;
    if (v19 != [arraysCopy count])
    {
      v20 = [arraysCopy objectAtIndex:v19];
      v14 = [(PRSRankingPolicyManager *)self doesOrderedSpanExistWithStartingIndex:integerValue nextArray:v20 arrayOfIndexArrays:arraysCopy level:v19 currentOrderedSpan:span];

      goto LABEL_8;
    }
  }

  v14 = 1;
LABEL_8:

  return v14;
}

- (void)computeNewFeaturesForProperty:(id)property query:(id)query qr_prop_query_norm_min_ordered_span:(double *)qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:(double *)qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:(double *)qr_query_min_pair_dist_in_title prefix_match_norm_count:(double *)prefix_match_norm_count
{
  v9 = 0;
  LOBYTE(v8) = 0;
  [(PRSRankingPolicyManager *)self computeNewFeaturesForProperty:property query:query qr_prop_query_norm_min_ordered_span:qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:qr_query_min_pair_dist_in_title prefix_match_norm_count:&v9 prefixMatch:v8];
}

- (void)computeNewFeaturesForProperty:(id)property query:(id)query qr_prop_query_norm_min_ordered_span:(double *)qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:(double *)qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:(double *)qr_query_min_pair_dist_in_title prefix_match_norm_count:(double *)prefix_match_norm_count prefixMatch:(BOOL)match
{
  v21 = 0;
  v15 = MEMORY[0x1E695DF58];
  queryCopy = query;
  propertyCopy = property;
  currentLocale = [v15 currentLocale];
  LOBYTE(v20) = 0;
  LOBYTE(v19) = match;
  [(PRSRankingPolicyManager *)self computeNewFeaturesForProperty:propertyCopy query:queryCopy qr_prop_query_norm_min_ordered_span:qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:qr_query_min_pair_dist_in_title prefix_match_norm_count:prefix_match_norm_count ordered_first_term_position:&v21 prefixMatch:v19 queryBreakDown:0 isVirtualField:v20 locale:currentLocale];
}

- (void)computeNewFeaturesForProperty:(id)property query:(id)query qr_prop_query_norm_min_ordered_span:(double *)qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:(double *)qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:(double *)qr_query_min_pair_dist_in_title prefix_match_norm_count:(double *)prefix_match_norm_count ordered_first_term_position:(double *)ordered_first_term_position prefixMatch:(BOOL)self0 queryBreakDown:(id)self1 isVirtualField:(BOOL)self2 locale:(id)self3
{
  v130 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  downCopy = down;
  localeCopy = locale;
  v80 = [downCopy count];
  v87 = objc_opt_new();
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v94 = [propertyCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = downCopy;
  v91 = [obj countByEnumeratingWithState:&v121 objects:v129 count:16];
  if (v91)
  {
    v16 = 0;
    v101 = 0;
    v88 = propertyCopy;
    v89 = *v122;
    v86 = 1;
LABEL_3:
    v17 = 0;
    v18 = 5;
    if (v16 > 5)
    {
      v18 = v16;
    }

    v93 = v18 - v16;
    while (1)
    {
      if (*v122 != v89)
      {
        objc_enumerationMutation(obj);
      }

      if (v17 == v93)
      {
        break;
      }

      v96 = v17;
      v98 = v16;
      v19 = *(*(&v121 + 1) + 8 * v17);
      v20 = objc_opt_new();
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v21 = v94;
      v22 = [v21 countByEnumeratingWithState:&v117 objects:v128 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v118;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v118 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v117 + 1) + 8 * i);
            if ([PRSRankingUtilities caseAndDiacriticInsensitiveLocalizedString:v26 isEqualToString:v19]|| match && [PRSRankingUtilities caseAndDiacriticInsensitiveLocalizedString:v26 hasPrefix:v19 locale:localeCopy])
            {

              v115 = 0u;
              v116 = 0u;
              v113 = 0u;
              v114 = 0u;
              v27 = v21;
              v28 = [v27 countByEnumeratingWithState:&v113 objects:v127 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = 0;
                v31 = *v114;
                do
                {
                  for (j = 0; j != v29; ++j)
                  {
                    if (*v114 != v31)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v33 = *(*(&v113 + 1) + 8 * j);
                    if ([PRSRankingUtilities caseAndDiacriticInsensitiveLocalizedString:v33 isEqualToString:v19]|| match && [PRSRankingUtilities caseAndDiacriticInsensitiveLocalizedString:v33 hasPrefix:v19 locale:localeCopy])
                    {
                      v34 = [MEMORY[0x1E696AD98] numberWithInteger:v30];
                      [v20 addObject:v34];

                      ++v101;
                    }

                    ++v30;
                  }

                  v29 = [v27 countByEnumeratingWithState:&v113 objects:v127 count:16];
                }

                while (v29);
              }

              if ([v20 count])
              {
                [v87 addObject:v20];
              }

              goto LABEL_33;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v117 objects:v128 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v86 = 0;
LABEL_33:
      propertyCopy = v88;
      v16 = v98 + 1;

      v17 = v96 + 1;
      if (v96 + 1 == v91)
      {
        v91 = [obj countByEnumeratingWithState:&v121 objects:v129 count:16];
        if (v91)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v101 = 0;
    v86 = 1;
  }

  v35 = v87;
  if (![v87 count])
  {
    *qr_prop_query_norm_min_ordered_span = 2147483650.0;
    *qr_prop_query_norm_min_unordered_span = 2147483650.0;
    *prefix_match_norm_count = 2147483650.0;
    *qr_query_min_pair_dist_in_title = 2147483650.0;
    *ordered_first_term_position = 2147483650.0;
    goto LABEL_92;
  }

  [v87 firstObject];
  v111 = 0x7FFFFFFFLL;
  v99 = v112 = 0x7FFFFFFFLL;
  v36 = [v99 count];
  if (!v36)
  {
    *qr_query_min_pair_dist_in_title = v111;
    *qr_prop_query_norm_min_ordered_span = 2147483650.0;
    *ordered_first_term_position = 2147483650.0;
    v74 = 2147483650.0;
    v77 = v101;
    v41 = v86;
    goto LABEL_88;
  }

  v37 = v36;
  v38 = 0;
  integerValue2 = 0x7FFFFFFFLL;
  v39 = 0x7FFFFFFFLL;
  v40 = 0x7FFFFFFFLL;
  v41 = v86;
  do
  {
    v110 = 0;
    if ([v35 count] < 2)
    {
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      firstObject = [v35 firstObject];
      v58 = [firstObject countByEnumeratingWithState:&v106 objects:v126 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v107;
        v61 = 1.79769313e308;
        do
        {
          for (k = 0; k != v59; ++k)
          {
            if (*v107 != v60)
            {
              objc_enumerationMutation(firstObject);
            }

            v63 = *(*(&v106 + 1) + 8 * k);
            [v63 doubleValue];
            if (v64 < v61)
            {
              [v63 doubleValue];
              v61 = v65;
            }
          }

          v59 = [firstObject countByEnumeratingWithState:&v106 objects:v126 count:16];
        }

        while (v59);
        integerValue2 = v61;
        v35 = v87;
        v41 = v86;
      }

      v66 = [obj count];
      if (v41)
      {
        if (v66 == 1)
        {
          v40 = 0;
          v39 = 0;
          v111 = 0;
          goto LABEL_81;
        }

LABEL_75:
        v40 = 0;
        v39 = 0;
        v111 = 0x7FFFFFFFLL;
        goto LABEL_81;
      }

      if (v66 < 2)
      {
        goto LABEL_75;
      }

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v67 = obj;
      v68 = [v67 countByEnumeratingWithState:&v102 objects:v125 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = 0;
        v71 = *v103;
        do
        {
          for (m = 0; m != v69; ++m)
          {
            if (*v103 != v71)
            {
              objc_enumerationMutation(v67);
            }

            v70 += [propertyCopy localizedStandardContainsString:*(*(&v102 + 1) + 8 * m)];
          }

          v69 = [v67 countByEnumeratingWithState:&v102 objects:v125 count:16];
        }

        while (v69);

        if (v70 == 1)
        {
          v73 = [propertyCopy componentsSeparatedByString:@" "];
          v111 = [v73 count];
        }

        v40 = 0;
        v39 = 0;
        v35 = v87;
        v41 = v86;
      }

      else
      {

        v40 = 0;
        v39 = 0;
      }
    }

    else
    {
      if (v41)
      {
        v42 = [v99 objectAtIndexedSubscript:v38];
        integerValue = [v42 integerValue];
        v44 = [v35 objectAtIndex:1];
        LODWORD(integerValue) = [(PRSRankingPolicyManager *)self doesOrderedSpanExistWithStartingIndex:integerValue nextArray:v44 arrayOfIndexArrays:v35 level:1 currentOrderedSpan:&v110];

        if (integerValue)
        {
          if (v40 > v110)
          {
            v45 = [v99 objectAtIndexedSubscript:v38];
            integerValue2 = [v45 integerValue];

            v40 = v110;
          }
        }
      }

      if (field)
      {
        v92 = v40;
        v97 = v39;
        v46 = v37;
        v47 = [v99 objectAtIndexedSubscript:v38];
        integerValue3 = [v47 integerValue];
        v49 = [v35 objectAtIndex:1];
        v50 = [v99 objectAtIndexedSubscript:v38];
        integerValue4 = [v50 integerValue];
        [v99 objectAtIndexedSubscript:v38];
        v53 = v52 = v35;
        integerValue5 = [v53 integerValue];
        v55 = v52;
        v41 = v86;
        [(PRSRankingPolicyManager *)self minimumAnyOrderSpanWithStartingIndex:integerValue3 nextArray:v49 arrayOfIndexArrays:v55 level:1 currentAnyOrderSpan:0 minimumSpan:&v112 minimumDistancePair:&v111 currentMinimumIndex:integerValue4 currentMaximumIndex:integerValue5];

        if (v86)
        {
          v56 = v112;
          if (v97 < v112)
          {
            v56 = v97;
          }

          v35 = v87;
          v37 = v46;
          v40 = v92;
          if (v97 <= v112)
          {
            if ([obj count] == 1)
            {
              v111 = 0;
            }

            v39 = v97;
          }

          else
          {
            v39 = v56;
          }
        }

        else
        {
          v35 = v87;
          v37 = v46;
          v39 = v97;
          v40 = v92;
        }
      }
    }

LABEL_81:
    ++v38;
  }

  while (v38 != v37);
  *qr_query_min_pair_dist_in_title = v111;
  v74 = 2147483650.0;
  v75 = 2147483650.0;
  v76 = 2147483650.0;
  v77 = v101;
  if (((v40 != 0x7FFFFFFF) & v41) != 0)
  {
    v76 = integerValue2;
    v75 = (v40 + 2.0) / v80;
  }

  *qr_prop_query_norm_min_ordered_span = v75;
  *ordered_first_term_position = v76;
  if (((v39 != 0x7FFFFFFF) & v41) == 1)
  {
    v74 = (v39 + 2.0) / v80;
  }

LABEL_88:
  *qr_prop_query_norm_min_unordered_span = v74;
  if (((v77 != 0) & v41) == 1)
  {
    v78 = (v77 / v80);
  }

  else
  {
    v78 = 2147483650.0;
  }

  *prefix_match_norm_count = v78;

LABEL_92:
  v79 = *MEMORY[0x1E69E9840];
}

- (id)cookSQFOnClientWithServerProbabilities:(id)probabilities qiCEPValues:(id)values localResultOrder:(id)order poorTextMatchCategories:(id)categories minimumBagCEP:(double)p cook_sqf_topdown:(BOOL)cook_sqf_topdown cook_sqf_fallback_qi_cep:(BOOL)cook_sqf_fallback_qi_cep
{
  cook_sqf_topdownCopy = cook_sqf_topdown;
  v88 = *MEMORY[0x1E69E9840];
  probabilitiesCopy = probabilities;
  valuesCopy = values;
  orderCopy = order;
  categoriesCopy = categories;
  v52 = objc_opt_new();
  v55 = objc_opt_new();
  v16 = objc_opt_new();
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = orderCopy;
  v17 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v17)
  {
    v18 = *v76;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v76 != v18)
        {
          objc_enumerationMutation(obj);
        }

        valuesCopy = [PRSRankingUtilities bundleIDForCategory:*(*(&v75 + 1) + 8 * i), valuesCopy];
        [v55 addObject:valuesCopy];
      }

      v17 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v17);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v53 = categoriesCopy;
  v21 = [v53 countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (v21)
  {
    v22 = *v72;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v72 != v22)
        {
          objc_enumerationMutation(v53);
        }

        valuesCopy2 = [PRSRankingUtilities bundleIDForCategory:*(*(&v71 + 1) + 8 * j), valuesCopy];
        [v16 addObject:valuesCopy2];
      }

      v21 = [v53 countByEnumeratingWithState:&v71 objects:v86 count:16];
    }

    while (v21);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  allKeys = [probabilitiesCopy allKeys];
  v26 = 0;
  v27 = [allKeys countByEnumeratingWithState:&v67 objects:v85 count:16];
  if (v27)
  {
    v28 = *v68;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v68 != v28)
        {
          objc_enumerationMutation(allKeys);
        }

        v30 = *(*(&v67 + 1) + 8 * k);
        v31 = [probabilitiesCopy objectForKey:{v30, valuesCopy}];
        [v31 doubleValue];
        v33 = v32;

        if (v26)
        {
          v26 = 1;
        }

        else if ([v30 hasPrefix:@"com.apple.parsec."])
        {
          v26 = 0;
        }

        else
        {
          v26 = [v55 containsObject:v30];
        }

        if ([v30 hasPrefix:@"com.apple.parsec."])
        {
          v34 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
          [v52 setObject:v34 forKey:v30];
        }
      }

      v27 = [allKeys countByEnumeratingWithState:&v67 objects:v85 count:16];
    }

    while (v27);
  }

  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  pCopy = 0.0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v64[3] = 0;
  if (!cook_sqf_fallback_qi_cep)
  {
    pCopy = p;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __175__PRSRankingPolicyManager_cookSQFOnClientWithServerProbabilities_qiCEPValues_localResultOrder_poorTextMatchCategories_minimumBagCEP_cook_sqf_topdown_cook_sqf_fallback_qi_cep___block_invoke;
  aBlock[3] = &unk_1E8596C78;
  v63 = v26;
  v50 = valuesCopy;
  v57 = v50;
  v61 = v64;
  v62 = v65;
  v35 = v52;
  v58 = v35;
  v36 = probabilitiesCopy;
  v59 = v36;
  v37 = v16;
  v60 = v37;
  v38 = _Block_copy(aBlock);
  if (cook_sqf_topdownCopy)
  {
    v39 = 0;
    v40 = 1;
  }

  else
  {
    v39 = [obj count] - 1;
    v40 = -1;
  }

  v41 = 0;
  v42 = 0;
  while (v41 < [obj count])
  {
    v43 = [v55 objectAtIndex:v39];

    (v38)[2](v38, v43, !cook_sqf_topdownCopy);
    ++v41;
    v39 += v40;
    v42 = v43;
  }

  v44 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v80 = v36;
    v81 = 2112;
    v82 = v55;
    v83 = 2112;
    v84 = v35;
    _os_log_impl(&dword_1D9F69000, v44, OS_LOG_TYPE_INFO, "[Ranking Log] Cooking SQF: Server SQF received:%@ \n Local sorted categories(desc order): %@\n Final cooked SQF dictionary: %@\n", buf, 0x20u);
  }

  v45 = v35;
  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v65, 8);

  v46 = *MEMORY[0x1E69E9840];

  return v45;
}

void __175__PRSRankingPolicyManager_cookSQFOnClientWithServerProbabilities_qiCEPValues_localResultOrder_poorTextMatchCategories_minimumBagCEP_cook_sqf_topdown_cook_sqf_fallback_qi_cep___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v21 = v5;
  if ((*(a1 + 80) & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = v5;
    [v12 doubleValueForKey:{objc_msgSend(v21, "UTF8String")}];
    v11 = *(*(a1 + 64) + 8);
    v15 = *(v11 + 24);
    if (v15 == 0.0)
    {
      v16 = *(*(a1 + 72) + 8);
      if (*(v16 + 24) != 0.0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v17 = v15 < v14;
      if (!a3)
      {
        v17 = v15 > v14;
      }

      if (v15 <= 0.0 || !v17)
      {
        goto LABEL_19;
      }

      v16 = *(*(a1 + 72) + 8);
    }

    *(v16 + 24) = v14;
    v11 = *(*(a1 + 64) + 8);
LABEL_19:
    v8 = *(*(*(a1 + 72) + 8) + 24);
    goto LABEL_20;
  }

  v6 = [*(a1 + 48) objectForKey:v5];
  [v6 doubleValue];
  v8 = v7;

  v9 = *(*(*(a1 + 64) + 8) + 24);
  v10 = v8 > v9;
  if (!a3)
  {
    v10 = v8 < v9;
  }

  if (v9 == 0.0 || v10)
  {
    v9 = v8;
  }

  *(*(*(a1 + 72) + 8) + 24) = v9;
  *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24);
  if ([*(a1 + 56) containsObject:v21])
  {
    v11 = *(*(a1 + 72) + 8);
LABEL_20:
    *(v11 + 24) = v8;
  }

  v19 = *(a1 + 40);
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(*(a1 + 72) + 8) + 24)];
  [v19 setObject:v20 forKey:v21];
}

@end