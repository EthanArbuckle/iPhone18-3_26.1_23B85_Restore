@interface PXComposeRecipientDataSourceManager
- (NSDictionary)diagnosticDictionary;
- (PXComposeRecipientDataSourceManager)init;
- (PXComposeRecipientDataSourceManager)initWithPeopleSuggestionsDataSourceManager:(id)manager sourceType:(int64_t)type;
- (PXComposeRecipientDataSourceManagerDelegate)delegate;
- (id)_composeRecipientsFromCurrentPeopleSuggestionsDataSource;
- (id)_createComposeRecipientDataSourceFromCurrentState;
- (int64_t)_lastValidComposeRecipientIndex;
- (void)_addComposeRecipients:(id)recipients;
- (void)_replaceComposeRecipientAtIndex:(int64_t)index withComposeRecipient:(id)recipient;
- (void)addRecipients:(id)recipients;
- (void)deleteComposeRecipientAtIndex:(unint64_t)index;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)replaceComposeRecipientAtIndex:(unint64_t)index withNewComposeRecipient:(id)recipient;
@end

@implementation PXComposeRecipientDataSourceManager

- (PXComposeRecipientDataSourceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v50 = *MEMORY[0x1E69E9840];
  if ((change & 1) != 0 && PXPeopleSuggestionManagerObservationContext == context)
  {
    peopleSuggestionsDataSource = [(PXComposeRecipientDataSourceManager *)self peopleSuggestionsDataSource];
    peopleSuggestionsDataSourceManager = [(PXComposeRecipientDataSourceManager *)self peopleSuggestionsDataSourceManager];
    dataSource = [peopleSuggestionsDataSourceManager dataSource];

    peopleSuggestionsDataSourceManager2 = [(PXComposeRecipientDataSourceManager *)self peopleSuggestionsDataSourceManager];
    changeHistory = [peopleSuggestionsDataSourceManager2 changeHistory];
    v11 = [changeHistory changeDetailsFromDataSourceIdentifier:objc_msgSend(peopleSuggestionsDataSource toDataSourceIdentifier:{"identifier"), objc_msgSend(dataSource, "identifier")}];

    if ([v11 count] == 1)
    {
      firstObject = [v11 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    v13 = [firstObject itemChangesInSection:0];
    [(PXComposeRecipientDataSourceManager *)self setPeopleSuggestionsDataSource:dataSource];
    v14 = [peopleSuggestionsDataSource numberOfItemsInSection:0];
    v15 = [dataSource numberOfItemsInSection:0];
    insertedIndexes = [v13 insertedIndexes];
    changedIndexes = [v13 changedIndexes];
    v17 = !v14 && ([insertedIndexes count] || v15 >= 1) && -[PXComposeRecipientDataSourceManager sourceType](self, "sourceType") == 0;
    v18 = changedIndexes;
    v19 = [changedIndexes count];
    if (!v17 && !v19)
    {
      goto LABEL_35;
    }

    v37 = insertedIndexes;
    v38 = firstObject;
    if (v17)
    {
      v35 = v11;
      v36 = peopleSuggestionsDataSource;
      array = [MEMORY[0x1E695DF70] array];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v21 = self->_composeRecipients;
      v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v46;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v46 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v45 + 1) + 8 * i);
            personSuggestion = [v26 personSuggestion];

            if (personSuggestion)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientDataSourceManager.m" lineNumber:343 description:{@"Invalid parameter not satisfying: %@", @"composeRecipient.personSuggestion == nil"}];
            }

            [array addObject:v26];
          }

          v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v23);
      }

      [(NSMutableSet *)self->_recipients removeAllObjects];
      [(NSMutableArray *)self->_composeRecipients removeAllObjects];
      _composeRecipientsFromCurrentPeopleSuggestionsDataSource = [(PXComposeRecipientDataSourceManager *)self _composeRecipientsFromCurrentPeopleSuggestionsDataSource];
      _createComposeRecipientDataSourceFromCurrentState = [_composeRecipientsFromCurrentPeopleSuggestionsDataSource arrayByAddingObjectsFromArray:array];
      if ([_createComposeRecipientDataSourceFromCurrentState count])
      {
        [(PXComposeRecipientDataSourceManager *)self _addComposeRecipients:_createComposeRecipientDataSourceFromCurrentState];
      }

      -[PXComposeRecipientDataSourceManager setNumberOfPeopleSuggested:](self, "setNumberOfPeopleSuggested:", [_composeRecipientsFromCurrentPeopleSuggestionsDataSource count]);
      v11 = v35;
      peopleSuggestionsDataSource = v36;
    }

    else
    {
      array = [MEMORY[0x1E696AD50] indexSet];
      _composeRecipientsFromCurrentPeopleSuggestionsDataSource = [MEMORY[0x1E696AD50] indexSet];
      if (!v13 || ([v13 hasIncrementalChanges] & 1) == 0)
      {
        _composeRecipientsFromCurrentPeopleSuggestionsDataSource2 = [(PXComposeRecipientDataSourceManager *)self _composeRecipientsFromCurrentPeopleSuggestionsDataSource];
        v18 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(_composeRecipientsFromCurrentPeopleSuggestionsDataSource2, "count")}];
      }

      if ([v18 count])
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __68__PXComposeRecipientDataSourceManager_observable_didChange_context___block_invoke;
        v41[3] = &unk_1E774C1B0;
        v42 = dataSource;
        selfCopy = self;
        v44 = array;
        [v18 enumerateIndexesUsingBlock:v41];
      }

      if (![array count] && !objc_msgSend(_composeRecipientsFromCurrentPeopleSuggestionsDataSource, "count"))
      {
        goto LABEL_34;
      }

      changedIndexes = v18;
      _createComposeRecipientDataSourceFromCurrentState = [(PXComposeRecipientDataSourceManager *)self _createComposeRecipientDataSourceFromCurrentState];
      [(PXComposeRecipientDataSourceManager *)self setDataSource:_createComposeRecipientDataSourceFromCurrentState];
      v32 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:_composeRecipientsFromCurrentPeopleSuggestionsDataSource insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:array];
      [(PXComposeRecipientDataSourceManager *)self delegate];
      v34 = v33 = v11;
      [v34 composeRecipientDataSourceManager:self didUpdateDataSourceWithChangeDetails:v32];

      v11 = v33;
    }

    v18 = changedIndexes;
