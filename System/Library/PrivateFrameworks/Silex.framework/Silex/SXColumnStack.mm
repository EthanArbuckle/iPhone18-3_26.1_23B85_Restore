@interface SXColumnStack
- (SXColumnStack)initWithNumberOfColumns:(unint64_t)columns;
- (id)allComponentsAfterComponent:(id)component;
- (id)allComponentsBeforeComponent:(id)component;
- (id)componentsAfterComponent:(id)component;
- (id)componentsBeforeComponent:(id)component;
- (id)description;
- (unint64_t)rangeInBounds:(_NSRange)bounds;
- (void)addComponentBlueprint:(id)blueprint;
@end

@implementation SXColumnStack

- (SXColumnStack)initWithNumberOfColumns:(unint64_t)columns
{
  v9.receiver = self;
  v9.super_class = SXColumnStack;
  v4 = [(SXColumnStack *)&v9 init];
  if (v4)
  {
    for (i = [MEMORY[0x1E695DF70] array];
    {
      array = [MEMORY[0x1E695DF70] array];
      [(NSArray *)i addObject:array];
    }

    columnStack = v4->_columnStack;
    v4->_columnStack = i;
  }

  return v4;
}

- (void)addComponentBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  columnRange = [blueprintCopy columnRange];
  if (columnRange < columnRange + v5)
  {
    v6 = columnRange;
    v7 = v5;
    do
    {
      columnStack = [(SXColumnStack *)self columnStack];
      v9 = [columnStack objectAtIndex:v6];

      [v9 addObject:blueprintCopy];
      ++v6;
      --v7;
    }

    while (v7);
  }
}

- (id)allComponentsBeforeComponent:(id)component
{
  v23 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  columnRange = [componentCopy columnRange];
  v7 = v6;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v9 = columnRange + v7;
  if (columnRange < columnRange + v7)
  {
    do
    {
      columnStack = [(SXColumnStack *)self columnStack];
      v11 = [columnStack objectAtIndex:columnRange];

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

          if (*(*(&v18 + 1) + 8 * v16) == componentCopy)
          {
            break;
          }

          [orderedSet addObject:?];
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

      ++columnRange;
    }

    while (columnRange != v9);
  }

  return orderedSet;
}

- (id)componentsBeforeComponent:(id)component
{
  componentCopy = component;
  columnRange = [componentCopy columnRange];
  v7 = v6;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  if (columnRange < columnRange + v7)
  {
    do
    {
      columnStack = [(SXColumnStack *)self columnStack];
      v10 = [columnStack objectAtIndex:columnRange];

      v11 = [v10 indexOfObjectIdenticalTo:componentCopy];
      if (v11)
      {
        v12 = [v10 objectAtIndex:v11 - 1];
        [orderedSet addObject:v12];
      }

      ++columnRange;
      --v7;
    }

    while (v7);
  }

  return orderedSet;
}

- (id)allComponentsAfterComponent:(id)component
{
  v25 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  columnRange = [componentCopy columnRange];
  v7 = v6;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v9 = columnRange + v7;
  if (columnRange < columnRange + v7)
  {
    do
    {
      columnStack = [(SXColumnStack *)self columnStack];
      v11 = [columnStack objectAtIndex:columnRange];

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
              [orderedSet addObject:v18];
              v15 = 1;
            }

            else
            {
              v15 = v18 == componentCopy;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }

      ++columnRange;
    }

    while (columnRange != v9);
  }

  return orderedSet;
}

- (id)componentsAfterComponent:(id)component
{
  componentCopy = component;
  columnRange = [componentCopy columnRange];
  v7 = v6;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  if (columnRange < columnRange + v7)
  {
    do
    {
      columnStack = [(SXColumnStack *)self columnStack];
      v10 = [columnStack objectAtIndex:columnRange];

      v11 = [v10 indexOfObjectIdenticalTo:componentCopy];
      if (v11 < [v10 count] - 1)
      {
        v12 = [v10 objectAtIndex:v11 + 1];
        [orderedSet addObject:v12];
      }

      ++columnRange;
      --v7;
    }

    while (v7);
  }

  return orderedSet;
}

- (unint64_t)rangeInBounds:(_NSRange)bounds
{
  v3 = bounds.location + bounds.length;
  columnStack = [(SXColumnStack *)self columnStack];
  v5 = v3 <= [columnStack count];

  return v5;
}

- (id)description
{
  columnStack = [(SXColumnStack *)self columnStack];
  v3 = [columnStack description];

  return v3;
}

@end