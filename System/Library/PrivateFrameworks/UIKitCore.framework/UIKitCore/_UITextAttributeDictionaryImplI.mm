@interface _UITextAttributeDictionaryImplI
- (BOOL)isEqualToDictionary:(id)dictionary;
- (BOOL)usesFallbackForKey:(id)key;
- (_UITextAttributeDictionaryImplI)init;
- (_UITextAttributeDictionaryImplI)initWithCapacity:(unint64_t)capacity;
- (_UITextAttributeDictionaryImplI)initWithFallback:(id)fallback;
- (id)_fullDictionary;
- (id)_initWithDictionary:(id)dictionary copyItems:(BOOL)items fallback:(id)fallback;
- (id)_initWithStorage:(id)storage fallback:(id)fallback ignoring:(id)ignoring;
- (id)_keysIfThereIsFallback;
- (id)allKeys;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectForKey:(id)key;
- (id)sparseDictionary;
- (unint64_t)count;
- (unint64_t)hash;
@end

@implementation _UITextAttributeDictionaryImplI

- (id)keyEnumerator
{
  _keysIfThereIsFallback = [(_UITextAttributeDictionaryImplI *)self _keysIfThereIsFallback];
  v4 = _keysIfThereIsFallback;
  if (_keysIfThereIsFallback)
  {
    [_keysIfThereIsFallback objectEnumerator];
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
  _attributes = [(_UITextAttributeDefaults *)self->_fallback _attributes];
  if (_attributes)
  {
    v4 = MEMORY[0x1E695DFD8];
    allKeys = [(NSMutableDictionary *)self->_storage allKeys];
    v6 = [v4 setWithArray:allKeys];

    allKeys2 = [_attributes allKeys];
    v8 = [v6 setByAddingObjectsFromArray:allKeys2];
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
    _attributes = [(_UITextAttributeDefaults *)fallback _attributes];
    v6 = [_attributes mutableCopy];

    [v6 addEntriesFromDictionary:self->_storage];
    v7 = [v6 copy];

    goto LABEL_10;
  }

  if (fallback)
  {
    _attributes2 = [(_UITextAttributeDefaults *)fallback _attributes];
  }

  else
  {
LABEL_6:
    storage = self->_storage;
    if (!storage)
    {
      storage = MEMORY[0x1E695E0F8];
    }

    _attributes2 = storage;
  }

  v7 = _attributes2;
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

- (id)_initWithDictionary:(id)dictionary copyItems:(BOOL)items fallback:(id)fallback
{
  itemsCopy = items;
  dictionaryCopy = dictionary;
  fallbackCopy = fallback;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([objc_opt_class() _isMutable])
    {
      v10 = [dictionaryCopy mutableCopy];
    }

    else
    {
      v10 = [dictionaryCopy copy];
    }

    v16 = v10;
  }

  else
  {
    v11 = objc_opt_class();
    if (dictionaryCopy)
    {
      _isMutable = [v11 _isMutable];
      v13 = 0x1E695DF90;
      if (!_isMutable)
      {
        v13 = 0x1E695DF20;
      }

      v14 = [objc_alloc(*v13) initWithDictionary:dictionaryCopy copyItems:itemsCopy];
      v15 = objc_alloc(objc_opt_class());
    }

    else
    {
      v17 = [v11 alloc];
      [objc_opt_class() _storageClass];
      v14 = objc_opt_new();
      v15 = v17;
    }

    v16 = [v15 _initWithStorage:v14 fallback:fallbackCopy ignoring:0];
  }

  return v16;
}

- (_UITextAttributeDictionaryImplI)initWithCapacity:(unint64_t)capacity
{
  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "_storageClass"))];
  v5 = [(_UITextAttributeDictionaryImplI *)self _initWithStorage:v4 fallback:0 ignoring:0];

  return v5;
}

- (_UITextAttributeDictionaryImplI)initWithFallback:(id)fallback
{
  fallbackCopy = fallback;
  [objc_opt_class() _storageClass];
  v5 = objc_opt_new();
  v6 = [(_UITextAttributeDictionaryImplI *)self _initWithStorage:v5 fallback:fallbackCopy ignoring:0];

  return v6;
}

