@interface WFAssociationContextQueue
- (WFAssociationContextQueue)init;
- (id)peek;
- (id)pop;
- (void)_dumpQueue;
- (void)_queueCount;
- (void)pop;
- (void)push:(id)push;
- (void)removeAll;
@end

@implementation WFAssociationContextQueue

- (WFAssociationContextQueue)init
{
  v6.receiver = self;
  v6.super_class = WFAssociationContextQueue;
  v2 = [(WFAssociationContextQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (id)peek
{
  queue = [(WFAssociationContextQueue *)self queue];
  objc_sync_enter(queue);
  queue2 = [(WFAssociationContextQueue *)self queue];
  firstObject = [queue2 firstObject];

  objc_sync_exit(queue);

  return firstObject;
}

- (void)push:(id)push
{
  v12 = *MEMORY[0x277D85DE8];
  pushCopy = push;
  queue = [(WFAssociationContextQueue *)self queue];
  objc_sync_enter(queue);
  v6 = WFLogForCategory(5uLL);
  v7 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v6 && os_log_type_enabled(v6, v7))
  {
    v10 = 138412290;
    v11 = pushCopy;
    _os_log_impl(&dword_273ECD000, v6, v7, "adding %@ to association queue", &v10, 0xCu);
  }

  queue2 = [(WFAssociationContextQueue *)self queue];
  [queue2 addObject:pushCopy];

  [(WFAssociationContextQueue *)self _queueCount];
  objc_sync_exit(queue);

  v9 = *MEMORY[0x277D85DE8];
}

- (id)pop
{
  v11 = *MEMORY[0x277D85DE8];
  peek = [(WFAssociationContextQueue *)self peek];
  if (peek)
  {
    queue = [(WFAssociationContextQueue *)self queue];
    objc_sync_enter(queue);
    v5 = WFLogForCategory(5uLL);
    v6 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v5 && os_log_type_enabled(v5, v6))
    {
      *v10 = 138412290;
      *&v10[4] = peek;
      _os_log_impl(&dword_273ECD000, v5, v6, "removing %@ from association queue", v10, 0xCu);
    }

    queue2 = [(WFAssociationContextQueue *)self queue];
    [queue2 removeObject:peek];

    objc_sync_exit(queue);
  }

  else
  {
    [(WFAssociationContextQueue *)v10 pop];
    queue = *v10;
  }

  v8 = *MEMORY[0x277D85DE8];

  return peek;
}

- (void)removeAll
{
  v3 = WFLogForCategory(5uLL);
  v4 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v3 && os_log_type_enabled(v3, v4))
  {
    *v7 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "removing all objects in association queue", v7, 2u);
  }

  [(WFAssociationContextQueue *)self _dumpQueue];
  queue = [(WFAssociationContextQueue *)self queue];
  objc_sync_enter(queue);
  queue2 = [(WFAssociationContextQueue *)self queue];
  [queue2 removeAllObjects];

  objc_sync_exit(queue);
}

- (void)_dumpQueue
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  queue = [(WFAssociationContextQueue *)self queue];
  v3 = [queue countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(queue);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = WFLogForCategory(5uLL);
        v9 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
        {
          *buf = 138412290;
          v16 = v7;
          _os_log_impl(&dword_273ECD000, v8, v9, "%@", buf, 0xCu);
        }
      }

      v4 = [queue countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queueCount
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(WFAssociationContextQueue *)self queue:0];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (!v3)
  {
LABEL_13:

    goto LABEL_14;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v11;
  do
  {
    v7 = v4;
    do
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v2);
      }

      --v7;
    }

    while (v7);
    v5 += v4;
    v4 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  }

  while (v4);

  if (v5 - 1 >= 1)
  {
    v2 = WFLogForCategory(5uLL);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v8))
    {
      *buf = 67109120;
      v15 = v5;
      _os_log_impl(&dword_273ECD000, v2, v8, "multiple associations in progress. assocationContextQueue count: %d", buf, 8u);
    }

    goto LABEL_13;
  }

LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)pop
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    v5 = 136315138;
    v6 = "[WFAssociationContextQueue pop]";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: attempted to pop when queue is empty", &v5, 0xCu);
  }

  *self = v2;
  v4 = *MEMORY[0x277D85DE8];
}

@end