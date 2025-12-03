@interface NSSet(_PASAdditions)
- (id)_pas_filteredSetWithTest:()_PASAdditions;
- (id)_pas_mappedSetWithTransform:()_PASAdditions;
- (id)_pas_setByRemovingObject:()_PASAdditions;
- (id)_pas_setByRemovingObjectsFromSet:()_PASAdditions;
@end

@implementation NSSet(_PASAdditions)

- (id)_pas_setByRemovingObjectsFromSet:()_PASAdditions
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 count])
  {
LABEL_20:
    v13 = [self copy];
    goto LABEL_21;
  }

  if (self == v4)
  {
    v13 = objc_opt_new();
LABEL_21:
    v14 = v13;
    goto LABEL_22;
  }

  v5 = (8 * [self count]) | 7;
  memptr = 0;
  v24 = 0;
  if (v5 > 0x400)
  {
    v17 = malloc_type_posix_memalign(&memptr, 8uLL, 8 * [self count], 0x80040B8603338uLL);
    LOBYTE(v24) = 0;
    if (v17)
    {
      v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v18);
    }

    v6 = memptr;
  }

  else
  {
    v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v6, v5);
  }

  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  self = self;
  v7 = [self countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(self);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (([v4 containsObject:v12] & 1) == 0)
        {
          *&v6[8 * v9++] = v12;
        }
      }

      v8 = [self countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (v9 == [self count])
  {
    if (v5 >= 0x401)
    {
      free(v6);
    }

    goto LABEL_20;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v6 count:v9];
  if (v5 >= 0x401)
  {
    free(v6);
  }

LABEL_22:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_pas_setByRemovingObject:()_PASAdditions
{
  v4 = a3;
  if (v4 && ([self containsObject:v4] & 1) != 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self];
    [v5 removeObject:v4];
    v6 = [v5 copy];
  }

  else
  {
    v6 = [self copy];
  }

  return v6;
}

- (id)_pas_filteredSetWithTest:()_PASAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSSet+_PASAdditions.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"test"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(self, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        if (v5[2](v5, v12))
        {
          [v6 addObject:v12];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_pas_mappedSetWithTransform:()_PASAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSSet+_PASAdditions.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"transform"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(self, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = v5[2](v5, v12);
        if (v14)
        {
          [v6 addObject:v14];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end