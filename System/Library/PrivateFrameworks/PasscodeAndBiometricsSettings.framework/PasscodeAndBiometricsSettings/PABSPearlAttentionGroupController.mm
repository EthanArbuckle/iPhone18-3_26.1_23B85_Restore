@interface PABSPearlAttentionGroupController
- (BOOL)isPeriocularEnabled;
- (BOOL)useAlternateFooterTextForAttention;
- (PABSPearlAttentionGroupController)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (PSListController)listController;
- (PSSpecifier)groupSpecifier;
- (id)_pearlDevice;
- (id)attentionAware:(id)aware;
- (id)pearlUnlock:(id)unlock;
- (id)specifiers;
- (void)_pearlDevice;
- (void)didCancelEnteringPIN;
- (void)setAttentionAware:(id)aware specifier:(id)specifier;
- (void)setPearlUnlock:(id)unlock specifier:(id)specifier;
- (void)setProtectedCredentialsWithPasscode:(id)passcode;
@end

@implementation PABSPearlAttentionGroupController

- (PABSPearlAttentionGroupController)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
  v11.receiver = self;
  v11.super_class = PABSPearlAttentionGroupController;
  v8 = [(PABSPearlAttentionGroupController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listController, controllerCopy);
    objc_storeWeak(&v9->_groupSpecifier, specifierCopy);
  }

  return v9;
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D3FAD8];
  v5 = PABS_LocalizedStringForPasscodeLock(@"ATTENTION_HEADER");
  v6 = [v4 groupSpecifierWithName:v5];

  if ([(PABSPearlAttentionGroupController *)self useAlternateFooterTextForAttention])
  {
    v7 = @"PEARL_ATTENTION_FOOTER_WITH_PERIOCULAR";
  }

  else
  {
    v7 = @"PEARL_ATTENTION_FOOTER";
  }

  v8 = PABS_LocalizedStringForPasscodeLock(v7);
  v9 = *MEMORY[0x277D3FF88];
  [v6 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];

  [v3 addObject:v6];
  v10 = MEMORY[0x277D3FAD8];
  v11 = PABS_LocalizedStringForPasscodeLock(@"PEARL_UNLOCK_ATTENTION_TITLE");
  v12 = [v10 preferenceSpecifierNamed:v11 target:self set:sel_setPearlUnlock_specifier_ get:sel_pearlUnlock_ detail:0 cell:6 edit:0];

  v13 = *MEMORY[0x277D3FFF0];
  [v12 setProperty:@"PearlUnlockAttention" forKey:*MEMORY[0x277D3FFF0]];
  v14 = *MEMORY[0x277D3FFB8];
  [v12 setProperty:@"PearlUnlockAttention" forKey:*MEMORY[0x277D3FFB8]];
  v15 = MEMORY[0x277CCABB0];
  v16 = +[PABSBiometrics sharedInstance];
  v17 = [v15 numberWithBool:{objc_msgSend(v16, "isEnrolledInFaceID")}];
  v18 = *MEMORY[0x277D3FF38];
  [v12 setProperty:v17 forKey:*MEMORY[0x277D3FF38]];

  [v3 addObject:v12];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v20 = PABS_LocalizedStringForPasscodeLock(@"PEARL_ATTENTION_FEATURES_FOOTER");
  [emptyGroupSpecifier setProperty:v20 forKey:v9];

  [v3 addObject:emptyGroupSpecifier];
  v21 = MEMORY[0x277D3FAD8];
  v22 = PABS_LocalizedStringForPasscodeLock(@"PEARL_ATTENTION_TITLE");
  v23 = [v21 preferenceSpecifierNamed:v22 target:self set:sel_setAttentionAware_specifier_ get:sel_attentionAware_ detail:0 cell:6 edit:0];

  [v23 setProperty:@"AttentionAware" forKey:v13];
  [v23 setProperty:@"AttentionAware" forKey:v14];
  v24 = [(PABSPearlAttentionGroupController *)self attentionAware:0];

  if (v24)
  {
    [v23 setProperty:MEMORY[0x277CBEC28] forKey:v18];
    v25 = PABSLogForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25E0E9000, v25, OS_LOG_TYPE_DEFAULT, "AttentionAwareFeatures [Disabled]", buf, 2u);
    }

    objc_initWeak(buf, self);
    v26 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PABSPearlAttentionGroupController_specifiers__block_invoke;
    block[3] = &unk_279A030A8;
    objc_copyWeak(&v32, buf);
    v31 = v23;
    dispatch_async(v26, block);

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  else
  {
    [v23 setProperty:MEMORY[0x277CBEC38] forKey:v18];
    v27 = PABSLogForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25E0E9000, v27, OS_LOG_TYPE_DEFAULT, "AttentionAwareFeatures [Enabled]", buf, 2u);
    }
  }

  [v3 addObject:v23];
  v28 = [v3 copy];

  return v28;
}

