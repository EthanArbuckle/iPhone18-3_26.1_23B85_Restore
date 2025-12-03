@interface NSArray(SafariCoreExtras)
+ (id)safari_arrayFromDictionaryOfObjectsByIndex:()SafariCoreExtras;
+ (id)safari_arrayWithArray:()SafariCoreExtras copyAction:;
+ (id)safari_arrayWithObjectsUnlessNil:()SafariCoreExtras;
+ (id)safari_arrayWithPropertyListData:()SafariCoreExtras options:;
- (WBSPair)safari_splitArrayUsingCondition:()SafariCoreExtras;
- (__CFString)_safari_generateDiffWithLongestCommonSubsequenceLengths:()SafariCoreExtras array:indexIntoSelf:indexIntoArray:;
- (id)_safari_computeLengthsOfLongestSubsequencesCommonWithArray:()SafariCoreExtras;
- (id)_safari_generatePermutations:()SafariCoreExtras withPosition:permutationsArray:;
- (id)safari_allPermutations;
- (id)safari_arrayByAddingObjectsFromArrayIfNotDuplicates:()SafariCoreExtras;
- (id)safari_arrayByRemovingObject:()SafariCoreExtras;
- (id)safari_dictionaryByMappingObjectsAsKeysToObjectsUsingBlock:()SafariCoreExtras;
- (id)safari_dictionaryByMappingObjectsToKeysUsingBlock:()SafariCoreExtras;
- (id)safari_dictionaryOfArraysByMappingObjectsToKeysUsingBlock:()SafariCoreExtras;
- (id)safari_diffWithArray:()SafariCoreExtras;
- (id)safari_filterObjectsUsingBlock:()SafariCoreExtras;
- (id)safari_firstObjectPassingTest:()SafariCoreExtras;
- (id)safari_flattenedArray;
- (id)safari_lastObjectPassingTest:()SafariCoreExtras;
- (id)safari_longestIncreasingSubsequenceUsingValues:()SafariCoreExtras;
- (id)safari_mapAndFilterObjectsUsingBlock:()SafariCoreExtras;
- (id)safari_mapAndFilterObjectsWithOptions:()SafariCoreExtras usingBlock:;
- (id)safari_maximumUsingComparator:()SafariCoreExtras;
- (id)safari_minimumUsingComparator:()SafariCoreExtras;
- (id)safari_objectAfter:()SafariCoreExtras;
- (id)safari_objectFromJavaScriptArrayAtIndex:()SafariCoreExtras;
- (id)safari_objectsOfClass:()SafariCoreExtras;
- (id)safari_orderedSetByApplyingBlock:()SafariCoreExtras;
- (id)safari_partionedArrayUsingCondition:()SafariCoreExtras;
- (id)safari_reduceObjectsWithInitialValue:()SafariCoreExtras usingBlock:;
- (id)safari_setByApplyingBlock:()SafariCoreExtras;
- (uint64_t)safari_allObjectsPassTest:()SafariCoreExtras;
- (uint64_t)safari_containsObjectPassingTest:()SafariCoreExtras;
- (uint64_t)safari_noObjectsPassTest:()SafariCoreExtras;
- (uint64_t)safari_prefixWithMaxLength:()SafariCoreExtras;
- (void)safari_URLAtIndex:()SafariCoreExtras;
- (void)safari_arrayAtIndex:()SafariCoreExtras;
- (void)safari_dictionaryAtIndex:()SafariCoreExtras;
- (void)safari_enumerateAsynchronouslyOnQueue:()SafariCoreExtras enumerationBlock:completionBlock:;
- (void)safari_enumerateOutwardFromIndex:()SafariCoreExtras otherIndex:usingBlock:;
- (void)safari_enumerateOutwardFromIndex:()SafariCoreExtras usingBlock:;
- (void)safari_enumerateZippedValuesWithArray:()SafariCoreExtras options:withBlock:;
- (void)safari_numberAtIndex:()SafariCoreExtras;
- (void)safari_objectBefore:()SafariCoreExtras;
- (void)safari_stringAtIndex:()SafariCoreExtras;
@end

