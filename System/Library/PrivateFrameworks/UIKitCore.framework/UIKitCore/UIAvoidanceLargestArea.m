@interface UIAvoidanceLargestArea
- (id)avoid:(id)a3 forClient:(id)a4 withCoordinator:(id)a5;
@end

@implementation UIAvoidanceLargestArea

- (id)avoid:(id)a3 forClient:(id)a4 withCoordinator:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DFA8] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [v6 allValues];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v10);
        }

        [v9 unionSet:*(*(&v21 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  [v7 avoidanceFrame];
  FindRectanglesAroundRectangles(v8, v9, v15, v16, v17, v18);
  [v8 sortUsingComparator:&__block_literal_global_697];
  v19 = [v8 lastObject];

  return v19;
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