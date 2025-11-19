@interface SPDASManager
- (SPDASManager)init;
- (id)context;
- (void)setContext:(void *)a1;
@end

@implementation SPDASManager

- (SPDASManager)init
{
  v3 = dispatch_get_global_queue(-32768, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__SPDASManager_init__block_invoke;
  block[3] = &unk_278934050;
  v4 = self;
  v7 = v4;
  dispatch_async(v3, block);

  return v4;
}

uint64_t __20__SPDASManager_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D06A30] sharedInstance];
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, v2, v2, 8);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setContext:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 8);
  }
}

- (id)context
{
  if (result)
  {
    return objc_getProperty(result, a2, 8, 1);
  }

  return result;
}

@end