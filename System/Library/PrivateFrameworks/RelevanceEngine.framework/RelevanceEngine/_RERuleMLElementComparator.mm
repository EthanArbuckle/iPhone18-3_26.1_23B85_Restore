@interface _RERuleMLElementComparator
- (BOOL)shouldHideElement:(id)element;
- (_RERuleMLElementComparator)initWithFilteringRules:(id)rules rankingRules:(id)rankingRules model:(id)model elementsHiddenByDefault:(BOOL)default;
- (float)_relevanceForElement:(id)element;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compareElement:(id)element toElement:(id)toElement level:(unint64_t)level;
@end

@implementation _RERuleMLElementComparator

- (_RERuleMLElementComparator)initWithFilteringRules:(id)rules rankingRules:(id)rankingRules model:(id)model elementsHiddenByDefault:(BOOL)default
{
  v61 = *MEMORY[0x277D85DE8];
  rulesCopy = rules;
  rankingRulesCopy = rankingRules;
  v58.receiver = self;
  v58.super_class = _RERuleMLElementComparator;
  v12 = [(REMLElementComparator *)&v58 initWithModel:model];
  if (v12)
  {
    defaultCopy = default;
    v49 = rulesCopy;
    v13 = [rulesCopy sortedArrayWithOptions:16 usingComparator:&__block_literal_global_69];
    filteringRules = v12->_filteringRules;
    v12->_filteringRules = v13;

    v48 = rankingRulesCopy;
    v15 = [rankingRulesCopy sortedArrayWithOptions:16 usingComparator:&__block_literal_global_3];
    rankingRules = v12->_rankingRules;
    v12->_rankingRules = v15;

    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v12->_filteringRules, "count")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v18 = v12->_filteringRules;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v55;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v55 != v21)
          {
            objc_enumerationMutation(v18);
          }

          conditionEvaluator = [*(*(&v54 + 1) + 8 * i) conditionEvaluator];
          [v17 addObject:conditionEvaluator];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v20);
    }

    v24 = [v17 copy];
    filteringEvaluators = v12->_filteringEvaluators;
    v12->_filteringEvaluators = v24;

    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v12->_rankingRules, "count")}];
    v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v12->_rankingRules, "count")}];
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v12->_rankingRules, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v46 = v12;
    v29 = v12->_rankingRules;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v51;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v51 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v50 + 1) + 8 * j);
          leftConditionEvaluator = [v34 leftConditionEvaluator];
          [v26 addObject:leftConditionEvaluator];

          rightConditionEvaluator = [v34 rightConditionEvaluator];
          [v27 addObject:rightConditionEvaluator];

          comparisonConditionEvaluator = [v34 comparisonConditionEvaluator];
          [v28 addObject:comparisonConditionEvaluator];
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v31);
    }

    v38 = [v26 copy];
    v12 = v46;
    leftRankingEvaluators = v46->_leftRankingEvaluators;
    v46->_leftRankingEvaluators = v38;

    v40 = [v27 copy];
    rightRankingEvaluators = v46->_rightRankingEvaluators;
    v46->_rightRankingEvaluators = v40;

    v42 = [v28 copy];
    comparisonRankingEvaluators = v46->_comparisonRankingEvaluators;
    v46->_comparisonRankingEvaluators = v42;

    v46->_elementsHiddenByDefault = defaultCopy;
    rankingRulesCopy = v48;
    rulesCopy = v49;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  filteringRules = self->_filteringRules;
  rankingRules = self->_rankingRules;
  model = [(REMLElementComparator *)self model];
  v8 = [v4 comparatorWithFilteringRules:filteringRules rankingRules:rankingRules model:model elementsHiddenByDefault:self->_elementsHiddenByDefault];

  return v8;
}

