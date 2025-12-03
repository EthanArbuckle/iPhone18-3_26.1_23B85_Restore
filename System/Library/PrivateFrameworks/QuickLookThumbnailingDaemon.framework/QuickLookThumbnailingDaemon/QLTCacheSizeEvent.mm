@interface QLTCacheSizeEvent
- (QLTCacheSizeEvent)initWithCacheSize:(unint64_t)size;
- (id)build;
- (id)propertiesBuilder;
@end

@implementation QLTCacheSizeEvent

- (QLTCacheSizeEvent)initWithCacheSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = QLTCacheSizeEvent;
  result = [(QLTCacheSizeEvent *)&v5 init];
  if (result)
  {
    result->_cacheSize = size;
  }

  return result;
}

- (id)propertiesBuilder
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__QLTCacheSizeEvent_propertiesBuilder__block_invoke;
  aBlock[3] = &unk_279ADDF78;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

- (id)build
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"com.apple.message.value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_cacheSize];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end