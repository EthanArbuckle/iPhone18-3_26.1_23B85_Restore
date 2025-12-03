@interface PXComposeRecipientValidationManager
+ (PXComposeRecipientValidationManager)new;
- (PXComposeRecipientValidationManager)init;
- (PXComposeRecipientValidationManager)initWithDataSource:(id)source;
- (PXComposeRecipientValidationManagerDelegate)delegate;
- (int64_t)validationTypeForComposeRecipient:(id)recipient;
- (void)_handleAddressQueryResults:(id)results error:(id)error;
- (void)_requestValidationForComposeRecipientsAtIndexes:(id)indexes;
- (void)setDataSource:(id)source changeDetails:(id)details;
@end

@implementation PXComposeRecipientValidationManager

- (PXComposeRecipientValidationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleAddressQueryResults:(id)results error:(id)error
{
  resultsCopy = results;
  dataSource = [(PXComposeRecipientValidationManager *)self dataSource];
  composeRecipients = [dataSource composeRecipients];
  v9 = [composeRecipients copy];

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __72__PXComposeRecipientValidationManager__handleAddressQueryResults_error___block_invoke;
  v17 = &unk_1E77371D0;
  v21 = a2;
  selfCopy = self;
  v19 = v9;
  v11 = indexSet;
  v20 = v11;
  v12 = v9;
  [resultsCopy enumerateKeysAndObjectsUsingBlock:&v14];

  if ([v11 count])
  {
    delegate = [(PXComposeRecipientValidationManager *)self delegate];
    [delegate composeRecipientValidationManager:self didUpdateValidationWithChangedIndexes:v11];
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

- (int64_t)validationTypeForComposeRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (!recipientCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"composeRecipient"}];
  }

  v6 = [(NSMutableDictionary *)self->_composeRecipientsToQuery objectForKeyedSubscript:recipientCopy];
  if (!v6)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"query"}];
  }

  validationType = [v6 validationType];

  return validationType;
}

- (void)_requestValidationForComposeRecipientsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  dataSource = [(PXComposeRecipientValidationManager *)self dataSource];
  composeRecipients = [dataSource composeRecipients];
  v9 = [composeRecipients copy];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__PXComposeRecipientValidationManager__requestValidationForComposeRecipientsAtIndexes___block_invoke;
  v16[3] = &unk_1E7737180;
  v10 = v9;
  v20 = a2;
  v17 = v10;
  selfCopy = self;
  v11 = v6;
  v19 = v11;
  [indexesCopy enumerateIndexesUsingBlock:v16];
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

- (void)setDataSource:(id)source changeDetails:(id)details
{
  sourceCopy = source;
  if (self->_dataSource != sourceCopy)
  {
    v12 = sourceCopy;
    objc_storeStrong(&self->_dataSource, source);
    detailsCopy = details;
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    insertedIndexes = [detailsCopy insertedIndexes];
    changedIndexes = [detailsCopy changedIndexes];

    if ([insertedIndexes count])
    {
      [indexSet addIndexes:insertedIndexes];
    }

    if ([changedIndexes count])
    {
      [indexSet addIndexes:changedIndexes];
    }

    [(PXComposeRecipientValidationManager *)self _requestValidationForComposeRecipientsAtIndexes:indexSet];

    sourceCopy = v12;
  }
}

- (PXComposeRecipientValidationManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];
  }

  v20.receiver = self;
  v20.super_class = PXComposeRecipientValidationManager;
  v7 = [(PXComposeRecipientValidationManager *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataSource, source);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    composeRecipientsToQuery = v8->_composeRecipientsToQuery;
    v8->_composeRecipientsToQuery = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    queryAddressesToComposeRecipientQuery = v8->_queryAddressesToComposeRecipientQuery;
    v8->_queryAddressesToComposeRecipientQuery = dictionary2;

    v13 = objc_alloc_init(PXIDSAddressQueryController);
    addressQueryController = v8->_addressQueryController;
    v8->_addressQueryController = v13;

    v15 = MEMORY[0x1E696AC90];
    composeRecipients = [(PXComposeRecipientDataSource *)v8->_dataSource composeRecipients];
    v17 = [v15 indexSetWithIndexesInRange:{0, objc_msgSend(composeRecipients, "count")}];

    [(PXComposeRecipientValidationManager *)v8 _requestValidationForComposeRecipientsAtIndexes:v17];
  }

  return v8;
}

- (PXComposeRecipientValidationManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:95 description:{@"%s is not available as initializer", "-[PXComposeRecipientValidationManager init]"}];

  abort();
}

+ (PXComposeRecipientValidationManager)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:99 description:{@"%s is not available as initializer", "+[PXComposeRecipientValidationManager new]"}];

  abort();
}

@end