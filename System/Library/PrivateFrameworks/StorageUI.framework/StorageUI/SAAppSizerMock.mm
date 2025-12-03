@interface SAAppSizerMock
- (void)startObservingWithUpdateHandler:(id)handler;
@end

@implementation SAAppSizerMock

- (void)startObservingWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  NSLog(&cfstr_SaappsizerStar.isa);
  v4 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SAAppSizerMock_startObservingWithUpdateHandler___block_invoke;
  block[3] = &unk_279D22310;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __50__SAAppSizerMock_startObservingWithUpdateHandler___block_invoke(uint64_t a1)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v21 = objc_alloc_init(MEMORY[0x277D65248]);
  [v21 setFixedSize:1000000000];
  v1 = objc_alloc_init(MEMORY[0x277D65248]);
  [v1 setFixedSize:190000000];
  v20 = v1;
  [v1 setDataSize:794000000];
  v2 = objc_alloc_init(MEMORY[0x277D65248]);
  [v2 setFixedSize:250000000];
  [v2 setDataSize:6000000];
  v19 = objc_alloc_init(MEMORY[0x277D65248]);
  [v19 setFixedSize:17000000000];
  v18 = objc_alloc_init(MEMORY[0x277D65248]);
  [v18 setFixedSize:20000000000];
  v16 = objc_alloc_init(MEMORY[0x277D65248]);
  [v16 setFixedSize:5000000000];
  v3 = objc_alloc_init(MEMORY[0x277D65248]);
  [v3 setFixedSize:3000000000];
  v13 = objc_alloc_init(MEMORY[0x277D65248]);
  [v13 setFixedSize:200000000000];
  v14 = objc_alloc_init(MEMORY[0x277D65250]);
  v17 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.dt.Xcode"];
  v23[0] = v17;
  v24[0] = v21;
  v15 = [MEMORY[0x277CBEB98] setWithObject:@"com.company.app1"];
  v23[1] = v15;
  v24[1] = v1;
  v4 = [MEMORY[0x277CBEB98] setWithObject:@"com.company.app2"];
  v23[2] = v4;
  v24[2] = v2;
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"SACategoryIdentifierTrash"];
  v23[3] = v5;
  v24[3] = v19;
  v6 = [MEMORY[0x277CBEB98] setWithObject:@"SACategoryIdentifierSystem"];
  v23[4] = v6;
  v24[4] = v18;
  v7 = [MEMORY[0x277CBEB98] setWithObject:@"SACategoryIdentifierSystemData"];
  v23[5] = v7;
  v24[5] = v16;
  v8 = [MEMORY[0x277CBEB98] setWithObject:@"SACategoryIdentifierOtherUsers"];
  v23[6] = v8;
  v24[6] = v3;
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"SACategoryIdentifierDocuments"];
  v23[7] = v9;
  v24[7] = v13;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:8];
  [v14 setAppData:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:(*(*(a1 + 32) + 16))()];
  NSLog(&cfstr_SaappsizerStar_0.isa, v11);

  v12 = *MEMORY[0x277D85DE8];
}

@end