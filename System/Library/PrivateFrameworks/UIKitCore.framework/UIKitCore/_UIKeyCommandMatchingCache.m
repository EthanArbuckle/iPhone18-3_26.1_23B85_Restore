@interface _UIKeyCommandMatchingCache
+ (id)keyCommandMatchingCacheForLayout:(uint64_t)a1;
- (_UIKeyCommandMatchingCache)init;
- (uint64_t)_cacheValueForDictionary:(void *)a3 input:(uint64_t)a4 modifiers:;
- (void)_setCacheValue:(void *)a3 dictionary:(void *)a4 input:(uint64_t)a5 modifiers:;
- (void)conflictStateForCommandKeyPlaneSwitchForInput:(uint64_t)a3 modifiers:;
- (void)directReachabilityStateForInput:(uint64_t)a3 modifiers:;
- (void)setCommandKeyPlaneHasSwitchingConflict:(void *)a3 input:(uint64_t)a4 modifiers:;
- (void)setDirectlyReachable:(void *)a3 input:(uint64_t)a4 modifiers:;
@end

@implementation _UIKeyCommandMatchingCache

+ (id)keyCommandMatchingCacheForLayout:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    if (!_MergedGlobals_1015 || ([qword_1ED49CA40 isEqualToString:v2] & 1) == 0)
    {
      v3 = [v2 copy];
      v4 = qword_1ED49CA40;
      qword_1ED49CA40 = v3;

      v5 = objc_alloc_init(_UIKeyCommandMatchingCache);
      v6 = _MergedGlobals_1015;
      _MergedGlobals_1015 = v5;
    }

    v7 = _MergedGlobals_1015;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_UIKeyCommandMatchingCache)init
{
  v8.receiver = self;
  v8.super_class = _UIKeyCommandMatchingCache;
  v2 = [(_UIKeyCommandMatchingCache *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    commandKeyPlaneConflictsByInput = v2->_commandKeyPlaneConflictsByInput;
    v2->_commandKeyPlaneConflictsByInput = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    reachabilityByInput = v2->_reachabilityByInput;
    v2->_reachabilityByInput = v5;
  }

  return v2;
}

- (void)_setCacheValue:(void *)a3 dictionary:(void *)a4 input:(uint64_t)a5 modifiers:
{
  v11 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [v11 objectForKey:v9];
    if (!v10)
    {
      v10 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:1282];
      [v11 setObject:v10 forKey:v9];
    }

    NSMapInsert(v10, (a5 + 1), a2);
  }
}

- (uint64_t)_cacheValueForDictionary:(void *)a3 input:(uint64_t)a4 modifiers:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [v7 objectForKey:v8];
    v10 = v9;
    if (v9)
    {
      v11 = NSMapGet(v9, (a4 + 1));
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)conflictStateForCommandKeyPlaneSwitchForInput:(uint64_t)a3 modifiers:
{
  if (result)
  {
    v4 = result;
    v5 = a2;
    v6 = [v4 commandKeyPlaneConflictsByInput];
    v7 = [(_UIKeyCommandMatchingCache *)v4 _cacheValueForDictionary:v6 input:v5 modifiers:a3];

    return v7;
  }

  return result;
}

- (void)setCommandKeyPlaneHasSwitchingConflict:(void *)a3 input:(uint64_t)a4 modifiers:
{
  if (a1)
  {
    v7 = a3;
    v8 = [a1 commandKeyPlaneConflictsByInput];
    v10 = v8;
    if (a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [(_UIKeyCommandMatchingCache *)a1 _setCacheValue:v9 dictionary:v8 input:v7 modifiers:a4];
  }
}

- (void)setDirectlyReachable:(void *)a3 input:(uint64_t)a4 modifiers:
{
  if (a1)
  {
    v7 = a3;
    v8 = [a1 reachabilityByInput];
    v10 = v8;
    if (a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [(_UIKeyCommandMatchingCache *)a1 _setCacheValue:v9 dictionary:v8 input:v7 modifiers:a4];
  }
}

- (void)directReachabilityStateForInput:(uint64_t)a3 modifiers:
{
  if (result)
  {
    v4 = result;
    v5 = a2;
    v6 = [v4 reachabilityByInput];
    v7 = [(_UIKeyCommandMatchingCache *)v4 _cacheValueForDictionary:v6 input:v5 modifiers:a3];

    return v7;
  }

  return result;
}

@end