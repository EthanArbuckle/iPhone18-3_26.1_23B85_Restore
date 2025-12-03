@interface SKUIURLConnectionRequest
- (void)startWithConnectionResponseBlock:(id)block;
@end

@implementation SKUIURLConnectionRequest

- (void)startWithConnectionResponseBlock:(id)block
{
  blockCopy = block;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIURLConnectionRequest startWithConnectionResponseBlock:];
  }

  v5 = dispatch_get_global_queue(0, 0);
  dispatch_async(v5, &__block_literal_global_69);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SKUIURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_2;
  v9[3] = &unk_2782010C8;
  v10 = v5;
  v11 = blockCopy;
  v8.receiver = self;
  v8.super_class = SKUIURLConnectionRequest;
  v6 = blockCopy;
  v7 = v5;
  [(SSURLConnectionRequest *)&v8 startWithConnectionResponseBlock:v9];
}

void __61__SKUIURLConnectionRequest_startWithConnectionResponseBlock___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D6A608] object:0];
}

void __61__SKUIURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  dispatch_async(*(a1 + 32), &__block_literal_global_5_0);
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void __61__SKUIURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_3()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D6A610] object:0];
}

- (void)startWithConnectionResponseBlock:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIURLConnectionRequest startWithConnectionResponseBlock:]";
}

@end