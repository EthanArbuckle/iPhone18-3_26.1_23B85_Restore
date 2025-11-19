@interface PBCallbackSerialization
- (void)sendBeginBlock:(id)a3;
- (void)sendEndBlock:(id)a3;
@end

@implementation PBCallbackSerialization

- (void)sendBeginBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__PBCallbackSerialization_sendBeginBlock___block_invoke;
  v6[3] = &unk_279A06A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  PBDispatchAsyncCallback(v6);
}

uint64_t __42__PBCallbackSerialization_sendBeginBlock___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = 1;
  (*(*(a1 + 40) + 16))();
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)sendEndBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PBCallbackSerialization_sendEndBlock___block_invoke;
  v6[3] = &unk_279A06A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  PBDispatchAsyncCallback(v6);
}

uint64_t __40__PBCallbackSerialization_sendEndBlock___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 17) = 1;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v2 + 16);

    return v4();
  }

  else
  {
    v6 = MEMORY[0x25F8AC430](v2);
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    return MEMORY[0x2821F96F8]();
  }
}

@end