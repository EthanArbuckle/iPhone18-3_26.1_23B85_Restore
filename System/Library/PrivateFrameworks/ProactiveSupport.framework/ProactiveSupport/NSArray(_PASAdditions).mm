@interface NSArray(_PASAdditions)
+ (id)_pas_arrayNoCopyLeavesWithPropertyListData:()_PASAdditions error:;
+ (id)_pas_proxyArrayWithObject:()_PASAdditions repetitions:;
+ (void)_pas_proxyArrayUsingObjectAtIndexBlock:()_PASAdditions andCountBlock:;
- (__CFString)_pas_proxyComponentsJoinedByString:()_PASAdditions;
- (id)_pas_componentsJoinedByString:()_PASAdditions;
- (id)_pas_ensureImmutable;
- (id)_pas_filteredArrayWithIndexedTest:()_PASAdditions;
- (id)_pas_filteredArrayWithTest:()_PASAdditions;
- (id)_pas_leftFoldWithInitialObject:()_PASAdditions accumulate:;
- (id)_pas_leftFoldWithInitialObject:()_PASAdditions indexedAccumulate:;
- (id)_pas_mappedArrayWithIndexedTransform:()_PASAdditions;
- (id)_pas_mappedArrayWithTransform:()_PASAdditions;
- (id)_pas_proxyArrayByAppendingArray:()_PASAdditions;
- (id)_pas_proxyArrayDistillingStrings;
- (id)_pas_proxyArrayReversed;
- (id)_pas_proxyArrayRevivingStrings;
- (id)_pas_proxyArrayWithMapping:()_PASAdditions;
- (id)_pas_proxyArrayWithObjectsAtIndexes:()_PASAdditions;
- (id)_pas_proxyArrayWithRepetitions:()_PASAdditions;
- (id)_pas_proxySubarrayWithRange:()_PASAdditions;
- (id)_pas_rightFoldWithInitialObject:()_PASAdditions accumulate:;
- (id)_pas_rightFoldWithInitialObject:()_PASAdditions indexedAccumulate:;
- (id)_pas_shuffledArrayUsingRng:()_PASAdditions;
- (id)_pas_unlazyArray;
- (void)_pas_enumerateChunksOfSize:()_PASAdditions usingBlock:;
@end

@implementation NSArray(_PASAdditions)

- (id)_pas_unlazyArray
{
  if (objc_opt_respondsToSelector())
  {
    _pas_overrideUnlazyArray = [self _pas_overrideUnlazyArray];
  }

  else
  {
    _pas_overrideUnlazyArray = [self copy];
  }

  return _pas_overrideUnlazyArray;
}

- (id)_pas_proxyArrayReversed
{
  _pas_ensureImmutable = [self _pas_ensureImmutable];
  v2 = [_pas_ensureImmutable count];
  if (v2 >= 2)
  {
    v3 = MEMORY[0x1E695DEC8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__NSArray__PASAdditions___pas_proxyArrayReversed__block_invoke;
    v7[3] = &unk_1E77F1988;
    v8 = _pas_ensureImmutable;
    v9 = v2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__NSArray__PASAdditions___pas_proxyArrayReversed__block_invoke_2;
    v6[3] = &__block_descriptor_40_e5_Q8__0l;
    v6[4] = v2;
    v4 = _pas_ensureImmutable;
    _pas_ensureImmutable = [v3 _pas_proxyArrayUsingObjectAtIndexBlock:v7 andCountBlock:v6];
  }

  return _pas_ensureImmutable;
}

- (id)_pas_proxyArrayRevivingStrings
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__NSArray__PASAdditions___pas_proxyArrayRevivingStrings__block_invoke;
  v4[3] = &unk_1E77F19D8;
  v4[4] = self;
  v4[5] = a2;
  v2 = [self _pas_proxyArrayWithMapping:v4];

  return v2;
}

- (id)_pas_proxyArrayDistillingStrings
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__NSArray__PASAdditions___pas_proxyArrayDistillingStrings__block_invoke;
  v4[3] = &unk_1E77F19B0;
  v4[4] = self;
  v4[5] = a2;
  v2 = [self _pas_proxyArrayWithMapping:v4];

  return v2;
}

