@interface SXConditionalObjectAnalysis
- (SXConditionalObjectAnalysis)init;
- (id)componentLayoutsUsingConditionType:(id)type;
- (id)componentStylesUsingConditionType:(id)type;
- (id)componentTextStylesUsingConditionType:(id)type;
- (id)componentsUsingConditionType:(id)type;
- (id)conditionTypesUsedByComponent:(id)component;
- (id)conditionTypesUsedByComponentLayout:(id)layout;
- (id)conditionTypesUsedByComponentStyle:(id)style;
- (id)conditionTypesUsedByComponentTextStyle:(id)style;
- (id)conditionTypesUsedByTextStyle:(id)style;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectsForKey:(id)key map:(id)map;
- (id)objectsForKeys:(id)keys map:(id)map;
- (id)textStylesUsingConditionType:(id)type;
- (void)populateWithSource:(id)source;
@end

@implementation SXConditionalObjectAnalysis

- (SXConditionalObjectAnalysis)init
{
  v26.receiver = self;
  v26.super_class = SXConditionalObjectAnalysis;
  v2 = [(SXConditionalObjectAnalysis *)&v26 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    conditionsToComponentsMap = v2->_conditionsToComponentsMap;
    v2->_conditionsToComponentsMap = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    componentsToConditionsMap = v2->_componentsToConditionsMap;
    v2->_componentsToConditionsMap = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    conditionsToComponentStylesMap = v2->_conditionsToComponentStylesMap;
    v2->_conditionsToComponentStylesMap = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    componentStylesToConditionsMap = v2->_componentStylesToConditionsMap;
    v2->_componentStylesToConditionsMap = dictionary4;

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    conditionsToComponentLayoutsMap = v2->_conditionsToComponentLayoutsMap;
    v2->_conditionsToComponentLayoutsMap = dictionary5;

    dictionary6 = [MEMORY[0x1E695DF90] dictionary];
    componentLayoutsToConditionsMap = v2->_componentLayoutsToConditionsMap;
    v2->_componentLayoutsToConditionsMap = dictionary6;

    dictionary7 = [MEMORY[0x1E695DF90] dictionary];
    conditionsToComponentTextStylesMap = v2->_conditionsToComponentTextStylesMap;
    v2->_conditionsToComponentTextStylesMap = dictionary7;

    dictionary8 = [MEMORY[0x1E695DF90] dictionary];
    componentTextStylesToConditionsMap = v2->_componentTextStylesToConditionsMap;
    v2->_componentTextStylesToConditionsMap = dictionary8;

    dictionary9 = [MEMORY[0x1E695DF90] dictionary];
    conditionsToTextStylesMap = v2->_conditionsToTextStylesMap;
    v2->_conditionsToTextStylesMap = dictionary9;

    dictionary10 = [MEMORY[0x1E695DF90] dictionary];
    textStylesToConditionsMap = v2->_textStylesToConditionsMap;
    v2->_textStylesToConditionsMap = dictionary10;

    v23 = [MEMORY[0x1E695DFA8] set];
    documentStyleConditionTypes = v2->_documentStyleConditionTypes;
    v2->_documentStyleConditionTypes = v23;
  }

  return v2;
}

- (id)componentsUsingConditionType:(id)type
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:type];
  v5 = [(SXConditionalObjectAnalysis *)self componentsUsingConditionTypes:v4];

  return v5;
}

- (id)conditionTypesUsedByComponent:(id)component
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:component];
  v5 = [(SXConditionalObjectAnalysis *)self conditionTypesUsedByComponents:v4];

  return v5;
}

- (id)componentStylesUsingConditionType:(id)type
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:type];
  v5 = [(SXConditionalObjectAnalysis *)self componentStylesUsingConditionTypes:v4];

  return v5;
}

- (id)conditionTypesUsedByComponentStyle:(id)style
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:style];
  v5 = [(SXConditionalObjectAnalysis *)self conditionTypesUsedByComponentStyles:v4];

  return v5;
}

- (id)componentTextStylesUsingConditionType:(id)type
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:type];
  v5 = [(SXConditionalObjectAnalysis *)self componentTextStylesUsingConditionTypes:v4];

  return v5;
}

- (id)conditionTypesUsedByComponentTextStyle:(id)style
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:style];
  v5 = [(SXConditionalObjectAnalysis *)self conditionTypesUsedByComponentTextStyles:v4];

  return v5;
}

- (id)textStylesUsingConditionType:(id)type
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:type];
  v5 = [(SXConditionalObjectAnalysis *)self textStylesUsingConditionTypes:v4];

  return v5;
}

- (id)conditionTypesUsedByTextStyle:(id)style
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:style];
  v5 = [(SXConditionalObjectAnalysis *)self conditionTypesUsedByTextStyles:v4];

  return v5;
}

- (id)componentLayoutsUsingConditionType:(id)type
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:type];
  v5 = [(SXConditionalObjectAnalysis *)self componentLayoutsUsingConditionTypes:v4];

  return v5;
}

- (id)conditionTypesUsedByComponentLayout:(id)layout
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:layout];
  v5 = [(SXConditionalObjectAnalysis *)self conditionTypesUsedByComponentLayouts:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SXConditionalObjectAnalysis);
  [(SXConditionalObjectAnalysis *)v4 populateWithSource:self];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SXMutableConditionalObjectAnalysis);
  [(SXConditionalObjectAnalysis *)v4 populateWithSource:self];
  return v4;
}

- (void)populateWithSource:(id)source
{
  v4 = *(source + 1);
  conditionsToComponentsMap = self->_conditionsToComponentsMap;
  sourceCopy = source;
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(sourceCopy, v4, conditionsToComponentsMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v7, sourceCopy[2], self->_componentsToConditionsMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v8, sourceCopy[3], self->_conditionsToComponentStylesMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v9, sourceCopy[4], self->_componentStylesToConditionsMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v10, sourceCopy[5], self->_conditionsToComponentLayoutsMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v11, sourceCopy[6], self->_componentLayoutsToConditionsMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v12, sourceCopy[7], self->_conditionsToComponentTextStylesMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v13, sourceCopy[8], self->_componentTextStylesToConditionsMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v14, sourceCopy[9], self->_conditionsToTextStylesMap);
  __50__SXConditionalObjectAnalysis_populateWithSource___block_invoke(v15, sourceCopy[10], self->_textStylesToConditionsMap);
  v16 = sourceCopy[11];

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

- (id)objectsForKeys:(id)keys map:(id)map
{
  v22 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  mapCopy = map;
  v8 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = keysCopy;
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

        v14 = [(SXConditionalObjectAnalysis *)self objectsForKey:*(*(&v17 + 1) + 8 * i) map:mapCopy, v17];
        [v8 unionSet:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (id)objectsForKey:(id)key map:(id)map
{
  keyCopy = key;
  mapCopy = map;
  v7 = [mapCopy objectForKey:keyCopy];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    [mapCopy setObject:v7 forKey:keyCopy];
  }

  return v7;
}

@end