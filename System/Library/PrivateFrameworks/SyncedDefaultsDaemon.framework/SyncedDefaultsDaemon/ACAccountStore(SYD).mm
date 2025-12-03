@interface ACAccountStore(SYD)
- (id)syd_accountForCurrentPersonaWithError:()SYD;
- (id)syd_accountForPersonaIdentifier:()SYD error:;
- (id)syd_accountIdentifierForCurrentPersona;
@end

@implementation ACAccountStore(SYD)

- (id)syd_accountForPersonaIdentifier:()SYD error:
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = SYDGetAccountsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore(SYD) syd_accountForPersonaIdentifier:error:];
  }

  v31[0] = *MEMORY[0x277CB8BA0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v29 = 0;
  v9 = [self accountsWithAccountTypeIdentifiers:v8 error:&v29];
  v10 = v29;

  if (v10)
  {
    v11 = SYDGetAccountsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ACAccountStore(SYD) syd_accountForPersonaIdentifier:error:];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v13)
  {
    v14 = *v26;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        personaIdentifier = [v16 personaIdentifier];
        v18 = [personaIdentifier isEqualToString:v6];

        if (v18)
        {
          v13 = v16;
          goto LABEL_17;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if (a4)
  {
    v19 = v10;
    *a4 = v10;
  }

  v20 = SYDGetAccountsLog();
  v21 = v20;
  if (v13)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [(ACAccountStore(SYD) *)v6 syd_accountForPersonaIdentifier:v13 error:v21];
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [ACAccountStore(SYD) syd_accountForPersonaIdentifier:error:];
  }

  v22 = v13;
  v23 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)syd_accountForCurrentPersonaWithError:()SYD
{
  v5 = SYDGetAccountsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACAccountStore(SYD) syd_accountForCurrentPersonaWithError:v5];
  }

  if (SYDIsDataSeparatedPersona())
  {
    currentPersona = [MEMORY[0x277D77C08] currentPersona];
    userPersonaUniqueString = [currentPersona userPersonaUniqueString];

    v14 = 0;
    aa_primaryAppleAccount = [self syd_accountForPersonaIdentifier:userPersonaUniqueString error:&v14];
    v9 = v14;
    if (v9)
    {
      v10 = SYDGetAccountsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ACAccountStore(SYD) syd_accountForCurrentPersonaWithError:];
      }
    }

    if (a3)
    {
      v11 = v9;
      *a3 = v9;
    }
  }

  else
  {
    v12 = SYDGetAccountsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore(SYD) syd_accountForCurrentPersonaWithError:v12];
    }

    aa_primaryAppleAccount = [self aa_primaryAppleAccount];
  }

  return aa_primaryAppleAccount;
}

- (id)syd_accountIdentifierForCurrentPersona
{
  v1 = [self syd_accountForCurrentPersonaWithError:0];
  identifier = [v1 identifier];

  return identifier;
}

- (void)syd_accountForPersonaIdentifier:()SYD error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_26C384000, v0, OS_LOG_TYPE_DEBUG, "Getting account for persona %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)syd_accountForPersonaIdentifier:()SYD error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_26C384000, v0, OS_LOG_TYPE_ERROR, "Error getting all AppleAccounts: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)syd_accountForPersonaIdentifier:()SYD error:.cold.3(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 identifier];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_26C384000, a3, OS_LOG_TYPE_DEBUG, "Found account for persona %@: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)syd_accountForPersonaIdentifier:()SYD error:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_26C384000, v0, OS_LOG_TYPE_ERROR, "Couldn't find account for persona %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)syd_accountForCurrentPersonaWithError:()SYD .cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_26C384000, v1, OS_LOG_TYPE_ERROR, "Error getting account for persona %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end