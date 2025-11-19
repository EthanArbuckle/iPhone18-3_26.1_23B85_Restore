@interface _UITextAttributeDictionaryImplM
- (void)_removeFallbackFromStorage;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setFallback:(id)a3;
- (void)setIgnoresFallback:(BOOL)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation _UITextAttributeDictionaryImplM

- (void)_removeFallbackFromStorage
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(_UITextAttributeDefaults *)self->super._fallback _attributes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(_UITextAttributeDefaults *)self->super._fallback _attributes];
  v5 = [v4 allKeys];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:v10];
        v12 = [v3 objectForKeyedSubscript:v10];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          [(NSMutableDictionary *)self->super._storage removeObjectForKey:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v16 = a3;
  v7 = a4;
  if (([objc_opt_class() _isMutable] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UITextAttributeDictionary.m" lineNumber:334 description:{@"%@ is not a mutable impl.", objc_opt_class()}];
  }

  if (self->super._fallback && ![(_UITextAttributeDictionaryImplI *)self ignoresFallbackForKey:v7])
  {
    v9 = [(_UITextAttributeDefaults *)self->super._fallback _attributes];
    v10 = [v9 objectForKeyedSubscript:v7];
    v11 = v16;
    v12 = v11;
    if (v10 == v11)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0;
      if (v11 && v10)
      {
        v8 = [v10 isEqual:v11];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 && (v13 = self->super._storage) != 0 && CFDictionaryContainsKey(v13, v7))
  {
    storage = self->super._storage;
    if (v8)
    {
      [(NSMutableDictionary *)storage removeObjectForKey:v7];
      goto LABEL_20;
    }
  }

  else
  {
    if (v8)
    {
      goto LABEL_20;
    }

    storage = self->super._storage;
  }

  [(NSMutableDictionary *)storage setObject:v16 forKey:v7];
LABEL_20:
}

- (void)removeObjectForKey:(id)a3
{
  v6 = a3;
  if (([objc_opt_class() _isMutable] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UITextAttributeDictionary.m" lineNumber:356 description:{@"%@ is not a mutable impl.", objc_opt_class()}];
  }

  [(NSMutableDictionary *)self->super._storage removeObjectForKey:v6];
}

- (void)removeAllObjects
{
  if (([objc_opt_class() _isMutable] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UITextAttributeDictionary.m" lineNumber:363 description:{@"%@ is not a mutable impl.", objc_opt_class()}];
  }

  storage = self->super._storage;

  [(NSMutableDictionary *)storage removeAllObjects];
}

- (void)setFallback:(id)a3
{
  v5 = a3;
  if (([objc_opt_class() _isMutable] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UITextAttributeDictionary.m" lineNumber:372 description:{@"%@ is not a mutable impl.", objc_opt_class()}];
  }

  fallback = self->super._fallback;
  self->super._fallback = v5;

  [(_UITextAttributeDictionaryImplM *)self _removeFallbackFromStorage];
}

- (void)setIgnoresFallback:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v13 = a4;
  if (([objc_opt_class() _isMutable] & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UITextAttributeDictionary.m" lineNumber:379 description:{@"%@ is not a mutable impl.", objc_opt_class()}];
  }

  v7 = v13;
  if (v13)
  {
    ignoring = self->super._ignoring;
    if (v4)
    {
      if (ignoring)
      {
        [(NSMutableSet *)ignoring addObject:v13];
LABEL_11:
        v7 = v13;
        goto LABEL_12;
      }

      v11 = [MEMORY[0x1E695DFA8] setWithObject:v13];
      v10 = self->super._ignoring;
      self->super._ignoring = v11;
    }

    else
    {
      [(NSMutableSet *)ignoring removeObject:v13];
      v9 = [(NSMutableSet *)self->super._ignoring count];
      v7 = v13;
      if (v9)
      {
        goto LABEL_12;
      }

      v10 = self->super._ignoring;
      self->super._ignoring = 0;
    }

    goto LABEL_11;
  }

LABEL_12:
}

@end