- (id)_pas_proxyArrayWithRepetitions:()_PASAdditions
{
  if (a3)
  {
    if (a3 == 1)
    {
      selfCopy = self;
    }

    else
    {
      _pas_ensureImmutable = [self _pas_ensureImmutable];
      v6 = [_pas_ensureImmutable count];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x1E695DEC8];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __57__NSArray__PASAdditions___pas_proxyArrayWithRepetitions___block_invoke;
        v11[3] = &unk_1E77F1918;
        v13 = v6;
        v14 = a3;
        v12 = _pas_ensureImmutable;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __57__NSArray__PASAdditions___pas_proxyArrayWithRepetitions___block_invoke_2;
        v10[3] = &__block_descriptor_48_e5_Q8__0l;
        v10[4] = v7;
        v10[5] = a3;
        selfCopy = [v8 _pas_proxyArrayUsingObjectAtIndexBlock:v11 andCountBlock:v10];
      }

      else
      {
        selfCopy = MEMORY[0x1E695E0F0];
      }
    }
  }

  else
  {
    selfCopy = MEMORY[0x1E695E0F0];
  }

  return selfCopy;
}

- (id)_pas_proxyArrayByAppendingArray:()_PASAdditions
{
  v4 = a3;
  if (self == v4)
  {
    v12 = [self _pas_proxyArrayWithRepetitions:2];
    goto LABEL_10;
  }

  _pas_ensureImmutable = [self _pas_ensureImmutable];
  v6 = [_pas_ensureImmutable count];
  _pas_ensureImmutable2 = [v4 _pas_ensureImmutable];
  v8 = _pas_ensureImmutable2;
  if (!v6)
  {
    v13 = _pas_ensureImmutable2;
LABEL_8:
    v12 = v13;
    goto LABEL_9;
  }

  v9 = [_pas_ensureImmutable2 count];
  if (!v9)
  {
    v13 = _pas_ensureImmutable;
    goto LABEL_8;
  }

  v10 = v9;
  v11 = MEMORY[0x1E695DEC8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__NSArray__PASAdditions___pas_proxyArrayByAppendingArray___block_invoke;
  v16[3] = &unk_1E77F18D0;
  v19 = v6;
  v17 = _pas_ensureImmutable;
  v18 = v8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__NSArray__PASAdditions___pas_proxyArrayByAppendingArray___block_invoke_2;
  v15[3] = &__block_descriptor_48_e5_Q8__0l;
  v15[4] = v6;
  v15[5] = v10;
  v12 = [v11 _pas_proxyArrayUsingObjectAtIndexBlock:v16 andCountBlock:v15];

LABEL_9:
LABEL_10:

  return v12;
}

- (id)_pas_proxyArrayWithMapping:()_PASAdditions
{
  v4 = a3;
  _pas_ensureImmutable = [self _pas_ensureImmutable];
  if ([_pas_ensureImmutable count])
  {
    v6 = [v4 copy];
    v7 = MEMORY[0x1E695DEC8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__NSArray__PASAdditions___pas_proxyArrayWithMapping___block_invoke;
    v13[3] = &unk_1E77F1960;
    v15 = v6;
    v14 = _pas_ensureImmutable;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__NSArray__PASAdditions___pas_proxyArrayWithMapping___block_invoke_2;
    v11[3] = &unk_1E77F1CF8;
    v12 = v14;
    v8 = v6;
    v9 = [v7 _pas_proxyArrayUsingObjectAtIndexBlock:v13 andCountBlock:v11];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)_pas_proxyArrayWithObjectsAtIndexes:()_PASAdditions
{
  v5 = a3;
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    _pas_ensureImmutable = [self _pas_ensureImmutable];
    v9 = [_pas_ensureImmutable count];
    firstIndex = [v5 firstIndex];
    lastIndex = [v5 lastIndex];
    if (lastIndex >= v9)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"index %tu from indexSet out of range for array with count %tu", lastIndex, v9}];
    }

    if (v7 == lastIndex - firstIndex + 1)
    {
      v12 = [self _pas_proxySubarrayWithRange:{firstIndex, v7}];
    }

    else
    {
      v13 = malloc_type_calloc(v7, 8uLL, 0x100004000313F17uLL);
      if (!v13)
      {
        v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v21);
      }

      v14 = v13;
      v15 = [v5 getIndexes:v13 maxCount:v7 inIndexRange:0];
      v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v14 length:8 * v7 freeWhenDone:1];
      if (v15 != v7)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+_PASAdditions.m" lineNumber:328 description:{@"Invalid parameter not satisfying: %@", @"indexesGotten == indexSetCount"}];
      }

      v17 = MEMORY[0x1E695DEC8];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __62__NSArray__PASAdditions___pas_proxyArrayWithObjectsAtIndexes___block_invoke;
      v23[3] = &unk_1E77F18D0;
      v26 = v7;
      v24 = v16;
      v25 = _pas_ensureImmutable;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __62__NSArray__PASAdditions___pas_proxyArrayWithObjectsAtIndexes___block_invoke_2;
      v22[3] = &__block_descriptor_40_e5_Q8__0l;
      v22[4] = v7;
      v18 = v16;
      v12 = [v17 _pas_proxyArrayUsingObjectAtIndexBlock:v23 andCountBlock:v22];
    }
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)_pas_proxySubarrayWithRange:()_PASAdditions
{
  _pas_ensureImmutable = [self _pas_ensureImmutable];
  v9 = [_pas_ensureImmutable count];
  v24.location = 0;
  v24.length = v9;
  v27.location = a3;
  v27.length = a4;
  v10 = NSIntersectionRange(v24, v27);
  if (a3 != v10.location || a4 != v10.length)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25.location = a3;
    v25.length = a4;
    v15 = NSStringFromRange(v25);
    v26.location = 0;
    v26.length = v9;
    v16 = NSStringFromRange(v26);
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+_PASAdditions.m" lineNumber:272 description:{@"Range %@ out of array bounds %@", v15, v16}];

    if (!a4)
    {
      goto LABEL_12;
    }

LABEL_7:
    if (a3 || v9 != a4)
    {
      v13 = MEMORY[0x1E695DEC8];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __54__NSArray__PASAdditions___pas_proxySubarrayWithRange___block_invoke;
      v19[3] = &unk_1E77F1918;
      v21 = a3;
      v22 = a4;
      v20 = _pas_ensureImmutable;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __54__NSArray__PASAdditions___pas_proxySubarrayWithRange___block_invoke_2;
      v18[3] = &__block_descriptor_48_e5_Q8__0l;
      v18[4] = a3;
      v18[5] = a4;
      v12 = [v13 _pas_proxyArrayUsingObjectAtIndexBlock:v19 andCountBlock:v18];
    }

    else
    {
      v12 = _pas_ensureImmutable;
    }

    goto LABEL_13;
  }

  if (a4)
  {
    goto LABEL_7;
  }