LABEL_34:

    insertedIndexes = v37;
    firstObject = v38;
LABEL_35:
  }
}

void __68__PXComposeRecipientDataSourceManager_observable_didChange_context___block_invoke(id *a1, uint64_t a2)
{
  v4 = [a1[4] identifier];
  v5 = a1[4];
  v10[0] = v4;
  v10[1] = 0;
  v10[2] = a2;
  v10[3] = 0x7FFFFFFFFFFFFFFFLL;
  v6 = [v5 personSuggestionAtItemIndexPath:v10];
  v7 = [[PXComposeRecipient alloc] initWithPersonSuggestion:v6];
  v8 = [*(a1[5] + 1) indexOfObject:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    [a1[5] _replaceComposeRecipientAtIndex:v8 withComposeRecipient:v7];
    [a1[6] addIndex:v9];
  }
}

- (NSDictionary)diagnosticDictionary
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sourceType = [(PXComposeRecipientDataSourceManager *)self sourceType];
  v5 = @"PXPeopleSuggestionsSourceTypeNone";
  if (sourceType == 1)
  {
    v5 = @"PXPeopleSuggestionsSourceTypePhotosGraph";
  }

  if (sourceType == 2)
  {
    v6 = @"PXPeopleSuggestionsSourceTypePreviewSuggestion";
  }

  else
  {
    v6 = v5;
  }

  [v3 setObject:v6 forKeyedSubscript:@"People Suggestions Source Type"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PXComposeRecipientDataSourceManager numberOfPeopleSuggested](self, "numberOfPeopleSuggested")}];
  [v3 setObject:v7 forKeyedSubscript:@"Number Of People Suggested"];

  dataSource = [(PXComposeRecipientDataSourceManager *)self dataSource];
  composeRecipients = [dataSource composeRecipients];
  v10 = [composeRecipients count];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  [v3 setObject:v11 forKeyedSubscript:@"Total Recipients Count"];

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  dataSource2 = [(PXComposeRecipientDataSourceManager *)self dataSource];
  composeRecipients2 = [dataSource2 composeRecipients];

  v15 = [composeRecipients2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(composeRecipients2);
        }

        diagnosticDictionary = [*(*(&v21 + 1) + 8 * i) diagnosticDictionary];
        if (diagnosticDictionary)
        {
          [v12 addObject:diagnosticDictionary];
        }
      }

      v16 = [composeRecipients2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  [v3 setObject:v12 forKeyedSubscript:@"Recipients Debug Infos"];

  return v3;
}

