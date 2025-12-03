@interface CLTTool
- (CLTTool)init;
- (int)main;
@end

@implementation CLTTool

- (CLTTool)init
{
  v8.receiver = self;
  v8.super_class = CLTTool;
  v2 = [(CLTTool *)&v8 init];
  if (v2)
  {
    objc_storeStrong(&s_sharedTool, v2);
    array = [MEMORY[0x277CBEB18] array];
    signalSources = v2->_signalSources;
    v2->_signalSources = array;

    v5 = dispatch_queue_create("com.apple.recap.signal", 0);
    signalQueue = v2->_signalQueue;
    v2->_signalQueue = v5;
  }

  return v2;
}

- (int)main
{
  v3 = MEMORY[0x277D85D30];
  for (i = 1; i != 31; ++i)
  {
    if (i > 0xC || ((1 << i) & 0x1D70) == 0)
    {
      signal(i, 1);
      signalQueue = [(CLTTool *)self signalQueue];
      v6 = dispatch_source_create(v3, i, 0, signalQueue);

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __15__CLTTool_main__block_invoke;
      v9[3] = &unk_279AF0D58;
      v9[4] = self;
      v10 = i;
      dispatch_source_set_event_handler(v6, v9);
      dispatch_activate(v6);
      signalSources = [(CLTTool *)self signalSources];
      [signalSources addObject:v6];
    }
  }

  return 0;
}

@end