@interface PRNLPLanguageModelState
- (BOOL)getConditionalProbabilityForString:(id)a3 probability:(double *)a4;
- (PRNLPLanguageModelState)initWithLanguageModel:(id)a3 state:(id)a4;
- (id)conditionalProbabilityDictionaryForStrings:(id)a3;
- (void)dealloc;
- (void)enumeratePredictions:(unint64_t)a3 maxTokensPerPrediction:(unint64_t)a4 withBlock:(id)a5;
@end

@implementation PRNLPLanguageModelState

- (PRNLPLanguageModelState)initWithLanguageModel:(id)a3 state:(id)a4
{
  v8.receiver = self;
  v8.super_class = PRNLPLanguageModelState;
  v6 = [(PRNLPLanguageModelState *)&v8 init];
  if (v6)
  {
    v6->_languageModel = a3;
    v6->_state = a4;
    v6->_cachedPredictionsDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v6;
}

- (BOOL)getConditionalProbabilityForString:(id)a3 probability:(double *)a4
{
  v5 = [(NLLanguageModelState *)self->_state conditionalProbabilityForString:a3];
  if (v5)
  {
    v6 = v5;
    LODWORD(v5) = [v5 isValid];
    if (v5)
    {
      [v6 log10Probability];
      if (a4)
      {
        *a4 = v7;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (id)conditionalProbabilityDictionaryForStrings:(id)a3
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(NLLanguageModelState *)self->_state conditionalProbabilitiesForStrings:a3];
  v7 = [a3 count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [a3 objectAtIndex:i];
      v11 = [v6 objectAtIndex:i];
      if ([v11 isValid])
      {
        [v11 log10Probability];
        [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:"), v10}];
      }
    }
  }

  return v5;
}

- (void)enumeratePredictions:(unint64_t)a3 maxTokensPerPrediction:(unint64_t)a4 withBlock:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u/%u", a3, a4];
  v10 = [(NSMutableDictionary *)self->_cachedPredictionsDictionary objectForKey:v9];
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
    state = self->_state;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __81__PRNLPLanguageModelState_enumeratePredictions_maxTokensPerPrediction_withBlock___block_invoke;
    v27[3] = &unk_1E84053F0;
    v27[4] = v10;
    [(NLLanguageModelState *)state enumeratePredictions:a3 maximumTokensPerPrediction:a4 withBlock:v27];
    [(NSMutableDictionary *)self->_cachedPredictionsDictionary setObject:v10 forKey:v9];
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
      if (v16 < a3)
      {
        v19 = [v18 prediction];
        [objc_msgSend(v18 "probabilityInfo")];
        (*(a5 + 2))(a5, v19, &v22);
        v17 = v22;
      }

      if (v17)
      {
        break;
      }

      if (++v16 >= a3)
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