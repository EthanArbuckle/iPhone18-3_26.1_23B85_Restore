@interface SKUIFontDescriptorGetCache
@end

@implementation SKUIFontDescriptorGetCache

uint64_t ___SKUIFontDescriptorGetCache_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _SKUIFontDescriptorGetCache_fontDescriptorCache;
  _SKUIFontDescriptorGetCache_fontDescriptorCache = v0;

  v2 = _SKUIFontDescriptorGetCache_fontDescriptorCache;

  return [v2 setName:@"com.apple.StoreKitUI.SKUIFontDescriptor.cache"];
}

@end