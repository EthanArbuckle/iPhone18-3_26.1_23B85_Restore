@interface SXNamespacedObjectReferences
- (SXNamespacedObjectReferences)init;
- (id)componentStyleIdentifierForNamespacedComponentStyleIdentifier:(id)a3 component:(id)a4;
- (id)componentTextStyleIdentifierForNamespacedComponentTextStyleIdentifier:(id)a3 component:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)namespacedComponentStyleIdentifierForIdentifier:(id)a3 component:(id)a4;
- (id)namespacedComponentStyleIdentifiersForIdentifiers:(id)a3 component:(id)a4;
- (id)namespacedComponentTextStyleIdentifierForIdentifier:(id)a3 component:(id)a4;
- (id)namespacedComponentTextStyleIdentifiersForIdentifiers:(id)a3 component:(id)a4;
- (id)namespacedTextStyleIdentifierForIdentifier:(id)a3 component:(id)a4;
- (id)namespacedTextStyleIdentifiersForIdentifiers:(id)a3 component:(id)a4;
- (id)referencesForComponent:(id)a3 map:(id)a4;
- (id)textStyleIdentifierForNamespacedTextStyleIdentifier:(id)a3 component:(id)a4;
- (void)populateWithSource:(id)a3;
@end

@implementation SXNamespacedObjectReferences

- (SXNamespacedObjectReferences)init
{
  v10.receiver = self;
  v10.super_class = SXNamespacedObjectReferences;
  v2 = [(SXNamespacedObjectReferences *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    componentStyleReferences = v2->_componentStyleReferences;
    v2->_componentStyleReferences = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    componentTextStyleReferences = v2->_componentTextStyleReferences;
    v2->_componentTextStyleReferences = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    textStyleReferences = v2->_textStyleReferences;
    v2->_textStyleReferences = v7;
  }

  return v2;
}

- (id)namespacedComponentStyleIdentifierForIdentifier:(id)a3 component:(id)a4
{
  componentStyleReferences = self->_componentStyleReferences;
  v7 = a3;
  v8 = [(SXNamespacedObjectReferences *)self referencesForComponent:a4 map:componentStyleReferences];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

- (id)namespacedComponentStyleIdentifiersForIdentifiers:(id)a3 component:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
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

        v14 = [(SXNamespacedObjectReferences *)self namespacedComponentStyleIdentifierForIdentifier:*(*(&v16 + 1) + 8 * i) component:v7, v16];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)componentStyleIdentifierForNamespacedComponentStyleIdentifier:(id)a3 component:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v8 = v6;
  v21 = v8;
  v9 = [(SXNamespacedObjectReferences *)self referencesForComponent:v7 map:self->_componentStyleReferences];
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

- (id)namespacedComponentTextStyleIdentifierForIdentifier:(id)a3 component:(id)a4
{
  componentTextStyleReferences = self->_componentTextStyleReferences;
  v7 = a3;
  v8 = [(SXNamespacedObjectReferences *)self referencesForComponent:a4 map:componentTextStyleReferences];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

- (id)namespacedComponentTextStyleIdentifiersForIdentifiers:(id)a3 component:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
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

        v14 = [(SXNamespacedObjectReferences *)self namespacedComponentTextStyleIdentifierForIdentifier:*(*(&v16 + 1) + 8 * i) component:v7, v16];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)componentTextStyleIdentifierForNamespacedComponentTextStyleIdentifier:(id)a3 component:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v8 = v6;
  v21 = v8;
  v9 = [(SXNamespacedObjectReferences *)self referencesForComponent:v7 map:self->_componentTextStyleReferences];
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

- (id)namespacedTextStyleIdentifierForIdentifier:(id)a3 component:(id)a4
{
  textStyleReferences = self->_textStyleReferences;
  v7 = a3;
  v8 = [(SXNamespacedObjectReferences *)self referencesForComponent:a4 map:textStyleReferences];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

- (id)namespacedTextStyleIdentifiersForIdentifiers:(id)a3 component:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
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

        v14 = [(SXNamespacedObjectReferences *)self namespacedTextStyleIdentifierForIdentifier:*(*(&v16 + 1) + 8 * i) component:v7, v16];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)textStyleIdentifierForNamespacedTextStyleIdentifier:(id)a3 component:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v8 = v6;
  v21 = v8;
  v9 = [(SXNamespacedObjectReferences *)self referencesForComponent:v7 map:self->_textStyleReferences];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SXNamespacedObjectReferences);
  [(SXNamespacedObjectReferences *)v4 populateWithSource:self];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SXMutableNamespacedObjectReferences);
  [(SXNamespacedObjectReferences *)v4 populateWithSource:self];
  return v4;
}

- (void)populateWithSource:(id)a3
{
  v4 = *(a3 + 1);
  componentStyleReferences = self->_componentStyleReferences;
  v6 = a3;
  __51__SXNamespacedObjectReferences_populateWithSource___block_invoke(v6, v4, componentStyleReferences);
  __51__SXNamespacedObjectReferences_populateWithSource___block_invoke(v7, v6[2], self->_componentTextStyleReferences);
  v8 = v6[3];

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

- (id)referencesForComponent:(id)a3 map:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:v5];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v6 setObject:v7 forKey:v5];
  }

  return v7;
}

@end