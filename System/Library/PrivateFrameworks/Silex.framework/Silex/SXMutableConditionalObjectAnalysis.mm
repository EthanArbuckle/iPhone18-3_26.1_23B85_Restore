@interface SXMutableConditionalObjectAnalysis
- (void)addComponentIdentifier:(id)identifier conditionTypes:(id)types;
- (void)addComponentLayoutIdentifier:(id)identifier conditionTypes:(id)types;
- (void)addComponentStyleIdentifier:(id)identifier conditionTypes:(id)types;
- (void)addComponentTextStyleIdentifier:(id)identifier conditionTypes:(id)types;
- (void)addObject:(id)object keys:(id)keys map:(id)map;
- (void)addObjects:(id)objects key:(id)key map:(id)map;
- (void)addTextStyleIdentifier:(id)identifier conditionTypes:(id)types;
- (void)removeComponentIdentifier:(id)identifier conditionTypes:(id)types;
- (void)removeComponentLayoutIdentifier:(id)identifier conditionTypes:(id)types;
- (void)removeComponentStyleIdentifier:(id)identifier conditionTypes:(id)types;
- (void)removeComponentTextStyleIdentifier:(id)identifier conditionTypes:(id)types;
- (void)removeObject:(id)object keys:(id)keys map:(id)map;
- (void)removeObjects:(id)objects key:(id)key map:(id)map;
- (void)removeTextStyleIdentifier:(id)identifier conditionTypes:(id)types;
- (void)setDocumentStyleConditionTypes:(id)types;
@end

@implementation SXMutableConditionalObjectAnalysis

- (void)addComponentIdentifier:(id)identifier conditionTypes:(id)types
{
  conditionsToComponentsMap = self->super._conditionsToComponentsMap;
  typesCopy = types;
  identifierCopy = identifier;
  [(SXMutableConditionalObjectAnalysis *)self addObject:identifierCopy keys:typesCopy map:conditionsToComponentsMap];
  [(SXMutableConditionalObjectAnalysis *)self addObjects:typesCopy key:identifierCopy map:self->super._componentsToConditionsMap];
}

- (void)removeComponentIdentifier:(id)identifier conditionTypes:(id)types
{
  conditionsToComponentsMap = self->super._conditionsToComponentsMap;
  typesCopy = types;
  identifierCopy = identifier;
  [(SXMutableConditionalObjectAnalysis *)self removeObject:identifierCopy keys:typesCopy map:conditionsToComponentsMap];
  [(SXMutableConditionalObjectAnalysis *)self removeObjects:typesCopy key:identifierCopy map:self->super._componentsToConditionsMap];
}

- (void)addComponentStyleIdentifier:(id)identifier conditionTypes:(id)types
{
  conditionsToComponentStylesMap = self->super._conditionsToComponentStylesMap;
  typesCopy = types;
  identifierCopy = identifier;
  [(SXMutableConditionalObjectAnalysis *)self addObject:identifierCopy keys:typesCopy map:conditionsToComponentStylesMap];
  [(SXMutableConditionalObjectAnalysis *)self addObjects:typesCopy key:identifierCopy map:self->super._componentStylesToConditionsMap];
}

- (void)removeComponentStyleIdentifier:(id)identifier conditionTypes:(id)types
{
  conditionsToComponentStylesMap = self->super._conditionsToComponentStylesMap;
  typesCopy = types;
  identifierCopy = identifier;
  [(SXMutableConditionalObjectAnalysis *)self removeObject:identifierCopy keys:typesCopy map:conditionsToComponentStylesMap];
  [(SXMutableConditionalObjectAnalysis *)self removeObjects:typesCopy key:identifierCopy map:self->super._componentStylesToConditionsMap];
}

- (void)addComponentTextStyleIdentifier:(id)identifier conditionTypes:(id)types
{
  conditionsToComponentTextStylesMap = self->super._conditionsToComponentTextStylesMap;
  typesCopy = types;
  identifierCopy = identifier;
  [(SXMutableConditionalObjectAnalysis *)self addObject:identifierCopy keys:typesCopy map:conditionsToComponentTextStylesMap];
  [(SXMutableConditionalObjectAnalysis *)self addObjects:typesCopy key:identifierCopy map:self->super._componentTextStylesToConditionsMap];
}

