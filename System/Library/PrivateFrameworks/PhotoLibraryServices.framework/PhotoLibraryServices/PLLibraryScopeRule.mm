@interface PLLibraryScopeRule
+ (id)_dictionaryOfArrayOfSingleQueriesToCriteriaFromRuleQuery:(id)query parentQuery:(id)parentQuery;
+ (id)_knownConditionClasses;
+ (id)_rulesFromQuery:(id)query;
+ (id)dataForLibraryScopeRules:(id)rules;
+ (id)libraryScopeRulesForLibraryScopeRulesData:(id)data;
+ (id)queryForLibraryScopeRules:(id)rules;
- (PLLibraryScopeRule)initWithQuery:(id)query;
- (id)allConditions;
- (id)backingPredicateInPhotoLibrary:(id)library;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)query;
- (void)addCondition:(id)condition;
- (void)removeConditionOfType:(Class)type;
@end

@implementation PLLibraryScopeRule

- (id)backingPredicateInPhotoLibrary:(id)library
{
  libraryCopy = library;
  query = [(PLLibraryScopeRule *)self query];

  if (query)
  {
    query2 = [(PLLibraryScopeRule *)self query];
    v7 = objc_opt_new();
    v8 = [PLQueryHandler predicateForQuery:query2 inLibrary:libraryCopy changeDetectionCriteria:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)query
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  allConditions = [(PLLibraryScopeRule *)self allConditions];
  v5 = [allConditions _pl_map:&__block_literal_global_37];
  [v3 addObjectsFromArray:v5];

  v6 = [(NSMutableArray *)self->_unknownConditions _pl_map:&__block_literal_global_40];
  [v3 addObjectsFromArray:v6];

  if ([v3 count] < 2)
  {
    if ([v3 count] == 1)
    {
      v12 = MEMORY[0x1E69BF2C0];
      firstObject = [v3 firstObject];
      v14 = objc_alloc_init(MEMORY[0x1E69BF2B8]);
      v11 = [v12 orCombineFirstQuery:firstObject secondQuery:v14];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    firstObject2 = [v3 firstObject];
    if ([v3 count] < 2)
    {
      v11 = firstObject2;
    }

    else
    {
      v8 = 1;
      do
      {
        v9 = MEMORY[0x1E69BF2C0];
        v10 = [v3 objectAtIndexedSubscript:v8];
        v11 = [v9 orCombineFirstQuery:firstObject2 secondQuery:v10];

        ++v8;
        firstObject2 = v11;
      }

      while ([v3 count] > v8);
    }
  }

  return v11;
}

- (id)description
{
  allConditions = [(PLLibraryScopeRule *)self allConditions];
  v4 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLLibraryScopeRule;
  v5 = [(PLLibraryScopeRule *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ - Containing %lu conditions", v5, objc_msgSend(allConditions, "count")];

  return v6;
}

- (void)removeConditionOfType:(Class)type
{
  if (objc_opt_class() == type)
  {
    v5 = 0;
    v6 = 8;
  }

  else if (objc_opt_class() == type)
  {
    v5 = 0;
    v6 = 16;
  }

  else
  {
    if (objc_opt_class() != type)
    {
      return;
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = 24;
  }

  v7 = *(&self->super.isa + v6);
  *(&self->super.isa + v6) = v5;
}

- (void)addCondition:(id)condition
{
  conditionCopy = condition;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    p_dateRangeCondition = &self->_dateRangeCondition;
LABEL_5:
    objc_storeStrong(p_dateRangeCondition, condition);
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    p_dateRangeCondition = &self->_personCondition;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_unknownConditions addObject:conditionCopy];
  }

LABEL_6:
}

- (id)allConditions
{
  array = [MEMORY[0x1E695DF70] array];
  dateRangeCondition = [(PLLibraryScopeRule *)self dateRangeCondition];
  [array _pl_addNonNilObject:dateRangeCondition];

  personCondition = [(PLLibraryScopeRule *)self personCondition];
  [array _pl_addNonNilObject:personCondition];

  v6 = [array copy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  query = [(PLLibraryScopeRule *)self query];
  v6 = [v4 initWithQuery:query];

  return v6;
}

- (PLLibraryScopeRule)initWithQuery:(id)query
{
  v36 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v5 = [(PLLibraryScopeRule *)self init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    unknownConditions = v5->_unknownConditions;
    v5->_unknownConditions = v6;

    v22 = queryCopy;
    [objc_opt_class() _dictionaryOfArrayOfSingleQueriesToCriteriaFromRuleQuery:queryCopy parentQuery:0];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v33 = 0u;
    obj = [v24 allKeys];
    v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v25 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          firstObject = [v11 firstObject];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          _knownConditionClasses = [objc_opt_class() _knownConditionClasses];
          v14 = [_knownConditionClasses countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(_knownConditionClasses);
                }

                v18 = *(*(&v26 + 1) + 8 * j);
                if ([firstObject hasKey] && objc_msgSend(v18, "supportsQueryKey:", objc_msgSend(firstObject, "key")))
                {
                  v19 = [v24 objectForKeyedSubscript:v11];
                  v20 = [v18 conditionWithSingleQueries:v11 criteria:{objc_msgSend(v19, "unsignedIntegerValue")}];
                  [(PLLibraryScopeRule *)v5 addCondition:v20];

                  goto LABEL_18;
                }
              }

              v15 = [_knownConditionClasses countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

LABEL_18:
        }

        v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v9);
    }

    queryCopy = v22;
  }

  return v5;
}

+ (id)_rulesFromQuery:(id)query
{
  queryCopy = query;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([queryCopy hasFirst] && objc_msgSend(queryCopy, "hasConjunction") && objc_msgSend(queryCopy, "conjunction") == 1)
  {
    first = [queryCopy first];
    v7 = [self _rulesFromQuery:first];
    [v5 addObjectsFromArray:v7];
  }

  if ([queryCopy hasSecond] && objc_msgSend(queryCopy, "hasConjunction") && objc_msgSend(queryCopy, "conjunction") == 1)
  {
    second = [queryCopy second];
    v9 = [self _rulesFromQuery:second];
    [v5 addObjectsFromArray:v9];
  }

  if ([queryCopy hasConjunction] && !objc_msgSend(queryCopy, "conjunction"))
  {
    v10 = [[PLLibraryScopeRule alloc] initWithQuery:queryCopy];
    [v5 addObject:v10];
  }

  return v5;
}

+ (id)dataForLibraryScopeRules:(id)rules
{
  v3 = [self queryForLibraryScopeRules:rules];
  v4 = [PLQueryHandler dataFromQuery:v3];

  return v4;
}

+ (id)queryForLibraryScopeRules:(id)rules
{
  rulesCopy = rules;
  firstObject = [rulesCopy firstObject];
  query = [firstObject query];

  if ([rulesCopy count] < 2)
  {
    v10 = query;
  }

  else
  {
    v6 = 1;
    do
    {
      v7 = MEMORY[0x1E69BF2C0];
      v8 = [rulesCopy objectAtIndexedSubscript:v6];
      query2 = [v8 query];
      v10 = [v7 andCombineFirstQuery:query secondQuery:query2];

      ++v6;
      query = v10;
    }

    while ([rulesCopy count] > v6);
  }

  return v10;
}

+ (id)libraryScopeRulesForLibraryScopeRulesData:(id)data
{
  v4 = [PLQueryHandler constructQueryFromData:data];
  if (v4)
  {
    v5 = [self _rulesFromQuery:v4];
  }

  else
  {
    v6 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Empty query returned from library scope rules data", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)_dictionaryOfArrayOfSingleQueriesToCriteriaFromRuleQuery:(id)query parentQuery:(id)parentQuery
{
  queryCopy = query;
  parentQueryCopy = parentQuery;
  v8 = [MEMORY[0x1E695E0F8] mutableCopy];
  if ([queryCopy hasFirst] && objc_msgSend(queryCopy, "hasConjunction") && (!objc_msgSend(queryCopy, "conjunction") || objc_msgSend(queryCopy, "conjunction") == 2))
  {
    first = [queryCopy first];
    v10 = [self _dictionaryOfArrayOfSingleQueriesToCriteriaFromRuleQuery:first parentQuery:queryCopy];
    [v8 addEntriesFromDictionary:v10];
  }

  if ([queryCopy hasSecond] && objc_msgSend(queryCopy, "hasConjunction") && (!objc_msgSend(queryCopy, "conjunction") || objc_msgSend(queryCopy, "conjunction") == 2))
  {
    second = [queryCopy second];
    v12 = [self _dictionaryOfArrayOfSingleQueriesToCriteriaFromRuleQuery:second parentQuery:queryCopy];
    [v8 addEntriesFromDictionary:v12];
  }

  singleQueries = [queryCopy singleQueries];
  v14 = [singleQueries count];

  if (v14)
  {
    v15 = 1;
    if ([parentQueryCopy hasConjunction])
    {
      if ([parentQueryCopy conjunction] == 2)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v15];
    singleQueries2 = [queryCopy singleQueries];
    [v8 setObject:v16 forKey:singleQueries2];
  }

  return v8;
}

+ (id)_knownConditionClasses
{
  if (_knownConditionClasses_onceToken != -1)
  {
    dispatch_once(&_knownConditionClasses_onceToken, &__block_literal_global_37737);
  }

  v3 = _knownConditionClasses_knownClasses;

  return v3;
}

void __44__PLLibraryScopeRule__knownConditionClasses__block_invoke()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];
  v1 = _knownConditionClasses_knownClasses;
  _knownConditionClasses_knownClasses = v0;
}

@end