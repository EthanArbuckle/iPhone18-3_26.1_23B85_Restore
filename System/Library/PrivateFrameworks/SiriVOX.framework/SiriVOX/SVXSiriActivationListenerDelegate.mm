@interface SVXSiriActivationListenerDelegate
- (SVXSiriActivationListenerDelegate)initWithSiriActivationListener:(id)a3 mainQueuePerformer:(id)a4 siriActivationSupportPredicate:(id)a5 virtualDeviceManager:(id)a6 instrumentationUtils:(id)a7 activationUtils:(id)a8;
- (SVXSiriActivationListenerDelegate)initWithVirtualDeviceManager:(id)a3;
- (void)siriActivationListener:(id)a3 activateWithRequestInfo:(id)a4 context:(id)a5 completion:(id)a6;
- (void)siriActivationListener:(id)a3 deactivateForReason:(int64_t)a4 options:(unint64_t)a5 context:(id)a6 completion:(id)a7;
- (void)siriActivationListener:(id)a3 myriadEventWithRequestInfo:(id)a4 context:(id)a5 completion:(id)a6;
- (void)siriActivationListener:(id)a3 prewarmWithRequestInfo:(id)a4 context:(id)a5 completion:(id)a6;
@end

@implementation SVXSiriActivationListenerDelegate

- (void)siriActivationListener:(id)a3 myriadEventWithRequestInfo:(id)a4 context:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[SVXSiriActivationListenerDelegate siriActivationListener:myriadEventWithRequestInfo:context:completion:]";
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s requestInfo = %@, context = %@", buf, 0x20u);
  }

  mainQueuePerformer = self->_mainQueuePerformer;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __106__SVXSiriActivationListenerDelegate_siriActivationListener_myriadEventWithRequestInfo_context_completion___block_invoke;
  v18[3] = &unk_279C69038;
  v18[4] = self;
  v19 = v10;
  v20 = v9;
  v21 = v11;
  v14 = v9;
  v15 = v11;
  v16 = v10;
  [(SVXQueuePerformer *)mainQueuePerformer performBlock:v18 withOptions:2];

  v17 = *MEMORY[0x277D85DE8];
}

void __106__SVXSiriActivationListenerDelegate_siriActivationListener_myriadEventWithRequestInfo_context_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __106__SVXSiriActivationListenerDelegate_siriActivationListener_myriadEventWithRequestInfo_context_completion___block_invoke_2;
  v4[3] = &unk_279C66C88;
  v5 = v2;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v3 getVirtualDeviceForActivationContext:v5 completion:v4];
}

void __106__SVXSiriActivationListenerDelegate_siriActivationListener_myriadEventWithRequestInfo_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 myriadEventHandler];
    if (v5)
    {
      v6 = [*(a1 + 40) speechRequestOptions];
      v7 = [v6 activationEvent];

      v8 = *MEMORY[0x277CEF098];
      v9 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO);
      if (v7 == 28)
      {
        if (v9)
        {
          *buf = 136315394;
          v23 = "[SVXSiriActivationListenerDelegate siriActivationListener:myriadEventWithRequestInfo:context:completion:]_block_invoke";
          v24 = 2112;
          v25 = v4;
          _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s Handling continuous voice trigger %@...", buf, 0x16u);
        }

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __106__SVXSiriActivationListenerDelegate_siriActivationListener_myriadEventWithRequestInfo_context_completion___block_invoke_15;
        v19[3] = &unk_279C68EF8;
        v20 = v4;
        v21 = *(a1 + 48);
        [v5 continuousVoiceTriggerDetectedWithCompletion:v19];

        v10 = v20;
        goto LABEL_19;
      }

      if (v9)
      {
        v15 = *(a1 + 32);
        v16 = v8;
        *buf = 136315650;
        v23 = "[SVXSiriActivationListenerDelegate siriActivationListener:myriadEventWithRequestInfo:context:completion:]_block_invoke";
        v24 = 2048;
        v25 = [v15 source];
        v26 = 2112;
        v27 = v4;
        _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s Unknown myriad source %ld or event %@...", buf, 0x20u);
      }

      v14 = *(a1 + 48);
      if (!v14)
      {
        goto LABEL_20;
      }

LABEL_18:
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:9 userInfo:0];
      (*(v14 + 16))(v14, v10);
