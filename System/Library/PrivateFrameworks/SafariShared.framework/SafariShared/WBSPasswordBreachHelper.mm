@interface WBSPasswordBreachHelper
- (void)addResultRecordDictionaries:(id)dictionaries completionHandler:(id)handler;
- (void)clearAllRecordsWithCompletionHandler:(id)handler;
- (void)clearRecentlyBreachedResultRecordsWithCompletionHandler:(id)handler;
- (void)getPasswordEvaluationsForPersistentIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)getResultRecordDictionariesForResultQueryDictionaries:(id)dictionaries withCompletionHandler:(id)handler;
- (void)recentlyBreachedResultRecordDictionariesWithCompletionHandler:(id)handler;
- (void)runLookupSessionIgnoringMinimumDelay:(BOOL)delay completionHandler:(id)handler;
- (void)writePasswordEvaluationsToCache:(id)cache completionHandler:(id)handler;
@end

@implementation WBSPasswordBreachHelper

- (void)runLookupSessionIgnoringMinimumDelay:(BOOL)delay completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__WBSPasswordBreachHelper_runLookupSessionIgnoringMinimumDelay_completionHandler___block_invoke;
  v7[3] = &unk_1E7FC90A0;
  v8 = handlerCopy;
  delayCopy = delay;
  v6 = handlerCopy;
  [WBSPasswordBreachManager getSharedManagerWithCompletionHandler:v7];
}

void __82__WBSPasswordBreachHelper_runLookupSessionIgnoringMinimumDelay_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __82__WBSPasswordBreachHelper_runLookupSessionIgnoringMinimumDelay_completionHandler___block_invoke_2;
    v6[3] = &unk_1E7FC9078;
    v7 = *(a1 + 32);
    [a2 performNextSessionLookupIgnoringMinimumDelay:v4 completionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)getResultRecordDictionariesForResultQueryDictionaries:(id)dictionaries withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [MEMORY[0x1E69C8930] resultQueriesFromDictionaryRepresentations:dictionaries];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __103__WBSPasswordBreachHelper_getResultRecordDictionariesForResultQueryDictionaries_withCompletionHandler___block_invoke;
  v9[3] = &unk_1E7FC90C8;
  v10 = v6;
  v11 = handlerCopy;
  v7 = v6;
  v8 = handlerCopy;
  [WBSPasswordBreachManager getSharedManagerWithCompletionHandler:v9];
}

void __103__WBSPasswordBreachHelper_getResultRecordDictionariesForResultQueryDictionaries_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = [a2 resultRecordsForQueries:*(a1 + 32)];
    v3 = [MEMORY[0x1E69C8938] dictionaryRepresentationsForResultRecords:v5];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (void)recentlyBreachedResultRecordDictionariesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89__WBSPasswordBreachHelper_recentlyBreachedResultRecordDictionariesWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E7FC90F0;
  v6 = handlerCopy;
  v4 = handlerCopy;
  [WBSPasswordBreachManager getSharedManagerWithCompletionHandler:v5];
}

void __89__WBSPasswordBreachHelper_recentlyBreachedResultRecordDictionariesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = [a2 recentlyBreachedResultRecords];
    v3 = [MEMORY[0x1E69C8938] dictionaryRepresentationsForResultRecords:v5];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (void)clearRecentlyBreachedResultRecordsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__WBSPasswordBreachHelper_clearRecentlyBreachedResultRecordsWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E7FC90F0;
  v6 = handlerCopy;
  v4 = handlerCopy;
  [WBSPasswordBreachManager getSharedManagerWithCompletionHandler:v5];
}

uint64_t __83__WBSPasswordBreachHelper_clearRecentlyBreachedResultRecordsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 clearRecentlyBreachedResultRecords];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)clearAllRecordsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__WBSPasswordBreachHelper_clearAllRecordsWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E7FC90F0;
  v6 = handlerCopy;
  v4 = handlerCopy;
  [WBSPasswordBreachManager getSharedManagerWithCompletionHandler:v5];
}

void __64__WBSPasswordBreachHelper_clearAllRecordsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__WBSPasswordBreachHelper_clearAllRecordsWithCompletionHandler___block_invoke_2;
    v5[3] = &unk_1E7FB7350;
    v6 = *(a1 + 32);
    [a2 clearAllRecordsWithCompletionHandler:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (void)addResultRecordDictionaries:(id)dictionaries completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [MEMORY[0x1E69C8938] resultRecordsFromDictionaryRepresentations:dictionaries];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__WBSPasswordBreachHelper_addResultRecordDictionaries_completionHandler___block_invoke;
  v9[3] = &unk_1E7FC90C8;
  v10 = v6;
  v11 = handlerCopy;
  v7 = v6;
  v8 = handlerCopy;
  [WBSPasswordBreachManager getSharedManagerWithCompletionHandler:v9];
}

uint64_t __73__WBSPasswordBreachHelper_addResultRecordDictionaries_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 addResultRecords:*(a1 + 32)];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)getPasswordEvaluationsForPersistentIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__WBSPasswordBreachHelper_getPasswordEvaluationsForPersistentIdentifiers_completionHandler___block_invoke;
  v9[3] = &unk_1E7FC90C8;
  v10 = identifiersCopy;
  v11 = handlerCopy;
  v7 = identifiersCopy;
  v8 = handlerCopy;
  [WBSPasswordBreachManager getSharedManagerWithCompletionHandler:v9];
}

uint64_t __92__WBSPasswordBreachHelper_getPasswordEvaluationsForPersistentIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 getPasswordEvaluationsForPersistentIdentifiers:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)writePasswordEvaluationsToCache:(id)cache completionHandler:(id)handler
{
  cacheCopy = cache;
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__WBSPasswordBreachHelper_writePasswordEvaluationsToCache_completionHandler___block_invoke;
  v9[3] = &unk_1E7FC90C8;
  v10 = cacheCopy;
  v11 = handlerCopy;
  v7 = cacheCopy;
  v8 = handlerCopy;
  [WBSPasswordBreachManager getSharedManagerWithCompletionHandler:v9];
}

uint64_t __77__WBSPasswordBreachHelper_writePasswordEvaluationsToCache_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 writePasswordEvaluationsToStore:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

@end