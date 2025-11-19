@interface ICSCDPStatusUpdateHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (unint64_t)_presentationTypeForString:(id)a3;
- (void)_handleCompletionWithCallback:(id)a3 onModel:(id)a4 forHookAction:(id)a5 userAction:(unint64_t)a6 error:(id)a7;
- (void)_handleUserInteractionWithCallback:(id)a3 onModel:(id)a4 forHookAction:(id)a5 userAction:(unint64_t)a6;
- (void)_invokeJSCallback:(id)a3 onModel:(id)a4 withArguments:(id)a5;
- (void)_processAttributes:(id)a3;
- (void)_updateStatusWithAction:(id)a3 forObjectModel:(id)a4 completion:(id)a5;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation ICSCDPStatusUpdateHook

- (BOOL)shouldMatchElement:(id)a3
{
  v4 = [a3 name];
  v5 = [(ICSCDPStatusUpdateHook *)self changeControllerForAction:v4];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 clientInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D46250]];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(ICSCDPStatusUpdateHook *)self changeControllerForAction:v7];
  v9 = v8 != 0;

  return v9;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  [(ICSCDPStatusUpdateHook *)self _processAttributes:a4];
  v13 = [v12 name];

  [(ICSCDPStatusUpdateHook *)self _updateStatusWithAction:v13 forObjectModel:v11 completion:v10];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 clientInfo];
  [(ICSCDPStatusUpdateHook *)self _processAttributes:v7];

  objc_opt_class();
  v8 = [v11 clientInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D46250]];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [(ICSCDPStatusUpdateHook *)self _updateStatusWithAction:v10 forObjectModel:v11 completion:v6];
}

- (void)_processAttributes:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D46280]];

  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  self->_presentationType = [(ICSCDPStatusUpdateHook *)self _presentationTypeForString:v7];
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ICSCDPStatusUpdateHook *)self _processAttributes:v8];
  }
}

- (unint64_t)_presentationTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D46270]])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D46278]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D46288]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_updateStatusWithAction:(id)a3 forObjectModel:(id)a4 completion:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICSCDPStatusUpdateHook *)self changeControllerForAction:v8];
  if (v11)
  {
    v12 = [(ICSCDPStatusUpdateHook *)self delegate];
    v13 = [v12 presentationContextForHook:self];

    v14 = objc_alloc_init(MEMORY[0x277D46208]);
    serverHookResponse = self->_serverHookResponse;
    self->_serverHookResponse = v14;

    objc_initWeak(&location, self);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __76__ICSCDPStatusUpdateHook__updateStatusWithAction_forObjectModel_completion___block_invoke;
    v29[3] = &unk_27A666DA0;
    objc_copyWeak(&v33, &location);
    v16 = v10;
    v32 = v16;
    v17 = v9;
    v30 = v17;
    v18 = v8;
    v31 = v18;
    [v11 setUserActionCallback:v29];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__ICSCDPStatusUpdateHook__updateStatusWithAction_forObjectModel_completion___block_invoke_46;
    v24[3] = &unk_27A666DC8;
    objc_copyWeak(&v28, &location);
    v27 = v16;
    v25 = v17;
    v19 = v18;
    v26 = v19;
    [v11 setCompletionCallback:v24];
    v20 = _AAUILogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      [(ICSCDPStatusUpdateHook *)v21 _updateStatusWithAction:v19 forObjectModel:buf completion:v20];
    }

    [v11 presentWithViewController:v13 presentationType:self->_presentationType];
    objc_destroyWeak(&v28);

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = _AAUILogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [ICSCDPStatusUpdateHook _updateStatusWithAction:v8 forObjectModel:v22 completion:?];
    }

    v13 = [MEMORY[0x277CCA9B8] aa_errorWithCode:-3];
    (*(v10 + 2))(v10, 0, v13);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __76__ICSCDPStatusUpdateHook__updateStatusWithAction_forObjectModel_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleUserInteractionWithCallback:*(a1 + 48) onModel:*(a1 + 32) forHookAction:*(a1 + 40) userAction:a2];
  }

  else
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __76__ICSCDPStatusUpdateHook__updateStatusWithAction_forObjectModel_completion___block_invoke_cold_1(v6);
    }
  }
}

