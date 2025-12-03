@interface _UITextAttributeDictionaryImplM
- (void)_removeFallbackFromStorage;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setFallback:(id)fallback;
- (void)setIgnoresFallback:(BOOL)fallback forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation _UITextAttributeDictionaryImplM

- (void)_removeFallbackFromStorage
{
  v20 = *MEMORY[0x1E69E9840];
  _attributes = [(_UITextAttributeDefaults *)self->super._fallback _attributes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _attributes2 = [(_UITextAttributeDefaults *)self->super._fallback _attributes];
  allKeys = [_attributes2 allKeys];

  obj = allKeys;
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        v12 = [_attributes objectForKeyedSubscript:v10];
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

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (([objc_opt_class() _isMutable] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextAttributeDictionary.m" lineNumber:334 description:{@"%@ is not a mutable impl.", objc_opt_class()}];
  }

  if (self->super._fallback && ![(_UITextAttributeDictionaryImplI *)self ignoresFallbackForKey:keyCopy])
  {
    _attributes = [(_UITextAttributeDefaults *)self->super._fallback _attributes];
    v10 = [_attributes objectForKeyedSubscript:keyCopy];
    v11 = objectCopy;
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

  if (keyCopy && (v13 = self->super._storage) != 0 && CFDictionaryContainsKey(v13, keyCopy))
  {
    storage = self->super._storage;
    if (v8)
    {
      [(NSMutableDictionary *)storage removeObjectForKey:keyCopy];
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

  [(NSMutableDictionary *)storage setObject:objectCopy forKey:keyCopy];
LABEL_20:
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  if (([objc_opt_class() _isMutable] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextAttributeDictionary.m" lineNumber:356 description:{@"%@ is not a mutable impl.", objc_opt_class()}];
  }

  [(NSMutableDictionary *)self->super._storage removeObjectForKey:keyCopy];
}

- (void)removeAllObjects
{
  if (([objc_opt_class() _isMutable] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextAttributeDictionary.m" lineNumber:363 description:{@"%@ is not a mutable impl.", objc_opt_class()}];
  }

  storage = self->super._storage;

  [(NSMutableDictionary *)storage removeAllObjects];
}

- (void)setFallback:(id)fallback
{
  fallbackCopy = fallback;
  if (([objc_opt_class() _isMutable] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextAttributeDictionary.m" lineNumber:372 description:{@"%@ is not a mutable impl.", objc_opt_class()}];
  }

  fallback = self->super._fallback;
  self->super._fallback = fallbackCopy;

  [(_UITextAttributeDictionaryImplM *)self _removeFallbackFromStorage];
}

- (void)setIgnoresFallback:(BOOL)fallback forKey:(id)key
{
  fallbackCopy = fallback;
  keyCopy = key;
  if (([objc_opt_class() _isMutable] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextAttributeDictionary.m" lineNumber:379 description:{@"%@ is not a mutable impl.", objc_opt_class()}];
  }

  v7 = keyCopy;
  if (keyCopy)
  {
    ignoring = self->super._ignoring;
    if (fallbackCopy)
    {
      if (ignoring)
      {
        [(NSMutableSet *)ignoring addObject:keyCopy];
LABEL_11:
        v7 = keyCopy;
        goto LABEL_12;
      }

      v11 = [MEMORY[0x1E695DFA8] setWithObject:keyCopy];
      v10 = self->super._ignoring;
      self->super._ignoring = v11;
    }

    else
    {
      [(NSMutableSet *)ignoring removeObject:keyCopy];
      v9 = [(NSMutableSet *)self->super._ignoring count];
      v7 = keyCopy;
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