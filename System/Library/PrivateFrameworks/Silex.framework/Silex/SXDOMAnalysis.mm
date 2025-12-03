@interface SXDOMAnalysis
- (SXDOMAnalysis)init;
- (id)childComponentsOfComponent:(id)component includeDescendants:(BOOL)descendants;
- (id)componentStylesForComponent:(id)component;
- (id)componentStylesForComponents:(id)components;
- (id)componentTextStylesForComponent:(id)component;
- (id)componentTextStylesForComponents:(id)components;
- (id)componentsForComponentStyle:(id)style;
- (id)componentsForComponentStyles:(id)styles;
- (id)componentsForComponentTextStyle:(id)style;
- (id)componentsForComponentTextStyles:(id)styles;
- (id)componentsForTextStyle:(id)style;
- (id)componentsForTextStyles:(id)styles;
- (id)componentsWithRole:(int)role;
- (id)componentsWithType:(id)type;
- (id)containerPathForComponentWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifiersForKey:(id)key map:(id)map;
- (id)identifiersForKeys:(id)keys map:(id)map;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)parentComponentOfComponent:(id)component;
- (id)textStylesForComponent:(id)component;
- (id)textStylesForComponents:(id)components;
- (id)typeForComponent:(id)component;
- (int)roleForComponent:(id)component;
- (void)populateWithSource:(id)source;
@end

@implementation SXDOMAnalysis

- (SXDOMAnalysis)init
{
  v32.receiver = self;
  v32.super_class = SXDOMAnalysis;
  v2 = [(SXDOMAnalysis *)&v32 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    roleToComponentsMap = v2->_roleToComponentsMap;
    v2->_roleToComponentsMap = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    componentToRoleMap = v2->_componentToRoleMap;
    v2->_componentToRoleMap = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    typeToComponentsMap = v2->_typeToComponentsMap;
    v2->_typeToComponentsMap = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    componentToTypeMap = v2->_componentToTypeMap;
    v2->_componentToTypeMap = dictionary4;

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    componentStyleToComponentsMap = v2->_componentStyleToComponentsMap;
    v2->_componentStyleToComponentsMap = dictionary5;

    dictionary6 = [MEMORY[0x1E695DF90] dictionary];
    componentToComponentStylesMap = v2->_componentToComponentStylesMap;
    v2->_componentToComponentStylesMap = dictionary6;

    dictionary7 = [MEMORY[0x1E695DF90] dictionary];
    componentTextStyleToComponentsMap = v2->_componentTextStyleToComponentsMap;
    v2->_componentTextStyleToComponentsMap = dictionary7;

    dictionary8 = [MEMORY[0x1E695DF90] dictionary];
    componentToComponentTextStylesMap = v2->_componentToComponentTextStylesMap;
    v2->_componentToComponentTextStylesMap = dictionary8;

    dictionary9 = [MEMORY[0x1E695DF90] dictionary];
    textStyleToComponentsMap = v2->_textStyleToComponentsMap;
    v2->_textStyleToComponentsMap = dictionary9;

    dictionary10 = [MEMORY[0x1E695DF90] dictionary];
    componentToTextStylesMap = v2->_componentToTextStylesMap;
    v2->_componentToTextStylesMap = dictionary10;

    dictionary11 = [MEMORY[0x1E695DF90] dictionary];
    componentToChildComponentsMap = v2->_componentToChildComponentsMap;
    v2->_componentToChildComponentsMap = dictionary11;

    dictionary12 = [MEMORY[0x1E695DF90] dictionary];
    componentToParentComponentMap = v2->_componentToParentComponentMap;
    v2->_componentToParentComponentMap = dictionary12;

    v27 = objc_alloc_init(SXMutableConditionalObjectAnalysis);
    conditionalObjectAnalysis = v2->_conditionalObjectAnalysis;
    v2->_conditionalObjectAnalysis = v27;

    v29 = objc_alloc_init(SXMutableNamespacedObjectReferences);
    namespacedObjectReferences = v2->_namespacedObjectReferences;
    v2->_namespacedObjectReferences = v29;
  }

  return v2;
}

- (id)componentsWithRole:(int)role
{
  roleToComponentsMap = self->_roleToComponentsMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&role];
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

- (int)roleForComponent:(id)component
{
  v3 = [(NSMutableDictionary *)self->_componentToRoleMap objectForKey:component];
  intValue = [v3 intValue];

  return intValue;
}

