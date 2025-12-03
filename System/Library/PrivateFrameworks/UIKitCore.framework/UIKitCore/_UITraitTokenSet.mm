@interface _UITraitTokenSet
+ (uint64_t)emptySet;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)setByAddingTraitToken:(id)result;
- (id)setByRemovingTraitToken:(id)result;
- (uint64_t)NSSetRepresentation;
- (uint64_t)initWithNSSetRepresentation:(void *)representation;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addTraitTokenValue:(int8x16_t)value;
- (void)allTraitTokens;
- (void)dealloc;
- (void)enumerateAllTraitTokenValues:(uint64_t)values;
- (void)removeTraitTokenValue:(__n128)value;
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

- (void)addTraitTokenValue:(int8x16_t)value
{
  if (self)
  {
    if (qword_1ED4A22A8 == self)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    _UITraitTokenSetInsert((self + 16), a2, value);
    v5 = *(self + 8);
    if (v5)
    {

      *(self + 8) = 0;
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return _UITraitTokenSetIsEqualToSet(&self->_storage, equal + 16);
}

- (void)removeTraitTokenValue:(__n128)value
{
  if (self)
  {
    if (qword_1ED4A22A8 == self)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    _UITraitTokenSetRemove((self + 16), a2, value);
    v5 = *(self + 8);
    if (v5)
    {

      *(self + 8) = 0;
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

- (void)enumerateAllTraitTokenValues:(uint64_t)values
{
  if (values)
  {
    if (!a2)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    _UITraitTokenSetEnumerate((values + 16), a2);
  }
}

- (void)allTraitTokens
{
  v2 = _UITraitTokenSetCount(self + 16);
  if (!v2)
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = *(self + 8);
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34___UITraitTokenSet_allTraitTokens__block_invoke;
    v5[3] = &unk_1E710D738;
    v5[4] = v3;
    _UITraitTokenSetEnumerate((self + 16), v5);
    *(self + 8) = v3;
  }

  return v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (!self || !_UITraitTokenSetCount(&self->_storage))
  {
    return 0;
  }

  allTraitTokens = [(_UITraitTokenSet *)self allTraitTokens];

  return [allTraitTokens countByEnumeratingWithState:state objects:objects count:count];
}

- (uint64_t)initWithNSSetRepresentation:(void *)representation
{
  v16 = *MEMORY[0x1E69E9840];
  if (!representation)
  {
    return 0;
  }

  v3 = [representation init];
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
    allTraitTokens = [(_UITraitTokenSet *)result allTraitTokens];

    return [v1 setWithArray:allTraitTokens];
  }

  return result;
}

@end