LABEL_19:

      goto LABEL_20;
    }

    v13 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[SVXSiriActivationListenerDelegate siriActivationListener:myriadEventWithRequestInfo:context:completion:]_block_invoke";
      v24 = 2112;
      v25 = v4;
      _os_log_error_impl(&dword_2695B9000, v13, OS_LOG_TYPE_ERROR, "%s Unable to get the myriad event handler from virtual device %@.", buf, 0x16u);
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      goto LABEL_18;
    }

    v5 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 32);
    *buf = 136315394;
    v23 = "[SVXSiriActivationListenerDelegate siriActivationListener:myriadEventWithRequestInfo:context:completion:]_block_invoke_2";
    v24 = 2112;
    v25 = v18;
    _os_log_error_impl(&dword_2695B9000, v11, OS_LOG_TYPE_ERROR, "%s Unable to find a virtual device for context %@.", buf, 0x16u);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:7 userInfo:0];
    (*(v12 + 16))(v12, v5);
    goto LABEL_20;
  }

LABEL_21:

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __106__SVXSiriActivationListenerDelegate_siriActivationListener_myriadEventWithRequestInfo_context_completion___block_invoke_15(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SVXSiriActivationListenerDelegate siriActivationListener:myriadEventWithRequestInfo:context:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s Continuous voice trigger handled %@.", &v6, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)siriActivationListener:(id)a3 deactivateForReason:(int64_t)a4 options:(unint64_t)a5 context:(id)a6 completion:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = a7;
  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = AFSiriDeactivationReasonGetName();
    v16 = AFSiriDeactivationOptionsGetNames();
    *buf = 136315906;
    v27 = "[SVXSiriActivationListenerDelegate siriActivationListener:deactivateForReason:options:context:completion:]";
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s reason = %@, options = %@, context = %@", buf, 0x2Au);
  }

  mainQueuePerformer = self->_mainQueuePerformer;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __107__SVXSiriActivationListenerDelegate_siriActivationListener_deactivateForReason_options_context_completion___block_invoke;
  v21[3] = &unk_279C66C60;
  v21[4] = self;
  v22 = v11;
  v23 = v12;
  v24 = a4;
  v25 = a5;
  v18 = v12;
  v19 = v11;
  [(SVXQueuePerformer *)mainQueuePerformer performBlock:v21 withOptions:2];

  v20 = *MEMORY[0x277D85DE8];
}

void __107__SVXSiriActivationListenerDelegate_siriActivationListener_deactivateForReason_options_context_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __107__SVXSiriActivationListenerDelegate_siriActivationListener_deactivateForReason_options_context_completion___block_invoke_2;
  v5[3] = &unk_279C66C38;
  v6 = v2;
  v4 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v4;
  v9 = *(a1 + 56);
  [v3 getVirtualDeviceForActivationContext:v6 completion:v5];
}

void __107__SVXSiriActivationListenerDelegate_siriActivationListener_deactivateForReason_options_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 deactivationHandler];
    v6 = *MEMORY[0x277CEF098];
    if (v5)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v18 = "[SVXSiriActivationListenerDelegate siriActivationListener:deactivateForReason:options:context:completion:]_block_invoke";
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Deactivating %@...", buf, 0x16u);
      }

      v7 = [*(*(a1 + 40) + 48) createDeactivationContextWithReason:*(a1 + 56) options:*(a1 + 64) context:*(a1 + 32)];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __107__SVXSiriActivationListenerDelegate_siriActivationListener_deactivateForReason_options_context_completion___block_invoke_13;
      v14[3] = &unk_279C68EF8;
      v15 = v4;
      v16 = *(a1 + 48);
      [v5 deactivateWithContext:v7 completion:v14];

      v8 = v15;
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[SVXSiriActivationListenerDelegate siriActivationListener:deactivateForReason:options:context:completion:]_block_invoke";
        v19 = 2112;
        v20 = v4;
        _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s Unable to get the deactivation handler from virtual device %@.", buf, 0x16u);
      }

      v11 = *(a1 + 48);
      if (!v11)
      {
        v5 = 0;
        goto LABEL_15;
      }

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:10 userInfo:0];
      (*(v11 + 16))(v11, v8);
    }

