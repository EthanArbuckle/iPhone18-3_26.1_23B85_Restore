@interface _UITraitTokenSet
+ (uint64_t)emptySet;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)setByAddingTraitToken:(id)result;
- (id)setByRemovingTraitToken:(id)result;
- (uint64_t)NSSetRepresentation;
- (uint64_t)initWithNSSetRepresentation:(void *)a1;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addTraitTokenValue:(int8x16_t)a3;
- (void)allTraitTokens;
- (void)dealloc;
- (void)enumerateAllTraitTokenValues:(uint64_t)a1;
- (void)removeTraitTokenValue:(__n128)a3;
@end

@implementation _UITraitTokenSet

+ (uint64_t)emptySet
{
  objc_opt_self();
  if (_MergedGlobals_1327 != -1)
  {
    dispatch_once(&_MergedGlobals_1327, &__block_literal_global_611);
  }

  return qword_1ED4A22A8;
}

- (void)dealloc
{
  cachedArrayRepresentation = self->_cachedArrayRepresentation;
  if (cachedArrayRepresentation)
  {
  }

  set = self->_storage.set;
  if (set)
  {
  }

  v5.receiver = self;
  v5.super_class = _UITraitTokenSet;
  [(_UITraitTokenSet *)&v5 dealloc];
}

- (void)addTraitTokenValue:(int8x16_t)a3
{
  if (a1)
  {
    if (qword_1ED4A22A8 == a1)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    _UITraitTokenSetInsert((a1 + 16), a2, a3);
    v5 = *(a1 + 8);
    if (v5)
    {

      *(a1 + 8) = 0;
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_UITraitTokenSet);
  if (v4)
  {
    v4->_cachedArrayRepresentation = self->_cachedArrayRepresentation;
    v4->_storage.set = [(_UIMutableFastIndexSet *)self->_storage.set mutableCopy];
    v5 = *&self->_storage.bitSet._chunks[2];
    *v4->_storage.bitSet._chunks = *self->_storage.bitSet._chunks;
    *&v4->_storage.bitSet._chunks[2] = v5;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return _UITraitTokenSetIsEqualToSet(&self->_storage, a3 + 16);
}

- (void)removeTraitTokenValue:(__n128)a3
{
  if (a1)
  {
    if (qword_1ED4A22A8 == a1)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    _UITraitTokenSetRemove((a1 + 16), a2, a3);
    v5 = *(a1 + 8);
    if (v5)
    {

      *(a1 + 8) = 0;
    }
  }
}

- (id)setByAddingTraitToken:(id)result
{
  if (result)
  {
    v3 = [result copy];
    if (v3)
    {
      v4 = _UIGetTraitTokenValue(a2);
      [(_UITraitTokenSet *)v3 addTraitTokenValue:v4, v5];
    }

    return v3;
  }

  return result;
}

- (id)setByRemovingTraitToken:(id)result
{
  if (result)
  {
    v3 = [result copy];
    if (v3)
    {
      v4 = _UIGetTraitTokenValue(a2);
      [(_UITraitTokenSet *)v3 removeTraitTokenValue:v4, v5];
    }

    return v3;
  }

  return result;
}

- (void)enumerateAllTraitTokenValues:(uint64_t)a1
{
  if (a1)
  {
    if (!a2)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    _UITraitTokenSetEnumerate((a1 + 16), a2);
  }
}

- (void)allTraitTokens
{
  v2 = _UITraitTokenSetCount(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34___UITraitTokenSet_allTraitTokens__block_invoke;
    v5[3] = &unk_1E710D738;
    v5[4] = v3;
    _UITraitTokenSetEnumerate((a1 + 16), v5);
    *(a1 + 8) = v3;
  }

  return v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (!self || !_UITraitTokenSetCount(&self->_storage))
  {
    return 0;
  }

  v9 = [(_UITraitTokenSet *)self allTraitTokens];

  return [v9 countByEnumeratingWithState:a3 objects:a4 count:a5];
}

- (uint64_t)initWithNSSetRepresentation:(void *)a1
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v3 = [a1 init];
  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(a2);
          }

          v8 = _UIGetTraitTokenValue(*(*(&v11 + 1) + 8 * v7));
          [(_UITraitTokenSet *)v3 addTraitTokenValue:v8, v9];
          ++v7;
        }

        while (v5 != v7);
        v5 = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  return v3;
}

- (uint64_t)NSSetRepresentation
{
  if (result)
  {
    v1 = MEMORY[0x1E695DFD8];
    v2 = [(_UITraitTokenSet *)result allTraitTokens];

    return [v1 setWithArray:v2];
  }

  return result;
}

@end