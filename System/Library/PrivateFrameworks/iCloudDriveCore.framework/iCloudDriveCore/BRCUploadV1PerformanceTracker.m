@interface BRCUploadV1PerformanceTracker
- (id)_initWithCapacity:(unint64_t)a3;
- (void)_stopTrackingItemWithIdentifier:(id)a3 endEvent:(BOOL)a4;
- (void)close;
- (void)dealloc;
- (void)startTrackingItemWithIdentifier:(id)a3;
@end

@implementation BRCUploadV1PerformanceTracker

- (id)_initWithCapacity:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v8.receiver = self;
    v8.super_class = BRCUploadV1PerformanceTracker;
    v4 = [(BRCUploadV1PerformanceTracker *)&v8 init];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v3];
      itemsToSignpostTracker = v4->_itemsToSignpostTracker;
      v4->_itemsToSignpostTracker = v5;

      v4->_maxCapacity = v3;
    }

    self = v4;
    v3 = self;
  }

  return v3;
}

- (void)startTrackingItemWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_itemsToSignpostTracker;
  objc_sync_enter(v5);
  if ([(NSMutableDictionary *)self->_itemsToSignpostTracker count]>= self->_maxCapacity)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v7;
      v9 = "[WARNING] UploadV1 tracker has no available spots, rejecting request%@";
      v10 = v8;
      v11 = 12;
      goto LABEL_7;
    }
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_itemsToSignpostTracker objectForKeyedSubscript:v4];

    if (v6)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = v4;
        v16 = 2112;
        v17 = v7;
        v9 = "[WARNING] Item with identifier %@ is already tracked%@";
        v10 = v8;
        v11 = 22;
LABEL_7:
        _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    else
    {
      v7 = [[BRCSignpostTracker alloc] initWithLabel:3];
      if (v7)
      {
        [(NSMutableDictionary *)self->_itemsToSignpostTracker setObject:v7 forKeyedSubscript:v4];
        goto LABEL_9;
      }

      v8 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(BRCUploadV1PerformanceTracker *)v8 startTrackingItemWithIdentifier:v13];
      }
    }
  }

LABEL_9:
  objc_sync_exit(v5);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_stopTrackingItemWithIdentifier:(id)a3 endEvent:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = self->_itemsToSignpostTracker;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)self->_itemsToSignpostTracker objectForKeyedSubscript:v9];
  v8 = v7;
  if (v7)
  {
    if (v4)
    {
      [v7 endSignpostEvent];
    }

    else
    {
      [v7 dropSignpostEvent];
    }

    [(NSMutableDictionary *)self->_itemsToSignpostTracker removeObjectForKey:v9];
  }

  objc_sync_exit(v6);
}

- (void)close
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = self->_itemsToSignpostTracker;
  objc_sync_enter(v3);
  if ([(NSMutableDictionary *)self->_itemsToSignpostTracker count])
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSMutableDictionary *)self->_itemsToSignpostTracker count];
      *buf = 134218242;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] UploadV1PerformanceTracker deallocating with %lu active trackers%@", buf, 0x16u);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(NSMutableDictionary *)self->_itemsToSignpostTracker allValues];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) dropSignpostEvent];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->_itemsToSignpostTracker removeAllObjects];
  objc_sync_exit(v3);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(BRCUploadV1PerformanceTracker *)self close];
  v3.receiver = self;
  v3.super_class = BRCUploadV1PerformanceTracker;
  [(BRCUploadV1PerformanceTracker *)&v3 dealloc];
}

- (void)startTrackingItemWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: signpostTracker%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end