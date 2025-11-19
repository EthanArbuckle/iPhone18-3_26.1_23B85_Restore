@interface ICQUIHelperFunctions
@end

@implementation ICQUIHelperFunctions

void __57___ICQUIHelperFunctions_addHeadersForRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 allHTTPHeaderFields];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  [v9 addEntriesFromDictionary:v4];
  [*(a1 + 32) setAllHTTPHeaderFields:v9];
  v10 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v11 = [v10 ams_activeiTunesAccount];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 ams_DSID];

    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = [v12 ams_DSID];
      v16 = [v15 stringValue];
      [v14 setValue:v16 forHTTPHeaderField:@"X-Apple-Itunes-DSID"];
    }
  }

  v17 = _ICQGetLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 32) allHTTPHeaderFields];
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = [*(a1 + 32) HTTPBody];
    v21 = [v19 initWithData:v20 encoding:4];
    v22 = 138412546;
    v23 = v18;
    v24 = 2112;
    v25 = v21;
    _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "Request headers: %@, body (decoded from data): %@", &v22, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

@end