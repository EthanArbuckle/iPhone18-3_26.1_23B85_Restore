@interface WFNANTableViewContext
- (WFNANTableViewContext)init;
- (id)getDataSessionAtIndex:(int64_t)index forPublisher:(id)publisher;
- (id)getDataSessionAtIndex:(int64_t)index forSubscriber:(id)subscriber;
- (id)getDataSessionsForPublisher:(id)publisher;
- (id)getDataSessionsForSubscriber:(id)subscriber;
- (id)getDiscoveryResultAtIndex:(int64_t)index forSubscriber:(id)subscriber;
- (id)getDiscoveryResultsForSubscriber:(id)subscriber;
- (id)getPublisherAtIndex:(int64_t)index;
- (id)getSubscriberAtIndex:(int64_t)index;
- (int64_t)getDataSessionsCountForPublisher:(id)publisher;
- (int64_t)getDataSessionsCountForSubscriber:(id)subscriber;
- (int64_t)getDiscoveryResultsCountForSubscriber:(id)subscriber;
- (void)addDataSession:(id)session forPublisher:(id)publisher;
- (void)addDataSession:(id)session forSubscriber:(id)subscriber;
- (void)addDiscoveryResult:(id)result forSubscriber:(id)subscriber;
- (void)addPublisher:(id)publisher;
- (void)addSubscriber:(id)subscriber;
- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info;
- (void)publisher:(id)publisher dataTerminatedForHandle:(id)handle reason:(int64_t)reason;
- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error;
- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason;
- (void)publisherStarted:(id)started;
- (void)removeDataSession:(id)session forPublisher:(id)publisher;
- (void)removeDataSession:(id)session forSubscriber:(id)subscriber;
- (void)removeDiscoveryResultWithPublishID:(unsigned __int8)d andPublisherAddress:(id)address forSubscriber:(id)subscriber;
- (void)removePublisher:(id)publisher;
- (void)removePublisherAtIndex:(int64_t)index;
- (void)removeSubscriber:(id)subscriber;
- (void)removeSubscriberAtIndex:(int64_t)index;
- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error;
- (void)subscriber:(id)subscriber receivedDiscoveyResult:(id)result;
- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason;
- (void)subscriberStarted:(id)started;
@end

@implementation WFNANTableViewContext

- (WFNANTableViewContext)init
{
  v14.receiver = self;
  v14.super_class = WFNANTableViewContext;
  v2 = [(WFNANTableViewContext *)&v14 init];
  array = [MEMORY[0x277CBEB18] array];
  publishers = v2->_publishers;
  v2->_publishers = array;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dataSessionsForPublish = v2->_dataSessionsForPublish;
  v2->_dataSessionsForPublish = dictionary;

  array2 = [MEMORY[0x277CBEB18] array];
  subscribers = v2->_subscribers;
  v2->_subscribers = array2;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  discoveryResults = v2->_discoveryResults;
  v2->_discoveryResults = dictionary2;

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  dataSessionsForSubscribe = v2->_dataSessionsForSubscribe;
  v2->_dataSessionsForSubscribe = dictionary3;

  return v2;
}

