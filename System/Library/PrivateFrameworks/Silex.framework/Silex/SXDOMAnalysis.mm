@interface SXDOMAnalysis
- (SXDOMAnalysis)init;
- (id)childComponentsOfComponent:(id)a3 includeDescendants:(BOOL)a4;
- (id)componentStylesForComponent:(id)a3;
- (id)componentStylesForComponents:(id)a3;
- (id)componentTextStylesForComponent:(id)a3;
- (id)componentTextStylesForComponents:(id)a3;
- (id)componentsForComponentStyle:(id)a3;
- (id)componentsForComponentStyles:(id)a3;
- (id)componentsForComponentTextStyle:(id)a3;
- (id)componentsForComponentTextStyles:(id)a3;
- (id)componentsForTextStyle:(id)a3;
- (id)componentsForTextStyles:(id)a3;
- (id)componentsWithRole:(int)a3;
- (id)componentsWithType:(id)a3;
- (id)containerPathForComponentWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifiersForKey:(id)a3 map:(id)a4;
- (id)identifiersForKeys:(id)a3 map:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)parentComponentOfComponent:(id)a3;
- (id)textStylesForComponent:(id)a3;
- (id)textStylesForComponents:(id)a3;
- (id)typeForComponent:(id)a3;
- (int)roleForComponent:(id)a3;
- (void)populateWithSource:(id)a3;
@end

@implementation SXDOMAnalysis

- (SXDOMAnalysis)init
{
  v32.receiver = self;
  v32.super_class = SXDOMAnalysis;
  v2 = [(SXDOMAnalysis *)&v32 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    roleToComponentsMap = v2->_roleToComponentsMap;
    v2->_roleToComponentsMap = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    componentToRoleMap = v2->_componentToRoleMap;
    v2->_componentToRoleMap = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    typeToComponentsMap = v2->_typeToComponentsMap;
    v2->_typeToComponentsMap = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    componentToTypeMap = v2->_componentToTypeMap;
    v2->_componentToTypeMap = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    componentStyleToComponentsMap = v2->_componentStyleToComponentsMap;
    v2->_componentStyleToComponentsMap = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    componentToComponentStylesMap = v2->_componentToComponentStylesMap;
    v2->_componentToComponentStylesMap = v13;

    v15 = [MEMORY[0x1E695DF90] dictionary];
    componentTextStyleToComponentsMap = v2->_componentTextStyleToComponentsMap;
    v2->_componentTextStyleToComponentsMap = v15;

    v17 = [MEMORY[0x1E695DF90] dictionary];
    componentToComponentTextStylesMap = v2->_componentToComponentTextStylesMap;
    v2->_componentToComponentTextStylesMap = v17;

    v19 = [MEMORY[0x1E695DF90] dictionary];
    textStyleToComponentsMap = v2->_textStyleToComponentsMap;
    v2->_textStyleToComponentsMap = v19;

    v21 = [MEMORY[0x1E695DF90] dictionary];
    componentToTextStylesMap = v2->_componentToTextStylesMap;
    v2->_componentToTextStylesMap = v21;

    v23 = [MEMORY[0x1E695DF90] dictionary];
    componentToChildComponentsMap = v2->_componentToChildComponentsMap;
    v2->_componentToChildComponentsMap = v23;

    v25 = [MEMORY[0x1E695DF90] dictionary];
    componentToParentComponentMap = v2->_componentToParentComponentMap;
    v2->_componentToParentComponentMap = v25;

    v27 = objc_alloc_init(SXMutableConditionalObjectAnalysis);
    conditionalObjectAnalysis = v2->_conditionalObjectAnalysis;
    v2->_conditionalObjectAnalysis = v27;

    v29 = objc_alloc_init(SXMutableNamespacedObjectReferences);
    namespacedObjectReferences = v2->_namespacedObjectReferences;
    v2->_namespacedObjectReferences = v29;
  }

  return v2;
}

- (id)componentsWithRole:(int)a3
{
  roleToComponentsMap = self->_roleToComponentsMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  v5 = [(NSMutableDictionary *)roleToComponentsMap objectForKey:v4];
  v6 = [v5 copy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v9 = v8;

  return v9;
}

- (int)roleForComponent:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_componentToRoleMap objectForKey:a3];
  v4 = [v3 intValue];

  return v4;
}

- (id)componentsWithType:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_typeToComponentsMap objectForKey:a3];
  v4 = [v3 copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  v7 = v6;

  return v7;
}

- (id)typeForComponent:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_componentToTypeMap objectForKey:a3];
  v4 = [v3 copy];

  return v4;
}

