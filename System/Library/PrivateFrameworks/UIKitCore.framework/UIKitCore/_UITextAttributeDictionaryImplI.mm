@interface _UITextAttributeDictionaryImplI
- (BOOL)isEqualToDictionary:(id)a3;
- (BOOL)usesFallbackForKey:(id)a3;
- (_UITextAttributeDictionaryImplI)init;
- (_UITextAttributeDictionaryImplI)initWithCapacity:(unint64_t)a3;
- (_UITextAttributeDictionaryImplI)initWithFallback:(id)a3;
- (id)_fullDictionary;
- (id)_initWithDictionary:(id)a3 copyItems:(BOOL)a4 fallback:(id)a5;
- (id)_initWithStorage:(id)a3 fallback:(id)a4 ignoring:(id)a5;
- (id)_keysIfThereIsFallback;
- (id)allKeys;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectForKey:(id)a3;
- (id)sparseDictionary;
- (unint64_t)count;
- (unint64_t)hash;
@end

@implementation _UITextAttributeDictionaryImplI

- (id)keyEnumerator
{
  v3 = [(_UITextAttributeDictionaryImplI *)self _keysIfThereIsFallback];
  v4 = v3;
  if (v3)
  {
    [v3 objectEnumerator];
  }

  else
  {
    [(NSMutableDictionary *)self->_storage keyEnumerator];
  }
  v5 = ;

  return v5;
}

- (unint64_t)count
{
  storage = [(_UITextAttributeDictionaryImplI *)self _keysIfThereIsFallback];
  v4 = storage;
  if (!storage)
  {
    storage = self->_storage;
  }

  v5 = [storage count];

  return v5;
}

- (id)_keysIfThereIsFallback
{
  v3 = [(_UITextAttributeDefaults *)self->_fallback _attributes];
  if (v3)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = [(NSMutableDictionary *)self->_storage allKeys];
    v6 = [v4 setWithArray:v5];

    v7 = [v3 allKeys];
    v8 = [v6 setByAddingObjectsFromArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_fullDictionary
{
  if (!self->_fallback)
  {
    goto LABEL_6;
  }

  v3 = [(NSMutableDictionary *)self->_storage count];
  fallback = self->_fallback;
  if (v3)
  {
    v5 = [(_UITextAttributeDefaults *)fallback _attributes];
    v6 = [v5 mutableCopy];

    [v6 addEntriesFromDictionary:self->_storage];
    v7 = [v6 copy];

    goto LABEL_10;
  }

  if (fallback)
  {
    v8 = [(_UITextAttributeDefaults *)fallback _attributes];
  }

  else
  {
LABEL_6:
    storage = self->_storage;
    if (!storage)
    {
      storage = MEMORY[0x1E695E0F8];
    }

    v8 = storage;
  }

  v7 = v8;
LABEL_10:

  return v7;
}

- (_UITextAttributeDictionaryImplI)init
{
  [objc_opt_class() _storageClass];
  v3 = objc_opt_new();
  v4 = [(_UITextAttributeDictionaryImplI *)self _initWithStorage:v3 fallback:0 ignoring:0];

  return v4;
}

- (id)_initWithDictionary:(id)a3 copyItems:(BOOL)a4 fallback:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([objc_opt_class() _isMutable])
    {
      v10 = [v8 mutableCopy];
    }

    else
    {
      v10 = [v8 copy];
    }

    v16 = v10;
  }

  else
  {
    v11 = objc_opt_class();
    if (v8)
    {
      v12 = [v11 _isMutable];
      v13 = 0x1E695DF90;
      if (!v12)
      {
        v13 = 0x1E695DF20;
      }

      v14 = [objc_alloc(*v13) initWithDictionary:v8 copyItems:v6];
      v15 = objc_alloc(objc_opt_class());
    }

    else
    {
      v17 = [v11 alloc];
      [objc_opt_class() _storageClass];
      v14 = objc_opt_new();
      v15 = v17;
    }

    v16 = [v15 _initWithStorage:v14 fallback:v9 ignoring:0];
  }

  return v16;
}

- (_UITextAttributeDictionaryImplI)initWithCapacity:(unint64_t)a3
{
  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "_storageClass"))];
  v5 = [(_UITextAttributeDictionaryImplI *)self _initWithStorage:v4 fallback:0 ignoring:0];

  return v5;
}

- (_UITextAttributeDictionaryImplI)initWithFallback:(id)a3
{
  v4 = a3;
  [objc_opt_class() _storageClass];
  v5 = objc_opt_new();
  v6 = [(_UITextAttributeDictionaryImplI *)self _initWithStorage:v5 fallback:v4 ignoring:0];

  return v6;
}