@implementation NSArray(SafariCoreExtras)

+ (id)safari_arrayWithArray:()SafariCoreExtras copyAction:
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!a4)
  {
    v9 = [self arrayWithArray:v7];
LABEL_14:
    v4 = v9;
    goto LABEL_15;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      goto LABEL_15;
    }

    v9 = [[self alloc] initWithArray:v7 copyItems:1];
    goto LABEL_14;
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) mutableCopyWithZone:{0, v19}];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v4 = [self arrayWithArray:v10];

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)safari_arrayFromDictionaryOfObjectsByIndex:()SafariCoreExtras
{
  v3 = a3;
  allKeys = [v3 allKeys];
  v5 = [allKeys sortedArrayUsingSelector:sel_compare_];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__NSArray_SafariCoreExtras__safari_arrayFromDictionaryOfObjectsByIndex___block_invoke;
  v9[3] = &unk_1E7CF2478;
  v10 = v3;
  v6 = v3;
  v7 = [v5 safari_mapObjectsUsingBlock:v9];

  return v7;
}

- (id)safari_objectFromJavaScriptArrayAtIndex:()SafariCoreExtras
{
  v1 = [self objectAtIndex:?];
  if (v1)
  {
    null = [MEMORY[0x1E695DFB0] null];
    if ([v1 isEqual:null])
    {
      v3 = 0;
    }

    else
    {
      v3 = v1;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)safari_numberAtIndex:()SafariCoreExtras
{
  v1 = [self objectAtIndex:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_stringAtIndex:()SafariCoreExtras
{
  v1 = [self objectAtIndex:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_URLAtIndex:()SafariCoreExtras
{
  v1 = [self objectAtIndex:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_dictionaryAtIndex:()SafariCoreExtras
{
  v1 = [self objectAtIndex:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_arrayAtIndex:()SafariCoreExtras
{
  v1 = [self objectAtIndex:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)safari_mapAndFilterObjectsUsingBlock:()SafariCoreExtras
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__NSArray_SafariCoreExtras__safari_mapAndFilterObjectsUsingBlock___block_invoke;
  v8[3] = &unk_1E7CF24A0;
  v9 = v4;
  v5 = v4;
  v6 = [self safari_mapAndFilterObjectsWithOptions:0 usingBlock:v8];

  return v6;
}

- (id)safari_mapAndFilterObjectsWithOptions:()SafariCoreExtras usingBlock:
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [self count];
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = [self objectAtIndexedSubscript:0];
      v19 = 0;
      v9 = v6[2](v6, v8, 0, &v19);

      if (v9)
      {
        v20[0] = v9;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      }

      else
      {
        v10 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78__NSArray_SafariCoreExtras__safari_mapAndFilterObjectsWithOptions_usingBlock___block_invoke;
      v16[3] = &unk_1E7CF24C8;
      v18 = v6;
      v12 = v11;
      v17 = v12;
      [self enumerateObjectsWithOptions:a3 usingBlock:v16];
      v13 = v17;
      v9 = v12;

      v10 = v9;
    }
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)safari_enumerateZippedValuesWithArray:()SafariCoreExtras options:withBlock:
{
  v8 = a3;
  v9 = a5;
  v10 = [self count];
  v11 = [v8 count];
  if (v10 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v12}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__NSArray_SafariCoreExtras__safari_enumerateZippedValuesWithArray_options_withBlock___block_invoke;
  v16[3] = &unk_1E7CF24C8;
  v17 = v8;
  v18 = v9;
  v14 = v8;
  v15 = v9;
  [self enumerateObjectsAtIndexes:v13 options:a4 usingBlock:v16];
}

- (void)safari_enumerateOutwardFromIndex:()SafariCoreExtras usingBlock:
{
  v6 = a4;
  v7 = [self count];
  if (v7)
  {
    v8 = v7;
    v13 = 0;
    v9 = [self objectAtIndexedSubscript:a3];
    v6[2](v6, v9, a3, &v13);

    if (v8 != 1 && (v13 & 1) == 0)
    {
      for (i = 1; i != v8; ++i)
      {
        if (a3 >= i)
        {
          v11 = [self objectAtIndexedSubscript:a3 - i];
          v6[2](v6, v11, a3 - i, &v13);

          if (v13)
          {
            break;
          }
        }

        if (i + a3 < v8)
        {
          v12 = [self objectAtIndexedSubscript:i + a3];
          v6[2](v6, v12, i + a3, &v13);

          if (v13)
          {
            break;
          }
        }
      }
    }
  }
}

- (void)safari_enumerateOutwardFromIndex:()SafariCoreExtras otherIndex:usingBlock:
{
  v8 = a5;
  if (a3 == a4)
  {
    [self safari_enumerateOutwardFromIndex:a3 usingBlock:v8];
    goto LABEL_5;
  }

  v26 = [self count];
  if (v26)
  {
    v27 = 0;
    v9 = [self objectAtIndexedSubscript:a3];
    v8[2](v8, v9, a3, &v27);

    if ((v27 & 1) == 0)
    {
      v10 = [self objectAtIndexedSubscript:a4];
      v8[2](v8, v10, a4, &v27);

      v11 = v26 - 1;
      if (v26 != 1 && (v27 & 1) == 0)
      {
        v12 = 0;
        v13 = 0;
        v14 = a4 + 1;
        v15 = a4 - 1;
        v16 = a3 + 1;
        v17 = a3 - 1;
        do
        {
          if (a3 >= a4)
          {
            if (v17 >= v14)
            {
              v19 = [self objectAtIndexedSubscript:v17];
              v8[2](v8, v19, v17, &v27);

              v12 = v27;
              if (v27)
              {
                break;
              }
            }

            else if (v13)
            {
              break;
            }

            if ((v15 & 0x8000000000000000) == 0)
            {
              v20 = [self objectAtIndexedSubscript:v15];
              v8[2](v8, v20, v15, &v27);

              v12 = v27;
              if (v27)
              {
                break;
              }
            }

            if (v16 < v26)
            {
              v21 = [self objectAtIndexedSubscript:v16];
              v8[2](v8, v21, v16, &v27);

              v12 = v27;
              if (v27)
              {
                break;
              }
            }

            if (v14 < v17)
            {
              v22 = [self objectAtIndexedSubscript:v14];
              v8[2](v8, v22, v14, &v27);

              v12 = v27;
              v13 = v27;
              if (v27)
              {
                break;
              }

              goto LABEL_34;
            }
          }

          else
          {
            if (v17 < 0)
            {
              if (v13)
              {
                break;
              }
            }

            else
            {
              v18 = [self objectAtIndexedSubscript:v17];
              v8[2](v8, v18, v17, &v27);

              v12 = v27;
              if (v27)
              {
                break;
              }
            }

            if (v15 > v16)
            {
              v23 = [self objectAtIndexedSubscript:v15];
              v8[2](v8, v23, v15, &v27);

              v12 = v27;
              if (v27)
              {
                break;
              }
            }

            if (v16 <= v15)
            {
              v24 = [self objectAtIndexedSubscript:v16];
              v8[2](v8, v24, v16, &v27);

              v12 = v27;
              if (v27)
              {
                break;
              }
            }

            if (v14 < v26)
            {
              v25 = [self objectAtIndexedSubscript:v14];
              v8[2](v8, v25, v14, &v27);

              v12 = v27;
            }

            if (v12)
            {
              break;
            }

            v12 = 0;
          }

          v13 = 0;
LABEL_34:
          ++v14;
          --v15;
          ++v16;
          --v17;
          --v11;
        }

        while (v11);
      }
    }
  }

LABEL_5:
}

- (void)safari_enumerateAsynchronouslyOnQueue:()SafariCoreExtras enumerationBlock:completionBlock:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [self copy];
  enumerateAsynchronously(v10, v11, 0, v9, v8);
}

- (id)safari_setByApplyingBlock:()SafariCoreExtras
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  if (v5 == 1)
  {
    v7 = [self objectAtIndexedSubscript:0];
    selfCopy = v4[2](v4, v7);

    if (selfCopy)
    {
      [MEMORY[0x1E695DFD8] setWithObject:selfCopy];
    }

    else
    {
      [MEMORY[0x1E695DFD8] set];
    }
    v6 = ;
  }

  else
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E695DFD8] set];
      goto LABEL_19;
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    selfCopy = self;
    v9 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(selfCopy);
          }

          v13 = v4[2](v4, *(*(&v16 + 1) + 8 * i));
          if (v13)
          {
            [v6 addObject:{v13, v16}];
          }
        }

        v10 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)safari_orderedSetByApplyingBlock:()SafariCoreExtras
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(self, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__NSArray_SafariCoreExtras__safari_orderedSetByApplyingBlock___block_invoke;
  v11[3] = &unk_1E7CF24C8;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [self enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)safari_filterObjectsUsingBlock:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self count];
  if (!v5)
  {
LABEL_5:
    v8 = MEMORY[0x1E695E0F0];
    goto LABEL_7;
  }

  if (v5 == 1)
  {
    v6 = [self objectAtIndexedSubscript:0];
    v7 = v4[2](v4, v6);

    if (v7)
    {
      v8 = [self copy];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__NSArray_SafariCoreExtras__safari_filterObjectsUsingBlock___block_invoke;
  v11[3] = &unk_1E7CF24F0;
  v12 = v4;
  v9 = [self indexesOfObjectsPassingTest:v11];
  v8 = [self objectsAtIndexes:v9];

LABEL_7:

  return v8;
}

- (id)safari_reduceObjectsWithInitialValue:()SafariCoreExtras usingBlock:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [self count];
  v9 = v6;
  v10 = v9;
  if (v8)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    selfCopy = self;
    v12 = [selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    v10 = v9;
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      v10 = v9;
      do
      {
        v15 = 0;
        v16 = v10;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(selfCopy);
          }

          v10 = v7[2](v7, *(*(&v19 + 1) + 8 * v15), v16);

          ++v15;
          v16 = v10;
        }

        while (v13 != v15);
        v13 = [selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)safari_maximumUsingComparator:()SafariCoreExtras
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__NSArray_SafariCoreExtras__safari_maximumUsingComparator___block_invoke;
  v8[3] = &unk_1E7CF2518;
  v9 = v4;
  v5 = v4;
  v6 = [self safari_reduceObjectsUsingBlock:v8];

  return v6;
}

- (id)safari_minimumUsingComparator:()SafariCoreExtras
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__NSArray_SafariCoreExtras__safari_minimumUsingComparator___block_invoke;
  v8[3] = &unk_1E7CF2540;
  v9 = v4;
  v5 = v4;
  v6 = [self safari_maximumUsingComparator:v8];

  return v6;
}

- (id)safari_diffWithArray:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self _safari_computeLengthsOfLongestSubsequencesCommonWithArray:v4];
  v6 = [self _safari_generateDiffWithLongestCommonSubsequenceLengths:v5 array:v4 indexIntoSelf:objc_msgSend(self indexIntoArray:{"count"), objc_msgSend(v4, "count")}];

  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:newlineCharacterSet];

  return v8;
}

