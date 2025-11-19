@interface SVXClientActivationService
- (BOOL)_requestPermissionToActivateWithContext:(id)a3;
- (BOOL)_validateButtonEventForActivation:(id)a3;
- (BOOL)_validateSystemEventForActivation:(id)a3;
- (SVXClientActivationService)initWithClientServiceProvider:(id)a3 analytics:(id)a4 performer:(id)a5;
- (SVXClientActivationServiceDelegate)delegate;
- (double)_buttonHoldToTalkThreshold;
- (void)_activateWithContext:(id)a3 completion:(id)a4;
- (void)_deactivateWithContext:(id)a3 completion:(id)a4;
- (void)_enqueueButtonEvent:(id)a3;
- (void)_performManualEndpointing;
- (void)_preheatTimerArrivedWithToken:(id)a3;
- (void)_preheatWithActivationSource:(int64_t)a3;
- (void)_prewarmWithContext:(id)a3 completion:(id)a4;
- (void)_processLastButtonActivationContext;
- (void)_startPreheatTimer;
- (void)_stopPreheatTimer;
- (void)_transitToAutomaticEndpointingWithTimestamp:(unint64_t)a3;
- (void)activateWithButtonEvent:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)activateWithSystemEvent:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)activateWithText:(id)a3 completion:(id)a4;
- (void)activateWithUserInfo:(id)a3 completion:(id)a4;
- (void)deactivateWithButtonEvent:(id)a3 userInfo:(id)a4 options:(id)a5 completion:(id)a6;
- (void)deactivateWithUserInfo:(id)a3 completion:(id)a4;
- (void)deactivateWithUserInfo:(id)a3 options:(id)a4 completion:(id)a5;
- (void)enqueueButtonEvent:(id)a3;
- (void)handleButtonEvent:(id)a3;
- (void)handleDidActivateWithContext:(id)a3;
- (void)handleDidDeactivateWithContext:(id)a3;
- (void)handleDidNotActivateWithContext:(id)a3 error:(id)a4;
- (void)handleRequestPermissionToActivateWithContext:(id)a3 completion:(id)a4;
- (void)handleWillActivateWithContext:(id)a3;
- (void)handleWillDeactivateWithContext:(id)a3;
- (void)prewarmForSystemEvent:(id)a3 completion:(id)a4;
@end

@implementation SVXClientActivationService

- (SVXClientActivationServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_validateSystemEventForActivation:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CEF098];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v29 = 136315394;
    v30 = "[SVXClientActivationService _validateSystemEventForActivation:]";
    v31 = 2112;
    v32 = v3;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Validating system event %@ for activation...", &v29, 0x16u);
  }

  if (!v3)
  {
    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315138;
      v30 = "[SVXClientActivationService _validateSystemEventForActivation:]";
      _os_log_error_impl(&dword_2695B9000, v13, OS_LOG_TYPE_ERROR, "%s Rejected system event for activation because it is nil.", &v29, 0xCu);
    }

    goto LABEL_14;
  }

  v6 = [(__CFString *)v3 type];
  v7 = 1;
  if (v6 <= 6)
  {
    if ((v6 - 1) < 3)
    {
      goto LABEL_25;
    }
  }

  else if (v6 > 11)
  {
    if (v6 == 12)
    {
      goto LABEL_25;
    }

    if (v6 == 13)
    {
      v14 = [(__CFString *)v3 speechSynthesisRequest];

      if (!v14)
      {
        v15 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          v10 = v15;
          v16 = [(__CFString *)v3 type];
          if (v16 > 0xD)
          {
            v17 = @"(unknown)";
          }

          else
          {
            v17 = off_279C68068[v16];
          }

          v27 = v17;
          v29 = 136315394;
          v30 = "[SVXClientActivationService _validateSystemEventForActivation:]";
          v31 = 2112;
          v32 = v27;
          v28 = "%s Rejected system event for activation because the type is %@, but speechSynthesisRequest is nil.";
          goto LABEL_40;
        }

        goto LABEL_14;
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (v6 == 7)
    {
      v18 = [(__CFString *)v3 deviceSetupFlowScene];

      if (!v18)
      {
        v24 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          v10 = v24;
          v25 = [(__CFString *)v3 type];
          if (v25 > 0xD)
          {
            v26 = @"(unknown)";
          }

          else
          {
            v26 = off_279C68068[v25];
          }

          v27 = v26;
          v29 = 136315394;
          v30 = "[SVXClientActivationService _validateSystemEventForActivation:]";
          v31 = 2112;
          v32 = v27;
          v28 = "%s Rejected system event for activation because the type is %@, but the deviceSetupFlowScene is nil.";
          goto LABEL_40;
        }

        goto LABEL_14;
      }

      goto LABEL_24;
    }

    if (v6 == 8)
    {
      v8 = [(__CFString *)v3 storeDemo];

      if (!v8)
      {
        v9 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          v10 = v9;
          v11 = [(__CFString *)v3 type];
          if (v11 > 0xD)
          {
            v12 = @"(unknown)";
          }

          else
          {
            v12 = off_279C68068[v11];
          }

          v27 = v12;
          v29 = 136315394;
          v30 = "[SVXClientActivationService _validateSystemEventForActivation:]";
          v31 = 2112;
          v32 = v27;
          v28 = "%s Rejected system event for activation because the type is %@, but the storeDemo is nil.";
LABEL_40:
          _os_log_error_impl(&dword_2695B9000, v10, OS_LOG_TYPE_ERROR, v28, &v29, 0x16u);

          goto LABEL_14;
        }

        goto LABEL_14;
      }

LABEL_24:
      v7 = 1;
      goto LABEL_25;
    }
  }

  v21 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
  {
    v10 = v21;
    v22 = [(__CFString *)v3 type];
    if (v22 > 0xD)
    {
      v23 = @"(unknown)";
    }

    else
    {
      v23 = off_279C68068[v22];
    }

    v27 = v23;
    v29 = 136315394;
    v30 = "[SVXClientActivationService _validateSystemEventForActivation:]";
    v31 = 2112;
    v32 = v27;
    v28 = "%s Rejected system event for activation because the type is %@.";
    goto LABEL_40;
  }

