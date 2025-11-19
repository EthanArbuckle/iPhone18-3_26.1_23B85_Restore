@interface RadioLoadStoreBagRequest
- (void)loadStoreBagWithOptions:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation RadioLoadStoreBagRequest

- (void)loadStoreBagWithOptions:(int64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = (a3 >> 1) & 1;
  v7 = objc_alloc(MEMORY[0x277D7FC30]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__RadioLoadStoreBagRequest_loadStoreBagWithOptions_completionHandler___block_invoke;
  v13[3] = &__block_descriptor_33_e31_v16__0__ICStoreRequestContext_8l;
  v14 = v6;
  v8 = [v7 initWithBlock:v13];
  v9 = [MEMORY[0x277D7FC68] sharedBagProvider];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__RadioLoadStoreBagRequest_loadStoreBagWithOptions_completionHandler___block_invoke_2;
  v11[3] = &unk_279AEAB38;
  v12 = v5;
  v10 = v5;
  [v9 getBagForRequestContext:v8 forceRefetch:v6 withCompletionHandler:v11];
}

void __70__RadioLoadStoreBagRequest_loadStoreBagWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D7FCA0];
  v5 = a2;
  v4 = [v3 activeAccount];
  [v5 setIdentity:v4];

  [v5 setAllowsExpiredBags:(*(a1 + 32) & 1) == 0];
}

void __70__RadioLoadStoreBagRequest_loadStoreBagWithOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = a2;
  v6 = [[RadioStoreBag alloc] _initWithURLBag:v5];

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, v8);
  }
}

@end