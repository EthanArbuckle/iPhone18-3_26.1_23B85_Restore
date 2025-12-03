@interface PRNLPLanguageModel
+ (PRNLPLanguageModel)languageModelWithLocalization:(id)localization type:(int64_t)type;
- (BOOL)getConditionalProbabilityForString:(id)string context:(id)context probability:(double *)probability;
- (PRNLPLanguageModel)initWithLocalization:(id)localization type:(int64_t)type;
- (id)description;
- (id)modelOptionsForLocale:(id)locale type:(int64_t)type;
- (id)stateWithContext:(id)context;
- (void)dealloc;
@end

@implementation PRNLPLanguageModel

- (id)modelOptionsForLocale:(id)locale type:(int64_t)type
{
  if (type > 2)
  {
    if (type == 3)
    {
      v9 = MEMORY[0x1E695DF20];
      v10 = *MEMORY[0x1E69777F8];
      v11 = *MEMORY[0x1E69778E8];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:2];
      v13 = *MEMORY[0x1E69778F0];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v15 = MEMORY[0x1E6977908];
    }

    else
    {
      if (type != 4)
      {
        return self;
      }

      v9 = MEMORY[0x1E695DF20];
      v10 = *MEMORY[0x1E69777F8];
      v11 = *MEMORY[0x1E69778E8];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:2];
      v13 = *MEMORY[0x1E69778F0];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v15 = MEMORY[0x1E69778F8];
    }

    return [v9 dictionaryWithObjectsAndKeys:{v10, v11, v12, v13, v14, *v15, locale, *MEMORY[0x1E6977900], 0}];
  }

  else if (type == 1)
  {
    v16 = MEMORY[0x1E695DF20];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    return [v16 dictionaryWithObjectsAndKeys:{v17, *MEMORY[0x1E69778F0], locale, *MEMORY[0x1E6977900], 0, v18, v19, v20, v21}];
  }

  else if (type == 2)
  {
    v5 = MEMORY[0x1E695DF20];
    v6 = *MEMORY[0x1E69777F8];
    v7 = *MEMORY[0x1E69778E8];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:2];
    return [v5 dictionaryWithObjectsAndKeys:{v6, v7, v8, *MEMORY[0x1E69778F0], locale, *MEMORY[0x1E6977900], 0, v20, v21}];
  }

  return self;
}

- (PRNLPLanguageModel)initWithLocalization:(id)localization type:(int64_t)type
{
  v7 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:localization];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[PRNLPLanguageModel modelOptionsForLocale:type:](self, "modelOptionsForLocale:type:", v7, type)}];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (_kSuppressAdaptation == 1)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v11 = *MEMORY[0x1E69778D8];
    [v8 setObject:v10 forKey:*MEMORY[0x1E69778D8]];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 0), v11}];
  }

  v12 = [MEMORY[0x1E6977A50] languageModelWithOptions:v8 error:0];
  v13 = [v12 sessionWithOptions:dictionary];
  v16.receiver = self;
  v16.super_class = PRNLPLanguageModel;
  v14 = [(PRNLPLanguageModel *)&v16 init];
  if (v14)
  {
    v14->_localization = [localization copy];
    v14->_modelType = type;
    v14->_model = v12;
    v14->_session = v13;
    v14->_cachedStates = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14->_cachedContextsRecycleQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v14;
}

+ (PRNLPLanguageModel)languageModelWithLocalization:(id)localization type:(int64_t)type
{
  v4 = [[self alloc] initWithLocalization:localization type:type];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRNLPLanguageModel;
  [(PRNLPLanguageModel *)&v3 dealloc];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PRNLPLanguageModel;
  v3 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"%@(%@"), -[PRNLPLanguageModel description](&v6, sel_description), self->_localization;
  v4 = v3;
  if (self->_session)
  {
    [v3 appendFormat:@":%@", self->_session];
  }

  [v4 appendString:@""]);
  return v4;
}

- (BOOL)getConditionalProbabilityForString:(id)string context:(id)context probability:(double *)probability
{
  v6 = [(NLLanguageModelSession *)self->_session conditionalProbabilityForString:string context:context];
  if (v6)
  {
    v7 = v6;
    LODWORD(v6) = [v6 isValid];
    if (v6)
    {
      [v7 log10Probability];
      if (probability)
      {
        *probability = v8;
      }

      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (id)stateWithContext:(id)context
{
  v5 = [(NSMutableDictionary *)self->_cachedStates objectForKey:?];
  if (!v5)
  {
    v6 = [(NLLanguageModelSession *)self->_session stateWithOptions:MEMORY[0x1E695E0F8]];
    [v6 addContext:context];
    v5 = [[PRNLPLanguageModelState alloc] initWithLanguageModel:self state:v6];
    while ([(NSMutableDictionary *)self->_cachedStates count])
    {
      if ([(NSMutableArray *)self->_cachedContextsRecycleQueue count])
      {
        cachedContextsRecycleQueue = self->_cachedContextsRecycleQueue;
      }

      else
      {
        cachedContextsRecycleQueue = [(NSMutableDictionary *)self->_cachedStates allKeys];
      }

      firstObject = [(NSMutableArray *)cachedContextsRecycleQueue firstObject];
      v9 = firstObject;
      [(NSMutableDictionary *)self->_cachedStates removeObjectForKey:firstObject];
      [(NSMutableArray *)self->_cachedContextsRecycleQueue removeObject:firstObject];
    }

    [(NSMutableDictionary *)self->_cachedStates setObject:v5 forKey:context];
    [(NSMutableArray *)self->_cachedContextsRecycleQueue addObject:context];
  }

  return v5;
}

@end