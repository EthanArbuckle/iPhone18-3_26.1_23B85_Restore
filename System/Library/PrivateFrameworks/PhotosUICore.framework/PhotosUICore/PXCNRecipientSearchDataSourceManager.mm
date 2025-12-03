@interface PXCNRecipientSearchDataSourceManager
- (PXCNRecipientSearchDataSourceManager)initWithVerificationType:(int64_t)type;
- (void)_createDataSource;
- (void)_creationQueue_creatingRecipientSearchResultsForResults:(id)results forSearchTaskID:(id)d finished:(BOOL)finished;
- (void)_handleAddressQueryResults:(id)results error:(id)error;
- (void)_processRecipientSearchResultsWithMoreComing:(BOOL)coming;
- (void)_setSearchResults:(id)results;
- (void)_updateRecipientSearchResults:(id)results forSearchTaskID:(id)d finished:(BOOL)finished;
- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d;
- (void)finishedSearchingForAutocompleteResults;
- (void)queryStringDidChange;
@end

@implementation PXCNRecipientSearchDataSourceManager

- (void)_updateRecipientSearchResults:(id)results forSearchTaskID:(id)d finished:(BOOL)finished
{
  resultsCopy = results;
  dCopy = d;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCNRecipientSearchDataSourceManager.m" lineNumber:350 description:{@"%s must be called on the main thread", "-[PXCNRecipientSearchDataSourceManager _updateRecipientSearchResults:forSearchTaskID:finished:]"}];
  }

  if ([(NSNumber *)self->_currentSearchTaskID isEqualToNumber:dCopy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __95__PXCNRecipientSearchDataSourceManager__updateRecipientSearchResults_forSearchTaskID_finished___block_invoke;
    v12[3] = &unk_1E7749D28;
    finishedCopy = finished;
    v12[4] = self;
    v13 = resultsCopy;
    [(PXCNRecipientSearchDataSourceManager *)self performChanges:v12];
  }
}

uint64_t __95__PXCNRecipientSearchDataSourceManager__updateRecipientSearchResults_forSearchTaskID_finished___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) setSearchState:2];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _setSearchResults:v3];
}

- (void)_creationQueue_creatingRecipientSearchResultsForResults:(id)results forSearchTaskID:(id)d finished:(BOOL)finished
{
  v46 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  dCopy = d;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v11 = atomic_load(&self->_currentAtomicSearchTaskID);
  if ([dCopy unsignedIntegerValue] != v11)
  {
    goto LABEL_25;
  }

  val = self;
  finishedCopy = finished;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = resultsCopy;
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (!v13)
  {

    finishedCopy2 = finished;
    v29 = val;
LABEL_24:
    objc_initWeak(buf, v29);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__PXCNRecipientSearchDataSourceManager__creationQueue_creatingRecipientSearchResultsForResults_forSearchTaskID_finished___block_invoke;
    block[3] = &unk_1E773FB40;
    objc_copyWeak(&v37, buf);
    v35 = v10;
    v36 = dCopy;
    v38 = finishedCopy2;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
    goto LABEL_25;
  }

  v14 = v13;
  v33 = dCopy;
  v30 = resultsCopy;
  v15 = 0;
  v16 = *v40;
  LOBYTE(v17) = 1;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v40 != v16)
      {
        objc_enumerationMutation(v12);
      }

      if (!v17)
      {

        resultsCopy = v30;
        dCopy = v33;
        goto LABEL_25;
      }

      v19 = [(PXCNComposeRecipient *)[PXCNRecipientSearchResult alloc] initWithRecipient:*(*(&v39 + 1) + 8 * i)];
      invalidAddressString = [(PXRecipient *)v19 invalidAddressString];

      v21 = PLSharingGetLog();
      v22 = v21;
      if (invalidAddressString)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          invalidAddressString2 = [(PXRecipient *)v19 invalidAddressString];
          *buf = 138412290;
          v44 = invalidAddressString2;
          _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "Invalid address %@. Recipient not added to search results.", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          suggestedTransport = [(PXRecipient *)v19 suggestedTransport];
          address = [suggestedTransport address];
          *buf = 138412290;
          v44 = address;
          _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_DEFAULT, "Added recipient %@ to search results.", buf, 0xCu);
        }

        [v10 addObject:v19];
      }

      if (v15 >= 0x19)
      {
        v26 = v33;
        v27 = atomic_load(&val->_currentAtomicSearchTaskID);
        v15 = 0;
        v17 = [v26 unsignedIntegerValue] == v27;
      }

      else
      {
        ++v15;
        v17 = 1;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  resultsCopy = v30;
  dCopy = v33;
  finishedCopy2 = finishedCopy;
  v29 = val;
  if (v17)
  {
    goto LABEL_24;
  }

LABEL_25:
}

