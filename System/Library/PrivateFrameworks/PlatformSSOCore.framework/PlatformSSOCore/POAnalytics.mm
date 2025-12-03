@interface POAnalytics
+ (void)analyticsForLoginConfiguration:(id)configuration;
+ (void)analyticsForLoginManager:(id)manager;
+ (void)analyticsForLoginType:(id)type result:(id)result;
+ (void)analyticsForRegistrationType:(id)type options:(int64_t)options result:(int64_t)result;
+ (void)analyticsForSetupAssistantLoginType:(id)type result:(id)result;
+ (void)analyticsForTempSessionLoginType:(id)type result:(id)result;
@end

@implementation POAnalytics

+ (void)analyticsForLoginConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v3 = configurationCopy;
  AnalyticsSendEventLazy();
}

id __46__POAnalytics_analyticsForLoginConfiguration___block_invoke(uint64_t a1)
{
  v35[11] = *MEMORY[0x277D85DE8];
  v34[0] = @"hasInvalidCredentialPredicate";
  v2 = MEMORY[0x277CCABB0];
  v33 = [*(a1 + 32) invalidCredentialPredicate];
  v32 = [v2 numberWithInt:{objc_msgSend(v33, "length") != 0}];
  v35[0] = v32;
  v34[1] = @"includePreviousRefreshTokenInLoginRequest";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "includePreviousRefreshTokenInLoginRequest")}];
  v35[1] = v31;
  v34[2] = @"kerberosTicketMappingsCount";
  v3 = MEMORY[0x277CCABB0];
  v30 = [*(a1 + 32) kerberosTicketMappings];
  v29 = [v3 numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
  v35[2] = v29;
  v34[3] = @"hasCustomNonceRequestValues";
  v4 = MEMORY[0x277CCABB0];
  v28 = [*(a1 + 32) customNonceRequestValues];
  v27 = [v4 numberWithInt:{objc_msgSend(v28, "count") != 0}];
  v35[3] = v27;
  v34[4] = @"hasCustomAssertionRequestHeaderClaims";
  v5 = MEMORY[0x277CCABB0];
  v26 = [*(a1 + 32) customAssertionRequestHeaderClaims];
  v25 = [v5 numberWithInt:{objc_msgSend(v26, "count") != 0}];
  v35[4] = v25;
  v34[5] = @"hasCustomAssertionRequestBodyClaims";
  v6 = MEMORY[0x277CCABB0];
  v24 = [*(a1 + 32) customAssertionRequestBodyClaims];
  v23 = [v6 numberWithInt:{objc_msgSend(v24, "count") != 0}];
  v35[5] = v23;
  v34[6] = @"hasCustomLoginRequestHeaderClaims";
  v7 = MEMORY[0x277CCABB0];
  v22 = [*(a1 + 32) customLoginRequestHeaderClaims];
  v8 = [v7 numberWithInt:{objc_msgSend(v22, "count") != 0}];
  v35[6] = v8;
  v34[7] = @"hasCustomLoginRequestBodyClaims";
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) customLoginRequestBodyClaims];
  v11 = [v9 numberWithInt:{objc_msgSend(v10, "count") != 0}];
  v35[7] = v11;
  v34[8] = @"hasCustomRefreshRequestHeaderClaims";
  v12 = MEMORY[0x277CCABB0];
  v13 = [*(a1 + 32) customRefreshRequestHeaderClaims];
  v14 = [v12 numberWithInt:{objc_msgSend(v13, "count") != 0}];
  v35[8] = v14;
  v34[9] = @"hasCustomRefreshRequestBodyClaims";
  v15 = MEMORY[0x277CCABB0];
  v16 = [*(a1 + 32) customRefreshRequestBodyClaims];
  v17 = [v15 numberWithInt:{objc_msgSend(v16, "count") != 0}];
  v35[9] = v17;
  v34[10] = @"federationType";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "federationType")}];
  v35[10] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:11];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (void)analyticsForLoginType:(id)type result:(id)result
{
  typeCopy = type;
  resultCopy = result;
  v5 = resultCopy;
  v6 = typeCopy;
  AnalyticsSendEventLazy();
}

id __44__POAnalytics_analyticsForLoginType_result___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"type";
  v5[1] = @"result";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)analyticsForTempSessionLoginType:(id)type result:(id)result
{
  typeCopy = type;
  resultCopy = result;
  v5 = resultCopy;
  v6 = typeCopy;
  AnalyticsSendEventLazy();
}

id __55__POAnalytics_analyticsForTempSessionLoginType_result___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"type";
  v5[1] = @"result";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)analyticsForSetupAssistantLoginType:(id)type result:(id)result
{
  typeCopy = type;
  resultCopy = result;
  v5 = resultCopy;
  v6 = typeCopy;
  AnalyticsSendEventLazy();
}

id __58__POAnalytics_analyticsForSetupAssistantLoginType_result___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"type";
  v5[1] = @"result";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __66__POAnalytics_analyticsForPasswordChange_credentialNeeded_result___block_invoke(unsigned __int8 *a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"shouldChangePassword";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:a1[32]];
  v9[0] = v2;
  v8[1] = @"credentialNeeded";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a1[33]];
  v9[1] = v3;
  v8[2] = @"result";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a1[34]];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)analyticsForRegistrationType:(id)type options:(int64_t)options result:(int64_t)result
{
  typeCopy = type;
  v5 = typeCopy;
  AnalyticsSendEventLazy();
}

id __59__POAnalytics_analyticsForRegistrationType_options_result___block_invoke(void *a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v9[0] = a1[4];
  v8[0] = @"type";
  v8[1] = @"options";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  v9[1] = v3;
  v8[2] = @"result";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)analyticsForLoginManager:(id)manager
{
  managerCopy = manager;
  v3 = managerCopy;
  AnalyticsSendEventLazy();
}

id __53__POAnalytics_analyticsForDeviceRegistrationInBuddy___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"beforeEnrollment";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __51__POAnalytics_analyticsForUserRegistrationInBuddy___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"postSessionChange";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end