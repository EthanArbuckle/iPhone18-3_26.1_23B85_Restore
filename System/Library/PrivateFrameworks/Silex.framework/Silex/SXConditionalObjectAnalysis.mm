@interface SXConditionalObjectAnalysis
- (SXConditionalObjectAnalysis)init;
- (id)componentLayoutsUsingConditionType:(id)a3;
- (id)componentStylesUsingConditionType:(id)a3;
- (id)componentTextStylesUsingConditionType:(id)a3;
- (id)componentsUsingConditionType:(id)a3;
- (id)conditionTypesUsedByComponent:(id)a3;
- (id)conditionTypesUsedByComponentLayout:(id)a3;
- (id)conditionTypesUsedByComponentStyle:(id)a3;
- (id)conditionTypesUsedByComponentTextStyle:(id)a3;
- (id)conditionTypesUsedByTextStyle:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectsForKey:(id)a3 map:(id)a4;
- (id)objectsForKeys:(id)a3 map:(id)a4;
- (id)textStylesUsingConditionType:(id)a3;
- (void)populateWithSource:(id)a3;
@end

@implementation SXConditionalObjectAnalysis

- (SXConditionalObjectAnalysis)init
{
  v26.receiver = self;
  v26.super_class = SXConditionalObjectAnalysis;
  v2 = [(SXConditionalObjectAnalysis *)&v26 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    conditionsToComponentsMap = v2->_conditionsToComponentsMap;
    v2->_conditionsToComponentsMap = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    componentsToConditionsMap = v2->_componentsToConditionsMap;
    v2->_componentsToConditionsMap = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    conditionsToComponentStylesMap = v2->_conditionsToComponentStylesMap;
    v2->_conditionsToComponentStylesMap = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    componentStylesToConditionsMap = v2->_componentStylesToConditionsMap;
    v2->_componentStylesToConditionsMap = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    conditionsToComponentLayoutsMap = v2->_conditionsToComponentLayoutsMap;
    v2->_conditionsToComponentLayoutsMap = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    componentLayoutsToConditionsMap = v2->_componentLayoutsToConditionsMap;
    v2->_componentLayoutsToConditionsMap = v13;

    v15 = [MEMORY[0x1E695DF90] dictionary];
    conditionsToComponentTextStylesMap = v2->_conditionsToComponentTextStylesMap;
    v2->_conditionsToComponentTextStylesMap = v15;

    v17 = [MEMORY[0x1E695DF90] dictionary];
    componentTextStylesToConditionsMap = v2->_componentTextStylesToConditionsMap;
    v2->_componentTextStylesToConditionsMap = v17;

    v19 = [MEMORY[0x1E695DF90] dictionary];
    conditionsToTextStylesMap = v2->_conditionsToTextStylesMap;
    v2->_conditionsToTextStylesMap = v19;

    v21 = [MEMORY[0x1E695DF90] dictionary];
    textStylesToConditionsMap = v2->_textStylesToConditionsMap;
    v2->_textStylesToConditionsMap = v21;

    v23 = [MEMORY[0x1E695DFA8] set];
    documentStyleConditionTypes = v2->_documentStyleConditionTypes;
    v2->_documentStyleConditionTypes = v23;
  }

  return v2;
}

- (id)componentsUsingConditionType:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(SXConditionalObjectAnalysis *)self componentsUsingConditionTypes:v4];

  return v5;
}

- (id)conditionTypesUsedByComponent:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(SXConditionalObjectAnalysis *)self conditionTypesUsedByComponents:v4];

  return v5;
}

- (id)componentStylesUsingConditionType:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(SXConditionalObjectAnalysis *)self componentStylesUsingConditionTypes:v4];

  return v5;
}

- (id)conditionTypesUsedByComponentStyle:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(SXConditionalObjectAnalysis *)self conditionTypesUsedByComponentStyles:v4];

  return v5;
}

- (id)componentTextStylesUsingConditionType:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(SXConditionalObjectAnalysis *)self componentTextStylesUsingConditionTypes:v4];

  return v5;
}

- (id)conditionTypesUsedByComponentTextStyle:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(SXConditionalObjectAnalysis *)self conditionTypesUsedByComponentTextStyles:v4];

  return v5;
}

- (id)textStylesUsingConditionType:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(SXConditionalObjectAnalysis *)self textStylesUsingConditionTypes:v4];

  return v5;
}

- (id)conditionTypesUsedByTextStyle:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(SXConditionalObjectAnalysis *)self conditionTypesUsedByTextStyles:v4];

  return v5;
}

- (id)componentLayoutsUsingConditionType:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(SXConditionalObjectAnalysis *)self componentLayoutsUsingConditionTypes:v4];

  return v5;
}

- (id)conditionTypesUsedByComponentLayout:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(SXConditionalObjectAnalysis *)self conditionTypesUsedByComponentLayouts:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SXConditionalObjectAnalysis);
  [(SXConditionalObjectAnalysis *)v4 populateWithSource:self];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SXMutableConditionalObjectAnalysis);
  [(SXConditionalObjectAnalysis *)v4 populateWithSource:self];
  return v4;
}

- (void)populateWithSource:(id)a3
{
  v4 = *(a3 + 1);
  conditionsToComponentsMap = self->_conditionsToComponentsMap;
  v6 = a3;
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v6, v4, conditionsToComponentsMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v7, v6[2], self->_componentsToConditionsMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v8, v6[3], self->_conditionsToComponentStylesMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v9, v6[4], self->_componentStylesToConditionsMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v10, v6[5], self->_conditionsToComponentLayoutsMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v11, v6[6], self->_componentLayoutsToConditionsMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v12, v6[7], self->_conditionsToComponentTextStylesMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v13, v6[8], self->_componentTextStylesToConditionsMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v14, v6[9], self->_conditionsToTextStylesMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v15, v6[10], self->_textStylesToConditionsMap);
  v16 = v6[11];

  v17 = [v16 mutableCopy];
  documentStyleConditionTypes = self->_documentStyleConditionTypes;
  self->_documentStyleConditionTypes = v17;

  MEMORY[0x1EEE66BB8](v17, documentStyleConditionTypes);
}

void __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke_2;
  v6[3] = &unk_1E8500D70;
  v7 = v4;
  v5 = v4;
  [a2 enumerateKeysAndObjectsUsingBlock:v6];
}

void __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 mutableCopy];
  [v4 setObject:v6 forKey:v5];
}

- (id)objectsForKeys:(id)a3 map:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(SXConditionalObjectAnalysis *)self objectsForKey:*(*(&v17 + 1) + 8 * i) map:v7, v17];
        [v8 unionSet:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (id)objectsForKey:(id)a3 map:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:v5];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    [v6 setObject:v7 forKey:v5];
  }

  return v7;
}

@end