void __121__PXCNRecipientSearchDataSourceManager__creationQueue_creatingRecipientSearchResultsForResults_forSearchTaskID_finished___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateRecipientSearchResults:*(a1 + 32) forSearchTaskID:*(a1 + 40) finished:*(a1 + 56)];
}

- (void)finishedSearchingForAutocompleteResults
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentSearchTaskID = self->_currentSearchTaskID;
    v5 = 138543362;
    v6 = currentSearchTaskID;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[auto-complete task %{public}@] finished", &v5, 0xCu);
  }

  [(PXCNRecipientSearchDataSourceManager *)self _processRecipientSearchResultsWithMoreComing:0];
}

- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  dCopy = d;
  v8 = PLSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    currentSearchTaskID = self->_currentSearchTaskID;
    *buf = 138543362;
    v15 = currentSearchTaskID;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "[auto-complete task %{public}@] updating", buf, 0xCu);
  }

  if (self->_currentSearchTaskID && [dCopy isEqualToNumber:?])
  {
    usedAddresses = [(PXRecipientSearchDataSourceManager *)self usedAddresses];
    v11 = usedAddresses;
    if (usedAddresses)
    {
      v12 = usedAddresses;
    }

    else
    {
      v12 = [MEMORY[0x1E695DFD8] set];
    }

    v13 = v12;

    v13;
    PXFilter();
  }
}

uint64_t __80__PXCNRecipientSearchDataSourceManager_consumeAutocompleteSearchResults_taskID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 address];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)_processRecipientSearchResultsWithMoreComing:(BOOL)coming
{
  if ([(NSMutableArray *)self->_autocompleteSearchResults count])
  {
    v5 = !coming;
    v6 = [(NSMutableArray *)self->_autocompleteSearchResults copy];
    v7 = self->_currentSearchTaskID;
    objc_initWeak(&location, self);
    creationQueue = self->_creationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__PXCNRecipientSearchDataSourceManager__processRecipientSearchResultsWithMoreComing___block_invoke;
    block[3] = &unk_1E773FB40;
    objc_copyWeak(&v15, &location);
    v13 = v6;
    v14 = v7;
    v16 = v5;
    v9 = v7;
    v10 = v6;
    dispatch_async(creationQueue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else if (!coming)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__PXCNRecipientSearchDataSourceManager__processRecipientSearchResultsWithMoreComing___block_invoke_2;
    v11[3] = &unk_1E774C5F8;
    v11[4] = self;
    [(PXCNRecipientSearchDataSourceManager *)self performChanges:v11];
  }
}

void __85__PXCNRecipientSearchDataSourceManager__processRecipientSearchResultsWithMoreComing___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _creationQueue_creatingRecipientSearchResultsForResults:*(a1 + 32) forSearchTaskID:*(a1 + 40) finished:*(a1 + 56)];
}

uint64_t __85__PXCNRecipientSearchDataSourceManager__processRecipientSearchResultsWithMoreComing___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSearchState:2];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E695E0F0];

  return [v2 _setSearchResults:v3];
}

- (void)_handleAddressQueryResults:(id)results error:(id)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF70];
  resultsCopy = results;
  v7 = objc_alloc_init(v5);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __73__PXCNRecipientSearchDataSourceManager__handleAddressQueryResults_error___block_invoke;
  v26[3] = &unk_1E7734140;
  v26[4] = self;
  v8 = v7;
  v27 = v8;
  [resultsCopy enumerateKeysAndObjectsUsingBlock:v26];

  if ([v8 count])
  {
    v9 = PLSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Update datasource with changed results", buf, 2u);
    }

    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    v11 = [PXCNRecipientSearchDataSource alloc];
    _searchResults = [(PXCNRecipientSearchDataSourceManager *)self _searchResults];
    v13 = [(PXCNRecipientSearchDataSource *)v11 initWithSearchResults:_searchResults];

    _searchResults2 = [(PXCNRecipientSearchDataSourceManager *)self _searchResults];
    _searchResults3 = [(PXCNRecipientSearchDataSourceManager *)self _searchResults];
    v16 = [off_1E7721450 changeDetailsFromArray:_searchResults2 toArray:_searchResults3 changedObjects:v8];

    v17 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    identifier2 = [(PXCNRecipientSearchDataSource *)v13 identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v28 = &unk_1F190A210;
    v29[0] = v16;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v22 = [v17 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v21 subitemChangeDetailsByItemBySection:0];

    v23 = v22;
    v24 = v13;
    px_dispatch_on_main_queue();
  }
}

