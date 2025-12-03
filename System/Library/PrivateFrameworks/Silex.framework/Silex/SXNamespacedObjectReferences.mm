@interface SXNamespacedObjectReferences
- (SXNamespacedObjectReferences)init;
- (id)componentStyleIdentifierForNamespacedComponentStyleIdentifier:(id)identifier component:(id)component;
- (id)componentTextStyleIdentifierForNamespacedComponentTextStyleIdentifier:(id)identifier component:(id)component;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)namespacedComponentStyleIdentifierForIdentifier:(id)identifier component:(id)component;
- (id)namespacedComponentStyleIdentifiersForIdentifiers:(id)identifiers component:(id)component;
- (id)namespacedComponentTextStyleIdentifierForIdentifier:(id)identifier component:(id)component;
- (id)namespacedComponentTextStyleIdentifiersForIdentifiers:(id)identifiers component:(id)component;
- (id)namespacedTextStyleIdentifierForIdentifier:(id)identifier component:(id)component;
- (id)namespacedTextStyleIdentifiersForIdentifiers:(id)identifiers component:(id)component;
- (id)referencesForComponent:(id)component map:(id)map;
- (id)textStyleIdentifierForNamespacedTextStyleIdentifier:(id)identifier component:(id)component;
- (void)populateWithSource:(id)source;
@end

@implementation SXNamespacedObjectReferences

- (SXNamespacedObjectReferences)init
{
  v10.receiver = self;
  v10.super_class = SXNamespacedObjectReferences;
  v2 = [(SXNamespacedObjectReferences *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    componentStyleReferences = v2->_componentStyleReferences;
    v2->_componentStyleReferences = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    componentTextStyleReferences = v2->_componentTextStyleReferences;
    v2->_componentTextStyleReferences = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    textStyleReferences = v2->_textStyleReferences;
    v2->_textStyleReferences = dictionary3;
  }

  return v2;
}

- (id)namespacedComponentStyleIdentifierForIdentifier:(id)identifier component:(id)component
{
  componentStyleReferences = self->_componentStyleReferences;
  identifierCopy = identifier;
  v8 = [(SXNamespacedObjectReferences *)self referencesForComponent:component map:componentStyleReferences];
  v9 = [v8 objectForKeyedSubscript:identifierCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = identifierCopy;
  }

  v12 = v11;

  return v11;
}

- (id)namespacedComponentStyleIdentifiersForIdentifiers:(id)identifiers component:(id)component
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  componentCopy = component;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(SXNamespacedObjectReferences *)self namespacedComponentStyleIdentifierForIdentifier:*(*(&v16 + 1) + 8 * i) component:componentCopy, v16];
        [array addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return array;
}

- (id)componentStyleIdentifierForNamespacedComponentStyleIdentifier:(id)identifier component:(id)component
{
  identifierCopy = identifier;
  componentCopy = component;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v8 = identifierCopy;
  v21 = v8;
  v9 = [(SXNamespacedObjectReferences *)self referencesForComponent:componentCopy map:self->_componentStyleReferences];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__SXNamespacedObjectReferences_componentStyleIdentifierForNamespacedComponentStyleIdentifier_component___block_invoke;
  v13[3] = &unk_1E84FED60;
  v10 = v8;
  v14 = v10;
  v15 = &v16;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __104__SXNamespacedObjectReferences_componentStyleIdentifierForNamespacedComponentStyleIdentifier_component___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)namespacedComponentTextStyleIdentifierForIdentifier:(id)identifier component:(id)component
{
  componentTextStyleReferences = self->_componentTextStyleReferences;
  identifierCopy = identifier;
  v8 = [(SXNamespacedObjectReferences *)self referencesForComponent:component map:componentTextStyleReferences];
  v9 = [v8 objectForKeyedSubscript:identifierCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = identifierCopy;
  }

  v12 = v11;

  return v11;
}

- (id)namespacedComponentTextStyleIdentifiersForIdentifiers:(id)identifiers component:(id)component
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  componentCopy = component;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(SXNamespacedObjectReferences *)self namespacedComponentTextStyleIdentifierForIdentifier:*(*(&v16 + 1) + 8 * i) component:componentCopy, v16];
        [array addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return array;
}

