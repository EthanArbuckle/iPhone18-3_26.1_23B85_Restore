@interface PLScopedSearchUtilities
+ (id)removeGroupsWithNonExactMatchTextFromGroups:(id)groups searchText:(id)text;
+ (id)removeSynonymsOfOtherGroupsInGroups:(id)groups;
+ (void)intersectSortedArray:(const __CFArray *)array withOtherSortedArray:(__CFArray *)sortedArray intersectionLimit:(unint64_t)limit;
+ (void)searchIndexIdsFromUUIDs:(id)ds searchResultTypes:(unint64_t)types psiDatabase:(id)database completion:(id)completion;
@end

@implementation PLScopedSearchUtilities

+ (void)searchIndexIdsFromUUIDs:(id)ds searchResultTypes:(unint64_t)types psiDatabase:(id)database completion:(id)completion
{
  typesCopy = types;
  dsCopy = ds;
  databaseCopy = database;
  completionCopy = completion;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLScopedSearchUtilities.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"psiDatabase"}];
  }

  if ([dsCopy count])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__8546;
    v14 = MEMORY[0x1E695E0F8];
    v33 = __Block_byref_object_dispose__8547;
    v34 = MEMORY[0x1E695E0F8];
    if (typesCopy)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __92__PLScopedSearchUtilities_searchIndexIdsFromUUIDs_searchResultTypes_psiDatabase_completion___block_invoke;
      v28[3] = &unk_1E7566368;
      v28[4] = &v35;
      v28[5] = &v29;
      [databaseCopy assetIdsFromUUIDs:dsCopy completion:v28];
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__8546;
    v22 = __Block_byref_object_dispose__8547;
    v23 = v14;
    if ((typesCopy & 2) != 0)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __92__PLScopedSearchUtilities_searchIndexIdsFromUUIDs_searchResultTypes_psiDatabase_completion___block_invoke_2;
      v17[3] = &unk_1E7566368;
      v17[4] = &v24;
      v17[5] = &v18;
      [databaseCopy collectionIdsFromUUIDs:dsCopy completion:v17];
      v15 = v25[3];
      v14 = v19[5];
    }

    else
    {
      v15 = 0;
    }

    completionCopy[2](completionCopy, v36[3], v15, v30[5], v14);
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0, MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F8]);
  }
}

+ (id)removeSynonymsOfOtherGroupsInGroups:(id)groups
{
  v45 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  if ([groupsCopy count])
  {
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v28 = groupsCopy;
    obj = groupsCopy;
    v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v32)
    {
      v30 = *v40;
      do
      {
        v4 = 0;
        do
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v4;
          v5 = *(*(&v39 + 1) + 8 * v4);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v6 = v31;
          v7 = [v6 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v36;
            v34 = v6;
LABEL_9:
            v10 = 0;
            while (1)
            {
              if (*v36 != v9)
              {
                objc_enumerationMutation(v34);
              }

              v11 = *(*(&v35 + 1) + 8 * v10);
              groupId = [v5 groupId];
              owningGroupId = [v11 owningGroupId];
              owningGroupId2 = [v5 owningGroupId];
              groupId2 = [v11 groupId];
              if ([v5 owningGroupId])
              {
                owningGroupId3 = [v5 owningGroupId];
                v17 = owningGroupId3 == [v11 owningGroupId];
              }

              else
              {
                v17 = 0;
              }

              v18 = groupId == owningGroupId || owningGroupId2 == groupId2;
              if (v18 || v17)
              {
                break;
              }

              if (v8 == ++v10)
              {
                v6 = v34;
                v8 = [v34 countByEnumeratingWithState:&v35 objects:v43 count:16];
                if (v8)
                {
                  goto LABEL_9;
                }

                goto LABEL_22;
              }
            }

            v19 = v11;
            v6 = v34;

            if (!v19)
            {
              goto LABEL_26;
            }

            contentString = [v5 contentString];
            v21 = [contentString length];

            contentString2 = [v19 contentString];
            v23 = [contentString2 length];

            if (v23 > v21)
            {
              [v34 removeObject:v19];
              goto LABEL_26;
            }

            v24 = v33;
          }

          else
          {
LABEL_22:

            v19 = 0;
LABEL_26:
            v24 = v33;
            [v6 addObject:v5];
          }

          v4 = v24 + 1;
        }

        while (v4 != v32);
        v25 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
        v32 = v25;
      }

      while (v25);
    }

    array = [v31 copy];
    groupsCopy = v28;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  return array;
}

+ (id)removeGroupsWithNonExactMatchTextFromGroups:(id)groups searchText:(id)text
{
  textCopy = text;
  v6 = MEMORY[0x1E695DF70];
  groupsCopy = groups;
  v8 = objc_alloc_init(v6);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __82__PLScopedSearchUtilities_removeGroupsWithNonExactMatchTextFromGroups_searchText___block_invoke;
  v16 = &unk_1E7566340;
  v17 = textCopy;
  v18 = v8;
  v9 = v8;
  v10 = textCopy;
  [groupsCopy enumerateObjectsUsingBlock:&v13];

  v11 = [v9 copy];

  return v11;
}