void __73__PXCNRecipientSearchDataSourceManager__handleAddressQueryResults_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__35983;
  v19 = __Block_byref_object_dispose__35984;
  v20 = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PXCNRecipientSearchDataSourceManager__handleAddressQueryResults_error___block_invoke_51;
  block[3] = &unk_1E7746448;
  v14 = &v15;
  block[4] = v7;
  v9 = v5;
  v13 = v9;
  dispatch_sync(v8, block);
  if ([v6 BOOLValue])
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = v16[5];
  if (v11 && [v11 validationType] != v10)
  {
    [v16[5] setValidationType:v10];
    [*(a1 + 40) addObject:v16[5]];
  }

  _Block_object_dispose(&v15, 8);
}

void __73__PXCNRecipientSearchDataSourceManager__handleAddressQueryResults_error___block_invoke_51(void *a1)
{
  v2 = [*(a1[4] + 200) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_setSearchResults:(id)results
{
  v61 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (self->__searchResults != resultsCopy)
  {
    v36 = a2;
    val = self;
    _searchResults = [(PXCNRecipientSearchDataSourceManager *)self _searchResults];
    v6 = PLSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v58 = [_searchResults count];
      v59 = 2048;
      v60 = [(NSArray *)resultsCopy count];
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "[auto-complete results] set (old: %lu, new: %lu)", buf, 0x16u);
    }

    objc_storeStrong(&val->__searchResults, results);
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSArray count](resultsCopy, "count")}];
    _verificationType = [(PXCNRecipientSearchDataSourceManager *)val _verificationType];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = resultsCopy;
    v8 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v8)
    {
      v9 = *v51;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v51 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v50 + 1) + 8 * i);
          recipient = [v11 recipient];
          v13 = [[PXCNComposeRecipient alloc] initWithRecipient:recipient];
          suggestedTransport = [(PXRecipient *)v13 suggestedTransport];
          address = [suggestedTransport address];
          addressKind = [suggestedTransport addressKind];
          if (!address)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:v36 object:val file:@"PXCNRecipientSearchDataSourceManager.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"suggestedAddress"}];
          }

          switch(addressKind)
          {
            case 1:
              if (_verificationType)
              {
                v19 = address;
              }

              else
              {
                v19 = MEMORY[0x1A590B2A0](address);
              }

              v17 = v19;
              [v41 addObject:v19];
              break;
            case 2:
              if (_verificationType)
              {
                v18 = address;
              }

              else
              {
                v18 = IDSCopyIDForPhoneNumber();
              }

              v17 = v18;
              [v40 addObject:v18];
              break;
            case 0:
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler2 handleFailureInMethod:v36 object:val file:@"PXCNRecipientSearchDataSourceManager.m" lineNumber:197 description:@"Code which should be unreachable has been reached"];

              abort();
            default:
              v17 = 0;
              break;
          }

          if ([v17 length])
          {
            [v43 setObject:v11 forKeyedSubscript:v17];
          }
        }

        v8 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v8);
    }

    if (_verificationType == 1)
    {
      objc_initWeak(buf, val);
      cloudKitShareQueryController = val->_cloudKitShareQueryController;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __58__PXCNRecipientSearchDataSourceManager__setSearchResults___block_invoke_2;
      v46[3] = &unk_1E77371A8;
      objc_copyWeak(&v47, buf);
      [(PXSharedLibraryParticipantValidationManager *)cloudKitShareQueryController requestValidationForPhoneNumbers:v40 emailAddresses:v41 resultHandler:v46];
      objc_destroyWeak(&v47);
      objc_destroyWeak(buf);
    }

    else if (!_verificationType)
    {
      v20 = [v41 arrayByAddingObjectsFromArray:v40];
      if ([v20 count])
      {
        objc_initWeak(buf, val);
        idsAddressQueryController = val->_idsAddressQueryController;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __58__PXCNRecipientSearchDataSourceManager__setSearchResults___block_invoke;
        v48[3] = &unk_1E77371A8;
        objc_copyWeak(&v49, buf);
        [(PXIDSAddressQueryController *)idsAddressQueryController performBatchQueryForAddresses:v20 resultHandler:v48];
        objc_destroyWeak(&v49);
        objc_destroyWeak(buf);
      }
    }

    searchResultsQueue = val->_searchResultsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PXCNRecipientSearchDataSourceManager__setSearchResults___block_invoke_3;
    block[3] = &unk_1E774C620;
    block[4] = val;
    v45 = v43;
    v24 = v43;
    dispatch_sync(searchResultsQueue, block);
    dataSource = [(PXSectionedDataSourceManager *)val dataSource];
    v26 = [[PXCNRecipientSearchDataSource alloc] initWithSearchResults:obj];
    v27 = [off_1E7721450 changeDetailsFromArray:_searchResults toArray:obj changedObjects:MEMORY[0x1E695E0F0]];
    v28 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    identifier2 = [(PXCNRecipientSearchDataSource *)v26 identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v54 = &unk_1F190A210;
    v55 = v27;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v33 = [v28 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v32 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)val setDataSource:v26 changeDetails:v33];
  }
}

