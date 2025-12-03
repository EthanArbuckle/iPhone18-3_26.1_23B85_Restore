@interface ATXLayoutGenerator
+ (id)sortLayouts:(id)layouts;
- (ATXLayoutGenerator)initWithRankedSuggestions:(id)suggestions layoutsToConsider:(id)consider hyperParameters:(id)parameters suggestionDeduplicator:(id)deduplicator;
- (double)marginalScoreForSuggestion:(id)suggestion topRankingSuggestion:(id)rankingSuggestion;
- (double)weightForConfidenceCategory:(int64_t)category;
- (id)generateGreedySuggestionLayoutForUILayoutType:(int64_t)type layoutTypesForRankedSuggestions:(id)suggestions isSuggestionsWidgetLayout:(BOOL)layout;
- (id)generateLayoutToSuggestionDictionary;
- (id)generateValidLayouts;
- (id)uuidOfHighestConfidenceSuggestionFromRankedSuggestions:(id)suggestions uiLayoutType:(int64_t)type;
- (void)scoreLayout:(id)layout;
@end

@implementation ATXLayoutGenerator

- (ATXLayoutGenerator)initWithRankedSuggestions:(id)suggestions layoutsToConsider:(id)consider hyperParameters:(id)parameters suggestionDeduplicator:(id)deduplicator
{
  suggestionsCopy = suggestions;
  considerCopy = consider;
  parametersCopy = parameters;
  deduplicatorCopy = deduplicator;
  v18.receiver = self;
  v18.super_class = ATXLayoutGenerator;
  v15 = [(ATXLayoutGenerator *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_rankedSuggestions, suggestions);
    objc_storeStrong(&v16->_layoutsToConsider, consider);
    objc_storeStrong(&v16->_hyperParameters, parameters);
    objc_storeStrong(&v16->_deduplicator, deduplicator);
  }

  return v16;
}