- (float)_relevanceForElement:(id)element
{
  elementCopy = element;
  featureMap = [elementCopy featureMap];
  v6 = +[REFeature forcedFeature];
  v7 = [featureMap hasValueForFeature:v6];

  if (v7)
  {
    v8 = +[REFeature forcedFeature];
    v9 = [featureMap valueForFeature:v8];
    v11 = REDoubleValueForTaggedPointer(v9, v10);

    v12 = RELogForDomain(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_RERuleMLElementComparator _relevanceForElement:elementCopy];
    }

    v13 = v11;
  }

  else
  {
    v14 = RELogForDomain(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [_RERuleMLElementComparator _relevanceForElement:v14];
    }

    v15 = RELogForDomain(4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [_RERuleMLElementComparator _relevanceForElement:elementCopy];
    }

    model = [(REMLElementComparator *)self model];
    v17 = [model predictWithFeatures:featureMap];

    [v17 probability];
    v19 = v18;
    v20 = RELogForDomain(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [_RERuleMLElementComparator _relevanceForElement:v20];
    }

    v21 = RELogForDomain(4);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_RERuleMLElementComparator _relevanceForElement:elementCopy];
    }

    v22 = RELogForDomain(4);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [(_RERuleMLElementComparator *)elementCopy _relevanceForElement:v17];
    }

    v23 = RELogForDomain(4);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [_RERuleMLElementComparator _relevanceForElement:v17];
    }

    v24 = 1.0;
    if (v19 <= 1.0)
    {
      v24 = v19;
    }

    if (v19 >= 0.0)
    {
      v13 = v24;
    }

    else
    {
      v13 = 0.0;
    }
  }

  return v13;
}