void __58__PXCNRecipientSearchDataSourceManager__setSearchResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAddressQueryResults:v6 error:v5];
}

void __58__PXCNRecipientSearchDataSourceManager__setSearchResults___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAddressQueryResults:v6 error:v5];
}

void __58__PXCNRecipientSearchDataSourceManager__setSearchResults___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;
}

- (void)queryStringDidChange
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_currentSearchTaskID)
  {
    [(CNAutocompleteSearchManager *)self->_searchManager cancelTaskWithID:?];
    currentSearchTaskID = self->_currentSearchTaskID;
    self->_currentSearchTaskID = 0;

    atomic_store([(NSNumber *)self->_currentSearchTaskID unsignedIntegerValue], &self->_currentAtomicSearchTaskID);
  }

  array = [MEMORY[0x1E695DF70] array];
  autocompleteSearchResults = self->_autocompleteSearchResults;
  self->_autocompleteSearchResults = array;

  queryString = [(PXRecipientSearchDataSourceManager *)self queryString];
  if ([queryString length])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PXCNRecipientSearchDataSourceManager_queryStringDidChange__block_invoke;
    v12[3] = &unk_1E774C5F8;
    v12[4] = self;
    [(PXCNRecipientSearchDataSourceManager *)self performChanges:v12];
    v7 = [(CNAutocompleteSearchManager *)self->_searchManager searchForText:queryString consumer:self];
    v8 = self->_currentSearchTaskID;
    self->_currentSearchTaskID = v7;

    atomic_store([(NSNumber *)self->_currentSearchTaskID unsignedIntegerValue], &self->_currentAtomicSearchTaskID);
    v9 = PLSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_currentSearchTaskID;
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "[auto-complete task %{public}@] started", buf, 0xCu);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PXCNRecipientSearchDataSourceManager_queryStringDidChange__block_invoke_36;
    v11[3] = &unk_1E774C5F8;
    v11[4] = self;
    [(PXCNRecipientSearchDataSourceManager *)self performChanges:v11];
  }
}

uint64_t __60__PXCNRecipientSearchDataSourceManager_queryStringDidChange__block_invoke_36(uint64_t a1)
{
  [*(a1 + 32) setSearchState:0];
  v2 = *(a1 + 32);

  return [v2 _setSearchResults:0];
}

- (void)_createDataSource
{
  v3 = [PXCNRecipientSearchDataSource alloc];
  _searchResults = [(PXCNRecipientSearchDataSourceManager *)self _searchResults];
  v5 = [(PXCNRecipientSearchDataSource *)v3 initWithSearchResults:_searchResults];

  [(PXSectionedDataSourceManager *)self setDataSource:v5 changeDetails:0];
}

- (PXCNRecipientSearchDataSourceManager)initWithVerificationType:(int64_t)type
{
  v19.receiver = self;
  v19.super_class = PXCNRecipientSearchDataSourceManager;
  v4 = [(PXRecipientSearchDataSourceManager *)&v19 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);

    v7 = dispatch_queue_create("com.apple.PXCNRecipientSearchDataSourceManager.creationQueue", v6);
    creationQueue = v4->_creationQueue;
    v4->_creationQueue = v7;

    v9 = [objc_alloc(MEMORY[0x1E69963D8]) initWithAutocompleteSearchType:2];
    searchManager = v4->_searchManager;
    v4->_searchManager = v9;

    [(CNAutocompleteSearchManager *)v4->_searchManager setShouldIncludeGroupResults:0];
    v4->__verificationType = type;
    if (type)
    {
      if (type != 1)
      {
LABEL_7:
        v16 = dispatch_queue_create("com.apple.PXCNRecipientSearchDataSourceManager.searchResultsQueue", v6);
        searchResultsQueue = v4->_searchResultsQueue;
        v4->_searchResultsQueue = v16;

        [(PXCNRecipientSearchDataSourceManager *)v4 _createDataSource];
        return v4;
      }

      v11 = &OBJC_IVAR___PXCNRecipientSearchDataSourceManager__cloudKitShareQueryController;
      v12 = off_1E771F878;
    }

    else
    {
      v11 = &OBJC_IVAR___PXCNRecipientSearchDataSourceManager__idsAddressQueryController;
      v12 = off_1E771E178;
    }

    v13 = objc_alloc_init(*v12);
    v14 = *v11;
    v15 = *(&v4->super.super.super.super.isa + v14);
    *(&v4->super.super.super.super.isa + v14) = v13;

    goto LABEL_7;
  }

  return v4;
}

@end