- (id)_safari_computeLengthsOfLongestSubsequencesCommonWithArray:()SafariCoreExtras
{
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  [self count];
  v6 = 0;
  do
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithObject:&unk_1F308E210];
    [array setObject:v7 atIndexedSubscript:v6];

    ++v6;
  }

  while (v6 <= [self count]);
  selfCopy = self;
  [v4 count];
  v8 = 0;
  do
  {
    v9 = [array objectAtIndexedSubscript:0];
    [v9 setObject:&unk_1F308E210 atIndexedSubscript:v8];

    ++v8;
  }

  while (v8 <= [v4 count]);
  selfCopy2 = self;
  if ([self count])
  {
    v11 = 1;
    do
    {
      if ([v4 count])
      {
        v12 = 1;
        do
        {
          v13 = [selfCopy2 objectAtIndexedSubscript:v11 - 1];
          v14 = [v4 objectAtIndexedSubscript:v12 - 1];
          v15 = [v13 isEqual:v14];

          v16 = MEMORY[0x1E696AD98];
          if (v15)
          {
            v17 = [array objectAtIndexedSubscript:v11 - 1];
            v18 = [v17 objectAtIndexedSubscript:v12 - 1];
            v19 = [v16 numberWithUnsignedInteger:{objc_msgSend(v18, "unsignedIntegerValue") + 1}];
            v20 = [array objectAtIndexedSubscript:v11];
            [v20 setObject:v19 atIndexedSubscript:v12];
          }

          else
          {
            v21 = [array objectAtIndexedSubscript:v11];
            v22 = [v21 objectAtIndexedSubscript:v12 - 1];
            unsignedIntegerValue = [v22 unsignedIntegerValue];

            v24 = [array objectAtIndexedSubscript:v11 - 1];
            v25 = [v24 objectAtIndexedSubscript:v12];
            unsignedIntegerValue2 = [v25 unsignedIntegerValue];

            if (unsignedIntegerValue <= unsignedIntegerValue2)
            {
              v27 = unsignedIntegerValue2;
            }

            else
            {
              v27 = unsignedIntegerValue;
            }

            selfCopy2 = selfCopy;
            v17 = [v16 numberWithUnsignedInteger:v27];
            v18 = [array objectAtIndexedSubscript:v11];
            [v18 setObject:v17 atIndexedSubscript:v12];
          }

          ++v12;
        }

        while (v12 <= [v4 count]);
      }

      ++v11;
    }

    while (v11 <= [selfCopy2 count]);
  }

  return array;
}

