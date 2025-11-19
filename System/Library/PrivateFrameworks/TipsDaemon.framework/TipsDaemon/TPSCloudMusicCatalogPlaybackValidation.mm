@interface TPSCloudMusicCatalogPlaybackValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSCloudMusicCatalogPlaybackValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v5 = objc_alloc(MEMORY[0x277D7FC30]);
  v6 = [MEMORY[0x277D7FCA0] activeAccount];
  v7 = [v5 initWithIdentity:v6];

  v8 = [objc_alloc(MEMORY[0x277D7FB88]) initWithStoreRequestContext:v7];
  [v8 setShouldReturnLastKnownStatusOnly:1];
  v9 = [MEMORY[0x277D7FB78] sharedStatusController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__TPSCloudMusicCatalogPlaybackValidation_validateWithCompletion___block_invoke;
  v11[3] = &unk_2789B1198;
  v13 = v14;
  v11[4] = self;
  v10 = v4;
  v12 = v10;
  [v9 performSubscriptionStatusRequest:v8 withCompletionHandler:v11];

  _Block_object_dispose(v14, 8);
}

void __65__TPSCloudMusicCatalogPlaybackValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    v7 = [v5 subscriptionStatus];
    *(*(*(a1 + 48) + 8) + 24) = [v7 statusType] == 1;
  }

  v8 = *(*(*(a1 + 48) + 8) + 24);
  v9 = [*(a1 + 32) BOOLValue];
  v10 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __61__TPSTravelESimEligibilityValidation_validateWithCompletion___block_invoke_cold_1((a1 + 32), v8 == v9, v10);
  }

  (*(*(a1 + 40) + 16))();
}

@end