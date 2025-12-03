@interface _UIEvaluatedObjectCache
- (_UIEvaluatedObjectCache)init;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)sortedObjects;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)topEvaluatedObject;
- (void)_createStorageIfNeeded;
- (void)addObject:(uint64_t)object;
- (void)demoteObject:(uint64_t)object;
- (void)evaluateTopObject;
- (void)initWithSortComparator:(const void *)comparator evaluationBlock:;
- (void)promoteObject:(uint64_t)object;
- (void)removeObject:(uint64_t)object;
- (void)sortAndEvaluateTopObject;
@end

@implementation _UIEvaluatedObjectCache

- (id)sortedObjects
{
  if (self)
  {
    selfCopy = self;
    [(_UIEvaluatedObjectCache *)self _createStorageIfNeeded];
    self = [selfCopy[3] copy];
    v1 = vars8;
  }

  return self;
}

- (void)sortAndEvaluateTopObject
{
  if (self)
  {
    if ([*(self + 24) count] >= 2)
    {
      [*(self + 24) sortWithOptions:16 usingComparator:*(self + 8)];
    }

    [(_UIEvaluatedObjectCache *)self evaluateTopObject];
  }
}

- (void)evaluateTopObject
{
  if (self)
  {
    if ([*(self + 24) count] && *(self + 16))
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__90;
      v10 = __Block_byref_object_dispose__90;
      v11 = 0;
      v2 = *(self + 24);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __44___UIEvaluatedObjectCache_evaluateTopObject__block_invoke;
      v5[3] = &unk_1E7108FF0;
      v5[4] = self;
      v5[5] = &v6;
      [v2 enumerateObjectsWithOptions:2 usingBlock:v5];
      v3 = v7[5];
      if (!v3)
      {
        v3 = *(self + 32);
      }

      objc_storeStrong((self + 32), v3);
      _Block_object_dispose(&v6, 8);
    }

    else
    {
      v4 = *(self + 32);
      *(self + 32) = 0;
    }
  }
}

- (void)_createStorageIfNeeded
{
  if (self && !*(self + 24))
  {
    v2 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:1];
    v3 = *(self + 24);
    *(self + 24) = v2;
  }
}

- (_UIEvaluatedObjectCache)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEvaluatedObjectCache.m" lineNumber:26 description:{@"%s: init is not allowed on %@", "-[_UIEvaluatedObjectCache init]", objc_opt_class()}];

  return 0;
}

- (void)initWithSortComparator:(const void *)comparator evaluationBlock:
{
  if (!self)
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = _UIEvaluatedObjectCache;
  v5 = objc_msgSendSuper2(&v11, sel_init);
  if (v5)
  {
    v6 = _Block_copy(a2);
    v7 = v5[1];
    v5[1] = v6;

    v8 = _Block_copy(comparator);
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIEvaluatedObjectCache *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[NSMutableOrderedSet count](self->_sortedObjects withName:{"count"), @"sortedObjects.count"}];
  topEvaluatedObject = self->_topEvaluatedObject;
  if (topEvaluatedObject)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = topEvaluatedObject;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 stringWithFormat:@"<%@: %p>", v9, v7];
  }

  else
  {
    v10 = @"(nil)";
  }

  v11 = [v3 appendObject:v10 withName:@"topEvaluatedObject"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEvaluatedObjectCache *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEvaluatedObjectCache *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65___UIEvaluatedObjectCache_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  selfCopy = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

- (void)addObject:(uint64_t)object
{
  if (object)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_addObject_ object:object file:@"_UIEvaluatedObjectCache.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"object"}];
    }

    [(_UIEvaluatedObjectCache *)object _createStorageIfNeeded];
    if (([*(object + 24) containsObject:a2] & 1) == 0)
    {
      [*(object + 24) addObject:a2];
    }

    [(_UIEvaluatedObjectCache *)object sortAndEvaluateTopObject];
  }
}

- (void)removeObject:(uint64_t)object
{
  if (object)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_removeObject_ object:object file:@"_UIEvaluatedObjectCache.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"object"}];
    }

    if ([*(object + 24) containsObject:a2])
    {
      [*(object + 24) removeObject:a2];
      v4 = *(object + 32);
      if (v4 == a2)
      {
        *(object + 32) = 0;
      }

      [(_UIEvaluatedObjectCache *)object evaluateTopObject];
    }
  }
}

- (void)promoteObject:(uint64_t)object
{
  if (object)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_promoteObject_ object:object file:@"_UIEvaluatedObjectCache.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"object"}];
    }

    [(_UIEvaluatedObjectCache *)object _createStorageIfNeeded];
    v4 = [*(object + 24) containsObject:a2];
    v5 = *(object + 24);
    if (v4)
    {
      [v5 removeObject:a2];
      v5 = *(object + 24);
    }

    [v5 addObject:a2];

    [(_UIEvaluatedObjectCache *)object sortAndEvaluateTopObject];
  }
}

- (void)demoteObject:(uint64_t)object
{
  if (object)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_demoteObject_ object:object file:@"_UIEvaluatedObjectCache.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"object"}];
    }

    [(_UIEvaluatedObjectCache *)object _createStorageIfNeeded];
    if ([*(object + 24) containsObject:a2])
    {
      [*(object + 24) removeObject:a2];
    }

    [*(object + 24) insertObject:a2 atIndex:0];

    [(_UIEvaluatedObjectCache *)object sortAndEvaluateTopObject];
  }
}

- (id)topEvaluatedObject
{
  if (self)
  {
    self = self[4];
    v1 = vars8;
  }

  return self;
}

@end