- (void)_replaceComposeRecipientAtIndex:(int64_t)index withComposeRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientDataSourceManager.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
  }

  v7 = [(NSMutableArray *)self->_composeRecipients objectAtIndexedSubscript:index];
  recipient = [v7 recipient];
  recipient2 = [recipientCopy recipient];
  if (recipient)
  {
    [(NSMutableSet *)self->_recipients removeObject:recipient];
  }

  [(NSMutableArray *)self->_composeRecipients replaceObjectAtIndex:index withObject:recipientCopy];
  if (recipient2)
  {
    [(NSMutableSet *)self->_recipients addObject:recipient2];
  }
}

- (void)_addComposeRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if (![recipientsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientDataSourceManager.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"composeRecipients.count > 0"}];
  }

  _lastValidComposeRecipientIndex = [(PXComposeRecipientDataSourceManager *)self _lastValidComposeRecipientIndex];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  if (_lastValidComposeRecipientIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(NSMutableArray *)self->_composeRecipients count];
  }

  else
  {
    v7 = _lastValidComposeRecipientIndex + 1;
  }

  v14[3] = v7;
  v8 = [(NSMutableArray *)self->_composeRecipients copy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PXComposeRecipientDataSourceManager__addComposeRecipients___block_invoke;
  v13[3] = &unk_1E7734748;
  v13[4] = self;
  v13[5] = v14;
  v13[6] = a2;
  [recipientsCopy enumerateObjectsUsingBlock:v13];
  _createComposeRecipientDataSourceFromCurrentState = [(PXComposeRecipientDataSourceManager *)self _createComposeRecipientDataSourceFromCurrentState];
  [(PXComposeRecipientDataSourceManager *)self setDataSource:_createComposeRecipientDataSourceFromCurrentState];
  v10 = [off_1E7721450 changeDetailsFromArray:v8 toArray:self->_composeRecipients changedObjects:MEMORY[0x1E695E0F0]];
  delegate = [(PXComposeRecipientDataSourceManager *)self delegate];
  [delegate composeRecipientDataSourceManager:self didUpdateDataSourceWithChangeDetails:v10];

  _Block_object_dispose(v14, 8);
}

void __61__PXComposeRecipientDataSourceManager__addComposeRecipients___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 recipient];
  v4 = a1[4];
  if (v3)
  {
    if ([*(v4 + 16) containsObject:v3])
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a1[6] object:a1[4] file:@"PXComposeRecipientDataSourceManager.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"![_recipients containsObject:recipient]"}];
    }

    [*(a1[4] + 16) addObject:v3];
    v5 = *(*(a1[5] + 8) + 24);
    v6 = [*(a1[4] + 8) count];
    v7 = *(a1[4] + 8);
    if (v5 >= v6)
    {
      [v7 addObject:v9];
      *(*(a1[5] + 8) + 24) = [*(a1[4] + 8) count];
    }

    else
    {
      [v7 insertObject:v9 atIndex:(*(*(a1[5] + 8) + 24))++];
    }
  }

  else
  {
    [*(v4 + 8) addObject:v9];
  }
}