LABEL_14:
  v7 = 0;
LABEL_25:

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_validateButtonEventForActivation:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CEF098];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[SVXClientActivationService _validateButtonEventForActivation:]";
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Validating button event %@ for activation...", &v17, 0x16u);
  }

  if (!v3)
  {
    v7 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[SVXClientActivationService _validateButtonEventForActivation:]";
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s Rejected button event for activation because it is nil.", &v17, 0xCu);
    }

    goto LABEL_13;
  }

  if ([(__CFString *)v3 type]!= 1)
  {
    v8 = *v4;
    if (!os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v6 = 0;
      goto LABEL_14;
    }

    v9 = v8;
    v10 = [(__CFString *)v3 type];
    if (v10 > 2)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_279C68050[v10];
    }

    v15 = v11;
    v17 = 136315394;
    v18 = "[SVXClientActivationService _validateButtonEventForActivation:]";
    v19 = 2112;
    v20 = v15;
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s Rejected button event for activation because the type is %@.", &v17, 0x16u);

LABEL_18:
    goto LABEL_13;
  }

  if (![(__CFString *)v3 timestamp])
  {
    v12 = *v4;
    if (!os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v9 = v12;
    v16 = [(__CFString *)v3 timestamp];
    v17 = 136315394;
    v18 = "[SVXClientActivationService _validateButtonEventForActivation:]";
    v19 = 2048;
    v20 = v16;
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s Rejected button event for activation because the timestamp is %llu.", &v17, 0x16u);
    goto LABEL_18;
  }

  v6 = 1;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)_buttonHoldToTalkThreshold
{
  if (_buttonHoldToTalkThreshold_onceToken != -1)
  {
    dispatch_once(&_buttonHoldToTalkThreshold_onceToken, &__block_literal_global_21_6218);
  }

  return *&_buttonHoldToTalkThreshold_threshold;
}

void __56__SVXClientActivationService__buttonHoldToTalkThreshold__block_invoke()
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v0 = [v2 manualEndpointingThreshold];
  [v0 doubleValue];
  _buttonHoldToTalkThreshold_threshold = v1;
}

- (void)_preheatTimerArrivedWithToken:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(NSUUID *)self->_preheatToken isEqual:a3])
  {
    preheatToken = self->_preheatToken;
    self->_preheatToken = 0;

    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[SVXClientActivationService _preheatTimerArrivedWithToken:]";
      _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Preheat timer fired!", &v7, 0xCu);
    }

    [(SVXClientActivationService *)self _preheatWithActivationSource:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_stopPreheatTimer
{
  v8 = *MEMORY[0x277D85DE8];
  preheatToken = self->_preheatToken;
  if (preheatToken)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[SVXClientActivationService _stopPreheatTimer]";
      _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Stopped preheat timer.", &v6, 0xCu);
      preheatToken = self->_preheatToken;
    }

    self->_preheatToken = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startPreheatTimer
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_preheatToken)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAD78]);
    preheatToken = self->_preheatToken;
    self->_preheatToken = v3;

    [(SVXClientActivationService *)self _buttonHoldToPreheatThreshold];
    v6 = v5;
    performer = self->_performer;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__SVXClientActivationService__startPreheatTimer__block_invoke;
    v11[3] = &unk_279C68FE8;
    v11[4] = self;
    v8 = v3;
    v12 = v8;
    [(SVXPerforming *)performer performBlock:v11 afterDelay:v6];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[SVXClientActivationService _startPreheatTimer]";
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Started preheat timer for %f seconds.", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_preheatWithActivationSource:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[SVXClientActivationService _preheatWithActivationSource:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  clientServiceProvider = self->_clientServiceProvider;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__SVXClientActivationService__preheatWithActivationSource___block_invoke;
  v8[3] = &__block_descriptor_40_e28_v16__0___SVXClientService__8l;
  v8[4] = a3;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v8 errorHandler:&__block_literal_global_18_6226];
  v7 = *MEMORY[0x277D85DE8];
}