- (id)generateValidLayouts
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  generateLayoutToSuggestionDictionary = [(ATXLayoutGenerator *)self generateLayoutToSuggestionDictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_layoutsToConsider;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = -[ATXLayoutGenerator generateGreedySuggestionLayoutForUILayoutType:layoutTypesForRankedSuggestions:isSuggestionsWidgetLayout:](self, "generateGreedySuggestionLayoutForUILayoutType:layoutTypesForRankedSuggestions:isSuggestionsWidgetLayout:", [v10 integerValue], generateLayoutToSuggestionDictionary, 1);
        if (v11)
        {
          [v3 addObject:v11];
        }

        v12 = -[ATXLayoutGenerator generateGreedySuggestionLayoutForUILayoutType:layoutTypesForRankedSuggestions:isSuggestionsWidgetLayout:](self, "generateGreedySuggestionLayoutForUILayoutType:layoutTypesForRankedSuggestions:isSuggestionsWidgetLayout:", [v10 integerValue], generateLayoutToSuggestionDictionary, 0);
        if (v12)
        {
          [v3 addObject:v12];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [objc_opt_class() sortLayouts:v3];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)generateLayoutToSuggestionDictionary
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_rankedSuggestions;
  v24 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v23 = *v31;
    do
    {
      v4 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v4;
        v5 = *(*(&v30 + 1) + 8 * v4);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        uiSpecification = [v5 uiSpecification];
        preferredLayoutConfigs = [uiSpecification preferredLayoutConfigs];

        v8 = [preferredLayoutConfigs countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v27;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v27 != v10)
              {
                objc_enumerationMutation(preferredLayoutConfigs);
              }

              v12 = *(*(&v26 + 1) + 8 * i);
              v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "applicableLayoutType")}];
              v14 = [v3 objectForKeyedSubscript:v13];

              if (!v14)
              {
                v15 = objc_opt_new();
                v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "applicableLayoutType")}];
                [v3 setObject:v15 forKeyedSubscript:v16];
              }

              v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "applicableLayoutType")}];
              v18 = [v3 objectForKeyedSubscript:v17];
              [v18 addObject:v5];
            }

            v9 = [preferredLayoutConfigs countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v9);
        }

        v4 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  v19 = [v3 copy];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)generateGreedySuggestionLayoutForUILayoutType:(int64_t)type layoutTypesForRankedSuggestions:(id)suggestions isSuggestionsWidgetLayout:(BOOL)layout
{
  layoutCopy = layout;
  v107 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v6 = 0x1E86A3000uLL;
  v78 = [ATXSuggestionLayout minSuggestionLayoutTypesForUILayoutType:type];
  typeCopy = type;
  v91 = [ATXSuggestionLayout maxSuggestionLayoutTypesForUILayoutType:type];
  v89 = objc_opt_new();
  v7 = 1;
  v8 = 0x1E696A000uLL;
  v92 = objc_opt_new();
  do
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v10 = [suggestionsCopy objectForKeyedSubscript:v9];
    v11 = [v10 count];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v13 = [v78 objectForKeyedSubscript:v12];
    unsignedIntegerValue = [v13 unsignedIntegerValue];

    if (v11 < unsignedIntegerValue)
    {
      v46 = __atxlog_handle_blending();
      v17 = v92;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [ATXSuggestionLayout stringFromUILayoutType:typeCopy];
        *buf = 138412290;
        v102 = v47;
        _os_log_impl(&dword_1DEFC4000, v46, OS_LOG_TYPE_DEFAULT, "Blending: Don't have enough suggestions to create UI layout %@", buf, 0xCu);
      }

      v48 = 0;
      v49 = v89;
      goto LABEL_53;
    }

    v15 = objc_opt_new();
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v17 = v92;
    [v92 setObject:v15 forKeyedSubscript:v16];

    ++v7;
  }

  while (v7 != 8);
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = self->_rankedSuggestions;
  v18 = [(NSArray *)obj countByEnumeratingWithState:&v97 objects:v106 count:16];
  if (v18)
  {
    v19 = v18;
    v87 = 0;
    v20 = *v98;
    v21 = !layoutCopy;
    v86 = 1;
    v79 = *v98;
    while (1)
    {
      v22 = 0;
      v80 = v19;
      do
      {
        if (*v98 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v97 + 1) + 8 * v22);
        v24 = objc_autoreleasePoolPush();
        isValidForSuggestionsWidget = [v23 isValidForSuggestionsWidget];
        if (!isValidForSuggestionsWidget || layoutCopy)
        {
          if ((isValidForSuggestionsWidget | v21) != 1)
          {
            goto LABEL_39;
          }

LABEL_15:
          v83 = v24;
          v84 = v22;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          uiSpecification = [v23 uiSpecification];
          preferredLayoutConfigs = [uiSpecification preferredLayoutConfigs];

          v28 = [preferredLayoutConfigs countByEnumeratingWithState:&v93 objects:v105 count:16];
          if (!v28)
          {
            goto LABEL_38;
          }

          v29 = v28;
          v30 = *v94;
          while (2)
          {
            v31 = 0;
LABEL_18:
            if (*v94 != v30)
            {
              objc_enumerationMutation(preferredLayoutConfigs);
            }

            v32 = [*(v8 + 3480) numberWithInteger:{objc_msgSend(*(*(&v93 + 1) + 8 * v31), "applicableLayoutType")}];
            v33 = [v17 objectForKeyedSubscript:v32];
            v34 = [v33 count];
            v35 = [v91 objectForKeyedSubscript:v32];
            unsignedIntegerValue2 = [v35 unsignedIntegerValue];

            if (v34 >= unsignedIntegerValue2)
            {
              goto LABEL_35;
            }

            executableSpecification = [v23 executableSpecification];
            if (![executableSpecification executableType])
            {
              goto LABEL_24;
            }

            executableSpecification2 = [v23 executableSpecification];
            if ([executableSpecification2 executableType] == 3)
            {

LABEL_24:
              v39 = typeCopy;
LABEL_25:
              if ((v39 > 0x10 || ((1 << v39) & 0x10428) == 0) && ![ATXSuggestionLayout isCompositeLayout:?])
              {
LABEL_35:
                v17 = v92;
                goto LABEL_36;
              }
            }

            else
            {
              executableSpecification3 = [v23 executableSpecification];
              executableType = [executableSpecification3 executableType];

              v39 = typeCopy;
              if (executableType == 4)
              {
                goto LABEL_25;
              }
            }

            v17 = v92;
            if ([(ATXUniversalSuggestionDeduplicatorProtocol *)self->_deduplicator suggestionIsDuplicate:v23 existingSuggestions:v89])
            {
              v40 = __atxlog_handle_blending();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v102 = v23;
                _os_log_debug_impl(&dword_1DEFC4000, v40, OS_LOG_TYPE_DEBUG, "Ignore duplicate prediction while building layout. Suggestion: %@", buf, 0xCu);
              }
            }

            else
            {
              v41 = [v92 objectForKeyedSubscript:v32];
              [v41 addObject:v23];

              [v89 addObject:v23];
              v86 &= isValidForSuggestionsWidget;
              scoreSpecification = [v23 scoreSpecification];
              v43 = [scoreSpecification suggestedConfidenceCategory] > 2;

              v87 |= v43;
            }

LABEL_36:
            v8 = 0x1E696A000;

            if (v29 == ++v31)
            {
              v29 = [preferredLayoutConfigs countByEnumeratingWithState:&v93 objects:v105 count:16];
              if (!v29)
              {
LABEL_38:

                v6 = 0x1E86A3000;
                v20 = v79;
                v19 = v80;
                v21 = !layoutCopy;
                v24 = v83;
                v22 = v84;
                goto LABEL_39;
              }

              continue;
            }

            goto LABEL_18;
          }
        }

        v25 = [*(v6 + 2600) isCompositeLayout:typeCopy];
        if (isValidForSuggestionsWidget | v21) == 1 && (v25)
        {
          goto LABEL_15;
        }

LABEL_39:
        objc_autoreleasePoolPop(v24);
        ++v22;
      }

      while (v22 != v19);
      v19 = [(NSArray *)obj countByEnumeratingWithState:&v97 objects:v106 count:16];
      if (!v19)
      {
        goto LABEL_46;
      }
    }
  }

  v86 = 1;
  v87 = 0;
