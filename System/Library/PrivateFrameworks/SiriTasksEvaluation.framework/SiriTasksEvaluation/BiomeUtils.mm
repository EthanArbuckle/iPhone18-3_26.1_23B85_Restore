@interface BiomeUtils
+ (id)getEventsFromPublisher:(id)a3;
+ (id)getEventsFromStream:(id)a3 startingAt:(id)a4 until:(id)a5;
@end

@implementation BiomeUtils

+ (id)getEventsFromStream:(id)a3 startingAt:(id)a4 until:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CBEB18];
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  [v9 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = [v10 publisherFromStartTime:v13];

  NSLog(&cfstr_PublisherLooks.isa, v14);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __51__BiomeUtils_getEventsFromStream_startingAt_until___block_invoke_2;
  v21[3] = &unk_279C53628;
  v22 = v7;
  v15 = v11;
  v23 = v15;
  v16 = v7;
  v17 = [v14 sinkWithCompletion:&__block_literal_global receiveInput:v21];
  v18 = v23;
  v19 = v15;

  return v15;
}

void __51__BiomeUtils_getEventsFromStream_startingAt_until___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (!*(a1 + 32) || ([v3 timestamp], v5 = v4, objc_msgSend(*(a1 + 32), "timeIntervalSinceReferenceDate"), v6 = v8, v5 < v7))
  {
    [*(a1 + 40) addObject:v8];
    v6 = v8;
  }
}

+ (id)getEventsFromPublisher:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_PublisherLooks.isa, v3);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__BiomeUtils_getEventsFromPublisher___block_invoke_2;
  v8[3] = &unk_279C53650;
  v5 = v4;
  v9 = v5;
  v6 = [v3 sinkWithCompletion:&__block_literal_global_4 receiveInput:v8];

  return v5;
}

@end