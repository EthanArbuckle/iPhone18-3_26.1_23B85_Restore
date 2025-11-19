@interface PXComposeRecipientValidationManager
+ (PXComposeRecipientValidationManager)new;
- (PXComposeRecipientValidationManager)init;
- (PXComposeRecipientValidationManager)initWithDataSource:(id)a3;
- (PXComposeRecipientValidationManagerDelegate)delegate;
- (int64_t)validationTypeForComposeRecipient:(id)a3;
- (void)_handleAddressQueryResults:(id)a3 error:(id)a4;
- (void)_requestValidationForComposeRecipientsAtIndexes:(id)a3;
- (void)setDataSource:(id)a3 changeDetails:(id)a4;
@end

@implementation PXComposeRecipientValidationManager

- (PXComposeRecipientValidationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleAddressQueryResults:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = [(PXComposeRecipientValidationManager *)self dataSource];
  v8 = [v7 composeRecipients];
  v9 = [v8 copy];

  v10 = [MEMORY[0x1E696AD50] indexSet];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __72__PXComposeRecipientValidationManager__handleAddressQueryResults_error___block_invoke;
  v17 = &unk_1E77371D0;
  v21 = a2;
  v18 = self;
  v19 = v9;
  v11 = v10;
  v20 = v11;
  v12 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:&v14];

  if ([v11 count])
  {
    v13 = [(PXComposeRecipientValidationManager *)self delegate];
    [v13 composeRecipientValidationManager:self didUpdateValidationWithChangedIndexes:v11];
  }
}

void __72__PXComposeRecipientValidationManager__handleAddressQueryResults_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 BOOLValue];
  v15 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];

  v7 = v15;
  if (!v15)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXComposeRecipientValidationManager.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    v7 = 0;
  }

  v8 = [v7 validationType];
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v8 == v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXComposeRecipientValidationManager.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"previousType != newType"}];
  }

  [v15 setValidationType:v9];
  v10 = *(a1 + 40);
  v11 = [v15 composeRecipient];
  v12 = [v10 indexOfObject:v11];

  [*(a1 + 48) addIndex:v12];
}

- (int64_t)validationTypeForComposeRecipient:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"composeRecipient"}];
  }

  v6 = [(NSMutableDictionary *)self->_composeRecipientsToQuery objectForKeyedSubscript:v5];
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"query"}];
  }

  v7 = [v6 validationType];

  return v7;
}

- (void)_requestValidationForComposeRecipientsAtIndexes:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [(PXComposeRecipientValidationManager *)self dataSource];
  v8 = [v7 composeRecipients];
  v9 = [v8 copy];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__PXComposeRecipientValidationManager__requestValidationForComposeRecipientsAtIndexes___block_invoke;
  v16[3] = &unk_1E7737180;
  v10 = v9;
  v20 = a2;
  v17 = v10;
  v18 = self;
  v11 = v6;
  v19 = v11;
  [v5 enumerateIndexesUsingBlock:v16];
  if ([v11 count])
  {
    objc_initWeak(&location, self);
    addressQueryController = self->_addressQueryController;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__PXComposeRecipientValidationManager__requestValidationForComposeRecipientsAtIndexes___block_invoke_2;
    v13[3] = &unk_1E77371A8;
    objc_copyWeak(&v14, &location);
    [(PXIDSAddressQueryController *)addressQueryController performBatchQueryForAddresses:v11 resultHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __87__PXComposeRecipientValidationManager__requestValidationForComposeRecipientsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v3 = [v15 recipient];
  v4 = [v3 suggestedTransport];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 address];
    v7 = [v5 addressKind];
    if (!v6)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PXComposeRecipientValidationManager.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"address"}];
    }

    switch(v7)
    {
      case 1:
        v10 = MEMORY[0x1A590B2A0](v6);
        break;
      case 2:
        v10 = IDSCopyIDForPhoneNumber();
        break;
      case 0:
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PXComposeRecipientValidationManager.m" lineNumber:160 description:@"Code which should be unreachable has been reached"];

        abort();
      default:
LABEL_7:
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PXComposeRecipientValidationManager.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"addressToQuery"}];

        v9 = 0;
LABEL_11:
        v11 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:v9];
        if (v11)
        {
          [*(*(a1 + 40) + 8) setObject:v11 forKeyedSubscript:v15];
        }

        else
        {
          v12 = [[PXComposeRecipientValidationQuery alloc] initWithComposeRecipient:v15 address:v6 addressKind:v7];
          [*(*(a1 + 40) + 8) setObject:v12 forKeyedSubscript:v15];
          [*(*(a1 + 40) + 16) setObject:v12 forKeyedSubscript:v9];
          [*(a1 + 48) addObject:v9];
        }

        goto LABEL_15;
    }

    v9 = v10;
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_15:
}

void __87__PXComposeRecipientValidationManager__requestValidationForComposeRecipientsAtIndexes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAddressQueryResults:v6 error:v5];
}

- (void)setDataSource:(id)a3 changeDetails:(id)a4
{
  v7 = a3;
  if (self->_dataSource != v7)
  {
    v12 = v7;
    objc_storeStrong(&self->_dataSource, a3);
    v8 = a4;
    v9 = [MEMORY[0x1E696AD50] indexSet];
    v10 = [v8 insertedIndexes];
    v11 = [v8 changedIndexes];

    if ([v10 count])
    {
      [v9 addIndexes:v10];
    }

    if ([v11 count])
    {
      [v9 addIndexes:v11];
    }

    [(PXComposeRecipientValidationManager *)self _requestValidationForComposeRecipientsAtIndexes:v9];

    v7 = v12;
  }
}

- (PXComposeRecipientValidationManager)initWithDataSource:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];
  }

  v20.receiver = self;
  v20.super_class = PXComposeRecipientValidationManager;
  v7 = [(PXComposeRecipientValidationManager *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataSource, a3);
    v9 = [MEMORY[0x1E695DF90] dictionary];
    composeRecipientsToQuery = v8->_composeRecipientsToQuery;
    v8->_composeRecipientsToQuery = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    queryAddressesToComposeRecipientQuery = v8->_queryAddressesToComposeRecipientQuery;
    v8->_queryAddressesToComposeRecipientQuery = v11;

    v13 = objc_alloc_init(PXIDSAddressQueryController);
    addressQueryController = v8->_addressQueryController;
    v8->_addressQueryController = v13;

    v15 = MEMORY[0x1E696AC90];
    v16 = [(PXComposeRecipientDataSource *)v8->_dataSource composeRecipients];
    v17 = [v15 indexSetWithIndexesInRange:{0, objc_msgSend(v16, "count")}];

    [(PXComposeRecipientValidationManager *)v8 _requestValidationForComposeRecipientsAtIndexes:v17];
  }

  return v8;
}

- (PXComposeRecipientValidationManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:95 description:{@"%s is not available as initializer", "-[PXComposeRecipientValidationManager init]"}];

  abort();
}

+ (PXComposeRecipientValidationManager)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXComposeRecipientValidationManager.m" lineNumber:99 description:{@"%s is not available as initializer", "+[PXComposeRecipientValidationManager new]"}];

  abort();
}

@end