LABEL_15:
    goto LABEL_16;
  }

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    *buf = 136315394;
    v18 = "[SVXSiriActivationListenerDelegate siriActivationListener:deactivateForReason:options:context:completion:]_block_invoke_2";
    v19 = 2112;
    v20 = v13;
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s Unable to find a virtual device for context %@.", buf, 0x16u);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:7 userInfo:0];
    (*(v10 + 16))(v10, v5);
    goto LABEL_15;
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __107__SVXSiriActivationListenerDelegate_siriActivationListener_deactivateForReason_options_context_completion___block_invoke_13(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SVXSiriActivationListenerDelegate siriActivationListener:deactivateForReason:options:context:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s Deactivated %@.", &v6, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)siriActivationListener:(id)a3 activateWithRequestInfo:(id)a4 context:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[SVXSiriActivationListenerDelegate siriActivationListener:activateWithRequestInfo:context:completion:]";
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s requestInfo = %@, context = %@", buf, 0x20u);
  }

  mainQueuePerformer = self->_mainQueuePerformer;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __103__SVXSiriActivationListenerDelegate_siriActivationListener_activateWithRequestInfo_context_completion___block_invoke;
  v18[3] = &unk_279C69038;
  v18[4] = self;
  v19 = v10;
  v20 = v9;
  v21 = v11;
  v14 = v9;
  v15 = v11;
  v16 = v10;
  [(SVXQueuePerformer *)mainQueuePerformer performBlock:v18 withOptions:2];

  v17 = *MEMORY[0x277D85DE8];
}

void __103__SVXSiriActivationListenerDelegate_siriActivationListener_activateWithRequestInfo_context_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __103__SVXSiriActivationListenerDelegate_siriActivationListener_activateWithRequestInfo_context_completion___block_invoke_2;
  v9[3] = &unk_279C66C10;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = *v2;
  v8 = v6;
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  v10 = v8;
  v11 = v7;
  [v3 getVirtualDeviceForActivationContext:v4 completion:v9];
}

void __103__SVXSiriActivationListenerDelegate_siriActivationListener_activateWithRequestInfo_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 activationHandler];
    if (v5)
    {
      v6 = [*(*(a1 + 40) + 48) wantsActivation:*(a1 + 32)];
      v7 = *MEMORY[0x277CEF098];
      if (v6)
      {
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v23 = "[SVXSiriActivationListenerDelegate siriActivationListener:activateWithRequestInfo:context:completion:]_block_invoke";
          v24 = 2112;
          v25 = v4;
          _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s Activating %@...", buf, 0x16u);
        }

        v8 = [*(*(a1 + 40) + 48) createActivationContextWithRequestInfo:*(a1 + 48) context:*(a1 + 32)];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __103__SVXSiriActivationListenerDelegate_siriActivationListener_activateWithRequestInfo_context_completion___block_invoke_10;
        v19[3] = &unk_279C68310;
        v20 = v4;
        v21 = *(a1 + 56);
        [v5 activateWithContext:v8 completion:v19];

        v9 = v20;
        goto LABEL_20;
      }

      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        *buf = 136315650;
        v23 = "[SVXSiriActivationListenerDelegate siriActivationListener:activateWithRequestInfo:context:completion:]_block_invoke";
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = v4;
        _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s Unable to activate with context %@ for virtual device %@.", buf, 0x20u);
      }

      v13 = *(a1 + 56);
      if (!v13)
      {
        goto LABEL_21;
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = 4;
    }

    else
    {
      v12 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "[SVXSiriActivationListenerDelegate siriActivationListener:activateWithRequestInfo:context:completion:]_block_invoke";
        v24 = 2112;
        v25 = v4;
        _os_log_error_impl(&dword_2695B9000, v12, OS_LOG_TYPE_ERROR, "%s Unable to get the activation handler from virtual device %@.", buf, 0x16u);
      }

      v13 = *(a1 + 56);
      if (!v13)
      {
        v5 = 0;
        goto LABEL_21;
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = 9;
    }

    v9 = [v14 errorWithDomain:@"SiriVOXErrorDomain" code:v15 userInfo:0];
    (*(v13 + 16))(v13, v9);
LABEL_20:

    goto LABEL_21;
  }

  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 32);
    *buf = 136315394;
    v23 = "[SVXSiriActivationListenerDelegate siriActivationListener:activateWithRequestInfo:context:completion:]_block_invoke_2";
    v24 = 2112;
    v25 = v17;
    _os_log_error_impl(&dword_2695B9000, v10, OS_LOG_TYPE_ERROR, "%s Unable to find a virtual device for context %@.", buf, 0x16u);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:7 userInfo:0];
    (*(v11 + 16))(v11, v5);
