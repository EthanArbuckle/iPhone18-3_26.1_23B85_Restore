@interface UIDropSessionImpl
@end

@implementation UIDropSessionImpl

void __42___UIDropSessionImpl_requestVisibleItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___UIDropSessionImpl_requestVisibleItems___block_invoke_2;
  block[3] = &unk_1E70FCE28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __42___UIDropSessionImpl_requestVisibleItems___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [[_UIPlatterView alloc] initWithDroppedItem:v7];
        if (v8)
        {
          v9 = [v7 itemIndex];
          v10 = [*(a1 + 40) items];
          v11 = [v10 count];

          if (v9 < v11)
          {
            [v15 addObject:v8];
            v12 = [*(a1 + 40) items];
            v13 = [v12 objectAtIndex:v9];
            [v14 addObject:v13];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 48) + 16))();
}

void __77___UIDropSessionImpl__createItemsOfClass_synchronouslyIfPossible_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
    [v7 setObject:v9 forKey:v8];

    objc_sync_exit(v6);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __77___UIDropSessionImpl__createItemsOfClass_synchronouslyIfPossible_completion___block_invoke_2(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = arrayOfItemsFromDictionaryOfItemsByIndex(*(a1 + 40));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77___UIDropSessionImpl__createItemsOfClass_synchronouslyIfPossible_completion___block_invoke_3;
  v5[3] = &unk_1E70F4A50;
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

@end