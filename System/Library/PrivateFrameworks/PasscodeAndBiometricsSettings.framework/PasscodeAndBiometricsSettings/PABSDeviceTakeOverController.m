@interface PABSDeviceTakeOverController
+ (BOOL)isRatchetFeatureAvailable;
- (BOOL)canGateOperation:(unint64_t)a3;
- (BOOL)isRatchetEnabled;
- (BOOL)isStrictModeEnabled;
- (id)footerDescriptionOfDTORequirements;
- (id)getArmingOptionsDictionaryForIdentifier:(unint64_t)a3;
- (id)getAuthenticationFallbackDescriptionForIdentifier:(unint64_t)a3;
- (id)getInProgressDescriptionForIdentifier:(unint64_t)a3;
- (id)getOperationDeepLinkForIdentifier:(unint64_t)a3;
- (id)getOperationNameForIdentifier:(unint64_t)a3;
- (id)getTitleForIdentifier:(unint64_t)a3;
- (void)dealloc;
- (void)disableRatchetWithCompletion:(id)a3;
- (void)enableRatchetWithCompletion:(id)a3;
- (void)gateWithRatchetForOperation:(unint64_t)a3 forPresentingVC:(id)a4 completion:(id)a5;
- (void)performPreliminaryPreEnableDTOChecksWithCompletion:(id)a3;
- (void)proceedToEnableRatchetWithCompletion:(id)a3;
- (void)proceedToPeformBiometricLivenessIfNeededWithResultDictionary:(id)a3 withCompletion:(id)a4;
- (void)showAlertForFailureToGateForOperation:(unint64_t)a3 forPresentingVC:(id)a4;
- (void)toggleToStrictMode:(BOOL)a3 withCompletion:(id)a4;
@end

@implementation PABSDeviceTakeOverController

- (void)dealloc
{
  laContext = self->_laContext;
  if (laContext)
  {
    [(LAContext *)laContext invalidate];
  }

  v4.receiver = self;
  v4.super_class = PABSDeviceTakeOverController;
  [(PABSDeviceTakeOverController *)&v4 dealloc];
}

+ (BOOL)isRatchetFeatureAvailable
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 sf_isiPhone];

  v4 = _os_feature_enabled_impl();
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v3 & v4];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v4 & 1];
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Ratchet: %@ [isPhone: %@, FeatureEnabled: %@]", &v11, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3 & v4;
}

- (BOOL)isRatchetEnabled
{
  v2 = [MEMORY[0x277CD47B0] sharedInstance];
  v3 = [v2 isFeatureEnabled];

  return v3;
}

- (BOOL)isStrictModeEnabled
{
  v2 = [MEMORY[0x277CD47B0] sharedInstance];
  v3 = [v2 isFeatureStrictModeEnabled];

  return v3;
}

- (void)toggleToStrictMode:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CD47B0] sharedInstance];
  if (v4)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__PABSDeviceTakeOverController_toggleToStrictMode_withCompletion___block_invoke;
    v14[3] = &unk_279A037F8;
    v8 = &v15;
    v15 = v6;
    v9 = v6;
    [v7 enableFeatureStrictModeWithCompletion:v14];
  }

  else
  {
    v10 = [(PABSDeviceTakeOverController *)self laContext];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__PABSDeviceTakeOverController_toggleToStrictMode_withCompletion___block_invoke_6;
    v12[3] = &unk_279A037F8;
    v8 = &v13;
    v13 = v6;
    v11 = v6;
    [v7 disableFeatureStrictModeWithContext:v10 completion:v12];
  }
}

