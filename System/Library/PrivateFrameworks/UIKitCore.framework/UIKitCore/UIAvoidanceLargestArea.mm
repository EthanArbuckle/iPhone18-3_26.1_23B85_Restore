@interface UIAvoidanceLargestArea
- (id)avoid:(id)avoid forClient:(id)client withCoordinator:(id)coordinator;
@end

@implementation UIAvoidanceLargestArea

- (id)avoid:(id)avoid forClient:(id)client withCoordinator:(id)coordinator
{
  v26 = *MEMORY[0x1E69E9840];
  avoidCopy = avoid;
  coordinatorCopy = coordinator;
  array = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DFA8] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allValues = [avoidCopy allValues];
  v11 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        [v9 unionSet:*(*(&v21 + 1) + 8 * i)];
      }

      v12 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  [coordinatorCopy avoidanceFrame];
  FindRectanglesAroundRectangles(array, v9, v15, v16, v17, v18);
  [array sortUsingComparator:&__block_literal_global_697];
  lastObject = [array lastObject];

  return lastObject;
}

uint64_t __58__UIAvoidanceLargestArea_avoid_forClient_withCoordinator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 CGRectValue];
  v6 = v5;
  v8 = v7;
  [v4 CGRectValue];
  v10 = v9;
  v12 = v11;

  if (v6 * v8 < v10 * v12)
  {
    return -1;
  }

  else
  {
    return v6 * v8 > v10 * v12;
  }
}

@end