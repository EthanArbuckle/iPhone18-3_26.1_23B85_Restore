@interface ATXPOICategoryVisitDataProvider
- (ATXPOICategoryVisitDataProvider)init;
- (ATXPOICategoryVisitDataProvider)initWithStream:(id)stream;
- (BOOL)hasExitedAllCategories:(id)categories;
- (id)getCurrentVisit;
- (id)getCurrentVisitAtDate:(id)date;
- (void)subscribeToPOIChangesForCategories:(id)categories observer:(id)observer enterSelector:(SEL)selector exitSelector:(SEL)exitSelector sinkCompletion:(id)completion;
- (void)unsubscribeToPOIChanges;
@end

@implementation ATXPOICategoryVisitDataProvider

- (ATXPOICategoryVisitDataProvider)init
{
  v3 = BiomeLibrary();
  location = [v3 Location];
  pointOfInterest = [location PointOfInterest];
  category = [pointOfInterest Category];
  v7 = [(ATXPOICategoryVisitDataProvider *)self initWithStream:category];

  return v7;
}

- (ATXPOICategoryVisitDataProvider)initWithStream:(id)stream
{
  streamCopy = stream;
  v14.receiver = self;
  v14.super_class = ATXPOICategoryVisitDataProvider;
  v6 = [(ATXPOICategoryVisitDataProvider *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, stream);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.proactive.ATXPOICategoryVisitDataProvider.subscribe", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = objc_opt_new();
    streamAggregator = v7->_streamAggregator;
    v7->_streamAggregator = v11;
  }

  return v7;
}

- (id)getCurrentVisit
{
  v3 = [(BMStream *)self->_stream atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_28733C7D8 lastN:&unk_28733C7D8 reversed:0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = v4 + -86400.0;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v7 = [(ATXPOICategoryEventAggregator *)self->_streamAggregator groupVisitsFromPublisher:v3 startTimestamp:v5 endTimestamp:v6];
  finalPOIWithoutExit = [v7 finalPOIWithoutExit];

  return finalPOIWithoutExit;
}

- (id)getCurrentVisitAtDate:(id)date
{
  dateCopy = date;
  v5 = [dateCopy dateByAddingTimeInterval:-86400.0];
  v6 = [(BMStream *)self->_stream atx_publisherWithStartDate:v5 endDate:dateCopy maxEvents:0 lastN:0 reversed:0];
  streamAggregator = self->_streamAggregator;
  [v5 timeIntervalSinceReferenceDate];
  v9 = v8;
  [dateCopy timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = [(ATXPOICategoryEventAggregator *)streamAggregator groupVisitsFromPublisher:v6 startTimestamp:v9 endTimestamp:v11];
  finalPOIWithoutExit = [v12 finalPOIWithoutExit];

  return finalPOIWithoutExit;
}

- (void)subscribeToPOIChangesForCategories:(id)categories observer:(id)observer enterSelector:(SEL)selector exitSelector:(SEL)exitSelector sinkCompletion:(id)completion
{
  categoriesCopy = categories;
  observerCopy = observer;
  completionCopy = completion;
  [(ATXPOICategoryVisitDataProvider *)self unsubscribeToPOIChanges];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  lowercaseString = [processName lowercaseString];

  v18 = [@"ATXPOICategoryVisitDataProvider.subscribe." stringByAppendingString:lowercaseString];
  v19 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:v18 targetQueue:self->_queue];
  scheduler = self->_scheduler;
  self->_scheduler = v19;

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  atx_DSLPublisher = [(BMStream *)self->_stream atx_DSLPublisher];
  v22 = [atx_DSLPublisher subscribeOn:self->_scheduler];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __121__ATXPOICategoryVisitDataProvider_subscribeToPOIChangesForCategories_observer_enterSelector_exitSelector_sinkCompletion___block_invoke;
  v27[3] = &unk_279AB81F8;
  v30 = v33;
  exitSelectorCopy = exitSelector;
  v27[4] = self;
  v23 = categoriesCopy;
  v28 = v23;
  selectorCopy = selector;
  v24 = observerCopy;
  v29 = v24;
  v25 = [v22 sinkWithCompletion:completionCopy receiveInput:v27];
  sink = self->_sink;
  self->_sink = v25;

  _Block_object_dispose(v33, 8);
}

void __121__ATXPOICategoryVisitDataProvider_subscribeToPOIChangesForCategories_observer_enterSelector_exitSelector_sinkCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 eventBody];
  v4 = (a1 + 64);
  if (*(a1 + 64) && *(*(*(a1 + 56) + 8) + 24) == 1 && [*(a1 + 32) hasExitedAllCategories:*(a1 + 40)])
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      goto LABEL_11;
    }

    v5 = *(a1 + 40);
    v6 = [v3 poiCategory];
    LODWORD(v5) = [v5 containsObject:v6];

    if (!v5)
    {
      goto LABEL_11;
    }

    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 64) != 0;
    v4 = (a1 + 72);
  }

  v7 = *v4;
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 48);
  if (v9)
  {
    ([v9 methodForSelector:v7])(*(a1 + 48), v7);
  }

  objc_autoreleasePoolPop(v8);
LABEL_11:
}

- (BOOL)hasExitedAllCategories:(id)categories
{
  categoriesCopy = categories;
  getCurrentVisit = [(ATXPOICategoryVisitDataProvider *)self getCurrentVisit];
  v6 = getCurrentVisit;
  if (getCurrentVisit && ([getCurrentVisit hasExited] & 1) == 0)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    possibleCategoryNames = [v6 possibleCategoryNames];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__ATXPOICategoryVisitDataProvider_hasExitedAllCategories___block_invoke;
    v10[3] = &unk_279AB8220;
    v11 = categoriesCopy;
    v12 = &v13;
    [possibleCategoryNames enumerateObjectsUsingBlock:v10];

    v7 = *(v14 + 24) ^ 1;
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t __58__ATXPOICategoryVisitDataProvider_hasExitedAllCategories___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (a3 != 3)
  {
    if (![*(a1 + 32) containsObject:v7])
    {
      goto LABEL_5;
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  *a4 = 1;
LABEL_5:

  return MEMORY[0x2821F96F8]();
}

- (void)unsubscribeToPOIChanges
{
  [(BPSSink *)self->_sink cancel];
  sink = self->_sink;
  self->_sink = 0;

  scheduler = self->_scheduler;
  self->_scheduler = 0;
}

@end