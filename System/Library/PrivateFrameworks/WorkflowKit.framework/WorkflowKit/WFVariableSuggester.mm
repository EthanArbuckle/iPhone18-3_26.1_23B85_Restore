@interface WFVariableSuggester
- (WFVariableProvider)variableProvider;
- (WFVariableSuggester)init;
- (WFVariableSuggesterDelegate)delegate;
- (void)availableVariablesDidChange;
- (void)setCurrentVariables:(id)a3;
- (void)setMaxSuggestionsCount:(unint64_t)a3;
- (void)setMinSuggestionsCount:(unint64_t)a3;
- (void)setOutputActions:(id)a3;
- (void)setSuggestedVariables:(id)a3;
- (void)setUserDefinedVariableNames:(id)a3;
@end

@implementation WFVariableSuggester

- (WFVariableProvider)variableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_variableProvider);

  return WeakRetained;
}

- (WFVariableSuggesterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)availableVariablesDidChange
{
  v48 = *MEMORY[0x1E69E9840];
  v34 = [(WFVariableSuggester *)self outputActions];
  v32 = [(WFVariableSuggester *)self userDefinedVariableNames];
  v3 = [(WFVariableSuggester *)self currentVariables];
  v33 = [v3 if_compactMap:&__block_literal_global_51092];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v33];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = [v34 reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v8)
  {
    v9 = *v44;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        v12 = [v11 outputName];
        if (([v5 containsObject:v12] & 1) == 0)
        {
          [v5 addObject:v12];
          if ([v4 containsObject:v12])
          {
            [v6 insertObject:v11 atIndex:0];
          }

          else
          {
            [v6 addObject:v11];
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v8);
  }

  v13 = [(WFVariableSuggester *)self maxSuggestionsCount];
  v14 = [v32 count];
  v15 = [v6 count];
  if ((v13 - v14) >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13 - v14;
  }

  v17 = [v6 count];
  v18 = [(WFVariableSuggester *)self minSuggestionsCount];
  if (v17 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (v16 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  v21 = [v6 subarrayWithRange:{0, v20}];
  v35 = [v21 mutableCopy];

  v22 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v35];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __50__WFVariableSuggester_availableVariablesDidChange__block_invoke_2;
  v41[3] = &unk_1E837B6E0;
  v31 = v22;
  v42 = v31;
  v23 = [v6 if_compactMap:v41];
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v24 = [v35 reverseObjectEnumerator];
  v25 = [v24 allObjects];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __50__WFVariableSuggester_availableVariablesDidChange__block_invoke_3;
  v36[3] = &unk_1E837B708;
  v39 = v40;
  v26 = v23;
  v37 = v26;
  v38 = self;
  v27 = [v25 if_map:v36];
  v28 = [v27 reverseObjectEnumerator];
  v29 = [v28 allObjects];
  [(WFVariableSuggester *)self setSuggestedVariables:v29];

  _Block_object_dispose(v40, 8);
  v30 = *MEMORY[0x1E69E9840];
}

void *__50__WFVariableSuggester_availableVariablesDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 outputName];
  v5 = [v3 localizedDefaultOutputName];
  v6 = [v4 isEqualToString:v5];

  if (([*(a1 + 32) containsObject:v3] | v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

WFActionOutputVariable *__50__WFVariableSuggester_availableVariablesDidChange__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 outputName];
  v5 = [v3 localizedDefaultOutputName];
  v6 = [v4 isEqualToString:v5];

  v7 = *(*(*(a1 + 48) + 8) + 24);
  if (v7 <= 4 && ((v7 < [*(a1 + 32) count]) & v6) == 1)
  {
    v8 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "count") + ~*(*(*(a1 + 48) + 8) + 24)}];

    ++*(*(*(a1 + 48) + 8) + 24);
    v3 = v8;
  }

  v9 = [WFActionOutputVariable alloc];
  v10 = [*(a1 + 40) variableProvider];
  v11 = [(WFActionOutputVariable *)v9 initWithAction:v3 variableProvider:v10 aggrandizements:0];

  return v11;
}

id __50__WFVariableSuggester_availableVariablesDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 action];
    v4 = [v3 outputName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMinSuggestionsCount:(unint64_t)a3
{
  if (self->_minSuggestionsCount != a3)
  {
    self->_minSuggestionsCount = a3;
    [(WFVariableSuggester *)self availableVariablesDidChange];
  }
}

- (void)setMaxSuggestionsCount:(unint64_t)a3
{
  if (self->_maxSuggestionsCount != a3)
  {
    self->_maxSuggestionsCount = a3;
    [(WFVariableSuggester *)self availableVariablesDidChange];
  }
}

- (void)setOutputActions:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToArray:self->_outputActions] & 1) == 0)
  {
    v4 = [v6 copy];
    outputActions = self->_outputActions;
    self->_outputActions = v4;
  }
}

- (void)setUserDefinedVariableNames:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToArray:self->_userDefinedVariableNames] & 1) == 0)
  {
    v4 = [v6 copy];
    userDefinedVariableNames = self->_userDefinedVariableNames;
    self->_userDefinedVariableNames = v4;
  }
}

- (void)setCurrentVariables:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToArray:self->_currentVariables] & 1) == 0)
  {
    v4 = [v6 copy];
    currentVariables = self->_currentVariables;
    self->_currentVariables = v4;

    [(WFVariableSuggester *)self availableVariablesDidChange];
  }
}

- (void)setSuggestedVariables:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToArray:self->_suggestedVariables] & 1) == 0)
  {
    objc_storeStrong(&self->_suggestedVariables, a3);
    v5 = [(WFVariableSuggester *)self delegate];
    [v5 variableSuggesterSuggestionsDidChange:self];
  }
}

- (WFVariableSuggester)init
{
  v6.receiver = self;
  v6.super_class = WFVariableSuggester;
  v2 = [(WFVariableSuggester *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 56) = xmmword_1CA9922C0;
    v4 = v2;
  }

  return v3;
}

@end