void __66__PABSDeviceTakeOverController_toggleToStrictMode_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PABSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = [v3 description];
    }

    else
    {
      v5 = @"Succeeded";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "Ratchet: Turn on Strict Mode - %@", &v7, 0xCu);
    if (v3)
    {
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3 == 0);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__PABSDeviceTakeOverController_toggleToStrictMode_withCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PABSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = [v3 description];
    }

    else
    {
      v5 = @"Succeeded";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "Ratchet: Turn off Strict Mode - %@", &v7, 0xCu);
    if (v3)
    {
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3 == 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)gateWithRatchetForOperation:(unint64_t)a3 forPresentingVC:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(PABSDeviceTakeOverController *)self canGateOperation:a3];
  v11 = PABSLogForCategory(0);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = a3;
      _os_log_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_DEFAULT, "Ratchet: Performing gating check for identifier: %lu", buf, 0xCu);
    }

    v13 = objc_alloc(MEMORY[0x277CD47A8]);
    v14 = [(PABSDeviceTakeOverController *)self getOperationNameForIdentifier:a3];
    v15 = [v13 initWithIdentifier:v14];

    objc_initWeak(buf, self);
    v16 = [(PABSDeviceTakeOverController *)self getArmingOptionsDictionaryForIdentifier:a3];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __87__PABSDeviceTakeOverController_gateWithRatchetForOperation_forPresentingVC_completion___block_invoke;
    v18[3] = &unk_279A03820;
    objc_copyWeak(&v20, buf);
    v19 = v9;
    [v15 armWithOptions:v16 completion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PABSDeviceTakeOverController gateWithRatchetForOperation:forPresentingVC:completion:];
    }

    (*(v9 + 2))(v9, 2);
    [(PABSDeviceTakeOverController *)self showAlertForFailureToGateForOperation:a3 forPresentingVC:v8];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __87__PABSDeviceTakeOverController_gateWithRatchetForOperation_forPresentingVC_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:&unk_286FD6BA0];
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained setLaContext:v7];
      v10 = PABSLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_25E0E9000, v10, OS_LOG_TYPE_DEFAULT, "Ratchet: Proceeding to perform critical operation as gating was successful", v12, 2u);
      }
    }

    else
    {
      v10 = PABSLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __87__PABSDeviceTakeOverController_gateWithRatchetForOperation_forPresentingVC_completion___block_invoke_cold_1();
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = PABSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __87__PABSDeviceTakeOverController_gateWithRatchetForOperation_forPresentingVC_completion___block_invoke_cold_2(v6);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (id)getArmingOptionsDictionaryForIdentifier:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(PABSDeviceTakeOverController *)self getTitleForIdentifier:a3];
  [v5 setObject:v6 forKey:&unk_286FD6BB8];

  v7 = PABS_LocalizedStringForPasscodeLock(@"DTO_BEGIN_DESCRIPTION_DEFAULT");
  [v5 setObject:v7 forKey:&unk_286FD6BD0];

  v8 = [(PABSDeviceTakeOverController *)self getInProgressDescriptionForIdentifier:a3];
  [v5 setObject:v8 forKey:&unk_286FD6BE8];

  v9 = [(PABSDeviceTakeOverController *)self getAuthenticationFallbackDescriptionForIdentifier:a3];
  [v5 setObject:v9 forKey:&unk_286FD6C00];

  v10 = PABS_LocalizedStringForPasscodeLock(@"DTO_NOTIFICATION_DESCRIPTION_DEFAULT");
  [v5 setObject:v10 forKey:&unk_286FD6BA0];

  v11 = MEMORY[0x277CBEBC0];
  v12 = [(PABSDeviceTakeOverController *)self getOperationDeepLinkForIdentifier:a3];
  v13 = [v11 URLWithString:v12];
  [v5 setObject:v13 forKey:&unk_286FD6C18];

  [v5 setObject:MEMORY[0x277CBEC38] forKey:&unk_286FD6C30];
  if ([(PABSDeviceTakeOverController *)self isABiometricModifyingIdentifier:a3])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKey:&unk_286FD6C48];
  }

  v14 = [v5 copy];

  return v14;
}