- (id)_initWithStorage:(id)storage fallback:(id)fallback ignoring:(id)ignoring
{
  v25 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  fallbackCopy = fallback;
  ignoringCopy = ignoring;
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

  if (storageCopy)
  {
    v14 = storageCopy;
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

  objc_storeStrong(&v11->_fallback, fallback);
  objc_storeStrong(&v11->_ignoring, ignoring);
  [(_UITextAttributeDictionaryImplI *)v11 _removeFallbackFromStorage];
LABEL_8:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UITextAttributeDictionaryImplI alloc];
  v5 = [(NSMutableDictionary *)self->_storage copy];
  fallback = self->_fallback;
  v7 = [(NSMutableSet *)self->_ignoring copy];
  v8 = [(_UITextAttributeDictionaryImplI *)v4 _initWithStorage:v5 fallback:fallback ignoring:v7];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
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
  _keysIfThereIsFallback = [(_UITextAttributeDictionaryImplI *)self _keysIfThereIsFallback];
  v4 = _keysIfThereIsFallback;
  if (_keysIfThereIsFallback)
  {
    [_keysIfThereIsFallback allObjects];
  }

  else
  {
    [(NSMutableDictionary *)self->_storage allKeys];
  }
  v5 = ;

  return v5;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_storage objectForKey:keyCopy];
  if (!v5)
  {
    if (self->_fallback && ![(_UITextAttributeDictionaryImplI *)self ignoresFallbackForKey:keyCopy])
    {
      _attributes = [(_UITextAttributeDefaults *)self->_fallback _attributes];
      v5 = [_attributes objectForKey:keyCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)usesFallbackForKey:(id)key
{
  keyCopy = key;
  if (keyCopy && (storage = self->_storage) != 0 && CFDictionaryContainsKey(storage, keyCopy))
  {
    v6 = 0;
  }

  else
  {
    _attributes = [(_UITextAttributeDefaults *)self->_fallback _attributes];
    v8 = _attributes;
    v6 = 0;
    if (keyCopy && _attributes)
    {
      v6 = CFDictionaryContainsKey(_attributes, keyCopy) != 0;
    }
  }

  return v6;
}

- (id)sparseDictionary
{
  _isMutable = [objc_opt_class() _isMutable];
  storage = self->_storage;
  if (_isMutable)
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

- (BOOL)isEqualToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (dictionaryCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        _fullDictionary = [(_UITextAttributeDictionaryImplI *)self _fullDictionary];
        _fullDictionary2 = [(_UITextAttributeDictionaryImplI *)v6 _fullDictionary];
        _fullDictionary3 = _fullDictionary;
        v10 = _fullDictionary2;
        v11 = v10;
        if (_fullDictionary3 == v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0;
          if (_fullDictionary3 && v10)
          {
            v12 = [(_UITextAttributeDictionaryImplI *)_fullDictionary3 isEqual:v10];
          }
        }

        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _fullDictionary3 = [(_UITextAttributeDictionaryImplI *)self _fullDictionary];
        v11 = v5;
        if (_fullDictionary3 == v11)
        {
          v12 = 1;
        }

        else if (_fullDictionary3)
        {
          v12 = [(_UITextAttributeDictionaryImplI *)_fullDictionary3 isEqual:v11];
        }

        else
        {
          v12 = 0;
        }

        v6 = _fullDictionary3;
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
  _attributes = [(_UITextAttributeDefaults *)self->_fallback _attributes];
  if ([_attributes count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_storage, "count") + objc_msgSend(_attributes, "count")}];
    [v4 addEntriesFromDictionary:self->_storage];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __46___UITextAttributeDictionaryImplI_description__block_invoke;
    v13 = &unk_1E70F3898;
    selfCopy = self;
    v15 = v4;
    v5 = v4;
    [_attributes enumerateKeysAndObjectsUsingBlock:&v10];
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