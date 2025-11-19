@interface SXComponentInsertionConditionEngine
- (BOOL)validateMarker:(id)a3 componentTraits:(unint64_t)a4 layoutProvider:(id)a5;
- (SXComponentInsertionConditionEngine)init;
- (void)addCondition:(id)a3;
- (void)insertedComponent:(id)a3 approximateLocation:(CGPoint)a4;
- (void)prepareWithComponents:(id)a3 layoutProvider:(id)a4 DOMObjectProvider:(id)a5;
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

- (void)prepareWithComponents:(id)a3 layoutProvider:(id)a4 DOMObjectProvider:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(SXComponentInsertionConditionEngine *)self conditions];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v17 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 prepareWithComponents:v8 layoutProvider:v9 DOMObjectProvider:v10];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)insertedComponent:(id)a3 approximateLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(SXComponentInsertionConditionEngine *)self conditions];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 insertedComponent:v7 approximateLocation:{x, y}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)validateMarker:(id)a3 componentTraits:(unint64_t)a4 layoutProvider:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(SXComponentInsertionConditionEngine *)self conditions];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v10);
        }

        if (![*(*(&v17 + 1) + 8 * i) validateMarker:v8 componentTraits:a4 layoutProvider:v9])
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)addCondition:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXComponentInsertionConditionEngine *)self conditions];
    [v5 addObject:v4];
  }
}

@end