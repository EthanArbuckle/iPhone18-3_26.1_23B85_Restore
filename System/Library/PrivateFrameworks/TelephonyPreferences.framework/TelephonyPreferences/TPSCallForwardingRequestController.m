@interface TPSCallForwardingRequestController
- (id)valueForNotificationData:(id)a3;
- (void)executeFetchForRequest:(id)a3;
- (void)executeRequest:(id)a3;
- (void)executeSetForRequest:(id)a3;
- (void)respondWithSubscriptionContext:(id)a3 value:(id)a4 error:(id)a5;
- (void)suppServicesEvent:(id)a3 event:(int)a4 settingsType:(int)a5 data:(id)a6;
@end

@implementation TPSCallForwardingRequestController

- (void)executeRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TPSCallForwardingRequestController *)self executeSetForRequest:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TPSCallForwardingRequestController *)self executeFetchForRequest:v4];
    }
  }
}

- (void)executeFetchForRequest:(id)a3
{
  v4 = a3;
  v5 = [(TPSRequestController *)self telephonyClient];
  v6 = [v4 subscriptionContext];
  v7 = [v4 reason];
  v8 = [v4 callClass];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__TPSCallForwardingRequestController_executeFetchForRequest___block_invoke;
  v10[3] = &unk_2782E3BD8;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v5 fetchCallForwardingValue:v6 reason:v7 callClass:v8 completion:v10];
}

void __61__TPSCallForwardingRequestController_executeFetchForRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 subscriptionContext];
    [v2 respondWithSubscriptionContext:v5 value:0 error:v4];
  }
}

- (void)executeSetForRequest:(id)a3
{
  v4 = a3;
  v5 = [(TPSRequestController *)self telephonyClient];
  v6 = [v4 subscriptionContext];
  v7 = [v4 value];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__TPSCallForwardingRequestController_executeSetForRequest___block_invoke;
  v9[3] = &unk_2782E3BD8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v5 saveCallForwardingValue:v6 value:v7 completion:v9];
}

void __59__TPSCallForwardingRequestController_executeSetForRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 subscriptionContext];
    [v2 respondWithSubscriptionContext:v5 value:0 error:v4];
  }
}

- (void)respondWithSubscriptionContext:(id)a3 value:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[TPSCallForwardingResponse alloc] initWithSubscriptionContext:v10 error:v8 value:v9];

  [(TPSRequestController *)self postResponse:v11];
}

- (void)suppServicesEvent:(id)a3 event:(int)a4 settingsType:(int)a5 data:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (a5 == 1)
  {
    v12 = TPSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = TPSStringForCTSuppServicesEventType(a4);
      v14 = TPSStringForCTSuppServicesSettingsType(1u);
      v25 = 138413058;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "Received event %@, settings type %@, data %@ for context %@.", &v25, 0x2Au);
    }

    v15 = [(TPSRequestController *)self pendingRequest];
    if (a4 > 2)
    {
      if (a4 != 3)
      {
        if (a4 == 4)
        {
          v16 = [TPSResponseError errorWithCode:4 userInfo:0];
          v17 = TPSLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [TPSCallForwardingRequestController suppServicesEvent:event:settingsType:data:];
          }

          goto LABEL_13;
        }

LABEL_14:
        v16 = TPSLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [TPSCallForwardingRequestController suppServicesEvent:a4 event:v16 settingsType:? data:?];
        }

        goto LABEL_27;
      }

      v22 = TPSLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = v15;
        _os_log_impl(&dword_21B8E9000, v22, OS_LOG_TYPE_DEFAULT, "Call forwarding save request succeeded for %@.", &v25, 0xCu);
      }

      v16 = [v15 value];
    }

    else
    {
      if (a4 != 1)
      {
        if (a4 == 2)
        {
          v16 = [TPSResponseError errorWithCode:2 userInfo:0];
          v17 = TPSLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [TPSCallForwardingRequestController suppServicesEvent:event:settingsType:data:];
          }

LABEL_13:

          v18 = self;
          v19 = v10;
          v20 = 0;
          v21 = v16;
LABEL_26:
          [(TPSCallForwardingRequestController *)v18 respondWithSubscriptionContext:v19 value:v20 error:v21];
LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_14;
      }

      if (v11)
      {
        v16 = [(TPSCallForwardingRequestController *)self valueForNotificationData:v11];
      }

      else
      {
        v16 = 0;
      }

      v23 = TPSLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412546;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_21B8E9000, v23, OS_LOG_TYPE_DEFAULT, "Call forwarding fetch request succeeded for %@; value is %@.", &v25, 0x16u);
      }
    }

    v18 = self;
    v19 = v10;
    v20 = v16;
    v21 = 0;
    goto LABEL_26;
  }

LABEL_28:

  v24 = *MEMORY[0x277D85DE8];
}

- (id)valueForNotificationData:(id)a3
{
  v3 = MEMORY[0x277CC3628];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 callClass];
  [v5 setClss:{objc_msgSend(v6, "unsignedIntValue")}];

  v7 = [v4 enabled];
  [v5 setEnabled:{objc_msgSend(v7, "BOOLValue")}];

  v8 = [v4 callForwardingNoReplyTime];
  [v5 setNoReplyTime:v8];

  v9 = [v4 callForwardingReason];
  [v5 setReason:{objc_msgSend(v9, "unsignedIntValue")}];

  v10 = [v4 callForwardingNumber];

  [v5 setSaveNumber:v10];

  return v5;
}

- (void)suppServicesEvent:event:settingsType:data:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_21B8E9000, v0, v1, "Call forwarding save request failed with error %@ for %@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)suppServicesEvent:event:settingsType:data:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_21B8E9000, v0, v1, "Call forwarding fetch request failed with error %@ for %@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)suppServicesEvent:(int)a1 event:(NSObject *)a2 settingsType:data:.cold.3(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "Event type %u is not recognized as a valid call forwarding request event.", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end