- (BOOL)canGateOperation:(unint64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CD47B0] sharedInstance];
  v5 = [v4 isSensorTrusted];

  v6 = +[PABSBiometrics sharedInstance];
  v7 = [v6 identitiesForIdentityType:1];

  if (v7)
  {
    v8 = [v7 count];
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5 ^ 1;
  }

  if (a3 == 4)
  {
    v10 = (v8 != 1) | v5 ^ 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = PABSLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v10 & 1];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
    v17 = 138413058;
    v18 = v12;
    v19 = 2048;
    v20 = a3;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "Ratchet: Gating precheck: %@ for identifier: %lu [TrustedSensor:%@ | IdentitiesCount:%@]", &v17, 0x2Au);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (void)showAlertForFailureToGateForOperation:(unint64_t)a3 forPresentingVC:(id)a4
{
  v4 = a4;
  v5 = PSSupportsMesa();
  v6 = v5 == 0;
  if (v5)
  {
    v7 = @"DTO_ALERT_CANNOT_DELETE_TOUCH_ID_TITLE";
  }

  else
  {
    v7 = @"DTO_ALERT_CANNOT_RESET_FACE_ID_TITLE";
  }

  if (v6)
  {
    v8 = @"DTO_ALERT_CANNOT_RESET_FACE_ID_MESSAGE";
  }

  else
  {
    v8 = @"DTO_ALERT_CANNOT_DELETE_TOUCH_ID_MESSAGE";
  }

  v9 = PABS_LocalizedStringForPasscodeLock(v7);
  v10 = PABS_LocalizedStringForPasscodeLock(v8);
  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
  v12 = MEMORY[0x277D750F8];
  v13 = PABS_LocalizedStringForPasscodeLock(@"DTO_ALERT_OK_BUTTON");
  v14 = [v12 actionWithTitle:v13 style:0 handler:&__block_literal_global_2];
  [v11 addAction:v14];

  v15 = PABSLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_25E0E9000, v15, OS_LOG_TYPE_DEFAULT, "Ratchet: Gating precheck [Failed] - Alert [Shown]", v17, 2u);
  }

  if (v4)
  {
    [v4 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    v16 = PABSLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PABSDeviceTakeOverController showAlertForFailureToGateForOperation:forPresentingVC:];
    }
  }
}

void __86__PABSDeviceTakeOverController_showAlertForFailureToGateForOperation_forPresentingVC___block_invoke()
{
  v0 = PABSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_25E0E9000, v0, OS_LOG_TYPE_DEFAULT, "Ratchet: Gating precheck [Failed] - Alert [Dismissed]", v1, 2u);
  }
}

- (void)performPreliminaryPreEnableDTOChecksWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277CD47B0] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__PABSDeviceTakeOverController_performPreliminaryPreEnableDTOChecksWithCompletion___block_invoke;
  v7[3] = &unk_279A03868;
  v6 = v4;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [v5 checkCanEnableFeatureWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __83__PABSDeviceTakeOverController_performPreliminaryPreEnableDTOChecksWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = [WeakRetained isRatchetEnabled];
    }

    else
    {
      v11 = PABSLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __83__PABSDeviceTakeOverController_performPreliminaryPreEnableDTOChecksWithCompletion___block_invoke_cold_1();
      }

      v9 = 0;
    }

    v12 = PABSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = [v6 description];
      v21 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      v22 = 138412802;
      v23 = v20;
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v21;
      _os_log_error_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_ERROR, "Ratchet: Preliminary check failed: Error: %@ - %@ [Current Ratchet status: %@]", &v22, 0x20u);
    }

    v13 = [v6 domain];
    v14 = [v13 isEqualToString:*MEMORY[0x277CD4780]];

    if (v14)
    {
      if (v8)
      {
        if ([v6 code] == 4 || objc_msgSend(v6, "code") == 5)
        {
          v15 = *(a1 + 32);
          v16 = [v8 footerDescriptionOfDTORequirements];
          (*(v15 + 16))(v15, v9, v16);
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        v17 = PABSLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __83__PABSDeviceTakeOverController_performPreliminaryPreEnableDTOChecksWithCompletion___block_invoke_cold_2();
        }
      }
    }

    v18 = *(a1 + 32);
    v16 = PABS_LocalizedStringForPasscodeLock(@"DTO_GROUP_DISABLED_REASON_FOOTER_DESCRIPTION_DEFAULT");
    (*(v18 + 16))(v18, 0, v16);
    goto LABEL_21;
  }

  v10 = PABSLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_25E0E9000, v10, OS_LOG_TYPE_DEFAULT, "Ratchet: Preliminary check succeeded", &v22, 2u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_22:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)footerDescriptionOfDTORequirements
{
  if (PSIsPearlAvailable())
  {
    v2 = @"DTO_GROUP_DISABLED_REASON_FOOTER_DESCRIPTION_FACE_ID";
  }

  else
  {
    v2 = @"DTO_GROUP_DISABLED_REASON_FOOTER_DESCRIPTION_TOUCH_ID";
  }

  v3 = PABS_LocalizedStringForPasscodeLock(v2);

  return v3;
}

