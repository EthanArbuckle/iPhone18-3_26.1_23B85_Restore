@interface UIActivityRecipientManager
@end

@implementation UIActivityRecipientManager

void __90___UIActivityRecipientManager_requestMessagesRecipientInfoForSessionID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Recipient Manager: Error getting synchronous remote object proxy %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __90___UIActivityRecipientManager_requestMessagesRecipientInfoForSessionID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = [v3 realName];
  v4 = [v3 displayName];
  v5 = [v3 formattedHandles];

  v6 = [v5 allObjects];
  (*(v2 + 16))(v2, v7, v4, v6);
}

void __79___UIActivityRecipientManager_requestRecipientsForSessionID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Recipient Manager: Error getting synchronous remote object proxy %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __79___UIActivityRecipientManager_requestRecipientsForSessionID_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v3 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * v9) formattedHandles];
          v11 = [v10 allObjects];

          if (v11)
          {
            [v4 addObjectsFromArray:v11];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v12 = *(a1 + 32);
  if ([v4 count])
  {
    v13 = [v4 copy];
    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(v12, 0);
  }
}

void __81___UIActivityRecipientManager_requestRecipientsV2ForSessionID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Recipient Manager: Error getting synchronous remote object proxy %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

@end