void __59__SVXClientActivationService__preheatWithActivationSource___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientActivationService _preheatWithActivationSource:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_transitToAutomaticEndpointingWithTimestamp:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SVXClientActivationService _transitToAutomaticEndpointingWithTimestamp:]";
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Endpoint trigger timestamp = %lld", buf, 0x16u);
  }

  clientServiceProvider = self->_clientServiceProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__SVXClientActivationService__transitToAutomaticEndpointingWithTimestamp___block_invoke;
  v9[3] = &__block_descriptor_40_e28_v16__0___SVXClientService__8l;
  v9[4] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__SVXClientActivationService__transitToAutomaticEndpointingWithTimestamp___block_invoke_2;
  v8[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v8[4] = a3;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v9 errorHandler:v8];
  v7 = *MEMORY[0x277D85DE8];
}

void __74__SVXClientActivationService__transitToAutomaticEndpointingWithTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[SVXClientActivationService _transitToAutomaticEndpointingWithTimestamp:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    v11 = 2048;
    v12 = v6;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@, Endpoint trigger timestamp = %lld", &v7, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performManualEndpointing
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SVXClientActivationService _performManualEndpointing]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(SVXClientServiceProviding *)self->_clientServiceProvider getClientServiceUsingBlock:&__block_literal_global_6234 errorHandler:&__block_literal_global_15];
  v4 = *MEMORY[0x277D85DE8];
}

void __55__SVXClientActivationService__performManualEndpointing__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientActivationService _performManualEndpointing]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_deactivateWithContext:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[SVXClientActivationService _deactivateWithContext:completion:]";
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  [(SVXClientActivationService *)self _stopPreheatTimer];
  clientServiceProvider = self->_clientServiceProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__SVXClientActivationService__deactivateWithContext_completion___block_invoke;
  v15[3] = &unk_279C67F98;
  v16 = v6;
  v17 = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__SVXClientActivationService__deactivateWithContext_completion___block_invoke_13;
  v13[3] = &unk_279C680E0;
  v14 = v17;
  v10 = v17;
  v11 = v6;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v15 errorHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __64__SVXClientActivationService__deactivateWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SVXClientActivationService__deactivateWithContext_completion___block_invoke_2;
  v5[3] = &unk_279C68EF8;
  v6 = v4;
  v7 = *(a1 + 40);
  [a2 deactivateWithContext:v6 completion:v5];
}

void __64__SVXClientActivationService__deactivateWithContext_completion___block_invoke_13(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientActivationService _deactivateWithContext:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __64__SVXClientActivationService__deactivateWithContext_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SVXClientActivationService _deactivateWithContext:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s done (context = %@)", &v6, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_activateWithContext:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[SVXClientActivationService _activateWithContext:completion:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  [(SVXClientActivationService *)self _stopPreheatTimer];
  clientServiceProvider = self->_clientServiceProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__SVXClientActivationService__activateWithContext_completion___block_invoke;
  v15[3] = &unk_279C675A0;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__SVXClientActivationService__activateWithContext_completion___block_invoke_12;
  v13[3] = &unk_279C680E0;
  v14 = v18;
  v10 = v18;
  v11 = v6;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v15 errorHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __62__SVXClientActivationService__activateWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SVXClientActivationService__activateWithContext_completion___block_invoke_2;
  v6[3] = &unk_279C68360;
  v7 = v4;
  v5 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = v5;
  [a2 activateWithContext:v7 completion:v6];
}

void __62__SVXClientActivationService__activateWithContext_completion___block_invoke_12(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientActivationService _activateWithContext:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __62__SVXClientActivationService__activateWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v17 = "[SVXClientActivationService _activateWithContext:completion:]_block_invoke_2";
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s done (context = %@, error = %@)", buf, 0x20u);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *(*(a1 + 40) + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SVXClientActivationService__activateWithContext_completion___block_invoke_11;
  v12[3] = &unk_279C68ED0;
  v13 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v8;
  v15 = v9;
  v10 = v3;
  [v7 performBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __62__SVXClientActivationService__activateWithContext_completion___block_invoke_11(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32) && [*(a1 + 40) source] == 1)
  {
    v2 = [*(a1 + 40) buttonEvent];
    v3 = [v2 type];

    if (v3 == 1)
    {
      v4 = [*(a1 + 40) copy];
      v5 = *(a1 + 48);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v7 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v8 = *(*(a1 + 48) + 40);
        v10 = 136315394;
        v11 = "[SVXClientActivationService _activateWithContext:completion:]_block_invoke";
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s _lastButtonActivationContext = %@", &v10, 0x16u);
      }

      [*(a1 + 48) _processLastButtonActivationContext];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_prewarmWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  clientServiceProvider = self->_clientServiceProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__SVXClientActivationService__prewarmWithContext_completion___block_invoke;
  v13[3] = &unk_279C67F98;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__SVXClientActivationService__prewarmWithContext_completion___block_invoke_3;
  v11[3] = &unk_279C680E0;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v13 errorHandler:v11];
}

void __61__SVXClientActivationService__prewarmWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SVXClientActivationService__prewarmWithContext_completion___block_invoke_2;
  v4[3] = &unk_279C68220;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 prewarmWithContext:v3 completion:v4];
}

