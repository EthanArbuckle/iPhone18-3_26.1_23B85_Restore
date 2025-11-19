@interface NCDateIconImageForDateComponentsWithFormat
@end

@implementation NCDateIconImageForDateComponentsWithFormat

uint64_t ___NCDateIconImageForDateComponentsWithFormat_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _NCDateIconImageForDateComponentsWithFormat___componentsIconCache;
  _NCDateIconImageForDateComponentsWithFormat___componentsIconCache = v0;

  v2 = _NCDateIconImageForDateComponentsWithFormat___componentsIconCache;

  return [v2 setCountLimit:15];
}

@end