void __47__PABSPearlAttentionGroupController_specifiers__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getEREyeReliefClientClass_softClass;
  v20 = getEREyeReliefClientClass_softClass;
  if (!getEREyeReliefClientClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getEREyeReliefClientClass_block_invoke;
    v22 = &unk_279A03148;
    v23 = &v17;
    __getEREyeReliefClientClass_block_invoke(buf);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  v4 = objc_opt_new();
  v16 = 0;
  v5 = [v4 isDistanceSamplingEnabledWithError:&v16];
  v6 = v16;
  v7 = PABSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v9 = v8;
    v10 = &stru_286FD1EF8;
    if (v6)
    {
      v10 = v6;
    }

    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "Screen Distance Enablement [%@]%@", buf, 0x16u);
  }

  if ((v5 & 1) == 0)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__PABSPearlAttentionGroupController_specifiers__block_invoke_36;
    v12[3] = &unk_279A03080;
    objc_copyWeak(&v14, (a1 + 40));
    v13 = *(a1 + 32);
    v15 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v12);

    objc_destroyWeak(&v14);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __47__PABSPearlAttentionGroupController_specifiers__block_invoke_36(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) ^ 1u];
    [v3 setProperty:v4 forKey:*MEMORY[0x277D3FF38]];

    v5 = PABSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) identifier];
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "%@: - Reloading -", &v11, 0xCu);
    }

    v7 = [WeakRetained listController];
    [v7 reloadSpecifier:*(a1 + 32) animated:1];

    v8 = PABSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"enabled";
      if (*(a1 + 48))
      {
        v9 = @"disabled";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "AttentionAwareFeatures [%@]", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_pearlDevice
{
  v32 = *MEMORY[0x277D85DE8];
  pearlDevice = self->_pearlDevice;
  p_pearlDevice = &self->_pearlDevice;
  v3 = pearlDevice;
  if (pearlDevice)
  {
    v5 = v3;
  }

  else
  {
    location = p_pearlDevice;
    [MEMORY[0x277CF1BC0] availableDevices];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v28 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * v10);
          v24 = 0;
          v12 = [MEMORY[0x277CF1BA0] deviceWithDescriptor:v11 error:&v24];
          v13 = v24;
          if (v13)
          {
            v14 = PABSLogForCategory(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v30 = v13;
              _os_log_error_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_ERROR, "Could not get device: %@", buf, 0xCu);
            }
          }

          descriptor = [v12 descriptor];
          if ([descriptor type] == 2)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              objc_storeStrong(location, v12);
              v18 = PABSLogForCategory(0);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v20 = *location;
                *buf = 138412290;
                v30 = v20;
                _os_log_impl(&dword_25E0E9000, v18, OS_LOG_TYPE_DEFAULT, "Got device: %@", buf, 0xCu);
              }

              v5 = *location;
              v17 = v6;
              goto LABEL_24;
            }
          }

          else
          {
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v17 = PABSLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PABSPearlAttentionGroupController _pearlDevice];
    }

    v5 = 0;
