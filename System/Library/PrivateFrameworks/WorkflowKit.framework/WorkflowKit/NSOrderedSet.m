@interface NSOrderedSet
@end

@implementation NSOrderedSet

void __116__NSOrderedSet_WFThreeWayMerging__wf_orderedSetByMergingOrderedSet_withOrderedSet_baseOrderedSet_elementComparator___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  if ([v17 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = objc_autoreleasePoolPush();
      if (v6 < [v17 count])
      {
        v8 = v17;
        while (1)
        {
          v9 = *(a1 + 48);
          v10 = [v8 objectAtIndex:v6];
          LODWORD(v9) = (*(v9 + 16))(v9, v10);

          if (!v9)
          {
            break;
          }

          v11 = ++v6 >= [v17 count];
          v8 = v17;
          if (v11)
          {
            goto LABEL_10;
          }
        }
      }

      v8 = v17;
LABEL_10:
      if (v6 == [v8 count])
      {
        break;
      }

      v12 = [v17 objectAtIndex:v6];
      v13 = v6 + 1;
      do
      {
        v6 = v13;
        if (v13 >= [v17 count])
        {
          break;
        }

        v14 = *(a1 + 48);
        v15 = [v17 objectAtIndex:v6];
        LOBYTE(v14) = (*(v14 + 16))(v14, v15);

        v13 = v6 + 1;
      }

      while ((v14 & 1) != 0);
      if (v6 == [v17 count])
      {
        [(WFThreeWayMergingObjectGraph *)*(a1 + 32) addStandaloneVertex:v12];

        break;
      }

      v16 = [v17 objectAtIndex:v6];
      if (WFOrderedSetContainsPath(*(a1 + 40), v12, v16, *(a1 + 56)) && !WFOrderedSetContainsPath(v5, v12, v16, *(a1 + 56)))
      {
        [(WFThreeWayMergingObjectGraph *)*(a1 + 32) addStandaloneVertex:v12];
        [(WFThreeWayMergingObjectGraph *)*(a1 + 32) addStandaloneVertex:v16];
      }

      else
      {
        [(WFThreeWayMergingObjectGraph *)*(a1 + 32) addEdgeFromVertex:v12 toVertex:v16];
      }

      objc_autoreleasePoolPop(v7);
      if (v6 >= [v17 count])
      {
        goto LABEL_23;
      }
    }

    objc_autoreleasePoolPop(v7);
  }

LABEL_23:
}

void __116__NSOrderedSet_WFThreeWayMerging__wf_orderedSetByMergingOrderedSet_withOrderedSet_baseOrderedSet_elementComparator___block_invoke_4(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v55 = __116__NSOrderedSet_WFThreeWayMerging__wf_orderedSetByMergingOrderedSet_withOrderedSet_baseOrderedSet_elementComparator___block_invoke_5;
  v56 = &unk_1E837B1B0;
  v6 = *(a1 + 56);
  v57 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v53 = v5;
  v9 = v6;
  v10 = v54;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFEnumerateConnectedComponentVertexes(NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSComparator  _Nonnull __strong, void (^ _Nonnull __strong)(id<NSObject>  _Nonnull __strong))"}];
    [v38 handleFailureInFunction:v39 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"componentVertexes"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v40 = [MEMORY[0x1E696AAA8] currentHandler];
  v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFEnumerateConnectedComponentVertexes(NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSComparator  _Nonnull __strong, void (^ _Nonnull __strong)(id<NSObject>  _Nonnull __strong))"}];
  [v40 handleFailureInFunction:v41 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:218 description:{@"Invalid parameter not satisfying: %@", @"firstOrderedSet"}];

LABEL_3:
  if (v53)
  {
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFEnumerateConnectedComponentVertexes(NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSComparator  _Nonnull __strong, void (^ _Nonnull __strong)(id<NSObject>  _Nonnull __strong))"}];
    [v42 handleFailureInFunction:v43 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:219 description:{@"Invalid parameter not satisfying: %@", @"secondOrderedSet"}];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v44 = [MEMORY[0x1E696AAA8] currentHandler];
  v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFEnumerateConnectedComponentVertexes(NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSComparator  _Nonnull __strong, void (^ _Nonnull __strong)(id<NSObject>  _Nonnull __strong))"}];
  [v44 handleFailureInFunction:v45 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"comparator"}];

LABEL_5:
  if ([v7 count] == 1)
  {
    v11 = [v7 firstObject];
    v55(v10, v11);
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v58 objects:v62 count:16];
    v49 = v8;
    if (v13)
    {
      v14 = v13;
      obj = v12;
      v51 = 0;
      v46 = v10;
      v47 = v9;
      v48 = v7;
      v52 = 0;
      v15 = *v59;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v59 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v58 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          v21 = [v8 indexOfObject:v19];
          if (v21 != 0x7FFFFFFFFFFFFFFFLL && v21 < v16)
          {
            v23 = v21;
            v24 = v19;

            v16 = v23;
            v52 = v24;
            v8 = v49;
          }

          v25 = [v53 indexOfObject:v19];
          if (v25 != 0x7FFFFFFFFFFFFFFFLL && v25 < v17)
          {
            v27 = v25;
            v28 = v19;

            v51 = v28;
            v17 = v27;
          }

          objc_autoreleasePoolPop(v20);
        }

        v14 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v14);
      v29 = obj;

      if (v52 && v51)
      {
        v9 = v47;
        if (v47[2](v47, v52, v51) == -1)
        {
          v30 = v52;
        }

        else
        {
          v30 = v51;
        }

        v7 = v48;
      }

      else
      {
        if (v52)
        {
          v30 = v52;
        }

        else
        {
          v30 = v51;
        }

        v7 = v48;
        v9 = v47;
      }

      v10 = v46;
    }

    else
    {

      v30 = 0;
      v51 = 0;
      v52 = 0;
      v29 = v12;
    }

    v31 = v30;
    v32 = [v29 indexOfObject:v31];
    v33 = v32;
    do
    {
      v34 = objc_autoreleasePoolPush();
      [v29 objectAtIndexedSubscript:v33];
      v36 = v35 = v29;
      v55(v10, v36);

      v29 = v35;
      if (v33 + 1 == [v35 count])
      {
        v33 = 0;
      }

      else
      {
        ++v33;
      }

      objc_autoreleasePoolPop(v34);
    }

    while (v33 != v32);

    v8 = v49;
    v11 = v52;
  }

  v37 = *MEMORY[0x1E69E9840];
}

@end