- (BOOL)shouldHideElement:(id)element
{
  v75 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v5 = RELogForDomain(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_RERuleMLElementComparator *)elementCopy shouldHideElement:v5];
  }

  v64 = elementCopy;
  if (![(NSArray *)self->_filteringRules count])
  {
LABEL_26:
    if (_fetchedInternalBuildOnceToken_9 != -1)
    {
      [_RERuleMLElementComparator shouldHideElement:];
    }

    if (_isInternalDevice_9 == 1)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ____RE_Cached_Get__ShowAllElements_block_invoke_0;
      v73 = &unk_2785F9AB8;
      v74 = 0;
      if (__RE_Cached_Get__ShowAllElements_onceToken_0 != -1)
      {
        dispatch_once(&__RE_Cached_Get__ShowAllElements_onceToken_0, buf);
      }

      os_unfair_lock_lock(&__RE_Cached_lock__ShowAllElements_0);
      if ((__RE_Cached_hasValue__ShowAllElements_0 & 1) == 0)
      {
        v67[0] = 0;
        if (RelevanceEngineLibraryCore_2())
        {
          globalDefaults = [soft__REEngineDefaults_1() globalDefaults];
        }

        else
        {
          globalDefaults = 0;
        }

        v26 = [globalDefaults _BOOLValueForKey:@"ShowAllElements" set:v67];
        v27 = v67[0] & v26;
        v28 = RELogForDomain(0);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [MEMORY[0x277CCABB0] numberWithBool:v27 & 1];
          *v70 = 138412290;
          v71 = v29;
          _os_log_impl(&dword_22859F000, v28, OS_LOG_TYPE_DEFAULT, "Prefs reading value for key ShowAllElements: %@", v70, 0xCu);
        }

        __RE_Cached__ShowAllElements_0 = v67[0] & v27 & 1;
        __RE_Cached_hasValue__ShowAllElements_0 = 1;
      }

      os_unfair_lock_unlock(&__RE_Cached_lock__ShowAllElements_0);
      v30 = __RE_Cached__ShowAllElements_0;

      elementCopy = v64;
      if (v30)
      {
        goto LABEL_42;
      }
    }

    if (RETrainingSimulationIsCurrentlyActive())
    {
LABEL_42:
      v25 = 0;
    }

    else
    {
      elementsHiddenByDefault = self->_elementsHiddenByDefault;
      context = objc_autoreleasePoolPush();
      model = [(REMLElementComparator *)self model];
      featureMap = [elementCopy featureMap];
      v33 = [model predictionSetWithFeatures:featureMap];

      if ([(NSArray *)self->_filteringRules count])
      {
        v35 = 0;
        *&v34 = 138412802;
        v54 = v34;
        v63 = v33;
        do
        {
          v36 = [(NSArray *)self->_filteringEvaluators objectAtIndexedSubscript:v35, v54];
          v37 = [(NSArray *)self->_filteringRules objectAtIndexedSubscript:v35];
          if ([v36 needsPredictionSet])
          {
            featureMap2 = [v64 featureMap];
            v65 = 0;
            v39 = [v36 acceptsFeatureMap:featureMap2 predictionSet:v33 explanation:&v65];
            v40 = v65;

            v41 = RELogForDomain(4);
            v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
            if (v39)
            {
              if (v42)
              {
                [(_RERuleMLElementComparator *)v70 shouldHideElement:v36];
              }

              identifier = [v64 identifier];
              v44 = v37;
              v45 = identifier;
              v46 = v40;
              if (v46 && REMLExplanationsEnabled())
              {
                v60 = objc_alloc_init(REMLExplanationFormatter);
                type = [v44 type];
                v48 = RELogForDomain(4);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  v49 = @"Including";
                  if (type != 1)
                  {
                    v49 = 0;
                  }

                  if (!type)
                  {
                    v49 = @"Filtering";
                  }

                  v55 = v49;
                  v56 = [MEMORY[0x277CBEB98] setWithObject:v46];
                  v50 = [(REMLExplanationFormatter *)v60 descriptionFromExplanations:v56];
                  *buf = v54;
                  *&buf[4] = v55;
                  *&buf[12] = 2112;
                  *&buf[14] = v45;
                  *&buf[22] = 2112;
                  v73 = v50;
                  _os_log_impl(&dword_22859F000, v48, OS_LOG_TYPE_DEFAULT, "%@ %@ because %@", buf, 0x20u);
                }
              }

              type2 = [v44 type];
              if (type2 == 1)
              {
                elementsHiddenByDefault = 0;
                v33 = v63;
              }

              else
              {
                v33 = v63;
                if (!type2)
                {
                  elementsHiddenByDefault = 1;
                }
              }
            }

            else
            {
              if (v42)
              {
                [(_RERuleMLElementComparator *)v67 shouldHideElement:v36];
              }
            }
          }

          ++v35;
        }

        while (v35 < [(NSArray *)self->_filteringRules count]);
      }

      objc_autoreleasePoolPop(context);
      elementCopy = v64;
      v25 = elementsHiddenByDefault;
    }

    goto LABEL_68;
  }

  v6 = 0;
  while (1)
  {
    v7 = [(NSArray *)self->_filteringEvaluators objectAtIndexedSubscript:v6];
    v8 = [(NSArray *)self->_filteringRules objectAtIndexedSubscript:v6];
    if (([v7 needsPredictionSet] & 1) == 0)
    {
      break;
    }

LABEL_25:

    if (++v6 >= [(NSArray *)self->_filteringRules count])
    {
      goto LABEL_26;
    }
  }

  featureMap3 = [elementCopy featureMap];
  v66 = 0;
  v10 = [v7 acceptsFeatureMap:featureMap3 predictionSet:0 explanation:&v66];
  v11 = v66;

  v12 = RELogForDomain(4);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (!v10)
  {
    v14 = elementCopy;
    if (v13)
    {
      [(_RERuleMLElementComparator *)v68 shouldHideElement:v7];
    }

LABEL_24:
    elementCopy = v14;
    goto LABEL_25;
  }

  if (v13)
  {
    [(_RERuleMLElementComparator *)v69 shouldHideElement:v7];
  }

  v14 = elementCopy;
  identifier2 = [elementCopy identifier];
  v16 = v8;
  v17 = identifier2;
  v18 = v11;
  if (v18 && REMLExplanationsEnabled())
  {
    v62 = objc_alloc_init(REMLExplanationFormatter);
    type3 = [v16 type];
    v20 = RELogForDomain(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = @"Including";
      if (type3 != 1)
      {
        v21 = 0;
      }

      if (!type3)
      {
        v21 = @"Filtering";
      }

      contexta = v21;
      v59 = [MEMORY[0x277CBEB98] setWithObject:v18];
      v22 = [(REMLExplanationFormatter *)v62 descriptionFromExplanations:v59];
      *buf = 138412802;
      *&buf[4] = contexta;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v73 = v22;
      _os_log_impl(&dword_22859F000, v20, OS_LOG_TYPE_DEFAULT, "%@ %@ because %@", buf, 0x20u);
    }

    v14 = v64;
  }

  type4 = [v16 type];
  if (type4)
  {
    if (type4 == 1)
    {
      v25 = 0;
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  v25 = 1;
LABEL_35:

  elementCopy = v14;
LABEL_68:

  v52 = *MEMORY[0x277D85DE8];
  return v25 & 1;
}

- (int64_t)compareElement:(id)element toElement:(id)toElement level:(unint64_t)level
{
  elementCopy = element;
  toElementCopy = toElement;
  if (level != 1)
  {
    v30 = objc_autoreleasePoolPush();
    [(_RERuleMLElementComparator *)self _relevanceForElement:elementCopy];
    v32 = v31;
    [(_RERuleMLElementComparator *)self _relevanceForElement:toElementCopy];
    v34 = v33;
    LODWORD(v35) = v32;
    v36 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
    LODWORD(v37) = v34;
    v38 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
    v39 = [v36 compare:v38];
    if (v39 == 1)
    {
      order = 1;
    }

    else
    {
      order = -1;
    }

    objc_autoreleasePoolPop(v30);
    if (!v39)
    {
      identifier = [elementCopy identifier];
      identifier2 = [toElementCopy identifier];
      v42 = [identifier compare:identifier2];

      if (v42 == 1)
      {
        v43 = 1;
      }

      else
      {
        v43 = -1;
      }

      if (v42)
      {
        order = v43;
      }

      else
      {
        order = 0;
      }
    }

    goto LABEL_45;
  }

  v51 = elementCopy;
  if ([(NSArray *)self->_rankingRules count])
  {
    for (i = 0; i < [(NSArray *)self->_rankingRules count]; ++i)
    {
      v11 = [(NSArray *)self->_leftRankingEvaluators objectAtIndexedSubscript:i];
      v12 = [(NSArray *)self->_rightRankingEvaluators objectAtIndexedSubscript:i];
      v13 = [(NSArray *)self->_comparisonRankingEvaluators objectAtIndexedSubscript:i];
      if (([v11 needsPredictionSet] & 1) == 0 && (objc_msgSend(v12, "needsPredictionSet") & 1) == 0)
      {
        featureMap = [elementCopy featureMap];
        v15 = toElementCopy;
        featureMap2 = [toElementCopy featureMap];
        if ([v11 acceptsFeatureMap:featureMap predictionSet:0 explanation:0] && objc_msgSend(v12, "acceptsFeatureMap:predictionSet:explanation:", featureMap2, 0, 0) && objc_msgSend(v13, "compareFeatureMap:toFeatureMap:", featureMap, featureMap2))
        {
          v47 = [(NSArray *)self->_rankingRules objectAtIndexedSubscript:i];
          order = [v47 order];
LABEL_50:

          elementCopy = v51;
          toElementCopy = v15;
          goto LABEL_45;
        }

        if ([v11 acceptsFeatureMap:featureMap2 predictionSet:0 explanation:0] && objc_msgSend(v12, "acceptsFeatureMap:predictionSet:explanation:", featureMap, 0, 0) && objc_msgSend(v13, "compareFeatureMap:toFeatureMap:", featureMap2, featureMap))
        {
          v47 = [(NSArray *)self->_rankingRules objectAtIndexedSubscript:i];
          order2 = [v47 order];
          if (order2 == 1)
          {
            order = -1;
          }

          else
          {
            order = order2 != 0;
          }

          goto LABEL_50;
        }

        elementCopy = v51;
        toElementCopy = v15;
      }
    }
  }

  v17 = objc_autoreleasePoolPush();
  model = [(REMLElementComparator *)self model];
  featureMap3 = [elementCopy featureMap];
  v52 = [model predictionSetWithFeatures:featureMap3];

  model2 = [(REMLElementComparator *)self model];
  featureMap4 = [toElementCopy featureMap];
  v22 = [model2 predictionSetWithFeatures:featureMap4];

  if (![(NSArray *)self->_rankingRules count])
  {
    order = 0;
    goto LABEL_44;
  }

  v49 = v17;
  v50 = toElementCopy;
  v23 = 0;
  while (1)
  {
    v24 = [(NSArray *)self->_leftRankingEvaluators objectAtIndexedSubscript:v23, v49];
    v25 = [(NSArray *)self->_rightRankingEvaluators objectAtIndexedSubscript:v23];
    v26 = [(NSArray *)self->_comparisonRankingEvaluators objectAtIndexedSubscript:v23];
    if (([v24 needsPredictionSet] & 1) == 0 && !objc_msgSend(v25, "needsPredictionSet"))
    {
      goto LABEL_25;
    }

    featureMap5 = [v51 featureMap];
    featureMap6 = [v50 featureMap];
    if ([v24 acceptsFeatureMap:featureMap5 predictionSet:v52 explanation:0] && objc_msgSend(v25, "acceptsFeatureMap:predictionSet:explanation:", featureMap6, v22, 0) && objc_msgSend(v26, "compareFeatureMap:toFeatureMap:", featureMap5, featureMap6))
    {
      v44 = [(NSArray *)self->_rankingRules objectAtIndexedSubscript:v23];
      order = [v44 order];
      goto LABEL_42;
    }

    if ([v24 acceptsFeatureMap:featureMap6 predictionSet:v22 explanation:0] && objc_msgSend(v25, "acceptsFeatureMap:predictionSet:explanation:", featureMap5, v52, 0) && objc_msgSend(v26, "compareFeatureMap:toFeatureMap:", featureMap6, featureMap5))
    {
      break;
    }

LABEL_25:
    if (++v23 >= [(NSArray *)self->_rankingRules count])
    {
      order = 0;
      goto LABEL_43;
    }
  }

  v44 = [(NSArray *)self->_rankingRules objectAtIndexedSubscript:v23];
  order3 = [v44 order];
  if (order3 == 1)
  {
    order = -1;
  }

  else
  {
    order = order3 != 0;
  }

LABEL_42:

LABEL_43:
  toElementCopy = v50;
  elementCopy = v51;
  v17 = v49;
LABEL_44:

  objc_autoreleasePoolPop(v17);
LABEL_45:

  return order;
}

- (void)_relevanceForElement:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_relevanceForElement:(void *)a1 .cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_relevanceForElement:(void *)a1 .cold.5(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  [a2 bias];
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_relevanceForElement:(void *)a1 .cold.6(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 explanationDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_relevanceForElement:(void *)a1 .cold.7(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)shouldHideElement:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [a1 identifier];
  v7 = [*(a2 + 32) count];
  v8 = [a1 featureMap];
  v9 = [v8 populatedFeatureCount];
  v10 = *(a2 + 80);
  v13 = 138413058;
  v14 = v6;
  if (v10)
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  v15 = 2048;
  v16 = v7;
  v17 = 2048;
  v18 = v9;
  v19 = 2080;
  v20 = v11;
  _os_log_debug_impl(&dword_22859F000, a3, OS_LOG_TYPE_DEBUG, "Evaluating ShouldHideElement for %@ with %lu rules with %lu populated features, hiding elements by default: %s", &v13, 0x2Au);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)shouldHideElement:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  OUTLINED_FUNCTION_4_1(v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_2(&dword_22859F000, v3, v4, "Evaluator with condition %@ doesn't accept the feature map. PredictionSet is nil.");
}

- (void)shouldHideElement:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  OUTLINED_FUNCTION_4_1(v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_2(&dword_22859F000, v3, v4, "Evaluator with condition %@ accepts the feature map. PredictionSet is nil.");
}

- (void)shouldHideElement:(uint64_t)a1 .cold.5(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  OUTLINED_FUNCTION_4_1(v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_2(&dword_22859F000, v3, v4, "Evaluator with condition %@ doesn't accept the feature map. PredictionSet is not nil.");
}

- (void)shouldHideElement:(uint64_t)a1 .cold.6(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  OUTLINED_FUNCTION_4_1(v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_2(&dword_22859F000, v3, v4, "Evaluator with condition %@ accepts the feature map. PredictionSet is not nil.");
}

@end