@interface UIDragStatisticsLogTextDelegateItems
@end

@implementation UIDragStatisticsLogTextDelegateItems

void ___UIDragStatisticsLogTextDelegateItems_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  v4 = v3;
  if (v2 != v3 && v2 != 0 && v3 != 0)
  {
    v7 = [v2 count];
    if (v7 == [v4 count])
    {
      v8 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:256 capacity:{objc_msgSend(v4, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = v4;
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        do
        {
          v13 = 0;
          do
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [v8 addObject:*(*(&v23 + 1) + 8 * v13++)];
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v11);
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v14 = v2;
      v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v20;
        while (2)
        {
          v18 = 0;
          do
          {
            if (*v20 != v17)
            {
              objc_enumerationMutation(v14);
            }

            if (![v8 containsObject:{*(*(&v19 + 1) + 8 * v18), v19}])
            {

              goto LABEL_26;
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
LABEL_26:
      [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"itemsModifiedByTextDelegate"];
    }
  }
}

@end