- (int64_t)_lastValidComposeRecipientIndex
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  composeRecipients = self->_composeRecipients;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PXComposeRecipientDataSourceManager__lastValidComposeRecipientIndex__block_invoke;
  v5[3] = &unk_1E7734720;
  v5[4] = &v6;
  [(NSMutableArray *)composeRecipients enumerateObjectsWithOptions:2 usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __70__PXComposeRecipientDataSourceManager__lastValidComposeRecipientIndex__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 recipient];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (id)_composeRecipientsFromCurrentPeopleSuggestionsDataSource
{
  peopleSuggestionsDataSource = [(PXComposeRecipientDataSourceManager *)self peopleSuggestionsDataSource];
  array = [MEMORY[0x1E695DF70] array];
  v5 = [(NSMutableSet *)self->_recipients mutableCopy];
  identifier = [peopleSuggestionsDataSource identifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__PXComposeRecipientDataSourceManager__composeRecipientsFromCurrentPeopleSuggestionsDataSource__block_invoke;
  v14[3] = &unk_1E7743210;
  v15 = peopleSuggestionsDataSource;
  v16 = v5;
  v7 = array;
  v17 = v7;
  v13[0] = identifier;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0x7FFFFFFFFFFFFFFFLL;
  v8 = v5;
  v9 = peopleSuggestionsDataSource;
  [v9 enumerateItemIndexPathsStartingAtIndexPath:v13 reverseDirection:0 usingBlock:v14];
  v10 = v17;
  v11 = v7;

  return v7;
}

void __95__PXComposeRecipientDataSourceManager__composeRecipientsFromCurrentPeopleSuggestionsDataSource__block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = [v3 personSuggestionAtItemIndexPath:v8];
  v6 = [[PXComposeRecipient alloc] initWithPersonSuggestion:v5];
  v7 = [(PXComposeRecipient *)v6 recipient];
  if (!v7)
  {
    goto LABEL_4;
  }

  if (([*(a1 + 40) containsObject:v7] & 1) == 0)
  {
    [*(a1 + 40) addObject:v7];
LABEL_4:
    [*(a1 + 48) addObject:v6];
  }
}

- (id)_createComposeRecipientDataSourceFromCurrentState
{
  v2 = [[PXComposeRecipientDataSource alloc] initWithComposeRecipients:self->_composeRecipients recipients:self->_recipients];

  return v2;
}

- (void)replaceComposeRecipientAtIndex:(unint64_t)index withNewComposeRecipient:(id)recipient
{
  recipientCopy = recipient;
  v6 = [(NSMutableArray *)self->_composeRecipients objectAtIndexedSubscript:index];
  recipient = [v6 recipient];
  if (recipient)
  {
    [(NSMutableSet *)self->_recipients removeObject:recipient];
    recipients = self->_recipients;
    recipient2 = [recipientCopy recipient];
    [(NSMutableSet *)recipients addObject:recipient2];
  }

  v10 = [(NSMutableArray *)self->_composeRecipients copy];
  [(NSMutableArray *)self->_composeRecipients replaceObjectAtIndex:index withObject:recipientCopy];
  _createComposeRecipientDataSourceFromCurrentState = [(PXComposeRecipientDataSourceManager *)self _createComposeRecipientDataSourceFromCurrentState];
  [(PXComposeRecipientDataSourceManager *)self setDataSource:_createComposeRecipientDataSourceFromCurrentState];
  v12 = [off_1E7721450 changeDetailsFromArray:v10 toArray:self->_composeRecipients changedObjects:MEMORY[0x1E695E0F0]];
  delegate = [(PXComposeRecipientDataSourceManager *)self delegate];
  [delegate composeRecipientDataSourceManager:self didUpdateDataSourceWithChangeDetails:v12];
}

- (void)deleteComposeRecipientAtIndex:(unint64_t)index
{
  v10 = [(NSMutableArray *)self->_composeRecipients objectAtIndexedSubscript:?];
  recipient = [v10 recipient];
  if (recipient)
  {
    [(NSMutableSet *)self->_recipients removeObject:recipient];
  }

  v6 = [(NSMutableArray *)self->_composeRecipients copy];
  [(NSMutableArray *)self->_composeRecipients removeObjectAtIndex:index];
  _createComposeRecipientDataSourceFromCurrentState = [(PXComposeRecipientDataSourceManager *)self _createComposeRecipientDataSourceFromCurrentState];
  [(PXComposeRecipientDataSourceManager *)self setDataSource:_createComposeRecipientDataSourceFromCurrentState];
  v8 = [off_1E7721450 changeDetailsFromArray:v6 toArray:self->_composeRecipients changedObjects:MEMORY[0x1E695E0F0]];
  delegate = [(PXComposeRecipientDataSourceManager *)self delegate];
  [delegate composeRecipientDataSourceManager:self didUpdateDataSourceWithChangeDetails:v8];
}

