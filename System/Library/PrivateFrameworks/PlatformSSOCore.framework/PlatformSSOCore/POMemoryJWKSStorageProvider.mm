@interface POMemoryJWKSStorageProvider
- (POMemoryJWKSStorageProvider)init;
@end

@implementation POMemoryJWKSStorageProvider

- (POMemoryJWKSStorageProvider)init
{
  v6.receiver = self;
  v6.super_class = POMemoryJWKSStorageProvider;
  v2 = [(POMemoryJWKSStorageProvider *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEC10] mutableCopy];
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

@end