- (void)removeComponentTextStyleIdentifier:(id)identifier conditionTypes:(id)types
{
  conditionsToComponentTextStylesMap = self->super._conditionsToComponentTextStylesMap;
  typesCopy = types;
  identifierCopy = identifier;
  [(SXMutableConditionalObjectAnalysis *)self removeObject:identifierCopy keys:typesCopy map:conditionsToComponentTextStylesMap];
  [(SXMutableConditionalObjectAnalysis *)self removeObjects:typesCopy key:identifierCopy map:self->super._componentTextStylesToConditionsMap];
}

- (void)addTextStyleIdentifier:(id)identifier conditionTypes:(id)types
{
  conditionsToTextStylesMap = self->super._conditionsToTextStylesMap;
  typesCopy = types;
  identifierCopy = identifier;
  [(SXMutableConditionalObjectAnalysis *)self addObject:identifierCopy keys:typesCopy map:conditionsToTextStylesMap];
  [(SXMutableConditionalObjectAnalysis *)self addObjects:typesCopy key:identifierCopy map:self->super._textStylesToConditionsMap];
}

- (void)removeTextStyleIdentifier:(id)identifier conditionTypes:(id)types
{
  conditionsToTextStylesMap = self->super._conditionsToTextStylesMap;
  typesCopy = types;
  identifierCopy = identifier;
  [(SXMutableConditionalObjectAnalysis *)self removeObject:identifierCopy keys:typesCopy map:conditionsToTextStylesMap];
  [(SXMutableConditionalObjectAnalysis *)self removeObjects:typesCopy key:identifierCopy map:self->super._textStylesToConditionsMap];
}

- (void)addComponentLayoutIdentifier:(id)identifier conditionTypes:(id)types
{
  conditionsToComponentLayoutsMap = self->super._conditionsToComponentLayoutsMap;
  typesCopy = types;
  identifierCopy = identifier;
  [(SXMutableConditionalObjectAnalysis *)self addObject:identifierCopy keys:typesCopy map:conditionsToComponentLayoutsMap];
  [(SXMutableConditionalObjectAnalysis *)self addObjects:typesCopy key:identifierCopy map:self->super._componentLayoutsToConditionsMap];
}

- (void)removeComponentLayoutIdentifier:(id)identifier conditionTypes:(id)types
{
  conditionsToComponentLayoutsMap = self->super._conditionsToComponentLayoutsMap;
  typesCopy = types;
  identifierCopy = identifier;
  [(SXMutableConditionalObjectAnalysis *)self removeObject:identifierCopy keys:typesCopy map:conditionsToComponentLayoutsMap];
  [(SXMutableConditionalObjectAnalysis *)self removeObjects:typesCopy key:identifierCopy map:self->super._componentLayoutsToConditionsMap];
}

- (void)setDocumentStyleConditionTypes:(id)types
{
  v4 = [types mutableCopy];
  documentStyleConditionTypes = self->super._documentStyleConditionTypes;
  self->super._documentStyleConditionTypes = v4;

  MEMORY[0x1EEE66BB8](v4, documentStyleConditionTypes);
}

- (void)addObject:(id)object keys:(id)keys map:(id)map
{
  v21 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keysCopy = keys;
  mapCopy = map;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [keysCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(keysCopy);
        }

        v15 = [(SXConditionalObjectAnalysis *)self objectsForKey:*(*(&v16 + 1) + 8 * v14) map:mapCopy];
        [v15 addObject:objectCopy];

        ++v14;
      }

      while (v12 != v14);
      v12 = [keysCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)addObjects:(id)objects key:(id)key map:(id)map
{
  objectsCopy = objects;
  v9 = [(SXConditionalObjectAnalysis *)self objectsForKey:key map:map];
  [v9 unionSet:objectsCopy];
}

- (void)removeObject:(id)object keys:(id)keys map:(id)map
{
  v21 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keysCopy = keys;
  mapCopy = map;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [keysCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(keysCopy);
        }

        v15 = [(SXConditionalObjectAnalysis *)self objectsForKey:*(*(&v16 + 1) + 8 * v14) map:mapCopy];
        [v15 removeObject:objectCopy];

        ++v14;
      }

      while (v12 != v14);
      v12 = [keysCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)removeObjects:(id)objects key:(id)key map:(id)map
{
  objectsCopy = objects;
  v9 = [(SXConditionalObjectAnalysis *)self objectsForKey:key map:map];
  [v9 minusSet:objectsCopy];
}

@end