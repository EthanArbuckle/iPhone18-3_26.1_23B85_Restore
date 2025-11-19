@interface VMUGroupType
- (void)enumerateGroups:(void *)a3 withBlock:(id)a4;
@end

@implementation VMUGroupType

- (void)enumerateGroups:(void *)a3 withBlock:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v32 = __42__VMUGroupType_enumerateGroups_withBlock___block_invoke;
  v33 = &unk_1E8278D70;
  v34 = self;
  v8 = v7;
  v35 = v8;
  v9 = v31;
  v12 = *a3;
  v10 = a3 + 4;
  v11 = v12;
  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = v13 >> 3;
      v15 = v10[v14];
      v16 = v13;
      if (v10[v14])
      {
        do
        {
          if (v15)
          {
            v32(v9, v16);
          }

          if (v15 < 2)
          {
            break;
          }

          v16 = (v16 + 1);
          v15 >>= 1;
        }

        while (v16 < v11);
      }

      v13 = (v13 + 8);
    }

    while (v13 < v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [v8 allKeys];
  v18 = [v17 sortedArrayUsingSelector:sel_compare_];

  v19 = [v18 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        v24 = objc_autoreleasePoolPush();
        v25 = [v8 objectForKeyedSubscript:v23];
        v6[2](v6, v25);

        objc_autoreleasePoolPop(v24);
        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v20);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __42__VMUGroupType_enumerateGroups_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) typeNameForNode:a2];
  v6 = [*(a1 + 40) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = [VMUNodeGroup alloc];
    v8 = [*(a1 + 32) graph];
    v6 = [(VMUNodeGroup *)v7 initWithName:v5 graph:v8];

    [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
  }

  [(VMUNodeGroup *)v6 addNode:a2];

  objc_autoreleasePoolPop(v4);
}

@end