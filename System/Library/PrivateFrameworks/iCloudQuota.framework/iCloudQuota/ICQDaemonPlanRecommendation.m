@interface ICQDaemonPlanRecommendation
+ (BOOL)isBackupEnabledForAccount:(id)a3;
+ (id)accountForID:(id)a3;
+ (int64_t)calculateExtraQuotaNeededToSyncWithBackupSize:(int64_t)a3;
+ (void)calculateExtraQuotaNeededToSyncForAccountWithID:(id)a3 isAccountFull:(BOOL)a4 completion:(id)a5;
+ (void)getLocalPhotoLibrarySizeWithCompletion:(id)a3;
@end

@implementation ICQDaemonPlanRecommendation

+ (void)calculateExtraQuotaNeededToSyncForAccountWithID:(id)a3 isAccountFull:(BOOL)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [a1 accountForID:a3];
  v9 = [a1 fullBackupSize];
  v10 = [v9 integerValue];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __104__ICQDaemonPlanRecommendation_calculateExtraQuotaNeededToSyncForAccountWithID_isAccountFull_completion___block_invoke;
  v12[3] = &unk_27A652968;
  v14 = v10;
  v15 = a1;
  v13 = v7;
  v11 = v7;
  [_ICQHelperFunctions remoteBackupSizeForAccount:v8 timeoutInSeconds:v12 completion:2.0];
}

void __104__ICQDaemonPlanRecommendation_calculateExtraQuotaNeededToSyncForAccountWithID_isAccountFull_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v4 - [v3 integerValue];
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v3 integerValue];
    v12 = *(a1 + 40);
    v13 = 134218496;
    v14 = v11;
    v15 = 2048;
    v16 = v12;
    v17 = 2048;
    v18 = v5;
    _os_log_debug_impl(&dword_275572000, v6, OS_LOG_TYPE_DEBUG, "Found remote backup size %ld, local storage size: %ld, difference: %ld", &v13, 0x20u);
  }

  v7 = [*(a1 + 48) calculateExtraQuotaNeededToSyncWithBackupSize:v5];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  (*(v8 + 16))(v8, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

+ (int64_t)calculateExtraQuotaNeededToSyncWithBackupSize:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3 & ~(a3 >> 63);
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Returning new total usage value: %ld", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)accountForID:(id)a3
{
  v3 = MEMORY[0x277CB8F48];
  v4 = a3;
  v5 = [v3 defaultStore];
  v6 = [v5 aa_appleAccountWithAltDSID:v4];

  return v6;
}

+ (BOOL)isBackupEnabledForAccount:(id)a3
{
  v3 = MEMORY[0x277CB8F48];
  v4 = a3;
  v5 = [v3 defaultStore];
  v6 = [_ICQHelperFunctions isBackupEnabledForAccount:v4 accountStore:v5];

  return v6;
}

+ (void)getLocalPhotoLibrarySizeWithCompletion:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__ICQDaemonPlanRecommendation_getLocalPhotoLibrarySizeWithCompletion___block_invoke;
  v5[3] = &unk_27A652990;
  v6 = v3;
  v4 = v3;
  [_ICQHelperFunctions getOriginalPhotosSizeWithCompletion:v5];
}

@end