LABEL_24:
  }

  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setProtectedCredentialsWithPasscode:(id)passcode
{
  v30 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    attentionDetectionEnabled = [(BKUserProtectedConfiguration *)self->_updatedConfiguration attentionDetectionEnabled];
    v7 = attentionDetectionEnabled;
    v8 = @"Has";
    if (!passcodeCopy)
    {
      v8 = @"No";
    }

    *buf = 138412546;
    *&buf[4] = attentionDetectionEnabled;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Updating Require Attention Needed to %@ [%@ passcode]", buf, 0x16u);
  }

  v9 = passcodeCopy;
  if (v9)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    v25 = 0;
    if (ACMContextCreate())
    {
      v10 = PABSLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PABSPearlAttentionGroupController setProtectedCredentialsWithPasscode:];
      }

      v11 = 0;
    }

    else
    {
      v22[1] = MEMORY[0x277D85DD0];
      v22[2] = 3221225472;
      v22[3] = __credentialSetWithPasscodeCredential_block_invoke;
      v22[4] = &unk_279A031A8;
      v24 = buf;
      v23 = v9;
      ACMContextGetExternalForm();
      v11 = *(*&buf[8] + 40);
      v10 = v23;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = 0;
  }

  _pearlDevice = [(PABSPearlAttentionGroupController *)self _pearlDevice];
  updatedConfiguration = self->_updatedConfiguration;
  v22[0] = 0;
  [_pearlDevice setProtectedConfiguration:updatedConfiguration forUser:getuid() credentialSet:v11 error:v22];
  v14 = v22[0];

  v15 = PABSLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_updatedConfiguration;
    *buf = 138412290;
    *&buf[4] = v16;
    _os_log_impl(&dword_25E0E9000, v15, OS_LOG_TYPE_DEFAULT, "Will set config: %@", buf, 0xCu);
  }

  if (v14)
  {
    v17 = PABSLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PABSPearlAttentionGroupController setProtectedCredentialsWithPasscode:];
    }
  }

  v18 = PABSLogForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v18, OS_LOG_TYPE_DEFAULT, "PearlUnlockAttention: - Reloading -", buf, 2u);
  }

  v19 = objc_loadWeakRetained(&self->_listController);
  v20 = [v19 specifierForID:@"PearlUnlockAttention"];
  [v19 reloadSpecifier:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)didCancelEnteringPIN
{
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "PearlUnlockAttention: Canceled entering PIN: - Reloading -", v6, 2u);
  }

  v4 = objc_loadWeakRetained(&self->_listController);
  v5 = [v4 specifierForID:@"PearlUnlockAttention"];
  [v4 reloadSpecifier:v5];
}

- (void)setAttentionAware:(id)aware specifier:(id)specifier
{
  v21 = *MEMORY[0x277D85DE8];
  awareCopy = aware;
  specifierCopy = specifier;
  v8 = [(PABSPearlAttentionGroupController *)self attentionAware:specifierCopy];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [specifierCopy identifier];
    v15 = 138412802;
    v16 = identifier;
    v17 = 2112;
    v18 = awareCopy;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", &v15, 0x20u);
  }

  bOOLValue = [awareCopy BOOLValue];
  if (bOOLValue == [v8 BOOLValue])
  {
    v12 = PABSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [specifierCopy identifier];
      v15 = 138412290;
      v16 = identifier2;
      _os_log_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", &v15, 0xCu);
    }
  }

  else
  {
    [awareCopy BOOLValue];
    _AXSSetAttentionAwarenessFeaturesEnabled();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)attentionAware:(id)aware
{
  v3 = MEMORY[0x277CCABB0];
  v4 = _AXSAttentionAwarenessFeaturesEnabled();

  return [v3 numberWithUnsignedChar:v4];
}

