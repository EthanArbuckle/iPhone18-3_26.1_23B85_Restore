@interface PKTransactionCloudKitDebugDetailsViewController
- (PKTransactionCloudKitDebugDetailsViewController)initWithTransaction:(id)a3;
- (id)_cellWithTitleText:(id)a3 valueText:(id)a4;
- (id)_recordNameForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_callCloudRecordObjectDescriptionBlocks;
- (void)_loadCloudData;
- (void)_processCloudRecords;
- (void)cloudRecordObjectDescriptionWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKTransactionCloudKitDebugDetailsViewController

- (PKTransactionCloudKitDebugDetailsViewController)initWithTransaction:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PKTransactionCloudKitDebugDetailsViewController;
  v6 = [(PKTransactionCloudKitDebugDetailsViewController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, a3);
    v8 = [MEMORY[0x1E69B86F8] sharedInstance];
    cloudStoreService = v7->_cloudStoreService;
    v7->_cloudStoreService = v8;

    v7->_inBridge = PKBridgeUsesDarkAppearance();
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    cloudStoreObjectHandlers = v7->_cloudStoreObjectHandlers;
    v7->_cloudStoreObjectHandlers = v10;

    [(PKTransactionCloudKitDebugDetailsViewController *)v7 _loadCloudData];
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKTransactionCloudKitDebugDetailsViewController;
  [(PKTransactionCloudKitDebugDetailsViewController *)&v4 viewDidLoad];
  v3 = [(PKTransactionCloudKitDebugDetailsViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];
}

- (void)cloudRecordObjectDescriptionWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    if (self->_loadingCloudRecordObject)
    {
      cloudStoreObjectHandlers = self->_cloudStoreObjectHandlers;
      v6 = _Block_copy(v4);
      [(NSMutableSet *)cloudStoreObjectHandlers addObject:v6];
    }

    else
    {
      v6 = [(PKCloudRecordObject *)self->_cloudRecordObject description];
      v7[2](v7, v6);
    }

    v4 = v7;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self->_loadingCloudRecordObject || !self->_cloudRecordObject)
  {
    return 1;
  }

  v5 = [(PKTransactionCloudKitDebugDetailsViewController *)self _recordNameForSection:a4];
  v6 = [(NSMutableDictionary *)self->_keysForRecordName objectForKey:v5];
  v7 = [v6 count];

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_loadingCloudRecordObject || !self->_cloudRecordObject)
  {
    return 1;
  }

  else
  {
    return [(NSMutableDictionary *)self->_keysForRecordName count];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (self->_cloudRecordObject)
  {
    v4 = [(PKTransactionCloudKitDebugDetailsViewController *)self _recordForSection:a4];
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v4 recordType];
    v7 = [v5 stringWithFormat:@"recordType: %@", v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_loadingCloudRecordObject)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v10 = [(PKTransactionCloudKitDebugDetailsViewController *)self _cellWithTitleText:@"Loading" valueText:0];
    [v10 setAccessoryView:v9];
    [v9 startAnimating];
LABEL_5:

    goto LABEL_6;
  }

  if (self->_cloudRecordObject)
  {
    v9 = -[PKTransactionCloudKitDebugDetailsViewController _recordNameForSection:](self, "_recordNameForSection:", [v7 section]);
    v11 = [(NSMutableDictionary *)self->_keysForRecordName objectForKey:v9];
    v12 = [v11 objectAtIndex:{objc_msgSend(v8, "row")}];

    v13 = [(NSMutableDictionary *)self->_valuesForRecordName objectForKey:v9];
    v14 = [v13 objectAtIndex:{objc_msgSend(v8, "row")}];

    v15 = [v14 description];
    v10 = [(PKTransactionCloudKitDebugDetailsViewController *)self _cellWithTitleText:v12 valueText:v15];

    goto LABEL_5;
  }

  v10 = [(PKTransactionCloudKitDebugDetailsViewController *)self _cellWithTitleText:@"No CloudKit Data" valueText:0];
LABEL_6:

  return v10;
}

- (void)_callCloudRecordObjectDescriptionBlocks
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_cloudStoreObjectHandlers allObjects];
  v4 = [v3 copy];

  [(NSMutableSet *)self->_cloudStoreObjectHandlers removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(PKCloudRecordObject *)self->_cloudRecordObject description];
        (*(v10 + 16))(v10, v11);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)_cellWithTitleText:(id)a3 valueText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKTransactionCloudKitDebugDetailsViewController *)self tableView];
  v9 = [v8 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];

  [v9 setSelectionStyle:0];
  v10 = [v9 keyLabel];
  [v10 setText:v7];

  v11 = [MEMORY[0x1E69DC888] labelColor];
  [v10 setTextColor:v11];

  if (self->_inBridge)
  {
    v12 = PKBridgeTextColor();
    [v10 setTextColor:v12];
  }

  v13 = [v9 valueLabel];
  [v13 setText:v6];

  return v9;
}

- (id)_recordNameForSection:(int64_t)a3
{
  v3 = [(PKTransactionCloudKitDebugDetailsViewController *)self _recordForSection:a3];
  v4 = [v3 recordID];
  v5 = [v4 recordName];

  return v5;
}

