@interface TPSCallingLineIdRestrictionRequestController
- (void)executeFetchForRequest:(id)a3;
- (void)executeRequest:(id)a3;
- (void)executeSetForRequest:(id)a3;
- (void)suppServicesEvent:(id)a3 event:(int)a4 settingsType:(int)a5 data:(id)a6;
@end

@implementation TPSCallingLineIdRestrictionRequestController

- (void)executeRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TPSCallingLineIdRestrictionRequestController *)self executeSetForRequest:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TPSCallingLineIdRestrictionRequestController *)self executeFetchForRequest:v4];
    }
  }
}

- (void)executeFetchForRequest:(id)a3
{
  v4 = a3;
  v5 = [(TPSRequestController *)self telephonyClient];
  v6 = [v4 subscriptionContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__TPSCallingLineIdRestrictionRequestController_executeFetchForRequest___block_invoke;
  v8[3] = &unk_2782E3BD8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 fetchCallingLineIdRestrictionValue:v6 completion:v8];
}

void __71__TPSCallingLineIdRestrictionRequestController_executeFetchForRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 subscriptionContext];
    [v2 respondWithSubscriptionContext:v5 editable:0 state:0 error:v4];
  }
}

- (void)executeSetForRequest:(id)a3
{
  v4 = a3;
  v5 = CTCallingLineIdRestrictionValueForState([v4 state]);
  v6 = [(TPSRequestController *)self telephonyClient];
  v7 = [v4 subscriptionContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__TPSCallingLineIdRestrictionRequestController_executeSetForRequest___block_invoke;
  v9[3] = &unk_2782E3BD8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v6 saveCallingLineIdRestrictionValue:v7 restrictionValue:v5 completion:v9];
}

void __69__TPSCallingLineIdRestrictionRequestController_executeSetForRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 subscriptionContext];
    [v2 respondWithSubscriptionContext:v5 editable:0 state:0 error:v4];
  }
}

- (void)suppServicesEvent:(id)a3 event:(int)a4 settingsType:(int)a5 data:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (a5 == 6)
  {
    v12 = TPSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = TPSStringForCTSuppServicesEventType(a4);
      v14 = TPSStringForCTSuppServicesSettingsType(6u);
      v30 = 138413058;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v11;
      v36 = 2112;
      v37 = v10;
      _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "Received event %@, settings type %@, data %@ for context %@.", &v30, 0x2Au);
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
            [TPSCallingLineIdRestrictionRequestController suppServicesEvent:event:settingsType:data:];
          }

          goto LABEL_13;
        }

LABEL_14:
        v18 = TPSLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [TPSCallingLineIdRestrictionRequestController suppServicesEvent:a4 event:v18 settingsType:? data:?];
        }

        goto LABEL_24;
      }

      v28 = TPSLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412290;
        v31 = v15;
        _os_log_impl(&dword_21B8E9000, v28, OS_LOG_TYPE_DEFAULT, "Calling Line ID Restriction save request succeeded for %@.", &v30, 0xCu);
      }

      v27 = [v15 state];
      v24 = self;
      v25 = v10;
      v26 = 1;
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
            [TPSCallingLineIdRestrictionRequestController suppServicesEvent:event:settingsType:data:];
          }

LABEL_13:

          [(TPSCallingLineIdRestrictionRequestController *)self respondWithSubscriptionContext:v10 editable:0 state:0 error:v16];
LABEL_24:

          goto LABEL_25;
        }

        goto LABEL_14;
      }

      v19 = TPSLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412546;
        v31 = v15;
        v32 = 2112;
        v33 = v11;
        _os_log_impl(&dword_21B8E9000, v19, OS_LOG_TYPE_DEFAULT, "Calling Line ID Restriction fetch request succeeded for %@; data value is %@.", &v30, 0x16u);
      }

      v20 = [v11 callingLineIdRestrictionModification];
      v21 = [v20 intValue] == 1;

      v22 = [v11 callingLineIdRestriction];
      v23 = TPSCallingLineIdRestrictionStateForValue([v22 intValue]);

      v24 = self;
      v25 = v10;
      v26 = v21;
      v27 = v23;
    }

    [(TPSCallingLineIdRestrictionRequestController *)v24 respondWithSubscriptionContext:v25 editable:v26 state:v27 error:0];
    goto LABEL_24;
  }

LABEL_25:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)suppServicesEvent:event:settingsType:data:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_21B8E9000, v0, v1, "Calling Line ID Restriction save request failed with error %@ for %@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)suppServicesEvent:event:settingsType:data:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_21B8E9000, v0, v1, "Calling Line ID Restriction fetch request failed with error %@ for %@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)suppServicesEvent:(int)a1 event:(NSObject *)a2 settingsType:data:.cold.3(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "Event type %u is not recognized as a valid call waiting request event.", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end