LABEL_21:
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __103__SVXSiriActivationListenerDelegate_siriActivationListener_activateWithRequestInfo_context_completion___block_invoke_10(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[SVXSiriActivationListenerDelegate siriActivationListener:activateWithRequestInfo:context:completion:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s Failed to activate %@. (error = %@)", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[SVXSiriActivationListenerDelegate siriActivationListener:activateWithRequestInfo:context:completion:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Activated %@.", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)siriActivationListener:(id)a3 prewarmWithRequestInfo:(id)a4 context:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[SVXSiriActivationListenerDelegate siriActivationListener:prewarmWithRequestInfo:context:completion:]";
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s requestInfo = %@, context = %@", buf, 0x20u);
  }

  mainQueuePerformer = self->_mainQueuePerformer;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__SVXSiriActivationListenerDelegate_siriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke;
  v18[3] = &unk_279C69038;
  v18[4] = self;
  v19 = v10;
  v20 = v9;
  v21 = v11;
  v14 = v9;
  v15 = v11;
  v16 = v10;
  [(SVXQueuePerformer *)mainQueuePerformer performBlock:v18 withOptions:2];

  v17 = *MEMORY[0x277D85DE8];
}

void __102__SVXSiriActivationListenerDelegate_siriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __102__SVXSiriActivationListenerDelegate_siriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke_2;
  v9[3] = &unk_279C66C10;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = *v2;
  v8 = v6;
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  v10 = v8;
  v11 = v7;
  [v3 getVirtualDeviceForActivationContext:v4 completion:v9];
}

void __102__SVXSiriActivationListenerDelegate_siriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 prewarmHandler];
    v6 = *MEMORY[0x277CEF098];
    if (v5)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v18 = "[SVXSiriActivationListenerDelegate siriActivationListener:prewarmWithRequestInfo:context:completion:]_block_invoke";
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Prewarming %@...", buf, 0x16u);
      }

      v7 = [*(*(a1 + 40) + 48) createActivationContextWithRequestInfo:*(a1 + 48) context:*(a1 + 32)];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __102__SVXSiriActivationListenerDelegate_siriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke_7;
      v14[3] = &unk_279C68EF8;
      v15 = v4;
      v16 = *(a1 + 56);
      [v5 prewarmWithContext:v7 completion:v14];

      v8 = v15;
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[SVXSiriActivationListenerDelegate siriActivationListener:prewarmWithRequestInfo:context:completion:]_block_invoke";
        v19 = 2112;
        v20 = v4;
        _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s Unable to get the prewarm handler from virtual device %@.", buf, 0x16u);
      }

      v11 = *(a1 + 56);
      if (!v11)
      {
        v5 = 0;
        goto LABEL_15;
      }

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:8 userInfo:0];
      (*(v11 + 16))(v11, v8);
    }

LABEL_15:
    goto LABEL_16;
  }

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    *buf = 136315394;
    v18 = "[SVXSiriActivationListenerDelegate siriActivationListener:prewarmWithRequestInfo:context:completion:]_block_invoke_2";
    v19 = 2112;
    v20 = v13;
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s Unable to find a virtual device for context %@.", buf, 0x16u);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:7 userInfo:0];
    (*(v10 + 16))(v10, v5);
    goto LABEL_15;
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __102__SVXSiriActivationListenerDelegate_siriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke_7(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SVXSiriActivationListenerDelegate siriActivationListener:prewarmWithRequestInfo:context:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s Prewarmed %@.", &v6, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (SVXSiriActivationListenerDelegate)initWithSiriActivationListener:(id)a3 mainQueuePerformer:(id)a4 siriActivationSupportPredicate:(id)a5 virtualDeviceManager:(id)a6 instrumentationUtils:(id)a7 activationUtils:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = SVXSiriActivationListenerDelegate;
  v18 = [(SVXSiriActivationListenerDelegate *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_siriActivationListener, a3);
    objc_storeStrong(&v19->_mainQueuePerformer, a4);
    objc_storeStrong(&v19->_siriActivationSupportPredicate, a5);
    objc_storeStrong(&v19->_virtualDeviceManager, a6);
    objc_storeStrong(&v19->_instrumentationUtils, a7);
    objc_storeStrong(&v19->_activationUtils, a8);
  }

  return v19;
}

- (SVXSiriActivationListenerDelegate)initWithVirtualDeviceManager:(id)a3
{
  v4 = MEMORY[0x277CEF3B8];
  v5 = a3;
  v6 = [[v4 alloc] initWithServicePort:2];
  v7 = +[SVXQueuePerformer sharedMainQueuePerformer];
  v8 = objc_alloc_init(SVXSiriActivationSupportPredicate);
  v9 = objc_alloc_init(SVXInstrumentationUtilities);
  v10 = objc_alloc_init(SVXActivationUtils);
  v11 = [(SVXSiriActivationListenerDelegate *)self initWithSiriActivationListener:v6 mainQueuePerformer:v7 siriActivationSupportPredicate:v8 virtualDeviceManager:v5 instrumentationUtils:v9 activationUtils:v10];

  return v11;
}

@end