- (void)enableRatchetWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277CD47B0] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__PABSDeviceTakeOverController_enableRatchetWithCompletion___block_invoke;
  v7[3] = &unk_279A03868;
  v6 = v4;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [v5 checkCanEnableFeatureWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__PABSDeviceTakeOverController_enableRatchetWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__PABSDeviceTakeOverController_enableRatchetWithCompletion___block_invoke_cold_1(v6);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained proceedToPeformBiometricLivenessIfNeededWithResultDictionary:v5 withCompletion:*(a1 + 32)];
    }

    else
    {
      v10 = PABSLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __60__PABSDeviceTakeOverController_enableRatchetWithCompletion___block_invoke_cold_2();
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)proceedToPeformBiometricLivenessIfNeededWithResultDictionary:(id)a3 withCompletion:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:&unk_286FD6C60];
  v9 = [v8 BOOLValue];

  v10 = PABSLogForCategory(0);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25E0E9000, v10, OS_LOG_TYPE_DEFAULT, "Ratchet: Biometric liveness confirmed already", &buf, 2u);
    }

    [(PABSDeviceTakeOverController *)self proceedToEnableRatchetWithCompletion:v7];
  }

  else
  {
    if (v11)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25E0E9000, v10, OS_LOG_TYPE_DEFAULT, "Ratchet: Confirming Biometric liveness", &buf, 2u);
    }

    objc_initWeak(&buf, self);
    v12 = objc_alloc_init(MEMORY[0x277CD4790]);
    v22 = &unk_286FD6C18;
    v13 = PABS_LocalizedStringForPasscodeLock(@"DTO_BIOMETRIC_LIVENESS_NEEDED_REASON");
    v23[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __108__PABSDeviceTakeOverController_proceedToPeformBiometricLivenessIfNeededWithResultDictionary_withCompletion___block_invoke;
    v17[3] = &unk_279A03890;
    v15 = v12;
    v18 = v15;
    v19 = v7;
    objc_copyWeak(&v20, &buf);
    [v15 evaluatePolicy:1 options:v14 reply:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&buf);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __108__PABSDeviceTakeOverController_proceedToPeformBiometricLivenessIfNeededWithResultDictionary_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = PABSLogForCategory(0);
  v6 = v5;
  if (a3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __108__PABSDeviceTakeOverController_proceedToPeformBiometricLivenessIfNeededWithResultDictionary_withCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "Ratchet: Confirming Biometric liveness: Succeeded", v10, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained proceedToEnableRatchetWithCompletion:*(a1 + 40)];
    }

    else
    {
      v9 = PABSLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __108__PABSDeviceTakeOverController_proceedToPeformBiometricLivenessIfNeededWithResultDictionary_withCompletion___block_invoke_cold_2();
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)proceedToEnableRatchetWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CD47B0] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__PABSDeviceTakeOverController_proceedToEnableRatchetWithCompletion___block_invoke;
  v6[3] = &unk_279A038B8;
  v7 = v3;
  v5 = v3;
  [v4 enableFeatureWithReply:v6];
}