void __76__ICSCDPStatusUpdateHook__updateStatusWithAction_forObjectModel_completion___block_invoke_46(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleCompletionWithCallback:*(a1 + 48) onModel:*(a1 + 32) forHookAction:*(a1 + 40) userAction:a2 error:v5];
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __76__ICSCDPStatusUpdateHook__updateStatusWithAction_forObjectModel_completion___block_invoke_46_cold_1(v8);
    }
  }
}

- (void)_handleUserInteractionWithCallback:(id)a3 onModel:(id)a4 forHookAction:(id)a5 userAction:(unint64_t)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 - 1 < 2)
  {
    goto LABEL_4;
  }

  if (!a6)
  {
    v14 = _AAUILogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = objc_opt_class();
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_275819000, v14, OS_LOG_TYPE_DEFAULT, "%@: Status for %@ not being updated due to user decline.", &v16, 0x16u);
    }

    v13 = @"onUserDecline";
    goto LABEL_8;
  }

  if (a6 == 3)
  {
LABEL_4:
    v13 = @"onUserAccept";
LABEL_8:
    [(ICSCDPStatusUpdateHook *)self _invokeJSCallback:v13 onModel:v11];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleCompletionWithCallback:(id)a3 onModel:(id)a4 forHookAction:(id)a5 userAction:(unint64_t)a6 error:(id)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = v15;
  if (!a6 && !v15)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
    v17 = _AAUILogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v33 = objc_opt_class();
      v34 = 2112;
      v35 = v14;
      v36 = 2112;
      v37 = v16;
      _os_log_debug_impl(&dword_275819000, v17, OS_LOG_TYPE_DEBUG, "%@: User declined status update for %@ and no error was provided. Using %@", buf, 0x20u);
    }
  }

  v19 = a6 != 3 && v16 == 0;
  v20 = _AAUILogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = @"NO";
    *buf = 138413058;
    v33 = v21;
    v34 = 2112;
    if (v19)
    {
      v22 = @"YES";
    }

    v35 = v14;
    v36 = 2112;
    v37 = v22;
    v38 = 2112;
    v39 = v16;
    _os_log_impl(&dword_275819000, v20, OS_LOG_TYPE_DEFAULT, "%@: Calling completion callback for %@ with (didChange: %@, error: %@)", buf, 0x2Au);
  }

  if (v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = [MEMORY[0x277CBEB68] null];
  }

  v24 = v23;
  v25 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  v31[0] = v25;
  v31[1] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  [(ICSCDPStatusUpdateHook *)self _invokeJSCallback:@"onCompletion" onModel:v13 withArguments:v26];

  v27 = [(ICSCDPStatusUpdateHook *)self additionalPayloadForAction:v14 error:v16];
  [(RUIServerHookResponse *)self->_serverHookResponse setAdditionalPayload:v27];

  v29 = a6 == 3 || v16 == 0;
  v12[2](v12, v29, v16);
  [(ICSCDPStatusUpdateHook *)self postCompletionProcessingForAction:v14 error:v16];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_invokeJSCallback:(id)a3 onModel:(id)a4 withArguments:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  v10 = [v8 clientInfo];
  v11 = [v10 objectForKeyedSubscript:v7];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 length];
  v14 = _AAUILogSystem();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v18 = 138413058;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_275819000, v14, OS_LOG_TYPE_DEFAULT, "%@: Calling %@ callback using %@ with arguments: %@", &v18, 0x2Au);
    }

    v16 = [v8 invokeScriptFunction:v12 withArguments:v9];
  }

  else
  {
    if (v15)
    {
      v18 = 138412546;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_275819000, v14, OS_LOG_TYPE_DEFAULT, "%@: Skipping %@ callback, no function provided.", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_processAttributes:(os_log_t)log .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_275819000, log, OS_LOG_TYPE_DEBUG, "%@: presentation type is: %lu", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_updateStatusWithAction:(uint8_t *)buf forObjectModel:(os_log_t)log completion:.cold.1(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_275819000, log, OS_LOG_TYPE_DEBUG, "%@: Presenting CDP status change controller for %@", buf, 0x16u);
}

- (void)_updateStatusWithAction:(uint64_t)a1 forObjectModel:(uint64_t)a2 completion:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a2;
  _os_log_fault_impl(&dword_275819000, a3, OS_LOG_TYPE_FAULT, "%@: Unexpected action processed - %@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end