- (void)addRecipients:(id)recipients
{
  v26 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6 = [(NSMutableSet *)self->_recipients mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = recipientsCopy;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v6 containsObject:v11];
        v13 = [[PXComposeRecipient alloc] initWithRecipient:v11];
        if (v12)
        {
          dataSource = [(PXComposeRecipientDataSourceManager *)self dataSource];
          v15 = [dataSource indexOfComposeRecipientForRecipient:v11];

          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v19 addIndex:v15];
            [(PXComposeRecipientDataSourceManager *)self _replaceComposeRecipientAtIndex:v15 withComposeRecipient:v13];
          }
        }

        else
        {
          [v5 addObject:v13];
          [v6 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [(PXComposeRecipientDataSourceManager *)self _addComposeRecipients:v5];
  }

  if ([v19 count])
  {
    _createComposeRecipientDataSourceFromCurrentState = [(PXComposeRecipientDataSourceManager *)self _createComposeRecipientDataSourceFromCurrentState];
    [(PXComposeRecipientDataSourceManager *)self setDataSource:_createComposeRecipientDataSourceFromCurrentState];
    v17 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v19];
    delegate = [(PXComposeRecipientDataSourceManager *)self delegate];
    [delegate composeRecipientDataSourceManager:self didUpdateDataSourceWithChangeDetails:v17];
  }
}

- (PXComposeRecipientDataSourceManager)initWithPeopleSuggestionsDataSourceManager:(id)manager sourceType:(int64_t)type
{
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = PXComposeRecipientDataSourceManager;
  v9 = [(PXComposeRecipientDataSourceManager *)&v21 init];
  if (v9)
  {
    array = [MEMORY[0x1E695DF70] array];
    composeRecipients = v9->_composeRecipients;
    v9->_composeRecipients = array;

    v12 = [MEMORY[0x1E695DFA8] set];
    recipients = v9->_recipients;
    v9->_recipients = v12;

    objc_storeStrong(&v9->_peopleSuggestionsDataSourceManager, manager);
    [(PXSectionedDataSourceManager *)v9->_peopleSuggestionsDataSourceManager registerChangeObserver:v9 context:PXPeopleSuggestionManagerObservationContext];
    if ((managerCopy == 0) != (type == 0))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"PXComposeRecipientDataSourceManager.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"(peopleSuggestionsDataSourceManager == nil && sourceType == PXPeopleSuggestionsSourceTypeNone) || (peopleSuggestionsDataSourceManager != nil && sourceType != PXPeopleSuggestionsSourceTypeNone)"}];
    }

    v9->_sourceType = type;
    dataSource = [(PXSectionedDataSourceManager *)v9->_peopleSuggestionsDataSourceManager dataSource];
    peopleSuggestionsDataSource = v9->_peopleSuggestionsDataSource;
    v9->_peopleSuggestionsDataSource = dataSource;

    _createComposeRecipientDataSourceFromCurrentState = [(PXComposeRecipientDataSourceManager *)v9 _createComposeRecipientDataSourceFromCurrentState];
    dataSource = v9->_dataSource;
    v9->_dataSource = _createComposeRecipientDataSourceFromCurrentState;

    _composeRecipientsFromCurrentPeopleSuggestionsDataSource = [(PXComposeRecipientDataSourceManager *)v9 _composeRecipientsFromCurrentPeopleSuggestionsDataSource];
    v9->_numberOfPeopleSuggested = [_composeRecipientsFromCurrentPeopleSuggestionsDataSource count];
    if ([_composeRecipientsFromCurrentPeopleSuggestionsDataSource count])
    {
      [(PXComposeRecipientDataSourceManager *)v9 _addComposeRecipients:_composeRecipientsFromCurrentPeopleSuggestionsDataSource];
    }
  }

  return v9;
}

- (PXComposeRecipientDataSourceManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientDataSourceManager.m" lineNumber:92 description:{@"%s is not available as initializer", "-[PXComposeRecipientDataSourceManager init]"}];

  abort();
}

@end