void __69__PABSDeviceTakeOverController_proceedToEnableRatchetWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PABSLogForCategory(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __69__PABSDeviceTakeOverController_proceedToEnableRatchetWithCompletion___block_invoke_cold_1(v4);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "Ratchet: Enabled successfully", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)disableRatchetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CD47B0] sharedInstance];
  v6 = [(PABSDeviceTakeOverController *)self laContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__PABSDeviceTakeOverController_disableRatchetWithCompletion___block_invoke;
  v8[3] = &unk_279A037F8;
  v9 = v4;
  v7 = v4;
  [v5 disableFeatureWithContext:v6 completion:v8];
}

void __61__PABSDeviceTakeOverController_disableRatchetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PABSLogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__PABSDeviceTakeOverController_disableRatchetWithCompletion___block_invoke_cold_1(v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Ratchet: Disabled successfully", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getOperationDeepLinkForIdentifier:(unint64_t)a3
{
  if (a3 > 0xA)
  {
    v5 = @"settings-navigation://com.apple.Settings.Passcode";
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"settings-navigation://com.apple.Settings.Passcode#", off_279A038D8[a3], v3];
  }

  return v5;
}

- (id)getOperationNameForIdentifier:(unint64_t)a3
{
  if (a3 > 0xA)
  {
    return @"Default";
  }

  else
  {
    return off_279A03930[a3];
  }
}

- (id)getTitleForIdentifier:(unint64_t)a3
{
  v4 = PABS_LocalizedStringForPasscodeLock(@"DTO_BEGIN_TITLE_DEFAULT");
  if (a3 > 4)
  {
    if (a3 > 7)
    {
      if (a3 - 8 < 2)
      {
        if (PSIsPearlAvailable())
        {
          v5 = @"DTO_BEGIN_TITLE_CHANGE_FACE_ID";
        }

        else
        {
          v5 = @"DTO_BEGIN_TITLE_CHANGE_TOUCH_ID";
        }

        goto LABEL_21;
      }

      if (a3 != 10)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (a3 == 5)
      {
        v5 = @"DTO_BEGIN_TITLE_ENROLL_TOUCH_ID";
        goto LABEL_21;
      }

      if (a3 != 6)
      {
        v5 = @"DTO_BEGIN_TITLE_CHANGE_PASSCODE";
        goto LABEL_21;
      }
    }

    v5 = @"DTO_BEGIN_TITLE_CHANGE_STOLEN_DEVICE_PROTECTION";
    goto LABEL_21;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_22;
      }

      v5 = @"DTO_BEGIN_TITLE_ENROLL_FACE_ID";
      goto LABEL_21;
    }
  }

  else if (a3 - 2 >= 2)
  {
    if (a3 != 4)
    {
      goto LABEL_22;
    }

    v5 = @"DTO_BEGIN_TITLE_CHANGE_TOUCH_ID";
    goto LABEL_21;
  }

  v5 = @"DTO_BEGIN_TITLE_CHANGE_FACE_ID";
LABEL_21:
  v6 = PABS_LocalizedStringForPasscodeLock(v5);

  v4 = v6;
LABEL_22:

  return v4;
}

- (id)getInProgressDescriptionForIdentifier:(unint64_t)a3
{
  v4 = PABS_LocalizedStringForPasscodeLock(@"DTO_IN_PROGRESS_DESCRIPTION_DEFAULT");
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 == 6)
      {
        v5 = @"DTO_IN_PROGRESS_DESCRIPTION_TURN_OFF_STOLEN_DEVICE_PROTECTION";
      }

      else
      {
        v5 = @"DTO_IN_PROGRESS_DESCRIPTION_TURN_OFF_PASSCODE";
      }
    }

    else if (a3 - 8 >= 2)
    {
      if (a3 != 10)
      {
        goto LABEL_25;
      }

      v5 = @"DTO_IN_PROGRESS_DESCRIPTION_DOWNGRADE_SECURITY_FAMILIAR_ONLY";
    }

    else if (PSIsPearlAvailable())
    {
      v5 = @"DTO_IN_PROGRESS_DESCRIPTION_DISABLE_USING_FACE_ID_FOR_FEATURES";
    }

    else
    {
      v5 = @"DTO_IN_PROGRESS_DESCRIPTION_DISABLE_USING_TOUCH_ID_FOR_FEATURES";
    }
  }

  else if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = @"DTO_IN_PROGRESS_DESCRIPTION_SET_UP_FACE_ID_WITH_GLASSES";
    }

    else if (a3 == 4)
    {
      v5 = @"DTO_IN_PROGRESS_DESCRIPTION_DELETE_FINGERPRINT";
    }

    else
    {
      v5 = @"DTO_IN_PROGRESS_DESCRIPTION_ADD_FINGERPRINT";
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v5 = @"DTO_IN_PROGRESS_DESCRIPTION_SET_UP_FACE_ID";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_25;
      }

      v5 = @"DTO_IN_PROGRESS_DESCRIPTION_SET_UP_FACE_ID_WITH_MASK";
    }
  }

  else
  {
    v5 = @"DTO_IN_PROGRESS_DESCRIPTION_RESET_FACE_ID";
  }

  v6 = PABS_LocalizedStringForPasscodeLock(v5);

  v4 = v6;