LABEL_46:

  for (i = 1; i != 8; ++i)
  {
    v51 = [*(v8 + 3480) numberWithUnsignedInteger:i];
    v52 = [v17 objectForKeyedSubscript:v51];
    v53 = v8;
    v54 = [v52 count];
    v55 = [*(v53 + 3480) numberWithUnsignedInteger:i];
    v56 = [v91 objectForKeyedSubscript:v55];
    unsignedIntegerValue3 = [v56 unsignedIntegerValue];

    if (v54 > unsignedIntegerValue3)
    {
      goto LABEL_54;
    }

    v58 = [*(v53 + 3480) numberWithUnsignedInteger:i];
    v59 = [v17 objectForKeyedSubscript:v58];
    v60 = [v59 count];
    v61 = [*(v53 + 3480) numberWithUnsignedInteger:i];
    v62 = [v78 objectForKeyedSubscript:v61];
    unsignedIntegerValue4 = [v62 unsignedIntegerValue];

    if (v60 < unsignedIntegerValue4)
    {
LABEL_54:
      v48 = 0;
      v49 = v89;
      goto LABEL_55;
    }

    v8 = 0x1E696A000;
  }

  v64 = objc_alloc(*(v6 + 2600));
  v65 = [v17 objectForKeyedSubscript:&unk_1F5A411B8];
  v66 = [v17 objectForKeyedSubscript:&unk_1F5A411D0];
  v67 = [v17 objectForKeyedSubscript:&unk_1F5A411E8];
  v68 = [v17 objectForKeyedSubscript:&unk_1F5A41200];
  v69 = [v17 objectForKeyedSubscript:&unk_1F5A41218];
  v70 = [v17 objectForKeyedSubscript:&unk_1F5A41230];
  v71 = [v17 objectForKeyedSubscript:&unk_1F5A41248];
  v48 = [v64 initWithLayoutType:typeCopy oneByOneSuggestions:v65 oneByTwoSuggestions:v66 twoByTwoSuggestions:v67 oneByFourSuggestions:v68 twoByFourSuggestions:v69 fourByFourSuggestions:v70 fourByEightSuggestions:v71];

  [v48 setIsValidForSuggestionsWidget:v86 & 1];
  [v48 setConfidenceWarrantsSnappingOrNPlusOne:v87 & 1];
  v49 = v89;
  v72 = [(ATXLayoutGenerator *)self uuidOfHighestConfidenceSuggestionFromRankedSuggestions:v89 uiLayoutType:typeCopy];
  [v48 setUuidOfHighestConfidenceSuggestion:v72];

  [(ATXLayoutGenerator *)self scoreLayout:v48];
  v46 = __atxlog_handle_blending();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v73 = [ATXSuggestionLayout stringFromUILayoutType:typeCopy];
    [v48 layoutScore];
    *buf = 138412546;
    v102 = v73;
    v103 = 2048;
    v104 = v74;
    _os_log_impl(&dword_1DEFC4000, v46, OS_LOG_TYPE_DEFAULT, "Blending: Created UI layout %@ (score: %.2f)", buf, 0x16u);
  }

  v17 = v92;
