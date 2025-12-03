@interface WFQueryDispatcher
- (WFQueryDispatcher)init;
- (void)cancelTaskWithIdentifier:(id)identifier;
- (void)dispatchQuery:(id)query;
- (void)fetchFavoriteLocationsWithTaskIdentifier:(id)identifier results:(id)results;
- (void)invalidateCacheWithIdentifier:(id)identifier;
- (void)locationForCoordinate:(CLLocationCoordinate2D)coordinate taskIdentifier:(id)identifier results:(id)results;
- (void)locationForSearchCompletion:(id)completion taskIdentifier:(id)identifier results:(id)results;
- (void)locationForString:(id)string taskIdentifier:(id)identifier results:(id)results;
- (void)removePendingQueryWithIdentifier:(id)identifier;
@end

@implementation WFQueryDispatcher

- (WFQueryDispatcher)init
{
  v8.receiver = self;
  v8.super_class = WFQueryDispatcher;
  v2 = [(WFQueryDispatcher *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("LocationQueryDispatchQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_opt_new();
    queriesPendingResponse = v2->_queriesPendingResponse;
    v2->_queriesPendingResponse = v5;
  }

  return v2;
}

- (void)dispatchQuery:(id)query
{
  queryCopy = query;
  identifier = [queryCopy identifier];

  if (identifier)
  {
    queue = [(WFQueryDispatcher *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__WFQueryDispatcher_dispatchQuery___block_invoke;
    v8[3] = &unk_279E6EA40;
    v9 = queryCopy;
    selfCopy = self;
    dispatch_async(queue, v8);

    v7 = v9;
  }

  else
  {
    v7 = WFLogForCategory(3uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WFQueryDispatcher dispatchQuery:v7];
    }
  }
}

uint64_t __35__WFQueryDispatcher_dispatchQuery___block_invoke(uint64_t a1)
{
  v2 = WFLogForCategory(3uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __35__WFQueryDispatcher_dispatchQuery___block_invoke_cold_1(a1, v2);
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) queriesPendingResponse];
  v5 = [*(a1 + 32) identifier];
  [v4 setObject:v3 forKeyedSubscript:v5];

  return [*(a1 + 32) start];
}

- (void)removePendingQueryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    queue = [(WFQueryDispatcher *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__WFQueryDispatcher_removePendingQueryWithIdentifier___block_invoke;
    v7[3] = &unk_279E6EA40;
    v8 = identifierCopy;
    selfCopy = self;
    dispatch_async(queue, v7);

    v6 = v8;
  }

  else
  {
    v6 = WFLogForCategory(3uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WFQueryDispatcher removePendingQueryWithIdentifier:v6];
    }
  }
}

void __54__WFQueryDispatcher_removePendingQueryWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = WFLogForCategory(3uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__WFQueryDispatcher_removePendingQueryWithIdentifier___block_invoke_cold_1(a1, v2);
  }

  v3 = [*(a1 + 40) queriesPendingResponse];
  [v3 removeObjectForKey:*(a1 + 32)];
}

- (void)locationForCoordinate:(CLLocationCoordinate2D)coordinate taskIdentifier:(id)identifier results:(id)results
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  identifierCopy = identifier;
  resultsCopy = results;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__WFQueryDispatcher_locationForCoordinate_taskIdentifier_results___block_invoke;
  v14[3] = &unk_279E6F5A0;
  v15 = identifierCopy;
  v16 = resultsCopy;
  v14[4] = self;
  v11 = identifierCopy;
  v12 = resultsCopy;
  longitude = [WFLocationQueryGeocode queryWithCoordinate:v14 resultHandler:latitude, longitude];
  [longitude setIdentifier:v11];
  [(WFQueryDispatcher *)self dispatchQuery:longitude];
}

uint64_t __66__WFQueryDispatcher_locationForCoordinate_taskIdentifier_results___block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[4];
  v4 = a1[5];

  return [v3 removePendingQueryWithIdentifier:v4];
}

- (void)locationForString:(id)string taskIdentifier:(id)identifier results:(id)results
{
  identifierCopy = identifier;
  resultsCopy = results;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__WFQueryDispatcher_locationForString_taskIdentifier_results___block_invoke;
  v13[3] = &unk_279E6F5A0;
  v14 = identifierCopy;
  v15 = resultsCopy;
  v13[4] = self;
  v10 = identifierCopy;
  v11 = resultsCopy;
  v12 = [WFLocationQueryGeocode queryWithSearchString:string resultHandler:v13];
  [v12 setIdentifier:v10];
  [(WFQueryDispatcher *)self dispatchQuery:v12];
}

uint64_t __62__WFQueryDispatcher_locationForString_taskIdentifier_results___block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[4];
  v4 = a1[5];

  return [v3 removePendingQueryWithIdentifier:v4];
}

- (void)locationForSearchCompletion:(id)completion taskIdentifier:(id)identifier results:(id)results
{
  identifierCopy = identifier;
  resultsCopy = results;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__WFQueryDispatcher_locationForSearchCompletion_taskIdentifier_results___block_invoke;
  v13[3] = &unk_279E6F5A0;
  v14 = identifierCopy;
  v15 = resultsCopy;
  v13[4] = self;
  v10 = identifierCopy;
  v11 = resultsCopy;
  v12 = [WFLocationQueryGeocode queryWithSearchCompletion:completion resultHandler:v13];
  [v12 setIdentifier:v10];
  [(WFQueryDispatcher *)self dispatchQuery:v12];
}

uint64_t __72__WFQueryDispatcher_locationForSearchCompletion_taskIdentifier_results___block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[4];
  v4 = a1[5];

  return [v3 removePendingQueryWithIdentifier:v4];
}

- (void)cancelTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(WFQueryDispatcher *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WFQueryDispatcher_cancelTaskWithIdentifier___block_invoke;
  v7[3] = &unk_279E6EA40;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

void __46__WFQueryDispatcher_cancelTaskWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queriesPendingResponse];
  v3 = [v2 objectForKey:*(a1 + 40)];

  [v3 cancel];
}

- (void)invalidateCacheWithIdentifier:(id)identifier
{
  queue = [(WFQueryDispatcher *)self queue];
  dispatch_sync(queue, &__block_literal_global_20);
}

- (void)fetchFavoriteLocationsWithTaskIdentifier:(id)identifier results:(id)results
{
  resultsCopy = results;
  identifierCopy = identifier;
  v6 = [WFFavoriteLocationResponse alloc];
  uUID = [identifierCopy UUID];

  v8 = [(WFFavoriteLocationResponse *)v6 initWithIdentifier:uUID favorites:0];
  v9 = [MEMORY[0x277CCA9B8] wf_errorWithCode:15];
  [(WFResponse *)v8 setError:v9];

  if (resultsCopy)
  {
    resultsCopy[2](resultsCopy, v8);
  }
}

void __35__WFQueryDispatcher_dispatchQuery___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_272B94000, a2, OS_LOG_TYPE_DEBUG, "Dispatching query %@", &v4, 0xCu);
}

void __54__WFQueryDispatcher_removePendingQueryWithIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_272B94000, a2, OS_LOG_TYPE_DEBUG, "Finishing completed query %@", &v3, 0xCu);
}

@end