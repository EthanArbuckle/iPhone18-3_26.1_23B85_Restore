@interface WLContactsMigrator
- (WLContactsMigrator)init;
- (WLFeaturePayload)featurePayload;
- (id)_vcardDataWithoutCustomFieldsFromVcardData:(id)a3;
- (id)importWillBegin;
- (void)addWorkingTime:(unint64_t)a3;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4;
- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6;
- (void)setEstimatedDataSize:(unint64_t)a3;
- (void)setState:(id)a3;
@end

@implementation WLContactsMigrator

- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4
{
  v4 = a3;
  if (![v4 itemSize])
  {
    [v4 setItemSize:512];
  }
}

- (WLContactsMigrator)init
{
  v5.receiver = self;
  v5.super_class = WLContactsMigrator;
  v2 = [(WLContactsMigrator *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    [(WLContactsMigrator *)v2 setContactStore:v3];
  }

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

- (id)importWillBegin
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:0];

  return 0;
}

- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setCount:{objc_msgSend(WeakRetained, "count") + 1}];

  v11 = objc_loadWeakRetained(&self->_featurePayload);
  [v11 setSize:{objc_msgSend(v11, "size") + objc_msgSend(v8, "length")}];

  if (![v8 length])
  {
    v14 = 0;
    v23 = 0;
    v12 = v8;
    if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v12 = [(WLContactsMigrator *)self _vcardDataWithoutCustomFieldsFromVcardData:v8];

  v38 = 0;
  v13 = [MEMORY[0x277CBDAC8] contactsWithData:v12 error:&v38];
  v14 = v38;
  if (![v13 count] || v14)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "length")}];
    _WLLog();

    if (!v14)
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277D7B8F8];
      v39 = *MEMORY[0x277CCA450];
      v40 = @"Can't make contact with contact data";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:{1, self, v30, 0}];
      v14 = [v24 errorWithDomain:v25 code:1 userInfo:v26];
    }

    v23 = 0;
  }

  else
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    _WLLog();

    v15 = objc_alloc_init(MEMORY[0x277CBDBA0]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v32 = v13;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v41 count:{16, self, v28}];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v34 + 1) + 8 * i) mutableCopy];
          [v15 addContact:v21 toContainerWithIdentifier:0];
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v18);
    }

    _WLLog();
    contactStore = self->_contactStore;
    v33 = 0;
    v23 = [(CNContactStore *)contactStore executeSaveRequest:v15 error:&v33, self];
    v14 = v33;
    v29 = [MEMORY[0x277CCABB0] numberWithBool:v23];
    _WLLog();

    if (v23)
    {
      v13 = v32;
      if (!v14)
      {
        v23 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v32;
    }
  }

  v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
  _WLLog();

LABEL_20:
  if (v9)
  {
LABEL_21:
    v9[2](v9, v23, v14);
  }

LABEL_22:

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_vcardDataWithoutCustomFieldsFromVcardData:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  v6 = v4;
  if ([v5 rangeOfString:@"BEGIN:VCARD\r\n" options:1 range:{0, objc_msgSend(@"BEGIN:VCARD\r\n", "length")}] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "length")}];
    _WLLog();

    v33 = v5;
    v8 = [v5 mutableCopy];
    v9 = [v8 length];
    v10 = 0;
    for (i = 0; ; i = 1)
    {
      v26 = [MEMORY[0x277CCAE60] valueWithRange:{v10, v9}];
      _WLLog();

      v12 = [v8 rangeOfString:@"\r\nX-ANDROID-CUSTOM" options:1 range:{v10, v9, self, v26}];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v10 = v12;
      v14 = v13;
      v27 = [MEMORY[0x277CCAE60] valueWithRange:{v12, v13}];
      _WLLog();

      v15 = v10 + v14;
      v16 = [v8 length];
      v17 = v16 - v15;
      v28 = [MEMORY[0x277CCAE60] valueWithRange:{v15, v16 - v15}];
      _WLLog();

      v18 = [v8 rangeOfString:@"\r\n" options:1 range:{v15, v17, self, v28}];
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      v29 = [MEMORY[0x277CCAE60] valueWithRange:{v18, v19}];
      _WLLog();

      v22 = [@"\r\n" length] + v10;
      v23 = v20 + v21 - v22;
      v30 = [MEMORY[0x277CCAE60] valueWithRange:{v22, v23}];
      _WLLog();

      [v8 replaceCharactersInRange:v22 withString:{v23, &stru_2882CBB40, self, v30}];
      v9 = [v8 length] - v10;
    }

    v6 = v4;
    if (i)
    {
      v6 = [v8 dataUsingEncoding:4];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
      _WLLog();
    }

    _WLLog();

    v5 = v33;
  }

  return v6;
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end