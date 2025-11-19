@interface ICQUIEligibleTipPicker
- (BOOL)_deviceStoragePassesCriteria:(id)a3 freeCloudStorage:(id)a4;
- (BOOL)_eligibleForSyncWithiCloudTipExcludingApps:(id)a3;
- (ICQUIEligibleTipPicker)initWithAccount:(id)a3 planRecommendation:(id)a4;
- (void)getFirstEligibleTipFromTips:(id)a3 completion:(id)a4;
@end

@implementation ICQUIEligibleTipPicker

- (ICQUIEligibleTipPicker)initWithAccount:(id)a3 planRecommendation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICQUIEligibleTipPicker;
  v9 = [(ICQUIEligibleTipPicker *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_planRecommendation, a4);
  }

  return v10;
}

- (void)getFirstEligibleTipFromTips:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[ICQUIEligibleTipPicker getFirstEligibleTipFromTips:completion:]";
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "%s determining first eligible tip from tips: %@", buf, 0x16u);
  }

  v9 = [v6 firstObject];
  v10 = [v9 criteria];

  if (v10)
  {
    planRecommendation = self->_planRecommendation;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__ICQUIEligibleTipPicker_getFirstEligibleTipFromTips_completion___block_invoke;
    v13[3] = &unk_27A65C1A0;
    v16 = v7;
    v14 = v6;
    v15 = self;
    [(ICQStoragePlanRecommendation *)planRecommendation calculateExtraQuotaNeededToSyncIsAccountFull:0 completion:v13];

    v12 = v16;
  }

  else
  {
    v12 = [v6 firstObject];
    (*(v7 + 2))(v7, v12);
  }
}

void __65__ICQUIEligibleTipPicker_getFirstEligibleTipFromTips_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v23 = v6;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = *(a1 + 32);
    v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      v11 = *MEMORY[0x277D7F310];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = *(a1 + 40);
          v15 = [v13 criteria];
          LODWORD(v14) = [v14 _deviceStoragePassesCriteria:v15 freeCloudStorage:v5];

          if (v14)
          {
            v16 = [v13 anchor];
            v17 = [v16 isEqualToString:v11];

            if (!v17)
            {
              goto LABEL_19;
            }

            v18 = *(a1 + 40);
            v19 = [v13 criteria];
            v20 = [v19 excludeApps];
            LODWORD(v18) = [v18 _eligibleForSyncWithiCloudTipExcludingApps:v20];

            if (v18)
            {
              v22 = _ICQGetLogSystem();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_275623000, v22, OS_LOG_TYPE_DEFAULT, "Found tip for Sync with iCloud section.", buf, 2u);
              }

LABEL_19:
              (*(*(a1 + 48) + 16))();

              goto LABEL_20;
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 48) + 16))();
LABEL_20:
    v7 = v23;
  }

  else
  {
    v21 = _ICQGetLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __65__ICQUIEligibleTipPicker_getFirstEligibleTipFromTips_completion___block_invoke_cold_1(v7, v21);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (BOOL)_eligibleForSyncWithiCloudTipExcludingApps:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [ICQUIDataclassHelper unsyncedDataclassesExcludingPhotosForAccount:self->_account];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += [v4 containsObject:*(*(&v23 + 1) + 8 * i)] ^ 1;
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v37 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = MEMORY[0x277D7F3E0];
  account = self->_account;
  v13 = [MEMORY[0x277CB8F48] defaultStore];
  v14 = [v11 isBackupEnabledForAccount:account accountStore:v13];

  v15 = [MEMORY[0x277D7F3E0] isICPLEnabledForAccount:self->_account];
  v16 = v15 ^ 1;
  if (v8 > 1)
  {
    v16 = 1;
  }

  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  v18 = _ICQGetLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"NO";
    v28 = "[ICQUIEligibleTipPicker _eligibleForSyncWithiCloudTipExcludingApps:]";
    *buf = 136316162;
    if (v14)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v30 = v20;
    v29 = 2112;
    if (v15)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v31 = 2112;
    v32 = v21;
    if (v17)
    {
      v19 = @"YES";
    }

    v33 = 2048;
    v34 = v8;
    v35 = 2112;
    v36 = v19;
    _os_log_impl(&dword_275623000, v18, OS_LOG_TYPE_DEFAULT, "%s: isiCloudBackupEnabled (%@) isiCPLEnabled (%@) numberOfUnsyncedDataclasses (%lu) is eligible? (%@)", buf, 0x34u);
  }

  return v17;
}

- (BOOL)_deviceStoragePassesCriteria:(id)a3 freeCloudStorage:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 minimumRange];
  v8 = [v7 unsignedIntegerValue];
  v9 = [v6 unsignedIntegerValue];

  v10 = [v6 unsignedIntegerValue];
  v11 = [v5 maximumRange];
  v12 = [v11 unsignedIntegerValue];

  v13 = _ICQGetLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 unsignedLongValue];
    v15 = @"NO";
    v20 = 136316162;
    v21 = "[ICQUIEligibleTipPicker _deviceStoragePassesCriteria:freeCloudStorage:]";
    v22 = 2112;
    v24 = 2048;
    if (v8 >= v9)
    {
      v16 = @"NO";
    }

    else
    {
      v16 = @"YES";
    }

    v23 = v5;
    v25 = v14;
    if (v10 < v12)
    {
      v15 = @"YES";
    }

    v26 = 2112;
    v27 = v16;
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "%s criteria (%@) and freeCloudStorage %lu: satisfies minimum range (%@) satisfies maximum range (%@)", &v20, 0x34u);
  }

  v18 = v8 < v9 && v10 < v12;
  return v18;
}

void __65__ICQUIEligibleTipPicker_getFirstEligibleTipFromTips_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[ICQUIEligibleTipPicker getFirstEligibleTipFromTips:completion:]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "%s - Failed to fetch storage space with error: %@, will not evaluate tip criteria.", &v2, 0x16u);
}

@end