@interface WFNANTableViewContext
- (WFNANTableViewContext)init;
- (id)getDataSessionAtIndex:(int64_t)a3 forPublisher:(id)a4;
- (id)getDataSessionAtIndex:(int64_t)a3 forSubscriber:(id)a4;
- (id)getDataSessionsForPublisher:(id)a3;
- (id)getDataSessionsForSubscriber:(id)a3;
- (id)getDiscoveryResultAtIndex:(int64_t)a3 forSubscriber:(id)a4;
- (id)getDiscoveryResultsForSubscriber:(id)a3;
- (id)getPublisherAtIndex:(int64_t)a3;
- (id)getSubscriberAtIndex:(int64_t)a3;
- (int64_t)getDataSessionsCountForPublisher:(id)a3;
- (int64_t)getDataSessionsCountForSubscriber:(id)a3;
- (int64_t)getDiscoveryResultsCountForSubscriber:(id)a3;
- (void)addDataSession:(id)a3 forPublisher:(id)a4;
- (void)addDataSession:(id)a3 forSubscriber:(id)a4;
- (void)addDiscoveryResult:(id)a3 forSubscriber:(id)a4;
- (void)addPublisher:(id)a3;
- (void)addSubscriber:(id)a3;
- (void)publisher:(id)a3 dataConfirmedForHandle:(id)a4 localInterfaceIndex:(unsigned int)a5 serviceSpecificInfo:(id)a6;
- (void)publisher:(id)a3 dataTerminatedForHandle:(id)a4 reason:(int64_t)a5;
- (void)publisher:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)publisher:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)publisherStarted:(id)a3;
- (void)removeDataSession:(id)a3 forPublisher:(id)a4;
- (void)removeDataSession:(id)a3 forSubscriber:(id)a4;
- (void)removeDiscoveryResultWithPublishID:(unsigned __int8)a3 andPublisherAddress:(id)a4 forSubscriber:(id)a5;
- (void)removePublisher:(id)a3;
- (void)removePublisherAtIndex:(int64_t)a3;
- (void)removeSubscriber:(id)a3;
- (void)removeSubscriberAtIndex:(int64_t)a3;
- (void)subscriber:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)subscriber:(id)a3 receivedDiscoveyResult:(id)a4;
- (void)subscriber:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)subscriberStarted:(id)a3;
@end

@implementation WFNANTableViewContext

- (WFNANTableViewContext)init
{
  v14.receiver = self;
  v14.super_class = WFNANTableViewContext;
  v2 = [(WFNANTableViewContext *)&v14 init];
  v3 = [MEMORY[0x277CBEB18] array];
  publishers = v2->_publishers;
  v2->_publishers = v3;

  v5 = [MEMORY[0x277CBEB38] dictionary];
  dataSessionsForPublish = v2->_dataSessionsForPublish;
  v2->_dataSessionsForPublish = v5;

  v7 = [MEMORY[0x277CBEB18] array];
  subscribers = v2->_subscribers;
  v2->_subscribers = v7;

  v9 = [MEMORY[0x277CBEB38] dictionary];
  discoveryResults = v2->_discoveryResults;
  v2->_discoveryResults = v9;

  v11 = [MEMORY[0x277CBEB38] dictionary];
  dataSessionsForSubscribe = v2->_dataSessionsForSubscribe;
  v2->_dataSessionsForSubscribe = v11;

  return v2;
}

