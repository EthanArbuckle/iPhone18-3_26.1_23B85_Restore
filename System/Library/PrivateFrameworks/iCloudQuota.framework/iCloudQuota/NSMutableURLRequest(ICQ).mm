@interface NSMutableURLRequest(ICQ)
- (BOOL)icq_hasAuthHeaders;
- (id)icq_sanitizedHeadersForDynamicUI;
- (void)icq_addHeadersForUpgradeWithCompletion:()ICQ;
- (void)icq_renewAuthorizationHeadersForAccount:()ICQ store:completion:;
@end

@implementation NSMutableURLRequest(ICQ)

- (id)icq_sanitizedHeadersForDynamicUI
{
  v2 = objc_opt_new();
  v3 = [a1 allHTTPHeaderFields];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__NSMutableURLRequest_ICQ__icq_sanitizedHeadersForDynamicUI__block_invoke;
  v6[3] = &unk_27A652FB0;
  v4 = v2;
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (void)icq_addHeadersForUpgradeWithCompletion:()ICQ
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getINDaemonConnectionClass_softClass_3;
  v15 = getINDaemonConnectionClass_softClass_3;
  if (!getINDaemonConnectionClass_softClass_3)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getINDaemonConnectionClass_block_invoke_3;
    v11[3] = &unk_27A6517A8;
    v11[4] = &v12;
    __getINDaemonConnectionClass_block_invoke_3(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = objc_alloc_init(v5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__NSMutableURLRequest_ICQ__icq_addHeadersForUpgradeWithCompletion___block_invoke;
  v9[3] = &unk_27A652FD8;
  v9[4] = a1;
  v10 = v4;
  v8 = v4;
  [v7 commonHeadersForRequest:a1 withCompletion:v9];
}

- (void)icq_renewAuthorizationHeadersForAccount:()ICQ store:completion:
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 aa_primaryAppleAccount];
  v12 = v11;
  if (v8)
  {
    v13 = [v11 aa_altDSID];
    v14 = [v8 aa_altDSID];

    if (v13 != v14)
    {
      v15 = _ICQGetLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [NSMutableURLRequest(ICQ) icq_renewAuthorizationHeadersForAccount:a1 store:v15 completion:?];
      }

LABEL_5:

      v10[2](v10, 0);
      goto LABEL_13;
    }
  }

  else
  {
    v16 = _ICQGetLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "Account not provided, skipping check", buf, 2u);
    }
  }

  if ([a1 icq_hasAuthHeaders])
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = a1;
      _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "request already has auth headers. request: %@", buf, 0xCu);
    }

    v10[2](v10, 1);
  }

  else
  {
    v15 = _ICQGetLogSystem();
    v19 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (!v12)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "Missing auth headers and no account provided or found, unable to renew credentials.", buf, 2u);
      }

      goto LABEL_5;
    }

    if (v19)
    {
      *buf = 138412290;
      v28 = a1;
      _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "Missing auth header or client info header, attempting to renew credentials. request: %@", buf, 0xCu);
    }

    v20 = *MEMORY[0x277CB9098];
    v25[0] = *MEMORY[0x277CB90A0];
    v25[1] = v20;
    v26[0] = MEMORY[0x277CBEC28];
    v26[1] = MEMORY[0x277CBEC38];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __85__NSMutableURLRequest_ICQ__icq_renewAuthorizationHeadersForAccount_store_completion___block_invoke;
    v22[3] = &unk_27A653000;
    v22[4] = a1;
    v23 = v12;
    v24 = v10;
    [v9 renewCredentialsForAccount:v23 options:v21 completion:v22];
  }

LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)icq_hasAuthHeaders
{
  v2 = [a1 valueForHTTPHeaderField:@"Authorization"];
  if (v2)
  {
    v3 = [a1 valueForHTTPHeaderField:@"X-MMe-Client-Info"];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)icq_renewAuthorizationHeadersForAccount:()ICQ store:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[NSMutableURLRequest(ICQ) icq_renewAuthorizationHeadersForAccount:store:completion:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "%s account change detected while validating auth headers. request %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end