void __82__PLScopedSearchUtilities_removeGroupsWithNonExactMatchTextFromGroups_searchText___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 normalizedString];
  v4 = [v3 localizedCaseInsensitiveCompare:*(a1 + 32)];

  if (!v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

+ (void)intersectSortedArray:(const __CFArray *)array withOtherSortedArray:(__CFArray *)sortedArray intersectionLimit:(unint64_t)limit
{
  v8 = *array;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  arrayCopy = array;
  v33 = v8;
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (!sortedArray)
    {
      goto LABEL_70;
    }
  }

  else
  {
    Count = 0;
    if (!sortedArray)
    {
      goto LABEL_70;
    }
  }

  v10 = CFArrayGetCount(sortedArray);
  if (Count)
  {
    v11 = v10;
    if (v10)
    {
      if (Count >= 1 && v10 >= 1)
      {
        sortedArrayCopy = sortedArray;
        v13 = 0;
        v14 = 0;
        ValueAtIndex = 0;
        v16 = 0;
        v17 = 0;
        v18 = 8;
        v34 = limit - 1;
        theArray = v8;
        do
        {
          if ((v16 & 1) == 0)
          {
            if (!v18)
            {
              if (ValueAtIndex && v14)
              {
                __assert_rtn("sortedArrayIntersection", "PSIUtilities.h", 154, "seeking && !needsSeekStrategy");
              }

              goto LABEL_80;
            }

            v28 = sortedArrayCopy;
            v22 = v11;
            v21 = ValueAtIndex;
            v20 = v17;
            goto LABEL_41;
          }

          if (ValueAtIndex)
          {
            if (!v14)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v30 = sortedArrayCopy;
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
            sortedArrayCopy = v30;
            if (!v14)
            {
LABEL_67:
              v31 = sortedArrayCopy;
              v14 = CFArrayGetValueAtIndex(sortedArrayCopy, v17);
              sortedArrayCopy = v31;
            }
          }

          v19 = v14 >= ValueAtIndex;
          if (v14 < ValueAtIndex)
          {
            v20 = v13;
          }

          else
          {
            v20 = v17;
          }

          if (v14 < ValueAtIndex)
          {
            v21 = v14;
          }

          else
          {
            v21 = ValueAtIndex;
          }

          if (v14 < ValueAtIndex)
          {
            v14 = ValueAtIndex;
            v13 = v17;
          }

          if (v19)
          {
            v22 = v11;
          }

          else
          {
            v22 = Count;
          }

          if (!v19)
          {
            Count = v11;
          }

          v23 = theArray;
          if (v19)
          {
            v24 = sortedArrayCopy;
          }

          else
          {
            v24 = theArray;
          }

          if (!v19)
          {
            v23 = sortedArrayCopy;
          }

          theArray = v23;
          if (v14 < v21)
          {
            __assert_rtn("sortedArrayIntersection", "PSIUtilities.h", 116, "elemB >= elemA");
          }

          if (Count >= 9)
          {
            v25 = v14 - v21;
            if (log(Count) < v25)
            {
              if (v21)
              {
                v38.length = Count - v13;
                v38.location = v13;
                v26 = CFArrayBSearchValues(theArray, v38, v14, PSIRowIDCompare, 0);
                if (v26 < Count)
                {
                  v13 = v26;
                  v27 = CFArrayGetValueAtIndex(theArray, v26);
                  if (v14 == v27)
                  {
                    v16 = 0;
                    sortedArrayCopy = v24;
                    v11 = v22;
                    v17 = v20;
                    v18 = 8;
                    ValueAtIndex = v14;
                  }

                  else
                  {
                    ValueAtIndex = v27;
                    if (v14 >= v27)
                    {
                      __assert_rtn("sortedArrayIntersection", "PSIUtilities.h", 167, "elemA > elemB");
                    }

                    v18 = 0;
                    v16 = 1;
                    sortedArrayCopy = v24;
                    v11 = v22;
                    v17 = v20;
                  }

                  continue;
                }

                break;
              }

LABEL_80:
              __assert_rtn("sortedArrayIntersection", "PSIUtilities.h", 153, "elemA && elemB");
            }
          }

          v28 = v24;
          v18 = 8;
LABEL_41:
          v16 = 1;
          if (v13 >= Count)
          {
            sortedArrayCopy = v28;
            goto LABEL_62;
          }

          v29 = v28;
          if (v20 >= v22)
          {
            goto LABEL_61;
          }

          while (v18)
          {
            if (v21)
            {
              if (v14)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v21 = CFArrayGetValueAtIndex(theArray, v13);
              if (v14)
              {
                goto LABEL_46;
              }
            }

            v14 = CFArrayGetValueAtIndex(v29, v20);
LABEL_46:
            if (v21 < v14)
            {
              v21 = 0;
              ++v13;
LABEL_50:
              --v18;
              goto LABEL_56;
            }

            if (v21 > v14)
            {
              v14 = 0;
              ++v20;
              goto LABEL_50;
            }

            if (Mutable && v34 < CFArrayGetCount(Mutable))
            {
              goto LABEL_70;
            }

            CFArrayAppendValue(Mutable, v21);
            v21 = 0;
            v14 = 0;
            ++v13;
            ++v20;
LABEL_56:
            v16 = 1;
            if (v13 >= Count || v20 >= v22)
            {
              goto LABEL_61;
            }
          }

          v18 = -1;
          v16 = 1;
LABEL_61:
          sortedArrayCopy = v29;
LABEL_62:
          v11 = v22;
          v17 = v20;
          ValueAtIndex = v21;
        }

        while (v13 < Count && v17 < v11);
      }
    }
  }

LABEL_70:
  *arrayCopy = Mutable;
  if (v33)
  {

    CFRelease(v33);
  }
}

@end