- (id)componentTextStyleIdentifierForNamespacedComponentTextStyleIdentifier:(id)identifier component:(id)component
{
  identifierCopy = identifier;
  componentCopy = component;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v8 = identifierCopy;
  v21 = v8;
  v9 = [(SXNamespacedObjectReferences *)self referencesForComponent:componentCopy map:self->_componentTextStyleReferences];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __112__SXNamespacedObjectReferences_componentTextStyleIdentifierForNamespacedComponentTextStyleIdentifier_component___block_invoke;
  v13[3] = &unk_1E84FED60;
  v10 = v8;
  v14 = v10;
  v15 = &v16;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __112__SXNamespacedObjectReferences_componentTextStyleIdentifierForNamespacedComponentTextStyleIdentifier_component___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)namespacedTextStyleIdentifierForIdentifier:(id)identifier component:(id)component
{
  textStyleReferences = self->_textStyleReferences;
  identifierCopy = identifier;
  v8 = [(SXNamespacedObjectReferences *)self referencesForComponent:component map:textStyleReferences];
  v9 = [v8 objectForKeyedSubscript:identifierCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = identifierCopy;
  }

  v12 = v11;

  return v11;
}

- (id)namespacedTextStyleIdentifiersForIdentifiers:(id)identifiers component:(id)component
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  componentCopy = component;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(SXNamespacedObjectReferences *)self namespacedTextStyleIdentifierForIdentifier:*(*(&v16 + 1) + 8 * i) component:componentCopy, v16];
        [array addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return array;
}

- (id)textStyleIdentifierForNamespacedTextStyleIdentifier:(id)identifier component:(id)component
{
  identifierCopy = identifier;
  componentCopy = component;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v8 = identifierCopy;
  v21 = v8;
  v9 = [(SXNamespacedObjectReferences *)self referencesForComponent:componentCopy map:self->_textStyleReferences];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__SXNamespacedObjectReferences_textStyleIdentifierForNamespacedTextStyleIdentifier_component___block_invoke;
  v13[3] = &unk_1E84FED60;
  v10 = v8;
  v14 = v10;
  v15 = &v16;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __94__SXNamespacedObjectReferences_textStyleIdentifierForNamespacedTextStyleIdentifier_component___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SXNamespacedObjectReferences);
  [(SXNamespacedObjectReferences *)v4 populateWithSource:self];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SXMutableNamespacedObjectReferences);
  [(SXNamespacedObjectReferences *)v4 populateWithSource:self];
  return v4;
}

- (void)populateWithSource:(id)source
{
  v4 = *(source + 1);
  componentStyleReferences = self->_componentStyleReferences;
  sourceCopy = source;
  __51__SXNamespacedObjectReferences_populateWithSource___block_invoke(sourceCopy, v4, componentStyleReferences);
  __51__SXNamespacedObjectReferences_populateWithSource___block_invoke(v7, sourceCopy[2], self->_componentTextStyleReferences);
  v8 = sourceCopy[3];

  textStyleReferences = self->_textStyleReferences;

  __51__SXNamespacedObjectReferences_populateWithSource___block_invoke(v9, v8, textStyleReferences);
}

void __51__SXNamespacedObjectReferences_populateWithSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SXNamespacedObjectReferences_populateWithSource___block_invoke_2;
  v6[3] = &unk_1E84FED88;
  v7 = v4;
  v5 = v4;
  [a2 enumerateKeysAndObjectsUsingBlock:v6];
}

void __51__SXNamespacedObjectReferences_populateWithSource___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 mutableCopy];
  [v4 setObject:v6 forKey:v5];
}

- (id)referencesForComponent:(id)component map:(id)map
{
  componentCopy = component;
  mapCopy = map;
  dictionary = [mapCopy objectForKey:componentCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [mapCopy setObject:dictionary forKey:componentCopy];
  }

  return dictionary;
}

@end