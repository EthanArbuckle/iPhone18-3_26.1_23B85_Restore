@interface PXIDSAddressQueryController
- (PXIDSAddressQueryController)init;
- (void)_callResultsHandlerForQueries:(id)queries;
- (void)_idStatusUpdatedForDestinations:(id)destinations service:(id)service;
- (void)_performBatchQueryForAddresses:(id)addresses resultHandler:(id)handler;
- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error;
- (void)dealloc;
- (void)performBatchQueryForAddresses:(id)addresses resultHandler:(id)handler;
@end

@implementation PXIDSAddressQueryController

- (void)_callResultsHandlerForQueries:(id)queries
{
  v17 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = queriesCopy;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        popStashedResults = [v9 popStashedResults];
        if ([popStashedResults count])
        {
          resultHandler = [v9 resultHandler];
          (resultHandler)[2](resultHandler, popStashedResults, 0);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_idStatusUpdatedForDestinations:(id)destinations service:(id)service
{
  destinationsCopy = destinations;
  serialQueue = self->_serialQueue;
  serviceCopy = service;
  dispatch_assert_queue_V2(serialQueue);
  LODWORD(serialQueue) = [serviceCopy isEqualToString:*MEMORY[0x1E69A4818]];

  if (serialQueue)
  {
    if (![(NSMutableArray *)self->_queries count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXIDSAddressQueryController.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"_queries.count > 0"}];
    }

    v10 = [(NSMutableArray *)self->_queries copy];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__PXIDSAddressQueryController__idStatusUpdatedForDestinations_service___block_invoke;
    v18[3] = &unk_1E7734140;
    v11 = v10;
    v19 = v11;
    selfCopy = self;
    [destinationsCopy enumerateKeysAndObjectsUsingBlock:v18];
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PXIDSAddressQueryController__idStatusUpdatedForDestinations_service___block_invoke_69;
    block[3] = &unk_1E774B248;
    objc_copyWeak(&v16, &location);
    v15 = v11;
    v12 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __71__PXIDSAddressQueryController__idStatusUpdatedForDestinations_service___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v19 = a3;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v26 = v5;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "IDS status update for %@: %@", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (([v12 isComplete] & 1) == 0)
        {
          v13 = [v12 remainingDestinations];
          if ([v13 containsObject:v5])
          {
            v14 = [v19 integerValue];
            v15 = 2;
            if (v14 != 1)
            {
              v15 = 0;
            }

            if (v14 == 2)
            {
              v16 = 3;
            }

            else
            {
              v16 = v15;
            }

            v17 = v14 != 2 && v14 == 1;
            v18 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
            [*(*(a1 + 40) + 24) setObject:v18 forKeyedSubscript:v5];

            [v12 stashDestination:v5 withResult:v17];
            if ([v12 isComplete])
            {
              [*(*(a1 + 40) + 16) removeObject:v12];
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

void __71__PXIDSAddressQueryController__idStatusUpdatedForDestinations_service___block_invoke_69(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _callResultsHandlerForQueries:*(a1 + 32)];
}

- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = statusCopy;
      v14 = 2112;
      v15 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Error updating IDS destinations %@ : %@", &v12, 0x16u);
    }
  }

  else
  {
    [(PXIDSAddressQueryController *)self _idStatusUpdatedForDestinations:statusCopy service:service];
  }
}

- (void)_performBatchQueryForAddresses:(id)addresses resultHandler:(id)handler
{
  v54 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_serialQueue);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(addressesCopy, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = addressesCopy;
  v8 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_queryStateForAddress objectForKeyedSubscript:v12];
        v14 = v13;
        if (!v13)
        {
          goto LABEL_10;
        }

        integerValue = [v13 integerValue];
        if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v16 = [MEMORY[0x1E696AD98] numberWithBool:integerValue == 2];
          [dictionary setObject:v16 forKeyedSubscript:v12];

          goto LABEL_12;
        }

        if (!integerValue)
        {
LABEL_10:
          [(NSMutableDictionary *)self->_queryStateForAddress setObject:&unk_1F190B110 forKeyedSubscript:v12];
        }

        [v7 addObject:v12];
LABEL_12:
      }

      v9 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v9);
  }

  v17 = dictionary;
  v18 = handlerCopy;
  if ([dictionary count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PXIDSAddressQueryController__performBatchQueryForAddresses_resultHandler___block_invoke;
    block[3] = &unk_1E774C2F0;
    v45 = handlerCopy;
    v44 = dictionary;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if ([v7 count])
  {
    v19 = [[PXIDSAddressQuery alloc] initWithDestinations:v7 resultHandler:handlerCopy];
    [(NSMutableArray *)self->_queries addObject:v19];
    if (![(NSMutableArray *)self->_queries count])
    {
      goto LABEL_29;
    }

    v20 = [MEMORY[0x1E695DFA8] setWithArray:v7];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v21 = self->_queries;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v39 + 1) + 8 * j);
          if ([v26 isComplete])
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PXIDSAddressQueryController.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"!query.isComplete"}];
          }

          remainingDestinations = [v26 remainingDestinations];
          [v20 unionSet:remainingDestinations];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v23);
    }

    v18 = handlerCopy;
    v17 = dictionary;
    if (v20)
    {
      allObjects = [v20 allObjects];
    }

    else
    {
LABEL_29:
      allObjects = v7;
    }

    v30 = PLUIGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v51 = allObjects;
      _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_DEBUG, "Querying status for phone numbers/email addresses: %@", buf, 0xCu);
    }

    idsBatchIDQueryController = self->_idsBatchIDQueryController;
    if (!idsBatchIDQueryController)
    {
      v32 = objc_alloc(MEMORY[0x1E69A4840]);
      v33 = [v32 initWithService:*MEMORY[0x1E69A4818] delegate:self queue:self->_serialQueue];
      v34 = self->_idsBatchIDQueryController;
      self->_idsBatchIDQueryController = v33;

      idsBatchIDQueryController = self->_idsBatchIDQueryController;
    }

    [(IDSBatchIDQueryController *)idsBatchIDQueryController setDestinations:allObjects];
  }
}

- (void)performBatchQueryForAddresses:(id)addresses resultHandler:(id)handler
{
  addressesCopy = addresses;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!addressesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXIDSAddressQueryController.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"addresses"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXIDSAddressQueryController.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PXIDSAddressQueryController_performBatchQueryForAddresses_resultHandler___block_invoke;
  block[3] = &unk_1E773F368;
  objc_copyWeak(&v18, &location);
  v16 = addressesCopy;
  v17 = v9;
  v11 = v9;
  v12 = addressesCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __75__PXIDSAddressQueryController_performBatchQueryForAddresses_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _performBatchQueryForAddresses:*(a1 + 32) resultHandler:*(a1 + 40)];
}

- (void)dealloc
{
  [(IDSBatchIDQueryController *)self->_idsBatchIDQueryController invalidate];
  v3.receiver = self;
  v3.super_class = PXIDSAddressQueryController;
  [(PXIDSAddressQueryController *)&v3 dealloc];
}

- (PXIDSAddressQueryController)init
{
  v12.receiver = self;
  v12.super_class = PXIDSAddressQueryController;
  v2 = [(PXIDSAddressQueryController *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queryStateForAddress = v2->_queryStateForAddress;
    v2->_queryStateForAddress = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    queries = v2->_queries;
    v2->_queries = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);

    v9 = dispatch_queue_create("com.apple.photos.PXIDSAddressQueryController", v8);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v9;
  }

  return v2;
}

@end