- (__CFString)_safari_generateDiffWithLongestCommonSubsequenceLengths:()SafariCoreExtras array:indexIntoSelf:indexIntoArray:
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (a5 && a6)
  {
    v13 = a5 - 1;
    v14 = [self objectAtIndexedSubscript:a5 - 1];
    v15 = a6 - 1;
    v16 = [v12 objectAtIndexedSubscript:a6 - 1];
    v17 = [v14 isEqual:v16];

    if (v17)
    {
      v18 = [self _safari_generateDiffWithLongestCommonSubsequenceLengths:v10 array:v12 indexIntoSelf:a5 - 1 indexIntoArray:a6 - 1];
      v19 = [self objectAtIndexedSubscript:a5 - 1];
      [v18 stringByAppendingFormat:@"  %@\n", v19];
      v35 = LABEL_18:;

      goto LABEL_19;
    }

    selfCopy2 = self;
    v39 = v12;
    goto LABEL_9;
  }

  if (a6)
  {
    v15 = a6 - 1;
    if (!a5)
    {
      goto LABEL_14;
    }

    selfCopy2 = self;
    v39 = v11;
    v13 = a5 - 1;
LABEL_9:
    v37 = v13;
    v20 = [v10 objectAtIndexedSubscript:a5];
    v21 = [v20 objectAtIndexedSubscript:v15];
    unsignedIntegerValue = [v21 unsignedIntegerValue];
    v23 = [v10 objectAtIndexedSubscript:v13];
    v24 = [v23 objectAtIndexedSubscript:a6];
    v25 = v10;
    unsignedIntegerValue2 = [v24 unsignedIntegerValue];

    if (unsignedIntegerValue < unsignedIntegerValue2)
    {
      v27 = [v25 objectAtIndexedSubscript:a5];
      v28 = [v27 objectAtIndexedSubscript:v15];
      unsignedIntegerValue3 = [v28 unsignedIntegerValue];
      v30 = v37;
      v31 = [v25 objectAtIndexedSubscript:v37];
      v32 = [v31 objectAtIndexedSubscript:a6];
      unsignedIntegerValue4 = [v32 unsignedIntegerValue];

      v34 = unsignedIntegerValue3 >= unsignedIntegerValue4;
      v10 = v25;
      self = selfCopy2;
      v12 = v39;
      if (!v34)
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    v10 = v25;
    self = selfCopy2;
    v12 = v39;
LABEL_14:
    v18 = [self _safari_generateDiffWithLongestCommonSubsequenceLengths:v10 array:v12 indexIntoSelf:a5 indexIntoArray:v15];
    v19 = [v12 objectAtIndexedSubscript:v15];
    [v18 stringByAppendingFormat:@"+ %@\n", v19];
    goto LABEL_18;
  }

  if (a5)
  {
    v30 = a5 - 1;
LABEL_17:
    v18 = [self _safari_generateDiffWithLongestCommonSubsequenceLengths:v10 array:v12 indexIntoSelf:v30 indexIntoArray:a6];
    v19 = [self objectAtIndexedSubscript:v30];
    [v18 stringByAppendingFormat:@"- %@\n", v19];
    goto LABEL_18;
  }

LABEL_22:
  v35 = &stru_1F3064D08;
LABEL_19:

  return v35;
}