- (id)_initWithStorage:(id)a3 fallback:(id)a4 ignoring:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = _UITextAttributeDictionaryImplI;
  v11 = [(_UITextAttributeDictionaryImplI *)&v22 init];
  if (!v11)
  {
    goto LABEL_8;
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  storage = v11->_storage;
  if (has_internal_diagnostics)
  {
    if (storage)
    {
      v18 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v19 = objc_opt_class();
        *buf = 138412290;
        v24 = v19;
        _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "%@ initialized with nil storage", buf, 0xCu);
      }

      goto LABEL_14;
    }
  }

  else if (storage)
  {
    v20 = *(__UILogGetCategoryCachedImpl("Assert", &_initWithStorage_fallback_ignoring____s_category) + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v18 = v20;
      v21 = objc_opt_class();
      *buf = 138412290;
      v24 = v21;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "%@ initialized with nil storage", buf, 0xCu);
LABEL_14:
    }
  }

  if (v8)
  {
    v14 = v8;
    v15 = v11->_storage;
    v11->_storage = v14;
  }

  else
  {
    [objc_opt_class() _storageClass];
    v15 = objc_opt_new();
    v16 = v11->_storage;
    v11->_storage = v15;
  }

  objc_storeStrong(&v11->_fallback, a4);
  objc_storeStrong(&v11->_ignoring, a5);
  [(_UITextAttributeDictionaryImplI *)v11 _removeFallbackFromStorage];
LABEL_8:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UITextAttributeDictionaryImplI alloc];
  v5 = [(NSMutableDictionary *)self->_storage copy];
  fallback = self->_fallback;
  v7 = [(NSMutableSet *)self->_ignoring copy];
  v8 = [(_UITextAttributeDictionaryImplI *)v4 _initWithStorage:v5 fallback:fallback ignoring:v7];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [_UITextAttributeDictionaryImplM alloc];
  v5 = [(NSMutableDictionary *)self->_storage mutableCopy];
  fallback = self->_fallback;
  v7 = [(NSMutableSet *)self->_ignoring mutableCopy];
  v8 = [(_UITextAttributeDictionaryImplI *)v4 _initWithStorage:v5 fallback:fallback ignoring:v7];

  return v8;
}

- (id)allKeys
{
  v3 = [(_UITextAttributeDictionaryImplI *)self _keysIfThereIsFallback];
  v4 = v3;
  if (v3)
  {
    [v3 allObjects];
  }

  else
  {
    [(NSMutableDictionary *)self->_storage allKeys];
  }
  v5 = ;

  return v5;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKey:v4];
  if (!v5)
  {
    if (self->_fallback && ![(_UITextAttributeDictionaryImplI *)self ignoresFallbackForKey:v4])
    {
      v6 = [(_UITextAttributeDefaults *)self->_fallback _attributes];
      v5 = [v6 objectForKey:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)usesFallbackForKey:(id)a3
{
  v4 = a3;
  if (v4 && (storage = self->_storage) != 0 && CFDictionaryContainsKey(storage, v4))
  {
    v6 = 0;
  }

  else
  {
    v7 = [(_UITextAttributeDefaults *)self->_fallback _attributes];
    v8 = v7;
    v6 = 0;
    if (v4 && v7)
    {
      v6 = CFDictionaryContainsKey(v7, v4) != 0;
    }
  }

  return v6;
}

- (id)sparseDictionary
{
  v3 = [objc_opt_class() _isMutable];
  storage = self->_storage;
  if (v3)
  {
    v5 = [(NSMutableDictionary *)storage copy];
  }

  else
  {
    v5 = storage;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSMutableDictionary *)self->_storage hash];
  v4 = [(NSMutableSet *)self->_ignoring hash]^ v3;
  return v4 ^ [(_UITextAttributeDefaults *)self->_fallback hash];
}

- (BOOL)isEqualToDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(_UITextAttributeDictionaryImplI *)self _fullDictionary];
        v8 = [(_UITextAttributeDictionaryImplI *)v6 _fullDictionary];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0;
          if (v9 && v10)
          {
            v12 = [(_UITextAttributeDictionaryImplI *)v9 isEqual:v10];
          }
        }

        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [(_UITextAttributeDictionaryImplI *)self _fullDictionary];
        v11 = v5;
        if (v9 == v11)
        {
          v12 = 1;
        }

        else if (v9)
        {
          v12 = [(_UITextAttributeDictionaryImplI *)v9 isEqual:v11];
        }

        else
        {
          v12 = 0;
        }

        v6 = v9;
LABEL_19:

        goto LABEL_20;
      }
    }

    v12 = 0;
  }

LABEL_20:

  return v12;
}

- (id)description
{
  v3 = [(_UITextAttributeDefaults *)self->_fallback _attributes];
  if ([v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_storage, "count") + objc_msgSend(v3, "count")}];
    [v4 addEntriesFromDictionary:self->_storage];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __46___UITextAttributeDictionaryImplI_description__block_invoke;
    v13 = &unk_1E70F3898;
    v14 = self;
    v15 = v4;
    v5 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:&v10];
    v6 = [v5 description];
    v7 = objc_msgSend(v6, "stringByReplacingOccurrencesOfString:withString:", @"\\U100000", @"(");

    v8 = [v7 stringByReplacingOccurrencesOfString:@"\\U100000" withString:@""]);
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_storage description];
  }

  return v8;
}

@end