void __61__SVXClientActivationService__prewarmWithContext_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientActivationService _prewarmWithContext:completion:]_block_invoke_3";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __61__SVXClientActivationService__prewarmWithContext_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_requestPermissionToActivateWithContext:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[SVXClientActivationService _requestPermissionToActivateWithContext:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 clientActivationService:self shouldActivateWithContext:v4];
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_processLastButtonActivationContext
{
  v55 = *MEMORY[0x277D85DE8];
  lastButtonActivationContext = self->_lastButtonActivationContext;
  if (lastButtonActivationContext)
  {
    if ([(SVXActivationContext *)lastButtonActivationContext source]== 1)
    {
      v4 = [(SVXActivationContext *)self->_lastButtonActivationContext buttonEvent];
      if ([(NSMutableArray *)v4 type]== 1)
      {
        v5 = [(NSMutableArray *)v4 timestamp];
        if (v5)
        {
          v6 = v5;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v7 = self->_queuedButtonEvents;
          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v42 objects:v54 count:16];
          if (v8)
          {
            v9 = v8;
            v41 = v4;
            v10 = 0;
            v11 = 0;
            v12 = *v43;
LABEL_7:
            v13 = 0;
            while (1)
            {
              if (*v43 != v12)
              {
                objc_enumerationMutation(v7);
              }

              v14 = *(*(&v42 + 1) + 8 * v13);
              v15 = [v14 timestamp];
              if (v15 < v6)
              {
                break;
              }

              v16 = v15;
              v17 = [v14 type];
              if (v17 == 2)
              {
                v19 = v14;

                v10 = [v19 timestamp];
                v20 = *MEMORY[0x277CEF098];
                if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  v47 = "[SVXClientActivationService _processLastButtonActivationContext]";
                  v48 = 2048;
                  v49 = *&v10;
                  _os_log_debug_impl(&dword_2695B9000, v20, OS_LOG_TYPE_DEBUG, "%s queuedButtonEvent: button up, timestamp = %lld", buf, 0x16u);
                }

                v11 = v19;
              }

              else if (v17 == 1)
              {
                v18 = *MEMORY[0x277CEF098];
                if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  v47 = "[SVXClientActivationService _processLastButtonActivationContext]";
                  v48 = 2048;
                  v49 = *&v16;
                  _os_log_debug_impl(&dword_2695B9000, v18, OS_LOG_TYPE_DEBUG, "%s queuedButtonEvent: button down, timestamp = %lld", buf, 0x16u);
                }

                if (v16 == v6)
                {
                  break;
                }
              }

              if (v9 == ++v13)
              {
                v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v42 objects:v54 count:16];
                if (v9)
                {
                  goto LABEL_7;
                }

                break;
              }
            }

            v4 = v41;
            if (v11)
            {
              v21 = *MEMORY[0x277CEF098];
              if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
              {
                v22 = self->_lastButtonActivationContext;
                *buf = 136315906;
                v47 = "[SVXClientActivationService _processLastButtonActivationContext]";
                v48 = 2112;
                v49 = *&v11;
                v50 = 2112;
                v51 = v41;
                v52 = 2112;
                v53 = v22;
                _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, "%s Matched button up event %@ for button down event %@ of last button activation context %@.", buf, 0x2Au);
              }

              -[SVXClientActivationService _timeIntervalBetweenButtonUpTime:lastActivationButtonTime:](self, "_timeIntervalBetweenButtonUpTime:lastActivationButtonTime:", [v11 timestamp], v6);
              v24 = v23;
              v25 = *MEMORY[0x277CEF098];
              if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v47 = "[SVXClientActivationService _processLastButtonActivationContext]";
                v48 = 2048;
                v49 = v24;
                _os_log_impl(&dword_2695B9000, v25, OS_LOG_TYPE_INFO, "%s buttonHoldDuration = %f", buf, 0x16u);
              }

              [(SVXClientActivationService *)self _buttonHoldToTalkThreshold];
              if (v24 <= v26)
              {
                [(SVXClientActivationService *)self _transitToAutomaticEndpointingWithTimestamp:v10];
              }

              else
              {
                [(SVXClientActivationService *)self _performManualEndpointing];
              }

              v37 = self->_lastButtonActivationContext;
              self->_lastButtonActivationContext = 0;

              [(AFAnalytics *)self->_analytics logEventWithType:1410 machAbsoluteTime:v6 context:0];
              [(AFAnalytics *)self->_analytics logEventWithType:1411 machAbsoluteTime:v10 context:0];

              goto LABEL_43;
            }
          }

          else
          {
          }

          v34 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
          {
            queuedButtonEvents = self->_queuedButtonEvents;
            v35 = self->_lastButtonActivationContext;
            *buf = 136315650;
            v47 = "[SVXClientActivationService _processLastButtonActivationContext]";
            v48 = 2112;
            v49 = *&v35;
            v50 = 2112;
            v51 = queuedButtonEvents;
            _os_log_error_impl(&dword_2695B9000, v34, OS_LOG_TYPE_ERROR, "%s Ignored because no matching button up event can be found in the button event queue. (_lastButtonActivationContext = %@, _queuedButtonEvents = %@)", buf, 0x20u);
          }

          goto LABEL_43;
        }

        v30 = *MEMORY[0x277CEF098];
        if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
LABEL_37:
          v33 = self->_lastButtonActivationContext;
          self->_lastButtonActivationContext = 0;

