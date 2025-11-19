@interface ICQOfferManager
@end

@implementation ICQOfferManager

void __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = [v6 localizedDescription];
      *buf = 138412546;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "Failed to load offer for event: %@, error: %@", buf, 0x16u);
    }

    v14 = *(*(a1 + 56) + 16);
    goto LABEL_14;
  }

  v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cloud.quota"];
  v8 = [v7 BOOLForKey:@"debug-trigger-event"];

  if (!v8)
  {
    v15 = *(a1 + 48);
    v16 = [v5 appLaunchLink];
    LODWORD(v15) = [v15 shouldPresentAppLaunchLink:v16];

    if (v15)
    {
      v17 = *(a1 + 48);
      v18 = [v5 appLaunchLink];
      v19 = [v18 link];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke_3;
      v23[3] = &unk_27A65C0D0;
      v27 = *(a1 + 56);
      v24 = v5;
      v22 = *(a1 + 40);
      v20 = v22.i64[0];
      v25 = vextq_s8(v22, v22, 8uLL);
      v26 = *(a1 + 32);
      [v17 _getCachedLinkData:v19 completion:v23];

      goto LABEL_17;
    }

    v21 = _ICQGetLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke_cold_1(a1, v21);
    }

    v14 = *(*(a1 + 56) + 16);
LABEL_14:
    v14();
    goto LABEL_17;
  }

  v9 = [v5 messageSpecificationForReason:*(a1 + 32) bundleId:*(a1 + 40) placement:@"InApp"];
  v10 = *(*(a1 + 56) + 16);
  if (v9)
  {
    if (v10())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke_2;
      block[3] = &unk_27A65B108;
      block[4] = *(a1 + 48);
      v29 = v5;
      v30 = v9;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    v10();
  }

LABEL_17:
}

void __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke_2(uint64_t a1)
{
  v2 = [[ICQUpgradeFlowManager alloc] initWithOffer:*(a1 + 40)];
  [*(a1 + 32) setFlowManager:v2];

  v3 = *(a1 + 32);
  v4 = [v3 flowManager];
  [v4 setDelegate:v3];

  v7 = [*(a1 + 32) flowManager];
  v5 = [*(a1 + 48) links];
  v6 = [v5 firstObject];
  [v7 beginRemoteUpgradeFlowWithICQLink:v6];
}

void __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke_3_cold_1(v4);
  }

  if ((*(*(a1 + 64) + 16))())
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke_52;
    v9[3] = &unk_27A65BFD0;
    v10 = *(a1 + 32);
    v5 = v3;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11 = v5;
    v12 = v6;
    v13 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v9);

    v8 = v10;
  }

  else
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke_3_cold_2(a1, v8);
    }
  }
}

uint64_t __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke_52(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) appLaunchLink];
    v4 = [v3 link];
    v5 = *(a1 + 40) != 0;
    v16 = 138412546;
    v17 = v4;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Presenting app launch link %@, has prefetched data %d", &v16, 0x12u);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) appLaunchLink];
  v8 = [v7 link];
  [v8 setServerUIContent:v6];

  v9 = [[ICQUpgradeFlowManager alloc] initWithOffer:*(a1 + 32)];
  [*(a1 + 48) setFlowManager:v9];

  v10 = *(a1 + 48);
  v11 = [v10 flowManager];
  [v11 setDelegate:v10];

  v12 = [*(a1 + 48) flowManager];
  v13 = [*(a1 + 32) appLaunchLink];
  v14 = [v13 link];
  [v12 beginRemoteUpgradeFlowWithICQLink:v14];

  return [*(a1 + 48) appLaunchLinkDidPresentForBundleIdentifier:*(a1 + 56)];
}

void __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_275623000, a2, OS_LOG_TYPE_DEBUG, "No AppLaunchLink found for bundle %@", &v3, 0xCu);
}

void __84__ICQOfferManager_ICQUI__fetchAndPresentUpsellForBundleIdentifier_event_completion___block_invoke_3_cold_2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Presenting app launch link for bundle %@, event %@, was cancelled by calling app", &v4, 0x16u);
}

@end