LABEL_12:
  v12 = MEMORY[0x1E695E0F0];
LABEL_13:

  return v12;
}

- (id)_pas_ensureImmutable
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = [self copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (__CFString)_pas_proxyComponentsJoinedByString:()_PASAdditions
{
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    v6 = v5;
    v7 = [self copy];
    v8 = [v4 copy];
    v9 = 2 * v6 - 1;
    v10 = MEMORY[0x1E695DEC8];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __61__NSArray__PASAdditions___pas_proxyComponentsJoinedByString___block_invoke;
    v24 = &unk_1E77F18D0;
    v26 = v8;
    v27 = v9;
    v25 = v7;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __61__NSArray__PASAdditions___pas_proxyComponentsJoinedByString___block_invoke_2;
    v19 = &__block_descriptor_40_e5_Q8__0l;
    v20 = v9;
    v11 = v8;
    v12 = v7;
    v13 = [v10 _pas_proxyArrayUsingObjectAtIndexBlock:&v21 andCountBlock:&v16];
    v14 = [MEMORY[0x1E696AEC0] _pas_proxyStringByConcatenatingStrings:{v13, v16, v17, v18, v19, v20, v21, v22, v23, v24}];
  }

  else
  {
    v14 = &stru_1F1B24B60;
  }

  return v14;
}