- (id)safari_firstObjectPassingTest:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [self objectAtIndexedSubscript:0];
      if (v4[2](v4, v6))
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __59__NSArray_SafariCoreExtras__safari_firstObjectPassingTest___block_invoke;
      v11[3] = &unk_1E7CF24F0;
      v12 = v4;
      v9 = [self indexOfObjectPassingTest:v11];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        v8 = [self objectAtIndexedSubscript:v9];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)safari_lastObjectPassingTest:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [self objectAtIndexedSubscript:0];
      if (v4[2](v4, v6))
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __58__NSArray_SafariCoreExtras__safari_lastObjectPassingTest___block_invoke;
      v11[3] = &unk_1E7CF24F0;
      v12 = v4;
      v9 = [self indexOfObjectWithOptions:2 passingTest:v11];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        v8 = [self objectAtIndexedSubscript:v9];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)safari_containsObjectPassingTest:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [self objectAtIndexedSubscript:0];
      v7 = v4[2](v4, v6);
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __62__NSArray_SafariCoreExtras__safari_containsObjectPassingTest___block_invoke;
      v9[3] = &unk_1E7CF24F0;
      v10 = v4;
      v7 = [self indexOfObjectPassingTest:v9] != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)safari_allObjectsPassTest:()SafariCoreExtras
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (!v4[2](v4, *(*(&v13 + 1) + 8 * v9)))
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (uint64_t)safari_noObjectsPassTest:()SafariCoreExtras
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (v4[2](v4, *(*(&v13 + 1) + 8 * v9)))
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)safari_arrayByAddingObjectsFromArrayIfNotDuplicates:()SafariCoreExtras
{
  v4 = MEMORY[0x1E695DFA0];
  v5 = a3;
  v6 = [v4 orderedSetWithArray:self];
  [v6 addObjectsFromArray:v5];

  array = [v6 array];

  return array;
}

