@interface ATXPOICategoryEnterAndExitEvents
- (ATXPOICategoryEnterAndExitEvents)initWithCategoryEvents:(id)a3 exitEvent:(id)a4;
- (id)visitEventAllowingMissingExit:(BOOL)a3;
@end

@implementation ATXPOICategoryEnterAndExitEvents

- (ATXPOICategoryEnterAndExitEvents)initWithCategoryEvents:(id)a3 exitEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXPOICategoryEnterAndExitEvents;
  v9 = [(ATXPOICategoryEnterAndExitEvents *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_categoryEnterEvents, a3);
    objc_storeStrong(&v10->_exitEvent, a4);
  }

  return v10;
}

- (id)visitEventAllowingMissingExit:(BOOL)a3
{
  if (!a3 && !self->_exitEvent || (categoryEnterEvents = self->_categoryEnterEvents) == 0)
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  if (![(NSArray *)categoryEnterEvents count])
  {
    v17 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke_2_cold_1(v17);
    }

    goto LABEL_11;
  }

  v5 = [(NSArray *)self->_categoryEnterEvents objectAtIndexedSubscript:0];
  v6 = [v5 eventBody];
  v7 = [v6 timestamp];

  v8 = v7;
  exitEvent = self->_exitEvent;
  v10 = v8;
  if (exitEvent)
  {
    v11 = [(BMStoreEvent *)exitEvent eventBody];
    v10 = [v11 timestamp];
  }

  v12 = [(NSArray *)self->_categoryEnterEvents sortedArrayUsingComparator:&__block_literal_global_27];
  v13 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_30];
  v14 = [ATXPOICategoryVisitEvent alloc];
  v15 = [objc_alloc(MEMORY[0x277CBEB70]) initWithArray:v13];
  v16 = [(ATXPOICategoryVisitEvent *)v14 initWithPossibleCategoryNames:v15 startDate:v8 endDate:v10 hasExited:self->_exitEvent != 0];

LABEL_12:

  return v16;
}

uint64_t __66__ATXPOICategoryEnterAndExitEvents_visitEventAllowingMissingExit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventBody];
  v6 = [v5 rank];

  v7 = [v4 eventBody];

  v8 = [v7 rank];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v11 = [v9 compare:v10];

  return v11;
}

id __66__ATXPOICategoryEnterAndExitEvents_visitEventAllowingMissingExit___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 poiCategory];

  return v3;
}

@end