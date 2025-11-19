@interface SKUIMetricsImpressionSession
- (SKUIMetricsImpressionSession)init;
- (void)addItemIdentifier:(int64_t)a3;
- (void)addItemViewElement:(id)a3;
- (void)beginActiveImpressionForViewElement:(id)a3;
- (void)endActiveImpressionForViewElement:(id)a3;
- (void)endAllPendingActiveImpression;
- (void)init;
@end

@implementation SKUIMetricsImpressionSession

- (SKUIMetricsImpressionSession)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIMetricsImpressionSession init];
  }

  v13.receiver = self;
  v13.super_class = SKUIMetricsImpressionSession;
  v3 = [(SKUIMetricsImpressionSession *)&v13 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    impressionIdentifiers = v3->_impressionIdentifiers;
    v3->_impressionIdentifiers = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    impressionsString = v3->_impressionsString;
    v3->_impressionsString = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
    impressionableViewElements = v3->_impressionableViewElements;
    v3->_impressionableViewElements = v8;

    v10 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
    impressionableViewElementsTimerMap = v3->_impressionableViewElementsTimerMap;
    v3->_impressionableViewElementsTimerMap = v10;
  }

  return v3;
}

- (void)addItemIdentifier:(int64_t)a3
{
  if (a3)
  {
    if ([(NSMutableString *)self->_impressionsString length])
    {
      v5 = @",%lld";
    }

    else
    {
      v5 = @"%lld";
    }

    [(NSMutableString *)self->_impressionsString appendFormat:v5, a3];
    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:a3];
    [(NSMutableArray *)self->_impressionIdentifiers addObject:v6];
  }
}

- (void)addItemViewElement:(id)a3
{
  if (a3)
  {
    [(NSMutableOrderedSet *)self->_impressionableViewElements addObject:?];
  }
}

- (void)beginActiveImpressionForViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 appDocument];
  [v5 impressionThreshold];
  if (v6 != 0.0 && [v4 isImpressionable])
  {
    v7 = [(SKUIMetricsImpressionSession *)self _getTimerForViewElement:v4];
    if (v7)
    {
    }

    else
    {
      v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      [v5 impressionThreshold];
      v10 = dispatch_time(0, (v9 * 1000000000.0));
      dispatch_source_set_timer(v8, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __68__SKUIMetricsImpressionSession_beginActiveImpressionForViewElement___block_invoke;
      handler[3] = &unk_2781F8680;
      v13 = v5;
      v11 = v4;
      v14 = v11;
      v15 = self;
      dispatch_source_set_event_handler(v8, handler);
      [(SKUIMetricsImpressionSession *)self _setTimer:v8 forViewElement:v11];
      dispatch_resume(v8);
    }
  }
}

uint64_t __68__SKUIMetricsImpressionSession_beginActiveImpressionForViewElement___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 recordImpressionsForViewElements:v3];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"SKUIMetricsImpressionNotification" object:*(a1 + 40)];

  return [*(a1 + 48) _clearTimerForViewElement:*(a1 + 40)];
}

- (void)endActiveImpressionForViewElement:(id)a3
{
  v4 = a3;
  source = [(SKUIMetricsImpressionSession *)self _getTimerForViewElement:v4];
  [(SKUIMetricsImpressionSession *)self _clearTimerForViewElement:v4];

  v5 = source;
  if (source)
  {
    dispatch_source_cancel(source);
    v5 = source;
  }
}

- (void)endAllPendingActiveImpression
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIMetricsImpressionSession *)self _allViewElementsInTimerMap];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SKUIMetricsImpressionSession *)self endActiveImpressionForViewElement:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMetricsImpressionSession init]";
}

@end