- (void)setPearlUnlock:(id)unlock specifier:(id)specifier
{
  v45 = *MEMORY[0x277D85DE8];
  unlockCopy = unlock;
  specifierCopy = specifier;
  v8 = [(PABSPearlAttentionGroupController *)self pearlUnlock:specifierCopy];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [specifierCopy identifier];
    *buf = 138412802;
    v40 = identifier;
    v41 = 2112;
    v42 = unlockCopy;
    v43 = 2112;
    v44 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", buf, 0x20u);
  }

  bOOLValue = [unlockCopy BOOLValue];
  if (bOOLValue != [v8 BOOLValue])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PABSPearlAttentionGroupController_setPearlUnlock_specifier___block_invoke;
    aBlock[3] = &unk_279A030D0;
    aBlock[4] = self;
    v12 = unlockCopy;
    v38 = v12;
    v13 = _Block_copy(aBlock);
    if ([v12 BOOLValue])
    {
      v13[2](v13);
LABEL_16:

      goto LABEL_17;
    }

    if (_os_feature_enabled_impl())
    {
      v16 = +[PABSBiometrics sharedInstance];
      if ([v16 isPeriocularEnrollmentSupported])
      {
        isPeriocularEnabled = [(PABSPearlAttentionGroupController *)self isPeriocularEnabled];

        if (isPeriocularEnabled)
        {
          v18 = @"PEARL_PERIOCULAR_UNLOCK_ALERT_BODY";
LABEL_15:
          v33 = PABS_LocalizedStringForPasscodeLock(v18);
          v19 = MEMORY[0x277D75110];
          v20 = PABS_LocalizedStringForPasscodeLock(@"PEARL_UNLOCK_ALERT_TITLE");
          v21 = [v19 alertControllerWithTitle:v20 message:v33 preferredStyle:1];

          v22 = MEMORY[0x277D750F8];
          v23 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __62__PABSPearlAttentionGroupController_setPearlUnlock_specifier___block_invoke_2;
          v36[3] = &unk_279A030F8;
          v36[4] = self;
          v32 = [v22 actionWithTitle:v23 style:1 handler:v36];

          [v21 addAction:v32];
          v24 = MEMORY[0x277D750F8];
          v25 = PABS_LocalizedStringForPasscodeLock(@"OK");
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __62__PABSPearlAttentionGroupController_setPearlUnlock_specifier___block_invoke_74;
          v34[3] = &unk_279A03120;
          v35 = v13;
          v26 = [v24 actionWithTitle:v25 style:0 handler:v34];

          [v21 addAction:v26];
          WeakRetained = objc_loadWeakRetained(&self->_listController);
          view = [WeakRetained view];
          window = [view window];
          rootViewController = [window rootViewController];
          [rootViewController presentViewController:v21 animated:1 completion:0];

          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    v18 = @"PEARL_UNLOCK_ALERT_BODY";
    goto LABEL_15;
  }

  v14 = PABSLogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [specifierCopy identifier];
    *buf = 138412290;
    v40 = identifier2;
    _os_log_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", buf, 0xCu);
  }

LABEL_17:
  v31 = *MEMORY[0x277D85DE8];
}

void __62__PABSPearlAttentionGroupController_setPearlUnlock_specifier___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CF1BE8]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  [*(*(a1 + 32) + 32) setAttentionDetectionEnabled:*(a1 + 40)];
  v5 = *(a1 + 32);
  v8 = [v5 listController];
  v6 = [v8 specifier];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D40100]];
  [v5 setProtectedCredentialsWithPasscode:v7];
}

void __62__PABSPearlAttentionGroupController_setPearlUnlock_specifier___block_invoke_2(uint64_t a1)
{
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "PearlUnlockAttention: Canceled alert: - Reloading -", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [v4 specifierForID:@"PearlUnlockAttention"];
  [WeakRetained reloadSpecifier:v5];
}

- (id)pearlUnlock:(id)unlock
{
  v17 = *MEMORY[0x277D85DE8];
  _pearlDevice = [(PABSPearlAttentionGroupController *)self _pearlDevice];
  v12 = 0;
  v4 = [_pearlDevice protectedConfigurationForUser:getuid() error:&v12];
  v5 = v12;

  if (v5)
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PABSPearlAttentionGroupController pearlUnlock:];
    }
  }

  v7 = PABSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    attentionDetectionEnabled = [v4 attentionDetectionEnabled];
    *buf = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = attentionDetectionEnabled;
    _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "Could attention detect: %@ %@", buf, 0x16u);
  }

  attentionDetectionEnabled2 = [v4 attentionDetectionEnabled];

  v10 = *MEMORY[0x277D85DE8];

  return attentionDetectionEnabled2;
}

- (BOOL)useAlternateFooterTextForAttention
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = +[PABSBiometrics sharedInstance];
    isPeriocularEnrollmentSupported = [v3 isPeriocularEnrollmentSupported];

    LOBYTE(v2) = isPeriocularEnrollmentSupported;
  }

  return v2;
}

- (BOOL)isPeriocularEnabled
{
  v2 = +[PABSBiometrics sharedInstance];
  v3 = [v2 deviceForType:2];

  v10 = 0;
  v4 = [v3 protectedConfigurationForUser:getuid() error:&v10];
  v5 = v4;
  if (v4)
  {
    v6 = v10 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    periocularFaceIDMatchEnabled = [v4 periocularFaceIDMatchEnabled];
    bOOLValue = [periocularFaceIDMatchEnabled BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

- (PSSpecifier)groupSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);

  return WeakRetained;
}

- (void)_pearlDevice
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setProtectedCredentialsWithPasscode:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setProtectedCredentialsWithPasscode:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pearlUnlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end