- (id)safari_arrayByRemovingObject:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeObject:v4];

  v6 = [v5 copy];

  return v6;
}

+ (id)safari_arrayWithPropertyListData:()SafariCoreExtras options:
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:a4 format:0 error:0];
    objc_opt_class();
    v5 = 0;
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)safari_flattenedArray
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__NSArray_SafariCoreExtras__safari_flattenedArray__block_invoke;
  v7[3] = &unk_1E7CF2568;
  v7[4] = self;
  v7[5] = &v8;
  [self enumerateObjectsUsingBlock:v7];
  v2 = [v9[5] copy];
  v3 = v2;
  if (v2)
  {
    selfCopy = v2;
  }

  else
  {
    selfCopy = self;
  }

  v5 = selfCopy;

  _Block_object_dispose(&v8, 8);

  return v5;
}

- (uint64_t)safari_prefixWithMaxLength:()SafariCoreExtras
{
  v5 = [self count];
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  return [self subarrayWithRange:{0, v6}];
}

- (void)safari_objectBefore:()SafariCoreExtras
{
  v2 = [self indexOfObject:?];
  v3 = v2;
  v4 = 0;
  if (v2 && v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [self objectAtIndexedSubscript:v2 - 1];
  }

  v5 = v4;
  if (v3 && v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  return v4;
}

- (id)safari_objectAfter:()SafariCoreExtras
{
  v2 = [self indexOfObject:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL || (v3 = v2, v2 >= [self count] - 1))
  {
    v4 = 0;
  }

  else
  {
    v4 = [self objectAtIndexedSubscript:v3 + 1];
  }

  return v4;
}

- (WBSPair)safari_splitArrayUsingCondition:()SafariCoreExtras
{
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__NSArray_SafariCoreExtras__safari_splitArrayUsingCondition___block_invoke;
  v12[3] = &unk_1E7CF2590;
  v14 = array2;
  v15 = v4;
  v13 = array;
  v7 = array2;
  v8 = array;
  v9 = v4;
  [self enumerateObjectsUsingBlock:v12];
  v10 = [[WBSPair alloc] initWithFirst:v8 second:v7];

  return v10;
}

- (id)safari_partionedArrayUsingCondition:()SafariCoreExtras
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (v4[2](v4, v12))
        {
          v13 = array2;
        }

        else
        {
          v13 = array;
        }

        [v13 addObject:{v12, v17}];
      }

      v9 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [array addObjectsFromArray:array2];
  v14 = [array copy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)safari_longestIncreasingSubsequenceUsingValues:()SafariCoreExtras
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self safari_mapAndFilterObjectsUsingBlock:v4];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    v40 = v4;
    array = [MEMORY[0x1E695DF70] array];
    v9 = MEMORY[0x1E695E0F0];
    do
    {
      [array addObject:v9];
      --v7;
    }

    while (v7);
    v10 = MEMORY[0x1E695DEC8];
    v11 = [v5 objectAtIndexedSubscript:0];
    v12 = [v10 arrayWithObject:v11];
    [array setObject:v12 atIndexedSubscript:0];

    if ([v5 count] >= 2)
    {
      for (i = 1; i < [v5 count]; ++i)
      {
        v14 = 0;
        do
        {
          v15 = [v5 objectAtIndexedSubscript:v14];
          integerValue = [v15 integerValue];
          v17 = [v5 objectAtIndexedSubscript:i];
          if (integerValue >= [v17 integerValue])
          {
          }

          else
          {
            v18 = [array objectAtIndexedSubscript:v14];
            v19 = [v18 count] + 1;
            v20 = [array objectAtIndexedSubscript:i];
            v21 = [v20 count];

            if (v19 <= v21)
            {
              goto LABEL_12;
            }

            v15 = [array objectAtIndexedSubscript:v14];
            [array setObject:v15 atIndexedSubscript:i];
          }

LABEL_12:
          ++v14;
        }

        while (i != v14);
        v22 = [array objectAtIndexedSubscript:i];
        v23 = [v5 objectAtIndexedSubscript:i];
        v24 = [v22 arrayByAddingObject:v23];
        [array setObject:v24 atIndexedSubscript:i];
      }
    }

    v25 = [array objectAtIndexedSubscript:0];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v26 = array;
    v27 = [v26 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v45;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v44 + 1) + 8 * j);
          v32 = [v31 count];
          if (v32 > [v25 count])
          {
            v33 = v31;

            v25 = v33;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v28);
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __76__NSArray_SafariCoreExtras__safari_longestIncreasingSubsequenceUsingValues___block_invoke;
    v41[3] = &unk_1E7CF25B8;
    v42 = v25;
    v4 = v40;
    v43 = v40;
    v34 = v25;
    v35 = [selfCopy indexesOfObjectsPassingTest:v41];
    v36 = [selfCopy objectsAtIndexes:v35];
  }

  else
  {
    v36 = MEMORY[0x1E695E0F0];
  }

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

