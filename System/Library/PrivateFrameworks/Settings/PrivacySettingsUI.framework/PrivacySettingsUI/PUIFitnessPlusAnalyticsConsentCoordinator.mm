@interface PUIFitnessPlusAnalyticsConsentCoordinator
- (BOOL)fetchAnalyticsConsent;
- (PUIFitnessPlusAnalyticsConsentCoordinator)init;
- (void)fetchSubscriptionStatusWithCompletion:(id)a3;
- (void)setAnalyticsConsent:(BOOL)a3 completion:(id)a4;
@end

@implementation PUIFitnessPlusAnalyticsConsentCoordinator

- (PUIFitnessPlusAnalyticsConsentCoordinator)init
{
  v3.receiver = self;
  v3.super_class = PUIFitnessPlusAnalyticsConsentCoordinator;
  return [(PUIFitnessPlusAnalyticsConsentCoordinator *)&v3 init];
}

- (BOOL)fetchAnalyticsConsent
{
  v11 = *MEMORY[0x277D85DE8];
  AMSAcknowledgePrivacyTaskClass = getAMSAcknowledgePrivacyTaskClass();
  v3 = getOBPrivacyImproveFitnessPlusIdentifier();
  LODWORD(AMSAcknowledgePrivacyTaskClass) = [AMSAcknowledgePrivacyTaskClass hasPreviouslyAcknowledgedPrivacyIdentifier:v3];

  v4 = getAMSAcknowledgePrivacyTaskClass();
  v5 = getOBPrivacyImproveFitnessPlusIdentifier();
  LODWORD(v4) = [v4 hasRejectedPrivacyIdentifier:v5];

  v6 = AMSAcknowledgePrivacyTaskClass & (v4 ^ 1);
  v7 = _PUILoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v6;
    _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "PUIFitnessPlusAnalyticsConsentCoordinator isOptedIn %d", v10, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setAnalyticsConsent:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  v6 = objc_alloc(getAMSAcknowledgePrivacyTaskClass());
  v7 = getOBPrivacyImproveFitnessPlusIdentifier();
  v8 = [v6 initWithPrivacyIdentifier:v7];

  if (a3)
  {
    [v8 acknowledgePrivacy];
  }

  else
  {
    [v8 rejectPrivacy];
  }
  v9 = ;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__PUIFitnessPlusAnalyticsConsentCoordinator_setAnalyticsConsent_completion___block_invoke;
  v11[3] = &unk_279BA0F58;
  v13 = a3;
  v12 = v5;
  v10 = v5;
  [v9 addFinishBlock:v11];
}

void __76__PUIFitnessPlusAnalyticsConsentCoordinator_setAnalyticsConsent_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PUILoggingFacility();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v12 = 67109120;
      v13 = v8;
      _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "PUIFitnessPlusAnalyticsConsentCoordinator successfully updated opt in privacy preference: %d", &v12, 8u);
    }
  }

  else if (v7)
  {
    v9 = *(a1 + 40);
    v10 = [v5 localizedDescription];
    v12 = 67109378;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "PUIFitnessPlusAnalyticsConsentCoordinator failed to update opt in privacy preference to %d with error: %@", &v12, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchSubscriptionStatusWithCompletion:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getASDSubscriptionEntitlementsClass_softClass;
  v14 = getASDSubscriptionEntitlementsClass_softClass;
  if (!getASDSubscriptionEntitlementsClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getASDSubscriptionEntitlementsClass_block_invoke;
    v10[3] = &unk_279BA0D08;
    v10[4] = &v11;
    __getASDSubscriptionEntitlementsClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__PUIFitnessPlusAnalyticsConsentCoordinator_fetchSubscriptionStatusWithCompletion___block_invoke;
  v8[3] = &unk_279BA0F80;
  v9 = v3;
  v7 = v3;
  [v6 getSubscriptionEntitlementsForSegment:2 ignoreCaches:0 requestingBundleId:@"com.apple.Preferences" withCacheInfoResultHandler:v8];
}

void __83__PUIFitnessPlusAnalyticsConsentCoordinator_fetchSubscriptionStatusWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  if (!v8 || ![v8 count])
  {
    v10 = _PUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __83__PUIFitnessPlusAnalyticsConsentCoordinator_fetchSubscriptionStatusWithCompletion___block_invoke_cold_2(v9, v10);
    }

    goto LABEL_8;
  }

  if (a4)
  {
    v10 = _PUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __83__PUIFitnessPlusAnalyticsConsentCoordinator_fetchSubscriptionStatusWithCompletion___block_invoke_cold_1(v10);
    }

LABEL_8:

    (*(*(a1 + 32) + 16))();
    goto LABEL_9;
  }

  v12 = [v8 firstObject];
  if ([v12 isTrialPeriod] & 1) != 0 || (objc_msgSend(v12, "isOfferPeriod") & 1) != 0 || (objc_msgSend(v12, "isInGracePeriod"))
  {
    v13 = 1;
  }

  else
  {
    v15 = [v12 expiryDate];
    [v15 timeIntervalSinceReferenceDate];
    v17 = v16;
    v18 = [MEMORY[0x277CBEAA8] date];
    [v18 timeIntervalSinceReferenceDate];
    v13 = v17 > v19;
  }

  v14 = _PUILoggingFacility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v20[0] = 67109120;
    v20[1] = v13;
    _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "PUIFitnessPlusAnalyticsConsentCoordinator isSubscribed %d", v20, 8u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
}

void __83__PUIFitnessPlusAnalyticsConsentCoordinator_fetchSubscriptionStatusWithCompletion___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "PUIFitnessPlusAnalyticsConsentCoordinator failed to fetch subscription status with error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end