LABEL_43:
          goto LABEL_44;
        }

        v40 = self->_lastButtonActivationContext;
        *buf = 136315394;
        v47 = "[SVXClientActivationService _processLastButtonActivationContext]";
        v48 = 2112;
        v49 = *&v40;
        v32 = "%s Ignored because the timestamp of the button event in last button activation context is 0. (_lastButtonActivationContext = %@)";
      }

      else
      {
        v30 = *MEMORY[0x277CEF098];
        if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        v31 = self->_lastButtonActivationContext;
        *buf = 136315394;
        v47 = "[SVXClientActivationService _processLastButtonActivationContext]";
        v48 = 2112;
        v49 = *&v31;
        v32 = "%s Ignored because the type of the button event in last button activation context is not down. (_lastButtonActivationContext = %@)";
      }

      _os_log_error_impl(&dword_2695B9000, v30, OS_LOG_TYPE_ERROR, v32, buf, 0x16u);
      goto LABEL_37;
    }

    v28 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v39 = self->_lastButtonActivationContext;
      *buf = 136315394;
      v47 = "[SVXClientActivationService _processLastButtonActivationContext]";
      v48 = 2112;
      v49 = *&v39;
      _os_log_error_impl(&dword_2695B9000, v28, OS_LOG_TYPE_ERROR, "%s Ignored because the source of the last button activation context is not button. (_lastButtonActivationContext = %@)", buf, 0x16u);
    }

    v29 = self->_lastButtonActivationContext;
    self->_lastButtonActivationContext = 0;
  }

  else
  {
    v27 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v47 = "[SVXClientActivationService _processLastButtonActivationContext]";
      _os_log_impl(&dword_2695B9000, v27, OS_LOG_TYPE_INFO, "%s Ignored because the last button activation context is nil.", buf, 0xCu);
    }
  }

LABEL_44:
  v38 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueButtonEvent:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 type];
    if (v7 > 2)
    {
      v8 = @"(unknown)";
    }

    else
    {
      v8 = off_279C68050[v7];
    }

    v9 = v8;
    *buf = 136315650;
    *&buf[4] = "[SVXClientActivationService _enqueueButtonEvent:]";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2048;
    v24 = [v4 timestamp];
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s type = %@, timestamp = %llu", buf, 0x20u);
  }

  queuedButtonEvents = self->_queuedButtonEvents;
  if (!queuedButtonEvents)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    v12 = self->_queuedButtonEvents;
    self->_queuedButtonEvents = v11;

    queuedButtonEvents = self->_queuedButtonEvents;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __50__SVXClientActivationService__enqueueButtonEvent___block_invoke;
  v20 = &unk_279C67578;
  v13 = v4;
  v21 = v13;
  v22 = buf;
  [(NSMutableArray *)queuedButtonEvents enumerateObjectsUsingBlock:&v17];
  v14 = self->_queuedButtonEvents;
  if (*(*&buf[8] + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)v14 addObject:v13, v17, v18, v19, v20];
  }

  else
  {
    [(NSMutableArray *)v14 insertObject:v13 atIndex:v17, v18, v19, v20];
  }

  if ([(NSMutableArray *)self->_queuedButtonEvents count]>= 0x11)
  {
    [(NSMutableArray *)self->_queuedButtonEvents removeLastObject];
  }

  [(SVXClientActivationService *)self _stopPreheatTimer];
  v15 = [v13 type];
  if (v15 == 2)
  {
    [(SVXClientActivationService *)self _processLastButtonActivationContext];
  }

  else if (v15 == 1)
  {
    [(SVXClientActivationService *)self _startPreheatTimer];
  }

  _Block_object_dispose(buf, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __50__SVXClientActivationService__enqueueButtonEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 timestamp];
  v10 = [v8 timestamp];

  if (v9 > v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)deactivateWithButtonEvent:(id)a3 userInfo:(id)a4 options:(id)a5 completion:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = mach_absolute_time();
  v15 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v27 = "[SVXClientActivationService deactivateWithButtonEvent:userInfo:options:completion:]";
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s buttonEvent = %@, userInfo = %@, options = %@", buf, 0x2Au);
  }

  v16 = [SVXDeactivationContext alloc];
  v17 = SVXClientInfoGetCurrent();
  v18 = [(SVXDeactivationContext *)v16 initWithSource:1 timestamp:v14 buttonEvent:v10 clientInfo:v17 userInfo:v11 options:v12];

  performer = self->_performer;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__SVXClientActivationService_deactivateWithButtonEvent_userInfo_options_completion___block_invoke;
  v23[3] = &unk_279C68EA8;
  v23[4] = self;
  v24 = v18;
  v25 = v13;
  v20 = v13;
  v21 = v18;
  [(SVXPerforming *)performer performBlock:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __84__SVXClientActivationService_deactivateWithButtonEvent_userInfo_options_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__SVXClientActivationService_deactivateWithButtonEvent_userInfo_options_completion___block_invoke_2;
  v5[3] = &unk_279C68EF8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _deactivateWithContext:v3 completion:v5];
}