+ (id)safari_arrayWithObjectsUnlessNil:()SafariCoreExtras
{
  v9 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v18 = &a9;
  v11 = v9;
  null = [MEMORY[0x1E695DFB0] null];

  v13 = v11;
  if (null != v11)
  {
    v14 = v11;
    do
    {
      [array safari_addObjectUnlessNil:v14];
      v15 = v18++;
      v13 = *v15;

      null2 = [MEMORY[0x1E695DFB0] null];

      v14 = v13;
    }

    while (v13 != null2);
  }

  return array;
}

- (id)safari_dictionaryByMappingObjectsToKeysUsingBlock:()SafariCoreExtras
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __79__NSArray_SafariCoreExtras__safari_dictionaryByMappingObjectsToKeysUsingBlock___block_invoke;
  v13 = &unk_1E7CF24C8;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)safari_dictionaryByMappingObjectsAsKeysToObjectsUsingBlock:()SafariCoreExtras
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __88__NSArray_SafariCoreExtras__safari_dictionaryByMappingObjectsAsKeysToObjectsUsingBlock___block_invoke;
  v13 = &unk_1E7CF24C8;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)safari_dictionaryOfArraysByMappingObjectsToKeysUsingBlock:()SafariCoreExtras
{
  v4 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __87__NSArray_SafariCoreExtras__safari_dictionaryOfArraysByMappingObjectsToKeysUsingBlock___block_invoke;
  v14 = &unk_1E7CF24C8;
  v15 = dictionary;
  v16 = v4;
  v6 = dictionary;
  v7 = v4;
  [self enumerateObjectsUsingBlock:&v11];
  v8 = objc_alloc(MEMORY[0x1E695DF20]);
  v9 = [v8 initWithDictionary:v6 copyItems:{1, v11, v12, v13, v14}];

  return v9;
}

- (id)safari_allPermutations
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self];
  v3 = [self count];
  array = [MEMORY[0x1E695DF70] array];
  v5 = [self _safari_generatePermutations:v2 withPosition:v3 permutationsArray:array];

  return v5;
}

- (id)_safari_generatePermutations:()SafariCoreExtras withPosition:permutationsArray:
{
  v8 = a3;
  v9 = a5;
  if (a4 == 1)
  {
    v10 = [v8 copy];
    [v9 addObject:v10];
  }

  else
  {
    v11 = [self _safari_generatePermutations:v8 withPosition:a4 - 1 permutationsArray:v9];
    v12 = 0;
    do
    {
      if (a4)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      [v8 exchangeObjectAtIndex:v13 withObjectAtIndex:a4 - 1];
      v14 = [self _safari_generatePermutations:v8 withPosition:a4 - 1 permutationsArray:v9];
      ++v12;
    }

    while (a4 - 1 != v12);
  }

  return v9;
}

- (id)safari_objectsOfClass:()SafariCoreExtras
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__NSArray_SafariCoreExtras__safari_objectsOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v5[4] = a3;
  v3 = [self safari_filterObjectsUsingBlock:v5];

  return v3;
}

@end