- (void)addPublisher:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 start];
  [(NSMutableArray *)self->_publishers addObject:v4];
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
      _os_log_impl(&dword_273ECD000, v7, v6, "Added new publisher, new count is %lu", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WFNANTableViewContext_addPublisher___block_invoke;
  block[3] = &unk_279EBCFE0;
  v12 = v4;
  v9 = v4;
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

- (void)addSubscriber:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 start];
  [(NSMutableArray *)self->_subscribers addObject:v4];
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
      _os_log_impl(&dword_273ECD000, v7, v6, "Added new subcriber, new count is %lu", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WFNANTableViewContext_addSubscriber___block_invoke;
  block[3] = &unk_279EBCFE0;
  v12 = v4;
  v9 = v4;
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

- (void)addDiscoveryResult:(id)a3 forSubscriber:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  discoveryResults = self->_discoveryResults;
  v9 = [v7 configuration];
  v10 = [(NSMutableDictionary *)discoveryResults objectForKey:v9];

  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB18] array];
  }

  [v10 addObject:v6];
  v11 = self->_discoveryResults;
  v12 = [v7 configuration];
  [(NSMutableDictionary *)v11 setObject:v10 forKey:v12];

  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v13)
  {
    v15 = v13;
    if (os_log_type_enabled(v15, v14))
    {
      v16 = [v7 configuration];
      v17 = [v16 serviceName];
      *buf = 138412546;
      v25 = v17;
      v26 = 2048;
      v27 = [v10 count];
      _os_log_impl(&dword_273ECD000, v15, v14, "Added new discovery result for subscriber %@, new count is %lu", buf, 0x16u);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__WFNANTableViewContext_addDiscoveryResult_forSubscriber___block_invoke;
  v21[3] = &unk_279EBD290;
  v22 = v7;
  v23 = v6;
  v18 = v6;
  v19 = v7;
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

- (void)addDataSession:(id)a3 forPublisher:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dataSessionsForPublish = self->_dataSessionsForPublish;
  v9 = [v7 configuration];
  v10 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:v9];

  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB18] array];
  }

  [v10 addObject:v6];
  v11 = self->_dataSessionsForPublish;
  v12 = [v7 configuration];
  [(NSMutableDictionary *)v11 setObject:v10 forKey:v12];

  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v13)
  {
    v15 = v13;
    if (os_log_type_enabled(v15, v14))
    {
      v16 = [v7 configuration];
      v17 = [v16 serviceName];
      *buf = 138412546;
      v25 = v17;
      v26 = 2048;
      v27 = [v10 count];
      _os_log_impl(&dword_273ECD000, v15, v14, "Added new data session for publisher %@, new count is %lu", buf, 0x16u);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__WFNANTableViewContext_addDataSession_forPublisher___block_invoke;
  v21[3] = &unk_279EBD290;
  v22 = v7;
  v23 = v6;
  v18 = v6;
  v19 = v7;
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

- (void)addDataSession:(id)a3 forSubscriber:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  v9 = [v7 configuration];
  v10 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:v9];

  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB18] array];
  }

  [v10 addObject:v6];
  v11 = self->_dataSessionsForSubscribe;
  v12 = [v7 configuration];
  [(NSMutableDictionary *)v11 setObject:v10 forKey:v12];

  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v13)
  {
    v15 = v13;
    if (os_log_type_enabled(v15, v14))
    {
      v16 = [v7 configuration];
      v17 = [v16 serviceName];
      *buf = 138412546;
      v25 = v17;
      v26 = 2048;
      v27 = [v10 count];
      _os_log_impl(&dword_273ECD000, v15, v14, "Added new data session for subscriber %@, new count is %lu", buf, 0x16u);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__WFNANTableViewContext_addDataSession_forSubscriber___block_invoke;
  v21[3] = &unk_279EBD290;
  v22 = v7;
  v23 = v6;
  v18 = v6;
  v19 = v7;
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

- (void)removePublisherAtIndex:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(WFNANTableViewContext *)self getPublisherAtIndex:?];
  [v5 stop];
  [(NSMutableArray *)self->_publishers removeObjectAtIndex:a3];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6)
  {
    v8 = v6;
    if (os_log_type_enabled(v8, v7))
    {
      v9 = [(NSMutableArray *)self->_publishers count];
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_273ECD000, v8, v7, "Removed publisher at index %ld, new count is %lu", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WFNANTableViewContext_removePublisherAtIndex___block_invoke;
  block[3] = &unk_279EBCFE0;
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

- (void)removePublisher:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableArray *)self->_publishers count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_publishers objectAtIndex:v5];
      if ([v6 isEqual:v4])
      {
        break;
      }

      if (++v5 >= [(NSMutableArray *)self->_publishers count])
      {
        goto LABEL_5;
      }
    }

    [v4 stop];
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
        _os_log_impl(&dword_273ECD000, v10, v9, "Removed publisher at index %ld, new count is %lu", buf, 0x16u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__WFNANTableViewContext_removePublisher___block_invoke;
    block[3] = &unk_279EBCFE0;
    v14 = v4;
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
      v16 = v4;
      _os_log_impl(&dword_273ECD000, v6, v7, "Publisher %@ does not exist", buf, 0xCu);
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

- (void)removeSubscriberAtIndex:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(WFNANTableViewContext *)self getSubscriberAtIndex:?];
  [v5 stop];
  [(NSMutableArray *)self->_subscribers removeObjectAtIndex:a3];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6)
  {
    v8 = v6;
    if (os_log_type_enabled(v8, v7))
    {
      v9 = [(NSMutableArray *)self->_subscribers count];
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_273ECD000, v8, v7, "Removed subscriber at index %ld, new count is %lu", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WFNANTableViewContext_removeSubscriberAtIndex___block_invoke;
  block[3] = &unk_279EBCFE0;
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

- (void)removeSubscriber:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableArray *)self->_subscribers count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_subscribers objectAtIndex:v5];
      if ([v6 isEqual:v4])
      {
        break;
      }

      if (++v5 >= [(NSMutableArray *)self->_subscribers count])
      {
        goto LABEL_5;
      }
    }

    [v4 stop];
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
        _os_log_impl(&dword_273ECD000, v10, v9, "Removed subscriber at index %ld, new count is %lu", buf, 0x16u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__WFNANTableViewContext_removeSubscriber___block_invoke;
    block[3] = &unk_279EBCFE0;
    v14 = v4;
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
      v16 = v4;
      _os_log_impl(&dword_273ECD000, v6, v7, "Subscriber %@ does not exist", buf, 0xCu);
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

- (void)removeDiscoveryResultWithPublishID:(unsigned __int8)a3 andPublisherAddress:(id)a4 forSubscriber:(id)a5
{
  v6 = a3;
  v36 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  discoveryResults = self->_discoveryResults;
  v11 = [v9 configuration];
  v12 = [(NSMutableDictionary *)discoveryResults objectForKey:v11];

  if ([v12 count])
  {
    v13 = 0;
    while (1)
    {
      v14 = [v12 objectAtIndex:v13];
      if ([v14 publishID] == v6)
      {
        v15 = [v14 publisherAddress];
        v16 = [v15 isEqual:v8];

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
    v24 = [v9 configuration];
    [(NSMutableDictionary *)v23 setObject:v12 forKey:v24];

    v25 = WFLogForCategory(0);
    v26 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v25)
    {
      v27 = v25;
      if (os_log_type_enabled(v27, v26))
      {
        v28 = [v9 configuration];
        v29 = [v28 serviceName];
        *buf = 138412546;
        *v35 = v29;
        *&v35[8] = 2048;
        *&v35[10] = [v12 count];
        _os_log_impl(&dword_273ECD000, v27, v26, "Removed discovery result for subcriber %@, new count is %lu", buf, 0x16u);
      }
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __94__WFNANTableViewContext_removeDiscoveryResultWithPublishID_andPublisherAddress_forSubscriber___block_invoke;
    v31[3] = &unk_279EBD290;
    v32 = v9;
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
      v20 = [v8 description];
      v21 = [v9 configuration];
      v22 = [v21 serviceName];
      *buf = 67109634;
      *v35 = v6;
      *&v35[4] = 2112;
      *&v35[6] = v20;
      *&v35[14] = 2112;
      *&v35[16] = v22;
      _os_log_impl(&dword_273ECD000, v19, v18, "Discovery result with publish ID %hhu and address %@ does not exist for subscriber %@", buf, 0x1Cu);
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

- (void)removeDataSession:(id)a3 forPublisher:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dataSessionsForPublish = self->_dataSessionsForPublish;
  v9 = [v7 configuration];
  v10 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:v9];

  if ([v10 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v10 objectAtIndex:v11];
      if ([v12 isEqual:v6])
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
    v18 = [v7 configuration];
    [(NSMutableDictionary *)v17 setObject:v10 forKey:v18];

    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v19)
    {
      v21 = v19;
      if (os_log_type_enabled(v21, v20))
      {
        v22 = [v7 configuration];
        v23 = [v22 serviceName];
        *buf = 138412546;
        v29 = v23;
        v30 = 2048;
        v31 = [v10 count];
        _os_log_impl(&dword_273ECD000, v21, v20, "Removed data session for publisher %@, new count is %lu", buf, 0x16u);
      }
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__WFNANTableViewContext_removeDataSession_forPublisher___block_invoke;
    v25[3] = &unk_279EBD290;
    v26 = v7;
    v27 = v6;
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
      v15 = [v7 configuration];
      v16 = [v15 serviceName];
      *buf = 138412546;
      v29 = v6;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_273ECD000, v14, v13, "Data session %@ does not exist for publisher %@", buf, 0x16u);
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

- (void)removeDataSession:(id)a3 forSubscriber:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  v9 = [v7 configuration];
  v10 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:v9];

  if ([v10 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v10 objectAtIndex:v11];
      if ([v12 isEqual:v6])
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
    v18 = [v7 configuration];
    [(NSMutableDictionary *)v17 setObject:v10 forKey:v18];

    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v19)
    {
      v21 = v19;
      if (os_log_type_enabled(v21, v20))
      {
        v22 = [v7 configuration];
        v23 = [v22 serviceName];
        *buf = 138412546;
        v29 = v23;
        v30 = 2048;
        v31 = [v10 count];
        _os_log_impl(&dword_273ECD000, v21, v20, "Removed data session for subscriber %@, new count is %lu", buf, 0x16u);
      }
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __57__WFNANTableViewContext_removeDataSession_forSubscriber___block_invoke;
    v25[3] = &unk_279EBD290;
    v26 = v7;
    v27 = v6;
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
      v15 = [v7 configuration];
      v16 = [v15 serviceName];
      *buf = 138412546;
      v29 = v6;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_273ECD000, v14, v13, "Data session %@ does not exist for subscriber %@", buf, 0x16u);
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

- (id)getPublisherAtIndex:(int64_t)a3
{
  if ([(NSMutableArray *)self->_publishers count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_publishers objectAtIndex:a3];
  }

  return v5;
}

- (id)getSubscriberAtIndex:(int64_t)a3
{
  if ([(NSMutableArray *)self->_subscribers count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_subscribers objectAtIndex:a3];
  }

  return v5;
}

- (id)getDiscoveryResultAtIndex:(int64_t)a3 forSubscriber:(id)a4
{
  discoveryResults = self->_discoveryResults;
  v6 = [a4 configuration];
  v7 = [(NSMutableDictionary *)discoveryResults objectForKey:v6];

  if ([v7 count] <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (id)getDataSessionAtIndex:(int64_t)a3 forPublisher:(id)a4
{
  dataSessionsForPublish = self->_dataSessionsForPublish;
  v6 = [a4 configuration];
  v7 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:v6];

  if ([v7 count] <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (id)getDataSessionAtIndex:(int64_t)a3 forSubscriber:(id)a4
{
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  v6 = [a4 configuration];
  v7 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:v6];

  if ([v7 count] <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (id)getDiscoveryResultsForSubscriber:(id)a3
{
  discoveryResults = self->_discoveryResults;
  v4 = [a3 configuration];
  v5 = [(NSMutableDictionary *)discoveryResults objectForKey:v4];

  return v5;
}

- (id)getDataSessionsForPublisher:(id)a3
{
  dataSessionsForPublish = self->_dataSessionsForPublish;
  v4 = [a3 configuration];
  v5 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:v4];

  return v5;
}

- (id)getDataSessionsForSubscriber:(id)a3
{
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  v4 = [a3 configuration];
  v5 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:v4];

  return v5;
}

- (int64_t)getDiscoveryResultsCountForSubscriber:(id)a3
{
  discoveryResults = self->_discoveryResults;
  v4 = [a3 configuration];
  v5 = [(NSMutableDictionary *)discoveryResults objectForKey:v4];

  v6 = [v5 count];
  return v6;
}

- (int64_t)getDataSessionsCountForPublisher:(id)a3
{
  dataSessionsForPublish = self->_dataSessionsForPublish;
  v4 = [a3 configuration];
  v5 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:v4];

  v6 = [v5 count];
  return v6;
}

- (int64_t)getDataSessionsCountForSubscriber:(id)a3
{
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  v4 = [a3 configuration];
  v5 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:v4];

  v6 = [v5 count];
  return v6;
}

- (void)publisherStarted:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v7 = [v3 configuration];
      v8 = [v7 serviceName];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_273ECD000, v6, v5, "NAN publish %@ started", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)publisher:(id)a3 failedToStartWithError:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = [v6 configuration];
      v11 = [v10 serviceName];
      v13 = 138412546;
      v14 = v11;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_273ECD000, v9, v8, "NAN publish %@ failed to start with error %ld", &v13, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self removePublisher:v6];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)publisher:(id)a3 terminatedWithReason:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = [v6 configuration];
      v11 = [v10 serviceName];
      v13 = 138412546;
      v14 = v11;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_273ECD000, v9, v8, "NAN publish %@ terminated with reason %ld", &v13, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self removePublisher:v6];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)publisher:(id)a3 dataConfirmedForHandle:(id)a4 localInterfaceIndex:(unsigned int)a5 serviceSpecificInfo:(id)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = WFLogForCategory(0);
  v11 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v10)
  {
    v12 = v10;
    if (os_log_type_enabled(v12, v11))
    {
      v13 = [v8 initiatorDataAddress];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_273ECD000, v12, v11, "Data confirmed for session with peer %@", &v15, 0xCu);
    }
  }

  [(WFNANTableViewContext *)self addDataSession:v8 forPublisher:v9];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)publisher:(id)a3 dataTerminatedForHandle:(id)a4 reason:(int64_t)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v11, v10))
    {
      v12 = [v7 initiatorDataAddress];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_273ECD000, v11, v10, "Data terminated for session with peer %@", &v14, 0xCu);
    }
  }

  [(WFNANTableViewContext *)self removeDataSession:v7 forPublisher:v8];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)subscriberStarted:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v7 = [v3 configuration];
      v8 = [v7 serviceName];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_273ECD000, v6, v5, "NAN subscribe %@ started", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)subscriber:(id)a3 failedToStartWithError:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = [v6 configuration];
      v11 = [v10 serviceName];
      v13 = 138412546;
      v14 = v11;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_273ECD000, v9, v8, "NAN subscribe %@ failed to start with error %ld", &v13, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self removeSubscriber:v6];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)subscriber:(id)a3 terminatedWithReason:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = [v6 configuration];
      v11 = [v10 serviceName];
      v13 = 138412546;
      v14 = v11;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_273ECD000, v9, v8, "NAN subscribe %@ terminated with reason %ld", &v13, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self removeSubscriber:v6];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)subscriber:(id)a3 receivedDiscoveyResult:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      v11 = [v6 configuration];
      v12 = [v11 serviceName];
      v13 = [v7 serviceSpecificInfo];
      v14 = [v13 description];
      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_273ECD000, v10, v9, "NAN subscribe %@ received discovery result %@", &v16, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self addDiscoveryResult:v7 forSubscriber:v6];
  v15 = *MEMORY[0x277D85DE8];
}

@end