void __84__SVXClientActivationService_deactivateWithButtonEvent_userInfo_options_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 8);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __84__SVXClientActivationService_deactivateWithButtonEvent_userInfo_options_completion___block_invoke_3;
    v3[3] = &unk_279C68220;
    v4 = v1;
    [v2 performBlock:v3];
  }
}

- (void)deactivateWithUserInfo:(id)a3 options:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = mach_absolute_time();
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v24 = "[SVXClientActivationService deactivateWithUserInfo:options:completion:]";
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s userInfo = %@, options = %@", buf, 0x20u);
  }

  v13 = [SVXDeactivationContext alloc];
  v14 = SVXClientInfoGetCurrent();
  v15 = [(SVXDeactivationContext *)v13 initWithSource:2 timestamp:v11 buttonEvent:0 clientInfo:v14 userInfo:v8 options:v9];

  performer = self->_performer;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__SVXClientActivationService_deactivateWithUserInfo_options_completion___block_invoke;
  v20[3] = &unk_279C68EA8;
  v20[4] = self;
  v21 = v15;
  v22 = v10;
  v17 = v10;
  v18 = v15;
  [(SVXPerforming *)performer performBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __72__SVXClientActivationService_deactivateWithUserInfo_options_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__SVXClientActivationService_deactivateWithUserInfo_options_completion___block_invoke_2;
  v5[3] = &unk_279C68EF8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _deactivateWithContext:v3 completion:v5];
}

void __72__SVXClientActivationService_deactivateWithUserInfo_options_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 8);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __72__SVXClientActivationService_deactivateWithUserInfo_options_completion___block_invoke_3;
    v3[3] = &unk_279C68220;
    v4 = v1;
    [v2 performBlock:v3];
  }
}

- (void)deactivateWithUserInfo:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v25 = "[SVXClientActivationService deactivateWithUserInfo:completion:]";
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s Deprecated. Please use -deactivateWithUserInfo:options:completion: or -deactiateWithButtonEvent:userInfo:options:completion:", buf, 0xCu);
  }

  v10 = mach_absolute_time();
  v11 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[SVXClientActivationService deactivateWithUserInfo:completion:]";
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  v12 = [v6 objectForKey:@"deactivationSource"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v12 integerValue] == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 2;
  }

  v14 = [SVXDeactivationContext alloc];
  v15 = SVXClientInfoGetCurrent();
  v16 = [(SVXDeactivationContext *)v14 initWithSource:v13 timestamp:v10 buttonEvent:0 clientInfo:v15 userInfo:v6 options:0];

  performer = self->_performer;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__SVXClientActivationService_deactivateWithUserInfo_completion___block_invoke;
  v21[3] = &unk_279C68EA8;
  v21[4] = self;
  v22 = v16;
  v23 = v7;
  v18 = v7;
  v19 = v16;
  [(SVXPerforming *)performer performBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __64__SVXClientActivationService_deactivateWithUserInfo_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SVXClientActivationService_deactivateWithUserInfo_completion___block_invoke_2;
  v5[3] = &unk_279C68EF8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _deactivateWithContext:v3 completion:v5];
}

void __64__SVXClientActivationService_deactivateWithUserInfo_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 8);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __64__SVXClientActivationService_deactivateWithUserInfo_completion___block_invoke_3;
    v3[3] = &unk_279C68220;
    v4 = v1;
    [v2 performBlock:v3];
  }
}

- (void)activateWithSystemEvent:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = mach_absolute_time();
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[SVXClientActivationService activateWithSystemEvent:userInfo:completion:]";
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s systemEvent = %@, userInfo = %@", buf, 0x20u);
  }

  if ([(SVXClientActivationService *)self _validateSystemEventForActivation:v8])
  {
    v13 = [SVXActivationContext alloc];
    v14 = SVXClientInfoGetCurrent();
    v15 = [(SVXActivationContext *)v13 initWithSource:5 timestamp:v11 buttonEvent:0 systemEvent:v8 clientInfo:v14 requestInfo:0 userInfo:v9];

    performer = self->_performer;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__SVXClientActivationService_activateWithSystemEvent_userInfo_completion___block_invoke;
    v19[3] = &unk_279C68EA8;
    v19[4] = self;
    v20 = v15;
    v21 = v10;
    v17 = v15;
    [(SVXPerforming *)performer performBlock:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __74__SVXClientActivationService_activateWithSystemEvent_userInfo_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _requestPermissionToActivateWithContext:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __74__SVXClientActivationService_activateWithSystemEvent_userInfo_completion___block_invoke_2;
    v5[3] = &unk_279C68310;
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v2 _activateWithContext:v3 completion:v5];
  }
}

void __74__SVXClientActivationService_activateWithSystemEvent_userInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__SVXClientActivationService_activateWithSystemEvent_userInfo_completion___block_invoke_3;
    v6[3] = &unk_279C68EF8;
    v8 = v4;
    v7 = v3;
    [v5 performBlock:v6];
  }
}

