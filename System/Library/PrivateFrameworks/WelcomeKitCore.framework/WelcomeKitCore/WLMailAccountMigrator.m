@interface WLMailAccountMigrator
- (WLFeaturePayload)featurePayload;
- (WLMailAccountMigrator)init;
- (id)importDidEnd;
- (id)importWillBegin;
- (void)addWorkingTime:(unint64_t)a3;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4;
- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6;
- (void)setEstimatedDataSize:(unint64_t)a3;
- (void)setState:(id)a3;
@end

@implementation WLMailAccountMigrator

- (WLMailAccountMigrator)init
{
  v37[1] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = WLMailAccountMigrator;
  v2 = [(WLMailAccountMigrator *)&v33 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CB8F48] defaultStore];
    [(WLMailAccountMigrator *)v2 setAccountStore:v3];

    accountStore = v2->_accountStore;
    if (accountStore)
    {
      v36 = @"com.google";
      v5 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C40]];
      v37[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      accountTypes = v2->_accountTypes;
      v2->_accountTypes = v6;
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    existingAccounts = v2->_existingAccounts;
    v2->_existingAccounts = v8;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(NSDictionary *)v2->_accountTypes allKeys];
    v24 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v24)
    {
      v23 = *v30;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = [(NSDictionary *)v2->_accountTypes objectForKeyedSubscript:v11];
          v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v14 = [(ACAccountStore *)v2->_accountStore accountsWithAccountType:v12];
          v15 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v26;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v26 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [*(*(&v25 + 1) + 8 * j) username];
                [v13 addObject:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
            }

            while (v16);
          }

          [(NSMutableDictionary *)v2->_existingAccounts setObject:v13 forKey:v11];
        }

        v24 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v24);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:v4];
}

- (void)setEstimatedDataSize:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:a3];
}

- (void)addWorkingTime:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + a3}];
}

- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4
{
  v4 = a3;
  if (![v4 itemSize])
  {
    [v4 setItemSize:5120];
  }
}

- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6
{
  v52[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  v31 = self;
  _WLLog();
  if (self->_accountStore && [(NSDictionary *)self->_accountTypes count])
  {
    v45 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v45];
    v11 = v45;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v10;
      v13 = [v12 objectForKeyedSubscript:@"accountType"];
      v14 = [v12 objectForKeyedSubscript:@"accountName"];
      v39 = v14;
      if ([v13 length] && objc_msgSend(v14, "length"))
      {
        _WLLog();
        v15 = [(NSDictionary *)self->_accountTypes objectForKeyedSubscript:v13, self, v13, v14];
        if (v15)
        {
          v36 = [(NSMutableDictionary *)self->_existingAccounts objectForKeyedSubscript:v13];
          if ([v36 containsObject:v14])
          {
            _WLLog();
            v16 = 1;
          }

          else
          {
            v38 = v13;
            v34 = v12;
            v35 = v8;
            v21 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v15];
            [v21 setUsername:v14];
            [v21 setAccountDescription:v14];
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v33 = v15;
            v22 = [v15 supportedDataclasses];
            v23 = [v22 countByEnumeratingWithState:&v41 objects:v46 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v42;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v42 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v41 + 1) + 8 * i);
                  [v21 setProvisioned:1 forDataclass:v27];
                  [v21 setEnabled:1 forDataclass:v27];
                }

                v24 = [v22 countByEnumeratingWithState:&v41 objects:v46 count:16];
              }

              while (v24);
            }

            accountStore = self->_accountStore;
            v40 = v11;
            [(ACAccountStore *)accountStore saveVerifiedAccount:v21 error:&v40];
            v29 = v40;

            v16 = v29 == 0;
            if (!v29)
            {
              [v36 addObject:v39];
            }

            v11 = v29;
            v8 = v35;
            v15 = v33;
            v12 = v34;
            v13 = v38;
          }
        }

        else
        {
          _WLLog();
          v16 = 1;
        }
      }

      else
      {
        v37 = v13;
        v19 = MEMORY[0x277CCA9B8];
        v47 = *MEMORY[0x277CCA450];
        v48 = @"invalid argument";
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v20 = [v19 errorWithDomain:@"WLAccountErrorDomain" code:1 userInfo:v15];

        v16 = 0;
        v11 = v20;
        v13 = v37;
      }
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA450];
      v50 = @"invalid argument";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      [v18 errorWithDomain:@"WLAccountErrorDomain" code:1 userInfo:v12];
      v16 = 0;
      v11 = v13 = v11;
    }
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277CCA450];
    v52[0] = @"cannot continue to import an account due to an ACAccountStore error.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:{1, v31}];
    v11 = [v17 errorWithDomain:@"WLAccountErrorDomain" code:2 userInfo:v10];
    v16 = 0;
  }

  v32 = [v11 description];
  _WLLog();

  if (v9)
  {
    v9[2](v9, v16, v11);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)importWillBegin
{
  v11[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:0];

  v4 = 0;
  if (!self->_accountStore)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D7B8F8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Mail account migrator couldn't create account store.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v4 = [v5 errorWithDomain:v6 code:1 userInfo:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)importDidEnd
{
  [(WLMailAccountMigrator *)self setAccountStore:0];
  accountTypes = self->_accountTypes;
  self->_accountTypes = 0;

  existingAccounts = self->_existingAccounts;
  self->_existingAccounts = 0;

  return 0;
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end