- (void)_loadCloudData
{
  if (!self->_cloudRecordObject)
  {
    v16[13] = v2;
    v16[14] = v3;
    if (!self->_loadingCloudRecordObject)
    {
      v5 = [(PKPaymentTransaction *)self->_transaction recordTypesAndNamesForCodingType:2];
      v6 = [v5 firstObject];
      v7 = [v6 allValues];
      v8 = [v7 firstObject];

      v9 = [MEMORY[0x1E69B8EA8] recordNamePrefix];
      v10 = [v8 stringByReplacingOccurrencesOfString:v9 withString:&stru_1F3BD7330];

      if (v10)
      {
        self->_loadingCloudRecordObject = 1;
        v11 = [objc_alloc(MEMORY[0x1E69B8700]) initWithItemType:1 recordName:v10];
        v12 = [(PKPaymentTransaction *)self->_transaction accountIdentifier];
        [v11 setAccountIdentifier:v12];

        v13 = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
        [v11 setTransactionSourceIdentifier:v13];

        v14 = [(PKPaymentTransaction *)self->_transaction altDSID];
        [v11 setAltDSID:v14];

        [v11 setAccountType:{-[PKPaymentTransaction accountType](self->_transaction, "accountType")}];
        cloudStoreService = self->_cloudStoreService;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __65__PKTransactionCloudKitDebugDetailsViewController__loadCloudData__block_invoke;
        v16[3] = &unk_1E8022460;
        v16[4] = self;
        [(PKCloudStoreService *)cloudStoreService cloudStoreRecordArrayWithConfiguration:v11 completion:v16];
      }
    }
  }
}

void __65__PKTransactionCloudKitDebugDetailsViewController__loadCloudData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PKTransactionCloudKitDebugDetailsViewController__loadCloudData__block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __65__PKTransactionCloudKitDebugDetailsViewController__loadCloudData__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1072) = 0;
  v2 = [*(a1 + 40) allObjects];
  v3 = [v2 firstObject];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1040);
  *(v4 + 1040) = v3;

  v6 = [*(*(a1 + 32) + 1040) records];
  v7 = [v6 allObjects];
  v8 = *(a1 + 32);
  v9 = *(v8 + 1048);
  *(v8 + 1048) = v7;

  v10 = *(a1 + 32);
  if (v10[130])
  {
    [v10 _processCloudRecords];
    v10 = *(a1 + 32);
  }

  [v10 _callCloudRecordObjectDescriptionBlocks];
  v11 = [*(a1 + 32) view];
  [v11 setNeedsLayout];

  v12 = [*(a1 + 32) tableView];
  [v12 reloadData];
}

- (void)_processCloudRecords
{
  v60 = *MEMORY[0x1E69E9840];
  v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v35 = self;
  obj = self->_records;
  v40 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v40)
  {
    v37 = *v54;
    do
    {
      v3 = 0;
      do
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v3;
        v4 = *(*(&v53 + 1) + 8 * v3);
        v5 = [v4 recordID];
        v6 = [v5 recordName];

        v7 = [v4 valuesByKey];
        v8 = [v4 encryptedValues];
        v9 = [v7 allKeys];
        v41 = [v8 allKeys];
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [v10 addObject:@"recordName"];
        v43 = v6;
        [v11 addObject:v6];
        [v10 addObject:@"creationDate"];
        v12 = [v4 creationDate];
        [v11 addObject:v12];

        [v10 addObject:@"modificationDate"];
        v13 = [v4 modificationDate];
        [v11 addObject:v13];

        [v10 addObject:@"modifiedByDevice"];
        v14 = [v4 modifiedByDevice];
        [v11 addObject:v14];

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v15 = v9;
        v16 = [v15 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v50;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v50 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v49 + 1) + 8 * i);
              v21 = [v7 objectForKey:v20];
              [v10 addObject:v20];
              [v11 addObject:v21];
            }

            v17 = [v15 countByEnumeratingWithState:&v49 objects:v58 count:16];
          }

          while (v17);
        }

        v42 = v15;

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v22 = v41;
        v23 = [v22 countByEnumeratingWithState:&v45 objects:v57 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v46;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v46 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v45 + 1) + 8 * j);
              v28 = [v8 objectForKey:v27];
              [v10 addObject:v27];
              [v11 addObject:v28];
            }

            v24 = [v22 countByEnumeratingWithState:&v45 objects:v57 count:16];
          }

          while (v24);
        }

        v29 = [v10 copy];
        [v39 setObject:v29 forKey:v43];

        v30 = [v11 copy];
        [v38 setObject:v30 forKey:v43];

        v3 = v44 + 1;
      }

      while (v44 + 1 != v40);
      v40 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v40);
  }

  v31 = [v39 copy];
  keysForRecordName = v35->_keysForRecordName;
  v35->_keysForRecordName = v31;

  v33 = [v38 copy];
  valuesForRecordName = v35->_valuesForRecordName;
  v35->_valuesForRecordName = v33;
}

@end