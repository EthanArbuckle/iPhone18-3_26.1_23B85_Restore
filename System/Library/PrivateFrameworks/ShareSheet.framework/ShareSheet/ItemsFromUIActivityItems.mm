@interface ItemsFromUIActivityItems
@end

@implementation ItemsFromUIActivityItems

void ____ItemsFromUIActivityItems_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (_UIActivityItemIsLivePhoto(v5))
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    [*(*(*(a1 + 40) + 8) + 40) removeObjectAtIndex:a3];
  }
}

void ____ItemsFromUIActivityItems_block_invoke_2(int8x16_t *a1, uint64_t a2)
{
  v3 = _UIActivityItemsWithTypes(*(*(a1[2].i64[0] + 8) + 40), a2, 0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ____ItemsFromUIActivityItems_block_invoke_3;
  v4[3] = &unk_1E71FA1E0;
  v5 = vextq_s8(a1[2], a1[2], 8uLL);
  [v3 enumerateObjectsUsingBlock:v4];
}

void ____ItemsFromUIActivityItems_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  [v3 addObject:v4];
  [*(*(*(a1 + 40) + 8) + 40) removeObjectIdenticalTo:v4];
}

void ____ItemsFromUIActivityItems_block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = [v5 string];
    [v3 addObject:v4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }

  [*(*(*(a1 + 40) + 8) + 40) removeObjectIdenticalTo:v5];
LABEL_6:
}

void ____ItemsFromUIActivityItems_block_invoke_5(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v3 hasItemConformingToTypeIdentifier:v9])
        {
          v10 = dispatch_semaphore_create(0);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = ____ItemsFromUIActivityItems_block_invoke_6;
          v14[3] = &unk_1E71FA230;
          v12 = *(a1 + 40);
          v11 = *(a1 + 48);
          v15 = v10;
          v16 = v11;
          v13 = v10;
          [v3 loadItemForTypeIdentifier:v9 options:v12 completionHandler:v14];
          dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [*(*(*(a1 + 56) + 8) + 40) removeObjectIdenticalTo:v3];
}

intptr_t ____ItemsFromUIActivityItems_block_invoke_6(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) addObject:a2];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

@end