@interface TPSCallForwardingRequestController
- (id)valueForNotificationData:(id)data;
- (void)executeFetchForRequest:(id)request;
- (void)executeRequest:(id)request;
- (void)executeSetForRequest:(id)request;
- (void)respondWithSubscriptionContext:(id)context value:(id)value error:(id)error;
- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data;
@end

@implementation TPSCallForwardingRequestController

- (void)executeRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TPSCallForwardingRequestController *)self executeSetForRequest:requestCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TPSCallForwardingRequestController *)self executeFetchForRequest:requestCopy];
    }
  }
}

- (void)executeFetchForRequest:(id)request
{
  requestCopy = request;
  telephonyClient = [(TPSRequestController *)self telephonyClient];
  subscriptionContext = [requestCopy subscriptionContext];
  reason = [requestCopy reason];
  callClass = [requestCopy callClass];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__TPSCallForwardingRequestController_executeFetchForRequest___block_invoke;
  v10[3] = &unk_2782E3BD8;
  v10[4] = self;
  v11 = requestCopy;
  v9 = requestCopy;
  [telephonyClient fetchCallForwardingValue:subscriptionContext reason:reason callClass:callClass completion:v10];
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

- (void)executeSetForRequest:(id)request
{
  requestCopy = request;
  telephonyClient = [(TPSRequestController *)self telephonyClient];
  subscriptionContext = [requestCopy subscriptionContext];
  value = [requestCopy value];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__TPSCallForwardingRequestController_executeSetForRequest___block_invoke;
  v9[3] = &unk_2782E3BD8;
  v9[4] = self;
  v10 = requestCopy;
  v8 = requestCopy;
  [telephonyClient saveCallForwardingValue:subscriptionContext value:value completion:v9];
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

- (void)respondWithSubscriptionContext:(id)context value:(id)value error:(id)error
{
  errorCopy = error;
  valueCopy = value;
  contextCopy = context;
  v11 = [[TPSCallForwardingResponse alloc] initWithSubscriptionContext:contextCopy error:errorCopy value:valueCopy];

  [(TPSRequestController *)self postResponse:v11];
}

- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dataCopy = data;
  if (type == 1)
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
      v30 = dataCopy;
      v31 = 2112;
      v32 = eventCopy;
      _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "Received event %@, settings type %@, data %@ for context %@.", &v25, 0x2Au);
    }

    pendingRequest = [(TPSRequestController *)self pendingRequest];
    if (a4 > 2)
    {
      if (a4 != 3)
      {
        if (a4 == 4)
        {
          value = [TPSResponseError errorWithCode:4 userInfo:0];
          v17 = TPSLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [TPSCallForwardingRequestController suppServicesEvent:event:settingsType:data:];
          }

          goto LABEL_13;
        }

LABEL_14:
        value = TPSLog();
        if (os_log_type_enabled(value, OS_LOG_TYPE_ERROR))
        {
          [TPSCallForwardingRequestController suppServicesEvent:a4 event:value settingsType:? data:?];
        }

        goto LABEL_27;
      }

      v22 = TPSLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = pendingRequest;
        _os_log_impl(&dword_21B8E9000, v22, OS_LOG_TYPE_DEFAULT, "Call forwarding save request succeeded for %@.", &v25, 0xCu);
      }

      value = [pendingRequest value];
    }

    else
    {
      if (a4 != 1)
      {
        if (a4 == 2)
        {
          value = [TPSResponseError errorWithCode:2 userInfo:0];
          v17 = TPSLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [TPSCallForwardingRequestController suppServicesEvent:event:settingsType:data:];
          }

LABEL_13:

          selfCopy2 = self;
          v19 = eventCopy;
          v20 = 0;
          v21 = value;
LABEL_26:
          [(TPSCallForwardingRequestController *)selfCopy2 respondWithSubscriptionContext:v19 value:v20 error:v21];
LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_14;
      }

      if (dataCopy)
      {
        value = [(TPSCallForwardingRequestController *)self valueForNotificationData:dataCopy];
      }

      else
      {
        value = 0;
      }

      v23 = TPSLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412546;
        v26 = pendingRequest;
        v27 = 2112;
        v28 = value;
        _os_log_impl(&dword_21B8E9000, v23, OS_LOG_TYPE_DEFAULT, "Call forwarding fetch request succeeded for %@; value is %@.", &v25, 0x16u);
      }
    }

    selfCopy2 = self;
    v19 = eventCopy;
    v20 = value;
    v21 = 0;
    goto LABEL_26;
  }

LABEL_28:

  v24 = *MEMORY[0x277D85DE8];
}

- (id)valueForNotificationData:(id)data
{
  v3 = MEMORY[0x277CC3628];
  dataCopy = data;
  v5 = objc_alloc_init(v3);
  callClass = [dataCopy callClass];
  [v5 setClss:{objc_msgSend(callClass, "unsignedIntValue")}];

  enabled = [dataCopy enabled];
  [v5 setEnabled:{objc_msgSend(enabled, "BOOLValue")}];

  callForwardingNoReplyTime = [dataCopy callForwardingNoReplyTime];
  [v5 setNoReplyTime:callForwardingNoReplyTime];

  callForwardingReason = [dataCopy callForwardingReason];
  [v5 setReason:{objc_msgSend(callForwardingReason, "unsignedIntValue")}];

  callForwardingNumber = [dataCopy callForwardingNumber];

  [v5 setSaveNumber:callForwardingNumber];

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