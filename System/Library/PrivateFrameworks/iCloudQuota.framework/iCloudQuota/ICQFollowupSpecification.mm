@interface ICQFollowupSpecification
@end

@implementation ICQFollowupSpecification

void __83___ICQFollowupSpecification_postFollowupWithController_replaceExisting_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v16 + 1) + 8 * v7) uniqueIdentifier];
        v9 = [*(a1 + 32) identifierPrefix];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          v13 = _ICQGetLogSystem();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [*(a1 + 32) identifierPrefix];
            *buf = 138412290;
            v21 = v14;
            _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "Found existing followup with id %@. Not reposting.", buf, 0xCu);
          }

          (*(*(a1 + 48) + 16))();
          goto LABEL_15;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) identifierPrefix];
    *buf = 138412290;
    v21 = v12;
    _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "ICQFollowup not found with id %@. Posting now.", buf, 0xCu);
  }

  [*(a1 + 32) _postFollowupWithController:*(a1 + 40) completion:*(a1 + 48)];
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

void __68___ICQFollowupSpecification__postFollowupWithController_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) title];
    v8 = [*(a1 + 32) groupIdentifier];
    v9 = v8;
    v10 = @"failure: ";
    if (a2)
    {
      v10 = @"success";
    }

    v14 = 138413058;
    v15 = v7;
    v11 = &stru_288431E38;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    if (v5)
    {
      v11 = v5;
    }

    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Posted ICQFollowup item (title:%@ group:%@) %@%@", &v14, 0x2Au);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __63___ICQFollowupSpecification_clearLegacyFollowupWithController___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = [v4 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "legacy ICQFollowup items clear completed with success: %@, error: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __53___ICQFollowupSpecification_sharedFollowUpController__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.icloud.quota"];
  v1 = sharedFollowUpController_controller;
  sharedFollowUpController_controller = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __82___ICQFollowupSpecification_clearNotificationWithController_offerType_completion___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 uniqueIdentifier];
        v10 = [v9 isEqualToString:a1[4]];

        if (v10)
        {
          v11 = a1[5];
          v14 = 0;
          [v11 clearNotificationForItem:v8 error:&v14];
          v12 = v14;
          (*(a1[6] + 16))();

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

@end