- (void)addPublisher:(id)publisher
{
  v15 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  [publisherCopy start];
  [(NSMutableArray *)self->_publishers addObject:publisherCopy];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [(NSMutableArray *)self->_publishers count];
      *buf = 134217984;
      v14 = v8;
      _os_log_impl(&dword_273FB9000, v7, v6, "Added new publisher, new count is %lu", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WFNANTableViewContext_addPublisher___block_invoke;
  block[3] = &unk_279EC5538;
  v12 = publisherCopy;
  v9 = publisherCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v10 = *MEMORY[0x277D85DE8];
}

void __38__WFNANTableViewContext_addPublisher___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v6[1] = @"WFNANTableViewContextChangedPublisherKey";
  v7[0] = v2;
  v7[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WFNANPublishersChangedNotification" object:0 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addSubscriber:(id)subscriber
{
  v15 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  [subscriberCopy start];
  [(NSMutableArray *)self->_subscribers addObject:subscriberCopy];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [(NSMutableArray *)self->_subscribers count];
      *buf = 134217984;
      v14 = v8;
      _os_log_impl(&dword_273FB9000, v7, v6, "Added new subcriber, new count is %lu", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WFNANTableViewContext_addSubscriber___block_invoke;
  block[3] = &unk_279EC5538;
  v12 = subscriberCopy;
  v9 = subscriberCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v10 = *MEMORY[0x277D85DE8];
}

void __39__WFNANTableViewContext_addSubscriber___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v6[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v7[0] = v2;
  v7[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WFNANSubscribersChangedNotification" object:0 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addDiscoveryResult:(id)result forSubscriber:(id)subscriber
{
  v28 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  subscriberCopy = subscriber;
  discoveryResults = self->_discoveryResults;
  configuration = [subscriberCopy configuration];
  array = [(NSMutableDictionary *)discoveryResults objectForKey:configuration];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  [array addObject:resultCopy];
  v11 = self->_discoveryResults;
  configuration2 = [subscriberCopy configuration];
  [(NSMutableDictionary *)v11 setObject:array forKey:configuration2];

  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v13)
  {
    v15 = v13;
    if (os_log_type_enabled(v15, v14))
    {
      configuration3 = [subscriberCopy configuration];
      serviceName = [configuration3 serviceName];
      *buf = 138412546;
      v25 = serviceName;
      v26 = 2048;
      v27 = [array count];
      _os_log_impl(&dword_273FB9000, v15, v14, "Added new discovery result for subscriber %@, new count is %lu", buf, 0x16u);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__WFNANTableViewContext_addDiscoveryResult_forSubscriber___block_invoke;
  v21[3] = &unk_279EC5588;
  v22 = subscriberCopy;
  v23 = resultCopy;
  v18 = resultCopy;
  v19 = subscriberCopy;
  dispatch_async(MEMORY[0x277D85CD0], v21);

  v20 = *MEMORY[0x277D85DE8];
}

void __58__WFNANTableViewContext_addDiscoveryResult_forSubscriber___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v8[2] = @"WFNANTableViewContextChangedDiscoveryResultKey";
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"WFNANDiscoveryResultsChangedNotification" object:0 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addDataSession:(id)session forPublisher:(id)publisher
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  publisherCopy = publisher;
  dataSessionsForPublish = self->_dataSessionsForPublish;
  configuration = [publisherCopy configuration];
  array = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:configuration];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  [array addObject:sessionCopy];
  v11 = self->_dataSessionsForPublish;
  configuration2 = [publisherCopy configuration];
  [(NSMutableDictionary *)v11 setObject:array forKey:configuration2];

  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v13)
  {
    v15 = v13;
    if (os_log_type_enabled(v15, v14))
    {
      configuration3 = [publisherCopy configuration];
      serviceName = [configuration3 serviceName];
      *buf = 138412546;
      v25 = serviceName;
      v26 = 2048;
      v27 = [array count];
      _os_log_impl(&dword_273FB9000, v15, v14, "Added new data session for publisher %@, new count is %lu", buf, 0x16u);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__WFNANTableViewContext_addDataSession_forPublisher___block_invoke;
  v21[3] = &unk_279EC5588;
  v22 = publisherCopy;
  v23 = sessionCopy;
  v18 = sessionCopy;
  v19 = publisherCopy;
  dispatch_async(MEMORY[0x277D85CD0], v21);

  v20 = *MEMORY[0x277D85DE8];
}

void __53__WFNANTableViewContext_addDataSession_forPublisher___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"WFNANTableViewContextChangedPublisherKey";
  v8[2] = @"WFNANTableViewContextChangedDataSessionKey";
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"WFNANDataSessionsForPublishChangedNotification" object:0 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addDataSession:(id)session forSubscriber:(id)subscriber
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  subscriberCopy = subscriber;
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  configuration = [subscriberCopy configuration];
  array = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:configuration];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  [array addObject:sessionCopy];
  v11 = self->_dataSessionsForSubscribe;
  configuration2 = [subscriberCopy configuration];
  [(NSMutableDictionary *)v11 setObject:array forKey:configuration2];

  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v13)
  {
    v15 = v13;
    if (os_log_type_enabled(v15, v14))
    {
      configuration3 = [subscriberCopy configuration];
      serviceName = [configuration3 serviceName];
      *buf = 138412546;
      v25 = serviceName;
      v26 = 2048;
      v27 = [array count];
      _os_log_impl(&dword_273FB9000, v15, v14, "Added new data session for subscriber %@, new count is %lu", buf, 0x16u);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__WFNANTableViewContext_addDataSession_forSubscriber___block_invoke;
  v21[3] = &unk_279EC5588;
  v22 = subscriberCopy;
  v23 = sessionCopy;
  v18 = sessionCopy;
  v19 = subscriberCopy;
  dispatch_async(MEMORY[0x277D85CD0], v21);

  v20 = *MEMORY[0x277D85DE8];
}

void __54__WFNANTableViewContext_addDataSession_forSubscriber___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v8[2] = @"WFNANTableViewContextChangedDataSessionKey";
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"WFNANDataSessionsForSubscribeChangedNotification" object:0 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removePublisherAtIndex:(int64_t)index
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(WFNANTableViewContext *)self getPublisherAtIndex:?];
  [v5 stop];
  [(NSMutableArray *)self->_publishers removeObjectAtIndex:index];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6)
  {
    v8 = v6;
    if (os_log_type_enabled(v8, v7))
    {
      v9 = [(NSMutableArray *)self->_publishers count];
      *buf = 134218240;
      indexCopy = index;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_273FB9000, v8, v7, "Removed publisher at index %ld, new count is %lu", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WFNANTableViewContext_removePublisherAtIndex___block_invoke;
  block[3] = &unk_279EC5538;
  v13 = v5;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v11 = *MEMORY[0x277D85DE8];
}

void __48__WFNANTableViewContext_removePublisherAtIndex___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v6[1] = @"WFNANTableViewContextChangedPublisherKey";
  v7[0] = v2;
  v7[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WFNANPublishersChangedNotification" object:0 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removePublisher:(id)publisher
{
  v19 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  if ([(NSMutableArray *)self->_publishers count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_publishers objectAtIndex:v5];
      if ([v6 isEqual:publisherCopy])
      {
        break;
      }

      if (++v5 >= [(NSMutableArray *)self->_publishers count])
      {
        goto LABEL_5;
      }
    }

    [publisherCopy stop];
    [(NSMutableArray *)self->_publishers removeObjectAtIndex:v5];
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v8)
    {
      v10 = v8;
      if (os_log_type_enabled(v10, v9))
      {
        v11 = [(NSMutableArray *)self->_publishers count];
        *buf = 134218240;
        v16 = v5;
        v17 = 2048;
        v18 = v11;
        _os_log_impl(&dword_273FB9000, v10, v9, "Removed publisher at index %ld, new count is %lu", buf, 0x16u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__WFNANTableViewContext_removePublisher___block_invoke;
    block[3] = &unk_279EC5538;
    v14 = publisherCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
LABEL_5:
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
    {
      *buf = 138412290;
      v16 = publisherCopy;
      _os_log_impl(&dword_273FB9000, v6, v7, "Publisher %@ does not exist", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __41__WFNANTableViewContext_removePublisher___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v6[1] = @"WFNANTableViewContextChangedPublisherKey";
  v7[0] = v2;
  v7[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WFNANPublishersChangedNotification" object:0 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeSubscriberAtIndex:(int64_t)index
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(WFNANTableViewContext *)self getSubscriberAtIndex:?];
  [v5 stop];
  [(NSMutableArray *)self->_subscribers removeObjectAtIndex:index];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6)
  {
    v8 = v6;
    if (os_log_type_enabled(v8, v7))
    {
      v9 = [(NSMutableArray *)self->_subscribers count];
      *buf = 134218240;
      indexCopy = index;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_273FB9000, v8, v7, "Removed subscriber at index %ld, new count is %lu", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WFNANTableViewContext_removeSubscriberAtIndex___block_invoke;
  block[3] = &unk_279EC5538;
  v13 = v5;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v11 = *MEMORY[0x277D85DE8];
}

void __49__WFNANTableViewContext_removeSubscriberAtIndex___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v6[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v7[0] = v2;
  v7[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WFNANSubscribersChangedNotification" object:0 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeSubscriber:(id)subscriber
{
  v19 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  if ([(NSMutableArray *)self->_subscribers count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_subscribers objectAtIndex:v5];
      if ([v6 isEqual:subscriberCopy])
      {
        break;
      }

      if (++v5 >= [(NSMutableArray *)self->_subscribers count])
      {
        goto LABEL_5;
      }
    }

    [subscriberCopy stop];
    [(NSMutableArray *)self->_subscribers removeObjectAtIndex:v5];
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v8)
    {
      v10 = v8;
      if (os_log_type_enabled(v10, v9))
      {
        v11 = [(NSMutableArray *)self->_subscribers count];
        *buf = 134218240;
        v16 = v5;
        v17 = 2048;
        v18 = v11;
        _os_log_impl(&dword_273FB9000, v10, v9, "Removed subscriber at index %ld, new count is %lu", buf, 0x16u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__WFNANTableViewContext_removeSubscriber___block_invoke;
    block[3] = &unk_279EC5538;
    v14 = subscriberCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
LABEL_5:
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
    {
      *buf = 138412290;
      v16 = subscriberCopy;
      _os_log_impl(&dword_273FB9000, v6, v7, "Subscriber %@ does not exist", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __42__WFNANTableViewContext_removeSubscriber___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v6[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v7[0] = v2;
  v7[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WFNANSubscribersChangedNotification" object:0 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeDiscoveryResultWithPublishID:(unsigned __int8)d andPublisherAddress:(id)address forSubscriber:(id)subscriber
{
  dCopy = d;
  v36 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  subscriberCopy = subscriber;
  discoveryResults = self->_discoveryResults;
  configuration = [subscriberCopy configuration];
  v12 = [(NSMutableDictionary *)discoveryResults objectForKey:configuration];

  if ([v12 count])
  {
    v13 = 0;
    while (1)
    {
      v14 = [v12 objectAtIndex:v13];
      if ([v14 publishID] == dCopy)
      {
        publisherAddress = [v14 publisherAddress];
        v16 = [publisherAddress isEqual:addressCopy];

        if (v16)
        {
          break;
        }
      }

      if (++v13 >= [v12 count])
      {
        goto LABEL_6;
      }
    }

    [v12 removeObjectAtIndex:v13];
    v23 = self->_discoveryResults;
    configuration2 = [subscriberCopy configuration];
    [(NSMutableDictionary *)v23 setObject:v12 forKey:configuration2];

    v25 = WFLogForCategory(0);
    v26 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v25)
    {
      v27 = v25;
      if (os_log_type_enabled(v27, v26))
      {
        configuration3 = [subscriberCopy configuration];
        serviceName = [configuration3 serviceName];
        *buf = 138412546;
        *v35 = serviceName;
        *&v35[8] = 2048;
        *&v35[10] = [v12 count];
        _os_log_impl(&dword_273FB9000, v27, v26, "Removed discovery result for subcriber %@, new count is %lu", buf, 0x16u);
      }
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __94__WFNANTableViewContext_removeDiscoveryResultWithPublishID_andPublisherAddress_forSubscriber___block_invoke;
    v31[3] = &unk_279EC5588;
    v32 = subscriberCopy;
    v33 = v14;
    v17 = v14;
    dispatch_async(MEMORY[0x277D85CD0], v31);

    v19 = v32;
    goto LABEL_17;
  }

LABEL_6:
  v17 = WFLogForCategory(0);
  v18 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v17)
  {
    v19 = v17;
    if (os_log_type_enabled(v19, v18))
    {
      v20 = [addressCopy description];
      configuration4 = [subscriberCopy configuration];
      serviceName2 = [configuration4 serviceName];
      *buf = 67109634;
      *v35 = dCopy;
      *&v35[4] = 2112;
      *&v35[6] = v20;
      *&v35[14] = 2112;
      *&v35[16] = serviceName2;
      _os_log_impl(&dword_273FB9000, v19, v18, "Discovery result with publish ID %hhu and address %@ does not exist for subscriber %@", buf, 0x1Cu);
    }

    v17 = v19;
LABEL_17:
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __94__WFNANTableViewContext_removeDiscoveryResultWithPublishID_andPublisherAddress_forSubscriber___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v8[2] = @"WFNANTableViewContextChangedDiscoveryResultKey";
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"WFNANDiscoveryResultsChangedNotification" object:0 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeDataSession:(id)session forPublisher:(id)publisher
{
  v32 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  publisherCopy = publisher;
  dataSessionsForPublish = self->_dataSessionsForPublish;
  configuration = [publisherCopy configuration];
  v10 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:configuration];

  if ([v10 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v10 objectAtIndex:v11];
      if ([v12 isEqual:sessionCopy])
      {
        break;
      }

      if (++v11 >= [v10 count])
      {
        goto LABEL_5;
      }
    }

    [v10 removeObjectAtIndex:v11];
    v17 = self->_dataSessionsForPublish;
    configuration2 = [publisherCopy configuration];
    [(NSMutableDictionary *)v17 setObject:v10 forKey:configuration2];

    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v19)
    {
      v21 = v19;
      if (os_log_type_enabled(v21, v20))
      {
        configuration3 = [publisherCopy configuration];
        serviceName = [configuration3 serviceName];
        *buf = 138412546;
        v29 = serviceName;
        v30 = 2048;
        v31 = [v10 count];
        _os_log_impl(&dword_273FB9000, v21, v20, "Removed data session for publisher %@, new count is %lu", buf, 0x16u);
      }
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__WFNANTableViewContext_removeDataSession_forPublisher___block_invoke;
    v25[3] = &unk_279EC5588;
    v26 = publisherCopy;
    v27 = sessionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v25);

    v14 = v26;
    goto LABEL_16;
  }

LABEL_5:
  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v12)
  {
    v14 = v12;
    if (os_log_type_enabled(v14, v13))
    {
      configuration4 = [publisherCopy configuration];
      serviceName2 = [configuration4 serviceName];
      *buf = 138412546;
      v29 = sessionCopy;
      v30 = 2112;
      v31 = serviceName2;
      _os_log_impl(&dword_273FB9000, v14, v13, "Data session %@ does not exist for publisher %@", buf, 0x16u);
    }

    v12 = v14;
LABEL_16:
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __56__WFNANTableViewContext_removeDataSession_forPublisher___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"WFNANTableViewContextChangedPublisherKey";
  v8[2] = @"WFNANTableViewContextChangedDataSessionKey";
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"WFNANDataSessionsForPublishChangedNotification" object:0 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeDataSession:(id)session forSubscriber:(id)subscriber
{
  v32 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  subscriberCopy = subscriber;
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  configuration = [subscriberCopy configuration];
  v10 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:configuration];

  if ([v10 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v10 objectAtIndex:v11];
      if ([v12 isEqual:sessionCopy])
      {
        break;
      }

      if (++v11 >= [v10 count])
      {
        goto LABEL_5;
      }
    }

    [v10 removeObjectAtIndex:v11];
    v17 = self->_dataSessionsForSubscribe;
    configuration2 = [subscriberCopy configuration];
    [(NSMutableDictionary *)v17 setObject:v10 forKey:configuration2];

    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v19)
    {
      v21 = v19;
      if (os_log_type_enabled(v21, v20))
      {
        configuration3 = [subscriberCopy configuration];
        serviceName = [configuration3 serviceName];
        *buf = 138412546;
        v29 = serviceName;
        v30 = 2048;
        v31 = [v10 count];
        _os_log_impl(&dword_273FB9000, v21, v20, "Removed data session for subscriber %@, new count is %lu", buf, 0x16u);
      }
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __57__WFNANTableViewContext_removeDataSession_forSubscriber___block_invoke;
    v25[3] = &unk_279EC5588;
    v26 = subscriberCopy;
    v27 = sessionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v25);

    v14 = v26;
    goto LABEL_16;
  }

LABEL_5:
  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v12)
  {
    v14 = v12;
    if (os_log_type_enabled(v14, v13))
    {
      configuration4 = [subscriberCopy configuration];
      serviceName2 = [configuration4 serviceName];
      *buf = 138412546;
      v29 = sessionCopy;
      v30 = 2112;
      v31 = serviceName2;
      _os_log_impl(&dword_273FB9000, v14, v13, "Data session %@ does not exist for subscriber %@", buf, 0x16u);
    }

    v12 = v14;
LABEL_16:
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __57__WFNANTableViewContext_removeDataSession_forSubscriber___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v8[2] = @"WFNANTableViewContextChangedDataSessionKey";
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"WFNANDataSessionsForSubscribeChangedNotification" object:0 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)getPublisherAtIndex:(int64_t)index
{
  if ([(NSMutableArray *)self->_publishers count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_publishers objectAtIndex:index];
  }

  return v5;
}

- (id)getSubscriberAtIndex:(int64_t)index
{
  if ([(NSMutableArray *)self->_subscribers count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_subscribers objectAtIndex:index];
  }

  return v5;
}

- (id)getDiscoveryResultAtIndex:(int64_t)index forSubscriber:(id)subscriber
{
  discoveryResults = self->_discoveryResults;
  configuration = [subscriber configuration];
  v7 = [(NSMutableDictionary *)discoveryResults objectForKey:configuration];

  if ([v7 count] <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:index];
  }

  return v8;
}

- (id)getDataSessionAtIndex:(int64_t)index forPublisher:(id)publisher
{
  dataSessionsForPublish = self->_dataSessionsForPublish;
  configuration = [publisher configuration];
  v7 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:configuration];

  if ([v7 count] <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:index];
  }

  return v8;
}

- (id)getDataSessionAtIndex:(int64_t)index forSubscriber:(id)subscriber
{
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  configuration = [subscriber configuration];
  v7 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:configuration];

  if ([v7 count] <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:index];
  }

  return v8;
}

- (id)getDiscoveryResultsForSubscriber:(id)subscriber
{
  discoveryResults = self->_discoveryResults;
  configuration = [subscriber configuration];
  v5 = [(NSMutableDictionary *)discoveryResults objectForKey:configuration];

  return v5;
}

- (id)getDataSessionsForPublisher:(id)publisher
{
  dataSessionsForPublish = self->_dataSessionsForPublish;
  configuration = [publisher configuration];
  v5 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:configuration];

  return v5;
}

- (id)getDataSessionsForSubscriber:(id)subscriber
{
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  configuration = [subscriber configuration];
  v5 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:configuration];

  return v5;
}

- (int64_t)getDiscoveryResultsCountForSubscriber:(id)subscriber
{
  discoveryResults = self->_discoveryResults;
  configuration = [subscriber configuration];
  v5 = [(NSMutableDictionary *)discoveryResults objectForKey:configuration];

  v6 = [v5 count];
  return v6;
}

- (int64_t)getDataSessionsCountForPublisher:(id)publisher
{
  dataSessionsForPublish = self->_dataSessionsForPublish;
  configuration = [publisher configuration];
  v5 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:configuration];

  v6 = [v5 count];
  return v6;
}

- (int64_t)getDataSessionsCountForSubscriber:(id)subscriber
{
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  configuration = [subscriber configuration];
  v5 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:configuration];

  v6 = [v5 count];
  return v6;
}

- (void)publisherStarted:(id)started
{
  v12 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      configuration = [startedCopy configuration];
      serviceName = [configuration serviceName];
      v10 = 138412290;
      v11 = serviceName;
      _os_log_impl(&dword_273FB9000, v6, v5, "NAN publish %@ started", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error
{
  v17 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      configuration = [publisherCopy configuration];
      serviceName = [configuration serviceName];
      v13 = 138412546;
      v14 = serviceName;
      v15 = 2048;
      errorCopy = error;
      _os_log_impl(&dword_273FB9000, v9, v8, "NAN publish %@ failed to start with error %ld", &v13, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self removePublisher:publisherCopy];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason
{
  v17 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      configuration = [publisherCopy configuration];
      serviceName = [configuration serviceName];
      v13 = 138412546;
      v14 = serviceName;
      v15 = 2048;
      reasonCopy = reason;
      _os_log_impl(&dword_273FB9000, v9, v8, "NAN publish %@ terminated with reason %ld", &v13, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self removePublisher:publisherCopy];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info
{
  v17 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  publisherCopy = publisher;
  v10 = WFLogForCategory(0);
  v11 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v10)
  {
    v12 = v10;
    if (os_log_type_enabled(v12, v11))
    {
      initiatorDataAddress = [handleCopy initiatorDataAddress];
      v15 = 138412290;
      v16 = initiatorDataAddress;
      _os_log_impl(&dword_273FB9000, v12, v11, "Data confirmed for session with peer %@", &v15, 0xCu);
    }
  }

  [(WFNANTableViewContext *)self addDataSession:handleCopy forPublisher:publisherCopy];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)publisher:(id)publisher dataTerminatedForHandle:(id)handle reason:(int64_t)reason
{
  v16 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  publisherCopy = publisher;
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v11, v10))
    {
      initiatorDataAddress = [handleCopy initiatorDataAddress];
      v14 = 138412290;
      v15 = initiatorDataAddress;
      _os_log_impl(&dword_273FB9000, v11, v10, "Data terminated for session with peer %@", &v14, 0xCu);
    }
  }

  [(WFNANTableViewContext *)self removeDataSession:handleCopy forPublisher:publisherCopy];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)subscriberStarted:(id)started
{
  v12 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      configuration = [startedCopy configuration];
      serviceName = [configuration serviceName];
      v10 = 138412290;
      v11 = serviceName;
      _os_log_impl(&dword_273FB9000, v6, v5, "NAN subscribe %@ started", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error
{
  v17 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      configuration = [subscriberCopy configuration];
      serviceName = [configuration serviceName];
      v13 = 138412546;
      v14 = serviceName;
      v15 = 2048;
      errorCopy = error;
      _os_log_impl(&dword_273FB9000, v9, v8, "NAN subscribe %@ failed to start with error %ld", &v13, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self removeSubscriber:subscriberCopy];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason
{
  v17 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      configuration = [subscriberCopy configuration];
      serviceName = [configuration serviceName];
      v13 = 138412546;
      v14 = serviceName;
      v15 = 2048;
      reasonCopy = reason;
      _os_log_impl(&dword_273FB9000, v9, v8, "NAN subscribe %@ terminated with reason %ld", &v13, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self removeSubscriber:subscriberCopy];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)subscriber:(id)subscriber receivedDiscoveyResult:(id)result
{
  v20 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  resultCopy = result;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      configuration = [subscriberCopy configuration];
      serviceName = [configuration serviceName];
      serviceSpecificInfo = [resultCopy serviceSpecificInfo];
      v14 = [serviceSpecificInfo description];
      v16 = 138412546;
      v17 = serviceName;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_273FB9000, v10, v9, "NAN subscribe %@ received discovery result %@", &v16, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self addDiscoveryResult:resultCopy forSubscriber:subscriberCopy];
  v15 = *MEMORY[0x277D85DE8];
}

@end