- (id)componentsWithType:(id)type
{
  v3 = [(NSMutableDictionary *)self->_typeToComponentsMap objectForKey:type];
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

- (id)typeForComponent:(id)component
{
  v3 = [(NSMutableDictionary *)self->_componentToTypeMap objectForKey:component];
  v4 = [v3 copy];

  return v4;
}

- (id)componentStylesForComponent:(id)component
{
  v3 = [(SXDOMAnalysis *)self identifiersForKey:component map:self->_componentToComponentStylesMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentStylesForComponents:(id)components
{
  v3 = [(SXDOMAnalysis *)self identifiersForKeys:components map:self->_componentToComponentStylesMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentsForComponentStyle:(id)style
{
  v3 = [(SXDOMAnalysis *)self identifiersForKey:style map:self->_componentStyleToComponentsMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentsForComponentStyles:(id)styles
{
  v3 = [(SXDOMAnalysis *)self identifiersForKeys:styles map:self->_componentStyleToComponentsMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentTextStylesForComponent:(id)component
{
  v3 = [(SXDOMAnalysis *)self identifiersForKey:component map:self->_componentToComponentTextStylesMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentTextStylesForComponents:(id)components
{
  v3 = [(SXDOMAnalysis *)self identifiersForKeys:components map:self->_componentToComponentTextStylesMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentsForComponentTextStyle:(id)style
{
  v3 = [(SXDOMAnalysis *)self identifiersForKey:style map:self->_componentTextStyleToComponentsMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentsForComponentTextStyles:(id)styles
{
  v3 = [(SXDOMAnalysis *)self identifiersForKeys:styles map:self->_componentTextStyleToComponentsMap];
  v4 = [v3 copy];

  return v4;
}

- (id)textStylesForComponent:(id)component
{
  v3 = [(SXDOMAnalysis *)self identifiersForKey:component map:self->_componentToTextStylesMap];
  v4 = [v3 copy];

  return v4;
}

- (id)textStylesForComponents:(id)components
{
  v3 = [(SXDOMAnalysis *)self identifiersForKeys:components map:self->_componentToTextStylesMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentsForTextStyle:(id)style
{
  v3 = [(SXDOMAnalysis *)self identifiersForKey:style map:self->_textStyleToComponentsMap];
  v4 = [v3 copy];

  return v4;
}

- (id)componentsForTextStyles:(id)styles
{
  v3 = [(SXDOMAnalysis *)self identifiersForKeys:styles map:self->_textStyleToComponentsMap];
  v4 = [v3 copy];

  return v4;
}

- (id)childComponentsOfComponent:(id)component includeDescendants:(BOOL)descendants
{
  descendantsCopy = descendants;
  v23 = *MEMORY[0x1E69E9840];
  v6 = [(NSMutableDictionary *)self->_componentToChildComponentsMap objectForKey:component];
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

  if (descendantsCopy)
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

- (id)parentComponentOfComponent:(id)component
{
  v3 = [(NSMutableDictionary *)self->_componentToParentComponentMap objectForKey:component];
  v4 = [v3 copy];

  return v4;
}

- (id)containerPathForComponentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(SXDOMAnalysis *)self parentComponentOfComponent:identifierCopy];
  if (v6)
  {
    v7 = v6;
    do
    {
      [array insertObject:v7 atIndex:0];
      v8 = [(SXDOMAnalysis *)self parentComponentOfComponent:v7];

      v7 = v8;
    }

    while (v8);
  }

  v9 = [array copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SXDOMAnalysis);
  [(SXDOMAnalysis *)v4 populateWithSource:self];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SXMutableDOMAnalysis);
  [(SXDOMAnalysis *)v4 populateWithSource:self];
  return v4;
}

- (void)populateWithSource:(id)source
{
  v4 = *(source + 1);
  roleToComponentsMap = self->_roleToComponentsMap;
  sourceCopy = source;
  __36__SXDOMAnalysis_populateWithSource___block_invoke(sourceCopy, v4, roleToComponentsMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v7, sourceCopy[3], self->_typeToComponentsMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v8, sourceCopy[5], self->_componentStyleToComponentsMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v9, sourceCopy[6], self->_componentToComponentStylesMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v10, sourceCopy[7], self->_componentTextStyleToComponentsMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v11, sourceCopy[8], self->_componentToComponentTextStylesMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v12, sourceCopy[9], self->_textStyleToComponentsMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v13, sourceCopy[10], self->_componentToTextStylesMap);
  __36__SXDOMAnalysis_populateWithSource___block_invoke(v14, sourceCopy[11], self->_componentToChildComponentsMap);
  v15 = [sourceCopy[12] mutableCopy];
  componentToParentComponentMap = self->_componentToParentComponentMap;
  self->_componentToParentComponentMap = v15;

  v17 = [sourceCopy[13] mutableCopy];
  conditionalObjectAnalysis = self->_conditionalObjectAnalysis;
  self->_conditionalObjectAnalysis = v17;

  v19 = sourceCopy[14];
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

- (id)identifiersForKeys:(id)keys map:(id)map
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

        v14 = [(SXDOMAnalysis *)self identifiersForKey:*(*(&v17 + 1) + 8 * i) map:mapCopy, v17];
        [v8 unionSet:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (id)identifiersForKey:(id)key map:(id)map
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