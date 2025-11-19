@interface ACAccount
@end

@implementation ACAccount

void __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_cold_1(v6);
    }

    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_cold_2();
    }
  }

  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_605;
    block[3] = &unk_2787CC1B8;
    v21 = *(a1 + 40);
    v20 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v9 = v21;
  }

  else
  {
    v10 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_DEFAULT, "Nil credential token for FBK IDMS Service. Will renew", buf, 2u);
    }

    v11 = [*(a1 + 32) accountStore];
    v12 = *(a1 + 32);
    v22[0] = @"com.apple.gs.beta.auth";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_606;
    v16[3] = &unk_2787CC1E0;
    v14 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v14;
    [v11 aida_renewCredentialsForAccount:v12 services:v13 completion:v16];

    v9 = v17;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_606(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[SDSeedingLogging betaHandle];
  v7 = v6;
  switch(a2)
  {
    case 2:
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v8 = "renewal result: failed";
      goto LABEL_10;
    case 1:
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v8 = "renewal result: rejected";
      goto LABEL_10;
    case 0:
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v8 = "renewal result: renewed";
LABEL_10:
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      goto LABEL_13;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_606_cold_1();
  }

LABEL_13:

  if (v5)
  {
    v9 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_606_cold_2();
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_607;
  v11[3] = &unk_2787CBCD8;
  v10 = *(a1 + 32);
  v12 = *(a1 + 40);
  [v10 aida_tokenForService:@"com.apple.gs.beta.auth" completionHandler:v11];
}

void __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_607(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_607_cold_1(v6);
    }

    v8 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_cold_2();
    }
  }

  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_2;
    block[3] = &unk_2787CC1B8;
    v9 = &v13;
    v13 = *(a1 + 32);
    v12 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v10 = +[SDSeedingLogging betaHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_607_cold_3();
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_608;
    v14[3] = &unk_2787CC118;
    v9 = &v15;
    v15 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }
}

void __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_606_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_606_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_22E41E000, v0, v1, "Credential renewal failed with [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_607_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke_607_cold_3()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end