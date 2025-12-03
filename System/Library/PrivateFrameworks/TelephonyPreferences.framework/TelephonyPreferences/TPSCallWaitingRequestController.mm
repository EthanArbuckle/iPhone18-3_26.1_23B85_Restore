@interface TPSCallWaitingRequestController
- (void)executeFetchForRequest:(id)request;
- (void)executeRequest:(id)request;
- (void)executeSetForRequest:(id)request;
- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data;
@end

@implementation TPSCallWaitingRequestController

- (void)executeRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TPSCallWaitingRequestController *)self executeSetForRequest:requestCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TPSCallWaitingRequestController *)self executeFetchForRequest:requestCopy];
    }
  }
}

- (void)executeFetchForRequest:(id)request
{
  requestCopy = request;
  telephonyClient = [(TPSRequestController *)self telephonyClient];
  subscriptionContext = [requestCopy subscriptionContext];
  callClass = [requestCopy callClass];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__TPSCallWaitingRequestController_executeFetchForRequest___block_invoke;
  v9[3] = &unk_2782E3BD8;
  v9[4] = self;
  v10 = requestCopy;
  v8 = requestCopy;
  [telephonyClient fetchCallWaitingValue:subscriptionContext callClass:callClass completion:v9];
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

- (void)executeSetForRequest:(id)request
{
  requestCopy = request;
  telephonyClient = [(TPSRequestController *)self telephonyClient];
  subscriptionContext = [requestCopy subscriptionContext];
  callClass = [requestCopy callClass];
  enabled = [requestCopy enabled];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__TPSCallWaitingRequestController_executeSetForRequest___block_invoke;
  v10[3] = &unk_2782E3BD8;
  v10[4] = self;
  v11 = requestCopy;
  v9 = requestCopy;
  [telephonyClient saveCallWaitingValue:subscriptionContext callClass:callClass enabled:enabled completion:v10];
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

- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data
{
  v44 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dataCopy = data;
  if (type == 3)
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
      v41 = dataCopy;
      v42 = 2112;
      v43 = eventCopy;
      _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "Received event %@, settings type %@, data %@ for context %@.", buf, 0x2Au);
    }

    pendingRequest = [(TPSRequestController *)self pendingRequest];
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v32 = TPSLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = pendingRequest;
          _os_log_impl(&dword_21B8E9000, v32, OS_LOG_TYPE_DEFAULT, "Call waiting save request succeeded for %@.", buf, 0xCu);
        }

        -[TPSCallWaitingRequestController respondWithSubscriptionContext:enabled:error:](self, "respondWithSubscriptionContext:enabled:error:", eventCopy, [pendingRequest enabled], 0);
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
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ for %@", @"Call waiting save request failed with error kCTSuppServicesEventTypeSaveError", pendingRequest];
        v35[2] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
        v27 = [TPSResponseError errorWithCode:4 userInfo:v26];

        v28 = TPSLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [TPSCallWaitingRequestController suppServicesEvent:v27 event:v28 settingsType:? data:?];
        }

        [(TPSCallWaitingRequestController *)self respondWithSubscriptionContext:eventCopy enabled:0 error:v27];
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
          enabled = [dataCopy enabled];
          *buf = 138412546;
          v37 = pendingRequest;
          v38 = 2112;
          v39 = enabled;
          _os_log_impl(&dword_21B8E9000, v30, OS_LOG_TYPE_DEFAULT, "Call waiting fetch request succeeded for %@; enabled value is %@.", buf, 0x16u);
        }

        enabled2 = [dataCopy enabled];
        bOOLValue = [enabled2 BOOLValue];
        selfCopy2 = self;
        v19 = eventCopy;
        v21 = 0;
        goto LABEL_21;
      }

      if (a4 == 2)
      {
        enabled2 = [TPSResponseError errorWithCode:2 userInfo:0];
        v17 = TPSLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [TPSCallWaitingRequestController suppServicesEvent:enabled2 event:pendingRequest settingsType:v17 data:?];
        }

        selfCopy2 = self;
        v19 = eventCopy;
        bOOLValue = 0;
        v21 = enabled2;
LABEL_21:
        [(TPSCallWaitingRequestController *)selfCopy2 respondWithSubscriptionContext:v19 enabled:bOOLValue error:v21];

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