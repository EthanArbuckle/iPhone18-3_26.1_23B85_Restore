@interface TPSCallWaitingRequestController
- (void)executeFetchForRequest:(id)a3;
- (void)executeRequest:(id)a3;
- (void)executeSetForRequest:(id)a3;
- (void)suppServicesEvent:(id)a3 event:(int)a4 settingsType:(int)a5 data:(id)a6;
@end

@implementation TPSCallWaitingRequestController

- (void)executeRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TPSCallWaitingRequestController *)self executeSetForRequest:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TPSCallWaitingRequestController *)self executeFetchForRequest:v4];
    }
  }
}

- (void)executeFetchForRequest:(id)a3
{
  v4 = a3;
  v5 = [(TPSRequestController *)self telephonyClient];
  v6 = [v4 subscriptionContext];
  v7 = [v4 callClass];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__TPSCallWaitingRequestController_executeFetchForRequest___block_invoke;
  v9[3] = &unk_2782E3BD8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v5 fetchCallWaitingValue:v6 callClass:v7 completion:v9];
}

void __58__TPSCallWaitingRequestController_executeFetchForRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 subscriptionContext];
    [v2 respondWithSubscriptionContext:v5 enabled:0 error:v4];
  }
}

- (void)executeSetForRequest:(id)a3
{
  v4 = a3;
  v5 = [(TPSRequestController *)self telephonyClient];
  v6 = [v4 subscriptionContext];
  v7 = [v4 callClass];
  v8 = [v4 enabled];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__TPSCallWaitingRequestController_executeSetForRequest___block_invoke;
  v10[3] = &unk_2782E3BD8;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v5 saveCallWaitingValue:v6 callClass:v7 enabled:v8 completion:v10];
}

void __56__TPSCallWaitingRequestController_executeSetForRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 subscriptionContext];
    [v2 respondWithSubscriptionContext:v5 enabled:0 error:v4];
  }
}

- (void)suppServicesEvent:(id)a3 event:(int)a4 settingsType:(int)a5 data:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (a5 == 3)
  {
    v12 = TPSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = TPSStringForCTSuppServicesEventType(a4);
      v14 = TPSStringForCTSuppServicesSettingsType(3u);
      *buf = 138413058;
      v37 = v13;
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = v11;
      v42 = 2112;
      v43 = v10;
      _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "Received event %@, settings type %@, data %@ for context %@.", buf, 0x2Au);
    }

    v15 = [(TPSRequestController *)self pendingRequest];
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v32 = TPSLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v15;
          _os_log_impl(&dword_21B8E9000, v32, OS_LOG_TYPE_DEFAULT, "Call waiting save request succeeded for %@.", buf, 0xCu);
        }

        -[TPSCallWaitingRequestController respondWithSubscriptionContext:enabled:error:](self, "respondWithSubscriptionContext:enabled:error:", v10, [v15 enabled], 0);
        goto LABEL_25;
      }

      if (a4 == 4)
      {
        v34[0] = *MEMORY[0x277CCA460];
        v22 = [TPSLocalizedString localizedStringForKey:@"CALL_WAITING_SAVE_REQUEST_ERROR_LOCALIZED_DESCRIPTION"];
        v23 = *MEMORY[0x277CCA470];
        v35[0] = v22;
        v35[1] = @"Call waiting save request failed with error kCTSuppServicesEventTypeSaveError";
        v24 = *MEMORY[0x277CCA068];
        v34[1] = v23;
        v34[2] = v24;
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ for %@", @"Call waiting save request failed with error kCTSuppServicesEventTypeSaveError", v15];
        v35[2] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
        v27 = [TPSResponseError errorWithCode:4 userInfo:v26];

        v28 = TPSLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [TPSCallWaitingRequestController suppServicesEvent:v27 event:v28 settingsType:? data:?];
        }

        [(TPSCallWaitingRequestController *)self respondWithSubscriptionContext:v10 enabled:0 error:v27];
        goto LABEL_25;
      }
    }

    else
    {
      if (a4 == 1)
      {
        v30 = TPSLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v11 enabled];
          *buf = 138412546;
          v37 = v15;
          v38 = 2112;
          v39 = v31;
          _os_log_impl(&dword_21B8E9000, v30, OS_LOG_TYPE_DEFAULT, "Call waiting fetch request succeeded for %@; enabled value is %@.", buf, 0x16u);
        }

        v16 = [v11 enabled];
        v20 = [v16 BOOLValue];
        v18 = self;
        v19 = v10;
        v21 = 0;
        goto LABEL_21;
      }

      if (a4 == 2)
      {
        v16 = [TPSResponseError errorWithCode:2 userInfo:0];
        v17 = TPSLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [TPSCallWaitingRequestController suppServicesEvent:v16 event:v15 settingsType:v17 data:?];
        }

        v18 = self;
        v19 = v10;
        v20 = 0;
        v21 = v16;
LABEL_21:
        [(TPSCallWaitingRequestController *)v18 respondWithSubscriptionContext:v19 enabled:v20 error:v21];

LABEL_25:
        goto LABEL_26;
      }
    }

    v29 = TPSLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [TPSCallingLineIdRestrictionRequestController suppServicesEvent:a4 event:v29 settingsType:? data:?];
    }

    goto LABEL_25;
  }

LABEL_26:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)suppServicesEvent:(void *)a1 event:(NSObject *)a2 settingsType:data:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "%@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)suppServicesEvent:(os_log_t)log event:settingsType:data:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_21B8E9000, log, OS_LOG_TYPE_ERROR, "Call waiting fetch request failed with error %@ for %@.", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end