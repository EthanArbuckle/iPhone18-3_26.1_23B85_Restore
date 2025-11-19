@interface NSExtensionItemsFromUIActivityItems
@end

@implementation NSExtensionItemsFromUIActivityItems

uint64_t ____NSExtensionItemsFromUIActivityItems_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = objc_getAssociatedObject(*(*(&v9 + 1) + 8 * v5), &__UIIsContentManagedReferenceKey);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
        {

          v7 = 1;
          goto LABEL_12;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

void ____NSExtensionItemsFromUIActivityItems_block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (_UIActivityItemIsLivePhoto(v7))
  {
    v5 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithLivePhoto:v7];
    if (v5)
    {
      [*(*(a1[5] + 8) + 40) addObject:v5];
      v6 = a1[4];
      if (v6)
      {
        (*(v6 + 16))(v6, v5, v7);
      }
    }

    [*(*(a1[6] + 8) + 40) removeObjectAtIndex:a3];
  }
}

void ____NSExtensionItemsFromUIActivityItems_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _UIActivityItemsWithTypes(*(*(*(a1 + 48) + 8) + 40), a2, 0, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ____NSExtensionItemsFromUIActivityItems_block_invoke_4;
  v13[3] = &unk_1E71FA2D0;
  v14 = v5;
  v7 = *(a1 + 32);
  v12 = *(a1 + 56);
  v8 = *(a1 + 40);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v12;
  *(&v10 + 1) = *(a1 + 48);
  v15 = v9;
  v16 = v10;
  v11 = v5;
  [v6 enumerateObjectsUsingBlock:v13];
}

void ____NSExtensionItemsFromUIActivityItems_block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _NSItemProviderForUIActivityItem(v5, *(a1 + 32), *(a1 + 40));
  if (v3)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v3];
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, v3, v5);
    }

    [*(*(*(a1 + 64) + 8) + 40) removeObjectIdenticalTo:v5];
  }
}

void ____NSExtensionItemsFromUIActivityItems_block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *MEMORY[0x1E6963888];
    v5 = [*(a1 + 32) activityType];
    v6 = _UIActivityGetTypeIdentifier(v3, v4, v5);

    v7 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:v3 typeIdentifier:v6];
    v8 = *MEMORY[0x1E6963870];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ____NSExtensionItemsFromUIActivityItems_block_invoke_6;
    v14[3] = &unk_1E71FA320;
    v9 = v3;
    v15 = v9;
    [v7 registerItemForTypeIdentifier:v8 loadHandler:v14];
    [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v7, v9);
    }

    [*(*(*(a1 + 56) + 8) + 40) removeObjectIdenticalTo:v9];

LABEL_9:
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *MEMORY[0x1E6963870];
    v12 = [*(a1 + 32) activityType];
    v6 = _UIActivityGetTypeIdentifier(v3, v11, v12);

    v7 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:v3 typeIdentifier:v6];
    [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, v7, v3);
    }

    [*(*(*(a1 + 56) + 8) + 40) removeObjectIdenticalTo:v3];
    goto LABEL_9;
  }

LABEL_10:
}

void ____NSExtensionItemsFromUIActivityItems_block_invoke_6(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 string];
  (a2)[2](v4, v5, 0);
}

void ____NSExtensionItemsFromUIActivityItems_block_invoke_7(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 registeredTypeIdentifiers];
  if ([v3 count] <= 1)
  {
    v4 = [v6 hasItemConformingToTypeIdentifier:@"com.apple.group-activities.activity"];

    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [*(*(a1[5] + 8) + 40) addObject:v6];
  v5 = a1[4];
  if (v5)
  {
    (*(v5 + 16))(v5, v6, v6);
  }

LABEL_6:
  [*(*(a1[6] + 8) + 40) removeObjectIdenticalTo:v6];
}

void ____NSExtensionItemsFromUIActivityItems_block_invoke_8(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = [*(a1 + 32) count];
    v5 = [v3 attachments];
    v6 = [v5 count];

    if (v4 == v6)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = [v3 attachments];
      v7 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v7)
      {
        v8 = *v31;
        v9 = *MEMORY[0x1E69638B8];
        v18 = *MEMORY[0x1E696A4D8];
        v19 = *MEMORY[0x1E696A4E0];
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v31 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v30 + 1) + 8 * i);
            if ([v11 hasItemConformingToTypeIdentifier:{v9, v18, v19}])
            {
              v24 = 0;
              v25 = &v24;
              v26 = 0x3032000000;
              v27 = __Block_byref_object_copy__2;
              v28 = __Block_byref_object_dispose__2;
              v29 = 0;
              v12 = dispatch_semaphore_create(0);
              v34 = v19;
              v35 = v18;
              v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 3221225472;
              v21[2] = ____NSExtensionItemsFromUIActivityItems_block_invoke_9;
              v21[3] = &unk_1E71FA398;
              v23 = &v24;
              v14 = v12;
              v22 = v14;
              [v11 loadItemForTypeIdentifier:v9 options:v13 completionHandler:v21];

              dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
              if (v25[5])
              {
                v15 = [*(a1 + 32) indexOfObject:?];
                if (v15 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [*(a1 + 32) removeObjectAtIndex:v15];
                }
              }

              _Block_object_dispose(&v24, 8);
            }

            v16 = *(a1 + 40);
            if (v16)
            {
              (*(v16 + 16))(v16, v11, v3);
            }
          }

          v7 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v7);
      }
    }
  }

  [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v3, v3);
  }

  [*(*(*(a1 + 56) + 8) + 40) removeObjectIdenticalTo:v3];
}

void ____NSExtensionItemsFromUIActivityItems_block_invoke_9(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void ____NSExtensionItemsFromUIActivityItems_block_invoke_10(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 userInfo];
  if (v3)
  {
    v4 = [v7 userInfo];
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (*(a1 + 32))
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = MEMORY[0x1E695E110];
  }

  [v5 setObject:v6 forKeyedSubscript:@"com.apple.UIKit.NSExtensionItemUserInfoIsContentManagedKey"];
  [v7 setUserInfo:v5];
}

@end