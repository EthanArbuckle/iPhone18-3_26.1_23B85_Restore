@interface SAURLSizerMock
- (void)startObservingURLs:(id)ls withUpdateHandler:(id)handler;
@end

@implementation SAURLSizerMock

- (void)startObservingURLs:(id)ls withUpdateHandler:(id)handler
{
  lsCopy = ls;
  handlerCopy = handler;
  NSLog(&cfstr_SaurlsizerStar.isa, lsCopy);
  v7 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SAURLSizerMock_startObservingURLs_withUpdateHandler___block_invoke;
  block[3] = &unk_279D22338;
  v11 = lsCopy;
  v12 = handlerCopy;
  v8 = lsCopy;
  v9 = handlerCopy;
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
}

void __55__SAURLSizerMock_startObservingURLs_withUpdateHandler___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/Users/Shared/txt"];
  v3 = objc_alloc_init(MEMORY[0x277D65268]);
  [v3 setSize:1000000];
  v4 = objc_alloc_init(MEMORY[0x277D65270]);
  v10 = v2;
  v11[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v4 setUrlInfo:v5];

  v6 = (*(*(a1 + 40) + 16))();
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  NSLog(&cfstr_SaurlsizerStar_0.isa, v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

@end