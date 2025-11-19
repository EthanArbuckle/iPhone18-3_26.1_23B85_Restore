@interface _UIEvaluatedObjectCache
- (_UIEvaluatedObjectCache)init;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)sortedObjects;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)topEvaluatedObject;
- (void)_createStorageIfNeeded;
- (void)addObject:(uint64_t)a1;
- (void)demoteObject:(uint64_t)a1;
- (void)evaluateTopObject;
- (void)initWithSortComparator:(const void *)a3 evaluationBlock:;
- (void)promoteObject:(uint64_t)a1;
- (void)removeObject:(uint64_t)a1;
- (void)sortAndEvaluateTopObject;
@end

@implementation _UIEvaluatedObjectCache

- (id)sortedObjects
{
  if (a1)
  {
    v2 = a1;
    [(_UIEvaluatedObjectCache *)a1 _createStorageIfNeeded];
    a1 = [v2[3] copy];
    v1 = vars8;
  }

  return a1;
}

- (void)sortAndEvaluateTopObject
{
  if (a1)
  {
    if ([*(a1 + 24) count] >= 2)
    {
      [*(a1 + 24) sortWithOptions:16 usingComparator:*(a1 + 8)];
    }

    [(_UIEvaluatedObjectCache *)a1 evaluateTopObject];
  }
}

- (void)evaluateTopObject
{
  if (a1)
  {
    if ([*(a1 + 24) count] && *(a1 + 16))
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__90;
      v10 = __Block_byref_object_dispose__90;
      v11 = 0;
      v2 = *(a1 + 24);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __44___UIEvaluatedObjectCache_evaluateTopObject__block_invoke;
      v5[3] = &unk_1E7108FF0;
      v5[4] = a1;
      v5[5] = &v6;
      [v2 enumerateObjectsWithOptions:2 usingBlock:v5];
      v3 = v7[5];
      if (!v3)
      {
        v3 = *(a1 + 32);
      }

      objc_storeStrong((a1 + 32), v3);
      _Block_object_dispose(&v6, 8);
    }

    else
    {
      v4 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }
}

- (void)_createStorageIfNeeded
{
  if (a1 && !*(a1 + 24))
  {
    v2 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:1];
    v3 = *(a1 + 24);
    *(a1 + 24) = v2;
  }
}

- (_UIEvaluatedObjectCache)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIEvaluatedObjectCache.m" lineNumber:26 description:{@"%s: init is not allowed on %@", "-[_UIEvaluatedObjectCache init]", objc_opt_class()}];

  return 0;
}

- (void)initWithSortComparator:(const void *)a3 evaluationBlock:
{
  if (!a1)
  {
    return 0;
  }

  v11.receiver = a1;
  v11.super_class = _UIEvaluatedObjectCache;
  v5 = objc_msgSendSuper2(&v11, sel_init);
  if (v5)
  {
    v6 = _Block_copy(a2);
    v7 = v5[1];
    v5[1] = v6;

    v8 = _Block_copy(a3);
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(_UIEvaluatedObjectCache *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIEvaluatedObjectCache *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIEvaluatedObjectCache *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65___UIEvaluatedObjectCache_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  v12 = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

- (void)addObject:(uint64_t)a1
{
  if (a1)
  {
    if (!a2)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel_addObject_ object:a1 file:@"_UIEvaluatedObjectCache.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"object"}];
    }

    [(_UIEvaluatedObjectCache *)a1 _createStorageIfNeeded];
    if (([*(a1 + 24) containsObject:a2] & 1) == 0)
    {
      [*(a1 + 24) addObject:a2];
    }

    [(_UIEvaluatedObjectCache *)a1 sortAndEvaluateTopObject];
  }
}

- (void)removeObject:(uint64_t)a1
{
  if (a1)
  {
    if (!a2)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel_removeObject_ object:a1 file:@"_UIEvaluatedObjectCache.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"object"}];
    }

    if ([*(a1 + 24) containsObject:a2])
    {
      [*(a1 + 24) removeObject:a2];
      v4 = *(a1 + 32);
      if (v4 == a2)
      {
        *(a1 + 32) = 0;
      }

      [(_UIEvaluatedObjectCache *)a1 evaluateTopObject];
    }
  }
}

- (void)promoteObject:(uint64_t)a1
{
  if (a1)
  {
    if (!a2)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel_promoteObject_ object:a1 file:@"_UIEvaluatedObjectCache.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"object"}];
    }

    [(_UIEvaluatedObjectCache *)a1 _createStorageIfNeeded];
    v4 = [*(a1 + 24) containsObject:a2];
    v5 = *(a1 + 24);
    if (v4)
    {
      [v5 removeObject:a2];
      v5 = *(a1 + 24);
    }

    [v5 addObject:a2];

    [(_UIEvaluatedObjectCache *)a1 sortAndEvaluateTopObject];
  }
}

- (void)demoteObject:(uint64_t)a1
{
  if (a1)
  {
    if (!a2)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel_demoteObject_ object:a1 file:@"_UIEvaluatedObjectCache.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"object"}];
    }

    [(_UIEvaluatedObjectCache *)a1 _createStorageIfNeeded];
    if ([*(a1 + 24) containsObject:a2])
    {
      [*(a1 + 24) removeObject:a2];
    }

    [*(a1 + 24) insertObject:a2 atIndex:0];

    [(_UIEvaluatedObjectCache *)a1 sortAndEvaluateTopObject];
  }
}

- (id)topEvaluatedObject
{
  if (a1)
  {
    a1 = a1[4];
    v1 = vars8;
  }

  return a1;
}

@end