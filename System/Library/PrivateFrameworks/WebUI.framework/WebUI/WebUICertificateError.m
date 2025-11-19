@interface WebUICertificateError
+ (BOOL)userAllowsCertificateTrust:(__SecTrust *)a3 host:(id)a4;
@end

@implementation WebUICertificateError

+ (BOOL)userAllowsCertificateTrust:(__SecTrust *)a3 host:(id)a4
{
  v29[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CF9710] defaultTrustManager];
  v7 = *MEMORY[0x277CF9718];
  v8 = [v6 actionForSSLTrust:a3 hostname:v5 service:*MEMORY[0x277CF9718]];
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 1;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CF9708]);
      [v10 setTrust:a3];
      v11 = [v5 _webkit_decodeHostName];
      [v10 setHost:v11];

      [v10 setService:v7];
      if ([off_279EB0F30 certificateWarningCannotBeBypassedForTrust:a3])
      {
        v12 = *MEMORY[0x277CF9738];
        v28[0] = *MEMORY[0x277CF9740];
        v28[1] = v12;
        v29[0] = MEMORY[0x277CBEC28];
        v29[1] = MEMORY[0x277CBEC28];
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
      }

      else
      {
        v13 = 0;
      }

      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v14 = dispatch_semaphore_create(0);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __57__WebUICertificateError_userAllowsCertificateTrust_host___block_invoke;
      v18[3] = &unk_279EB14C0;
      v19 = v6;
      v23 = a3;
      v20 = v5;
      v22 = &v24;
      v15 = v14;
      v21 = v15;
      [v10 showPromptWithOptions:v13 responseBlock:v18];
      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      v9 = *(v25 + 24);

      _Block_object_dispose(&v24, 8);
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

intptr_t __57__WebUICertificateError_userAllowsCertificateTrust_host___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    [*(a1 + 32) allowTrust:*(a1 + 64) forHost:*(a1 + 40) service:*MEMORY[0x277CF9718]];
  }

  *(*(*(a1 + 56) + 8) + 24) = (a2 - 1) < 2;
  v4 = *(a1 + 48);

  return dispatch_semaphore_signal(v4);
}

@end