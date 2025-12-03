@interface SFSafariCreditCardStore
+ (id)savedCreditCardsWithError:(id *)error;
+ (void)showCreditCardSettings;
@end

@implementation SFSafariCreditCardStore

+ (id)savedCreditCardsWithError:(id *)error
{
  v18[7] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CDC140];
  v17[0] = *MEMORY[0x277CDBEC8];
  v17[1] = v4;
  v5 = *MEMORY[0x277CDC238];
  v6 = *MEMORY[0x277CDC120];
  v17[2] = *MEMORY[0x277CDC228];
  v17[3] = v6;
  v18[2] = v5;
  v18[3] = @"SafariCreditCardEntries";
  v7 = *MEMORY[0x277CDC560];
  v17[4] = *MEMORY[0x277CDC428];
  v17[5] = v7;
  v18[4] = *MEMORY[0x277CDC430];
  v18[5] = MEMORY[0x277CBEC28];
  v18[0] = @"com.apple.safari.credit-cards";
  v18[1] = MEMORY[0x277CBEC38];
  v17[6] = *MEMORY[0x277CDC558];
  v18[6] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];
  v16 = 0;
  v9 = SecItemCopyMatching(v8, &v16);
  v10 = v9;
  if (v9 != -25300)
  {
    if (!v9)
    {
      v11 = v16;
      v12 = [v16 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_8];

      goto LABEL_9;
    }

    v13 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SFSafariCreditCardStore *)v10 savedCreditCardsWithError:v13];
    }

    if (error)
    {
      *error = SecCopyLastError();
    }
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

id __53__SFSafariCreditCardStore_savedCreditCardsWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCAC58] propertyListWithData:a2 options:0 format:0 error:0];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [v2 objectForKeyedSubscript:@"CardNameUIString"];
    if (v4)
    {
      [v3 setObject:v4 forKeyedSubscript:@"CardNameUIString"];
    }

    v5 = [v2 objectForKeyedSubscript:@"CardNumber"];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"CardNumber"];
    }

    v6 = [v2 objectForKeyedSubscript:@"ExpirationDate"];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"ExpirationDate"];
    }

    v7 = [v2 objectForKeyedSubscript:@"CardholderName"];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"CardholderName"];
    }

    v8 = [v2 objectForKeyedSubscript:@"CardSecurityCode"];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"CardSecurityCode"];
    }

    v9 = [v3 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)showCreditCardSettings
{
  if ([MEMORY[0x277D49A08] isKeychainCardsInWalletEnabled])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v2 = getPKAutoFillCardManagerClass(void)::softClass;
    v13 = getPKAutoFillCardManagerClass(void)::softClass;
    if (!getPKAutoFillCardManagerClass(void)::softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = ___ZL29getPKAutoFillCardManagerClassv_block_invoke;
      v9[3] = &unk_279B62168;
      v9[4] = &v10;
      ___ZL29getPKAutoFillCardManagerClassv_block_invoke(v9);
      v2 = v11[3];
    }

    v3 = v2;
    _Block_object_dispose(&v10, 8);
    v4 = objc_alloc_init(v2);
    if (objc_opt_respondsToSelector())
    {
      urlToListOfCards = [v4 urlToListOfCards];
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      [defaultWorkspace openSensitiveURL:urlToListOfCards withOptions:0];
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=SAFARI&path=AUTO_FILL/CreditCardList"];
    defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace2 openSensitiveURL:v8 withOptions:0];
  }
}

+ (void)savedCreditCardsWithError:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_26450F000, a2, OS_LOG_TYPE_ERROR, "SecItemCopyMatching failed with error %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end