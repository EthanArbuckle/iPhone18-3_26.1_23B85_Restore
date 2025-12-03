@interface PKTransactionCloudKitDebugDetailsViewController
- (PKTransactionCloudKitDebugDetailsViewController)initWithTransaction:(id)transaction;
- (id)_cellWithTitleText:(id)text valueText:(id)valueText;
- (id)_recordNameForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_callCloudRecordObjectDescriptionBlocks;
- (void)_loadCloudData;
- (void)_processCloudRecords;
- (void)cloudRecordObjectDescriptionWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation PKTransactionCloudKitDebugDetailsViewController

- (PKTransactionCloudKitDebugDetailsViewController)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v13.receiver = self;
  v13.super_class = PKTransactionCloudKitDebugDetailsViewController;
  v6 = [(PKTransactionCloudKitDebugDetailsViewController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, transaction);
    mEMORY[0x1E69B86F8] = [MEMORY[0x1E69B86F8] sharedInstance];
    cloudStoreService = v7->_cloudStoreService;
    v7->_cloudStoreService = mEMORY[0x1E69B86F8];

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
  tableView = [(PKTransactionCloudKitDebugDetailsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];
}

- (void)cloudRecordObjectDescriptionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = completionCopy;
    if (self->_loadingCloudRecordObject)
    {
      cloudStoreObjectHandlers = self->_cloudStoreObjectHandlers;
      v6 = _Block_copy(completionCopy);
      [(NSMutableSet *)cloudStoreObjectHandlers addObject:v6];
    }

    else
    {
      v6 = [(PKCloudRecordObject *)self->_cloudRecordObject description];
      v7[2](v7, v6);
    }

    completionCopy = v7;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (self->_loadingCloudRecordObject || !self->_cloudRecordObject)
  {
    return 1;
  }

  v5 = [(PKTransactionCloudKitDebugDetailsViewController *)self _recordNameForSection:section];
  v6 = [(NSMutableDictionary *)self->_keysForRecordName objectForKey:v5];
  v7 = [v6 count];

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (self->_cloudRecordObject)
  {
    v4 = [(PKTransactionCloudKitDebugDetailsViewController *)self _recordForSection:section];
    v5 = MEMORY[0x1E696AEC0];
    recordType = [v4 recordType];
    v7 = [v5 stringWithFormat:@"recordType: %@", recordType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
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
    v9 = -[PKTransactionCloudKitDebugDetailsViewController _recordNameForSection:](self, "_recordNameForSection:", [pathCopy section]);
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
  allObjects = [(NSMutableSet *)self->_cloudStoreObjectHandlers allObjects];
  v4 = [allObjects copy];

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

- (id)_cellWithTitleText:(id)text valueText:(id)valueText
{
  valueTextCopy = valueText;
  textCopy = text;
  tableView = [(PKTransactionCloudKitDebugDetailsViewController *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];

  [v9 setSelectionStyle:0];
  keyLabel = [v9 keyLabel];
  [keyLabel setText:textCopy];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [keyLabel setTextColor:labelColor];

  if (self->_inBridge)
  {
    v12 = PKBridgeTextColor();
    [keyLabel setTextColor:v12];
  }

  valueLabel = [v9 valueLabel];
  [valueLabel setText:valueTextCopy];

  return v9;
}

- (id)_recordNameForSection:(int64_t)section
{
  v3 = [(PKTransactionCloudKitDebugDetailsViewController *)self _recordForSection:section];
  recordID = [v3 recordID];
  recordName = [recordID recordName];

  return recordName;
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
      firstObject = [v5 firstObject];
      allValues = [firstObject allValues];
      firstObject2 = [allValues firstObject];

      recordNamePrefix = [MEMORY[0x1E69B8EA8] recordNamePrefix];
      v10 = [firstObject2 stringByReplacingOccurrencesOfString:recordNamePrefix withString:&stru_1F3BD7330];

      if (v10)
      {
        self->_loadingCloudRecordObject = 1;
        v11 = [objc_alloc(MEMORY[0x1E69B8700]) initWithItemType:1 recordName:v10];
        accountIdentifier = [(PKPaymentTransaction *)self->_transaction accountIdentifier];
        [v11 setAccountIdentifier:accountIdentifier];

        transactionSourceIdentifier = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
        [v11 setTransactionSourceIdentifier:transactionSourceIdentifier];

        altDSID = [(PKPaymentTransaction *)self->_transaction altDSID];
        [v11 setAltDSID:altDSID];

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
  selfCopy = self;
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
        recordID = [v4 recordID];
        recordName = [recordID recordName];

        valuesByKey = [v4 valuesByKey];
        encryptedValues = [v4 encryptedValues];
        allKeys = [valuesByKey allKeys];
        allKeys2 = [encryptedValues allKeys];
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [v10 addObject:@"recordName"];
        v43 = recordName;
        [v11 addObject:recordName];
        [v10 addObject:@"creationDate"];
        creationDate = [v4 creationDate];
        [v11 addObject:creationDate];

        [v10 addObject:@"modificationDate"];
        modificationDate = [v4 modificationDate];
        [v11 addObject:modificationDate];

        [v10 addObject:@"modifiedByDevice"];
        modifiedByDevice = [v4 modifiedByDevice];
        [v11 addObject:modifiedByDevice];

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v15 = allKeys;
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
              v21 = [valuesByKey objectForKey:v20];
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
        v22 = allKeys2;
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
              v28 = [encryptedValues objectForKey:v27];
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
  keysForRecordName = selfCopy->_keysForRecordName;
  selfCopy->_keysForRecordName = v31;

  v33 = [v38 copy];
  valuesForRecordName = selfCopy->_valuesForRecordName;
  selfCopy->_valuesForRecordName = v33;
}

@end