LABEL_53:

LABEL_55:
  v75 = *MEMORY[0x1E69E9840];

  return v48;
}

- (id)uuidOfHighestConfidenceSuggestionFromRankedSuggestions:(id)suggestions uiLayoutType:(int64_t)type
{
  suggestionsCopy = suggestions;
  if ([suggestionsCopy count])
  {
    if (type)
    {
      firstObject = [suggestionsCopy firstObject];
      uuid = [(ATXSuggestionReranker *)firstObject uuid];
    }

    else
    {
      firstObject = [[ATXSuggestionReranker alloc] initWithProactiveSuggestions:suggestionsCopy hyperParameters:self->_hyperParameters];
      rerankedSuggestions = [(ATXSuggestionReranker *)firstObject rerankedSuggestions];
      firstObject2 = [rerankedSuggestions firstObject];
      uuid = [firstObject2 uuid];
    }
  }

  else
  {
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXLayoutGenerator uuidOfHighestConfidenceSuggestionFromRankedSuggestions:v9 uiLayoutType:?];
    }

    uuid = objc_opt_new();
  }

  return uuid;
}

- (void)scoreLayout:(id)layout
{
  layoutCopy = layout;
  firstObject = [(NSArray *)self->_rankedSuggestions firstObject];
  if (firstObject)
  {
    v6 = +[ATXSuggestionLayout minSuggestionLayoutTypesForUILayoutType:](ATXSuggestionLayout, "minSuggestionLayoutTypesForUILayoutType:", [layoutCopy layoutType]);
    v7 = [v6 objectForKeyedSubscript:&unk_1F5A411B8];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      v9 = 0;
      v10 = 0.0;
      do
      {
        oneByOneSuggestions = [layoutCopy oneByOneSuggestions];
        v12 = [oneByOneSuggestions objectAtIndexedSubscript:v9];

        [(ATXLayoutGenerator *)self marginalScoreForSuggestion:v12 topRankingSuggestion:firstObject];
        v10 = v10 + v13;

        ++v9;
        v14 = [v6 objectForKeyedSubscript:&unk_1F5A411B8];
        unsignedIntegerValue2 = [v14 unsignedIntegerValue];
      }

      while (v9 < unsignedIntegerValue2);
    }

    else
    {
      v10 = 0.0;
    }

    v17 = [v6 objectForKeyedSubscript:&unk_1F5A411D0];
    unsignedIntegerValue3 = [v17 unsignedIntegerValue];

    if (unsignedIntegerValue3)
    {
      v19 = 0;
      do
      {
        oneByTwoSuggestions = [layoutCopy oneByTwoSuggestions];
        v21 = [oneByTwoSuggestions objectAtIndexedSubscript:v19];

        [(ATXLayoutGenerator *)self marginalScoreForSuggestion:v21 topRankingSuggestion:firstObject];
        v10 = v10 + v22;

        ++v19;
        v23 = [v6 objectForKeyedSubscript:&unk_1F5A411D0];
        unsignedIntegerValue4 = [v23 unsignedIntegerValue];
      }

      while (v19 < unsignedIntegerValue4);
    }

    v25 = [v6 objectForKeyedSubscript:&unk_1F5A411E8];
    unsignedIntegerValue5 = [v25 unsignedIntegerValue];

    if (unsignedIntegerValue5)
    {
      v27 = 0;
      do
      {
        twoByTwoSuggestions = [layoutCopy twoByTwoSuggestions];
        v29 = [twoByTwoSuggestions objectAtIndexedSubscript:v27];

        [(ATXLayoutGenerator *)self marginalScoreForSuggestion:v29 topRankingSuggestion:firstObject];
        v10 = v10 + v30;

        ++v27;
        v31 = [v6 objectForKeyedSubscript:&unk_1F5A411E8];
        unsignedIntegerValue6 = [v31 unsignedIntegerValue];
      }

      while (v27 < unsignedIntegerValue6);
    }

    v33 = [v6 objectForKeyedSubscript:&unk_1F5A41200];
    unsignedIntegerValue7 = [v33 unsignedIntegerValue];

    if (unsignedIntegerValue7)
    {
      v35 = 0;
      do
      {
        oneByFourSuggestions = [layoutCopy oneByFourSuggestions];
        v37 = [oneByFourSuggestions objectAtIndexedSubscript:v35];

        [(ATXLayoutGenerator *)self marginalScoreForSuggestion:v37 topRankingSuggestion:firstObject];
        v10 = v10 + v38;

        ++v35;
        v39 = [v6 objectForKeyedSubscript:&unk_1F5A41200];
        unsignedIntegerValue8 = [v39 unsignedIntegerValue];
      }

      while (v35 < unsignedIntegerValue8);
    }

    v41 = [v6 objectForKeyedSubscript:&unk_1F5A41218];
    unsignedIntegerValue9 = [v41 unsignedIntegerValue];

    if (unsignedIntegerValue9)
    {
      v43 = 0;
      do
      {
        twoByFourSuggestions = [layoutCopy twoByFourSuggestions];
        v45 = [twoByFourSuggestions objectAtIndexedSubscript:v43];

        [(ATXLayoutGenerator *)self marginalScoreForSuggestion:v45 topRankingSuggestion:firstObject];
        v10 = v10 + v46;

        ++v43;
        v47 = [v6 objectForKeyedSubscript:&unk_1F5A41218];
        unsignedIntegerValue10 = [v47 unsignedIntegerValue];
      }

      while (v43 < unsignedIntegerValue10);
    }

    [layoutCopy setLayoutScore:v10];
  }

  else
  {
    v16 = __atxlog_handle_blending();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [ATXLayoutGenerator scoreLayout:v16];
    }
  }
}

- (double)marginalScoreForSuggestion:(id)suggestion topRankingSuggestion:(id)rankingSuggestion
{
  rankingSuggestionCopy = rankingSuggestion;
  suggestionCopy = suggestion;
  scoreSpecification = [suggestionCopy scoreSpecification];
  -[ATXLayoutGenerator weightForConfidenceCategory:](self, "weightForConfidenceCategory:", [scoreSpecification suggestedConfidenceCategory]);
  v10 = v9 + 0.0;

  LODWORD(self) = [suggestionCopy isEqual:rankingSuggestionCopy];
  result = v10 + 1000.0;
  if (!self)
  {
    return v10;
  }

  return result;
}

- (double)weightForConfidenceCategory:(int64_t)category
{
  if (category > 3)
  {
    return 100.0;
  }

  else
  {
    return dbl_1DF03AAF0[category];
  }
}

+ (id)sortLayouts:(id)layouts
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  layoutsCopy = layouts;
  v5 = [v3 sortDescriptorWithKey:@"self.layoutScore" ascending:0];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [layoutsCopy sortedArrayUsingDescriptors:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end