- (id)_pas_componentsJoinedByString:()_PASAdditions
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "_pas_componentsJoinedByString called with a nil separator. Will use @ instead.", v7, 2u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }

    v4 = &stru_1F1B24B60;
  }

  v5 = _PASJoinStrings(self, v4);

  return v5;
}

- (void)_pas_enumerateChunksOfSize:()_PASAdditions usingBlock:
{
  v7 = a4;
  v8 = v7;
  if (a3)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+_PASAdditions.m" lineNumber:177 description:@"Chunk size must be nonzero"];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSArray+_PASAdditions.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_3:
  if ([self count])
  {
    if ([self count] <= a3)
    {
      v17 = 0;
      (v8)[2](v8, self, &v17);
    }

    else
    {
      v9 = [self count];
      v16 = 0;
      if ([self count])
      {
        v10 = 0;
        do
        {
          v11 = objc_autoreleasePoolPush();
          v18.location = v10;
          v18.length = a3;
          v19.location = 0;
          v19.length = v9;
          v12 = NSIntersectionRange(v18, v19);
          v13 = [self subarrayWithRange:{v12.location, v12.length}];
          (v8)[2](v8, v13, &v16);

          LODWORD(v13) = v16;
          objc_autoreleasePoolPop(v11);
          if (v13 == 1)
          {
            break;
          }

          v10 += a3;
        }

        while (v10 < [self count]);
      }
    }
  }
}

- (id)_pas_shuffledArrayUsingRng:()_PASAdditions
{
  v5 = a3;
  if ([self count] > 1)
  {
    if (v5)
    {
      v7 = v13;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __53__NSArray__PASAdditions___pas_shuffledArrayUsingRng___block_invoke;
      v13[3] = &unk_1E77F1888;
      v3 = &v14;
      v14 = v5;
    }

    else
    {
      v7 = &__block_literal_global_397;
    }

    v8 = MEMORY[0x1AC566DD0](v7);
    v9 = [self mutableCopy];
    v10 = [v9 count];
    v11 = v10 - 1;
    if (v10 != 1)
    {
      do
      {
        [v9 exchangeObjectAtIndex:v11 withObjectAtIndex:{v8[2](v8, v11 + 1)}];
        --v11;
      }

      while (v11);
    }

    v6 = [v9 copy];

    if (v5)
    {
    }
  }

  else
  {
    v6 = [self copy];
  }

  return v6;
}

- (id)_pas_rightFoldWithInitialObject:()_PASAdditions accumulate:
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+_PASAdditions.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"accumulate"}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__NSArray__PASAdditions___pas_rightFoldWithInitialObject_accumulate___block_invoke;
  v13[3] = &unk_1E77F1860;
  v14 = v8;
  v9 = v8;
  v10 = [self _pas_rightFoldWithInitialObject:v7 indexedAccumulate:v13];

  return v10;
}

- (id)_pas_rightFoldWithInitialObject:()_PASAdditions indexedAccumulate:
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+_PASAdditions.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"accumulate"}];
  }

  v9 = v7;
  v10 = [self count];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  reverseObjectEnumerator = [self reverseObjectEnumerator];
  v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
  v13 = v9;
  if (v12)
  {
    v14 = v12;
    v15 = *v22;
    v13 = v9;
    do
    {
      v16 = 0;
      v17 = v13;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = v8[2](v8, v17, *(*(&v21 + 1) + 8 * v16), --v10);

        ++v16;
        v17 = v13;
      }

      while (v14 != v16);
      v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_pas_leftFoldWithInitialObject:()_PASAdditions accumulate:
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+_PASAdditions.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"accumulate"}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__NSArray__PASAdditions___pas_leftFoldWithInitialObject_accumulate___block_invoke;
  v13[3] = &unk_1E77F1860;
  v14 = v8;
  v9 = v8;
  v10 = [self _pas_leftFoldWithInitialObject:v7 indexedAccumulate:v13];

  return v10;
}

