@interface UIGestureEnvironmentSubgraphsBlockedFromResetDescription
@end

@implementation UIGestureEnvironmentSubgraphsBlockedFromResetDescription

void ___UIGestureEnvironmentSubgraphsBlockedFromResetDescription_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v31;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v31 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v27;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v27 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v26 + 1) + 8 * j);
              if ([(UIGestureRecognizer *)v12 _isActive])
              {
                [*(a1 + 40) addObject:v12];
              }

              if ([*(a1 + 48) containsObject:v12])
              {
                [*(a1 + 56) addObject:v12];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v9);
        }

        v13 = [v7 mutableCopy];
        [v13 minusSet:*(a1 + 40)];
        [v13 minusSet:*(a1 + 56)];
        v14 = *(a1 + 64);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = ___UIGestureEnvironmentSubgraphsBlockedFromResetDescription_block_invoke_2;
        v20[3] = &unk_1E70F4378;
        v15 = v14;
        v21 = v15;
        v22 = *(a1 + 40);
        v16 = *(a1 + 56);
        v17 = *(a1 + 72);
        v24 = v13;
        v25 = v17;
        v23 = v16;
        v18 = v13;
        [v15 appendBodySectionWithName:@"subgraph" block:v20];
        [*(a1 + 56) removeAllObjects];
        [*(a1 + 40) removeAllObjects];
      }

      v3 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v3);
  }
}

void ___UIGestureEnvironmentSubgraphsBlockedFromResetDescription_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___UIGestureEnvironmentSubgraphsBlockedFromResetDescription_block_invoke_3;
  v13[3] = &unk_1E710B3E0;
  v14 = *(a1 + 32);
  [v2 appendCollection:v3 withName:@"blockingSubgraphResetGestures" itemBlock:v13];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 48) copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___UIGestureEnvironmentSubgraphsBlockedFromResetDescription_block_invoke_4;
  v10[3] = &unk_1E710B508;
  v12 = *(a1 + 64);
  v11 = *(a1 + 32);
  [v4 appendCollection:v5 withName:@"blockedFromResetGestures" itemBlock:v10];

  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___UIGestureEnvironmentSubgraphsBlockedFromResetDescription_block_invoke_6;
  v8[3] = &unk_1E710B3E0;
  v9 = v6;
  [v9 appendCollection:v7 withName:@"remainingGestures" itemBlock:v8];
}

void ___UIGestureEnvironmentSubgraphsBlockedFromResetDescription_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 _briefDescription];
  [v2 appendString:v3 withName:0];
}

void ___UIGestureEnvironmentSubgraphsBlockedFromResetDescription_block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 216);
  }

  else
  {
    v4 = 0;
  }

  v5 = _UIMediaTimeForMachTime(*(a1 + 40) - v4);
  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UIGestureEnvironmentSubgraphsBlockedFromResetDescription_block_invoke_5;
  v7[3] = &unk_1E70F36D0;
  v8 = v6;
  v9 = a2;
  v10 = v5;
  [v8 appendProem:a2 block:v7];
}

id ___UIGestureEnvironmentSubgraphsBlockedFromResetDescription_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _UIGestureRecognizerStateString([*(a1 + 40) state]);
  [v2 appendString:v3 withName:@"state"];

  return [*(a1 + 32) appendTimeInterval:@"timeFromEnqueuedReset" withName:0 decomposeUnits:*(a1 + 48)];
}

void ___UIGestureEnvironmentSubgraphsBlockedFromResetDescription_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 _briefDescription];
  [v2 appendString:v3 withName:0];
}

@end