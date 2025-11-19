@interface NSMutableURLRequest
@end

@implementation NSMutableURLRequest

void __60__NSMutableURLRequest_ICQ__icq_sanitizedHeadersForDynamicUI__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([(__CFString *)v8 isEqualToString:@"Authorization"])
  {
    v6 = @"Authorization-iCloud";
    v7 = v5;
  }

  else
  {
    v7 = v5;
    v6 = v8;
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void __67__NSMutableURLRequest_ICQ__icq_addHeadersForUpgradeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 allHTTPHeaderFields];
  v6 = [v5 mutableCopy];

  [v6 addEntriesFromDictionary:v4];
  [*(a1 + 32) setAllHTTPHeaderFields:v6];
  v7 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v8 = [v7 ams_activeiTunesAccount];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 ams_DSID];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [v9 ams_DSID];
      v13 = [v12 stringValue];
      [v11 setValue:v13 forHTTPHeaderField:@"X-Apple-Itunes-DSID"];
    }
  }

  if ([_ICQHelperFunctions defaultKeyExists:@"_ICQPlaceholderResponse"])
  {
    [*(a1 + 32) setValue:@"true" forHTTPHeaderField:@"x-apple-placeholderReplacement-simulate"];
  }

  if ([_ICQHelperFunctions defaultKeyExists:@"EnableBundles"])
  {
    [*(a1 + 32) setValue:@"default" forHTTPHeaderField:@"x-apple-bundleoffer-simulate"];
  }

  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 32) allHTTPHeaderFields];
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = [*(a1 + 32) HTTPBody];
    v18 = [v16 initWithData:v17 encoding:4];
    *buf = 138412546;
    v25 = v15;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "Request headers: %@, body (decoded from data): %@", buf, 0x16u);
  }

  v19 = _ICQGetLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __67__NSMutableURLRequest_ICQ__icq_addHeadersForUpgradeWithCompletion___block_invoke_cold_1(v19);
  }

  v20 = *(a1 + 32);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__NSMutableURLRequest_ICQ__icq_addHeadersForUpgradeWithCompletion___block_invoke_62;
  v22[3] = &unk_27A652DB0;
  v22[4] = v20;
  v23 = *(a1 + 40);
  [v20 icq_renewAuthorizationHeadersForAccount:0 store:0 completion:v22];

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __67__NSMutableURLRequest_ICQ__icq_addHeadersForUpgradeWithCompletion___block_invoke_62(uint64_t a1, char a2)
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __67__NSMutableURLRequest_ICQ__icq_addHeadersForUpgradeWithCompletion___block_invoke_62_cold_1(a2, a1, v4);
  }

  return (*(*(a1 + 40) + 16))();
}

void __85__NSMutableURLRequest_ICQ__icq_renewAuthorizationHeadersForAccount_store_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[NSMutableURLRequest(ICQ) icq_renewAuthorizationHeadersForAccount:store:completion:]_block_invoke";
    v12 = 2048;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "%s renew credentials returned with result %lu, error %@", &v10, 0x20u);
  }

  if (!a2)
  {
    [*(a1 + 32) aa_addBasicAuthorizationHeaderWithAccount:*(a1 + 40) preferUsingPassword:0];
    [*(a1 + 32) ak_addClientInfoHeader];
  }

  v7 = [*(a1 + 32) icq_hasAuthHeaders];
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67109120;
    LODWORD(v11) = v7;
    _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "validateAuthorizationHeaders completed renew credentials with success: %d", &v10, 8u);
  }

  (*(*(a1 + 48) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

void __67__NSMutableURLRequest_ICQ__icq_addHeadersForUpgradeWithCompletion___block_invoke_62_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v5[0] = 67109378;
  v5[1] = a1 & 1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_275572000, log, OS_LOG_TYPE_DEBUG, "Auth headers validated with success: %d request: %@", v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

@end