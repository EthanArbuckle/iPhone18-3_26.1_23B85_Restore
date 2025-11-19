@interface TUCallProviderManager
@end

@implementation TUCallProviderManager

uint64_t __60__TUCallProviderManager_NanoPhone__nph_localProviderManager__block_invoke()
{
  nph_localProviderManager_localProviderManager = [objc_alloc(MEMORY[0x277D6EE28]) initWithLocalProviders];

  return MEMORY[0x2821F96F8]();
}

uint64_t __71__TUCallProviderManager_NanoPhone__nph_pairedHostDeviceProviderManager__block_invoke()
{
  nph_pairedHostDeviceProviderManager_pairedHostDeviceProviderManager = [objc_alloc(MEMORY[0x277D6EE28]) initWithPairedHostDeviceProviders];

  return MEMORY[0x2821F96F8]();
}

@end