- (void)prewarmForSystemEvent:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = mach_absolute_time();
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[SVXClientActivationService prewarmForSystemEvent:completion:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s systemEvent = %@", buf, 0x16u);
  }

  if ([(SVXClientActivationService *)self _validateSystemEventForActivation:v6])
  {
    v10 = [SVXActivationContext alloc];
    v11 = SVXClientInfoGetCurrent();
    v12 = [(SVXActivationContext *)v10 initWithSource:5 timestamp:v8 buttonEvent:0 systemEvent:v6 clientInfo:v11 requestInfo:0 userInfo:0];

    performer = self->_performer;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__SVXClientActivationService_prewarmForSystemEvent_completion___block_invoke;
    v16[3] = &unk_279C68EA8;
    v16[4] = self;
    v17 = v12;
    v18 = v7;
    v14 = v12;
    [(SVXPerforming *)performer performBlock:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __63__SVXClientActivationService_prewarmForSystemEvent_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SVXClientActivationService_prewarmForSystemEvent_completion___block_invoke_2;
  v5[3] = &unk_279C68EF8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _prewarmWithContext:v3 completion:v5];
}

void __63__SVXClientActivationService_prewarmForSystemEvent_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 8);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __63__SVXClientActivationService_prewarmForSystemEvent_completion___block_invoke_3;
    v3[3] = &unk_279C68220;
    v4 = v1;
    [v2 performBlock:v3];
  }
}

- (void)activateWithButtonEvent:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = mach_absolute_time();
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[SVXClientActivationService activateWithButtonEvent:userInfo:completion:]";
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s buttonEvent = %@, userInfo = %@", buf, 0x20u);
  }

  if ([(SVXClientActivationService *)self _validateButtonEventForActivation:v8])
  {
    v13 = [SVXActivationContext alloc];
    v14 = SVXClientInfoGetCurrent();
    v15 = [(SVXActivationContext *)v13 initWithSource:1 timestamp:v11 buttonEvent:v8 systemEvent:0 clientInfo:v14 requestInfo:0 userInfo:v9];

    performer = self->_performer;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__SVXClientActivationService_activateWithButtonEvent_userInfo_completion___block_invoke;
    v19[3] = &unk_279C68EA8;
    v19[4] = self;
    v20 = v15;
    v21 = v10;
    v17 = v15;
    [(SVXPerforming *)performer performBlock:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __74__SVXClientActivationService_activateWithButtonEvent_userInfo_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _requestPermissionToActivateWithContext:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __74__SVXClientActivationService_activateWithButtonEvent_userInfo_completion___block_invoke_2;
    v5[3] = &unk_279C68310;
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v2 _activateWithContext:v3 completion:v5];
  }
}

void __74__SVXClientActivationService_activateWithButtonEvent_userInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__SVXClientActivationService_activateWithButtonEvent_userInfo_completion___block_invoke_3;
    v6[3] = &unk_279C68EF8;
    v8 = v4;
    v7 = v3;
    [v5 performBlock:v6];
  }
}

- (void)activateWithText:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = mach_absolute_time();
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[SVXClientActivationService activateWithText:completion:]";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s text = %@", buf, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x277CEF378]);
  [v10 setText:v6];
  v11 = [SVXActivationContext alloc];
  v12 = SVXClientInfoGetCurrent();
  v13 = [(SVXActivationContext *)v11 initWithSource:2 timestamp:v8 buttonEvent:0 systemEvent:0 clientInfo:v12 requestInfo:v10 userInfo:0];

  performer = self->_performer;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__SVXClientActivationService_activateWithText_completion___block_invoke;
  v18[3] = &unk_279C68EA8;
  v18[4] = self;
  v19 = v13;
  v20 = v7;
  v15 = v7;
  v16 = v13;
  [(SVXPerforming *)performer performBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __58__SVXClientActivationService_activateWithText_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _requestPermissionToActivateWithContext:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__SVXClientActivationService_activateWithText_completion___block_invoke_2;
    v5[3] = &unk_279C68310;
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v2 _activateWithContext:v3 completion:v5];
  }
}

void __58__SVXClientActivationService_activateWithText_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__SVXClientActivationService_activateWithText_completion___block_invoke_3;
    v6[3] = &unk_279C68EF8;
    v8 = v4;
    v7 = v3;
    [v5 performBlock:v6];
  }
}

- (void)activateWithUserInfo:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = mach_absolute_time();
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[SVXClientActivationService activateWithUserInfo:completion:]";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  v10 = [SVXActivationContext alloc];
  v11 = SVXClientInfoGetCurrent();
  v12 = [(SVXActivationContext *)v10 initWithSource:2 timestamp:v8 buttonEvent:0 systemEvent:0 clientInfo:v11 requestInfo:0 userInfo:v6];

  performer = self->_performer;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__SVXClientActivationService_activateWithUserInfo_completion___block_invoke;
  v17[3] = &unk_279C68EA8;
  v17[4] = self;
  v18 = v12;
  v19 = v7;
  v14 = v7;
  v15 = v12;
  [(SVXPerforming *)performer performBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __62__SVXClientActivationService_activateWithUserInfo_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _requestPermissionToActivateWithContext:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __62__SVXClientActivationService_activateWithUserInfo_completion___block_invoke_2;
    v5[3] = &unk_279C68310;
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v2 _activateWithContext:v3 completion:v5];
  }
}

void __62__SVXClientActivationService_activateWithUserInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__SVXClientActivationService_activateWithUserInfo_completion___block_invoke_3;
    v6[3] = &unk_279C68EF8;
    v8 = v4;
    v7 = v3;
    [v5 performBlock:v6];
  }
}

