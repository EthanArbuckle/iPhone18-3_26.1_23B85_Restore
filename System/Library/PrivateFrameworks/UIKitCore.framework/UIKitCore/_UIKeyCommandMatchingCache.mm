@interface _UIKeyCommandMatchingCache
+ (id)keyCommandMatchingCacheForLayout:(uint64_t)layout;
- (_UIKeyCommandMatchingCache)init;
- (uint64_t)_cacheValueForDictionary:(void *)dictionary input:(uint64_t)input modifiers:;
- (void)_setCacheValue:(void *)value dictionary:(void *)dictionary input:(uint64_t)input modifiers:;
- (void)conflictStateForCommandKeyPlaneSwitchForInput:(uint64_t)input modifiers:;
- (void)directReachabilityStateForInput:(uint64_t)input modifiers:;
- (void)setCommandKeyPlaneHasSwitchingConflict:(void *)conflict input:(uint64_t)input modifiers:;
- (void)setDirectlyReachable:(void *)reachable input:(uint64_t)input modifiers:;
@end

@implementation _UIKeyCommandMatchingCache

+ (id)keyCommandMatchingCacheForLayout:(uint64_t)layout
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    commandKeyPlaneConflictsByInput = v2->_commandKeyPlaneConflictsByInput;
    v2->_commandKeyPlaneConflictsByInput = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    reachabilityByInput = v2->_reachabilityByInput;
    v2->_reachabilityByInput = dictionary2;
  }

  return v2;
}

- (void)_setCacheValue:(void *)value dictionary:(void *)dictionary input:(uint64_t)input modifiers:
{
  valueCopy = value;
  dictionaryCopy = dictionary;
  if (self)
  {
    v10 = [valueCopy objectForKey:dictionaryCopy];
    if (!v10)
    {
      v10 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:1282];
      [valueCopy setObject:v10 forKey:dictionaryCopy];
    }

    NSMapInsert(v10, (input + 1), a2);
  }
}

- (uint64_t)_cacheValueForDictionary:(void *)dictionary input:(uint64_t)input modifiers:
{
  v7 = a2;
  dictionaryCopy = dictionary;
  if (self)
  {
    v9 = [v7 objectForKey:dictionaryCopy];
    v10 = v9;
    if (v9)
    {
      v11 = NSMapGet(v9, (input + 1));
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

- (void)conflictStateForCommandKeyPlaneSwitchForInput:(uint64_t)input modifiers:
{
  if (result)
  {
    v4 = result;
    v5 = a2;
    commandKeyPlaneConflictsByInput = [v4 commandKeyPlaneConflictsByInput];
    v7 = [(_UIKeyCommandMatchingCache *)v4 _cacheValueForDictionary:commandKeyPlaneConflictsByInput input:v5 modifiers:input];

    return v7;
  }

  return result;
}

- (void)setCommandKeyPlaneHasSwitchingConflict:(void *)conflict input:(uint64_t)input modifiers:
{
  if (self)
  {
    conflictCopy = conflict;
    commandKeyPlaneConflictsByInput = [self commandKeyPlaneConflictsByInput];
    v10 = commandKeyPlaneConflictsByInput;
    if (a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [(_UIKeyCommandMatchingCache *)self _setCacheValue:v9 dictionary:commandKeyPlaneConflictsByInput input:conflictCopy modifiers:input];
  }
}

- (void)setDirectlyReachable:(void *)reachable input:(uint64_t)input modifiers:
{
  if (self)
  {
    reachableCopy = reachable;
    reachabilityByInput = [self reachabilityByInput];
    v10 = reachabilityByInput;
    if (a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [(_UIKeyCommandMatchingCache *)self _setCacheValue:v9 dictionary:reachabilityByInput input:reachableCopy modifiers:input];
  }
}

- (void)directReachabilityStateForInput:(uint64_t)input modifiers:
{
  if (result)
  {
    v4 = result;
    v5 = a2;
    reachabilityByInput = [v4 reachabilityByInput];
    v7 = [(_UIKeyCommandMatchingCache *)v4 _cacheValueForDictionary:reachabilityByInput input:v5 modifiers:input];

    return v7;
  }

  return result;
}

@end