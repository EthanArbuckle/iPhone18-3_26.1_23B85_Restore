@interface PRNLPLanguageModelState
- (BOOL)getConditionalProbabilityForString:(id)string probability:(double *)probability;
- (PRNLPLanguageModelState)initWithLanguageModel:(id)model state:(id)state;
- (id)conditionalProbabilityDictionaryForStrings:(id)strings;
- (void)dealloc;
- (void)enumeratePredictions:(unint64_t)predictions maxTokensPerPrediction:(unint64_t)prediction withBlock:(id)block;
@end

@implementation PRNLPLanguageModelState

- (PRNLPLanguageModelState)initWithLanguageModel:(id)model state:(id)state
{
  v8.receiver = self;
  v8.super_class = PRNLPLanguageModelState;
  v6 = [(PRNLPLanguageModelState *)&v8 init];
  if (v6)
  {
    v6->_languageModel = model;
    v6->_state = state;
    v6->_cachedPredictionsDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v6;
}

- (BOOL)getConditionalProbabilityForString:(id)string probability:(double *)probability
{
  v5 = [(NLLanguageModelState *)self->_state conditionalProbabilityForString:string];
  if (v5)
  {
    v6 = v5;
    LODWORD(v5) = [v5 isValid];
    if (v5)
    {
      [v6 log10Probability];
      if (probability)
      {
        *probability = v7;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (id)conditionalProbabilityDictionaryForStrings:(id)strings
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(NLLanguageModelState *)self->_state conditionalProbabilitiesForStrings:strings];
  v7 = [strings count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [strings objectAtIndex:i];
      v11 = [v6 objectAtIndex:i];
      if ([v11 isValid])
      {
        [v11 log10Probability];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:"), v10}];
      }
    }
  }

  return dictionary;
}

- (void)enumeratePredictions:(unint64_t)predictions maxTokensPerPrediction:(unint64_t)prediction withBlock:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  prediction = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u/%u", predictions, prediction];
  v10 = [(NSMutableDictionary *)self->_cachedPredictionsDictionary objectForKey:prediction];
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:predictions];
    state = self->_state;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __81__PRNLPLanguageModelState_enumeratePredictions_maxTokensPerPrediction_withBlock___block_invoke;
    v27[3] = &unk_1E84053F0;
    v27[4] = v10;
    [(NLLanguageModelState *)state enumeratePredictions:predictions maximumTokensPerPrediction:prediction withBlock:v27];
    [(NSMutableDictionary *)self->_cachedPredictionsDictionary setObject:v10 forKey:prediction];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v21 = 0;
    v14 = *v24;
LABEL_5:
    v15 = 0;
    v16 = v21;
    v21 += v13;
    while (1)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v17 = 0;
      v18 = *(*(&v23 + 1) + 8 * v15);
      v22 = 0;
      if (v16 < predictions)
      {
        prediction2 = [v18 prediction];
        [objc_msgSend(v18 "probabilityInfo")];
        (*(block + 2))(block, prediction2, &v22);
        v17 = v22;
      }

      if (v17)
      {
        break;
      }

      if (++v16 >= predictions)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v13)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRNLPLanguageModelState;
  [(PRNLPLanguageModelState *)&v3 dealloc];
}

@end