- (void)enqueueButtonEvent:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = mach_absolute_time();
  v6 = MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v31 = "[SVXClientActivationService enqueueButtonEvent:]";
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s buttonEvent = %@", buf, 0x16u);
  }

  v8 = [v4 type];
  if (v8 == 2)
  {
    v17 = [v4 timestamp];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v5;
    }

    v19 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v31 = "[SVXClientActivationService enqueueButtonEvent:]";
      v32 = 2048;
      v33 = v18;
      _os_log_debug_impl(&dword_2695B9000, v19, OS_LOG_TYPE_DEBUG, "%s SVXButtonEventTypeUp: time = %lld", buf, 0x16u);
    }

    analytics = self->_analytics;
    v21 = [v4 timestamp];
    if (v21)
    {
      v14 = v21;
    }

    else
    {
      v14 = v18;
    }

    v15 = analytics;
    v16 = 1411;
    goto LABEL_23;
  }

  if (v8 == 1)
  {
    v9 = [v4 timestamp];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    v11 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v31 = "[SVXClientActivationService enqueueButtonEvent:]";
      v32 = 2048;
      v33 = v10;
      _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s SVXButtonEventTypeDown: time = %lld", buf, 0x16u);
    }

    v12 = self->_analytics;
    v13 = [v4 timestamp];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v10;
    }

    v15 = v12;
    v16 = 1410;
LABEL_23:
    [(AFAnalytics *)v15 logEventWithType:v16 machAbsoluteTime:v14 context:0];
    goto LABEL_26;
  }

  v22 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v26 = v22;
    v27 = [v4 type];
    *buf = 136315394;
    v31 = "[SVXClientActivationService enqueueButtonEvent:]";
    v32 = 2048;
    v33 = v27;
    _os_log_debug_impl(&dword_2695B9000, v26, OS_LOG_TYPE_DEBUG, "%s Unspecified or unknown button event = %ld", buf, 0x16u);
  }

LABEL_26:
  performer = self->_performer;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __49__SVXClientActivationService_enqueueButtonEvent___block_invoke;
  v28[3] = &unk_279C68FE8;
  v28[4] = self;
  v29 = v4;
  v24 = v4;
  [(SVXPerforming *)performer performBlock:v28];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleButtonEvent:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[SVXClientActivationService handleButtonEvent:]";
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s This SPI has been deprecated, please use -enqueueButtonEvent: instead.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleDidDeactivateWithContext:(id)a3
{
  v4 = a3;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SVXClientActivationService_handleDidDeactivateWithContext___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SVXPerforming *)performer performBlock:v7];
}

void __61__SVXClientActivationService_handleDidDeactivateWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained clientActivationService:*(a1 + 32) didDeactivateWithContext:*(a1 + 40)];
}

- (void)handleWillDeactivateWithContext:(id)a3
{
  v4 = a3;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SVXClientActivationService_handleWillDeactivateWithContext___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SVXPerforming *)performer performBlock:v7];
}

void __62__SVXClientActivationService_handleWillDeactivateWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained clientActivationService:*(a1 + 32) willDeactivateWithContext:*(a1 + 40)];
}

- (void)handleDidNotActivateWithContext:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__SVXClientActivationService_handleDidNotActivateWithContext_error___block_invoke;
  v11[3] = &unk_279C68ED0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(SVXPerforming *)performer performBlock:v11];
}

void __68__SVXClientActivationService_handleDidNotActivateWithContext_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopPreheatTimer];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained clientActivationService:*(a1 + 32) didNotActivateWithContext:*(a1 + 40) error:*(a1 + 48)];
}

- (void)handleDidActivateWithContext:(id)a3
{
  v4 = a3;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SVXClientActivationService_handleDidActivateWithContext___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SVXPerforming *)performer performBlock:v7];
}

void __59__SVXClientActivationService_handleDidActivateWithContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopPreheatTimer];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained clientActivationService:*(a1 + 32) didActivateWithContext:*(a1 + 40)];
}

- (void)handleWillActivateWithContext:(id)a3
{
  v4 = a3;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SVXClientActivationService_handleWillActivateWithContext___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SVXPerforming *)performer performBlock:v7];
}

void __60__SVXClientActivationService_handleWillActivateWithContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopPreheatTimer];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained clientActivationService:*(a1 + 32) willActivateWithContext:*(a1 + 40)];
}

- (void)handleRequestPermissionToActivateWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__SVXClientActivationService_handleRequestPermissionToActivateWithContext_completion___block_invoke;
  v11[3] = &unk_279C68EA8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(SVXPerforming *)performer performBlock:v11];
}

uint64_t __86__SVXClientActivationService_handleRequestPermissionToActivateWithContext_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _requestPermissionToActivateWithContext:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (SVXClientActivationService)initWithClientServiceProvider:(id)a3 analytics:(id)a4 performer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SVXClientActivationService;
  v12 = [(SVXClientActivationService *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_performer, a5);
    objc_storeStrong(&v13->_clientServiceProvider, a3);
    objc_storeStrong(&v13->_analytics, a4);
  }

  return v13;
}

@end