@interface WFWalletTransactionTrigger(ContentInput)
- (id)contentCollectionWithEventInfo:()ContentInput;
- (id)dictionaryWithTransaction:()ContentInput transactionEvent:;
- (void)eventInfoForEvent:()ContentInput completion:;
@end

@implementation WFWalletTransactionTrigger(ContentInput)

- (id)contentCollectionWithEventInfo:()ContentInput
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"transaction"];
  if (v3)
  {
    v4 = [MEMORY[0x277CFC590] itemWithObject:v3];
    v5 = MEMORY[0x277CFC2E0];
    v10[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [v5 collectionWithItems:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)dictionaryWithTransaction:()ContentInput transactionEvent:
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v38 = "[WFWalletTransactionTrigger(ContentInput) dictionaryWithTransaction:transactionEvent:]";
    v39 = 2112;
    v40 = v5;
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEBUG, "%s Got transaction: %@", buf, 0x16u);
  }

  v8 = [v5 merchant];
  v9 = [v8 category];

  if ((v9 - 1) >= 7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = objc_alloc(MEMORY[0x277CFC580]);
  v12 = [v5 merchant];
  v13 = [v12 displayName];
  v14 = [v5 merchant];
  v15 = [v14 uniqueIdentifier];
  v16 = [v5 merchant];
  v17 = [v16 logoImageURL];
  v18 = [v11 initWithDisplayName:v13 uniqueIdentifier:v15 logoURL:v17 merchantType:v10];

  v19 = objc_alloc(MEMORY[0x277CD3B50]);
  v20 = [v5 amount];
  v21 = [v5 currencyCode];
  v22 = [v19 initWithAmount:v20 currencyCode:v21];

  v23 = objc_alloc(MEMORY[0x277CD3E80]);
  v24 = [v6 passLocalizedDescription];
  v25 = [v23 initWithType:0 name:v24 identificationHint:0 icon:0];

  v26 = objc_alloc(MEMORY[0x277CFC588]);
  v27 = [v6 transactionID];

  v28 = [v18 displayName];
  if (v28)
  {
    v29 = [v26 initWithIdentifier:v27 transactionDescription:v28 merchant:v18 currencyAmount:v22 paymentMethod:v25];
  }

  else
  {
    v30 = [v5 merchantProvidedTitle];
    v29 = [v26 initWithIdentifier:v27 transactionDescription:v30 merchant:v18 currencyAmount:v22 paymentMethod:v25];
  }

  v31 = getWFTriggersLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v38 = "[WFWalletTransactionTrigger(ContentInput) dictionaryWithTransaction:transactionEvent:]";
    v39 = 2112;
    v40 = v29;
    _os_log_impl(&dword_23103C000, v31, OS_LOG_TYPE_DEBUG, "%s Finished with transactionItem: %@", buf, 0x16u);
  }

  v35 = @"transaction";
  v36 = v29;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)eventInfoForEvent:()ContentInput completion:
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 eventBody];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  v10 = [v6 eventBody];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v35 = a1;
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[WFWalletTransactionTrigger(ContentInput) eventInfoForEvent:completion:]";
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Found remote event converting to BMWalletTransaction", buf, 0xCu);
    }

    v12 = objc_alloc(MEMORY[0x277CF1720]);
    v13 = [v10 passUniqueID];
    v14 = [v10 passLocalizedDescription];
    v15 = [v10 transactionType];
    v16 = [v10 transactionID];
    v17 = [v10 merchantType];
    v18 = [v10 poiCategory];
    v8 = [v12 initWithPassUniqueID:v13 passLocalizedDescription:v14 transactionType:v15 transactionID:v16 merchantType:v17 poiCategory:v18];

    if (v8)
    {
      v9 = 1;
      a1 = v35;
LABEL_10:
      v19 = [v8 transactionID];

      if (v19)
      {
        if (v9)
        {
          v20 = getWFTriggersLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v8 passUniqueID];
            v22 = [v8 transactionID];
            *buf = 136315650;
            v45 = "[WFWalletTransactionTrigger(ContentInput) eventInfoForEvent:completion:]";
            v46 = 2112;
            v47 = v21;
            v48 = 2112;
            v49 = v22;
            _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_DEFAULT, "%s Attempting to get remote transaction with passID: %@ transactionID: %@", buf, 0x20u);
          }

          v23 = +[WFWalletTransactionProvider sharedProvider];
          v24 = [v8 transactionID];
          v25 = [v8 passUniqueID];
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __73__WFWalletTransactionTrigger_ContentInput__eventInfoForEvent_completion___block_invoke;
          v39[3] = &unk_2789002C8;
          v39[4] = a1;
          v40 = v8;
          v41 = v7;
          v8 = v8;
          [v23 fetchRemoteTransactionWithIdentifier:v24 passUniqueID:v25 completion:v39];

          v26 = v40;
        }

        else
        {
          v23 = +[WFWalletTransactionProvider sharedProvider];
          v32 = [v8 transactionID];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __73__WFWalletTransactionTrigger_ContentInput__eventInfoForEvent_completion___block_invoke_2;
          v36[3] = &unk_2789002C8;
          v36[4] = a1;
          v37 = v8;
          v38 = v7;
          v8 = v8;
          [v23 fetchLocalTransactionWithIdentifier:v32 completion:v36];

          v26 = v37;
        }
      }

      else
      {
        v28 = [v8 passLocalizedDescription];

        if (!v28)
        {
          v34 = getWFTriggersLogObject();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v45 = "[WFWalletTransactionTrigger(ContentInput) eventInfoForEvent:completion:]";
            _os_log_impl(&dword_23103C000, v34, OS_LOG_TYPE_ERROR, "%s No transaction identifier or pass description not creating input to trigger!", buf, 0xCu);
          }

          (*(v7 + 2))(v7, 0);
          goto LABEL_24;
        }

        v42 = @"transaction";
        v29 = objc_alloc(MEMORY[0x277CFC588]);
        v23 = [v8 passLocalizedDescription];
        v30 = [v29 initWithIdentifier:0 transactionDescription:v23 merchant:0 currencyAmount:0 paymentMethod:0];
        v43 = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        (*(v7 + 2))(v7, v31);
      }

LABEL_24:
      goto LABEL_25;
    }
  }

  else
  {

    v27 = getWFTriggersLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[WFWalletTransactionTrigger(ContentInput) eventInfoForEvent:completion:]";
      _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_DEFAULT, "%s No wallet transaction event received for trigger; not firing.", buf, 0xCu);
    }
  }

  (*(v7 + 2))(v7, 0);
LABEL_25:

  v33 = *MEMORY[0x277D85DE8];
}

@end