@interface NSArray
@end

@implementation NSArray

void __87__NSArray_TransformUtilities__sl_mapAsynchronouslyOnQueue_transform_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 8);
    v4 = a2;
    os_unfair_lock_lock(v3 + 8);
    [*(a1 + 32) setObject:v4 atIndexedSubscript:*(a1 + 56)];

    os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  }

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void __87__NSArray_TransformUtilities__sl_mapAsynchronouslyOnQueue_transform_completionHandler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v2 addObject:{v8, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

@end