- (id)_pas_leftFoldWithInitialObject:()_PASAdditions indexedAccumulate:
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+_PASAdditions.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"accumulate"}];
  }

  v9 = v7;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  v11 = [selfCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  v22 = v9;
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v24;
    do
    {
      v15 = 0;
      v16 = v9;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(selfCopy);
        }

        v17 = *(*(&v23 + 1) + 8 * v15);
        v18 = objc_autoreleasePoolPush();
        v9 = v8[2](v8, v16, v17, v13);

        ++v13;
        objc_autoreleasePoolPop(v18);
        ++v15;
        v16 = v9;
      }

      while (v12 != v15);
      v12 = [selfCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_pas_filteredArrayWithTest:()_PASAdditions
{
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+_PASAdditions.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"test"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__NSArray__PASAdditions___pas_filteredArrayWithTest___block_invoke;
  v10[3] = &unk_1E77F1838;
  v11 = v5;
  v6 = v5;
  v7 = [self _pas_filteredArrayWithIndexedTest:v10];

  return v7;
}

- (id)_pas_filteredArrayWithIndexedTest:()_PASAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+_PASAdditions.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"test"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(selfCopy);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        if (v5[2](v5, v13, v10))
        {
          [v6 addObject:v13];
        }

        ++v10;
        objc_autoreleasePoolPop(v14);
      }

      v9 = [selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_pas_mappedArrayWithTransform:()_PASAdditions
{
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+_PASAdditions.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"transform"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__NSArray__PASAdditions___pas_mappedArrayWithTransform___block_invoke;
  v10[3] = &unk_1E77F1810;
  v11 = v5;
  v6 = v5;
  v7 = [self _pas_mappedArrayWithIndexedTransform:v10];

  return v7;
}

- (id)_pas_mappedArrayWithIndexedTransform:()_PASAdditions
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+_PASAdditions.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"transform"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(selfCopy);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = v5[2](v5, v13, v10);
        if (v15)
        {
          [v6 addObject:v15];
        }

        ++v10;

        objc_autoreleasePoolPop(v14);
      }

      v9 = [selfCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = [v6 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)_pas_arrayNoCopyLeavesWithPropertyListData:()_PASAdditions error:
{
  v5 = a3;
  v6 = [_PASLazyPlistWithBPlistSupport arrayWithData:v5 error:a4];
  _pas_unlazyArray = [v6 _pas_unlazyArray];

  if (_pas_unlazyArray)
  {
    v8 = _pas_unlazyArray;
  }

  else
  {
    v9 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:a4];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = 0;
    if (isKindOfClass)
    {
      v11 = v9;
      if (a4)
      {
        *a4 = 0;
      }
    }

    v8 = v11;
  }

  return v8;
}

+ (id)_pas_proxyArrayWithObject:()_PASAdditions repetitions:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    if (a4 == 1)
    {
      v15[0] = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    }

    else
    {
      v8 = MEMORY[0x1E695DEC8];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__NSArray__PASAdditions___pas_proxyArrayWithObject_repetitions___block_invoke;
      v12[3] = &unk_1E77F1988;
      v14 = a4;
      v13 = v5;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __64__NSArray__PASAdditions___pas_proxyArrayWithObject_repetitions___block_invoke_2;
      v11[3] = &__block_descriptor_40_e5_Q8__0l;
      v11[4] = a4;
      v7 = [v8 _pas_proxyArrayUsingObjectAtIndexBlock:v12 andCountBlock:v11];
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)_pas_proxyArrayUsingObjectAtIndexBlock:()_PASAdditions andCountBlock:
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 copy];

  v9 = v7[1];
  v7[1] = v8;

  v10 = [v5 copy];
  v11 = v7[2];
  v7[2] = v10;

  return v7;
}

@end