@interface SXComponentInsertionConditionEngine
- (BOOL)validateMarker:(id)marker componentTraits:(unint64_t)traits layoutProvider:(id)provider;
- (SXComponentInsertionConditionEngine)init;
- (void)addCondition:(id)condition;
- (void)insertedComponent:(id)component approximateLocation:(CGPoint)location;
- (void)prepareWithComponents:(id)components layoutProvider:(id)provider DOMObjectProvider:(id)objectProvider;
@end

@implementation SXComponentInsertionConditionEngine

- (SXComponentInsertionConditionEngine)init
{
  v6.receiver = self;
  v6.super_class = SXComponentInsertionConditionEngine;
  v2 = [(SXComponentInsertionConditionEngine *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    conditions = v2->_conditions;
    v2->_conditions = v3;
  }

  return v2;
}

- (void)prepareWithComponents:(id)components layoutProvider:(id)provider DOMObjectProvider:(id)objectProvider
{
  v22 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  providerCopy = provider;
  objectProviderCopy = objectProvider;
  if (componentsCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    conditions = [(SXComponentInsertionConditionEngine *)self conditions];
    v12 = [conditions countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(conditions);
          }

          v16 = *(*(&v17 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 prepareWithComponents:componentsCopy layoutProvider:providerCopy DOMObjectProvider:objectProviderCopy];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [conditions countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)insertedComponent:(id)component approximateLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v19 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  conditions = [(SXComponentInsertionConditionEngine *)self conditions];
  v9 = [conditions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(conditions);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 insertedComponent:componentCopy approximateLocation:{x, y}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [conditions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)validateMarker:(id)marker componentTraits:(unint64_t)traits layoutProvider:(id)provider
{
  v22 = *MEMORY[0x1E69E9840];
  markerCopy = marker;
  providerCopy = provider;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  conditions = [(SXComponentInsertionConditionEngine *)self conditions];
  v11 = [conditions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(conditions);
        }

        if (![*(*(&v17 + 1) + 8 * i) validateMarker:markerCopy componentTraits:traits layoutProvider:providerCopy])
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v12 = [conditions countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

- (void)addCondition:(id)condition
{
  if (condition)
  {
    conditionCopy = condition;
    conditions = [(SXComponentInsertionConditionEngine *)self conditions];
    [conditions addObject:conditionCopy];
  }
}

@end