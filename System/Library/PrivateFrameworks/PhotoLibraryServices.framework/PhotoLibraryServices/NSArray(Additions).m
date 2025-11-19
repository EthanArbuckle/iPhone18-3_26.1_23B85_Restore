@interface NSArray(Additions)
- (id)pl_arrayOfUniqueObjectsNotInOrderedSet:()Additions;
- (id)pl_shortDescription;
- (uint64_t)pl_countOfObjectsPassingTest:()Additions;
- (uint64_t)pl_indexOfFirstObjectPassingTest:()Additions;
- (uint64_t)pl_indexOfLastObjectInRange:()Additions passingTest:;
- (uint64_t)pl_indexOfLastObjectPassingTest:()Additions;
- (unint64_t)pl_indexOfFirstObjectInRange:()Additions passingTest:;
@end

@implementation NSArray(Additions)

- (uint64_t)pl_indexOfLastObjectInRange:()Additions passingTest:
{
  v8 = a5;
  v9 = v8;
  if (a4)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__NSArray_Additions__pl_indexOfLastObjectInRange_passingTest___block_invoke;
    v14[3] = &unk_1E75725C8;
    v15 = v8;
    v10 = [a1 pl_indexOfFirstObjectInRange:a3 passingTest:{a4, v14}];
    v11 = v10 - 1;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = a4 + a3 - 1;
    }

    if (v10 == a3)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (uint64_t)pl_indexOfLastObjectPassingTest:()Additions
{
  v4 = a3;
  v5 = [a1 pl_indexOfLastObjectInRange:0 passingTest:{objc_msgSend(a1, "count"), v4}];

  return v5;
}

- (unint64_t)pl_indexOfFirstObjectInRange:()Additions passingTest:
{
  v8 = a5;
  v9 = v8;
  if (a4)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__NSArray_Additions__pl_indexOfFirstObjectInRange_passingTest___block_invoke;
    aBlock[3] = &unk_1E756DB68;
    aBlock[4] = a1;
    v16 = v8;
    v17 = &v18;
    v10 = _Block_copy(aBlock);
    if (v10[2](v10, a3))
    {
      v11 = a3;
    }

    else if (v19[3] & 1) != 0 || (v11 = a4 + a3 - 1, (v10[2](v10, v11) & 1) == 0) || (v19[3])
    {
LABEL_8:
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      while (a3 + 1 < v11)
      {
        v13 = (v11 + a3) >> 1;
        v14 = v10[2](v10, v13);
        if (v19[3])
        {
          goto LABEL_8;
        }

        if (v14)
        {
          v11 = (v11 + a3) >> 1;
        }

        else
        {
          a3 = v13;
        }
      }
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (uint64_t)pl_indexOfFirstObjectPassingTest:()Additions
{
  v4 = a3;
  v5 = [a1 pl_indexOfFirstObjectInRange:0 passingTest:{objc_msgSend(a1, "count"), v4}];

  return v5;
}

- (id)pl_arrayOfUniqueObjectsNotInOrderedSet:()Additions
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 count];
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DEC8] array];
LABEL_10:
    v14 = v13;
    goto LABEL_33;
  }

  v6 = v5;
  v7 = [v4 count];
  if (!v7)
  {
    v13 = a1;
    goto LABEL_10;
  }

  v8 = v7;
  if (v7 >= 0x201)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  v10 = 8 * v9;
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v28 - v11;
  bzero(&v28 - v11, v10);
  v30 = &v28;
  if (v8 > 0x200)
  {
    v12 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v12, v10);
  }

  [v4 getObjects:v12 range:{0, v8}];
  qsort_b(v12, v8, 8uLL, &__block_literal_global_53184);
  if (v6 >= 0x201)
  {
    v16 = 1;
  }

  else
  {
    v16 = v6;
  }

  v17 = 8 * v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  bzero(&v28 - v18, v17);
  v31 = v4;
  v29 = v6;
  if (v6 > 0x200)
  {
    v19 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v19, v17);
  }

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v32 = 0u;
  v20 = a1;
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v33;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v32 + 1) + 8 * i);
        if (!bsearch_b(v26, v12, v8, 8uLL, &__block_literal_global_53184))
        {
          *&v19[8 * v23++] = v26;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v22);
  }

  else
  {
    v23 = 0;
  }

  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:v23];
  if (v8 >= 0x201)
  {
    NSZoneFree(0, v12);
  }

  v4 = v31;
  if (v29 >= 0x201)
  {
    NSZoneFree(0, v19);
  }

LABEL_33:

  return v14;
}

- (uint64_t)pl_countOfObjectsPassingTest:()Additions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v14;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v9 += v4[2](v4, *(*(&v13 + 1) + 8 * v11), &v17);
      if (v17)
      {
        break;
      }

      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v9;
}

- (id)pl_shortDescription
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", *(*(&v13 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:{@", "}];
  [v2 appendString:v11];

  objc_autoreleasePoolPop(v3);
  [v2 appendString:@"}"];

  return v2;
}

@end