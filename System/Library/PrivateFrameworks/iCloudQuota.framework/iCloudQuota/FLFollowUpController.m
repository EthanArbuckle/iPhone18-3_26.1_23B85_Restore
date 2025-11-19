@interface FLFollowUpController
@end

@implementation FLFollowUpController

void __65__FLFollowUpController_ICQUI__icq_dismissFollowUpWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v26;
    v8 = "Successfully cleared lockscreen notification for followup item ID %@";
    *&v5 = 138412546;
    v23 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 uniqueIdentifier];
        v12 = [v11 isEqualToString:*(a1 + 32)];

        if (v12)
        {
          v13 = *(a1 + 40);
          v24 = 0;
          v14 = [v13 clearNotificationForItem:v10 error:&v24];
          v15 = v24;
          v16 = _ICQGetLogSystem();
          v17 = v16;
          if (v14)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v18 = *(a1 + 32);
              *buf = 138412290;
              v30 = v18;
              _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v19 = v8;
            v20 = *(a1 + 32);
            v21 = [v15 localizedDescription];
            *buf = v23;
            v30 = v20;
            v8 = v19;
            v31 = 2112;
            v32 = v21;
            _os_log_error_impl(&dword_275572000, v17, OS_LOG_TYPE_ERROR, "Unable to clear lockscreen notification for followup item ID %@, error: %@", buf, 0x16u);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v6);
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end