LABEL_25:

  return v4;
}

- (id)getAuthenticationFallbackDescriptionForIdentifier:(unint64_t)a3
{
  v4 = PABS_LocalizedStringForPasscodeLock(@"DTO_AUTHENTICATION_FALLBACK_DESCRIPTION_DEFAULT");
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 == 6)
      {
        v5 = @"DTO_AUTHENTICATION_FALLBACK_DESCRIPTION_TURN_OFF_STOLEN_DEVICE_PROTECTION";
      }

      else
      {
        v5 = @"DTO_AUTHENTICATION_FALLBACK_DESCRIPTION_TURN_OFF_PASSCODE";
      }
    }

    else
    {
      if (a3 - 8 >= 2)
      {
        if (a3 != 10)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (PSIsPearlAvailable())
        {
          v6 = @"DTO_AUTHENTICATION_FALLBACK_DESCRIPTION_DISABLE_USING_FACE_ID_FOR_FEATURES";
        }

        else
        {
          v6 = @"DTO_AUTHENTICATION_FALLBACK_DESCRIPTION_DISABLE_USING_TOUCH_ID_FOR_FEATURES";
        }

        v7 = PABS_LocalizedStringForPasscodeLock(v6);

        v4 = v7;
      }

      v5 = @"DTO_AUTHENTICATION_FALLBACK_DESCRIPTION_DOWNGRADE_SECURITY_FAMILIAR_ONLY";
    }
  }

  else if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = @"DTO_AUTHENTICATION_FALLBACK_DESCRIPTION_SET_UP_FACE_ID_WITH_GLASSES";
    }

    else if (a3 == 4)
    {
      v5 = @"DTO_AUTHENTICATION_FALLBACK_DESCRIPTION_DELETE_FINGERPRINT";
    }

    else
    {
      v5 = @"DTO_AUTHENTICATION_FALLBACK_DESCRIPTION_ADD_FINGERPRINT";
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v5 = @"DTO_AUTHENTICATION_FALLBACK_DESCRIPTION_SET_UP_FACE_ID";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_26;
      }

      v5 = @"DTO_AUTHENTICATION_FALLBACK_DESCRIPTION_SET_UP_FACE_ID_WITH_MASK";
    }
  }

  else
  {
    v5 = @"DTO_AUTHENTICATION_FALLBACK_DESCRIPTION_RESET_FACE_ID";
  }

  v8 = PABS_LocalizedStringForPasscodeLock(v5);

  v4 = v8;
LABEL_26:

  return v4;
}

- (void)gateWithRatchetForOperation:forPresentingVC:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_25E0E9000, v0, OS_LOG_TYPE_ERROR, "Ratchet: Cannot perform gating check for identifier: %lu", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __87__PABSDeviceTakeOverController_gateWithRatchetForOperation_forPresentingVC_completion___block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __60__PABSDeviceTakeOverController_enableRatchetWithCompletion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __69__PABSDeviceTakeOverController_proceedToEnableRatchetWithCompletion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __61__PABSDeviceTakeOverController_disableRatchetWithCompletion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end