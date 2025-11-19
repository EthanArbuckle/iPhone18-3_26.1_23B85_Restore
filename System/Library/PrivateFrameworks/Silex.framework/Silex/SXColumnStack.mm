@interface SXColumnStack
- (SXColumnStack)initWithNumberOfColumns:(unint64_t)a3;
- (id)allComponentsAfterComponent:(id)a3;
- (id)allComponentsBeforeComponent:(id)a3;
- (id)componentsAfterComponent:(id)a3;
- (id)componentsBeforeComponent:(id)a3;
- (id)description;
- (unint64_t)rangeInBounds:(_NSRange)a3;
- (void)addComponentBlueprint:(id)a3;
@end

@implementation SXColumnStack

- (SXColumnStack)initWithNumberOfColumns:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = SXColumnStack;
  v4 = [(SXColumnStack *)&v9 init];
  if (v4)
  {
    for (i = [MEMORY[0x1E695DF70] array];
    {
      v6 = [MEMORY[0x1E695DF70] array];
      [(NSArray *)i addObject:v6];
    }

    columnStack = v4->_columnStack;
    v4->_columnStack = i;
  }

  return v4;
}

- (void)addComponentBlueprint:(id)a3
{
  v10 = a3;
  v4 = [v10 columnRange];
  if (v4 < v4 + v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v8 = [(SXColumnStack *)self columnStack];
      v9 = [v8 objectAtIndex:v6];

      [v9 addObject:v10];
      ++v6;
      --v7;
    }

    while (v7);
  }
}

- (id)allComponentsBeforeComponent:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 columnRange];
  v7 = v6;
  v8 = [MEMORY[0x1E695DFA0] orderedSet];
  v9 = v5 + v7;
  if (v5 < v5 + v7)
  {
    do
    {
      v10 = [(SXColumnStack *)self columnStack];
      v11 = [v10 objectAtIndex:v5];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v19;
LABEL_4:
        v16 = 0;
        while (1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if (*(*(&v18 + 1) + 8 * v16) == v4)
          {
            break;
          }

          [v8 addObject:?];
          if (v14 == ++v16)
          {
            v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
            if (v14)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }

      ++v5;
    }

    while (v5 != v9);
  }

  return v8;
}

- (id)componentsBeforeComponent:(id)a3
{
  v4 = a3;
  v5 = [v4 columnRange];
  v7 = v6;
  v8 = [MEMORY[0x1E695DFA0] orderedSet];
  if (v5 < v5 + v7)
  {
    do
    {
      v9 = [(SXColumnStack *)self columnStack];
      v10 = [v9 objectAtIndex:v5];

      v11 = [v10 indexOfObjectIdenticalTo:v4];
      if (v11)
      {
        v12 = [v10 objectAtIndex:v11 - 1];
        [v8 addObject:v12];
      }

      ++v5;
      --v7;
    }

    while (v7);
  }

  return v8;
}

- (id)allComponentsAfterComponent:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 columnRange];
  v7 = v6;
  v8 = [MEMORY[0x1E695DFA0] orderedSet];
  v9 = v5 + v7;
  if (v5 < v5 + v7)
  {
    do
    {
      v10 = [(SXColumnStack *)self columnStack];
      v11 = [v10 objectAtIndex:v5];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v21;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v20 + 1) + 8 * i);
            if (v15)
            {
              [v8 addObject:v18];
              v15 = 1;
            }

            else
            {
              v15 = v18 == v4;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }

      ++v5;
    }

    while (v5 != v9);
  }

  return v8;
}

- (id)componentsAfterComponent:(id)a3
{
  v4 = a3;
  v5 = [v4 columnRange];
  v7 = v6;
  v8 = [MEMORY[0x1E695DFA0] orderedSet];
  if (v5 < v5 + v7)
  {
    do
    {
      v9 = [(SXColumnStack *)self columnStack];
      v10 = [v9 objectAtIndex:v5];

      v11 = [v10 indexOfObjectIdenticalTo:v4];
      if (v11 < [v10 count] - 1)
      {
        v12 = [v10 objectAtIndex:v11 + 1];
        [v8 addObject:v12];
      }

      ++v5;
      --v7;
    }

    while (v7);
  }

  return v8;
}

- (unint64_t)rangeInBounds:(_NSRange)a3
{
  v3 = a3.location + a3.length;
  v4 = [(SXColumnStack *)self columnStack];
  v5 = v3 <= [v4 count];

  return v5;
}

- (id)description
{
  v2 = [(SXColumnStack *)self columnStack];
  v3 = [v2 description];

  return v3;
}

@end