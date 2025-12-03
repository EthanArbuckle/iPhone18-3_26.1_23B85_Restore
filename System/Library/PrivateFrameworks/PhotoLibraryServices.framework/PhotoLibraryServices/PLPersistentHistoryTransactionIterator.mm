@interface PLPersistentHistoryTransactionIterator
+ (id)iteratorSinceMarker:(id)marker withFetchRequest:(id)request managedObjectObjectContext:(id)context error:(id *)error;
+ (id)iteratorSinceToken:(id)token withManagedObjectObjectContext:(id)context error:(id *)error;
- (BOOL)enumerateOneTransactionWithBlock:(id)block;
- (PLPersistentHistoryTransactionIterator)initWithTransactions:(id)transactions managedObjectObjectContext:(id)context;
- (id)_safeTransactionAtIndex:(unint64_t)index;
- (void)enumerateRemainingTransactionsWithBlock:(id)block;
@end

@implementation PLPersistentHistoryTransactionIterator

- (id)_safeTransactionAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_transactions objectAtIndexedSubscript:?];

  return v3;
}

- (BOOL)enumerateOneTransactionWithBlock:(id)block
{
  blockCopy = block;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__26785;
  v23 = __Block_byref_object_dispose__26786;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__26785;
  v17 = __Block_byref_object_dispose__26786;
  v18 = 0;
  context = self->_context;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PLPersistentHistoryTransactionIterator_enumerateOneTransactionWithBlock___block_invoke;
  v12[3] = &unk_1E7578870;
  v12[4] = self;
  v12[5] = &v19;
  v12[6] = &v13;
  [(NSManagedObjectContext *)context performBlockAndWait:v12];
  v6 = v20[5];
  if (v6)
  {
    v11 = 0;
    blockCopy[2](blockCopy, v6, &v11);
    v7 = [v14[5] copy];
    lastIteratedToken = self->_lastIteratedToken;
    self->_lastIteratedToken = v7;

    v9 = v11;
  }

  else
  {
    v9 = 1;
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v9 & 1;
}

void __75__PLPersistentHistoryTransactionIterator_enumerateOneTransactionWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _safeTransactionAtIndex:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    ++*(*(a1 + 32) + 16);
    v5 = [*(*(*(a1 + 40) + 8) + 40) token];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (void)enumerateRemainingTransactionsWithBlock:(id)block
{
  blockCopy = block;
  do
  {
    if (![(PLPersistentHistoryTransactionIterator *)self hasMoreTransactions])
    {
      break;
    }

    v4 = objc_autoreleasePoolPush();
    v5 = [(PLPersistentHistoryTransactionIterator *)self enumerateOneTransactionWithBlock:blockCopy];
    objc_autoreleasePoolPop(v4);
  }

  while (!v5);
}

- (PLPersistentHistoryTransactionIterator)initWithTransactions:(id)transactions managedObjectObjectContext:(id)context
{
  transactionsCopy = transactions;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = PLPersistentHistoryTransactionIterator;
  v8 = [(PLPersistentHistoryTransactionIterator *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_transactionIndex = 0;
    objc_storeStrong(&v8->_context, context);
    context = v9->_context;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __90__PLPersistentHistoryTransactionIterator_initWithTransactions_managedObjectObjectContext___block_invoke;
    v14[3] = &unk_1E7578848;
    v11 = v9;
    v15 = v11;
    v16 = transactionsCopy;
    [(NSManagedObjectContext *)context performBlockAndWait:v14];
    v12 = v11;
  }

  return v9;
}

uint64_t __90__PLPersistentHistoryTransactionIterator_initWithTransactions_managedObjectObjectContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  result = [*(*(a1 + 32) + 8) count];
  *(*(a1 + 32) + 32) = result;
  return result;
}

+ (id)iteratorSinceMarker:(id)marker withFetchRequest:(id)request managedObjectObjectContext:(id)context error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  markerCopy = marker;
  contextCopy = context;
  requestCopy = request;
  v13 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    selfCopy = self;
    v23 = 2114;
    v24 = markerCopy;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: Fetching persistent history transactions since marker: %{public}@", buf, 0x16u);
  }

  v14 = [PLPersistentHistoryUtilities fetchTransactionsSinceMarker:markerCopy withFetchRequest:requestCopy batchSize:100 context:contextCopy error:error];

  v15 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __112__PLPersistentHistoryTransactionIterator_iteratorSinceMarker_withFetchRequest_managedObjectObjectContext_error___block_invoke;
    v18[3] = &unk_1E7577B90;
    selfCopy2 = self;
    v19 = v14;
    [contextCopy performBlockAndWait:v18];
  }

  if (v14)
  {
    v16 = [[self alloc] initWithTransactions:v14 managedObjectObjectContext:contextCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __112__PLPersistentHistoryTransactionIterator_iteratorSinceMarker_withFetchRequest_managedObjectObjectContext_error___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) count];
    v5 = 138543618;
    v6 = v3;
    v7 = 2050;
    v8 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched persistent history transaction count: %{public}lu", &v5, 0x16u);
  }
}

+ (id)iteratorSinceToken:(id)token withManagedObjectObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = [PLPersistentHistoryMarker markerWithToken:token];
  v10 = [self iteratorSinceMarker:v9 withFetchRequest:0 managedObjectObjectContext:contextCopy error:error];

  return v10;
}

@end