- (id)componentStylesForComponent:(id)a3
{
  v3 = [(SXDOMAnalysis *)self identifiersForKey:a3 map:self->_componentToComponentStylesMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentStylesForComponents:(id)a3
{
  v3 = [(SXDOMAnalysis *)self identifiersForKeys:a3 map:self->_componentToComponentStylesMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentsForComponentStyle:(id)a3
{
  v3 = [(SXDOMAnalysis *)self identifiersForKey:a3 map:self->_componentStyleToComponentsMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentsForComponentStyles:(id)a3
{
  v3 = [(SXDOMAnalysis *)self identifiersForKeys:a3 map:self->_componentStyleToComponentsMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentTextStylesForComponent:(id)a3
{
  v3 = [(SXDOMAnalysis *)self identifiersForKey:a3 map:self->_componentToComponentTextStylesMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentTextStylesForComponents:(id)a3
{
  v3 = [(SXDOMAnalysis *)self identifiersForKeys:a3 map:self->_componentToComponentTextStylesMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentsForComponentTextStyle:(id)a3
{
  v3 = [(SXDOMAnalysis *)self identifiersForKey:a3 map:self->_componentTextStyleToComponentsMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentsForComponentTextStyles:(id)a3
{
  v3 = [(SXDOMAnalysis *)self identifiersForKeys:a3 map:self->_componentTextStyleToComponentsMap];
  v4 = [v3 copy];

  return v4;
}

- (id)textStylesForComponent:(id)a3
{
  v3 = [(SXDOMAnalysis *)self identifiersForKey:a3 map:self->_componentToTextStylesMap];
  v4 = [v3 copy];

  return v4;
}

- (id)textStylesForComponents:(id)a3
{
  v3 = [(SXDOMAnalysis *)self identifiersForKeys:a3 map:self->_componentToTextStylesMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentsForTextStyle:(id)a3
{
  v3 = [(SXDOMAnalysis *)self identifiersForKey:a3 map:self->_textStyleToComponentsMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentsForTextStyles:(id)a3
{
  v3 = [(SXDOMAnalysis *)self identifiersForKeys:a3 map:self->_textStyleToComponentsMap];
  v4 = [v3 copy];

  return v4;
}

- (id)childComponentsOfComponent:(id)a3 includeDescendants:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v6 = [(NSMutableDictionary *)self->_componentToChildComponentsMap objectForKey:a3];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFA8] set];
  }

  v9 = v8;

  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v9 copy];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(SXDOMAnalysis *)self childComponentsOfComponent:*(*(&v18 + 1) + 8 * i) includeDescendants:1];
          if (v15)
          {
            [v9 unionSet:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v16 = [v9 copy];

  return v16;
}

- (id)parentComponentOfComponent:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_componentToParentComponentMap objectForKey:a3];
  v4 = [v3 copy];

  return v4;
}

- (id)containerPathForComponentWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(SXDOMAnalysis *)self parentComponentOfComponent:v4];
  if (v6)
  {
    v7 = v6;
    do
    {
      [v5 insertObject:v7 atIndex:0];
      v8 = [(SXDOMAnalysis *)self parentComponentOfComponent:v7];

      v7 = v8;
    }

    while (v8);
  }

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SXDOMAnalysis);
  [(SXDOMAnalysis *)v4 populateWithSource:self];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SXMutableDOMAnalysis);
  [(SXDOMAnalysis *)v4 populateWithSource:self];
  return v4;
}

- (void)populateWithSource:(id)a3
{
  v4 = *(a3 + 1);
  roleToComponentsMap = self->_roleToComponentsMap;
  v6 = a3;
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v6, v4, roleToComponentsMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v7, v6[3], self->_typeToComponentsMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v8, v6[5], self->_componentStyleToComponentsMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v9, v6[6], self->_componentToComponentStylesMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v10, v6[7], self->_componentTextStyleToComponentsMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v11, v6[8], self->_componentToComponentTextStylesMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v12, v6[9], self->_textStyleToComponentsMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v13, v6[10], self->_componentToTextStylesMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v14, v6[11], self->_componentToChildComponentsMap);
  v15 = [v6[12] mutableCopy];
  componentToParentComponentMap = self->_componentToParentComponentMap;
  self->_componentToParentComponentMap = v15;

  v17 = [v6[13] mutableCopy];
  conditionalObjectAnalysis = self->_conditionalObjectAnalysis;
  self->_conditionalObjectAnalysis = v17;

  v19 = v6[14];
  v20 = [v19 mutableCopy];
  namespacedObjectReferences = self->_namespacedObjectReferences;
  self->_namespacedObjectReferences = v20;

  MEMORY[0x1EEE66BB8](v20, namespacedObjectReferences);
}

void __36__SXDOMAnalysis_populateWithSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__SXDOMAnalysis_populateWithSource___block_invoke_2;
  v6[3] = &unk_1E8501ED8;
  v7 = v4;
  v5 = v4;
  [a2 enumerateKeysAndObjectsUsingBlock:v6];
}

void __36__SXDOMAnalysis_populateWithSource___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 mutableCopy];
  [v4 setObject:v6 forKey:v5];
}

- (id)identifiersForKeys:(id)a3 map:(id)a4
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

        v14 = [(SXDOMAnalysis *)self identifiersForKey:*(*(&v17 + 1) + 8 * i) map:v7, v17];
        [v8 unionSet:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (id)identifiersForKey:(id)a3 map:(id)a4
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